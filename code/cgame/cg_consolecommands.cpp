// cg_consolecommands.cpp
//

#include "cg_local.h"

typedef struct {
	char* cmd;
	void	(*function)(void);
} consoleCommand_t;

static consoleCommand_t	commands[] = {
	{ "testgun", CG_TestGun_f },
	{ "testmodel", CG_TestModel_f },
	{ "nextframe", CG_TestModelNextFrame_f },
	{ "prevframe", CG_TestModelPrevFrame_f },
	{ "nextskin", CG_TestModelNextSkin_f },
	{ "prevskin", CG_TestModelPrevSkin_f },
	{ "+zoom", CG_ZoomDown_f },
	{ "-zoom", CG_ZoomUp_f },
	{ "weapnext", CG_NextWeapon_f },
	{ "weapprev", CG_PrevWeapon_f },
	{ "weapon", CG_Weapon_f },

};

qboolean CG_ConsoleCommand(void) {
	const char* cmd;
	int		i;

	cmd = CG_Argv(0);

	for (i = 0; i < sizeof(commands) / sizeof(commands[0]); i++) {
		if (!Q_stricmp(cmd, commands[i].cmd)) {
			commands[i].function();
			return qtrue;
		}
	}

	return qfalse;
}

void CG_InitConsoleCommands(void) {
	int		i;

	for (i = 0; i < sizeof(commands) / sizeof(commands[0]); i++) {
		engine->CL_AddCgameCommand(commands[i].cmd);
	}
}