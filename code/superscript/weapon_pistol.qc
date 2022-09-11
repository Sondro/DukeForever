// pistol.qc
//

$offset 12 4 -13
$model "models/weapons/pistol/pistol.md3"
$firesound "sound/weapons/guncock.wav"
$firetime 300
$worldmodel "models/weapons/w_pistol/w_pistol.md3"
$name "Pistol"

// First person animation information.
$WEAPON_ANIMATION_IDLE_START 113
$WEAPON_ANIMATION_IDLE_END 113
$WEAPON_ANIMATION_FIRE_START 0
$WEAPON_ANIMATION_FIRE_END 8

$WEAPON_AMMO_TOUCH 50
$WEAPON_MAX_AMMO 200

void(entity self) weapon_pistol_fire =
{
	// Bullet_Fire(ent, spread, damage)
	Bullet_Fire(self, 0, 10);
};

