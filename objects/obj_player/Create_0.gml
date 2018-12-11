/// @description Variables Initialization
sprite_index = spr_player_idle;		//当前角色的动作动画
jump = false;						//跳跃的状态
fall=false;							//坠落的状态
grav = 0.6;							//重力加速度
gravMax = 12;						//最大坠落速度
//acceleration = 0.02					//加速度
//maxSpeed = 3.6;						//最大速度
jumpSpeed = 12;						//向上跳跃的初始速度
moveSpeed = 3.6;					//玩家移动速度基数
runSpritePoint = 2.4				//走路/跑步 切换的临界值

usingController = false;			//检测是否在使用手柄

hsp = 0;							//游戏内实时横向移动速度
vsp = 0;							//游戏内实时纵向移动速度

