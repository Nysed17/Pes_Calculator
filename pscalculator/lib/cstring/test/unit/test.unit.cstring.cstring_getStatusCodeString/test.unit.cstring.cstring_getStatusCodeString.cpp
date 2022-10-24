/* /////////////////////////////////////////////////////////////////////////
 * File:        test.unit.cstring.cstring_getStatusCodeString.cpp
 *
 * Purpose:     Implementation file for the test.unit.cstring.cstring_getStatusCodeString project.
 *
 * Created:     28th July 2011
 * Updated:     28th July 2011
 *
 * Status:      Wizard-generated
 *
 * License:     (Licensed under the Synesis Software Open License)
 *
 *              Copyright (c) 2011, Synesis Software Pty Ltd.
 *              All rights reserved.
 *
 *              www:        http://www.synesis.com.au/software
 *
 * ////////////////////////////////////////////////////////////////////// */


/* /////////////////////////////////////////////////////////////////////////
 * Test component header file include(s)
 */

#include <cstring/cstring.h>

/* /////////////////////////////////////////////////////////////////////////
 * Includes
 */

/* xTests Header Files */
#include <xtests/xtests.h>

/* STLSoft Header Files */
#include <stlsoft/stlsoft.h>
#include <comstl/memory/functions.h>
#include <platformstl/error/exceptions.hpp>
#include <platformstl/filesystem/file_lines.hpp>
#include <platformstl/system/system_traits.hpp>

/* Standard C Header Files */
#include <stdlib.h>

/* /////////////////////////////////////////////////////////////////////////
 * Forward declarations
 */

namespace
{

    static void test_0(void);
    static void test_known(void);
    static void test_random(void);

} // anonymous namespace

/* /////////////////////////////////////////////////////////////////////////
 * Constants & definitions
 */

const char TEST_FILE_NAME[] = "test.unit.cstring.cstring_getStatusCodeString.txt";

/* /////////////////////////////////////////////////////////////////////////
 * Compiler compatibility
 */

#if defined(STLSOFT_COMPILER_IS_MSVC)
# if _MSC_VER >= 1200
#  pragma warning(push)
# endif /* compiler */
# pragma warning(disable : 4702)
#endif /* compiler */

/* /////////////////////////////////////////////////////////////////////////
 * Main
 */

int main(int argc, char **argv)
{
    int retCode = EXIT_SUCCESS;
    int verbosity = 2;

    XTESTS_COMMANDLINE_PARSEVERBOSITY(argc, argv, &verbosity);

    if(XTESTS_START_RUNNER("test.unit.cstring.cstring_getStatusCodeString", verbosity))
    {
        XTESTS_RUN_CASE(test_0);
        XTESTS_RUN_CASE(test_known);
        XTESTS_RUN_CASE(test_random);

        XTESTS_PRINT_RESULTS();

        XTESTS_END_RUNNER_UPDATE_EXITCODE(&retCode);
    }

    STLSOFT_SUPPRESS_UNUSED(TEST_FILE_NAME);

    return retCode;
}

/* /////////////////////////////////////////////////////////////////////////
 * Compiler compatibility
 */

#if defined(STLSOFT_COMPILER_IS_MSVC)
# if _MSC_VER >= 1200
#  pragma warning(pop)
# endif /* compiler */
#endif /* compiler */

/* /////////////////////////////////////////////////////////////////////////
 * Test function implementations
 */

namespace
{

    static char const alphabet[] = "abcdefghijklmnopqrstuvwxyz";

    static CSTRING_RC const knownCodes[] =
    {
            CSTRING_RC_SUCCESS
        ,   CSTRING_RC_OUTOFMEMORY
        ,   CSTRING_RC_FIXED
        ,   CSTRING_RC_BORROWED
        ,   CSTRING_RC_READONLY
        ,   CSTRING_RC_INVALIDARENA
        ,   CSTRING_RC_CUSTOMARENANOTSUPPORTED
        ,   CSTRING_RC_EXCEEDFIXEDCAPACITY
        ,   CSTRING_RC_EXCEEDBORROWEDCAPACITY
        ,   CSTRING_RC_CANNOTYIELDFROMSO
        ,   CSTRING_RC_ARENAOVERLOADED
        /* cstring 3.5+ */
        ,   CSTRING_RC_INVALIDSTREAM
        ,   CSTRING_RC_EOF
        ,   CSTRING_RC_INVALIDSECTION
        ,   CSTRING_RC_IOERROR
    };

static void test_0()
{
    XTESTS_TEST_MULTIBYTE_STRING_EQUAL("operation completed successfully", cstring_error((CSTRING_RC)0));
}

static void test_known()
{
    { for(size_t i = 0; i != STLSOFT_NUM_ELEMENTS(knownCodes); ++i)
    {
        XTESTS_TEST_MULTIBYTE_STRING_NOT_EQUAL("<<unknown error>>", cstring_error(knownCodes[i]));
    }}
}

static void test_random()
{
    { for(size_t i = 0; i != 100000; ++i)
    {
        int         r   =   ::rand();
        CSTRING_RC  rc  =   static_cast<CSTRING_RC>(STLSOFT_NUM_ELEMENTS(knownCodes) + r + 1);

        XTESTS_TEST_MULTIBYTE_STRING_EQUAL("<<unknown error>>", cstring_error(rc));
    }}
}


} // anonymous namespace

/* ///////////////////////////// end of file //////////////////////////// */
