REM Runs all build steps for building on Windows

set build_config=RelWithDebInfo
set OBSPath=%cd%\..\obs-studio
set QTDIR32=c:\Qt\5.15.2\msvc2019
set QTDIR64=c:\Qt\5.15.2\msvc2019_64

call ./ci/windows/prepare-windows.cmd

"c:\Program Files (x86)\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\MSBuild" /p:Configuration=%build_config% build32\ptz-controls.sln
"c:\Program Files (x86)\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\MSBuild" /p:Configuration=%build_config% build64\ptz-controls.sln

call ./ci/windows/package-windows.cmd
