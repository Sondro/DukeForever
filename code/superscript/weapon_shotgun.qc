// shotgun.qc
//

$offset -10 4 -8
$model "models/weapons/shotgun/shotgun.md3"
$firesound "sound/weapons/guncock.wav"
$firetime 600
$worldmodel "models/weapons/w_shotgun/w_shotgun.md3"
$name "Shotgun"

// First person animation information.
$WEAPON_ANIMATION_IDLE_START 0
$WEAPON_ANIMATION_IDLE_END 0
$WEAPON_ANIMATION_FIRE_START 122
$WEAPON_ANIMATION_FIRE_END 148
$WEAPON_AMMO_TOUCH 25
$WEAPON_MAX_AMMO 100

void(entity self) weapon_shotgun_fire =
{
	G_SpawnShotgunFire(self);
};
