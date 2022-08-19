import h2d.Bitmap;
import h2d.filter.Mask;
import h2d.Graphics;
import hxd.res.DefaultFont;
import h2d.Text;
import h2d.Tile;
import h2d.Flow;

class App extends hxd.App {
	static function main() {
		new App();
	}

	var shape:Bitmap;

	override function init() {
		hxd.Res.initEmbed();

		final shapeTile = hxd.Res.shape.toTile();
		shapeTile.setCenterRatio();
		shape = new Bitmap(shapeTile, s2d);
		shape.x = s2d.width / 2;
		shape.y = s2d.height / 2;

		final flow = new Flow(s2d);
		flow.backgroundTile = Tile.fromColor(0xff0000);
		flow.fillHeight = true;
		flow.fillWidth = true;
		flow.verticalAlign = Middle;
		flow.horizontalAlign = Middle;
		// The second argument is being ignored?
		flow.filter = new Mask(shape, true, true);

		final text = new Text(hxd.res.DefaultFont.get(), flow);
		text.text = "Hello, is this a mask bug?";
		text.scale(5);
	}

	override function update(dt:Float) {
		shape.rotation += dt * 1.0;
	}
}
