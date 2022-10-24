# Microsoft Developer Studio Project File - Name="test.scratch.cstring" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Application" 0x0101

CFG=test.scratch.cstring - Win32 Debug Multithreaded DLL
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "test.scratch.cstring.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "test.scratch.cstring.mak" CFG="test.scratch.cstring - Win32 Debug Multithreaded DLL"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "test.scratch.cstring - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "test.scratch.cstring - Win32 Debug" (based on "Win32 (x86) Application")
!MESSAGE "test.scratch.cstring - Win32 Debug Multithreaded" (based on "Win32 (x86) Application")
!MESSAGE "test.scratch.cstring - Win32 Release Multithreaded" (based on "Win32 (x86) Application")
!MESSAGE "test.scratch.cstring - Win32 Debug Multithreaded DLL" (based on "Win32 (x86) Application")
!MESSAGE "test.scratch.cstring - Win32 Release Multithreaded DLL" (based on "Win32 (x86) Application")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "test.scratch.cstring - Win32 Release"

# PROP BASE Use_MFC 1
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /YX /FD /c
# ADD CPP /nologo /W3 /GX /O2 /I "../../../../include" /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "STRICT" /D "_CONSOLE" /YX /FD /c
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0xc09 /d "NDEBUG"
# ADD RSC /l 0xc09 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 /nologo /subsystem:windows /machine:I386
# ADD LINK32 kernel32.lib user32.lib advapi32.lib /nologo /version:1.0 /subsystem:console /map /machine:I386 /out:"Release/test.scratch.cstring.debug.exe" /libpath:"../../../../lib"
# SUBTRACT LINK32 /pdb:none

!ELSEIF  "$(CFG)" == "test.scratch.cstring - Win32 Debug"

# PROP BASE Use_MFC 1
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MTd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /YX /FD /GZ /c
# ADD CPP /nologo /W3 /Gm /GX /Zi /Od /I "../../../../include" /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "STRICT" /D "_CONSOLE" /FR /YX /FD /GZ /c
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0xc09 /d "_DEBUG"
# ADD RSC /l 0xc09 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 /nologo /subsystem:windows /debug /machine:I386 /pdbtype:sept
# ADD LINK32 kernel32.lib user32.lib advapi32.lib /nologo /version:1.0 /subsystem:console /map /debug /machine:I386 /out:"Debug/test.scratch.cstring.debug.exe" /pdbtype:sept /libpath:"../../../../lib"
# SUBTRACT LINK32 /pdb:none

!ELSEIF  "$(CFG)" == "test.scratch.cstring - Win32 Debug Multithreaded"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug Multithreaded"
# PROP BASE Intermediate_Dir "Debug Multithreaded"
# PROP BASE Ignore_Export_Lib 0
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "DebugMT"
# PROP Intermediate_Dir "DebugMT"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /Zi /Od /I "../../../include" /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "STRICT" /D "_CONSOLE" /YX /FD /GZ /c
# ADD CPP /nologo /MTd /W3 /Gm /GX /Zi /Od /I "../../../../include" /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "STRICT" /D "_CONSOLE" /YX /FD /GZ /c
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0xc09 /d "_DEBUG"
# ADD RSC /l 0xc09 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 cstring.vc6.debug.lib kernel32.lib user32.lib advapi32.lib /nologo /version:1.0 /subsystem:console /map /debug /machine:I386 /out:"Debug/test.scratch.cstring.debug.exe" /pdbtype:sept /libpath:"../../../lib"
# SUBTRACT BASE LINK32 /pdb:none
# ADD LINK32 kernel32.lib user32.lib advapi32.lib /nologo /version:1.0 /subsystem:console /map /debug /machine:I386 /out:"Debug/test.scratch.cstring.debug.exe" /pdbtype:sept /libpath:"../../../../lib"
# SUBTRACT LINK32 /pdb:none

