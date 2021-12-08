part of home;

class _HomeViewState extends TTState<_HomeModel, _HomeView> {
  @override
  Widget buildWithModel(BuildContext context, _HomeModel model) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: SafeArea(
        child: TimelineTile(
          alignment: TimelineAlign.start,
          lineXY: 0.3,
          indicatorStyle: IndicatorStyle(
            width: 50,
            height: 50,
            drawGap: true,
            indicator: Center(
                child: InkWell(
                    onTap: () {
                      print('asd');
                    },
                    child: Text('1975'))),
          ),
          endChild: Container(
            constraints: const BoxConstraints(
              minHeight: 120,
            ),
            color: Colors.lightGreenAccent,
          ),
        ),
      ),
    );
  }
}
