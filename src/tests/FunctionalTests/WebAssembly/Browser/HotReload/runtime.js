// Licensed to the .NET Foundation under one or more agreements.
// The .NET Foundation licenses this file to you under the MIT license.

"use strict";

var Module = {
    config: null,
    configSrc: "./mono-config.json",
    onConfigLoaded: function () {
        MONO.config.environment_variables["DOTNET_MODIFIABLE_ASSEMBLIES"] = "debug";
    },
    onDotNetReady: function () {
        try {
            App.init();
        } catch (error) {
            test_exit(1);
            throw (error);
        }
    },
    onAbort: function () {
        test_exit(1);
    },
};
