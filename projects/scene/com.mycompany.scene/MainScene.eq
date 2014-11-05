/*
 * MainScene.eq
 * Generated by Eqela Studio 2.0b7.4
 */

public class MainScene : SEScene
{
	SESprite color1;
	SESprite color2;
	SESprite color3;
	SESprite color4;
	String display;
	SESprite text;
	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);

		color1 = add_sprite_for_color(Color.instance("red"), get_scene_width()*0.5, get_scene_height()*0.5);
		color2 = add_sprite_for_color(Color.instance("blue"), get_scene_width()*0.5, get_scene_height()*0.5);
		color3 = add_sprite_for_color(Color.instance("white"), get_scene_width()*0.5, get_scene_height()*0.5);
		color4 = add_sprite_for_color(Color.instance("green"), get_scene_width()*0.5, get_scene_height()*0.5);

		color1.move(0, 0);
		color2.move(get_scene_width()*0.5, 0);
		color3.move(0,get_scene_height()*0.5);
		color4.move(get_scene_width()*0.5,get_scene_height()*0.5);		
								
	}
	public void on_pointer_press(SEPointerInfo pi) {
				
		base.on_pointer_press(pi);		
		if(pi.is_inside(0,0, get_scene_width()*0.5, get_scene_height()*0.5)) {
			switch_scene(new FirstScene());			
		}
		
		else if(pi.is_inside(get_scene_width()*0.5, 0, get_scene_width(), get_scene_height()*0.5)) {
			switch_scene(new SecondScene());			
		}
		
		else if(pi.is_inside(0,get_scene_height()*0.5, get_scene_width()*0.5, get_scene_height())) {
			switch_scene(new ThirdScene());			
		}

		else if(pi.is_inside(get_scene_width()*0.5,get_scene_height()*0.5, get_scene_width(), get_scene_height())) {
			switch_scene(new FourthScene());			
		}				
	}	

	public void cleanup() {
		base.cleanup();
	}
}
