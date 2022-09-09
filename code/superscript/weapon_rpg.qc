// weapon_rpg.qc
//

$offset 12 4 -13
$model "models/weapons/rpg/r.md3"
$firesound "sound/weapons/guncock.wav"
$firetime 300

// First person animation information.
$WEAPON_ANIMATION_IDLE_START 119
$WEAPON_ANIMATION_IDLE_END 119
$WEAPON_ANIMATION_FIRE_START 120
$WEAPON_ANIMATION_FIRE_END 154
$WEAPON_AMMO_TOUCH 5
$WEAPON_MAX_AMMO 50

void(entity self) weapon_rpg_fire =
{
	gentity_t* m;
	m = fire_rocket(self, muzzle, forward);
};


