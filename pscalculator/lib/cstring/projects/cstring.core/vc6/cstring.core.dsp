# Microsoft Developer Studio Project File - Name="cstring.core" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=cstring.core - Win32 Debug Multithreaded DLL
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE
!MESSAGE NMAKE /f "cstring.core.mak".
!MESSAGE
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE
!MESSAGE NMAKE /f "cstring.core.mak" CFG="cstring.core - Win32 Debug Multithreaded DLL"
!MESSAGE
!MESSAGE Possible choices for configuration are:
!MESSAGE
!MESSAGE "cstring.core - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE "cstring.core - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE "cstring.core - Win32 Debug Multithreaded" (based on "Win32 (x86) Static Library")
!MESSAGE "cstring.core - Win32 Release Multithreaded" (based on "Win32 (x86) Static Library")
!MESSAGE "cstring.core - Win32 Debug Multithreaded DLL" (based on "Win32 (x86) Static Library")
!MESSAGE "cstring.core - Win32 Release Multithreaded DLL" (based on "Win32 (x86) Static Library")
!MESSAGE "cstring.core - Win32 Release Multithreaded pseudoUNIX" (based on "Win32 (x86) Static Library")
!MESSAGE "cstring.core - Win32 Release pseudoUNIX" (based on "Win32 (x86) Static Library")
!MESSAGE

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "cstring.core - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /YX /FD /c
# ADD CPP /nologo /W3 /GX /O2 /I "../../../include" /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /FR /YX /FD /c
# ADD BASE RSC /l 0xc09 /d "NDEBUG"
# ADD RSC /l 0xc09 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo /out:"../../../lib\cstring.3.core.vc6.lib"
# ADD LIB32 /nologo /out:"../../../lib\cstring.3.core.vc6.lib"

!ELSEIF  "$(CFG)" == "cstring.core - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "_LIB" /YX /FD /GZ /c
# ADD CPP /nologo /W3 /Gm /GX /Zi /Od /I "../../../include" /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "_LIB" /FR /YX /FD /GZ /c
# ADD BASE RSC /l 0xc09 /d "_DEBUG"
# ADD RSC /l 0xc09 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo /out:"../../../lib\cstring.3.core.vc6.debug.lib"
# ADD LIB32 /nologo /out:"../../../lib\cstring.3.core.vc6.debug.lib"

!ELSEIF  "$(CFG)" == "cstring.core - Win32 Debug Multithreaded"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug Multithreaded"
# PROP BASE Intermediate_Dir "Debug Multithreaded"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "DebugMT"
# PROP Intermediate_Dir "DebugMT"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /I "../../../include" /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "_LIB" /YX /FD /GZ /c
# ADD CPP /nologo /MTd /W3 /Gm /GX /Zi /Od /I "../../../include" /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "_LIB" /FR /YX /FD /GZ /c
# ADD BASE RSC /l 0xc09 /d "_DEBUG"
# ADD RSC /l 0xc09 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo /out:"../../../lib\cstring.3.core.vc6.mt.debug.lib"
# ADD LIB32 /nologo /out:"../../../lib\cstring.3.core.vc6.mt.debug.lib"

!ELSEIF  "$(CFG)" == "cstring.core - Win32 Release Multithreaded"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release Multithreaded"
# PROP BASE Intermediate_Dir "Release Multithreaded"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "ReleaseMT"
# PROP Intermediate_Dir "ReleaseMT"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /I "../../../include" /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /YX /FD /c
# ADD CPP /nologo /MT /W3 /GX /O2 /I "../../../include" /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /FR /YX /FD /c
# ADD BASE RSC /l 0xc09 /d "NDEBUG"
# ADD RSC /l 0xc09 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo /out:"../../../lib\cstring.3.core.vc6.mt.lib"
# ADD LIB32 /nologo /out:"../../../lib\cstring.3.core.vc6.mt.lib"

!ELSEIF  "$(CFG)" == "cstring.core - Win32 Debug Multithreaded DLL"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug Multithreaded DLL"
# PROP BASE Intermediate_Dir "Debug Multithreaded DLL"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "DebugDLL"
# PROP Intermediate_Dir "DebugDLL"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /I "../../../include" /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "_LIB" /YX /FD /GZ /c
# ADD CPP /nologo /MDd /W3 /Gm /GX /Zi /Od /I "../../../include" /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "_LIB" /FR /YX /FD /GZ /c
# ADD BASE RSC /l 0xc09 /d "_DEBUG"
# ADD RSC /l 0xc09 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo /out:"../../../lib\cstring.3.core.vc6.dll.debug.lib"
# ADD LIB32 /nologo /out:"../../../lib\cstring.3.core.vc6.dll.debug.lib"

