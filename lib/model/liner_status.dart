class Status {
  String title;
  String level;
  double indicatorValue;
  int price;
  String content;

  Status(
      {this.title, this.level, this.indicatorValue, this.price, this.content});
}

List getStatuses() {
  return [
    Status(
        title: "竹富島航路",
        level: "通常運行",
        indicatorValue: 0.33,
        price: 20,
        content:
            "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed."),
    Status(
        title: "小浜島航路",
        level: "通常運行",
        indicatorValue: 0.33,
        price: 50,
        content:
            "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed."),
    Status(
        title: "黒島航路",
        level: "通常運行",
        indicatorValue: 0.66,
        price: 30,
        content:
            "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed."),
    Status(
        title: "西表島 大原航路",
        level: "通常運行",
        indicatorValue: 0.66,
        price: 30,
        content:
            "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed."),
    Status(
        title: "西表島 上原航路",
        level: "欠航",
        indicatorValue: 1.0,
        price: 50,
        content:
            "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed."),
    Status(
        title: "波照間島航路",
        level: "一部欠航便有",
        indicatorValue: 1.0,
        price: 50,
        content:
            "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed."),
  ];
}
