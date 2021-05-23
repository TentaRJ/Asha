package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxSubState;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import lime.app.Application;

class OutdatedSubState extends MusicBeatState
{
	public static var leftState:Bool = false;

	override function create()
	{
		super.create();
		var bg:FlxSprite = new FlxSprite().makeGraphic(FlxG.width, FlxG.height, FlxColor.BLACK);
		add(bg);
		var ver = "v" + Application.current.meta.get('version');
		var txt:FlxText = new FlxText(0, 0, FlxG.width,
			"Do the Mario! Swing your arms from side to side\n"
			+ "Come on, it's time to go. Do the Mario!\n"
			+ "Take one step, and then again\n"
			+ "Let's do the Mario, all together now! You got it! It's the Mario! Do the Mario!\n"
			+ "wing your arms from side to side\n"
			+ "Come on, it's time to go. Do the Mario!\n"
			+ "Take one step, and then again\n"
			+ "Let's do the Mario, all together now!\n"
			+ "Come on now. Just like that!",
			32);
		txt.setFormat("VCR OSD Mono", 32, FlxColor.WHITE, CENTER);
		txt.screenCenter();
		add(txt);
	}

	override function update(elapsed:Float)
	{
		if (controls.ACCEPT)
		{
			leftState = true;
			FlxG.switchState(new MainMenuState());
		}
		if (controls.BACK)
		{
			leftState = true;
			FlxG.switchState(new MainMenuState());
		}
		super.update(elapsed);
	}
}
