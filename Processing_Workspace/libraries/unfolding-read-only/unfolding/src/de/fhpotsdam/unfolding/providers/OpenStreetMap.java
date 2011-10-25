package de.fhpotsdam.unfolding.providers;

import de.fhpotsdam.unfolding.core.Coordinate;
import de.fhpotsdam.unfolding.geo.MercatorProjection;
import de.fhpotsdam.unfolding.geo.Transformation;

public class OpenStreetMap {
	public static abstract class GenericOpenStreetMapProvider extends AbstractMapTileUrlProvider {

		public GenericOpenStreetMapProvider() {
			super(new MercatorProjection(26, new Transformation(1.068070779e7f, 0.0f, 3.355443185e7f, 0.0f,
					-1.068070890e7f, 3.355443057e7f)));
		}

		public String getZoomString(Coordinate coordinate) {
			return (int) coordinate.zoom + "/" + (int) coordinate.column + "/" + (int) coordinate.row;
		}

		public int tileWidth() {
			return 256;
		}

		public int tileHeight() {
			return 256;
		}

		public abstract String[] getTileUrls(Coordinate coordinate);
	}

	public static class OpenStreetMapProvider extends GenericOpenStreetMapProvider {
		public String[] getTileUrls(Coordinate coordinate) {
			String url = "http://tile.openstreetmap.org/" + getZoomString(coordinate) + ".png";
			return new String[] { url };
		}
	}

	public static class CloudmadeProvider extends GenericOpenStreetMapProvider {
		private String api_key;
		private int style_id;

		public CloudmadeProvider(String _api_key, int _style_id) {
			api_key = _api_key;
			style_id = _style_id;
		}

		public String[] getTileUrls(Coordinate coordinate) {
			String url = "http://a.tile.cloudmade.com/" + api_key + "/" + style_id + "/256/"
					+ getZoomString(coordinate) + ".png";
			return new String[] { url };
		}
	}

}