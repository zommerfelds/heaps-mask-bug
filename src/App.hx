import hxd.res.DefaultFont;
import h2d.Text;
import h2d.Tile;
import h2d.Flow;

class App extends hxd.App {
	static function main() {
		new App();
	}

	override function init() {
		hxd.Res.initEmbed();

		final flow = new Flow(s2d);
		flow.backgroundTile = Tile.fromColor(0xff0000);
		flow.fillHeight = true;
		flow.fillWidth = true;
		flow.verticalAlign = Middle;
		flow.horizontalAlign = Middle;

		final text = new Text(hxd.res.DefaultFont.get(), flow);
		text.text = "TODO";
		text.scale(5);
	}
}
