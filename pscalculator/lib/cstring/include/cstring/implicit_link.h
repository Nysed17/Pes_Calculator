/* /////////////////////////////////////////////////////////////////////////
 * File:    cstring/implicit_link.h
 *
 * Purpose: Implicit linking for the cstring API.
 *
 * Created: 18th August 2005
 * Updated: 23rd January 2012
 *
 * Home:    http://synesis.com.au/software/
 *
 * Copyright (c) 1994-2012, Matthew Wilson and Synesis Software
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 * - Redistributions of source code must retain the above copyright notice, this
 *   list of conditions and the following disclaimer.
 * - Redistributions in binary form must reproduce the above copyright notice,
 *   this list of conditions and the following disclaimer in the documentation
 *   and/or other materials provided with the distribution.
 * - Neither the names of Matthew Wilson and Synesis Software nor the names of
 *   any contributors may be used to endorse or promote products derived from
 *   this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
 * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 *
 * ////////////////////////////////////////////////////////////////////// */


/** \file cstring/implicit_link.h Implicit linking for the cstring API
 *
 * Inclusion of this file causes the appropriate library file to be
 * automatically linked for compilers that support implicit linking:
 *  - Borland
 *  - Metrowerks
 *  - CodeWarrior
 *  - Intel
 *  - Visual C++
 *
 * \note For compilers that do not support implicit linking, inclusion of
 *   the file has no effect.
 */

#ifndef CSTRING_INCL_IMPLICIT_LINK
#define CSTRING_INCL_IMPLICIT_LINK

/* /////////////////////////////////////////////////////////////////////////
 * Version
 */

#ifndef CSTRING_DOCUMENTATION_SKIP_SECTION
# define CSTRING_VER_CSTRING_H_IMPLICIT_LINK_MAJOR      2
# define CSTRING_VER_CSTRING_H_IMPLICIT_LINK_MINOR      1
# define CSTRING_VER_CSTRING_H_IMPLICIT_LINK_REVISION   1
# define CSTRING_VER_CSTRING_H_IMPLICIT_LINK_EDIT       10
#endif /* !CSTRING_DOCUMENTATION_SKIP_SECTION */

/* /////////////////////////////////////////////////////////////////////////
 * Includes
 */

#include <cstring/cstring.h>

/* /////////////////////////////////////////////////////////////////////////
 * Helper macros
 */

# define CSTRING_STRINGIZE_(x)  #x
# define CSTRING_STRINGIZE(x)   CSTRING_STRINGIZE_(x)

/* /////////////////////////////////////////////////////////////////////////
 * Implicit linking
 */

#if defined(_WIN32) || \
    defined(_WIN64)

# if defined(__BORLANDC__) || \
     /* defined(__DMC__) || */ \
     defined(__INTEL_COMPILER) || \
     defined(__MWERKS__) || \
     defined(_MSC_VER)
#  if !defined(__COMO__)
#   define CSTRING_IMPLICIT_LINK_SUPPORT
#  endif /* compiler */
# endif /* compiler */

#if defined(CSTRING_IMPLICIT_LINK_SUPPORT) && \
    defined(CSTRING_NO_IMPLICIT_LINK)
# undef CSTRING_IMPLICIT_LINK_SUPPORT
#endif /* CSTRING_IMPLICIT_LINK_SUPPORT && CSTRING_NO_IMPLICIT_LINK */

# if defined(CSTRING_IMPLICIT_LINK_SUPPORT)

  /* prefix */

#  define CSTRING_IMPL_LINK_PREFIX

  /* library basename */

#  define CSTRING_IMPL_LINK_LIBRARY_BASENAME    "cstring"

  /* major version */

#  define CSTRING_IMPL_LINK_MAJOR_VERSION       "." CSTRING_STRINGIZE(CSTRING_VER_MAJOR)

  /* module name */

#  define CSTRING_IMPL_LINK_MODULE_NAME         ".core"

  /* compiler tag */

