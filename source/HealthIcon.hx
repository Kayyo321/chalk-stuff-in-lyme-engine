package;

import flixel.FlxSprite;

class HealthIcon extends FlxSprite
{
	/**
	 * Used for FreeplayState! If you use it elsewhere, prob gonna annoying
	 */
	public var sprTracker:FlxSprite;

	public function new(char:String = 'bf', isPlayer:Bool = false)
	{
		super();
		loadGraphic(Paths.image('iconGrid'), true, 150, 150);

		antialiasing = true;

		// global 

		animation.add('bf', [0, 1, 32], 0, false, isPlayer);
	  //------------------------------------------------	
		animation.add('face', [10, 11], 0, false, isPlayer);
	  //----------------------------------------------------
		animation.add('bf-old', [14, 15], 0, false, isPlayer);
	  //------------------------------------------------------

		// bf versions 

		animation.add('bf-car', [0, 1], 0, false, isPlayer);
      //----------------------------------------------------
		animation.add('bf-christmas', [0, 1], 0, false, isPlayer);
      //----------------------------------------------------------
		animation.add('bf-pixel', [21, 21], 0, false, isPlayer);
      //--------------------------------------------------------

		// gf versions

		animation.add('gf', [16], 0, false, isPlayer);

		// week 1

		animation.add('dad', [12, 13], 0, false, isPlayer);

		// week 2

		animation.add('monster', [19, 20], 0, false, isPlayer);
      //-------------------------------------------------------
		animation.add('spooky', [2, 3], 0, false, isPlayer);

		// week 3
		
		animation.add('pico', [4, 5], 0, false, isPlayer);

		// week 4

		animation.add('mom', [6, 7], 0, false, isPlayer);
      //-------------------------------------------------
		animation.add('mom-car', [6, 7], 0, false, isPlayer);
      //-----------------------------------------------------
		
		// week 5

		animation.add('parents-christmas', [17], 0, false, isPlayer);
      //-------------------------------------------------------------		
		animation.add('monster-christmas', [19, 20], 0, false, isPlayer);
		
		// week 6

		animation.add('senpai', [22, 22], 0, false, isPlayer);
      //------------------------------------------------------	
		animation.add('senpai-angry', [22, 22], 0, false, isPlayer);
      //------------------------------------------------------------		
		animation.add('spirit', [23, 23], 0, false, isPlayer);

		// week 7
		
		animation.add('tankman', [8, 9], 0, false, isPlayer);

		// chalk 

		animation.add('chalk', [24, 25], 0, false, isPlayer);
 	  //-----------------------------------------------------
		animation.add('chalk-knife', [26, 27], 0, false, isPlayer);

		animation.play(char);
		scrollFactor.set();
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);

		if (sprTracker != null)
			setPosition(sprTracker.x + sprTracker.width + 10, sprTracker.y - 30);
	}
}
