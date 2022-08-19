import h2d.Bitmap;
import h2d.filter.Mask;

class App extends hxd.App {
	static function main() {
		new App();
	}

	var shape:Bitmap;

	override function init() {
		hxd.Res.initEmbed();

		engine.backgroundColor = 0xff0000;

		final shapeTile = hxd.Res.shape.toTile();
		shapeTile.setCenterRatio();
		shape = new Bitmap(shapeTile, s2d);
		shape.x = s2d.width / 2;
		shape.y = s2d.height / 2;

		final shipTile = hxd.Res.ship.toTile();
		shipTile.setCenterRatio();
		final ship = new Bitmap(shipTile, s2d);
		ship.width = s2d.width;
		ship.x = s2d.width / 2;
		ship.y = s2d.height / 2;
		ship.filter = new Mask(shape, true, false);
	}

	override function update(dt:Float) {
		shape.rotation += dt * 0.5;
	}
}