!ELSEIF  "$(CFG)" == "test.scratch.cstring - Win32 Release Multithreaded"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release Multithreaded"
# PROP BASE Intermediate_Dir "Release Multithreaded"
# PROP BASE Ignore_Export_Lib 0
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "ReleaseMT"
# PROP Intermediate_Dir "ReleaseMT"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /I "../../../include" /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "STRICT" /D "_CONSOLE" /YX /FD /c
# ADD CPP /nologo /MT /W3 /GX /O2 /I "../../../../include" /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "STRICT" /D "_CONSOLE" /YX /FD /c
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0xc09 /d "NDEBUG"
# ADD RSC /l 0xc09 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 cstring.vc6.lib kernel32.lib user32.lib advapi32.lib /nologo /version:1.0 /subsystem:console /map /machine:I386 /out:"Release/test.scratch.cstring.debug.exe" /libpath:"../../../lib"
# SUBTRACT BASE LINK32 /pdb:none
# ADD LINK32 kernel32.lib user32.lib advapi32.lib /nologo /version:1.0 /subsystem:console /map /machine:I386 /out:"Release/test.scratch.cstring.debug.exe" /libpath:"../../../../lib"
# SUBTRACT LINK32 /pdb:none

!ELSEIF  "$(CFG)" == "test.scratch.cstring - Win32 Debug Multithreaded DLL"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug Multithreaded DLL"
# PROP BASE Intermediate_Dir "Debug Multithreaded DLL"
# PROP BASE Ignore_Export_Lib 0
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "DebugDLL"
# PROP Intermediate_Dir "DebugDLL"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /Zi /Od /I "../../../include" /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "STRICT" /D "_CONSOLE" /YX /FD /GZ /c
# ADD CPP /nologo /MDd /W3 /Gm /GX /Zi /Od /I "../../../../include" /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "STRICT" /D "_CONSOLE" /YX /FD /GZ /c
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0xc09 /d "_DEBUG"
# ADD RSC /l 0xc09 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 cstring.vc6.debug.lib kernel32.lib user32.lib advapi32.lib /nologo /version:1.0 /subsystem:console /map /debug /machine:I386 /out:"Debug/test.scratch.cstring.debug.exe" /pdbtype:sept /libpath:"../../../lib"
# SUBTRACT BASE LINK32 /pdb:none
# ADD LINK32 kernel32.lib user32.lib advapi32.lib /nologo /version:1.0 /subsystem:console /map /debug /machine:I386 /out:"Debug/test.scratch.cstring.debug.exe" /pdbtype:sept /libpath:"../../../../lib"
# SUBTRACT LINK32 /pdb:none

!ELSEIF  "$(CFG)" == "test.scratch.cstring - Win32 Release Multithreaded DLL"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release Multithreaded DLL"
# PROP BASE Intermediate_Dir "Release Multithreaded DLL"
# PROP BASE Ignore_Export_Lib 0
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "ReleaseDLL"
# PROP Intermediate_Dir "ReleaseDLL"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /I "../../../include" /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "STRICT" /D "_CONSOLE" /YX /FD /c
# ADD CPP /nologo /MD /W3 /GX /O2 /I "../../../../include" /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "STRICT" /D "_CONSOLE" /FR /YX /FD /c
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0xc09 /d "NDEBUG"
# ADD RSC /l 0xc09 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 cstring.vc6.lib kernel32.lib user32.lib advapi32.lib /nologo /version:1.0 /subsystem:console /map /machine:I386 /out:"Release/test.scratch.cstring.debug.exe" /libpath:"../../../lib"
# SUBTRACT BASE LINK32 /pdb:none
# ADD LINK32 kernel32.lib user32.lib advapi32.lib /nologo /version:1.0 /subsystem:console /map /machine:I386 /out:"Release/test.scratch.cstring.debug.exe" /libpath:"../../../../lib"
# SUBTRACT LINK32 /pdb:none

!ENDIF 

# Begin Target

# Name "test.scratch.cstring - Win32 Release"
# Name "test.scratch.cstring - Win32 Debug"
# Name "test.scratch.cstring - Win32 Debug Multithreaded"
# Name "test.scratch.cstring - Win32 Release Multithreaded"
# Name "test.scratch.cstring - Win32 Debug Multithreaded DLL"
# Name "test.scratch.cstring - Win32 Release Multithreaded DLL"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=..\test.scratch.cstring.c
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=..\..\..\..\include\cstring\cstring.h
# End Source File
# End Group
# Begin Group "Resource Files"

# PROP Default_Filter "ico;cur;bmp;dlg;rc2;rct;bin;rgs;gif;jpg;jpeg;jpe"
# End Group
# End Target
# End Project