!ELSEIF  "$(CFG)" == "cstring.core - Win32 Release Multithreaded DLL"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release Multithreaded DLL"
# PROP BASE Intermediate_Dir "Release Multithreaded DLL"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "ReleaseDLL"
# PROP Intermediate_Dir "ReleaseDLL"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /I "../../../include" /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /YX /FD /c
# ADD CPP /nologo /MD /W3 /GX /O2 /I "../../../include" /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /FR /YX /FD /c
# ADD BASE RSC /l 0xc09 /d "NDEBUG"
# ADD RSC /l 0xc09 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo /out:"../../../lib\cstring.3.core.vc6.dll.lib"
# ADD LIB32 /nologo /out:"../../../lib\cstring.3.core.vc6.dll.lib"

!ELSEIF  "$(CFG)" == "cstring.core - Win32 Release Multithreaded pseudoUNIX"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "ReleaseMTUNIX"
# PROP BASE Intermediate_Dir "ReleaseMTUNIX"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "ReleaseMTUNIX"
# PROP Intermediate_Dir "ReleaseMTUNIX"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MT /W3 /GX /O2 /I "../../../include" /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /FR /YX /FD /c
# ADD CPP /nologo /MT /W3 /GX /O2 /I "../../../include" /I "$(UNIXEM)/include" /D "UNIX" /D "NDEBUG" /D "_MBCS" /D "_LIB" /FR /YX /FD /c
# ADD BASE RSC /l 0xc09 /d "NDEBUG"
# ADD RSC /l 0xc09 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo /out:"../../../lib\cstring.3.core.vc6.mt.unix.lib"
# ADD LIB32 /nologo /out:"../../../lib\cstring.3.core.vc6.mt.unix.lib"

!ELSEIF  "$(CFG)" == "cstring.core - Win32 Release pseudoUNIX"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "ReleaseUNIX"
# PROP BASE Intermediate_Dir "ReleaseUNIX"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "ReleaseUNIX"
# PROP Intermediate_Dir "ReleaseUNIX"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /I "../../../include" /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /FR /YX /FD /c
# ADD CPP /nologo /W3 /GX /O2 /I "../../../include" /I "$(UNIXEM)/include" /D "UNIX" /D "NDEBUG" /D "_MBCS" /D "_LIB" /FR /YX /FD /c
# ADD BASE RSC /l 0xc09 /d "NDEBUG"
# ADD RSC /l 0xc09 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo /out:"../../../lib\cstring.3.core.vc6.unix.lib"
# ADD LIB32 /nologo /out:"../../../lib\cstring.3.core.vc6.unix.lib"

!ENDIF

# Begin Target

# Name "cstring.core - Win32 Release"
# Name "cstring.core - Win32 Debug"
# Name "cstring.core - Win32 Debug Multithreaded"
# Name "cstring.core - Win32 Release Multithreaded"
# Name "cstring.core - Win32 Debug Multithreaded DLL"
# Name "cstring.core - Win32 Release Multithreaded DLL"
# Name "cstring.core - Win32 Release Multithreaded pseudoUNIX"
# Name "cstring.core - Win32 Release pseudoUNIX"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=..\..\..\src\cstring.core.c
# End Source File
# Begin Source File

SOURCE=..\..\..\src\cstring.def

!IF  "$(CFG)" == "cstring.core - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "cstring.core - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "cstring.core - Win32 Debug Multithreaded"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "cstring.core - Win32 Release Multithreaded"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "cstring.core - Win32 Debug Multithreaded DLL"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "cstring.core - Win32 Release Multithreaded DLL"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "cstring.core - Win32 Release Multithreaded pseudoUNIX"

# PROP BASE Exclude_From_Build 1
# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "cstring.core - Win32 Release pseudoUNIX"

# PROP BASE Exclude_From_Build 1
# PROP Exclude_From_Build 1

!ENDIF

# End Source File
# Begin Source File

SOURCE=..\..\..\src\dllmain.c

!IF  "$(CFG)" == "cstring.core - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "cstring.core - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "cstring.core - Win32 Debug Multithreaded"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "cstring.core - Win32 Release Multithreaded"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "cstring.core - Win32 Debug Multithreaded DLL"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "cstring.core - Win32 Release Multithreaded DLL"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "cstring.core - Win32 Release Multithreaded pseudoUNIX"

# PROP BASE Exclude_From_Build 1
# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "cstring.core - Win32 Release pseudoUNIX"

# PROP BASE Exclude_From_Build 1
# PROP Exclude_From_Build 1

!ENDIF

# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Group "cstring.core Header Files"

# PROP Default_Filter ""
# Begin Source File

SOURCE="$(CSTRING_ROOT)\include\cstring\cstring.h"
# End Source File
# Begin Source File

SOURCE="$(CSTRING_ROOT)\include\cstring\internal\safestr.h"
# End Source File
# End Group
# End Group
# End Target
# End Project
