import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

List<StaggeredTile> _staggeredTiles = const <StaggeredTile>[
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 2),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 2),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
];

List<Widget> _tiles = const <Widget>[
  const WidgetTile(Colors.green, Icons.widgets),
  const WidgetTile(Colors.lightBlue, Icons.wifi),
  const WidgetTile(Colors.amber, Icons.panorama_wide_angle),
  const WidgetTile(Colors.brown, Icons.map),
  const WidgetTile(Colors.deepOrange, Icons.send),
  const WidgetTile(Colors.indigo, Icons.airline_seat_flat),
  const WidgetTile(Colors.red, Icons.bluetooth),
  const WidgetTile(Colors.pink, Icons.battery_alert),
  const WidgetTile(Colors.purple, Icons.desktop_windows),
  const WidgetTile(Colors.blue, Icons.radio),
  const WidgetTile(Colors.green, Icons.widgets),
  const WidgetTile(Colors.lightBlue, Icons.wifi),
  const WidgetTile(Colors.amber, Icons.panorama_wide_angle),
  const WidgetTile(Colors.brown, Icons.map),
  const WidgetTile(Colors.deepOrange, Icons.send),
  const WidgetTile(Colors.indigo, Icons.airline_seat_flat),
  const WidgetTile(Colors.red, Icons.bluetooth),
  const WidgetTile(Colors.pink, Icons.battery_alert),
  const WidgetTile(Colors.purple, Icons.desktop_windows),
  const WidgetTile(Colors.blue, Icons.radio),
];

class DiscoverWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: StaggeredGridView.count(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        crossAxisCount: 3,
        staggeredTiles: _staggeredTiles,
        children: _tiles,
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        padding: const EdgeInsets.all(4.0),
      ),
    );
  }
}

class WidgetTile extends StatelessWidget {
  const WidgetTile(this.backgroundColor, this.iconData);

  final Color backgroundColor;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return new Card(
      color: backgroundColor,
      child: new InkWell(
        onTap: () {},
        child: new Center(
          child: new Padding(
            padding: const EdgeInsets.all(4.0),
            child: new Icon(
              iconData,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
