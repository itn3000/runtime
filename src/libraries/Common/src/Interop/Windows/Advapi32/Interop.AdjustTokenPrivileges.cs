// Licensed to the .NET Foundation under one or more agreements.
// The .NET Foundation licenses this file to you under the MIT license.

using Microsoft.Win32.SafeHandles;
using System;
using System.Runtime.InteropServices;

internal static partial class Interop
{
    internal static partial class Advapi32
    {
#if DLLIMPORTGENERATOR_ENABLED
        [GeneratedDllImport(Libraries.Advapi32, SetLastError = true)]
        internal static unsafe partial bool AdjustTokenPrivileges(
#else
        [DllImport(Libraries.Advapi32, SetLastError = true)]
        internal static extern unsafe bool AdjustTokenPrivileges(
#endif
            SafeTokenHandle TokenHandle,
            bool DisableAllPrivileges,
            TOKEN_PRIVILEGE* NewState,
            uint BufferLength,
            TOKEN_PRIVILEGE* PreviousState,
            uint* ReturnLength);
    }
}
