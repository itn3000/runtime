// Licensed to the .NET Foundation under one or more agreements.
// The .NET Foundation licenses this file to you under the MIT license.

using System.Runtime.InteropServices;

internal static partial class Interop
{
    internal static partial class Kernel32
    {
#if DLLIMPORTGENERATOR_ENABLED
        [GeneratedDllImport(Libraries.Kernel32, SetLastError = true)]
        internal static partial int GetFileType(SafeHandle hFile);
#else
        [DllImport(Libraries.Kernel32, SetLastError = true)]
        internal static extern int GetFileType(SafeHandle hFile);
#endif
    }
}