#  if defined(__BORLANDC__)
#   if __BORLANDC__ == 0x0550
#    define CSTRING_IMPL_LINK_COMPILER_NAME     "bc55"
#   elif (__BORLANDC__ == 0x0551)
#    define CSTRING_IMPL_LINK_COMPILER_NAME     "bc551"
#   elif (__BORLANDC__ == 0x0560)
#    define CSTRING_IMPL_LINK_COMPILER_NAME     "bc56"
#   elif (__BORLANDC__ == 0x0564)
#    define CSTRING_IMPL_LINK_COMPILER_NAME     "bc564"
#   elif (__BORLANDC__ == 0x0582)
#    define CSTRING_IMPL_LINK_COMPILER_NAME     "bc582"
#   else /* ? __BORLANDC__ */
#    error Unrecognised value of __BORLANDC__
#   endif /* __BORLANDC__ */

/*
#  elif defined(__DMC__)
#   define CSTRING_IMPL_LINK_COMPILER_NAME      "dm"
 */

#  elif defined(__INTEL_COMPILER)
#   if (__INTEL_COMPILER == 600)
#    define CSTRING_IMPL_LINK_COMPILER_NAME     "icl6"
#   elif (__INTEL_COMPILER == 700)
#    define CSTRING_IMPL_LINK_COMPILER_NAME     "icl7"
#   elif (__INTEL_COMPILER == 800)
#    define CSTRING_IMPL_LINK_COMPILER_NAME     "icl8"
#   elif __INTEL_COMPILER == 900
#    define   CSTRING_IMPL_LINK_COMPILER_NAME   "icl9"
#   elif __INTEL_COMPILER == 1000
#    define   CSTRING_IMPL_LINK_COMPILER_NAME   "icl10"
#   elif __INTEL_COMPILER == 1100
#    define   CSTRING_IMPL_LINK_COMPILER_NAME   "icl11"
#   else /* ? __INTEL_COMPILER */
#    error Unrecognised value of __INTEL_COMPILER
#   endif /* __INTEL_COMPILER */

#  elif defined(__MWERKS__)
#   if ((__MWERKS__ & 0xFF00) == 0x2400)
#    define CSTRING_IMPL_LINK_COMPILER_NAME     "cw7"
#   elif ((__MWERKS__ & 0xFF00) == 0x3000)
#    define CSTRING_IMPL_LINK_COMPILER_NAME     "cw8"
#   elif ((__MWERKS__ & 0xFF00) == 0x3200)
#    define CSTRING_IMPL_LINK_COMPILER_NAME     "cw9"
#   else /* ? __MWERKS__ */
#    error Unrecognised value of __MWERKS__
#   endif /* __MWERKS__ */

#  elif defined(_MSC_VER)
#   if _MSC_VER == 1000
#    define CSTRING_IMPL_LINK_COMPILER_NAME     "vc4"
#   elif _MSC_VER == 1020
#    define CSTRING_IMPL_LINK_COMPILER_NAME     "vc42"
#   elif _MSC_VER == 1100
#    define CSTRING_IMPL_LINK_COMPILER_NAME     "vc5"
#   elif _MSC_VER == 1200
#    define CSTRING_IMPL_LINK_COMPILER_NAME     "vc6"
#   elif _MSC_VER == 1300
#    define CSTRING_IMPL_LINK_COMPILER_NAME     "vc7"
#   elif _MSC_VER == 1310
#    define CSTRING_IMPL_LINK_COMPILER_NAME     "vc71"
#   elif _MSC_VER == 1400
#    define CSTRING_IMPL_LINK_COMPILER_NAME     "vc8"
#   elif _MSC_VER == 1500
#    define CSTRING_IMPL_LINK_COMPILER_NAME     "vc9"
#   elif _MSC_VER == 1600
#    define CSTRING_IMPL_LINK_COMPILER_NAME     "vc10"
#   else /* ? _MSC_VER */
#    error Unrecognised value of _MSC_VER
#   endif /* _MSC_VER */

#  else /* ? compiler */
#   error Unrecognised compiler
#  endif /* compiler */


  /* operating system tag */

#  if defined(_STLSOFT_FORCE_ANY_COMPILER) && \
      defined(PLATFORMSTL_OS_IS_UNIX) && \
      defined(_WIN32)
#   define CSTRING_IMPL_LINK_OS_TAG             ".unix"
#  endif /* pseudo UNIX */

