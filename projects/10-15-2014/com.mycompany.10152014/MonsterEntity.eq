
/*
 * MonsterEntity
 * Created by Eqela Studio 2.0b7.4
 */

public class MonsterEntity : SEEntity
{
	SESprite monster;
	int w;
	int h;
	int mx;
	int my;
//	int px;
//	int py;
	int speed;
	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		w = get_scene_width();
		h = get_scene_height();
		rsc.prepare_image("Pikachu", "Pikachu", 0.1*w, 0.1*h);
		monster = add_sprite_for_image(SEImage.for_resource("Pikachu"));
		monster.move(Math.random(0,w), Math.random(0,h));
		speed = Math.random(1,80)*10;
//	  var px = MainScene.x;
//	  var py = MainScene.y;
	}

	public void tick(TimeVal now, double delta) {
		base.tick(now, delta);
		monster.move(monster.get_x()+(MainScene.x-monster.get_x())/speed, monster.get_y()+(MainScene.y-monster.get_y())/speed);
	}
	
	public void cleanup() {
		base.cleanup();
	}
}
   