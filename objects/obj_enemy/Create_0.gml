hp = 5;

deadAngle = 0;
hasDead = false;

sprite_index = spr_enemy;		//当前角色的动作动画
grav = 0.6;							//重力加速度
gravMax = 12;						//最大坠落速度

moveSpeed = 3.6;					//玩家移动速度基数

hsp = 0;							//游戏内实时横向移动速度
vsp = 0;							//游戏内实时纵向移动速度