#  if !defined(CSTRING_IMPL_LINK_OS_TAG)
#   define CSTRING_IMPL_LINK_OS_TAG             ""
#  endif /* !CSTRING_IMPL_LINK_OS_TAG */


  /* architecture tag */

#  if defined(PLATFORMSTL_ARCH_IS_X86)
#   define CSTRING_IMPL_LINK_ARCH_TAG           ""
#  elif defined(PLATFORMSTL_ARCH_IS_X64)
#   define CSTRING_IMPL_LINK_ARCH_TAG           ".x64"
#  elif defined(PLATFORMSTL_ARCH_IS_IA64)
#   define CSTRING_IMPL_LINK_ARCH_TAG           ".ia64"
#  endif /* arch */

#  if !defined(CSTRING_IMPL_LINK_ARCH_TAG)
#   define CSTRING_IMPL_LINK_ARCH_TAG           ""
#  endif /* !CSTRING_IMPL_LINK_ARCH_TAG */


  /* encoding tag */

#  if defined(CSTRING_USE_WIDE_STRINGS)
#   define CSTRING_IMPL_LINK_ENCODING_TAG       ".widestring"
#  else /* ? CSTRING_USE_WIDE_STRINGS */
#   define CSTRING_IMPL_LINK_ENCODING_TAG       ""
#  endif /* CSTRING_USE_WIDE_STRINGS */


  /* threading tag */

# if defined(__MT__) || \
     defined(_REENTRANT) || \
     defined(_MT)
#  if defined(_DLL) || \
      defined(__DLL)
#   define CSTRING_IMPL_LINK_THREADING_TAG      ".dll"
#  else /* ? dll */
#   define CSTRING_IMPL_LINK_THREADING_TAG      ".mt"
#  endif /* dll */
# else /* ? mt */
#   define CSTRING_IMPL_LINK_THREADING_TAG      ""
# endif /* mt */


  /* NoX */

#  if defined(CSTRING_CF_NOX)
#   define CSTRING_IMPL_LINK_NOX_TAG            ".nox"
#  else /* ? CSTRING_CF_NOX */
#   define CSTRING_IMPL_LINK_NOX_TAG            ""
#  endif /* CSTRING_CF_NOX */


  /* debug tag */

# if !defined(NDEBUG) && \
     defined(_DEBUG)
#  define CSTRING_IMPL_LINK_DEBUG_TAG           ".debug"
# else /* ? debug */
#  define CSTRING_IMPL_LINK_DEBUG_TAG           ""
# endif /* debug */


  /* suffix */

#  define CSTRING_IMPL_LINK_SUFFIX              ".lib"


   /* Library name is:
    *
    * [lib]<library-basename>.<major-version>.<module-name>.<compiler-name>[.<os-arch-tag>][.<char-encoding-tag>][.<threading-tag>][.<nox-tag>][.<debug-tag>].{a|lib}
    */

#  define CSTRING_IMPL_LINK_LIBRARY_NAME        CSTRING_IMPL_LINK_PREFIX \
                                                CSTRING_IMPL_LINK_LIBRARY_BASENAME \
                                                CSTRING_IMPL_LINK_MAJOR_VERSION \
                                                CSTRING_IMPL_LINK_MODULE_NAME \
                                                "." CSTRING_IMPL_LINK_COMPILER_NAME \
                                                CSTRING_IMPL_LINK_OS_TAG \
                                                CSTRING_IMPL_LINK_ARCH_TAG \
                                                CSTRING_IMPL_LINK_ENCODING_TAG \
                                                CSTRING_IMPL_LINK_THREADING_TAG \
                                                CSTRING_IMPL_LINK_NOX_TAG \
                                                CSTRING_IMPL_LINK_DEBUG_TAG \
                                                CSTRING_IMPL_LINK_SUFFIX
                                                        

#  pragma message("lib: " CSTRING_IMPL_LINK_LIBRARY_NAME)

#  pragma comment(lib, CSTRING_IMPL_LINK_LIBRARY_NAME)

# endif /* CSTRING_IMPLICIT_LINK_SUPPORT */

#endif /* Win-32 || Win-64 */

/* ////////////////////////////////////////////////////////////////////// */

#endif /* CSTRING_INCL_IMPLICIT_LINK */

/* ////////////////////////////////////////////////////////////////////// */
