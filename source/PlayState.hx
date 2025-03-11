package;

import flixel.FlxState;

class PlayState extends FlxState
{
	var cursor:Cursor;

	override public function create()
	{
		FlxG.mouse.visible = false;

		cursor = new Cursor();
		add(cursor);

		super.create();
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
		cursor.setPosition(FlxG.mouse.x, FlxG.mouse.y);
	}
}
