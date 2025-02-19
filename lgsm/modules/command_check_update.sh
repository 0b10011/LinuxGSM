#!/bin/bash
# LinuxGSM command_check_update.sh module
# Author: Daniel Gibbs
# Contributors: http://linuxgsm.com/contrib
# Website: https://linuxgsm.com
# Description: Handles updating of servers.

commandname="CHECK-UPDATE"
commandaction="Check for Update"
moduleselfname="$(basename "$(readlink -f "${BASH_SOURCE[0]}")")"
fn_firstcommand_set

fn_print_dots ""
check.sh
core_logs.sh

if [ "${shortname}" == "ts3" ]; then
	update_ts3.sh
elif [ "${shortname}" == "mc" ]; then
	update_minecraft.sh
elif [ "${shortname}" == "mcb" ]; then
	update_minecraft_bedrock.sh
elif [ "${shortname}" == "pmc" ] || [ "${shortname}" == "vpmc" ] || [ "${shortname}" == "wmc" ]; then
	update_papermc.sh
elif [ "${shortname}" == "fctr" ]; then
	update_factorio.sh
elif [ "${shortname}" == "mta" ]; then
	update_mta.sh
elif [ "${shortname}" == "jk2" ]; then
	update_jediknight2.sh
elif [ "${shortname}" == "vints" ]; then
	update_vintagestory.sh
elif [ "${shortname}" == "ut99" ]; then
	update_ut99.sh
else
	update_steamcmd.sh
fi

core_exit.sh
