#!/usr/bin/env bash
. /scripts/lib/main.lib
librequire "standard";
std.msg "\nLoading Modules...\n" "default" "ok";
std.msg "Collecting information...\n" "default" "ok";
std.msg "Displaying information...\n" "default" "ok";
std.msg "\nLoaded Modules:\n" "blue,bold";
std.msg "${LIB_MODULE_LIST[*]}";
std.msg "\nclass list:\n" "blue,bold";
std.msg "${LIB_CLASS_LIST[*]}";
std.msg "\nfunction list:\n" "blue,bold";
std.msg "${LIB_FUNCTION_LIST[*]}\n";
