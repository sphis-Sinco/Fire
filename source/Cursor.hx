package;

import flixel.FlxSprite;
import openfl.display.Bitmap;

class Cursor extends FlxSprite
{
	override public function new()
	{
		super(0, 0);

		loadGraphic(FileManager.getImageFile('cursor'), true, 16, 16);
		animation.add('idle', [0, 1], 6);
		animation.add('click', [2], 2, false);

		animation.play('idle');

                scale.set(4,4);
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);

		if (FlxG.mouse.justPressed)
		{
			animation.play('click');
		}

		if (animation.finished)
		{
			animation.play('idle');
		}
	}
}
