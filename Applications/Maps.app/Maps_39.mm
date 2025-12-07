void sub_1004605AC(unint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = Strong;
  v5 = *(Strong + OBJC_IVAR____TtC4Maps36VisitRetentionDurationViewController_options);
  if (*(v5 + 16) <= a1)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v6 = *(v5 + a1 + 32);
  v7 = [objc_allocWithZone(NSNumber) initWithInteger:qword_101207C90[v6]];
  type metadata accessor for MapsSyncKeyedStore();
  v8 = static MapsSyncKeyedStore.shared.getter();
  v13[3] = sub_1000F337C();
  v13[0] = v7;
  v9 = v7;
  dispatch thunk of MapsSyncKeyedStore.setObject(_:key:)();

  sub_1000DB2F4(v13);
  v10 = *&v4[OBJC_IVAR____TtC4Maps36VisitRetentionDurationViewController_onConfirmSelection];
  if (v10)
  {
    v11 = *&v4[OBJC_IVAR____TtC4Maps36VisitRetentionDurationViewController_onConfirmSelection + 8];

    v10(v6);
    sub_1000588AC(v10, v11);
  }

  v12.receiver = v4;
  v12.super_class = type metadata accessor for VisitRetentionDurationViewController();
  objc_msgSendSuper2(&v12, "handleDismissAction:", v4);
}

int *sub_100460718@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4)
  {
    type metadata accessor for UIHostingControllerSizingOptions();
    sub_1001D2F9C();
    sub_1000CE6B8(&unk_10190B9B0, &unk_1011EFB50);
    sub_100124984();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v5 = 0;
  }

  else
  {
    sub_1000CE6B8(&unk_10190B9A0, &unk_1011E7990);
    type metadata accessor for UIHostingControllerSizingOptions();
    *(swift_allocObject() + 16) = xmmword_1011E1D60;
    static UIHostingControllerSizingOptions.preferredContentSize.getter();
    static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
    sub_1001D2F9C();
    sub_1000CE6B8(&unk_10190B9B0, &unk_1011EFB50);
    sub_100124984();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v5 = 1;
  }

  result = type metadata accessor for MapsHostingContaineeViewController.HostingControllerOptions(0);
  *(a1 + result[5]) = v5;
  v7 = a1 + result[6];
  *v7 = 0;
  *(v7 + 8) = 2;
  *(a1 + result[7]) = 0;
  return result;
}

void sub_100460900()
{
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "viewDidLoad");
  v1 = [v0 cardPresentationController];
  if (!v1)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = v1;
  [v1 setPresentedModally:1];

  v3 = [v0 cardPresentationController];
  if (!v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v4 = v3;
  [v3 setDefaultContaineeLayout:5];

  v5 = [v0 cardPresentationController];
  if (!v5)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = v5;
  [v5 setTakesAvailableHeight:1];

  v7 = [v0 cardPresentationController];
  if (!v7)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v7;
  [v7 setHideGrabber:1];

  v9 = [v0 cardPresentationController];
  if (v9)
  {
    v10 = v9;
    [v9 setUseDefaultLayoutWhenCalculatingBottomInsetForFloatingControls:1];

    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t sub_100460B4C()
{

  v1 = *(v0 + OBJC_IVAR____TtC4Maps36VisitRetentionDurationViewController_onConfirmSelection);
  v2 = *(v0 + OBJC_IVAR____TtC4Maps36VisitRetentionDurationViewController_onConfirmSelection + 8);

  return sub_1000588AC(v1, v2);
}

id sub_100460C04()
{
  v2.receiver = *(v0 + 16);
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "handleDismissAction:", v2.receiver);
}

unint64_t sub_100460CA8()
{
  result = qword_101921B58;
  if (!qword_101921B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101921B58);
  }

  return result;
}

void sub_100460DE0(uint64_t a1)
{
  if ((MapsFeature_IsEnabled_VisitedPlaces() & 1) == 0)
  {
    *(v1 + OBJC_IVAR____TtC4Maps25VisitedPlacesDataProvider_showVisitedPlaces) = 0;
    if (qword_1019066E8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100021540(v6, qword_10195FF58);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(oslog, v3))
    {
      goto LABEL_12;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "The Visited Places Feature is not enabled, so we won't show the Visited Places entry in Maps Home";
    goto LABEL_11;
  }

  if (!GEOConfigGetBOOL())
  {
    type metadata accessor for MapsWarmingSheetHelper();
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_10033B540(sub_1004618D4, v7);

    return;
  }

  *(v1 + OBJC_IVAR____TtC4Maps25VisitedPlacesDataProvider_showVisitedPlaces) = 0;
  if (qword_1019066E8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100021540(v2, qword_10195FF58);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "Visited Places entry has been shown and interacted already, skipping.";
LABEL_11:
    _os_log_impl(&_mh_execute_header, oslog, v3, v5, v4, 2u);
  }

LABEL_12:
}

id sub_100461044(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for VisitedPlacesDataProvider();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1004610EC(char a1, uint64_t a2)
{
  v3 = sub_1000CE6B8(&unk_10190BA50, &unk_1011E4800);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      v8 = type metadata accessor for TaskPriority();
      (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
      v9 = swift_allocObject();
      v9[2] = 0;
      v9[3] = 0;
      v9[4] = v7;
      sub_10050D2C8(0, 0, v5, &unk_101207CD8, v9);
    }
  }

  else
  {
    if (qword_1019066E8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100021540(v10, qword_10195FF58);
    v14 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v14, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v14, v11, "The Visited Places Feature is not authorized, so we won't show the Visited Places entry in Maps Home", v12, 2u);
    }

    v13 = v14;
  }
}

uint64_t sub_1004612F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v6 = type metadata accessor for DispatchQoS();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  v7 = swift_task_alloc();
  v4[16] = v7;
  *v7 = v4;
  v7[1] = sub_100461450;

  return sub_10045B120();
}

uint64_t sub_100461450(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 136) = a1 & 1;

    return _swift_task_switch(sub_1004615B4, 0, 0);
  }
}

uint64_t sub_1004615B4()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[12];
  v13 = v0[13];
  v4 = v0[10];
  v5 = v0[11];
  v6 = v0[9];
  v6[OBJC_IVAR____TtC4Maps25VisitedPlacesDataProvider_showVisitedPlaces] = *(v0 + 136);
  sub_100109428();
  v12 = static OS_dispatch_queue.main.getter();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v0[6] = sub_100461A8C;
  v0[7] = v7;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100039C64;
  v0[5] = &unk_10161A2B0;
  v8 = _Block_copy(v0 + 2);
  v9 = v6;
  static DispatchQoS.unspecified.getter();
  v0[8] = _swiftEmptyArrayStorage;
  sub_1000DB364();
  sub_1000CE6B8(&unk_10190B500, &unk_1011E4610);
  sub_1000DB3BC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v8);

  (*(v5 + 8))(v3, v4);
  (*(v2 + 8))(v1, v13);

  v10 = v0[1];

  return v10();
}

void sub_1004617B0(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC4Maps25VisitedPlacesDataProvider_active) == 1)
  {
    (*(a1 + OBJC_IVAR____TtC4Maps25VisitedPlacesDataProvider_updateHandler))();
  }

  else
  {
    if (qword_1019066E8 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100021540(v1, qword_10195FF58);
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v2, "Not showing the Visited Places entry because it is not active", v3, 2u);
    }
  }
}

uint64_t sub_1004618DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003AC4C;

  return sub_1004612F4(a1, v4, v5, v6);
}

uint64_t type metadata accessor for CarHomeContentListView(uint64_t a1)
{
  result = qword_101921C08;
  if (!qword_101921C08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100461B08(uint64_t a1)
{
  sub_100461BC8();
  if (v1 <= 0x3F)
  {
    sub_10005B95C();
    if (v2 <= 0x3F)
    {
      sub_10028FEB0(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100461BC8()
{
  if (!qword_101921C18)
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_101921C18);
    }
  }
}

uint64_t sub_100461C34@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v2 = type metadata accessor for MapsDesignAccessibilityString();
  v28 = *(v2 - 8);
  v29 = v2;
  __chkstk_darwin(v2);
  v4 = (&v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = type metadata accessor for ContentMarginPlacement();
  v23 = *(v26 - 8);
  __chkstk_darwin(v26);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000CE6B8(&qword_101921C68, &qword_101207D48);
  v21 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v21 - v8;
  v22 = sub_1000CE6B8(&qword_101921C70, &qword_101207D50);
  v24 = *(v22 - 8);
  __chkstk_darwin(v22);
  v11 = &v21 - v10;
  v25 = sub_1000CE6B8(&qword_101921C78, &qword_101207D58);
  v27 = *(v25 - 8);
  __chkstk_darwin(v25);
  v13 = &v21 - v12;
  v31 = v1;
  static Axis.Set.vertical.getter();
  sub_1000CE6B8(&qword_101921C80, &qword_101207D60);
  sub_100465034();
  ScrollView.init(_:showsIndicators:content:)();
  static Edge.Set.top.getter();
  static ContentMarginPlacement.scrollContent.getter();
  v14 = sub_1000414C8(&qword_101921CA0, &qword_101921C68, &qword_101207D48, &protocol conformance descriptor for ScrollView<A>);
  View.contentMargins(_:_:for:)();
  (*(v23 + 8))(v6, v26);
  (*(v21 + 8))(v9, v7);
  *v4 = 0x656D6F48726143;
  v4[1] = 0xE700000000000000;
  v16 = v28;
  v15 = v29;
  (*(v28 + 104))(v4, enum case for MapsDesignAccessibilityString.list(_:), v29);
  v32 = v7;
  v33 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18 = v22;
  View.mapsDesignAXContainer(withID:)();
  (*(v16 + 8))(v4, v15);
  (*(v24 + 8))(v11, v18);
  v32 = v18;
  v33 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v19 = v25;
  View.scrollAccessoryEdge(_:)();
  return (*(v27 + 8))(v13, v19);
}

uint64_t sub_100462100(uint64_t *a1)
{
  v2 = type metadata accessor for CarHomeContentListView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v8[1] = *a1;
  sub_100465C60(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CarHomeContentListView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1004658D0(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for CarHomeContentListView);

  sub_1000CE6B8(&qword_101921CA8, &qword_101207D78);
  sub_1000CE6B8(&qword_101921C98, &unk_101207D68);
  sub_1000414C8(&qword_101921CB0, &qword_101921CA8, &qword_101207D78, &protocol conformance descriptor for [A]);
  sub_1000414C8(&qword_101921C90, &qword_101921C98, &unk_101207D68, &protocol conformance descriptor for TupleView<A>);
  sub_10046515C();
  return ForEach<>.init(_:content:)();
}

uint64_t sub_100462308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1;
  v82 = a3;
  v6 = type metadata accessor for CarHomeContentListView(0);
  v72 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v73 = v7;
  v74 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000CE6B8(&qword_101921CC0, &qword_101207D80);
  __chkstk_darwin(v8 - 8);
  v10 = &v70 - v9;
  v78 = sub_1000CE6B8(&qword_101921CC8, &qword_101207D88);
  __chkstk_darwin(v78);
  v81 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v77 = &v70 - v13;
  __chkstk_darwin(v14);
  v80 = &v70 - v15;
  v16 = sub_1000CE6B8(&qword_101921CD0, &qword_101207D90);
  __chkstk_darwin(v16 - 8);
  v18 = &v70 - v17;
  v19 = sub_1000CE6B8(&qword_101921CD8, &unk_101207D98);
  __chkstk_darwin(v19);
  v79 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v70 - v22;
  __chkstk_darwin(v24);
  v76 = &v70 - v25;
  v75 = v5;
  sub_100462ACC(v5, a2, v18);
  v71 = sub_1000CE6B8(&qword_101909FF0, &qword_1011EEF90);
  inited = swift_initStackObject();
  v70 = xmmword_1011E1D60;
  *(inited + 16) = xmmword_1011E1D60;
  v27 = static Edge.Set.leading.getter();
  *(inited + 32) = v27;
  v28 = static Edge.Set.trailing.getter();
  *(inited + 33) = v28;
  v29 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v27)
  {
    v29 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v28)
  {
    v29 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  sub_1000F11C4(v18, v23, &qword_101921CD0, &qword_101207D90);
  v38 = &v23[*(v19 + 36)];
  *v38 = v29;
  *(v38 + 1) = v31;
  *(v38 + 2) = v33;
  *(v38 + 3) = v35;
  *(v38 + 4) = v37;
  v38[40] = 0;
  v39 = v76;
  sub_1000F11C4(v23, v76, &qword_101921CD8, &unk_101207D98);
  v40 = static HorizontalAlignment.leading.getter();
  v41 = qword_10193E340;
  *v10 = v40;
  *(v10 + 1) = v41;
  v10[16] = 0;
  if (*(*v3 + 16) <= 1uLL)
  {
    v42 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v42 = 3;
  }

  sub_1000CE6B8(&qword_101921CE0, &qword_101207DA8);
  v43 = v75;
  sub_100496918(v42, v75, a2);
  v83 = v44;
  v45 = v74;
  sub_100465C60(v3, v74, type metadata accessor for CarHomeContentListView);
  v46 = (*(v72 + 80) + 16) & ~*(v72 + 80);
  v47 = (v73 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  sub_1004658D0(v45, v48 + v46, type metadata accessor for CarHomeContentListView);
  v49 = v48 + v47;
  *v49 = v43;
  *(v49 + 8) = a2;

  sub_1000CE6B8(&qword_101921CE8, &qword_101207DB0);
  sub_1000CE6B8(&qword_101921CF0, &qword_101207DB8);
  sub_1000414C8(&qword_101921CF8, &qword_101921CE8, &qword_101207DB0, &protocol conformance descriptor for [A]);
  sub_100465258();
  sub_100465CC8(&qword_101921D38, type metadata accessor for CarHomeSection.RowType, &unk_101209E68);
  ForEach<>.init(_:content:)();
  v50 = swift_initStackObject();
  *(v50 + 16) = v70;
  v51 = static Edge.Set.leading.getter();
  *(v50 + 32) = v51;
  v52 = static Edge.Set.trailing.getter();
  *(v50 + 33) = v52;
  v53 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v51)
  {
    v53 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v52)
  {
    v53 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v62 = v77;
  sub_1000F11C4(v10, v77, &qword_101921CC0, &qword_101207D80);
  v63 = v62 + *(v78 + 36);
  *v63 = v53;
  *(v63 + 8) = v55;
  *(v63 + 16) = v57;
  *(v63 + 24) = v59;
  *(v63 + 32) = v61;
  *(v63 + 40) = 0;
  v64 = v80;
  sub_1000F11C4(v62, v80, &qword_101921CC8, &qword_101207D88);
  v65 = v79;
  sub_1000D2DFC(v39, v79, &qword_101921CD8, &unk_101207D98);
  v66 = v81;
  sub_1000D2DFC(v64, v81, &qword_101921CC8, &qword_101207D88);
  v67 = v82;
  sub_1000D2DFC(v65, v82, &qword_101921CD8, &unk_101207D98);
  v68 = sub_1000CE6B8(&qword_101921D40, &qword_101207DD8);
  sub_1000D2DFC(v66, v67 + *(v68 + 48), &qword_101921CC8, &qword_101207D88);
  sub_100024F64(v64, &qword_101921CC8, &qword_101207D88);
  sub_100024F64(v39, &qword_101921CD8, &unk_101207D98);
  sub_100024F64(v66, &qword_101921CC8, &qword_101207D88);
  return sub_100024F64(v65, &qword_101921CD8, &unk_101207D98);
}

uint64_t sub_100462ACC@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a2;
  v45 = a1;
  v55 = a3;
  v53 = sub_1000CE6B8(&qword_101921D98, &qword_101207E10);
  __chkstk_darwin(v53);
  v5 = &v38 - v4;
  v52 = type metadata accessor for SectionHeaderViewModel.ActionType();
  v50 = *(v52 - 8);
  __chkstk_darwin(v52);
  v40 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CarHomeContentListView(0);
  v39 = *(v7 - 8);
  v8 = *(v39 + 64);
  __chkstk_darwin(v7 - 8);
  v9 = type metadata accessor for SectionHeaderViewModel.Action();
  v48 = *(v9 - 8);
  v49 = v9;
  __chkstk_darwin(v9);
  v47 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000CE6B8(&qword_101921DA0, &unk_101207E18);
  __chkstk_darwin(v11);
  v13 = &v38 - v12;
  v14 = type metadata accessor for SectionHeaderViewModel.Size();
  v41 = *(v14 - 8);
  v42 = v14;
  __chkstk_darwin(v14);
  v43 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000CE6B8(&qword_10190B038, &qword_1011E65F0);
  __chkstk_darwin(v16 - 8);
  v18 = &v38 - v17;
  v19 = type metadata accessor for SectionHeaderViewModel();
  __chkstk_darwin(v19 - 8);
  v20 = type metadata accessor for SectionHeader();
  v44 = *(v20 - 8);
  __chkstk_darwin(v20);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1000CE6B8(&qword_101921DA8, &qword_101207E28);
  __chkstk_darwin(v54);
  v46 = &v38 - v23;
  v24 = *(*v3 + 16);
  if ((v3[8] & 1) != 0 || v24 != 1)
  {
    if (v24 < 2 || *(v51 + 16) <= 3)
    {
      sub_100496BE4(v45);
      (*(v50 + 56))(v18, 1, 1, v52);
      (*(v41 + 104))(v43, enum case for SectionHeaderViewModel.Size.large(_:), v42);
      SectionHeaderViewModel.init(title:subtitle:size:symbol:action:)();
      SectionHeader.init(model:)();
      v37 = v44;
      (*(v44 + 16))(v13, v22, v20);
      swift_storeEnumTagMultiPayload();
      sub_100465CC8(&qword_10190AFD0, &type metadata accessor for SectionHeader, &protocol conformance descriptor for SectionHeader);
      v36 = v46;
      _ConditionalContent<>.init(storage:)();
      (*(v37 + 8))(v22, v20);
    }

    else
    {
      sub_100465C60(v3, &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CarHomeContentListView);
      v26 = *(v39 + 80);
      v38 = v13;
      v39 = v11;
      v27 = (v26 + 16) & ~v26;
      v28 = swift_allocObject();
      sub_1004658D0(&v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27, type metadata accessor for CarHomeContentListView);
      v29 = v28 + ((v8 + v27 + 7) & 0xFFFFFFFFFFFFFFF8);
      v30 = v45;
      *v29 = v45;
      *(v29 + 8) = v51;

      v31 = v47;
      SectionHeaderViewModel.Action.init(onSelect:)();
      v32 = v40;
      (*(v48 + 16))(v40, v31, v49);
      v33 = v50;
      v34 = v52;
      (*(v50 + 104))(v32, enum case for SectionHeaderViewModel.ActionType.chevron(_:), v52);
      sub_100496BE4(v30);
      (*(v33 + 16))(v18, v32, v34);
      (*(v33 + 56))(v18, 0, 1, v34);
      (*(v41 + 104))(v43, enum case for SectionHeaderViewModel.Size.large(_:), v42);
      SectionHeaderViewModel.init(title:subtitle:size:symbol:action:)();
      SectionHeader.init(model:)();
      v35 = v44;
      (*(v44 + 16))(v38, v22, v20);
      swift_storeEnumTagMultiPayload();
      sub_100465CC8(&qword_10190AFD0, &type metadata accessor for SectionHeader, &protocol conformance descriptor for SectionHeader);
      v36 = v46;
      _ConditionalContent<>.init(storage:)();
      (*(v35 + 8))(v22, v20);
      (*(v33 + 8))(v32, v52);
      (*(v48 + 8))(v47, v49);
    }

    sub_1000D2DFC(v36, v5, &qword_101921DA8, &qword_101207E28);
    swift_storeEnumTagMultiPayload();
    sub_100465D10();
    _ConditionalContent<>.init(storage:)();
    return sub_100024F64(v36, &qword_101921DA8, &qword_101207E28);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_100465D10();
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_100463390@<X0>(char *a1@<X2>, uint64_t a2@<X8>)
{
  v154 = a1;
  v153 = a2;
  v125 = type metadata accessor for GuideCell.GuideCellType();
  v123 = *(v125 - 8);
  __chkstk_darwin(v125);
  v126 = &v117 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = type metadata accessor for GuideCell();
  v128 = *(v134 - 8);
  __chkstk_darwin(v134);
  v127 = &v117 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_1000CE6B8(&qword_101921D48, &qword_101207DE0);
  v129 = *(v136 - 8);
  __chkstk_darwin(v136);
  v131 = &v117 - v4;
  v132 = sub_1000CE6B8(&qword_101921D50, &qword_101207DE8);
  __chkstk_darwin(v132);
  v133 = &v117 - v5;
  v144 = sub_1000CE6B8(&qword_101921D30, &qword_101207DD0);
  __chkstk_darwin(v144);
  v135 = &v117 - v6;
  v130 = type metadata accessor for CarRecentRowViewModel(0);
  v122 = *(v130 - 8);
  v7 = *(v122 + 64);
  __chkstk_darwin(v130);
  v121 = &v117 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v117 - v9;
  v151 = sub_1000CE6B8(&qword_101921D58, &qword_101207DF0);
  __chkstk_darwin(v151);
  v152 = &v117 - v11;
  v141 = sub_1000CE6B8(&qword_101921D60, &qword_101207DF8);
  __chkstk_darwin(v141);
  v143 = &v117 - v12;
  v13 = sub_1000CE6B8(&qword_101921D68, &unk_101207E00);
  __chkstk_darwin(v13);
  v15 = &v117 - v14;
  v142 = sub_1000CE6B8(&qword_101921D20, &qword_101207DC8);
  __chkstk_darwin(v142);
  v17 = &v117 - v16;
  v150 = sub_1000CE6B8(&qword_101921D10, &qword_101207DC0);
  __chkstk_darwin(v150);
  v145 = &v117 - v18;
  v147 = type metadata accessor for MapsDesignAccessibilityString();
  v146 = *(v147 - 8);
  __chkstk_darwin(v147);
  v120 = (&v117 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20);
  v22 = &v117 - v21;
  v23 = type metadata accessor for CarHomeContentListView(0);
  v155 = *(v23 - 8);
  v24 = *(v155 + 64);
  __chkstk_darwin(v23 - 8);
  v148 = type metadata accessor for PlaceCell();
  v139 = *(v148 - 8);
  __chkstk_darwin(v148);
  v124 = &v117 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v137 = &v117 - v27;
  v149 = sub_1000CE6B8(&qword_10190A438, &qword_1011F0DE0);
  v140 = *(v149 - 8);
  __chkstk_darwin(v149);
  v119 = &v117 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v138 = &v117 - v30;
  v31 = type metadata accessor for CarHomeSection.RowType(0);
  __chkstk_darwin(v31);
  v33 = &v117 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100465C60(v154, v33, type metadata accessor for CarHomeSection.RowType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v50 = v130;
    v135 = v13;
    v136 = v15;
    v154 = v17;
    if (EnumCaseMultiPayload)
    {
      sub_1004658D0(v33, v10, type metadata accessor for CarRecentRowViewModel);
      *(&v163 + 1) = v50;
      *&v164 = sub_100465CC8(&qword_101921D88, type metadata accessor for CarRecentRowViewModel, &unk_1011EB160);
      v92 = sub_10001A848(&v162);
      v118 = v10;
      sub_100465C60(v10, v92, type metadata accessor for CarRecentRowViewModel);
      sub_100465C60(v156, &v117 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CarHomeContentListView);
      v93 = v121;
      sub_100465C60(v10, v121, type metadata accessor for CarRecentRowViewModel);
      v94 = (*(v155 + 80) + 16) & ~*(v155 + 80);
      v95 = (v24 + *(v122 + 80) + v94) & ~*(v122 + 80);
      v96 = swift_allocObject();
      sub_1004658D0(&v117 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v96 + v94, type metadata accessor for CarHomeContentListView);
      sub_1004658D0(v93, v96 + v95, type metadata accessor for CarRecentRowViewModel);
      v97 = v137;
      PlaceCell.init(model:tapHandler:)();
      *v22 = 0x6E65636552726143;
      *(v22 + 1) = 0xE900000000000074;
      v98 = v146;
      v99 = v147;
      (*(v146 + 104))(v22, enum case for MapsDesignAccessibilityString.cell(_:), v147);
      v100 = sub_100465CC8(&qword_10190D640, &type metadata accessor for PlaceCell, &protocol conformance descriptor for PlaceCell);
      v101 = v138;
      v102 = v148;
      View.mapsDesignAXContainer(withID:)();
      (*(v98 + 8))(v22, v99);
      (*(v139 + 8))(v97, v102);
      v103 = v140;
      v104 = v149;
      (*(v140 + 16))(v136, v101, v149);
      swift_storeEnumTagMultiPayload();
      *&v162 = v102;
      *(&v162 + 1) = v100;
      swift_getOpaqueTypeConformance2();
      v105 = v154;
      _ConditionalContent<>.init(storage:)();
      sub_1000D2DFC(v105, v143, &qword_101921D20, &qword_101207DC8);
      swift_storeEnumTagMultiPayload();
      sub_1004653D8();
      sub_1004654BC();
      v106 = v145;
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v105, &qword_101921D20, &qword_101207DC8);
      sub_1000D2DFC(v106, v152, &qword_101921D10, &qword_101207DC0);
      swift_storeEnumTagMultiPayload();
      sub_10046534C();
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v106, &qword_101921D10, &qword_101207DC0);
      (*(v103 + 8))(v101, v104);
      return sub_100465A04(v118);
    }

    v51 = *v33;
    *(&v163 + 1) = type metadata accessor for CarPinnedRowViewModel(0);
    *&v164 = sub_100465CC8(&qword_101921D90, type metadata accessor for CarPinnedRowViewModel, &unk_101202B34);
    *&v162 = v51;
    sub_100465C60(v156, &v117 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CarHomeContentListView);
    v52 = (*(v155 + 80) + 16) & ~*(v155 + 80);
    v53 = swift_allocObject();
    sub_1004658D0(&v117 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v53 + v52, type metadata accessor for CarHomeContentListView);
    *(v53 + ((v24 + v52 + 7) & 0xFFFFFFFFFFFFFFF8)) = v51;
    v156 = v51;
    v54 = v137;
    PlaceCell.init(model:tapHandler:)();
    *v22 = 0x656E6E6950726143;
    *(v22 + 1) = 0xE900000000000064;
    v55 = v146;
    v56 = v147;
    (*(v146 + 104))(v22, enum case for MapsDesignAccessibilityString.cell(_:), v147);
    v57 = sub_100465CC8(&qword_10190D640, &type metadata accessor for PlaceCell, &protocol conformance descriptor for PlaceCell);
    v58 = v138;
    v59 = v148;
    View.mapsDesignAXContainer(withID:)();
    (*(v55 + 8))(v22, v56);
    (*(v139 + 8))(v54, v59);
    v60 = v140;
    v61 = v149;
    (*(v140 + 16))(v136, v58, v149);
    swift_storeEnumTagMultiPayload();
    *&v162 = v59;
    *(&v162 + 1) = v57;
    swift_getOpaqueTypeConformance2();
    v62 = v154;
    _ConditionalContent<>.init(storage:)();
    v63 = &qword_101921D20;
    v64 = &qword_101207DC8;
    sub_1000D2DFC(v62, v143, &qword_101921D20, &qword_101207DC8);
LABEL_8:
    swift_storeEnumTagMultiPayload();
    sub_1004653D8();
    sub_1004654BC();
    v74 = v145;
    _ConditionalContent<>.init(storage:)();
    sub_100024F64(v62, v63, v64);
    sub_1000D2DFC(v74, v152, &qword_101921D10, &qword_101207DC0);
    swift_storeEnumTagMultiPayload();
    sub_10046534C();
    _ConditionalContent<>.init(storage:)();

    sub_100024F64(v74, &qword_101921D10, &qword_101207DC0);
    return (*(v60 + 8))(v58, v61);
  }

  if (EnumCaseMultiPayload == 2)
  {
    v65 = *v33;
    *(&v163 + 1) = type metadata accessor for CarSuggestionRowViewModel(0);
    *&v164 = sub_100465CC8(&qword_101921D80, type metadata accessor for CarSuggestionRowViewModel, &unk_1011EA8FC);
    *&v162 = v65;
    sub_100465C60(v156, &v117 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CarHomeContentListView);
    v66 = (*(v155 + 80) + 16) & ~*(v155 + 80);
    v67 = swift_allocObject();
    sub_1004658D0(&v117 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v67 + v66, type metadata accessor for CarHomeContentListView);
    *(v67 + ((v24 + v66 + 7) & 0xFFFFFFFFFFFFFFF8)) = v65;
    v156 = v65;
    v68 = v137;
    PlaceCell.init(model:tapHandler:)();
    strcpy(v22, "CarSuggestion");
    *(v22 + 7) = -4864;
    v69 = v146;
    v70 = v147;
    (*(v146 + 104))(v22, enum case for MapsDesignAccessibilityString.cell(_:), v147);
    v71 = sub_100465CC8(&qword_10190D640, &type metadata accessor for PlaceCell, &protocol conformance descriptor for PlaceCell);
    v58 = v138;
    v72 = v148;
    View.mapsDesignAXContainer(withID:)();
    (*(v69 + 8))(v22, v70);
    (*(v139 + 8))(v68, v72);
    v60 = v140;
    v61 = v149;
    (*(v140 + 16))(v133, v58, v149);
    swift_storeEnumTagMultiPayload();
    *&v162 = v72;
    *(&v162 + 1) = v71;
    swift_getOpaqueTypeConformance2();
    v73 = sub_100465CC8(&qword_101911FB0, &type metadata accessor for GuideCell, &protocol conformance descriptor for GuideCell);
    *&v162 = v134;
    *(&v162 + 1) = v73;
    swift_getOpaqueTypeConformance2();
    v62 = v135;
    _ConditionalContent<>.init(storage:)();
    v63 = &qword_101921D30;
    v64 = &qword_101207DD0;
    sub_1000D2DFC(v62, v143, &qword_101921D30, &qword_101207DD0);
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v35 = *v33;
    (*(v123 + 104))(v126, enum case for GuideCell.GuideCellType.small(_:), v125);
    *(&v163 + 1) = type metadata accessor for CarUserGuideRowViewModel(0);
    *&v164 = sub_100465CC8(&qword_101921D78, type metadata accessor for CarUserGuideRowViewModel, &unk_10120830C);
    *&v162 = v35;
    sub_100465C60(v156, &v117 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CarHomeContentListView);
    v36 = (*(v155 + 80) + 16) & ~*(v155 + 80);
    v37 = swift_allocObject();
    sub_1004658D0(&v117 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v37 + v36, type metadata accessor for CarHomeContentListView);
    v154 = v35;
    *(v37 + ((v24 + v36 + 7) & 0xFFFFFFFFFFFFFFF8)) = v35;
    swift_retain_n();
    v38 = v127;
    GuideCell.init(_:model:leadingCellActions:trailingCellActions:tapHandler:)();
    strcpy(v22, "CarUserGuide");
    v22[13] = 0;
    *(v22 + 7) = -5120;
    v39 = v146;
    v40 = v147;
    (*(v146 + 104))(v22, enum case for MapsDesignAccessibilityString.cell(_:), v147);
    v41 = sub_100465CC8(&qword_101911FB0, &type metadata accessor for GuideCell, &protocol conformance descriptor for GuideCell);
    v42 = v131;
    v43 = v134;
    View.mapsDesignAXContainer(withID:)();
    (*(v39 + 8))(v22, v40);
    (*(v128 + 8))(v38, v43);
    v44 = v129;
    v45 = v136;
    (*(v129 + 16))(v133, v42, v136);
    swift_storeEnumTagMultiPayload();
    v46 = sub_100465CC8(&qword_10190D640, &type metadata accessor for PlaceCell, &protocol conformance descriptor for PlaceCell);
    *&v162 = v148;
    *(&v162 + 1) = v46;
    swift_getOpaqueTypeConformance2();
    *&v162 = v43;
    *(&v162 + 1) = v41;
    swift_getOpaqueTypeConformance2();
    v47 = v135;
    _ConditionalContent<>.init(storage:)();
    sub_1000D2DFC(v47, v143, &qword_101921D30, &qword_101207DD0);
    swift_storeEnumTagMultiPayload();
    sub_1004653D8();
    sub_1004654BC();
    v48 = v145;
    _ConditionalContent<>.init(storage:)();
    sub_100024F64(v47, &qword_101921D30, &qword_101207DD0);
    sub_1000D2DFC(v48, v152, &qword_101921D10, &qword_101207DC0);
    swift_storeEnumTagMultiPayload();
    sub_10046534C();
    _ConditionalContent<>.init(storage:)();

    sub_100024F64(v48, &qword_101921D10, &qword_101207DC0);
    return (*(v44 + 8))(v131, v45);
  }

  v75 = *(v33 + 3);
  v164 = *(v33 + 2);
  v165 = v75;
  v166 = *(v33 + 4);
  v167 = *(v33 + 10);
  v76 = *(v33 + 1);
  v162 = *v33;
  v163 = v76;
  v160 = &type metadata for CarSharedTripSummaryRowViewModel;
  v161 = sub_100465604();
  v159 = swift_allocObject();
  sub_100465658(&v162, v159 + 16);
  sub_100465C60(v156, &v117 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CarHomeContentListView);
  sub_100465658(&v162, v157);
  v77 = (*(v155 + 80) + 16) & ~*(v155 + 80);
  v78 = swift_allocObject();
  sub_1004658D0(&v117 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v78 + v77, type metadata accessor for CarHomeContentListView);
  v79 = v78 + ((v24 + v77 + 7) & 0xFFFFFFFFFFFFFFF8);
  v80 = v157[3];
  *(v79 + 32) = v157[2];
  *(v79 + 48) = v80;
  *(v79 + 64) = v157[4];
  *(v79 + 80) = v158;
  v81 = v157[1];
  *v79 = v157[0];
  *(v79 + 16) = v81;
  v82 = v124;
  PlaceCell.init(model:tapHandler:)();
  *&v157[0] = 0;
  *(&v157[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  *&v157[0] = 0xD000000000000012;
  *(&v157[0] + 1) = 0x8000000101239050;
  v83 = [v162 sharedTrips];
  sub_100332CE4();
  v84 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v84 >> 62))
  {
    result = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_11;
    }

LABEL_18:

LABEL_19:
    v91 = 0;
    v90 = 0xE000000000000000;
    goto LABEL_20;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_18;
  }

LABEL_11:
  if ((v84 & 0xC000000000000001) != 0)
  {
    v85 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v85 = *(v84 + 32);
  }

  v86 = v85;

  v87 = [v86 groupIdentifier];

  if (!v87)
  {
    goto LABEL_19;
  }

  v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v90 = v89;

  v91 = v88;
LABEL_20:
  v107 = v90;
  String.append(_:)(*&v91);

  v108 = *(&v157[0] + 1);
  v109 = v120;
  *v120 = *&v157[0];
  v109[1] = v108;
  v110 = v146;
  v111 = v147;
  (*(v146 + 104))(v109, enum case for MapsDesignAccessibilityString.custom(_:), v147);
  v112 = sub_100465CC8(&qword_10190D640, &type metadata accessor for PlaceCell, &protocol conformance descriptor for PlaceCell);
  v113 = v119;
  v114 = v148;
  View.mapsDesignAXContainer(withID:)();
  (*(v110 + 8))(v109, v111);
  (*(v139 + 8))(v82, v114);
  v115 = v140;
  v116 = v149;
  (*(v140 + 16))(v152, v113, v149);
  swift_storeEnumTagMultiPayload();
  sub_10046534C();
  *&v157[0] = v114;
  *(&v157[0] + 1) = v112;
  swift_getOpaqueTypeConformance2();
  _ConditionalContent<>.init(storage:)();
  (*(v115 + 8))(v113, v116);
  return sub_100465748(&v162);
}

uint64_t sub_100464FAC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 56);
  v6[3] = type metadata accessor for MyRecentsDataProvider.Recent(0);
  v4 = sub_10001A848(v6);
  sub_100465C60(a2, v4, type metadata accessor for MyRecentsDataProvider.Recent);
  v3(v6);
  return sub_10004E3D0(v6);
}

unint64_t sub_100465034()
{
  result = qword_101921C88;
  if (!qword_101921C88)
  {
    sub_1000D6664(&qword_101921C80, &qword_101207D60);
    sub_1000414C8(&qword_101921C90, &qword_101921C98, &unk_101207D68, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101921C88);
  }

  return result;
}

unint64_t sub_10046515C()
{
  result = qword_101921CB8;
  if (!qword_101921CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101921CB8);
  }

  return result;
}

unint64_t sub_100465258()
{
  result = qword_101921D00;
  if (!qword_101921D00)
  {
    sub_1000D6664(&qword_101921CF0, &qword_101207DB8);
    sub_10046534C();
    type metadata accessor for PlaceCell();
    sub_100465CC8(&qword_10190D640, &type metadata accessor for PlaceCell, &protocol conformance descriptor for PlaceCell);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101921D00);
  }

  return result;
}

unint64_t sub_10046534C()
{
  result = qword_101921D08;
  if (!qword_101921D08)
  {
    sub_1000D6664(&qword_101921D10, &qword_101207DC0);
    sub_1004653D8();
    sub_1004654BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101921D08);
  }

  return result;
}

unint64_t sub_1004653D8()
{
  result = qword_101921D18;
  if (!qword_101921D18)
  {
    sub_1000D6664(&qword_101921D20, &qword_101207DC8);
    type metadata accessor for PlaceCell();
    sub_100465CC8(&qword_10190D640, &type metadata accessor for PlaceCell, &protocol conformance descriptor for PlaceCell);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101921D18);
  }

  return result;
}

unint64_t sub_1004654BC()
{
  result = qword_101921D28;
  if (!qword_101921D28)
  {
    sub_1000D6664(&qword_101921D30, &qword_101207DD0);
    type metadata accessor for PlaceCell();
    sub_100465CC8(&qword_10190D640, &type metadata accessor for PlaceCell, &protocol conformance descriptor for PlaceCell);
    swift_getOpaqueTypeConformance2();
    type metadata accessor for GuideCell();
    sub_100465CC8(&qword_101911FB0, &type metadata accessor for GuideCell, &protocol conformance descriptor for GuideCell);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101921D28);
  }

  return result;
}

unint64_t sub_100465604()
{
  result = qword_101921D70;
  if (!qword_101921D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101921D70);
  }

  return result;
}

uint64_t sub_1004656B4()
{
  v1 = *(type metadata accessor for CarHomeContentListView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  return (*(v0 + v2 + 88))(*(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_10046579C()
{
  v1 = *(type metadata accessor for CarHomeContentListView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  return (*(v0 + v2 + 72))(*(*(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)) + 16));
}

uint64_t sub_100465830()
{
  v1 = *(type metadata accessor for CarHomeContentListView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  return (*(v0 + v2 + 24))(*(*(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)) + OBJC_IVAR____TtC4Maps25CarSuggestionRowViewModel_suggestion));
}

uint64_t sub_1004658D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100465938()
{
  v1 = *(type metadata accessor for CarHomeContentListView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for CarRecentRowViewModel(0) - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_100464FAC(v0 + v2, v5);
}

uint64_t sub_100465A04(uint64_t a1)
{
  v2 = type metadata accessor for CarRecentRowViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100465A60()
{
  v1 = (type metadata accessor for CarHomeContentListView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[15];
  sub_1000CE6B8(&qword_10190A1A0, &unk_1011E53B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for ColorScheme();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v7 + 8, v2 | 7);
}

uint64_t sub_100465BC0()
{
  v1 = *(type metadata accessor for CarHomeContentListView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  return (*(v0 + v2 + 40))(*(*(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)) + OBJC_IVAR____TtC4Maps21CarPinnedRowViewModel_favoriteItem));
}

uint64_t sub_100465C60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100465CC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100465D10()
{
  result = qword_101921DB0;
  if (!qword_101921DB0)
  {
    sub_1000D6664(&qword_101921DA8, &qword_101207E28);
    sub_100465CC8(&qword_10190AFD0, &type metadata accessor for SectionHeader, &protocol conformance descriptor for SectionHeader);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101921DB0);
  }

  return result;
}

uint64_t sub_100465DC4()
{
  v1 = (type metadata accessor for CarHomeContentListView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[15];
  sub_1000CE6B8(&qword_10190A1A0, &unk_1011E53B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for ColorScheme();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_100465F28()
{
  v1 = *(type metadata accessor for CarHomeContentListView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  return (*(v0 + v2 + 104))(*(v0 + v3), *(v0 + v3 + 8));
}

void sub_100466008(uint64_t a1)
{
  sub_100281E58(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for MyRecentsDataProvider.Recent(319);
    if (v2 <= 0x3F)
    {
      sub_10005B95C();
      if (v3 <= 0x3F)
      {
        sub_1004660D4();
        if (v4 <= 0x3F)
        {
          sub_100466138(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_1004660D4()
{
  result = qword_101921E40;
  if (!qword_101921E40)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_101921E40);
  }

  return result;
}

void sub_100466138(uint64_t a1)
{
  if (!qword_101921E48)
  {
    type metadata accessor for RouteItem(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_101921E48);
    }
  }
}

void *sub_1004661D8()
{
  v1 = type metadata accessor for RichTextType();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RecentCellRowViewModel(0);
  v6 = [*(v0 + *(v5 + 32)) subtitleText];
  if (v6)
  {
    v7 = v6;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1000CE6B8(&unk_1019157F0, qword_1011E4FB0);
    v8 = swift_allocObject();
    v13 = xmmword_1011E1D30;
    *(v8 + 16) = xmmword_1011E1D30;
    sub_1000CE6B8(&qword_10190A070, &unk_1011E78E0);
    type metadata accessor for RichTextViewModel();
    v9 = swift_allocObject();
    *(v9 + 16) = v13;
    (*(v2 + 104))(v4, enum case for RichTextType.line(_:), v1);
    RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

    (*(v2 + 8))(v4, v1);
    result = v8;
    *(v8 + 32) = v9;
  }

  else
  {
    v11 = *(v0 + *(v5 + 36));
    if (v11)
    {
      sub_1000CE6B8(&unk_1019157F0, qword_1011E4FB0);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1011E1D30;
      *(v12 + 32) = *(v11 + OBJC_IVAR____TtC4Maps9RouteItem_hikeInfoViewModel);

      return v12;
    }

    else
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return result;
}

void *sub_100466484(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v4 = type metadata accessor for MapsDesignAccessibilityString();
  v50 = *(v4 - 8);
  v51 = v4;
  __chkstk_darwin(v4);
  v6 = (v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = type metadata accessor for CellAction.Style();
  v7 = *(v48 - 8);
  __chkstk_darwin(v48);
  v49 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CellAction.Placement();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v47 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v41 - v13;
  v15 = type metadata accessor for CellAction();
  v52 = *(v15 - 8);
  v53 = v15;
  __chkstk_darwin(v15);
  v45 = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v43 = (v41 - v18);
  v19 = v2 + *(type metadata accessor for RecentCellRowViewModel(0) + 20);
  v20 = v19 + *(type metadata accessor for MyRecentsDataProvider.Recent(0) + 24);
  v21 = *(v20 + 8);
  v22 = qword_101960000;
  v44 = v7;
  if (v21 <= 1)
  {
    if (!v21)
    {
      goto LABEL_7;
    }

    v23 = [*v20 endWaypoint];
    objc_opt_self();
    v24 = swift_dynamicCastObjCClass();

    v22 = qword_101960000;
    if (!v24)
    {
      goto LABEL_7;
    }

LABEL_6:
    v25 = _swiftEmptyArrayStorage;
    goto LABEL_12;
  }

  if ((v21 - 2) < 2)
  {
    goto LABEL_6;
  }

LABEL_7:
  countAndFlagsBits = a1;
  (*(v10 + 104))(v14, enum case for CellAction.Placement.default(_:), v9);
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v54._object = 0x800000010121C800;
  v26._countAndFlagsBits = 0x7972617262694C5BLL;
  v26._object = 0xEF6572616853205DLL;
  v27._countAndFlagsBits = 0x6572616853;
  v54._countAndFlagsBits = 0xD00000000000002ELL;
  v27._object = 0xE500000000000000;
  v41[1] = NSLocalizedString(_:tableName:bundle:value:comment:)(v26, 0, v22[27], v27, v54)._countAndFlagsBits;
  v28 = swift_allocObject();
  v29 = v46;
  *(v28 + 16) = countAndFlagsBits;
  *(v28 + 24) = v29;
  *(v28 + 32) = 2;
  (*(v7 + 104))(v49, enum case for CellAction.Style.default(_:), v48);
  (*(v10 + 16))(v47, v14, v9);
  *v6 = 0x6572616853;
  v6[1] = 0xE500000000000000;
  (*(v50 + 104))(v6, enum case for MapsDesignAccessibilityString.button(_:), v51);

  CellAction.init(title:systemImage:action:style:placement:hasDivider:actionAXID:)();
  (*(v10 + 8))(v14, v9);
  v25 = sub_100355E1C(0, 1, 1, _swiftEmptyArrayStorage);
  v31 = v25[2];
  v30 = v25[3];
  if (v31 >= v30 >> 1)
  {
    v25 = sub_100355E1C((v30 > 1), v31 + 1, 1, v25);
  }

  v25[2] = v31 + 1;
  (*(v52 + 32))(v25 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v31, v43, v53);
  a1 = countAndFlagsBits;
LABEL_12:
  v43 = v6;
  v32 = v46;
  (*(v10 + 104))(v14, enum case for CellAction.Placement.default(_:), v9);
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v55._object = 0x8000000101224A30;
  v33._countAndFlagsBits = 0x43205D756E654D5BLL;
  v33._object = 0xED0000207261656CLL;
  v34._countAndFlagsBits = 0x7261656C43;
  v55._countAndFlagsBits = 0xD000000000000017;
  v34._object = 0xE500000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v33, 0, qword_1019600D8, v34, v55)._countAndFlagsBits;
  v35 = swift_allocObject();
  *(v35 + 16) = a1;
  *(v35 + 24) = v32;
  *(v35 + 32) = 9;
  (*(v44 + 104))(v49, enum case for CellAction.Style.default(_:), v48);
  (*(v10 + 16))(v47, v14, v9);
  v36 = v43;
  *v43 = 0x7261656C43;
  v36[1] = 0xE500000000000000;
  (*(v50 + 104))(v36, enum case for MapsDesignAccessibilityString.button(_:), v51);

  v37 = v45;
  CellAction.init(title:systemImage:action:style:placement:hasDivider:actionAXID:)();
  (*(v10 + 8))(v14, v9);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v25 = sub_100355E1C(0, v25[2] + 1, 1, v25);
  }

  v39 = v25[2];
  v38 = v25[3];
  if (v39 >= v38 >> 1)
  {
    v25 = sub_100355E1C((v38 > 1), v39 + 1, 1, v25);
  }

  v25[2] = v39 + 1;
  (*(v52 + 32))(v25 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v39, v37, v53);
  return v25;
}

uint64_t sub_100466CBC(uint64_t result, unsigned __int8 a2, uint64_t a3)
{
  v4 = result;
  if (a2 > 9u)
  {
    if (a2 != 10)
    {
      if (a2 != 11)
      {
        return result;
      }

      goto LABEL_7;
    }

LABEL_8:
    v6 = type metadata accessor for RecentCellRowViewModel(0);
    return (*(a3 + *(v6 + 24)))(a3 + *(v6 + 20), v4);
  }

  if (a2 == 2)
  {
    goto LABEL_8;
  }

  if (a2 == 9)
  {
LABEL_7:
    v5 = type metadata accessor for RecentCellRowViewModel(0);
    return (*(a3 + *(v5 + 28)))(a3 + *(v5 + 20));
  }

  return result;
}

char *sub_100466D64(uint64_t a1, uint64_t a2)
{
  v82 = a2;
  v83 = type metadata accessor for MapsDesignAccessibilityString();
  v85 = *(v83 - 8);
  __chkstk_darwin(v83);
  v4 = v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CellAction.Style();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for CellAction.Placement();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v80 = v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v60 - v13;
  v81 = type metadata accessor for CellAction();
  v84 = *(v81 - 8);
  __chkstk_darwin(v81);
  v73 = v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v16);
  v75 = v60 - v18;
  v19 = v10[13];
  v69 = enum case for CellAction.Placement.default(_:);
  v76 = v9;
  v70 = v10 + 13;
  v68 = v19;
  v19(v14, v17);
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v20._countAndFlagsBits = 0x6570697753776F52;
  v86._object = 0x800000010121D3F0;
  v20._object = 0xEF6574656C65445FLL;
  v21._countAndFlagsBits = 0x6574656C6544;
  v86._countAndFlagsBits = 0xD000000000000036;
  v67.super.isa = qword_1019600D8;
  v21._object = 0xE600000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v20, 0, qword_1019600D8, v21, v86)._countAndFlagsBits;
  v22 = swift_allocObject();
  v79 = a1;
  *(v22 + 16) = a1;
  *(v22 + 24) = v82;
  *(v22 + 32) = 11;
  v23 = *(v6 + 104);
  v72 = v5;
  v78 = (v6 + 104);
  v66 = v23;
  v23(v8, enum case for CellAction.Style.destructive(_:), v5);
  v24 = v10[2];
  v25 = v76;
  v65 = v10 + 2;
  v64 = v24;
  v24(v80, v14, v76);
  strcpy(v4, "Swipe.Delete");
  v4[13] = 0;
  *(v4 + 7) = -5120;
  v26 = *(v85 + 104);
  v85 += 104;
  v63 = enum case for MapsDesignAccessibilityString.button(_:);
  v62 = v26;
  v26(v4);

  v71 = v4;
  v27 = v75;
  countAndFlagsBits = v8;
  CellAction.init(title:systemImage:action:style:placement:hasDivider:actionAXID:)();
  v28 = v10[1];
  v60[1] = v10 + 1;
  v61 = v28;
  v28(v14, v25);
  v29 = sub_100355E1C(0, 1, 1, _swiftEmptyArrayStorage);
  v31 = v29[2];
  v30 = v29[3];
  v32 = v29;
  v33 = v27;
  if (v31 >= v30 >> 1)
  {
    v59 = sub_100355E1C((v30 > 1), v31 + 1, 1, v29);
    v33 = v27;
    v35 = v59;
    v34 = v84;
  }

  else
  {
    v34 = v84;
    v35 = v29;
  }

  v36 = v14;
  *(v35 + 2) = v31 + 1;
  v39 = *(v34 + 32);
  v37 = v34 + 32;
  v38 = v39;
  v40 = (*(v37 + 48) + 32) & ~*(v37 + 48);
  v75 = *(v37 + 40);
  (v39)(&v35[v40 + v75 * v31], v33, v81, v32);
  v41 = v77 + *(type metadata accessor for RecentCellRowViewModel(0) + 20);
  v42 = v41 + *(type metadata accessor for MyRecentsDataProvider.Recent(0) + 24);
  v43 = v79;
  if (*(v42 + 8) <= 1u)
  {
    if (*(v42 + 8))
    {
      v44 = [*v42 endWaypoint];
      objc_opt_self();
      v45 = swift_dynamicCastObjCClass();

      if (v45)
      {
        return v35;
      }
    }
  }

  else if (*(v42 + 8) - 2 < 2)
  {
    return v35;
  }

  v77 = v40;
  v78 = v38;
  v84 = v37;
  v68(v36, v69, v25);
  v87._object = 0x800000010121D3B0;
  v46._object = 0xEE0065726168535FLL;
  v47._countAndFlagsBits = 0x6572616853;
  v87._countAndFlagsBits = 0xD000000000000016;
  v46._countAndFlagsBits = 0x6570697753776F52;
  v47._object = 0xE500000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v46, 0, v67, v47, v87);
  v48 = swift_allocObject();
  *(v48 + 16) = v43;
  *(v48 + 24) = v82;
  *(v48 + 32) = 10;

  v49 = static Color.blue.getter();
  v50 = v25;
  v51 = countAndFlagsBits;
  *countAndFlagsBits = v49;
  v66(v51, enum case for CellAction.Style.tintable(_:), v72);
  v64(v80, v36, v25);
  v52 = v71;
  *v71 = 0x68532E6570697753;
  *(v52 + 1) = 0xEB00000000657261;
  v62(v52, v63, v83);
  v53 = v73;
  CellAction.init(title:systemImage:action:style:placement:hasDivider:actionAXID:)();
  v61(v36, v50);
  v55 = *(v35 + 2);
  v54 = *(v35 + 3);
  if (v55 >= v54 >> 1)
  {
    v35 = sub_100355E1C((v54 > 1), v55 + 1, 1, v35);
  }

  v56 = v77;
  v57 = v78;
  *(v35 + 2) = v55 + 1;
  v57(&v35[v56 + v55 * v75], v53, v81);
  return v35;
}

uint64_t sub_1004675C0(uint64_t a1)
{
  v2 = [*(v1 + *(a1 + 32)) titleText];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100467620(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(a1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000CE6B8(&unk_10190D580, &unk_1011E9400);
  type metadata accessor for TrailingAccessoryViewModel();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1011E1D30;
  sub_100467960(v1, v4);
  v6 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v7 = swift_allocObject();
  sub_10042A234(v4, v7 + v6);
  sub_100466484(sub_100468220, v7);

  static TrailingAccessoryViewModel.more(actions:onMenuPresentationChanged:customMenuContent:)();

  return v5;
}

char *sub_1004677D0(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(a1 - 8);
  sub_100467960(v1, &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_10042A234(&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
  v6 = sub_100466D64(sub_1004686B4, v5);

  return v6;
}

uint64_t sub_100467918(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100467960(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecentCellRowViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004679C4@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v2 = type metadata accessor for GuideCell.GuideCellType();
  v36 = *(v2 - 8);
  v37 = v2;
  __chkstk_darwin(v2);
  v38 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for GuideCell();
  v40 = *(v48 - 8);
  __chkstk_darwin(v48);
  v39 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1000CE6B8(&qword_101921F38, &qword_101207F88);
  v42 = *(v49 - 8);
  __chkstk_darwin(v49);
  v41 = &v35 - v5;
  v45 = sub_1000CE6B8(&qword_101921F40, &qword_101207F90);
  __chkstk_darwin(v45);
  v47 = &v35 - v6;
  v43 = type metadata accessor for MapsDesignAccessibilityString();
  v7 = *(v43 - 8);
  __chkstk_darwin(v43);
  v9 = (&v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = type metadata accessor for PlaceCell();
  v10 = *(v44 - 8);
  __chkstk_darwin(v44);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1000CE6B8(&qword_101921F48, &qword_101207F98);
  v35 = *(v46 - 8);
  __chkstk_darwin(v46);
  v14 = &v35 - v13;
  v15 = v1 + *(type metadata accessor for RecentsCell(0) + 20);
  v16 = type metadata accessor for RecentCellRowViewModel(0);
  v17 = *(v16 + 20);
  if (*(v15 + v17 + *(type metadata accessor for MyRecentsDataProvider.Recent(0) + 24) + 8) > 3u)
  {
    (*(v36 + 104))(v38, enum case for GuideCell.GuideCellType.small(_:), v37);
    v53 = v16;
    v54 = sub_100467918(&qword_101921F50, type metadata accessor for RecentCellRowViewModel, &unk_101207E48);
    v26 = sub_10001A848(&v51);
    sub_100467960(v15, v26);

    v27 = v39;
    GuideCell.init(_:model:leadingCellActions:trailingCellActions:tapHandler:)();
    *v9 = 0xD000000000000011;
    v9[1] = 0x8000000101239070;
    v28 = v43;
    (*(v7 + 104))(v9, enum case for MapsDesignAccessibilityString.custom(_:), v43);
    v29 = sub_100467918(&qword_101911FB0, &type metadata accessor for GuideCell, &protocol conformance descriptor for GuideCell);
    v30 = v41;
    v31 = v48;
    View.mapsDesignAXCombinedContainer(withID:)();
    (*(v7 + 8))(v9, v28);
    (*(v40 + 8))(v27, v31);
    v32 = v42;
    v33 = v49;
    (*(v42 + 16))(v47, v30, v49);
    swift_storeEnumTagMultiPayload();
    v34 = sub_100467918(&qword_10190D640, &type metadata accessor for PlaceCell, &protocol conformance descriptor for PlaceCell);
    v51 = v44;
    v52 = v34;
    swift_getOpaqueTypeConformance2();
    v51 = v31;
    v52 = v29;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v32 + 8))(v30, v33);
  }

  else
  {
    v53 = v16;
    v54 = sub_100467918(&qword_101921F50, type metadata accessor for RecentCellRowViewModel, &unk_101207E48);
    v18 = sub_10001A848(&v51);
    sub_100467960(v15, v18);

    PlaceCell.init(model:tapHandler:)();
    *v9 = 0xD000000000000011;
    v9[1] = 0x8000000101239090;
    v19 = v43;
    (*(v7 + 104))(v9, enum case for MapsDesignAccessibilityString.custom(_:), v43);
    v20 = sub_100467918(&qword_10190D640, &type metadata accessor for PlaceCell, &protocol conformance descriptor for PlaceCell);
    v21 = v44;
    View.mapsDesignAXCombinedContainer(withID:)();
    (*(v7 + 8))(v9, v19);
    (*(v10 + 8))(v12, v21);
    v22 = v35;
    v23 = v46;
    (*(v35 + 16))(v47, v14, v46);
    swift_storeEnumTagMultiPayload();
    v51 = v21;
    v52 = v20;
    swift_getOpaqueTypeConformance2();
    v24 = sub_100467918(&qword_101911FB0, &type metadata accessor for GuideCell, &protocol conformance descriptor for GuideCell);
    v51 = v48;
    v52 = v24;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v22 + 8))(v14, v23);
  }
}

uint64_t sub_1004682AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = *(v8 + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }

  else
  {
    v13 = *(a1 + *(a3 + 24));
    if (v13 >= 0xFFFFFFFF)
    {
      LODWORD(v13) = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_100468384(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = result;
    v12 = *(v10 + 56);
    v13 = a1 + *(a4 + 20);

    return v12(v13, a2, a2, v11);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_100468464(uint64_t a1)
{
  sub_100468500();
  if (v1 <= 0x3F)
  {
    type metadata accessor for RecentCellRowViewModel(319);
    if (v2 <= 0x3F)
    {
      sub_10005B95C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100468500()
{
  if (!qword_101921F00)
  {
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_101921F00);
    }
  }
}

unint64_t sub_10046856C()
{
  result = qword_101921F58;
  if (!qword_101921F58)
  {
    sub_1000D6664(&unk_101921F60, &unk_101207FA0);
    type metadata accessor for PlaceCell();
    sub_100467918(&qword_10190D640, &type metadata accessor for PlaceCell, &protocol conformance descriptor for PlaceCell);
    swift_getOpaqueTypeConformance2();
    type metadata accessor for GuideCell();
    sub_100467918(&qword_101911FB0, &type metadata accessor for GuideCell, &protocol conformance descriptor for GuideCell);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101921F58);
  }

  return result;
}

void sub_1004686B8(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void *))
{
  if (!a2 && a1 && *(a1 + 16) && (sub_10004E374(a1 + 32, v20), sub_100014C84(0, &unk_101918390, MKMapItem_ptr), (swift_dynamicCast() & 1) != 0))
  {
    v7 = v21;
    swift_getKeyPath();
    swift_getKeyPath();
    v20[0] = v7;
    v8 = v7;

    static Published.subscript.setter();
    if (a4)
    {
      a4(v7);
    }
  }

  else
  {
    if (qword_101906728 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100021540(v9, qword_101960018);

    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v20[0] = v14;
      v15 = *(a3 + OBJC_IVAR____TtCO4Maps25PlaceSummaryViewModelUnit17ContainmentParent_parentIdentifier);
      *v12 = 138412546;
      *(v12 + 4) = v15;
      *v13 = v15;
      *(v12 + 12) = 2080;
      v21 = a2;
      v16 = v15;
      sub_1000CE6B8(&qword_101919D48, &qword_1011FACD0);
      v17 = Optional.debugDescription.getter();
      v19 = sub_10004DEB8(v17, v18, v20);

      *(v12 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v10, v11, "[Place Summary] Couldn't fetch MKMapItem with identifier %@. Error: %s", v12, 0x16u);
      sub_1000DCD10(v13);

      sub_10004E3D0(v14);
    }

    if (a4)
    {
      a4(0);
    }
  }
}

id sub_1004689B8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PlaceSummaryMapItemDownloader();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100468A10(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
}

uint64_t sub_100468A90(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;

  return static Published.subscript.setter();
}

void sub_100468B08(unint64_t a1)
{
  if (a1)
  {
    v2 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
LABEL_17:
      v3 = _CocoaArrayWrapper.endIndex.getter();
      if (!v3)
      {
        return;
      }
    }

    else
    {
      v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v3)
      {
        return;
      }
    }

    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_15;
        }
      }

      else
      {
        if (i >= *(v2 + 16))
        {
          goto LABEL_16;
        }

        v5 = *(a1 + 8 * i + 32);

        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_15:
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }
      }

      v7 = [objc_opt_self() sharedService];
      if (!v7)
      {
        break;
      }

      v8 = v7;
      sub_1000CE6B8(&qword_101908400, &qword_1011E2ED0);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1011E47B0;
      v10 = *(v5 + OBJC_IVAR____TtCO4Maps25PlaceSummaryViewModelUnit17ContainmentParent_parentIdentifier);
      *(v9 + 32) = v10;
      sub_100014C84(0, &unk_101918370, MKMapItemIdentifier_ptr);
      v11 = v10;
      isa = Array._bridgeToObjectiveC()().super.isa;

      v13 = [v8 ticketForIdentifiers:isa traits:0];

      if (v13)
      {
        v14 = swift_allocObject();
        v14[3] = 0;
        v14[4] = 0;
        v14[2] = v5;
        aBlock[4] = sub_10016EAB4;
        aBlock[5] = v14;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1002B00C4;
        aBlock[3] = &unk_10161A558;
        v15 = _Block_copy(aBlock);

        [v13 submitWithHandler:v15 networkActivity:0];

        _Block_release(v15);
        swift_unknownObjectRelease();
      }

      else
      {
      }

      if (v6 == v3)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t PlatformController.currentRoutePlanningSession.getter()
{
  v1 = [v0 sessionStack];
  sub_1000CE6B8(&unk_101922000, &qword_101208020);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    goto LABEL_16;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    while (!__OFSUB__(v3--, 1))
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_8:
        objc_opt_self();
        v5 = swift_dynamicCastObjCClass();
        v6 = swift_unknownObjectRelease();
        if (v5)
        {
          __chkstk_darwin(v6);
          v9 = v3;
          sub_1004690CC(&v9, &v10);
          v7 = v10;
          goto LABEL_18;
        }

        if (!v3)
        {
          goto LABEL_17;
        }
      }

      else
      {
        if ((v3 & 0x8000000000000000) != 0)
        {
          goto LABEL_14;
        }

        if (v3 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          swift_unknownObjectRetain();
          goto LABEL_8;
        }

LABEL_15:
        __break(1u);
LABEL_16:
        v3 = _CocoaArrayWrapper.endIndex.getter();
        if (!v3)
        {
          goto LABEL_17;
        }
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

LABEL_17:
  v7 = 0;
LABEL_18:

  if (v7)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

void *sub_100468FB0(void *(*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return 0;
  }

  v7 = a3;
  result = a1(&v6, &v7);
  if (!v4)
  {
    return v6;
  }

  __break(1u);
  return result;
}

void *sub_100469018(void *(*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return 0;
  }

  v7 = a3;
  result = a1(&v6, &v7);
  if (!v4)
  {
    return v6;
  }

  __break(1u);
  return result;
}

void *sub_100469074(void *(*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return 0;
  }

  v6 = a3;
  result = a1(&v7, &v6);
  if (!v4)
  {
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1004690E4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10046A248();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

double sub_100469164(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10046A248();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

void VisitedPlacesLibraryContext.chromeViewController.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*VisitedPlacesLibraryContext.chromeViewController.modify(uint64_t *a1))(id **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC4Maps27VisitedPlacesLibraryContext_chromeViewController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1002FD0BC;
}

char *sub_1004694D0(void *a1)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC4Maps27VisitedPlacesLibraryContext_searchInfo] = 0;
  *&v1[OBJC_IVAR____TtC4Maps27VisitedPlacesLibraryContext_configuration] = a1;
  *&v1[OBJC_IVAR____TtC4Maps27VisitedPlacesLibraryContext_containees] = _swiftEmptyArrayStorage;
  v14.receiver = v1;
  v14.super_class = ObjectType;
  v13 = a1;
  v4 = objc_msgSendSuper2(&v14, "init");
  v5 = objc_allocWithZone(type metadata accessor for VisitHistoryHomeViewController());
  v6 = v4;
  v7 = [v5 init];
  [v7 setContaineeDelegate:v6];
  *&v7[OBJC_IVAR____TtC4Maps30VisitHistoryHomeViewController_actionDelegate + 8] = &off_101619A68;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakLoadStrong();
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_10046A248();
  v9 = v6;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_unknownObjectRelease();

  *&v7[OBJC_IVAR____TtC4Maps30VisitHistoryHomeViewController_mapModificationDelegate + 8] = &off_10160D230;
  swift_unknownObjectWeakAssign();

  v10 = OBJC_IVAR____TtC4Maps27VisitedPlacesLibraryContext_containees;
  swift_beginAccess();
  v11 = v7;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v9 + v10) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v9 + v10) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();

  return v9;
}

Swift::OpaquePointer_optional __swiftcall VisitedPlacesLibraryContext.desiredCards()()
{
  swift_beginAccess();

  result.value._rawValue = v0;
  result.is_nil = v1;
  return result;
}

void VisitedPlacesLibraryContext.personalizedItemSources()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong searchPinsManager];

    if (!v2)
    {
      __break(1u);
      goto LABEL_15;
    }

    v3 = [v2 collectionPinsItemSource];

    if (v3)
    {
      v4 = v3;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  v5 = swift_unknownObjectWeakLoadStrong();
  if (!v5)
  {
    return;
  }

  v6 = v5;
  v7 = [v5 searchPinsManager];

  if (!v7)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v8 = [v7 searchResultsItemSource];

  if (v8)
  {
    v9 = v8;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }
}

void sub_100469D6C(uint64_t a1, SearchInfo *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    VisitedPlacesLibraryContext.injectSearchPins(from:)(a2);
  }
}

void _s4Maps27VisitedPlacesLibraryContextC43containeeViewControllerDidDismissExternallyyySo09ContaineegH0CSgF_0()
{
  v1 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = OBJC_IVAR____TtC4Maps27VisitedPlacesLibraryContext_containees;
    swift_beginAccess();
    v5 = sub_1003989D0();
    swift_endAccess();

    v6 = *(v1 + v4);
    if (v6 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_4;
      }
    }

    else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      [v3 setNeedsUpdateComponent:@"cards" animated:1];
LABEL_7:

      return;
    }

    [v3 popContext:v1 animated:1 completion:0];
    goto LABEL_7;
  }
}

void sub_100469F40(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong searchPinsManager];

    if (v4)
    {
      v5 = swift_allocObject();
      *(v5 + 16) = v4;
      aBlock[4] = sub_1002F6FE4;
      aBlock[5] = v5;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100039C64;
      aBlock[3] = &unk_10161A620;
      v6 = _Block_copy(aBlock);
      v7 = v4;

      [a1 addAnimations:v6];
      _Block_release(v6);
    }
  }
}

void sub_10046A06C(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong searchPinsManager];

    if (v5)
    {
      v6 = *(v1 + OBJC_IVAR____TtC4Maps27VisitedPlacesLibraryContext_searchInfo);
      if (v6)
      {
        v7 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v8 = swift_allocObject();
        *(v8 + 16) = v7;
        *(v8 + 24) = v6;
        aBlock[4] = sub_10046A2A0;
        aBlock[5] = v8;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100039C64;
        aBlock[3] = &unk_10161A5D0;
        v9 = _Block_copy(aBlock);
        v10 = v6;

        [a1 addAnimations:v9];
        _Block_release(v9);

        v5 = v10;
      }
    }
  }
}

unint64_t sub_10046A248()
{
  result = qword_10190E1B8;
  if (!qword_10190E1B8)
  {
    type metadata accessor for VisitHistoryHomeViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190E1B8);
  }

  return result;
}

void sub_10046A3C0()
{
  v1 = v0;
  v2 = type metadata accessor for UIHostingControllerSizingOptions();
  [v0 invalidateIntrinsicContentSize];
  v3 = [v0 window];
  if (v3)
  {

    (*((swift_isaMask & *v0) + 0x90))();
    v4 = *(v0 + OBJC_IVAR____TtC4Maps15MapsHostingView_hostingController);
    if (v4)
    {
      v5 = v4;

      dispatch thunk of UIHostingController.rootView.setter();

      return;
    }

    v6 = objc_allocWithZone(sub_1000CE6B8(&unk_10190DEB8, &unk_1011EAEA0));

    v7 = UIHostingController.init(rootView:)();
    v8 = v7;
    static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
    dispatch thunk of UIHostingController.sizingOptions.setter();
    v9 = [v8 view];
    if (v9)
    {
      v10 = v9;
      [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

      v11 = [v8 view];
      if (v11)
      {
        v12 = v11;
        v13 = [objc_opt_self() clearColor];
        [v12 setBackgroundColor:v13];

        v14 = [v8 view];
        if (v14)
        {
          v16 = v14;
          LODWORD(v15) = 1148846080;
          [v14 setContentCompressionResistancePriority:1 forAxis:v15];

          v17 = [v8 view];
          if (v17)
          {
            v19 = v17;
            LODWORD(v18) = 1148846080;
            [v17 setContentHuggingPriority:1 forAxis:v18];

            v20 = [v8 view];
            if (v20)
            {
              v21 = v20;
              [v1 addSubview:v20];

              sub_1000CE6B8(&qword_101908400, &qword_1011E2ED0);
              v22 = swift_allocObject();
              *(v22 + 16) = xmmword_1011E5C00;
              v23 = [v8 view];
              if (v23)
              {
                v24 = v23;
                v25 = [v23 leadingAnchor];

                v26 = [v1 leadingAnchor];
                v27 = [v25 constraintEqualToAnchor:v26];

                *(v22 + 32) = v27;
                v28 = [v8 view];
                if (v28)
                {
                  v29 = v28;
                  v30 = [v28 trailingAnchor];

                  v31 = [v1 trailingAnchor];
                  v32 = [v30 constraintEqualToAnchor:v31];

                  *(v22 + 40) = v32;
                  v33 = [v8 view];
                  if (v33)
                  {
                    v34 = v33;
                    v35 = [v33 topAnchor];

                    v36 = [v1 topAnchor];
                    v37 = [v35 constraintEqualToAnchor:v36];

                    *(v22 + 48) = v37;
                    v38 = [v8 view];
                    if (v38)
                    {
                      v39 = v38;
                      v40 = objc_opt_self();
                      v41 = [v39 bottomAnchor];

                      v42 = [v1 bottomAnchor];
                      v43 = [v41 constraintEqualToAnchor:v42];

                      *(v22 + 56) = v43;
                      sub_10009B534();
                      isa = Array._bridgeToObjectiveC()().super.isa;

                      [v40 activateConstraints:isa];

                      sub_10046A914(v7);

                      return;
                    }

LABEL_23:
                    __break(1u);
                    return;
                  }

LABEL_22:
                  __break(1u);
                  goto LABEL_23;
                }

LABEL_21:
                __break(1u);
                goto LABEL_22;
              }

LABEL_20:
              __break(1u);
              goto LABEL_21;
            }

LABEL_19:
            __break(1u);
            goto LABEL_20;
          }

LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

LABEL_17:
        __break(1u);
        goto LABEL_18;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_17;
  }
}

void sub_10046A914(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC4Maps15MapsHostingView_hostingController;
  v4 = *(v1 + OBJC_IVAR____TtC4Maps15MapsHostingView_hostingController);
  if (v4)
  {
    v5 = v4;
    [v5 willMoveToParentViewController:0];
    v6 = [v5 view];
    if (!v6)
    {
      __break(1u);
      return;
    }

    v7 = v6;
    [v6 removeFromSuperview];

    [v5 removeFromParentViewController];
    v8 = *(v1 + v3);
  }

  else
  {
    v8 = 0;
  }

  *(v1 + v3) = a1;
}

id sub_10046AB74(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MapsHostingView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_10046AC2C()
{
  result = qword_1019220C8;
  if (!qword_1019220C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019220C8);
  }

  return result;
}

void sub_10046AC80(void *a1, void (*a2)(void), uint64_t a3)
{
  v6 = [objc_opt_self() sharedManager];
  if (v6)
  {
    v7 = v6;
    v8 = String._bridgeToObjectiveC()();
    v9 = [v7 contactForCNContactIdentifier:v8];

    if (v9)
    {
      v10 = [objc_allocWithZone(MapsUIImageContactSpec) init];
      [v10 setContact:v9];
      [v10 setUseAvatarImageRendered:1];
      v11 = swift_allocObject();
      *(v11 + 16) = a2;
      *(v11 + 24) = a3;
      v13[4] = sub_1000D2C74;
      v13[5] = v11;
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 1107296256;
      v13[2] = sub_100271778;
      v13[3] = &unk_10161A6F0;
      v12 = _Block_copy(v13);

      [a1 getImageForSpec:v10 loadImageOnBackgroundQueue:1 completion:v12];

      _Block_release(v12);
    }

    else
    {
      a2(0);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10046AE48(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v6 = *(v3 + 16);
  v7 = objc_opt_self();
  if (v6 == 1)
  {
    v7 = [v7 sharedCarCache];
    if (v7)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v7 = [v7 sharedCache];
  if (!v7)
  {
    __break(1u);
    return;
  }

LABEL_5:
  v8 = v7;
  sub_10046AC80(v7, a2, a3);
}

uint64_t sub_10046AF08(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

unint64_t sub_10046AF3C()
{
  result = qword_1019220D0;
  if (!qword_1019220D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019220D0);
  }

  return result;
}

uint64_t sub_10046AF90()
{
  swift_getKeyPath();
  sub_10046C8B8(&qword_1019221C0, type metadata accessor for CarUserGuideRowViewModel, &unk_1012082B8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 40);

  return v1;
}

double sub_10046B040@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10046C8B8(&qword_1019221C0, type metadata accessor for CarUserGuideRowViewModel, &unk_1012082B8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 48);
  *a2 = *(v3 + 40);
  a2[1] = v4;

  return result;
}

uint64_t sub_10046B0EC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 40) == a1 && v5 == a2;
      if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10046C8B8(&qword_1019221C0, type metadata accessor for CarUserGuideRowViewModel, &unk_1012082B8);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

double sub_10046B25C()
{
  swift_getKeyPath();
  sub_10046C8B8(&qword_1019221C0, type metadata accessor for CarUserGuideRowViewModel, &unk_1012082B8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return result;
}

double sub_10046B300@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10046C8B8(&qword_1019221C0, type metadata accessor for CarUserGuideRowViewModel, &unk_1012082B8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 56);

  return result;
}

double sub_10046B3AC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10046C8B8(&qword_1019221C0, type metadata accessor for CarUserGuideRowViewModel, &unk_1012082B8);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

uint64_t sub_10046B478@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_10046C8B8(&qword_1019221C0, type metadata accessor for CarUserGuideRowViewModel, &unk_1012082B8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_100146A60(v1 + 64, a1);
}

uint64_t sub_10046B538@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10046C8B8(&qword_1019221C0, type metadata accessor for CarUserGuideRowViewModel, &unk_1012082B8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_100146A60(v3 + 64, a2);
}

uint64_t sub_10046B5F8(uint64_t a1, uint64_t *a2)
{
  sub_100146A60(a1, v3);
  swift_getKeyPath();
  sub_10046C8B8(&qword_1019221C0, type metadata accessor for CarUserGuideRowViewModel, &unk_1012082B8);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_100146AEC(v3);
}

uint64_t sub_10046B6D8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_100146B54(a2, a1 + 64);
  return swift_endAccess();
}

uint64_t sub_10046B73C(char *a1)
{
  v2 = v1;
  v4 = type metadata accessor for RichTextType();
  v27 = *(v4 - 8);
  v5 = v27;
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0;
  ObservationRegistrar.init()();
  v8 = a1;
  *(v2 + 16) = a1;
  v29 = a1;
  v30 = OBJC_IVAR____TtC4Maps9UserGuide_collectionHandler;
  v9 = *&a1[OBJC_IVAR____TtC4Maps9UserGuide_collectionHandler];
  v10 = v8;
  v11 = [v9 identifier];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  *(v2 + 24) = v12;
  *(v2 + 32) = v14;
  swift_getKeyPath();
  v28 = OBJC_IVAR____TtC4Maps9UserGuide___observationRegistrar;
  v35[0] = v10;
  sub_10046C8B8(&qword_10190C910, type metadata accessor for UserGuide, &unk_1011FF7CC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v16 = *&v10[OBJC_IVAR____TtC4Maps9UserGuide__title];
  v15 = *&v10[OBJC_IVAR____TtC4Maps9UserGuide__title + 8];

  *(v2 + 40) = v16;
  *(v2 + 48) = v15;
  sub_1000CE6B8(&unk_1019157F0, qword_1011E4FB0);
  v17 = swift_allocObject();
  v26 = xmmword_1011E1D30;
  *(v17 + 16) = xmmword_1011E1D30;
  sub_1000CE6B8(&qword_10190A070, &unk_1011E78E0);
  type metadata accessor for RichTextViewModel();
  v18 = swift_allocObject();
  *(v18 + 16) = v26;
  (*(v5 + 104))(v7, enum case for RichTextType.line(_:), v4);
  swift_getKeyPath();
  v35[0] = v10;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

  (*(v27 + 8))(v7, v4);
  *(v17 + 32) = v18;
  *(v2 + 56) = v17;
  v19 = *&v29[v30];
  v20 = type metadata accessor for UserGuideCoverPhotoImageProvider(0);
  v21 = objc_allocWithZone(v20);
  *&v21[OBJC_IVAR____TtC4Maps32UserGuideCoverPhotoImageProvider__image] = 0;
  v22 = v19;
  ObservationRegistrar.init()();
  *&v21[OBJC_IVAR____TtC4Maps32UserGuideCoverPhotoImageProvider_collectionHandler] = v22;
  v34.receiver = v21;
  v34.super_class = v20;
  v23 = v22;
  v24 = objc_msgSendSuper2(&v34, "init");
  [v23 addObserver:v24];

  v35[3] = v20;
  v35[4] = sub_10046C8B8(&qword_10191F510, type metadata accessor for UserGuideCoverPhotoImageProvider, &unk_10120F134);
  v35[0] = v24;
  swift_getKeyPath();
  v31 = v2;
  v32 = v35;
  v33 = v2;
  sub_10046C8B8(&qword_1019221C0, type metadata accessor for CarUserGuideRowViewModel, &unk_1012082B8);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_100146AEC(v35);
  swift_allocObject();
  swift_weakInit();
  withObservationTracking<A>(_:onChange:)();

  return v2;
}

double sub_10046BC98(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10046BCF0();
  }

  return result;
}

uint64_t sub_10046BCF0()
{
  v1 = v0;
  v2 = type metadata accessor for RichTextType();
  v19 = v2;
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 16);
  swift_getKeyPath();
  v20 = OBJC_IVAR____TtC4Maps9UserGuide___observationRegistrar;
  v27[0] = v6;
  sub_10046C8B8(&qword_10190C910, type metadata accessor for UserGuide, &unk_1011FF7CC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *(v6 + OBJC_IVAR____TtC4Maps9UserGuide__title);
  v8 = *(v6 + OBJC_IVAR____TtC4Maps9UserGuide__title + 8);

  sub_10046B0EC(v7, v8);
  sub_1000CE6B8(&unk_1019157F0, qword_1011E4FB0);
  v9 = swift_allocObject();
  v18 = xmmword_1011E1D30;
  *(v9 + 16) = xmmword_1011E1D30;
  sub_1000CE6B8(&qword_10190A070, &unk_1011E78E0);
  type metadata accessor for RichTextViewModel();
  v10 = swift_allocObject();
  *(v10 + 16) = v18;
  (*(v3 + 104))(v5, enum case for RichTextType.line(_:), v2);
  swift_getKeyPath();
  v27[0] = v6;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

  (*(v3 + 8))(v5, v19);
  *(v9 + 32) = v10;
  swift_getKeyPath();
  v23 = v1;
  v24 = v9;
  v27[0] = v1;
  sub_10046C8B8(&qword_1019221C0, type metadata accessor for CarUserGuideRowViewModel, &unk_1012082B8);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v11 = *(v6 + OBJC_IVAR____TtC4Maps9UserGuide_collectionHandler);
  v12 = type metadata accessor for UserGuideCoverPhotoImageProvider(0);
  v13 = objc_allocWithZone(v12);
  *&v13[OBJC_IVAR____TtC4Maps32UserGuideCoverPhotoImageProvider__image] = 0;
  v14 = v11;
  ObservationRegistrar.init()();
  *&v13[OBJC_IVAR____TtC4Maps32UserGuideCoverPhotoImageProvider_collectionHandler] = v14;
  v26.receiver = v13;
  v26.super_class = v12;
  v15 = v14;
  v16 = objc_msgSendSuper2(&v26, "init");
  [v15 addObserver:v16];

  v27[3] = v12;
  v27[4] = sub_10046C8B8(&qword_10191F510, type metadata accessor for UserGuideCoverPhotoImageProvider, &unk_10120F134);
  v27[0] = v16;
  swift_getKeyPath();
  v21 = v1;
  v22 = v27;
  v25 = v1;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_100146AEC(v27);
}

double sub_10046C1C0(uint64_t a1)
{
  v2 = sub_1000CE6B8(&unk_10190BA50, &unk_1011E4800);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  type metadata accessor for MainActor();

  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = a1;
  sub_10020AAE4(0, 0, v4, &unk_101208498, v7);

  return result;
}

uint64_t sub_10046C2E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  type metadata accessor for MainActor();
  *(v4 + 48) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10046C37C, v6, v5);
}

uint64_t sub_10046C37C()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10046BCF0();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10046C40C()
{

  sub_100146AEC(v0 + 64);
  v1 = OBJC_IVAR____TtC4Maps24CarUserGuideRowViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CarUserGuideRowViewModel(uint64_t a1)
{
  result = qword_101922108;
  if (!qword_101922108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10046C524(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10046C5F0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_10046C8B8(&qword_1019221C0, type metadata accessor for CarUserGuideRowViewModel, &unk_1012082B8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_100146A60(v3 + 64, a1);
}

uint64_t sub_10046C6B0()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_10046C8B8(&qword_1019221C0, type metadata accessor for CarUserGuideRowViewModel, &unk_1012082B8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v1 + 40);

  return v2;
}

double sub_10046C760()
{
  swift_getKeyPath();
  sub_10046C8B8(&qword_1019221C0, type metadata accessor for CarUserGuideRowViewModel, &unk_1012082B8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return result;
}

double sub_10046C804@<D0>(void *a1@<X8>)
{
  v2 = *(*v1 + 32);
  *a1 = *(*v1 + 24);
  a1[1] = v2;

  return result;
}

uint64_t sub_10046C85C()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 40) = v0[3];
  *(v1 + 48) = v2;
}

uint64_t sub_10046C8B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double (*sub_10046C908())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_10046C960;
}

uint64_t sub_10046C968(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003AC4C;

  return sub_10046C2E4(a1, v4, v5, v6);
}

uint64_t sub_10046CAD8(char a1)
{
  v6.receiver = v1;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "viewWillAppear:", a1 & 1);
  v3 = sub_10046CEC4();
  [v3 guidanceLevelForTransportType:0];

  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v1;
  return static Published.subscript.setter();
}

uint64_t sub_10046CC20@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  swift_getObjectType();
  v4 = type metadata accessor for MapsDesignAccessibilityString();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10046EBD8(&qword_101922220, type metadata accessor for CarAudioControlViewController, &protocol conformance descriptor for CarHostingViewController);
  v8 = v2;
  v9 = ObservedObject.init(wrappedValue:)();
  v11 = v10;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v16 = v9;
  *(&v16 + 1) = v11;
  *&v17 = &off_101600358;
  *v7 = 0xD000000000000013;
  v7[1] = 0x8000000101208500;
  (*(v5 + 104))(v7, enum case for MapsDesignAccessibilityString.view(_:), v4);
  a1[3] = sub_1000CE6B8(&qword_101922228, &qword_101208538);
  v12 = sub_1000D6664(&qword_101922230, &qword_101208540);
  v13 = sub_10046D5B0();
  *&v25[0] = v12;
  *(&v25[0] + 1) = v13;
  a1[4] = swift_getOpaqueTypeConformance2();
  sub_10001A848(a1);
  View.mapsDesignAXContainer(withID:)();
  (*(v5 + 8))(v7, v4);
  v25[6] = v22;
  v25[7] = v23;
  v26 = v24;
  v25[2] = v18;
  v25[3] = v19;
  v25[4] = v20;
  v25[5] = v21;
  v25[0] = v16;
  v25[1] = v17;
  return sub_10046D690(v25);
}

id sub_10046CEC4()
{
  v1 = OBJC_IVAR____TtC4Maps29CarAudioControlViewController____lazy_storage___audioPreferences;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps29CarAudioControlViewController____lazy_storage___audioPreferences);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC4Maps29CarAudioControlViewController____lazy_storage___audioPreferences);
  }

  else
  {
    v4 = [objc_opt_self() standardUserDefaults];
    v5 = [objc_allocWithZone(AudioPreferences) initWithDefaults:v4];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_10046CFF0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void sub_10046D0D4(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
}

uint64_t sub_10046D154(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

void *sub_10046D1C4(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = a1;
  v3 = v1;
  static Published.subscript.setter();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    [v5 audioController:v3 didSelectAudioType:v6];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10046D334()
{
  sub_1000A09E0(v0 + OBJC_IVAR____TtC4Maps29CarAudioControlViewController_delegate);

  v1 = OBJC_IVAR____TtC4Maps29CarAudioControlViewController__currentAudioType;
  v2 = sub_1000CE6B8(&qword_101922218, &qword_101208518);
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t type metadata accessor for CarAudioControlViewController(uint64_t a1)
{
  result = qword_101922200;
  if (!qword_101922200)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10046D4B4(uint64_t a1)
{
  sub_10046D558(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10046D558(uint64_t a1)
{
  if (!qword_101922210)
  {
    type metadata accessor for NavAudioType(255);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_101922210);
    }
  }
}

unint64_t sub_10046D5B0()
{
  result = qword_101922238;
  if (!qword_101922238)
  {
    sub_1000D6664(&qword_101922230, &qword_101208540);
    sub_10046D63C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101922238);
  }

  return result;
}

unint64_t sub_10046D63C()
{
  result = qword_101922240;
  if (!qword_101922240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101922240);
  }

  return result;
}

uint64_t sub_10046D690(uint64_t a1)
{
  v2 = sub_1000CE6B8(&qword_101922230, &qword_101208540);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10046D6F8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1000CE6B8(&qword_101922268, &qword_101208618);
  __chkstk_darwin(v8 - 8);
  v10 = &v29[-v9];
  v11 = static HorizontalAlignment.leading.getter();
  v12 = qword_10193E340;
  *v10 = v11;
  *(v10 + 1) = v12;
  v10[16] = 0;
  sub_1000CE6B8(&qword_101922278, &unk_101208620);
  v30 = a3;
  swift_getKeyPath();
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  swift_bridgeObjectRetain_n();
  v14 = a2;
  sub_1000CE6B8(&qword_101922280, &qword_101208648);
  sub_1000CE6B8(&qword_10190B058, &qword_1011E6600);
  sub_1000414C8(&qword_101922288, &qword_101922280, &qword_101208648, &protocol conformance descriptor for [A]);
  sub_10046EBD8(&unk_101922290, type metadata accessor for NavAudioType, &unk_1011E291C);
  sub_100109CEC();
  ForEach<>.init(_:id:content:)();
  sub_1000CE6B8(&qword_101909FF0, &qword_1011EEF90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1011E1D40;
  LOBYTE(a1) = static Edge.Set.leading.getter();
  *(inited + 32) = a1;
  v16 = static Edge.Set.trailing.getter();
  *(inited + 33) = v16;
  v17 = static Edge.Set.bottom.getter();
  *(inited + 34) = v17;
  v18 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != a1)
  {
    v18 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v16)
  {
    v18 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v17)
  {
    v18 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_10046EB3C(v10, a4);
  result = sub_1000CE6B8(&qword_101922250, &qword_101208610);
  v28 = a4 + *(result + 36);
  *v28 = v18;
  *(v28 + 8) = v20;
  *(v28 + 16) = v22;
  *(v28 + 24) = v24;
  *(v28 + 32) = v26;
  *(v28 + 40) = 0;
  return result;
}

uint64_t sub_10046DA2C(uint64_t *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v8 = type metadata accessor for NavigationCell();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v13 = sub_10046DD08(v12, v25, a2, a3, a4);
  v27 = type metadata accessor for ListCellViewModel();
  v28 = sub_10046EBD8(&qword_10190B068, &type metadata accessor for ListCellViewModel, &protocol conformance descriptor for ListCellViewModel);
  v25 = v13;
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a4;
  v14[5] = v12;
  v15 = a3;

  NavigationCell.init(model:tapHandler:)();
  v16 = 0x696475416C6C7546;
  v17 = 0xE400000000000000;
  v18 = 1701736270;
  v19 = 0xE700000000000000;
  v20 = 0x6E776F6E6B6E55;
  if (v12 == 1)
  {
    v20 = 0x6E4F737472656C41;
    v19 = 0xEA0000000000796CLL;
  }

  if (v12 != 2)
  {
    v18 = v20;
    v17 = v19;
  }

  if (v12)
  {
    v16 = v18;
    v21 = v17;
  }

  else
  {
    v21 = 0xE90000000000006FLL;
  }

  v25 = v16;
  v26 = v21;

  v22._countAndFlagsBits = 1819043139;
  v22._object = 0xE400000000000000;
  String.append(_:)(v22);

  sub_10046EBD8(&qword_10190A030, &type metadata accessor for NavigationCell, &protocol conformance descriptor for NavigationCell);
  View.accessibilityIdentifier(_:)();

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_10046DD08(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  *&v52 = a5;
  v44 = a3;
  v45 = a4;
  v7 = type metadata accessor for UUID();
  __chkstk_darwin(v7 - 8);
  v51 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000CE6B8(&unk_10190D5B0, &unk_1011E6660);
  __chkstk_darwin(v9 - 8);
  v50 = &v42 - v10;
  v46 = type metadata accessor for RichTextType();
  v11 = *(v46 - 8);
  __chkstk_darwin(v46);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TrailingAccessoryViewModel.TrailingAccessoryType();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for TrailingAccessoryViewModel();
  v48 = *(v18 - 8);
  v49 = v18;
  __chkstk_darwin(v18);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for LeadingAccessoryViewModel();
  v21 = *(v47 - 8);
  __chkstk_darwin(v47);
  v23 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10046E470(a1, a2);
  *v17 = a1 == a2;
  (*(v15 + 104))(v17, enum case for TrailingAccessoryViewModel.TrailingAccessoryType.select(_:), v14);
  v45 = v20;
  TrailingAccessoryViewModel.init(type:)();
  if (a1 && a1 != 2)
  {
    if (a1 != 1)
    {
LABEL_7:
      v58 = 0;
      v56 = 0u;
      v57 = 0u;
      goto LABEL_8;
    }

    _UISolariumEnabled();
  }

  v24 = String._bridgeToObjectiveC()();

  v25 = [objc_opt_self() systemImageNamed:v24];

  if (!v25)
  {
    goto LABEL_7;
  }

  *(&v57 + 1) = sub_1000F1178();
  v58 = sub_10046EBD8(&qword_10190DE60, sub_1000F1178, &protocol conformance descriptor for UIImage);
  *&v56 = v25;
LABEL_8:
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  sub_1000CE6B8(&unk_1019157F0, qword_1011E4FB0);
  v26 = swift_allocObject();
  v52 = xmmword_1011E1D30;
  *(v26 + 16) = xmmword_1011E1D30;
  v44 = v26;
  sub_1000CE6B8(&qword_10190A070, &unk_1011E78E0);
  type metadata accessor for RichTextViewModel();
  v27 = swift_allocObject();
  *(v27 + 16) = v52;
  v28 = v46;
  (*(v11 + 104))(v13, enum case for RichTextType.title(_:), v46);
  sub_100177214();
  RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

  (*(v11 + 8))(v13, v28);
  *(v26 + 32) = v27;
  sub_1000CE6B8(&unk_10190A060, &unk_1011F9F90);
  v29 = v21;
  v30 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = v52;
  v32 = *(v21 + 16);
  v43 = v23;
  v33 = v47;
  v32(v31 + v30, v23, v47);
  sub_1000CE6B8(&unk_10190D580, &unk_1011E9400);
  v34 = v48;
  v35 = (*(v48 + 80) + 32) & ~*(v48 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = v52;
  v37 = v45;
  v38 = v49;
  (*(v34 + 16))(v36 + v35, v45, v49);
  v39 = type metadata accessor for BottomAccessoryViewModel();
  (*(*(v39 - 8) + 56))(v50, 1, 1, v39);
  UUID.init()();
  type metadata accessor for ListCellViewModel();
  swift_allocObject();
  v40 = ListCellViewModel.init(id:imageProvider:imageOverlayProvider:imagePlaceholder:title:query:richTextViews:leadingAccessory:trailingAccessory:contextLineAccessory:bottomAccessory:active:isSelected:leadingSwipeActions:trailingSwipeActions:menuActions:allowsFullSwipe:)();
  (*(v34 + 8))(v37, v38);
  (*(v29 + 8))(v43, v33);
  return v40;
}

uint64_t sub_10046E470(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LeadingAccessoryViewModel.LeadingAccessoryType();
  v5 = *(v4 - 8);
  v6.n128_f64[0] = __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 2)
  {
    v10 = 0xD000000000000012;
    v9 = 0x800000010121BEC0;
  }

  else
  {
    if (a1 == 1)
    {
      v14 = _UISolariumEnabled();
      v9 = 0x800000010121BE70;
      v10 = 0xD00000000000002ALL;
      v11 = 0x800000010121BE40;
      v12 = 0xD000000000000022;
      v13 = (v14 & 1) == 0;
    }

    else
    {
      v9 = 0xE800000000000000;
      v10 = 0x6D726F6665766177;
      v11 = 0x800000010121BF40;
      v12 = 0xD000000000000013;
      v13 = a1 == 0;
    }

    if (v13)
    {
      v10 = v12;
    }

    if (v13)
    {
      v9 = v11;
    }
  }

  *v8 = v10;
  *(v8 + 1) = v9;
  v8[16] = a1 == a2;
  (*(v5 + 104))(v8, enum case for LeadingAccessoryViewModel.LeadingAccessoryType.volume(_:), v4, v6);
  return LeadingAccessoryViewModel.init(type:)();
}

uint64_t sub_10046E610()
{
  v1 = sub_1000CE6B8(&qword_101922248, &qword_101208608);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v6[-v3];
  v7 = *v0;
  v8 = *(v0 + 1);
  static Axis.Set.vertical.getter();
  sub_1000CE6B8(&qword_101922250, &qword_101208610);
  sub_10046EA78();
  ScrollView.init(_:showsIndicators:content:)();
  sub_1000414C8(&qword_101922270, &qword_101922248, &qword_101208608, &protocol conformance descriptor for ScrollView<A>);
  View.scrollAccessoryEdge(_:)();
  return (*(v2 + 8))(v4, v1);
}

id sub_10046E794(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_1000CE6B8(&qword_101922218, &qword_101208518);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC4Maps29CarAudioControlViewController____lazy_storage___audioPreferences] = 0;
  v7 = OBJC_IVAR____TtC4Maps29CarAudioControlViewController__currentAudioType;
  v11 = 2;
  type metadata accessor for NavAudioType(0);
  Published.init(initialValue:)();
  (*(v4 + 32))(&v1[v7], v6, v3);
  swift_unknownObjectWeakAssign();
  v10.receiver = v1;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, "initWithNibName:bundle:", 0, 0);
}

void sub_10046E8EC()
{
  v1 = sub_1000CE6B8(&qword_101922218, &qword_101208518);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v6 - v3;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC4Maps29CarAudioControlViewController____lazy_storage___audioPreferences) = 0;
  v5 = OBJC_IVAR____TtC4Maps29CarAudioControlViewController__currentAudioType;
  v6[1] = 2;
  type metadata accessor for NavAudioType(0);
  Published.init(initialValue:)();
  (*(v2 + 32))(v0 + v5, v4, v1);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_10046EA78()
{
  result = qword_101922258;
  if (!qword_101922258)
  {
    sub_1000D6664(&qword_101922250, &qword_101208610);
    sub_1000414C8(&qword_101922260, &qword_101922268, &qword_101208618, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101922258);
  }

  return result;
}

uint64_t sub_10046EB3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_101922268, &qword_101208618);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10046EBD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_10046EC20()
{
  swift_getKeyPath();
  sub_100470B58(&qword_101917FC8, type metadata accessor for UserGuidesListViewModel, &unk_101208700);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return result;
}

uint64_t sub_10046ECC4()
{
  swift_getKeyPath();
  sub_100470B58(&qword_101917FC8, type metadata accessor for UserGuidesListViewModel, &unk_101208700);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 24);
}

double sub_10046ED64(uint64_t a1)
{
  if (*(v1 + 24) != a1)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100470B58(&qword_101917FC8, type metadata accessor for UserGuidesListViewModel, &unk_101208700);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_10046EE68()
{
  swift_getKeyPath();
  v3 = v0;
  sub_100470B58(&qword_101917FC8, type metadata accessor for UserGuidesListViewModel, &unk_101208700);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 40);
  sub_1000CD9D4(v1, *(v3 + 48));
  return v1;
}

uint64_t sub_10046EF1C()
{
  swift_getKeyPath();
  v3 = v0;
  sub_100470B58(&qword_101917FC8, type metadata accessor for UserGuidesListViewModel, &unk_101208700);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 56);
  sub_1000CD9D4(v1, *(v3 + 64));
  return v1;
}

uint64_t sub_10046EFD0()
{
  swift_getKeyPath();
  v3 = v0;
  sub_100470B58(&qword_101917FC8, type metadata accessor for UserGuidesListViewModel, &unk_101208700);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 72);
  sub_1000CD9D4(v1, *(v3 + 80));
  return v1;
}

uint64_t sub_10046F084@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100470B58(&qword_101917FC8, type metadata accessor for UserGuidesListViewModel, &unk_101208700);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 72);
  v5 = *(v3 + 80);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_100470C00;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4, v5);
}

double sub_10046F170(uint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t (*)(uint64_t a1), uint64_t))
{
  v5 = *a1;
  v6 = *a2;
  v8 = *a3;
  v7 = a3[1];
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;

  a4(v5, v6, sub_10023B140, v9);

  return result;
}

double sub_10046F218(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_100470BF8;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v2, v3);
  sub_100470B58(&qword_101917FC8, type metadata accessor for UserGuidesListViewModel, &unk_101208700);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v5, v4);

  return result;
}

double sub_10046F374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t *, void *, __n128))
{
  v11 = a2;
  v12 = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v10[0] = sub_10023B148;
  v10[1] = v8;

  (a5)(&v12, &v11, v10);

  return result;
}

uint64_t sub_10046F41C()
{
  swift_getKeyPath();
  v3 = v0;
  sub_100470B58(&qword_101917FC8, type metadata accessor for UserGuidesListViewModel, &unk_101208700);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 88);
  sub_1000CD9D4(v1, *(v3 + 96));
  return v1;
}

uint64_t sub_10046F4D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100470B58(&qword_101917FC8, type metadata accessor for UserGuidesListViewModel, &unk_101208700);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 88);
  v5 = *(v3 + 96);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_10010129C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4, v5);
}

double sub_10046F5BC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_100100EB8;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v2, v3);
  sub_100470B58(&qword_101917FC8, type metadata accessor for UserGuidesListViewModel, &unk_101208700);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v5, v4);

  return result;
}

uint64_t sub_10046F718()
{
  swift_getKeyPath();
  v3 = v0;
  sub_100470B58(&qword_101917FC8, type metadata accessor for UserGuidesListViewModel, &unk_101208700);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 104);
  sub_1000CD9D4(v1, *(v3 + 112));
  return v1;
}

uint64_t sub_10046F7CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 104);
  v4 = *(a1 + 112);
  *(a1 + 104) = a2;
  *(a1 + 112) = a3;
  sub_1000CD9D4(a2, a3);
  return sub_1000588AC(v3, v4);
}

uint64_t sub_10046F818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  v5 = _swiftEmptyArrayStorage;
  if (!v4)
  {
    goto LABEL_15;
  }

  v6 = 0;
  v7 = a1 + 40;
  v21 = a1 + 40;
  do
  {
    v8 = (v7 + 16 * v6);
    v9 = v6;
    while (1)
    {
      if (v9 >= v4)
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v6 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_21;
      }

      v10 = *(v8 - 1);
      v11 = *v8;
      v5 = v26[4];
      swift_getKeyPath();
      sub_100470B58(&qword_1019223A0, type metadata accessor for UserGuidesListController, &unk_1012091FC);

      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v12 = *(v5 + OBJC_IVAR____TtC4Maps24UserGuidesListController__userGuidesById);
      if (*(v12 + 16))
      {
        break;
      }

LABEL_4:

      ++v9;
      v8 += 2;
      if (v6 == v4)
      {
        v5 = _swiftEmptyArrayStorage;
        goto LABEL_15;
      }
    }

    v13 = sub_100297040(v10, v11);
    if ((v14 & 1) == 0)
    {

      goto LABEL_4;
    }

    v15 = *(*(v12 + 56) + 8 * v13);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v5 = _swiftEmptyArrayStorage;
    v7 = v21;
  }

  while (v6 != v4);
LABEL_15:
  if (_swiftEmptyArrayStorage >> 62)
  {
LABEL_22:
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_17;
    }
  }

  else if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_17:
    swift_getKeyPath();
    sub_100470B58(&qword_101917FC8, type metadata accessor for UserGuidesListViewModel, &unk_101208700);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v16 = v26[9];
    if (v16)
    {
      v17 = v26[10];
      v18 = swift_allocObject();
      swift_weakInit();
      v19 = swift_allocObject();
      v19[2] = v18;
      v19[3] = a1;
      v19[4] = a3;
      v19[5] = a4;
      sub_1000CD9D4(v16, v17);

      v16(v5, a2, sub_100470BA0, v19);
      sub_1000588AC(v16, v17);
    }
  }
}

double sub_10046FB78(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (a1)
    {
      v11 = *(Strong + 32);
      sub_10047BD14(a3, a4, a5);
    }
  }

  return result;
}

void sub_10046FC14()
{
  withObservationTracking<A>(_:onChange:)();
  swift_getKeyPath();
  sub_100470B58(&qword_101917FC8, type metadata accessor for UserGuidesListViewModel, &unk_101208700);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v1 = *(v0 + 24);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 24) = v3;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();
  }
}

uint64_t sub_10046FDE0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v28 = a1;
  v3 = *(a1 + 32);
  swift_getKeyPath();
  v30 = v3;
  sub_100470B58(&qword_1019223A0, type metadata accessor for UserGuidesListController, &unk_1012091FC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC4Maps24UserGuidesListController__userGuides);
  v30 = _swiftEmptyArrayStorage;
  if (v4 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    v6 = _swiftEmptyArrayStorage;
    if (!i)
    {
      break;
    }

    v7 = 0;
    v27 = v4 & 0xC000000000000001;
    v25 = a2;
    v26 = v4 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v27)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *(v26 + 16))
        {
          goto LABEL_16;
        }

        v8 = *(v4 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v11 = swift_allocObject();
      swift_weakInit();
      v12 = swift_allocObject();
      *(v12 + 16) = v11;
      *(v12 + 24) = v9;
      v13 = type metadata accessor for UserGuideRowViewModel(0);
      v14 = objc_allocWithZone(v13);
      *&v14[OBJC_IVAR____TtC4Maps21UserGuideRowViewModel__richTextViews] = _swiftEmptyArrayStorage;
      v15 = &v14[OBJC_IVAR____TtC4Maps21UserGuideRowViewModel__title];
      *v15 = 0;
      *(v15 + 1) = 0;
      v16 = &v14[OBJC_IVAR____TtC4Maps21UserGuideRowViewModel__imageProvider];
      *v16 = 0u;
      *(v16 + 1) = 0u;
      *(v16 + 4) = 0;
      v17 = &v14[OBJC_IVAR____TtC4Maps21UserGuideRowViewModel__imageOverlayProvider];
      *v17 = 0u;
      *(v17 + 1) = 0u;
      *(v17 + 4) = 0;
      *&v14[OBJC_IVAR____TtC4Maps21UserGuideRowViewModel__trailingAccessory] = _swiftEmptyArrayStorage;
      *&v14[OBJC_IVAR____TtC4Maps21UserGuideRowViewModel__trailingSwipeActions] = _swiftEmptyArrayStorage;
      *&v14[OBJC_IVAR____TtC4Maps21UserGuideRowViewModel__menuActions] = _swiftEmptyArrayStorage;
      v18 = v9;
      ObservationRegistrar.init()();
      *&v14[OBJC_IVAR____TtC4Maps21UserGuideRowViewModel_userGuide] = v18;
      v19 = &v14[OBJC_IVAR____TtC4Maps21UserGuideRowViewModel__actionHandler];
      *v19 = sub_100470DB4;
      v19[1] = v12;
      v29.receiver = v14;
      v29.super_class = v13;
      v20 = v18;

      v21 = objc_msgSendSuper2(&v29, "init");
      sub_100471D38();
      swift_allocObject();
      v22 = swift_unknownObjectWeakInit();
      a2 = &v24;
      __chkstk_darwin(v22);
      withObservationTracking<A>(_:onChange:)();

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      ++v7;
      if (v10 == i)
      {
        v6 = v30;
        a2 = v25;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_14:

  *a2 = v6;
  return result;
}

double sub_10047019C(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v5 = a2;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100470218(v5, a4, a1);
  }

  return result;
}

void sub_100470218(unsigned __int8 a1, char *a2, uint64_t a3)
{
  v7 = sub_10047BC44(*&a2[OBJC_IVAR____TtC4Maps9UserGuide_id], *&a2[OBJC_IVAR____TtC4Maps9UserGuide_id + 8]);
  if (!v7)
  {
    return;
  }

  if (a1 <= 9u)
  {
    if (a1 != 2)
    {
      if (a1 != 8)
      {
        goto LABEL_14;
      }

      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (a1 == 11)
  {
LABEL_10:
    v17 = v7;
    swift_getKeyPath();
    sub_100470B58(&qword_101917FC8, type metadata accessor for UserGuidesListViewModel, &unk_101208700);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v10 = v3[9];
    if (v10)
    {
      v11 = v3[10];
      sub_1000CE6B8(&qword_101908400, &qword_1011E2ED0);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1011E47B0;
      *(v12 + 32) = v17;
      v13 = swift_allocObject();
      swift_weakInit();
      v14 = swift_allocObject();
      *(v14 + 16) = v13;
      *(v14 + 24) = a2;
      sub_1000CD9D4(v10, v11);
      v15 = v17;

      v16 = a2;
      v10(v12, a3, sub_100470DCC, v14);

      sub_1000588AC(v10, v11);

      return;
    }

    goto LABEL_12;
  }

  if (a1 == 10)
  {
LABEL_8:
    v17 = v7;
    swift_getKeyPath();
    sub_100470B58(&qword_101917FC8, type metadata accessor for UserGuidesListViewModel, &unk_101208700);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v8 = v3[11];
    if (v8)
    {
      v9 = v3[12];

      v8(v17, a3);
      sub_1000588AC(v8, v9);
    }

LABEL_12:

    return;
  }

LABEL_14:
}

double sub_1004704F8()
{
  v0 = sub_1000CE6B8(&unk_10190BA50, &unk_1011E4800);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for MainActor();

  v5 = static MainActor.shared.getter();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = &protocol witness table for MainActor;
  v6[4] = v4;

  sub_10020AAE4(0, 0, v2, &unk_101208848, v6);

  return result;
}

uint64_t sub_10047064C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  type metadata accessor for MainActor();
  *(v4 + 48) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1004706E4, v6, v5);
}

uint64_t sub_1004706E4()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10046FC14();
  }

  v1 = *(v0 + 8);

  return v1();
}

double sub_100470774(char a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (a1)
    {
      sub_1000CE6B8(&qword_101909BF0, &unk_1012001C0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1011E1D30;
      v7 = *(a3 + OBJC_IVAR____TtC4Maps9UserGuide_id + 8);
      *(inited + 32) = *(a3 + OBJC_IVAR____TtC4Maps9UserGuide_id);
      *(inited + 40) = v7;

      sub_10047BD14(inited, UIView.annotateView(with:), 0);

      swift_setDeallocating();
      sub_1002637C0(inited + 32);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_10047086C()
{

  sub_1000588AC(*(v0 + 40), *(v0 + 48));
  sub_1000588AC(*(v0 + 56), *(v0 + 64));
  sub_1000588AC(*(v0 + 72), *(v0 + 80));
  sub_1000588AC(*(v0 + 88), *(v0 + 96));
  sub_1000588AC(*(v0 + 104), *(v0 + 112));
  v1 = OBJC_IVAR____TtC4Maps23UserGuidesListViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_100470904()
{
  sub_10047086C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for UserGuidesListViewModel(uint64_t a1)
{
  result = qword_1019222D0;
  if (!qword_1019222D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004709B0(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

double sub_100470A78@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100470B58(&qword_1019223A0, type metadata accessor for UserGuidesListController, &unk_1012091FC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC4Maps24UserGuidesListController__userGuidesById);

  return result;
}

uint64_t sub_100470B58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100470BAC()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 72);
  v5 = *(v2 + 80);
  *(v2 + 72) = v1;
  *(v2 + 80) = v3;
  sub_1000CD9D4(v1, v3);
  return sub_1000588AC(v4, v5);
}

uint64_t sub_100470C14(void *a1)
{
  v2 = v1;
  *(v2 + 104) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 40) = 0u;
  ObservationRegistrar.init()();
  v4 = objc_allocWithZone(type metadata accessor for UserGuidesListController(0));
  *(v2 + 32) = sub_10047C550(a1);
  sub_1000588AC(*(v2 + 40), *(v2 + 48));
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  sub_1000588AC(*(v2 + 56), *(v2 + 64));
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  sub_10046FC14();
  return v2;
}

uint64_t sub_100470D00(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003AC4C;

  return sub_10047064C(a1, v4, v5, v6);
}

uint64_t sub_100470DD4()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 88);
  v5 = *(v2 + 96);
  *(v2 + 88) = v1;
  *(v2 + 96) = v3;
  sub_1000CD9D4(v1, v3);
  return sub_1000588AC(v4, v5);
}

uint64_t sub_100470E4C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a2;
  v25 = a4;
  v24 = type metadata accessor for MapsDesignAccessibilityString();
  v6 = *(v24 - 8);
  __chkstk_darwin(v24);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for GuideCell.GuideCellType();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for GuideCell();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v12, enum case for GuideCell.GuideCellType.mediumImageLeft(_:), v9, v15);
  v27 = type metadata accessor for UserGuideRowViewModel(0);
  v28 = sub_1004711DC(&qword_1019223A8, type metadata accessor for UserGuideRowViewModel, &unk_1012089EC);
  v26 = a1;
  v18 = swift_allocObject();
  v19 = v23;
  v18[2] = a1;
  v18[3] = v19;
  v18[4] = a3;
  v20 = a1;

  GuideCell.init(_:model:leadingCellActions:trailingCellActions:tapHandler:)();
  strcpy(v8, "UserGuidesList");
  v8[15] = -18;
  v21 = v24;
  (*(v6 + 104))(v8, enum case for MapsDesignAccessibilityString.cell(_:), v24);
  sub_1004711DC(&qword_101911FB0, &type metadata accessor for GuideCell, &protocol conformance descriptor for GuideCell);
  View.mapsDesignAXContainer(withID:)();
  (*(v6 + 8))(v8, v21);
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_1004711DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100471238()
{
  swift_getKeyPath();
  sub_100474264(&qword_101922440, type metadata accessor for UserGuideRowViewModel, &unk_101208998);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC4Maps21UserGuideRowViewModel__title);

  return v1;
}

double sub_1004712F4@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100474264(&qword_101922440, type metadata accessor for UserGuideRowViewModel, &unk_101208998);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC4Maps21UserGuideRowViewModel__title + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC4Maps21UserGuideRowViewModel__title);
  a2[1] = v4;

  return result;
}

uint64_t sub_1004713AC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC4Maps21UserGuideRowViewModel__title);
  v6 = *(v2 + OBJC_IVAR____TtC4Maps21UserGuideRowViewModel__title + 8);
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100474264(&qword_101922440, type metadata accessor for UserGuideRowViewModel, &unk_101208998);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_100471550@<X0>(uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  sub_100474264(&qword_101922440, type metadata accessor for UserGuideRowViewModel, &unk_101208998);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *a2;
  swift_beginAccess();
  return sub_100146A60(v3 + v6, a3);
}

uint64_t sub_100471618@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, uint64_t a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_100474264(&qword_101922440, type metadata accessor for UserGuideRowViewModel, &unk_101208998);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *a3;
  swift_beginAccess();
  return sub_100146A60(v6 + v7, a4);
}

uint64_t sub_1004716E4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_100146A60(a1, v7);
  swift_getKeyPath();
  sub_100474264(&qword_101922440, type metadata accessor for UserGuideRowViewModel, &unk_101208998);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_100146AEC(v7);
}

uint64_t sub_1004717C0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  sub_100146B54(a2, a1 + v5);
  return swift_endAccess();
}

double sub_10047183C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_100474264(&qword_101922440, type metadata accessor for UserGuideRowViewModel, &unk_101208998);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return result;
}

double sub_1004718E0@<D0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_100474264(&qword_101922440, type metadata accessor for UserGuideRowViewModel, &unk_101208998);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a4 = *(v6 + *a3);

  return result;
}

double sub_100471998(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_100474264(&qword_101922440, type metadata accessor for UserGuideRowViewModel, &unk_101208998);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

uint64_t sub_100471A7C()
{
  swift_getKeyPath();
  sub_100474264(&qword_101922440, type metadata accessor for UserGuideRowViewModel, &unk_101208998);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC4Maps21UserGuideRowViewModel__actionHandler);

  return v1;
}

double sub_100471B38@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100474264(&qword_101922440, type metadata accessor for UserGuideRowViewModel, &unk_101208998);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v3 + OBJC_IVAR____TtC4Maps21UserGuideRowViewModel__actionHandler);
  v4 = *(v3 + OBJC_IVAR____TtC4Maps21UserGuideRowViewModel__actionHandler + 8);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_100474338;
  a2[1] = v6;

  return result;
}

double sub_100471C1C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  swift_getKeyPath();
  sub_100474264(&qword_101922440, type metadata accessor for UserGuideRowViewModel, &unk_101208998);

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

uint64_t sub_100471D38()
{
  v1 = v0;
  v2 = type metadata accessor for RichTextType();
  v30[0] = v2;
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC4Maps21UserGuideRowViewModel_userGuide);
  swift_getKeyPath();
  v32 = OBJC_IVAR____TtC4Maps9UserGuide___observationRegistrar;
  v39[0] = v6;
  v30[1] = sub_100474264(&qword_10190C910, type metadata accessor for UserGuide, &unk_1011FF7CC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *(v6 + OBJC_IVAR____TtC4Maps9UserGuide__title);
  v8 = *(v6 + OBJC_IVAR____TtC4Maps9UserGuide__title + 8);

  sub_1004713AC(v7, v8);
  sub_1000CE6B8(&unk_1019157F0, qword_1011E4FB0);
  v9 = swift_allocObject();
  v31 = xmmword_1011E1D30;
  *(v9 + 16) = xmmword_1011E1D30;
  sub_1000CE6B8(&qword_10190A070, &unk_1011E78E0);
  type metadata accessor for RichTextViewModel();
  v10 = swift_allocObject();
  *(v10 + 16) = v31;
  (*(v3 + 104))(v5, enum case for RichTextType.line(_:), v2);
  swift_getKeyPath();
  v39[0] = v6;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

  (*(v3 + 8))(v5, v30[0]);
  *(v9 + 32) = v10;
  swift_getKeyPath();
  v35 = v1;
  v36 = v9;
  v39[0] = v1;
  sub_100474264(&qword_101922440, type metadata accessor for UserGuideRowViewModel, &unk_101208998);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v11 = *(v6 + OBJC_IVAR____TtC4Maps9UserGuide_collectionHandler);
  v12 = type metadata accessor for UserGuideCoverPhotoImageProvider(0);
  v13 = objc_allocWithZone(v12);
  *&v13[OBJC_IVAR____TtC4Maps32UserGuideCoverPhotoImageProvider__image] = 0;
  v14 = v11;
  ObservationRegistrar.init()();
  *&v13[OBJC_IVAR____TtC4Maps32UserGuideCoverPhotoImageProvider_collectionHandler] = v14;
  v38.receiver = v13;
  v38.super_class = v12;
  v15 = v14;
  v16 = objc_msgSendSuper2(&v38, "init");
  [v15 addObserver:v16];

  v40 = v12;
  v41 = sub_100474264(&qword_10191F510, type metadata accessor for UserGuideCoverPhotoImageProvider, &unk_10120F134);
  v39[0] = v16;
  swift_getKeyPath();
  v33 = v1;
  v34 = v39;
  v37 = v1;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_100146AEC(v39);
  swift_getKeyPath();
  v39[0] = v6;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v17 = *(v6 + OBJC_IVAR____TtC4Maps9UserGuide__publisherImage);
  if (v17)
  {
    v18 = sub_1000F1178();
    v19 = sub_100474264(&qword_10190DE60, sub_1000F1178, &protocol conformance descriptor for UIImage);
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v39[1] = 0;
    v39[2] = 0;
  }

  v39[0] = v17;
  v40 = v18;
  v41 = v19;
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  v37 = v1;
  v21 = v17;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_100146AEC(v39);
  swift_getKeyPath();
  v39[0] = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v22 = (v1 + OBJC_IVAR____TtC4Maps21UserGuideRowViewModel__actionHandler);
  v23 = *(v1 + OBJC_IVAR____TtC4Maps21UserGuideRowViewModel__actionHandler);
  v24 = *(v1 + OBJC_IVAR____TtC4Maps21UserGuideRowViewModel__actionHandler + 8);

  if (sub_100472990(v23, v24)[2])
  {
    sub_1000CE6B8(&unk_10190D580, &unk_1011E9400);
    type metadata accessor for TrailingAccessoryViewModel();
    *(swift_allocObject() + 16) = v31;
    static TrailingAccessoryViewModel.more(actions:onMenuPresentationChanged:customMenuContent:)();
  }

  v25 = swift_getKeyPath();
  __chkstk_darwin(v25);
  v39[0] = v1;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_getKeyPath();
  v39[0] = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v26 = *v22;
  v27 = v22[1];

  sub_1004739C0(v6, v26, v27);

  v28 = swift_getKeyPath();
  __chkstk_darwin(v28);
  v39[0] = v1;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void sub_1004725D8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_100471D38();
  }
}

double (*sub_10047262C(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1004738A0;
}

double sub_100472690()
{
  v0 = sub_1000CE6B8(&unk_10190BA50, &unk_1011E4800);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v5 = static MainActor.shared.getter();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = &protocol witness table for MainActor;
  v6[4] = v4;

  sub_10020AAE4(0, 0, v2, &unk_101208BC8, v6);

  return result;
}

uint64_t sub_1004727E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  type metadata accessor for MainActor();
  *(v4 + 48) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10047287C, v6, v5);
}

uint64_t sub_10047287C()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    swift_allocObject();
    swift_unknownObjectWeakInit();
    *(swift_task_alloc() + 16) = v2;
    withObservationTracking<A>(_:onChange:)();
  }

  v3 = *(v0 + 8);

  return v3();
}

void *sub_100472990(uint64_t a1, uint64_t a2)
{
  v61 = a2;
  v56 = a1;
  v3 = type metadata accessor for MapsDesignAccessibilityString();
  v58 = *(v3 - 8);
  v59 = v3;
  __chkstk_darwin(v3);
  v5 = (v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for CellAction.Style();
  v53 = *(v6 - 8);
  v54 = v6;
  __chkstk_darwin(v6);
  v57 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CellAction.Placement();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v55 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v47 - v12;
  v14 = type metadata accessor for CellAction();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v49 = v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v51 = v47 - v18;
  v19 = *(v2 + OBJC_IVAR____TtC4Maps21UserGuideRowViewModel_userGuide);
  swift_getKeyPath();
  v20 = OBJC_IVAR____TtC4Maps9UserGuide___observationRegistrar;
  v62 = v19;
  v21 = sub_100474264(&qword_10190C910, type metadata accessor for UserGuide, &unk_1011FF7CC);
  v52 = v20;
  countAndFlagsBits = v21;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v22 = *(v19 + OBJC_IVAR____TtC4Maps9UserGuide__canShare);
  v60 = v14;
  if (v22 == 1)
  {
    object = v15;
    (*(v9 + 104))(v13, enum case for CellAction.Placement.default(_:), v8);
    v23 = v8;
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v63._object = 0x800000010121C800;
    v24._countAndFlagsBits = 0x7972617262694C5BLL;
    v24._object = 0xEF6572616853205DLL;
    v25._countAndFlagsBits = 0x6572616853;
    v63._countAndFlagsBits = 0xD00000000000002ELL;
    v25._object = 0xE500000000000000;
    v26 = NSLocalizedString(_:tableName:bundle:value:comment:)(v24, 0, qword_1019600D8, v25, v63);
    v47[1] = v26._object;
    v47[2] = v26._countAndFlagsBits;
    v27 = swift_allocObject();
    v28 = v57;
    v29 = v61;
    *(v27 + 16) = v56;
    *(v27 + 24) = v29;
    *(v27 + 32) = 2;
    (*(v53 + 104))(v28, enum case for CellAction.Style.default(_:), v54);
    (*(v9 + 16))(v55, v13, v23);
    *v5 = 0x6572616853;
    v5[1] = 0xE500000000000000;
    (*(v58 + 104))(v5, enum case for MapsDesignAccessibilityString.button(_:), v59);

    CellAction.init(title:systemImage:action:style:placement:hasDivider:actionAXID:)();
    v30 = v9;
    (*(v9 + 8))(v13, v23);
    v31 = sub_100355E1C(0, 1, 1, _swiftEmptyArrayStorage);
    v33 = v31[2];
    v32 = v31[3];
    v8 = v23;
    if (v33 >= v32 >> 1)
    {
      v31 = sub_100355E1C((v32 > 1), v33 + 1, 1, v31);
    }

    v15 = object;
    v31[2] = v33 + 1;
    v15[4](v31 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + v15[9] * v33, v51, v60);
  }

  else
  {
    v30 = v9;
    v31 = _swiftEmptyArrayStorage;
  }

  swift_getKeyPath();
  v62 = v19;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v19 + OBJC_IVAR____TtC4Maps9UserGuide__canDelete) == 1)
  {
    v34 = v30;
    (*(v30 + 104))(v13, enum case for CellAction.Placement.default(_:), v8);
    v51 = v8;
    v52 = v13;
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v64._object = 0x800000010121C870;
    v35._countAndFlagsBits = 0xD00000000000001ELL;
    v35._object = 0x800000010121C830;
    v36._countAndFlagsBits = 0xD000000000000012;
    v36._object = 0x800000010121C850;
    v64._countAndFlagsBits = 0xD000000000000040;
    v37 = NSLocalizedString(_:tableName:bundle:value:comment:)(v35, 0, qword_1019600D8, v36, v64);
    countAndFlagsBits = v37._countAndFlagsBits;
    object = v37._object;
    v38 = swift_allocObject();
    v39 = v57;
    v40 = v61;
    *(v38 + 16) = v56;
    *(v38 + 24) = v40;
    *(v38 + 32) = 8;
    (*(v53 + 104))(v39, enum case for CellAction.Style.destructive(_:), v54);
    v42 = v51;
    v41 = v52;
    (*(v34 + 16))(v55, v52, v51);
    *v5 = 0xD000000000000011;
    v5[1] = 0x80000001012249C0;
    (*(v58 + 104))(v5, enum case for MapsDesignAccessibilityString.button(_:), v59);

    v43 = v49;
    CellAction.init(title:systemImage:action:style:placement:hasDivider:actionAXID:)();
    (*(v34 + 8))(v41, v42);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_100355E1C(0, v31[2] + 1, 1, v31);
    }

    v45 = v31[2];
    v44 = v31[3];
    if (v45 >= v44 >> 1)
    {
      v31 = sub_100355E1C((v44 > 1), v45 + 1, 1, v31);
    }

    v31[2] = v45 + 1;
    (v15[4])(v31 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + v15[9] * v45, v43);
  }

  return v31;
}

uint64_t type metadata accessor for UserGuideRowViewModel(uint64_t a1)
{
  result = qword_101922428;
  if (!qword_101922428)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100473398(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100473498@<X0>(uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *v3;
  swift_getKeyPath();
  sub_100474264(&qword_101922440, type metadata accessor for UserGuideRowViewModel, &unk_101208998);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *a2;
  swift_beginAccess();
  return sub_100146A60(v6 + v7, a3);
}

uint64_t sub_100473564()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_100474264(&qword_101922440, type metadata accessor for UserGuideRowViewModel, &unk_101208998);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v1 + OBJC_IVAR____TtC4Maps21UserGuideRowViewModel__title);

  return v2;
}

double sub_100473648(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_getKeyPath();
  sub_100474264(&qword_101922440, type metadata accessor for UserGuideRowViewModel, &unk_101208998);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return result;
}

double sub_100473718@<D0>(void *a1@<X8>)
{
  v2 = (*(*v1 + OBJC_IVAR____TtC4Maps21UserGuideRowViewModel_userGuide) + OBJC_IVAR____TtC4Maps9UserGuide_id);
  v3 = v2[1];
  *a1 = *v2;
  a1[1] = v3;

  return result;
}

uint64_t sub_10047380C()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC4Maps21UserGuideRowViewModel__title);
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_1004738A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003AC4C;

  return sub_1004727E4(a1, v4, v5, v6);
}

double (*sub_10047395C())()
{
  v1 = *(v0 + 16);
  *(swift_allocObject() + 16) = v1;
  v2 = v1;
  return sub_1004738A0;
}

void *sub_1004739C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = a2;
  v50 = a3;
  v4 = type metadata accessor for MapsDesignAccessibilityString();
  v52 = *(v4 - 8);
  v53 = v4;
  __chkstk_darwin(v4);
  v6 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CellAction.Style();
  v46 = *(v7 - 8);
  v47 = v7;
  __chkstk_darwin(v7);
  v51 = (v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for CellAction.Placement();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v48 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v40 - v13;
  v15 = type metadata accessor for CellAction();
  v54 = *(v15 - 8);
  __chkstk_darwin(v15);
  v43 = v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  countAndFlagsBits = v40 - v18;
  swift_getKeyPath();
  v19 = OBJC_IVAR____TtC4Maps9UserGuide___observationRegistrar;
  v55 = a1;
  v45 = sub_100474264(&qword_10190C910, type metadata accessor for UserGuide, &unk_1011FF7CC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(a1 + OBJC_IVAR____TtC4Maps9UserGuide__canDelete) == 1)
  {
    v40[2] = v19;
    object = v15;
    (*(v10 + 104))(v14, enum case for CellAction.Placement.default(_:), v9);
    v20 = v10;
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v56._object = 0x800000010121D3F0;
    v21._object = 0xEF6574656C65445FLL;
    v22._countAndFlagsBits = 0x6574656C6544;
    v56._countAndFlagsBits = 0xD000000000000036;
    v21._countAndFlagsBits = 0x6570697753776F52;
    v22._object = 0xE600000000000000;
    v40[1] = NSLocalizedString(_:tableName:bundle:value:comment:)(v21, 0, qword_1019600D8, v22, v56)._countAndFlagsBits;
    v23 = swift_allocObject();
    v24 = v50;
    *(v23 + 16) = v49;
    *(v23 + 24) = v24;
    *(v23 + 32) = 11;
    (*(v46 + 104))(v51, enum case for CellAction.Style.destructive(_:), v47);
    (*(v20 + 16))(v48, v14, v9);
    strcpy(v6, "Swipe.Delete");
    v6[13] = 0;
    *(v6 + 7) = -5120;
    (*(v52 + 104))(v6, enum case for MapsDesignAccessibilityString.button(_:), v53);

    v41 = v6;
    CellAction.init(title:systemImage:action:style:placement:hasDivider:actionAXID:)();
    (*(v20 + 8))(v14, v9);
    v25 = sub_100355E1C(0, 1, 1, _swiftEmptyArrayStorage);
    v27 = v25[2];
    v26 = v25[3];
    v10 = v20;
    if (v27 >= v26 >> 1)
    {
      v25 = sub_100355E1C((v26 > 1), v27 + 1, 1, v25);
    }

    v25[2] = v27 + 1;
    v28 = v25 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v27;
    v15 = object;
    (*(v54 + 32))(v28, countAndFlagsBits, object);
    v6 = v41;
  }

  else
  {
    v25 = _swiftEmptyArrayStorage;
  }

  swift_getKeyPath();
  v55 = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(a1 + OBJC_IVAR____TtC4Maps9UserGuide__canShare) == 1)
  {
    (*(v10 + 104))(v14, enum case for CellAction.Placement.default(_:), v9);
    v45 = v9;
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v57._object = 0x800000010121D3B0;
    v29._object = 0xEE0065726168535FLL;
    v30._countAndFlagsBits = 0x6572616853;
    v57._countAndFlagsBits = 0xD000000000000016;
    v29._countAndFlagsBits = 0x6570697753776F52;
    v30._object = 0xE500000000000000;
    v31 = NSLocalizedString(_:tableName:bundle:value:comment:)(v29, 0, qword_1019600D8, v30, v57);
    countAndFlagsBits = v31._countAndFlagsBits;
    object = v31._object;
    v32 = swift_allocObject();
    *(v32 + 16) = v49;
    *(v32 + 24) = v50;
    *(v32 + 32) = 10;

    v33 = static Color.blue.getter();
    v34 = v51;
    *v51 = v33;
    (*(v46 + 104))(v34, enum case for CellAction.Style.tintable(_:), v47);
    v35 = v45;
    (*(v10 + 16))(v48, v14, v45);
    *v6 = 0x68532E6570697753;
    *(v6 + 1) = 0xEB00000000657261;
    (*(v52 + 104))(v6, enum case for MapsDesignAccessibilityString.button(_:), v53);
    v36 = v43;
    CellAction.init(title:systemImage:action:style:placement:hasDivider:actionAXID:)();
    (*(v10 + 8))(v14, v35);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_100355E1C(0, v25[2] + 1, 1, v25);
    }

    v38 = v25[2];
    v37 = v25[3];
    if (v38 >= v37 >> 1)
    {
      v25 = sub_100355E1C((v37 > 1), v38 + 1, 1, v25);
    }

    v25[2] = v38 + 1;
    (*(v54 + 32))(v25 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v38, v36, v15);
  }

  return v25;
}

uint64_t sub_100474264(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1004742AC(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v6 = a1;
  v5 = a2;
  return v3(&v6, &v5);
}

void sub_1004742EC()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC4Maps21UserGuideRowViewModel__actionHandler);
  *v2 = v0[3];
  v2[1] = v1;
}

Swift::Int sub_1004743E0(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for UIListContentConfiguration();
  sub_100476464(&qword_101922548, &type metadata accessor for UIListContentConfiguration, &protocol conformance descriptor for UIListContentConfiguration);
  dispatch thunk of Hashable.hash(into:)();
  if (*(v1 + *(a1 + 20) + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void sub_1004744B4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UIListContentConfiguration();
  sub_100476464(&qword_101922548, &type metadata accessor for UIListContentConfiguration, &protocol conformance descriptor for UIListContentConfiguration);
  dispatch thunk of Hashable.hash(into:)();
  if (*(v2 + *(a2 + 20) + 8))
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_100474588(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for UIListContentConfiguration();
  sub_100476464(&qword_101922548, &type metadata accessor for UIListContentConfiguration, &protocol conformance descriptor for UIListContentConfiguration);
  dispatch thunk of Hashable.hash(into:)();
  if (*(v2 + *(a2 + 20) + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t sub_100474658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (static UIListContentConfiguration.== infix(_:_:)())
  {
    v6 = *(a3 + 20);
    v7 = (a1 + v6);
    v8 = *(a1 + v6 + 8);
    v9 = (a2 + v6);
    v10 = v9[1];
    if (v8)
    {
      if (v10)
      {
        v11 = *v7 == *v9 && v8 == v10;
        if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v10)
    {
      return 1;
    }
  }

  return 0;
}

id sub_100474750(uint64_t a1)
{
  v3 = type metadata accessor for LibraryHomeCellWithBadgeViewModel(0);
  __chkstk_darwin(v3);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = OBJC_IVAR____TtC4Maps24LibraryHomeCellWithBadge_viewModel;
  swift_beginAccess();
  sub_1004765A4(v1 + v6, v5);
  if (static UIListContentConfiguration.== infix(_:_:)())
  {
    v7 = *(v3 + 20);
    v8 = &v5[v7];
    v9 = *&v5[v7 + 8];
    v10 = (a1 + v7);
    v11 = v10[1];
    if (v9)
    {
      if (v11)
      {
        v12 = *v8 == *v10 && v9 == v11;
        if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          return sub_1004764E4(v5);
        }
      }
    }

    else if (!v11)
    {
      return sub_1004764E4(v5);
    }
  }

  sub_1004764E4(v5);
  swift_beginAccess();
  sub_100476678(a1, v1 + v6);
  swift_endAccess();
  return [v1 setNeedsUpdateConfiguration];
}

uint64_t sub_100474A7C(uint64_t a1)
{
  v2 = type metadata accessor for LibraryHomeCellWithBadgeViewModel(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000CE6B8(&qword_101922558, &qword_101208DD8);
  __chkstk_darwin(v6 - 8);
  v8 = v13 - v7;
  if (qword_101906898 != -1)
  {
    swift_once();
  }

  v9 = qword_101922448;
  sub_100476608(a1, v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    v10 = v9;
    sub_100024F64(v8, &qword_101922558, &qword_101208DD8);
    memset(v13, 0, sizeof(v13));
    v14 = 0;
  }

  else
  {
    sub_100476540(v8, v5);
    sub_100476464(&qword_101922578, type metadata accessor for LibraryHomeCellWithBadgeViewModel, &unk_101208D8C);
    v11 = v9;
    AnyHashable.init<A>(_:)();
  }

  UICellConfigurationState.subscript.setter();
  return sub_100024F64(a1, &qword_101922558, &qword_101208DD8);
}

id sub_100474C94()
{
  v1 = v0;
  v2 = type metadata accessor for UIListContentConfiguration();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LibraryHomeCellWithBadgeViewModel(0);
  __chkstk_darwin(v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC4Maps24LibraryHomeCellWithBadge____lazy_storage___listContentView;
  v10 = *(v1 + OBJC_IVAR____TtC4Maps24LibraryHomeCellWithBadge____lazy_storage___listContentView);
  if (v10)
  {
    v11 = *(v1 + OBJC_IVAR____TtC4Maps24LibraryHomeCellWithBadge____lazy_storage___listContentView);
  }

  else
  {
    sub_100014C84(0, &qword_101922568, UIListContentView_ptr);
    static UIListContentConfiguration.valueCell()();
    v12 = &v8[*(v6 + 20)];
    *v12 = 0;
    *(v12 + 1) = 0;
    (*(v3 + 16))(v5, v8, v2);
    sub_1004764E4(v8);
    v13 = UIListContentView.init(configuration:)();
    v14 = *(v1 + v9);
    *(v1 + v9) = v13;
    v11 = v13;

    v10 = 0;
  }

  v15 = v10;
  return v11;
}

id sub_100474E2C()
{
  v1 = v0;
  v2 = type metadata accessor for Badge();
  __chkstk_darwin(v2 - 8);
  v3 = OBJC_IVAR____TtC4Maps24LibraryHomeCellWithBadge____lazy_storage___badgeView;
  v4 = *(v0 + OBJC_IVAR____TtC4Maps24LibraryHomeCellWithBadge____lazy_storage___badgeView);
  if (v4)
  {
    v5 = *(v0 + OBJC_IVAR____TtC4Maps24LibraryHomeCellWithBadge____lazy_storage___badgeView);
  }

  else
  {
    Badge.init(text:)();
    v6 = objc_allocWithZone(sub_1000CE6B8(&qword_101922570, &unk_101208DE8));
    v7 = _UIHostingView.init(rootView:)();
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = *(v1 + v3);
    *(v1 + v3) = v7;
    v5 = v7;

    v4 = 0;
  }

  v9 = v4;
  return v5;
}

id sub_100474F20(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for LibraryHomeCellWithBadgeViewModel(0);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC4Maps24LibraryHomeCellWithBadge____lazy_storage___listContentView] = 0;
  *&v4[OBJC_IVAR____TtC4Maps24LibraryHomeCellWithBadge____lazy_storage___badgeView] = 0;
  v4[OBJC_IVAR____TtC4Maps24LibraryHomeCellWithBadge_isListContentViewSetup] = 0;
  v14 = &v4[OBJC_IVAR____TtC4Maps24LibraryHomeCellWithBadge_badgeViewConstraints];
  *v14 = 0;
  v14[1] = 0;
  static UIListContentConfiguration.valueCell()();
  v15 = &v13[*(v11 + 28)];
  *v15 = 0;
  *(v15 + 1) = 0;
  sub_100476540(v13, &v4[OBJC_IVAR____TtC4Maps24LibraryHomeCellWithBadge_viewModel]);
  v17.receiver = v4;
  v17.super_class = ObjectType;
  return objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
}

void sub_1004750F4()
{
  v1 = OBJC_IVAR____TtC4Maps24LibraryHomeCellWithBadge_isListContentViewSetup;
  if ((v0[OBJC_IVAR____TtC4Maps24LibraryHomeCellWithBadge_isListContentViewSetup] & 1) == 0)
  {
    v2 = [v0 contentView];
    v3 = sub_100474C94();
    [v2 addSubview:v3];

    v4 = OBJC_IVAR____TtC4Maps24LibraryHomeCellWithBadge____lazy_storage___listContentView;
    [*&v0[OBJC_IVAR____TtC4Maps24LibraryHomeCellWithBadge____lazy_storage___listContentView] setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = objc_opt_self();
    sub_1000CE6B8(&qword_101908400, &qword_1011E2ED0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1011E5C00;
    v7 = [*&v0[v4] topAnchor];
    v8 = [v0 contentView];
    v9 = [v8 topAnchor];

    v10 = [v7 constraintEqualToAnchor:v9];
    *(v6 + 32) = v10;
    v11 = [*&v0[v4] bottomAnchor];
    v12 = [v0 contentView];
    v13 = [v12 bottomAnchor];

    v14 = [v11 constraintEqualToAnchor:v13];
    *(v6 + 40) = v14;
    v15 = [*&v0[v4] leadingAnchor];
    v16 = [v0 contentView];
    v17 = [v16 leadingAnchor];

    v18 = [v15 constraintEqualToAnchor:v17];
    *(v6 + 48) = v18;
    v19 = [*&v0[v4] trailingAnchor];
    v20 = [v0 contentView];
    v21 = [v20 trailingAnchor];

    v22 = [v19 constraintEqualToAnchor:v21];
    *(v6 + 56) = v22;
    sub_100014C84(0, &qword_10190B720, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v5 activateConstraints:isa];

    v0[v1] = 1;
  }

  v24 = sub_100474C94();
  v44 = [v24 textLayoutGuide];

  if (v44)
  {
    v25 = &v0[OBJC_IVAR____TtC4Maps24LibraryHomeCellWithBadge_badgeViewConstraints];
    if (*&v0[OBJC_IVAR____TtC4Maps24LibraryHomeCellWithBadge_badgeViewConstraints])
    {

      return;
    }

    v30 = [v0 contentView];
    v31 = sub_100474E2C();
    [v30 addSubview:v31];

    v32 = OBJC_IVAR____TtC4Maps24LibraryHomeCellWithBadge____lazy_storage___badgeView;
    v33 = [*&v0[OBJC_IVAR____TtC4Maps24LibraryHomeCellWithBadge____lazy_storage___badgeView] leadingAnchor];
    v34 = [v44 trailingAnchor];
    v35 = [v33 constraintEqualToAnchor:v34 constant:8.0];

    v36 = [*&v0[v32] centerYAnchor];
    v37 = [v44 centerYAnchor];
    v38 = [v36 constraintEqualToAnchor:v37];

    v39 = objc_opt_self();
    sub_1000CE6B8(&qword_101908400, &qword_1011E2ED0);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1011E4FD0;
    *(v40 + 32) = v35;
    *(v40 + 40) = v38;
    sub_100014C84(0, &qword_10190B720, NSLayoutConstraint_ptr);
    v41 = v35;
    v42 = v38;
    v43 = Array._bridgeToObjectiveC()().super.isa;

    [v39 activateConstraints:v43];

    v28 = *v25;
    v29 = *(v25 + 1);
    *v25 = v41;
    *(v25 + 1) = v42;
  }

  else
  {
    v26 = sub_100474E2C();
    [v26 removeFromSuperview];

    v27 = &v0[OBJC_IVAR____TtC4Maps24LibraryHomeCellWithBadge_badgeViewConstraints];
    v28 = *&v0[OBJC_IVAR____TtC4Maps24LibraryHomeCellWithBadge_badgeViewConstraints];
    v29 = *&v0[OBJC_IVAR____TtC4Maps24LibraryHomeCellWithBadge_badgeViewConstraints + 8];
    *v27 = 0;
    *(v27 + 1) = 0;
  }

  sub_1003F2B30(v28, v29);
}

void sub_100475674(uint64_t a1)
{
  v2 = v1;
  v58 = a1;
  v3 = sub_1000CE6B8(&qword_101922550, &qword_101208DD0);
  __chkstk_darwin(v3 - 8);
  v63 = &v58 - v4;
  v5 = sub_1000CE6B8(&qword_101922558, &qword_101208DD8);
  __chkstk_darwin(v5 - 8);
  v62 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v61 = &v58 - v8;
  __chkstk_darwin(v9);
  v59 = &v58 - v10;
  v11 = type metadata accessor for Badge();
  __chkstk_darwin(v11 - 8);
  v60 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000CE6B8(&unk_101923780, &qword_101208DE0);
  __chkstk_darwin(v13 - 8);
  v15 = &v58 - v14;
  v16 = type metadata accessor for UICellAccessory.DisclosureIndicatorOptions();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for UICellAccessory.DisplayedState();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004750F4();
  sub_1000CE6B8(&qword_101922560, &unk_10120AE40);
  type metadata accessor for UICellAccessory();
  *(swift_allocObject() + 16) = xmmword_1011E1D30;
  (*(v21 + 104))(v23, enum case for UICellAccessory.DisplayedState.always(_:), v20);
  v24 = type metadata accessor for UICellAccessory.LayoutDimension();
  (*(*(v24 - 8) + 56))(v15, 1, 1, v24);
  UICellAccessory.DisclosureIndicatorOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
  static UICellAccessory.disclosureIndicator(displayed:options:)();
  (*(v17 + 8))(v19, v16);
  (*(v21 + 8))(v23, v20);
  UICollectionViewListCell.accessories.setter();
  v25 = v1;
  v26 = sub_100474E2C();
  if (qword_101906898 != -1)
  {
    swift_once();
  }

  UICellConfigurationState.subscript.getter();
  if (!v65)
  {
    sub_100024F64(v64, &qword_10191A570, &qword_1011E6900);
    v35 = type metadata accessor for LibraryHomeCellWithBadgeViewModel(0);
    v28 = v59;
    (*(*(v35 - 8) + 56))(v59, 1, 1, v35);
    v33 = v61;
    v32 = v62;
    goto LABEL_8;
  }

  v27 = type metadata accessor for LibraryHomeCellWithBadgeViewModel(0);
  v28 = v59;
  v29 = swift_dynamicCast();
  v30 = *(v27 - 8);
  (*(v30 + 56))(v28, v29 ^ 1u, 1, v27);
  v31 = (*(v30 + 48))(v28, 1, v27);
  v33 = v61;
  v32 = v62;
  if (v31 == 1)
  {
LABEL_8:
    sub_100024F64(v28, &qword_101922558, &qword_101208DD8);
    goto LABEL_9;
  }

  v34 = *(v28 + *(v27 + 20) + 8);

  sub_1004764E4(v28);
  if (!v34)
  {
LABEL_9:
  }

  Badge.init(text:)();
  dispatch thunk of _UIHostingView.rootView.setter();

  v36 = *(v25 + OBJC_IVAR____TtC4Maps24LibraryHomeCellWithBadge____lazy_storage___badgeView);
  UICellConfigurationState.subscript.getter();
  if (!v65)
  {
    sub_100024F64(v64, &qword_10191A570, &qword_1011E6900);
    v44 = type metadata accessor for LibraryHomeCellWithBadgeViewModel(0);
    (*(*(v44 - 8) + 56))(v33, 1, 1, v44);
    goto LABEL_16;
  }

  v37 = type metadata accessor for LibraryHomeCellWithBadgeViewModel(0);
  v38 = swift_dynamicCast();
  v39 = *(v37 - 8);
  (*(v39 + 56))(v33, v38 ^ 1u, 1, v37);
  if ((*(v39 + 48))(v33, 1, v37) == 1)
  {
LABEL_16:
    sub_100024F64(v33, &qword_101922558, &qword_101208DD8);
    goto LABEL_17;
  }

  v40 = *(v33 + *(v37 + 20) + 8);

  sub_1004764E4(v33);
  if (v40)
  {
    String._mapsui_nilIfEmpty.getter();
    v42 = v41;

    if (v42)
    {

      v43 = 0;
      goto LABEL_18;
    }
  }

LABEL_17:
  v43 = 1;
LABEL_18:
  [v36 setHidden:{v43, v58}];

  v45 = sub_100474C94();
  UICellConfigurationState.subscript.getter();
  if (v65)
  {
    v46 = type metadata accessor for LibraryHomeCellWithBadgeViewModel(0);
    v47 = swift_dynamicCast();
    v48 = *(v46 - 8);
    (*(v48 + 56))(v32, v47 ^ 1u, 1, v46);
    v49 = (*(v48 + 48))(v32, 1, v46);
    v50 = v63;
    if (v49 != 1)
    {
      v51 = type metadata accessor for UIListContentConfiguration();
      v52 = *(v51 - 8);
      (*(v52 + 16))(v50, v32, v51);
      sub_1004764E4(v32);
      (*(v52 + 56))(v50, 0, 1, v51);
      goto LABEL_23;
    }
  }

  else
  {
    sub_100024F64(v64, &qword_10191A570, &qword_1011E6900);
    v53 = type metadata accessor for LibraryHomeCellWithBadgeViewModel(0);
    (*(*(v53 - 8) + 56))(v32, 1, 1, v53);
    v50 = v63;
  }

  sub_100024F64(v32, &qword_101922558, &qword_101208DD8);
  v51 = type metadata accessor for UIListContentConfiguration();
  (*(*(v51 - 8) + 56))(v50, 1, 1, v51);
LABEL_23:
  type metadata accessor for UIListContentConfiguration();
  v65 = v51;
  v66 = &protocol witness table for UIListContentConfiguration;
  v54 = sub_10001A848(v64);
  v55 = *(v51 - 8);
  v56 = *(v55 + 48);
  if (v56(v50, 1, v51) == 1)
  {
    v57 = OBJC_IVAR____TtC4Maps24LibraryHomeCellWithBadge_viewModel;
    swift_beginAccess();
    (*(v55 + 16))(v54, v2 + v57, v51);
    if (v56(v50, 1, v51) != 1)
    {
      sub_100024F64(v50, &qword_101922550, &qword_101208DD0);
    }
  }

  else
  {
    (*(v55 + 32))(v54, v50, v51);
  }

  UIListContentView.configuration.setter();

  sub_1004750F4();
}

uint64_t sub_1004762A0(uint64_t a1)
{
  result = type metadata accessor for LibraryHomeCellWithBadgeViewModel(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_100476398(uint64_t a1)
{
  type metadata accessor for UIListContentConfiguration();
  if (v1 <= 0x3F)
  {
    sub_10017F3EC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100476464(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

NSString sub_1004764AC()
{
  result = String._bridgeToObjectiveC()();
  qword_101922448 = result;
  return result;
}

uint64_t sub_1004764E4(uint64_t a1)
{
  v2 = type metadata accessor for LibraryHomeCellWithBadgeViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100476540(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LibraryHomeCellWithBadgeViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004765A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LibraryHomeCellWithBadgeViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100476608(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_101922558, &qword_101208DD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100476678(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LibraryHomeCellWithBadgeViewModel(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for UserGuidesListView(uint64_t a1)
{
  result = qword_1019225E0;
  if (!qword_1019225E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100476750(uint64_t a1)
{
  sub_1004768BC(319, &qword_1019225F0, type metadata accessor for UserGuidesListViewModel);
  if (v1 <= 0x3F)
  {
    sub_1004768BC(319, &qword_10190CAB0, &type metadata accessor for EditMode);
    if (v2 <= 0x3F)
    {
      sub_100476858(319);
      if (v3 <= 0x3F)
      {
        sub_1004768BC(319, &qword_10190CAE0, &type metadata accessor for ActionBarViewModel);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100476858(uint64_t a1)
{
  if (!qword_1019225F8)
  {
    sub_1000D6664(&unk_101922600, &qword_101208E28);
    v1 = type metadata accessor for State();
    if (!v2)
    {
      atomic_store(v1, &qword_1019225F8);
    }
  }
}

void sub_1004768BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for State();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void *sub_10047693C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *&v27 = a2;
  v5 = type metadata accessor for ActionBarItemType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for EditMode();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v27 - v14;
  v28 = a1;
  type metadata accessor for UserGuidesListViewModel(0);
  State.init(wrappedValue:)();
  v16 = v30;
  *a3 = v29;
  a3[1] = v16;
  v17 = type metadata accessor for UserGuidesListView(0);
  (*(v10 + 104))(v15, enum case for EditMode.inactive(_:), v9);
  (*(v10 + 16))(v12, v15, v9);
  State.init(wrappedValue:)();
  (*(v10 + 8))(v15, v9);
  v18 = (a3 + *(v17 + 24));
  v28 = v27;
  sub_1000CE6B8(&unk_101922600, &qword_101208E28);
  State.init(wrappedValue:)();
  v19 = v30;
  *v18 = v29;
  v18[1] = v19;
  v20 = (a3 + *(v17 + 28));
  sub_1000CE6B8(&qword_101908400, &qword_1011E2ED0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1011E4FD0;
  v22 = *(v6 + 104);
  v22(v8, enum case for ActionBarItemType.addToList(_:), v5);
  type metadata accessor for ActionBarItemViewModel();
  swift_allocObject();
  *(v21 + 32) = ActionBarItemViewModel.init(_:)();
  v22(v8, enum case for ActionBarItemType.select(_:), v5);
  swift_allocObject();
  *(v21 + 40) = ActionBarItemViewModel.init(_:)();
  v23 = swift_allocObject();
  v27 = xmmword_1011E47B0;
  *(v23 + 16) = xmmword_1011E47B0;
  v22(v8, enum case for ActionBarItemType.delete(_:), v5);
  swift_allocObject();
  *(v23 + 32) = ActionBarItemViewModel.init(_:disabled:)();
  v24 = swift_allocObject();
  *(v24 + 16) = v27;
  v22(v8, enum case for ActionBarItemType.done(_:), v5);
  swift_allocObject();
  *(v24 + 32) = ActionBarItemViewModel.init(_:)();
  type metadata accessor for ActionBarViewModel();
  swift_allocObject();
  v28 = ActionBarViewModel.init(leadingItems:centeredItems:trailingItems:leadingEditItems:centeredEditItems:trailingEditItems:forceExpandedSearch:)();
  result = State.init(wrappedValue:)();
  v26 = v30;
  *v20 = v29;
  v20[1] = v26;
  return result;
}

void sub_100476D64(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10047B8A0(&qword_10190C910, type metadata accessor for UserGuide, &unk_1011FF7CC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC4Maps9UserGuide__canDelete);
}

double sub_100476E3C@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10047B8A0(&qword_101917FC8, type metadata accessor for UserGuidesListViewModel, &unk_101208700);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);

  return result;
}

double sub_100476EE8(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10047B8A0(&qword_101917FC8, type metadata accessor for UserGuidesListViewModel, &unk_101208700);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

void sub_100476FB4(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10047B8A0(&qword_101917FC8, type metadata accessor for UserGuidesListViewModel, &unk_101208700);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 24);
}

uint64_t sub_100477084@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10047B8A0(&qword_101917FC8, type metadata accessor for UserGuidesListViewModel, &unk_101208700);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 40);
  v5 = *(v3 + 48);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1001574D8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4, v5);
}

double sub_100477170(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_1001574D4;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v2, v3);
  sub_10047B8A0(&qword_101917FC8, type metadata accessor for UserGuidesListViewModel, &unk_101208700);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v5, v4);

  return result;
}

uint64_t sub_1004772CC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10047B8A0(&qword_101917FC8, type metadata accessor for UserGuidesListViewModel, &unk_101208700);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 56);
  v5 = *(v3 + 64);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1000D8864;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4, v5);
}

double sub_1004773B8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_1000D882C;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v2, v3);
  sub_10047B8A0(&qword_101917FC8, type metadata accessor for UserGuidesListViewModel, &unk_101208700);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v5, v4);

  return result;
}

uint64_t sub_100477514@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10047B8A0(&qword_101917FC8, type metadata accessor for UserGuidesListViewModel, &unk_101208700);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 104);
  v5 = *(v3 + 112);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_100060ED0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4, v5);
}

double sub_100477600(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_1001552C0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v2, v3);
  sub_10047B8A0(&qword_101917FC8, type metadata accessor for UserGuidesListViewModel, &unk_101208700);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v5, v4);

  return result;
}

uint64_t sub_10047775C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a1;
  v60 = a2;
  v3 = type metadata accessor for UserGuidesListView(0);
  v4 = *(v3 - 8);
  v62 = v3 - 8;
  v59 = v4;
  v64 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v63 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MapsDesignAccessibilityString();
  v56 = *(v6 - 8);
  v57 = v6;
  __chkstk_darwin(v6);
  v8 = (&v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v53 = type metadata accessor for ContainerBackgroundPlacement();
  v51 = *(v53 - 8);
  __chkstk_darwin(v53);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1000CE6B8(&qword_101922678, &qword_101208ED8);
  __chkstk_darwin(v50);
  v12 = &v49 - v11;
  v13 = sub_1000CE6B8(&qword_101922670, &qword_101208ED0);
  v14 = *(v13 - 8);
  v54 = v13;
  v55 = v14;
  __chkstk_darwin(v13);
  v16 = &v49 - v15;
  v52 = sub_1000CE6B8(&qword_101922660, &qword_101208EC8);
  __chkstk_darwin(v52);
  v18 = &v49 - v17;
  v58 = sub_1000CE6B8(&qword_101922640, &qword_101208EB8);
  __chkstk_darwin(v58);
  v61 = &v49 - v19;
  *v12 = static HorizontalAlignment.center.getter();
  *(v12 + 1) = 0;
  v12[16] = 0;
  v20 = sub_1000CE6B8(&qword_101922698, &unk_101208EF8);
  sub_100477F40(a1, &v12[*(v20 + 44)]);
  v66 = static Color.clear.getter();
  static ContainerBackgroundPlacement.navigation.getter();
  v21 = sub_1000414C8(&qword_101922680, &qword_101922678, &qword_101208ED8, &protocol conformance descriptor for VStack<A>);
  v22 = v50;
  View.containerBackground<A>(_:for:)();
  (*(v51 + 8))(v10, v53);

  sub_100024F64(v12, &qword_101922678, &qword_101208ED8);
  *v8 = 0x6469754772657355;
  v8[1] = 0xEA00000000007365;
  v24 = v56;
  v23 = v57;
  (*(v56 + 104))(v8, enum case for MapsDesignAccessibilityString.view(_:), v57);
  v66 = v22;
  v67 = &type metadata for Color;
  v68 = v21;
  v69 = &protocol witness table for Color;
  swift_getOpaqueTypeConformance2();
  v25 = v54;
  View.mapsDesignAXContainer(withID:)();
  (*(v24 + 8))(v8, v23);
  (*(v55 + 8))(v16, v25);
  v26 = &v18[*(v52 + 36)];
  v27 = v49;
  sub_100478E80(v49, v26);
  *(v26 + *(sub_1000CE6B8(&qword_101922690, &unk_101208EE0) + 36)) = 1;
  v28 = (v27 + *(v62 + 36));
  v30 = *v28;
  v29 = v28[1];
  v66 = v30;
  v67 = v29;
  sub_1000CE6B8(&qword_10190A148, &qword_1011E5130);
  State.wrappedValue.getter();
  v31 = v63;
  sub_10047ADEC(v27, v63);
  v32 = (*(v59 + 80) + 16) & ~*(v59 + 80);
  v33 = swift_allocObject();
  sub_10047AE50(v31, v33 + v32);
  sub_10047AC6C();
  v34 = v61;
  View.actionBar(_:onSelect:)();

  sub_100024F64(v18, &qword_101922660, &qword_101208EC8);
  v35 = static Animation.default.getter();
  v36 = &v34[*(sub_1000CE6B8(&qword_101922658, &qword_101208EC0) + 36)];
  sub_1000CE6B8(&qword_10190A110, &unk_1011E5110);
  sub_1000CE6B8(&qword_10190CA30, &unk_101208E00);
  State.wrappedValue.getter();
  *v36 = v35;
  KeyPath = swift_getKeyPath();
  v38 = &v34[*(v58 + 36)];
  v39 = *(sub_1000CE6B8(&qword_10190A120, &qword_101208EF0) + 28);
  State.projectedValue.getter();
  v40 = sub_1000CE6B8(&qword_10190A168, &qword_1011E51A0);
  (*(*(v40 - 8) + 56))(v38 + v39, 0, 1, v40);
  *v38 = KeyPath;
  v41 = (v27 + *(v62 + 32));
  v43 = *v41;
  v42 = v41[1];
  v66 = v43;
  v67 = v42;
  sub_1000CE6B8(&qword_1019226A0, &unk_101208F40);
  State.wrappedValue.getter();
  v44 = *(v65 + 16);

  v66 = v44;
  v45 = v63;
  sub_10047ADEC(v27, v63);
  v46 = swift_allocObject();
  sub_10047AE50(v45, v46 + v32);
  sub_10047AAC0();
  v47 = v61;
  View.onChange<A>(of:initial:_:)();

  return sub_100024F64(v47, &qword_101922640, &qword_101208EB8);
}

uint64_t sub_100477F40@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v3 = type metadata accessor for ListSectionSpacing();
  v66 = *(v3 - 8);
  v67 = v3;
  __chkstk_darwin(v3);
  v65 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MapsDesignAccessibilityString();
  v63 = *(v5 - 8);
  v64 = v5;
  __chkstk_darwin(v5);
  v7 = (&v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1000CE6B8(&qword_1019226C0, &qword_101208FC0);
  v61 = *(v8 - 8);
  v62 = v8;
  __chkstk_darwin(v8);
  v60 = &v54 - v9;
  v72 = sub_1000CE6B8(&qword_1019226C8, &qword_101208FC8);
  __chkstk_darwin(v72);
  v68 = &v54 - v10;
  v69 = sub_1000CE6B8(&qword_1019226D0, &qword_101208FD0);
  __chkstk_darwin(v69);
  v71 = &v54 - v11;
  v70 = sub_1000CE6B8(&qword_10190A2F8, &unk_1011F11F0);
  __chkstk_darwin(v70);
  v13 = &v54 - v12;
  v14 = sub_1000CE6B8(&qword_10191D860, &qword_1011E5510);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v54 - v19;
  v21 = *a1;
  v58 = a1[1];
  v59 = v21;
  v74 = v21;
  v75 = v58;
  v57 = sub_1000CE6B8(&qword_1019226A8, &qword_101208F50);
  State.wrappedValue.getter();
  v22 = v76;
  swift_getKeyPath();
  v74 = v22;
  v56 = sub_10047B8A0(&qword_101917FC8, type metadata accessor for UserGuidesListViewModel, &unk_101208700);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v23 = *(v22 + 16);

  if (v23)
  {
    v55 = type metadata accessor for UserGuidesListView(0);
    v24 = (a1 + *(v55 + 24));
    v26 = *v24;
    v25 = v24[1];
    v76 = v26;
    v77 = v25;
    sub_1000CE6B8(&qword_1019226A0, &unk_101208F40);
    v27 = State.projectedValue.getter();
    __chkstk_darwin(v27);
    sub_1000CE6B8(&qword_1019226D8, &qword_101209000);
    sub_10047B08C();
    v28 = v60;
    List.init(selection:content:)();

    *v7 = 0x6469754772657355;
    v7[1] = 0xEA00000000007365;
    v30 = v63;
    v29 = v64;
    (*(v63 + 104))(v7, enum case for MapsDesignAccessibilityString.list(_:), v64);
    sub_1000414C8(&qword_101922730, &qword_1019226C0, &qword_101208FC0, &protocol conformance descriptor for List<A, B>);
    v31 = v68;
    v32 = v62;
    View.mapsDesignAXID(_:)();
    (*(v30 + 8))(v7, v29);
    (*(v61 + 8))(v28, v32);
    v33 = v65;
    static ListSectionSpacing.compact.getter();
    v34 = *(sub_1000CE6B8(&qword_101922738, &qword_101209028) + 36);
    v36 = v66;
    v35 = v67;
    (*(v66 + 16))(v31 + v34, v33, v67);
    v37 = *(v36 + 56);
    v37(v31 + v34, 0, 1, v35);
    KeyPath = swift_getKeyPath();
    v39 = (v31 + *(sub_1000CE6B8(&qword_101922740, &unk_101209060) + 36));
    v40 = *(sub_1000CE6B8(&qword_10190CD00, &unk_1011EEE90) + 28);
    (*(v36 + 32))(v39 + v40, v33, v35);
    v37(v39 + v40, 0, 1, v35);
    *v39 = KeyPath;
    v41 = static Animation.default.getter();
    v74 = v59;
    v75 = v58;
    State.wrappedValue.getter();
    v42 = v76;
    swift_getKeyPath();
    v74 = v42;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v43 = *(v42 + 24);

    v44 = (v31 + *(sub_1000CE6B8(&qword_101922748, &qword_101209098) + 36));
    *v44 = v41;
    v44[1] = v43;
    v45 = swift_getKeyPath();
    v46 = (v31 + *(v72 + 36));
    v47 = *(sub_1000CE6B8(&qword_10190A120, &qword_101208EF0) + 28);
    sub_1000CE6B8(&qword_10190CA30, &unk_101208E00);
    State.projectedValue.getter();
    v48 = sub_1000CE6B8(&qword_10190A168, &qword_1011E51A0);
    (*(*(v48 - 8) + 56))(v46 + v47, 0, 1, v48);
    *v46 = v45;
    sub_1000D2DFC(v31, v71, &qword_1019226C8, &qword_101208FC8);
    swift_storeEnumTagMultiPayload();
    sub_1000414C8(&qword_10190A3D8, &qword_10190A2F8, &unk_1011F11F0, &protocol conformance descriptor for TupleView<A>);
    sub_10047B338();
    _ConditionalContent<>.init(storage:)();
    return sub_100024F64(v31, &qword_1019226C8, &qword_101208FC8);
  }

  else
  {
    ProgressView<>.init<>()();
    v50 = *(v15 + 16);
    v50(v17, v20, v14);
    *v13 = 0;
    v13[8] = 1;
    v51 = sub_1000CE6B8(&qword_10190A408, &qword_1011F0DD0);
    v50(&v13[*(v51 + 48)], v17, v14);
    v52 = &v13[*(v51 + 64)];
    *v52 = 0;
    v52[8] = 1;
    v53 = *(v15 + 8);
    v53(v17, v14);
    sub_1000D2DFC(v13, v71, &qword_10190A2F8, &unk_1011F11F0);
    swift_storeEnumTagMultiPayload();
    sub_1000414C8(&qword_10190A3D8, &qword_10190A2F8, &unk_1011F11F0, &protocol conformance descriptor for TupleView<A>);
    sub_10047B338();
    _ConditionalContent<>.init(storage:)();
    sub_100024F64(v13, &qword_10190A2F8, &unk_1011F11F0);
    return (v53)(v20, v14);
  }
}

uint64_t sub_10047891C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserGuidesListView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v10[1] = a1;
  sub_10047ADEC(a2, v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_10047AE50(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);

  sub_1000CE6B8(&qword_101922790, &qword_1012090B8);
  sub_1000CE6B8(&qword_1019226F0, &qword_101209008);
  sub_1000414C8(&qword_101922798, &qword_101922790, &qword_1012090B8, &protocol conformance descriptor for [A]);
  sub_10047B110();
  sub_10047B8A0(&qword_101922438, type metadata accessor for UserGuideRowViewModel, &unk_1012089B4);
  return ForEach<>.init(_:content:)();
}

uint64_t sub_100478AF8(void *a1, uint64_t a2)
{
  sub_1000CE6B8(&qword_101922710, &qword_101209018);
  sub_10047B22C();
  return Section<>.init(content:)();
}

void sub_100478B6C(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for UserGuidesListView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  sub_10047ADEC(a2, v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v10 = swift_allocObject();
  sub_10047AE50(v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  *(v10 + ((v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  v11 = *&a1[OBJC_IVAR____TtC4Maps21UserGuideRowViewModel_userGuide];
  swift_getKeyPath();
  v14[1] = v11;
  sub_10047B8A0(&qword_10190C910, type metadata accessor for UserGuide, &unk_1011FF7CC);
  v12 = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = *(v11 + OBJC_IVAR____TtC4Maps9UserGuide__canDelete);
  *a3 = v12;
  *(a3 + 8) = sub_10047B814;
  *(a3 + 16) = v10;
  *(a3 + 24) = v13;
}

double sub_100478D24(void *a1, uint64_t a2)
{
  sub_1000CE6B8(&qword_1019226A8, &qword_101208F50);
  State.wrappedValue.getter();
  v3 = (*(a2 + OBJC_IVAR____TtC4Maps21UserGuideRowViewModel_userGuide) + OBJC_IVAR____TtC4Maps9UserGuide_id);
  v4 = *v3;
  v5 = v3[1];

  v6 = sub_10047BC44(v4, v5);

  if (v6)
  {
    swift_getKeyPath();
    sub_10047B8A0(&qword_101917FC8, type metadata accessor for UserGuidesListViewModel, &unk_101208700);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v7 = *(v10 + 56);
    if (v7)
    {
      v8 = *(v10 + 64);

      v7(v6);

      sub_1000588AC(v7, v8);

      return result;
    }
  }

  return result;
}

uint64_t sub_100478E80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v129 = a2;
  v127 = type metadata accessor for LeadingCardHeader();
  v104 = *(v127 - 8);
  __chkstk_darwin(v127);
  v103 = v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_1000CE6B8(&qword_1019226B0, &qword_101208F80);
  v108 = *(v128 - 8);
  __chkstk_darwin(v128);
  v107 = v88 - v4;
  object = type metadata accessor for LeadingCardHeaderViewModel();
  v106 = *(object - 8);
  __chkstk_darwin(object);
  v102 = v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v105 = v88 - v7;
  v8 = type metadata accessor for UserGuidesListView(0);
  v9 = v8 - 8;
  v93 = *(v8 - 8);
  __chkstk_darwin(v8);
  v94 = v10;
  v95 = v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CardButtonViewModel();
  v118 = *(v11 - 8);
  v119 = v11;
  __chkstk_darwin(v11);
  v117 = v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_1000CE6B8(&qword_1019226B8, &unk_101208F88);
  __chkstk_darwin(v124);
  v126 = v88 - v13;
  v122 = type metadata accessor for MapsDesignAccessibilityString();
  v130 = *(v122 - 8);
  __chkstk_darwin(v122);
  v121 = v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for CenteredCardHeaderNavigation();
  v98 = *(v123 - 8);
  __chkstk_darwin(v123);
  v96 = v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_1000CE6B8(&qword_10190CC00, &unk_101203510);
  v100 = *(v125 - 8);
  __chkstk_darwin(v125);
  v99 = v88 - v16;
  v116 = type metadata accessor for CardHeaderSize();
  v114 = *(v116 - 8);
  __chkstk_darwin(v116);
  v110 = v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v91 = v88 - v19;
  countAndFlagsBits = type metadata accessor for CenteredCardHeaderNavigationViewModel();
  v97 = *(countAndFlagsBits - 8);
  __chkstk_darwin(countAndFlagsBits);
  v90 = v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v113 = v88 - v22;
  v23 = sub_1000CE6B8(&unk_101910FC0, &unk_1011EBBE0);
  __chkstk_darwin(v23 - 8);
  v109 = v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = v88 - v26;
  __chkstk_darwin(v28);
  v30 = v88 - v29;
  __chkstk_darwin(v31);
  v33 = v88 - v32;
  v112 = type metadata accessor for CardHeaderTextViewModel();
  v92 = *(v112 - 8);
  __chkstk_darwin(v112);
  v89 = v88 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v111 = v88 - v36;
  v37 = type metadata accessor for EditMode();
  v38 = *(v37 - 8);
  __chkstk_darwin(v37);
  v40 = v88 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v43 = v88 - v42;
  v44 = *(v9 + 28);
  sub_1000CE6B8(&qword_10190CA30, &unk_101208E00);
  v101 = a1;
  v88[1] = v44;
  State.wrappedValue.getter();
  (*(v38 + 104))(v40, enum case for EditMode.active(_:), v37);
  LOBYTE(v44) = static EditMode.== infix(_:_:)();
  v45 = *(v38 + 8);
  v45(v40, v37);
  v45(v43, v37);
  if (v44)
  {
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v134._object = 0x8000000101239750;
    v46._countAndFlagsBits = 0x47207463656C6553;
    v46._object = 0xED00007365646975;
    v47._countAndFlagsBits = 0xD000000000000025;
    v47._object = 0x8000000101239720;
    v134._countAndFlagsBits = 0xD000000000000036;
    object = NSLocalizedString(_:tableName:bundle:value:comment:)(v47, 0, qword_1019600D8, v46, v134)._object;
    v48 = v130;
    v49 = *(v130 + 104);
    v50 = v122;
    v49(v33, enum case for MapsDesignAccessibilityString.titleLabel(_:), v122);
    v51 = *(v48 + 56);
    v51(v33, 0, 1, v50);
    v49(v30, enum case for MapsDesignAccessibilityString.subtitleLabel(_:), v50);
    v51(v30, 0, 1, v50);
    v49(v27, enum case for MapsDesignAccessibilityString.tertiaryLabel(_:), v50);
    v51(v27, 0, 1, v50);
    static HorizontalAlignment.center.getter();
    v52 = v111;
    CardHeaderTextViewModel.init(title:titleAXID:subtitle:subtitleAXID:interactiveSubtitle:interactiveSubtitleAXID:alignment:interactiveTitleTapHandler:interactiveSubtitleTapHandler:)();
    v53 = v92;
    (*(v92 + 16))(v89, v52, v112);
    (*(v114 + 104))(v91, enum case for CardHeaderSize.medium(_:), v116);
    v54 = v113;
    CenteredCardHeaderNavigationViewModel.init(textViewModel:visible:leadingButtons:trailingButtons:size:)();
    v55 = v97;
    (*(v97 + 16))(v90, v54, countAndFlagsBits);
    v56 = v96;
    CenteredCardHeaderNavigation.init(viewModel:leadingButtonsWidthBinding:trailingButtonsWidthBinding:)();
    v57 = v121;
    *v121 = 0x6469754772657355;
    *(v57 + 1) = 0xEE00647261437365;
    v49(v57, enum case for MapsDesignAccessibilityString.header(_:), v50);
    v58 = sub_10047B8A0(&qword_10190CC10, &type metadata accessor for CenteredCardHeaderNavigation, &protocol conformance descriptor for CenteredCardHeaderNavigation);
    v59 = v99;
    v60 = v123;
    View.mapsDesignAXCombinedContainer(withID:)();
    (*(v48 + 8))(v57, v50);
    (*(v98 + 8))(v56, v60);
    v61 = v100;
    v62 = v125;
    (*(v100 + 16))(v126, v59, v125);
    swift_storeEnumTagMultiPayload();
    *&v131 = v60;
    *(&v131 + 1) = v58;
    swift_getOpaqueTypeConformance2();
    v63 = sub_10047B8A0(&qword_10190AF00, &type metadata accessor for LeadingCardHeader, &protocol conformance descriptor for LeadingCardHeader);
    *&v131 = v127;
    *(&v131 + 1) = v63;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    (*(v61 + 8))(v59, v62);
    (*(v55 + 8))(v113, countAndFlagsBits);
    return (*(v53 + 8))(v111, v112);
  }

  else
  {
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v135._object = 0x80000001012396F0;
    v65._countAndFlagsBits = 0x736564697547;
    v66._object = 0x80000001012396D0;
    v135._countAndFlagsBits = 0xD000000000000029;
    v66._countAndFlagsBits = 0xD000000000000013;
    v65._object = 0xE600000000000000;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v66, 0, qword_1019600D8, v65, v135)._countAndFlagsBits;
    v67 = v95;
    sub_10047ADEC(v101, v95);
    v68 = (*(v93 + 80) + 16) & ~*(v93 + 80);
    v69 = swift_allocObject();
    sub_10047AE50(v67, v69 + v68);
    v70 = v117;
    static CardButtonViewModel.close(tintColor:enabled:action:)();

    v71 = v122;
    (*(v130 + 56))(v109, 1, 1, v122);
    (*(v114 + 104))(v110, enum case for CardHeaderSize.large(_:), v116);
    v133 = 0;
    v131 = 0u;
    v132 = 0u;
    State.wrappedValue.getter();
    v72 = EditMode.isEditing.getter();
    v45(v43, v37);
    v74 = v118;
    v73 = v119;
    if ((v72 & 1) == 0)
    {
      sub_1000CE6B8(&qword_10191D770, &qword_1011E52E0);
      v75 = (*(v74 + 80) + 32) & ~*(v74 + 80);
      v76 = swift_allocObject();
      *(v76 + 16) = xmmword_1011E1D30;
      (*(v74 + 16))(v76 + v75, v70, v73);
    }

    v77 = v105;
    LeadingCardHeaderViewModel.init(title:titleAXID:subtitle:interactiveSubtitle:badgeText:size:leadingImageProvider:leadingImagePlaceholder:trailingButtons:)();
    v78 = v106;
    (*(v106 + 16))(v102, v77, object);
    v79 = v103;
    LeadingCardHeader.init(viewModel:interactiveSubtitleTapHandler:)();
    v80 = v121;
    *v121 = 0x6469754772657355;
    *(v80 + 1) = 0xEE00647261437365;
    v81 = v130;
    (*(v130 + 104))(v80, enum case for MapsDesignAccessibilityString.header(_:), v71);
    v82 = sub_10047B8A0(&qword_10190AF00, &type metadata accessor for LeadingCardHeader, &protocol conformance descriptor for LeadingCardHeader);
    v83 = v107;
    v84 = v127;
    View.mapsDesignAXContainer(withID:)();
    (*(v81 + 8))(v80, v71);
    (*(v104 + 8))(v79, v84);
    v85 = v108;
    v86 = v128;
    (*(v108 + 16))(v126, v83, v128);
    swift_storeEnumTagMultiPayload();
    v87 = sub_10047B8A0(&qword_10190CC10, &type metadata accessor for CenteredCardHeaderNavigation, &protocol conformance descriptor for CenteredCardHeaderNavigation);
    *&v131 = v123;
    *(&v131 + 1) = v87;
    swift_getOpaqueTypeConformance2();
    *&v131 = v84;
    *(&v131 + 1) = v82;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    (*(v85 + 8))(v83, v86);
    (*(v78 + 8))(v77, object);
    return (*(v118 + 8))(v117, v119);
  }
}

double sub_10047A108(uint64_t a1, void *a2)
{
  sub_1000CE6B8(&qword_1019226A8, &qword_101208F50);
  State.wrappedValue.getter();
  swift_getKeyPath();
  sub_10047B8A0(&qword_101917FC8, type metadata accessor for UserGuidesListViewModel, &unk_101208700);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v6 + 40);
  if (v2)
  {
    v3 = *(v6 + 48);

    v2(v4);

    sub_1000588AC(v2, v3);
  }

  else
  {
  }

  return result;
}

void sub_10047A208(uint64_t a1, void *a2, uint64_t *a3)
{
  v40 = a2;
  v4 = type metadata accessor for EditMode();
  v41 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v38 - v8;
  v10 = type metadata accessor for UserGuidesListView(0);
  v38 = *(v10 - 8);
  v11 = *(v38 + 64);
  __chkstk_darwin(v10);
  v39 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ActionBarItemType();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of ActionBarItemViewModel.type.getter();
  v16 = (*(v13 + 88))(v15, v12);
  if (v16 == enum case for ActionBarItemType.addToList(_:))
  {
    v17 = a3[1];
    v42 = *a3;
    v43 = v17;
    sub_1000CE6B8(&qword_1019226A8, &qword_101208F50);
    State.wrappedValue.getter();
    v18 = v44;
    swift_getKeyPath();
    v42 = v18;
    sub_10047B8A0(&qword_101917FC8, type metadata accessor for UserGuidesListViewModel, &unk_101208700);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v19 = *(v18 + 104);
    if (v19)
    {
      v20 = *(v18 + 112);

      v19(v21);

      sub_1000588AC(v19, v20);
      return;
    }

    goto LABEL_12;
  }

  if (v16 == enum case for ActionBarItemType.select(_:))
  {
    v22 = &enum case for EditMode.active(_:);
LABEL_6:
    v23 = v41;
    (*(v41 + 104))(v9, *v22, v4);
    (*(v23 + 16))(v6, v9, v4);
    sub_1000CE6B8(&qword_10190CA30, &unk_101208E00);
    State.wrappedValue.setter();
    (*(v23 + 8))(v9, v4);
    return;
  }

  if (v16 == enum case for ActionBarItemType.delete(_:))
  {
    v24 = v40;
    if (!v40)
    {
      return;
    }

    v25 = a3[1];
    v42 = *a3;
    v43 = v25;
    v26 = v40;
    sub_1000CE6B8(&qword_1019226A8, &qword_101208F50);
    State.wrappedValue.getter();
    v27 = (a3 + *(v10 + 24));
    v29 = *v27;
    v28 = v27[1];
    v42 = v29;
    v43 = v28;
    sub_1000CE6B8(&qword_1019226A0, &unk_101208F40);
    State.wrappedValue.getter();
    v30 = v44;
    v31 = *(v44 + 16);
    if (v31)
    {
      v32 = sub_100358C40(*(v44 + 16), 0);
      v33 = sub_100416DB8(&v42, v32 + 4, v31, v30);
      sub_10005F150(v42);
      if (v33 != v31)
      {
        __break(1u);
LABEL_12:

        return;
      }
    }

    else
    {

      v32 = _swiftEmptyArrayStorage;
    }

    v34 = v39;
    sub_10047ADEC(a3, v39);
    v35 = (*(v38 + 80) + 16) & ~*(v38 + 80);
    v36 = swift_allocObject();
    sub_10047AE50(v34, v36 + v35);
    v37 = v26;
    sub_10046F818(v32, v24, sub_10047AFB4, v36);
  }

  else
  {
    if (v16 == enum case for ActionBarItemType.done(_:))
    {
      v22 = &enum case for EditMode.inactive(_:);
      goto LABEL_6;
    }

    (*(v13 + 8))(v15, v12);
  }
}

uint64_t sub_10047A744()
{
  v0 = type metadata accessor for EditMode();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v4);
  v7 = &v9 - v6;
  (*(v1 + 104))(&v9 - v6, enum case for EditMode.inactive(_:), v0, v5);
  type metadata accessor for UserGuidesListView(0);
  (*(v1 + 16))(v3, v7, v0);
  sub_1000CE6B8(&qword_10190CA30, &unk_101208E00);
  State.wrappedValue.setter();
  return (*(v1 + 8))(v7, v0);
}

uint64_t sub_10047A8A0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  type metadata accessor for UserGuidesListView(0);
  sub_1000CE6B8(&qword_10190A148, &qword_1011E5130);
  State.wrappedValue.getter();
  sub_1000CE6B8(&qword_10190A178, &unk_1011E5200);
  v3 = type metadata accessor for ActionBarItemType();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1011E1D30;
  (*(v4 + 104))(v6 + v5, enum case for ActionBarItemType.delete(_:), v3);
  dispatch thunk of ActionBarViewModel.updateItems(with:disabled:)();
}

uint64_t sub_10047A9F0()
{
  sub_1000CE6B8(&qword_101922638, &qword_101208EB0);
  sub_1000D6664(&qword_101922640, &qword_101208EB8);
  sub_10047AAC0();
  swift_getOpaqueTypeConformance2();
  return NavigationStack.init<>(root:)();
}

unint64_t sub_10047AAC0()
{
  result = qword_101922648;
  if (!qword_101922648)
  {
    sub_1000D6664(&qword_101922640, &qword_101208EB8);
    sub_10047AB78();
    sub_1000414C8(&qword_10190A118, &qword_10190A120, &qword_101208EF0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101922648);
  }

  return result;
}

unint64_t sub_10047AB78()
{
  result = qword_101922650;
  if (!qword_101922650)
  {
    sub_1000D6664(&qword_101922658, &qword_101208EC0);
    sub_1000D6664(&qword_101922660, &qword_101208EC8);
    sub_10047AC6C();
    swift_getOpaqueTypeConformance2();
    sub_1000414C8(&qword_10190A108, &qword_10190A110, &unk_1011E5110, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101922650);
  }

  return result;
}

unint64_t sub_10047AC6C()
{
  result = qword_101922668;
  if (!qword_101922668)
  {
    sub_1000D6664(&qword_101922660, &qword_101208EC8);
    sub_1000D6664(&qword_101922670, &qword_101208ED0);
    sub_1000D6664(&qword_101922678, &qword_101208ED8);
    sub_1000414C8(&qword_101922680, &qword_101922678, &qword_101208ED8, &protocol conformance descriptor for VStack<A>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1000414C8(&qword_101922688, &qword_101922690, &unk_101208EE0, &unk_1011E66B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101922668);
  }

  return result;
}

uint64_t sub_10047ADEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserGuidesListView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10047AE50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserGuidesListView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10047AEB4(uint64_t a1, void *a2)
{
  v5 = *(type metadata accessor for UserGuidesListView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  sub_10047A208(a1, a2, v6);
}

uint64_t sub_10047AF34(uint64_t a1, uint64_t *a2)
{
  v5 = *(type metadata accessor for UserGuidesListView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10047A8A0(a1, a2, v6);
}

uint64_t sub_10047AFB4()
{
  type metadata accessor for UserGuidesListView(0);

  return sub_10047A744();
}

double sub_10047B014(uint64_t a1)
{
  v3 = *(type metadata accessor for UserGuidesListView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_10047A108(a1, v4);
}

unint64_t sub_10047B08C()
{
  result = qword_1019226E0;
  if (!qword_1019226E0)
  {
    sub_1000D6664(&qword_1019226D8, &qword_101209000);
    sub_10047B110();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019226E0);
  }

  return result;
}

unint64_t sub_10047B110()
{
  result = qword_1019226E8;
  if (!qword_1019226E8)
  {
    sub_1000D6664(&qword_1019226F0, &qword_101209008);
    sub_10047B19C();
    sub_1000F05A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019226E8);
  }

  return result;
}

unint64_t sub_10047B19C()
{
  result = qword_1019226F8;
  if (!qword_1019226F8)
  {
    sub_1000D6664(&qword_101922700, &qword_101209010);
    sub_10047B22C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019226F8);
  }

  return result;
}

unint64_t sub_10047B22C()
{
  result = qword_101922708;
  if (!qword_101922708)
  {
    sub_1000D6664(&qword_101922710, &qword_101209018);
    sub_10047B2E4();
    sub_1000414C8(&qword_101922720, &qword_101922728, &qword_101209020, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101922708);
  }

  return result;
}

unint64_t sub_10047B2E4()
{
  result = qword_101922718;
  if (!qword_101922718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101922718);
  }

  return result;
}

unint64_t sub_10047B338()
{
  result = qword_101922750;
  if (!qword_101922750)
  {
    sub_1000D6664(&qword_1019226C8, &qword_101208FC8);
    sub_10047B3F0();
    sub_1000414C8(&qword_10190A118, &qword_10190A120, &qword_101208EF0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101922750);
  }

  return result;
}

unint64_t sub_10047B3F0()
{
  result = qword_101922758;
  if (!qword_101922758)
  {
    sub_1000D6664(&qword_101922748, &qword_101209098);
    sub_10047B4A8();
    sub_1000414C8(&qword_10190A3B8, &qword_10190A3C0, &qword_1011E5630, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101922758);
  }

  return result;
}

unint64_t sub_10047B4A8()
{
  result = qword_101922760;
  if (!qword_101922760)
  {
    sub_1000D6664(&qword_101922740, &unk_101209060);
    sub_10047B560();
    sub_1000414C8(&qword_10190CD48, &qword_10190CD00, &unk_1011EEE90, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101922760);
  }

  return result;
}

unint64_t sub_10047B560()
{
  result = qword_101922768;
  if (!qword_101922768)
  {
    sub_1000D6664(&qword_101922738, &qword_101209028);
    sub_10047B618();
    sub_1000414C8(&qword_10190CD40, &unk_10191D9C0, &qword_1011FA960, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101922768);
  }

  return result;
}

unint64_t sub_10047B618()
{
  result = qword_101922770;
  if (!qword_101922770)
  {
    sub_1000D6664(&qword_101922778, &qword_1012090A0);
    sub_10047B6A4();
    sub_100109BFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101922770);
  }

  return result;
}

unint64_t sub_10047B6A4()
{
  result = qword_101922780;
  if (!qword_101922780)
  {
    sub_1000D6664(&qword_101922788, &unk_1012090A8);
    sub_1000414C8(&qword_101922730, &qword_1019226C0, &qword_101208FC0, &protocol conformance descriptor for List<A, B>);
    sub_10047B8A0(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101922780);
  }

  return result;
}

uint64_t sub_10047B78C(void *a1)
{
  v3 = *(type metadata accessor for UserGuidesListView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100478AF8(a1, v4);
}

double sub_10047B814()
{
  v1 = *(type metadata accessor for UserGuidesListView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100478D24((v0 + v2), v3);
}

uint64_t sub_10047B8A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10047B914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v15[1] = a2;
  v15[2] = a4;
  v5 = type metadata accessor for MapsDesignAccessibilityString();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for PlaceCell();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v16 = a1;
  sub_10047BBFC(&qword_10190B840, type metadata accessor for PinnedItemRowViewModel, "!ZA");
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = *(a1 + 16);
  v17 = type metadata accessor for ListCellViewModel();
  v18 = sub_10047BBFC(&qword_10190B068, &type metadata accessor for ListCellViewModel, &protocol conformance descriptor for ListCellViewModel);
  v16 = v13;

  PlaceCell.init(model:tapHandler:)();
  *v8 = 0x744964656E6E6950;
  v8[1] = 0xEA00000000006D65;
  (*(v6 + 104))(v8, enum case for MapsDesignAccessibilityString.cell(_:), v5);
  sub_10047BBFC(&qword_10190D640, &type metadata accessor for PlaceCell, &protocol conformance descriptor for PlaceCell);
  View.mapsDesignAXContainer(withID:)();
  (*(v6 + 8))(v8, v5);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_10047BBFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_10047BC44(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_10047D478();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v2 + OBJC_IVAR____TtC4Maps24UserGuidesListController__userGuidesById);
  if (!*(v5 + 16))
  {
    return 0;
  }

  v6 = sub_100297040(a1, a2);
  if (v7)
  {
    v8 = *(*(v5 + 56) + 8 * v6);
    v9 = v8;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_10047BD14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = a2;
  v44 = a3;
  v4 = sub_1000CE6B8(&unk_10190BA50, &unk_1011E4800);
  __chkstk_darwin(v4 - 8);
  v42 = &v41 - v5;
  v50 = _swiftEmptyArrayStorage;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = 0;
    v45 = OBJC_IVAR____TtC4Maps24UserGuidesListController__userGuidesById;
    v46 = OBJC_IVAR____TtC4Maps24UserGuidesListController___observationRegistrar;
    v8 = a1 + 40;
    v9 = _swiftEmptyArrayStorage;
    v47 = v6;
    v41 = a1 + 40;
LABEL_3:
    v10 = (v8 + 16 * v7);
    v11 = v7;
    while (v11 < v6)
    {
      v7 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_46;
      }

      v13 = *(v10 - 1);
      v12 = *v10;
      swift_getKeyPath();
      v14 = v48;
      v49 = v48;
      sub_10047D478();

      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v15 = *(v14 + v45);
      if (*(v15 + 16))
      {

        v16 = sub_100297040(v13, v12);
        if (v17)
        {
          v18 = *(*(v15 + 56) + 8 * v16);

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v9 = v50;
          v6 = v47;
          v8 = v41;
          if (v7 != v47)
          {
            goto LABEL_3;
          }

LABEL_13:
          if (v9 >> 62)
          {
            goto LABEL_29;
          }

          goto LABEL_14;
        }
      }

      ++v11;
      v10 += 2;
      v6 = v47;
      if (v7 == v47)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_45;
  }

  v9 = _swiftEmptyArrayStorage;
  if (_swiftEmptyArrayStorage >> 62)
  {
LABEL_29:
    v19 = _CocoaArrayWrapper.endIndex.getter();
    if (!v19)
    {
      goto LABEL_30;
    }

LABEL_15:
    if (v19 < 1)
    {
      goto LABEL_47;
    }

    v20 = 0;
    v21 = v9 & 0xC000000000000001;
    do
    {
      if (v21)
      {
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v22 = *(v9 + 8 * v20 + 32);
      }

      v23 = v22;
      if ([v22 handlerType] == 4)
      {
        v24 = v9;
        v25 = [v23 collection];
        type metadata accessor for CachedCuratedCollection();
        v26 = swift_dynamicCastClass();
        if (v26)
        {
          v27 = v26;
          v28 = [objc_opt_self() sharedManager];
          [v28 removeSavedMapsSyncCuratedCollection:v27 completion:0];
          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }

        v9 = v24;
      }

      else
      {
      }

      ++v20;
    }

    while (v19 != v20);
    goto LABEL_31;
  }

LABEL_14:
  v19 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v19)
  {
    goto LABEL_15;
  }

LABEL_30:
  v21 = v9 & 0xC000000000000001;
LABEL_31:
  v29 = 0;
  v30 = _swiftEmptyArrayStorage;
  v50 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v19 == v29)
    {

      v35 = type metadata accessor for TaskPriority();
      v36 = v42;
      (*(*(v35 - 8) + 56))(v42, 1, 1, v35);
      v37 = swift_allocObject();
      swift_unknownObjectWeakInit();
      type metadata accessor for MainActor();

      v38 = v44;

      v39 = static MainActor.shared.getter();
      v40 = swift_allocObject();
      v40[2] = v39;
      v40[3] = &protocol witness table for MainActor;
      v40[4] = v37;
      v40[5] = v30;
      v40[6] = v43;
      v40[7] = v38;

      sub_10020AAE4(0, 0, v36, &unk_101209258, v40);

      return;
    }

    if (v21)
    {
      v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v29 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_44;
      }

      v31 = *(v9 + 8 * v29 + 32);
    }

    v32 = v31;
    v33 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    v34 = [v31 collection];

    ++v29;
    if (v34)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v30 = v50;
      v29 = v33;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
}

double sub_10047C274@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10047D478();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC4Maps24UserGuidesListController__userGuides);

  return result;
}

double sub_10047C370(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_10047D478();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return result;
}

uint64_t sub_10047C420(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  v8 = *a2;

  LOBYTE(a3) = a3(v9, a1);

  if (a3)
  {
    *(v5 + v8) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10047D478();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

id sub_10047C550(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_1000CE6B8(&unk_10190BA50, &unk_1011E4800);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  ObservationRegistrar.init()();
  *&v1[OBJC_IVAR____TtC4Maps24UserGuidesListController__userGuides] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC4Maps24UserGuidesListController_collectionManager] = a1;
  *&v1[OBJC_IVAR____TtC4Maps24UserGuidesListController__userGuidesById] = _swiftEmptyDictionarySingleton;
  v15.receiver = v1;
  v15.super_class = ObjectType;
  v7 = a1;
  v8 = objc_msgSendSuper2(&v15, "init");
  [v7 addObserver:v8];

  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();
  v11 = v7;

  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = v10;
  v13[5] = v11;

  sub_10020AAE4(0, 0, v6, &unk_1012092A8, v13);

  return v8;
}

uint64_t sub_10047C774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[24] = a6;
  v7[25] = a7;
  v7[22] = a4;
  v7[23] = a5;
  type metadata accessor for MainActor();
  v7[26] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[27] = v9;
  v7[28] = v8;

  return _swift_task_switch(sub_10047C810, v9, v8);
}

uint64_t sub_10047C810()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[29] = Strong;
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC4Maps24UserGuidesListController_collectionManager);
    v0[30] = v2;
    v3 = v2;
    sub_1000CE6B8(&qword_101922808, &qword_101209260);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v0[31] = isa;
    v0[2] = v0;
    v0[7] = v0 + 21;
    v0[3] = sub_10047C9DC;
    v5 = swift_continuation_init();
    v0[17] = sub_1000CE6B8(&unk_101922810, &qword_101209268);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10047CB7C;
    v0[13] = &unk_10161AF68;
    v0[14] = v5;
    [v3 deleteCollections:isa completion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_10047C9DC()
{
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 216);

  return _swift_task_switch(sub_10047CAE4, v2, v1);
}

uint64_t sub_10047CAE4()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[29];
  v4 = v0[24];

  v4();
  v5 = v0[1];

  return v5();
}

uint64_t sub_10047CB7C(uint64_t a1, void *a2)
{
  v3 = sub_10005E838((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return _swift_continuation_resume(v4);
}

uint64_t sub_10047CBE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10047CC78, v7, v6);
}

id sub_10047CC78()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_43:
    v37 = *(v0 + 8);

    return v37();
  }

  v2 = Strong;
  v38 = v0;
  v3 = *(v0 + 48);
  v4 = sub_1000D2158(_swiftEmptyArrayStorage);
  v5 = [v3 currentCollectionsForLibrary];
  sub_10013D7D0();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v6 >> 62)
  {
LABEL_30:
    v7 = _CocoaArrayWrapper.endIndex.getter();
    v39 = v2;
    if (v7)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v39 = v2;
    if (v7)
    {
LABEL_4:
      v8 = 0;
      v41 = v6;
      v42 = v6 & 0xC000000000000001;
      v40 = v6 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v42)
        {
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v8 >= *(v40 + 16))
          {
            goto LABEL_29;
          }

          v11 = *(v6 + 8 * v8 + 32);
        }

        v12 = v11;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        v43 = v8 + 1;
        v13 = v7;
        v14 = [v11 identifier];
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

        v6 = v12;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v2 = sub_100297040(v15, v17);
        v20 = v4[2];
        v21 = (v19 & 1) == 0;
        v22 = v20 + v21;
        if (__OFADD__(v20, v21))
        {
          goto LABEL_27;
        }

        v23 = v19;
        if (v4[3] >= v22)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v19)
            {
              goto LABEL_5;
            }
          }

          else
          {
            sub_10012E104();
            if (v23)
            {
              goto LABEL_5;
            }
          }
        }

        else
        {
          sub_100129898(v22, isUniquelyReferenced_nonNull_native);
          v24 = sub_100297040(v15, v17);
          if ((v23 & 1) != (v25 & 1))
          {

            return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          }

          v2 = v24;
          if (v23)
          {
LABEL_5:

            v9 = v4[7];
            v10 = *(v9 + 8 * v2);
            *(v9 + 8 * v2) = v6;

            goto LABEL_6;
          }
        }

        v4[(v2 >> 6) + 8] |= 1 << v2;
        v26 = (v4[6] + 16 * v2);
        *v26 = v15;
        v26[1] = v17;
        *(v4[7] + 8 * v2) = v6;

        v27 = v4[2];
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          goto LABEL_28;
        }

        v4[2] = v29;
LABEL_6:
        ++v8;
        v7 = v13;
        v6 = v41;
      }

      while (v43 != v13);
    }
  }

  v32 = v39;
  result = sub_10047C420(v31, &OBJC_IVAR____TtC4Maps24UserGuidesListController__userGuidesById, sub_1002264D8, &unk_101209220, sub_10047D5A4);
  if (!v7)
  {
LABEL_42:

    sub_10047C420(_swiftEmptyArrayStorage, &OBJC_IVAR____TtC4Maps24UserGuidesListController__userGuides, sub_1001F120C, &unk_101209280, sub_10047D684);

    v0 = v38;
    goto LABEL_43;
  }

  v33 = 0;
  while (1)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v33 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_47;
      }

      result = *(v6 + 8 * v33 + 32);
    }

    v34 = result;
    v35 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    v36 = objc_allocWithZone(type metadata accessor for UserGuide(0));
    sub_100393FB8(v34);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v32 = v39;
    }

    result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    ++v33;
    if (v35 == v7)
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for UserGuidesListController(uint64_t a1)
{
  result = qword_1019227F8;
  if (!qword_1019227F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10047D3C8(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_10047D478()
{
  result = qword_1019223A0;
  if (!qword_1019223A0)
  {
    type metadata accessor for UserGuidesListController(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019223A0);
  }

  return result;
}

uint64_t sub_10047D4D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10003AC4C;

  return sub_10047C774(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_10047D5C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10003AC40;

  return sub_10047CBE0(a1, v4, v5, v7, v6);
}

char *sub_10047D6A4()
{
  if (qword_1019068B8 != -1)
  {
    swift_once();
  }

  v0 = static LibraryItemsCountManager.shared;
  v1 = objc_allocWithZone(type metadata accessor for UserProfileLinkLibraryProvider());
  result = UserProfileLinkLibraryProvider.init(countsManager:)(v0);
  static UserProfileLinkLibraryProvider.shared = result;
  return result;
}

uint64_t *UserProfileLinkLibraryProvider.shared.unsafeMutableAddressor()
{
  if (qword_1019068A0 != -1)
  {
    swift_once();
  }

  return &static UserProfileLinkLibraryProvider.shared;
}

id static UserProfileLinkLibraryProvider.shared.getter()
{
  if (qword_1019068A0 != -1)
  {
    swift_once();
  }

  v1 = static UserProfileLinkLibraryProvider.shared;

  return v1;
}

char *UserProfileLinkLibraryProvider.init(countsManager:)(char *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC4Maps30UserProfileLinkLibraryProvider_observers;
  result = [objc_allocWithZone(GEOObserverHashTable) initWithProtocol:&OBJC_PROTOCOL___UserProfileLinkDataProvidingObserver queue:0];
  *&v1[v4] = result;
  v6 = &v1[OBJC_IVAR____TtC4Maps30UserProfileLinkLibraryProvider_lastTotalCount];
  *v6 = 0;
  v6[8] = 1;
  *&v1[OBJC_IVAR____TtC4Maps30UserProfileLinkLibraryProvider_countsManager] = a1;
  v7 = *&a1[OBJC_IVAR____TtC4Maps24LibraryItemsCountManager_lastFetchedCounts];
  if (!v7)
  {
    goto LABEL_13;
  }

  if (*(v7 + OBJC_IVAR____TtC4Maps17LibraryItemsCount_guidesCount + 8))
  {
    v8 = 0;
  }

  else
  {
    v8 = *(v7 + OBJC_IVAR____TtC4Maps17LibraryItemsCount_guidesCount);
  }

  v9 = *(v7 + OBJC_IVAR____TtC4Maps17LibraryItemsCount_placesCount);
  v10 = __OFADD__(v8, v9);
  v11 = v8 + v9;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    v12 = *(v7 + OBJC_IVAR____TtC4Maps17LibraryItemsCount_routesCount);
    v10 = __OFADD__(v11, v12);
    v13 = v11 + v12;
    if (!v10)
    {
      if (*(v7 + OBJC_IVAR____TtC4Maps17LibraryItemsCount_visitedPlacesCount + 8))
      {
        v14 = 0;
      }

      else
      {
        v14 = *(v7 + OBJC_IVAR____TtC4Maps17LibraryItemsCount_visitedPlacesCount);
      }

      v10 = __OFADD__(v13, v14);
      v15 = v13 + v14;
      if (!v10)
      {
        goto LABEL_14;
      }

      __break(1u);
LABEL_13:
      v15 = 0;
LABEL_14:
      *v6 = v15;
      v6[8] = v7 == 0;
      v20.receiver = v1;
      v20.super_class = ObjectType;
      v16 = a1;
      v17 = objc_msgSendSuper2(&v20, "init");
      v18 = *&v16[OBJC_IVAR____TtC4Maps24LibraryItemsCountManager_observers];
      v19 = v17;
      [v18 registerObserver:{v19, v20.receiver, v20.super_class}];

      return v19;
    }
  }

  __break(1u);
  return result;
}

void __swiftcall UserProfileLinkLibraryProvider.createUserProfileLink()(UserProfileLink *__return_ptr retstr)
{
  v2 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleSubheadline];
  v3 = [v2 fontDescriptorWithSymbolicTraits:2];

  if (!v3)
  {
    v3 = [objc_allocWithZone(UIFontDescriptor) init];
  }

  v4 = [objc_opt_self() fontWithDescriptor:v3 size:11.0];

  v5 = String._bridgeToObjectiveC()();
  v6 = [objc_opt_self() systemImageNamed:v5];

  if (v6)
  {
    v7 = [objc_opt_self() configurationWithFont:v4];
    v8 = [v6 imageWithConfiguration:v7];
  }

  else
  {
    v8 = 0;
  }

  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v18._object = 0x800000010122DA10;
  v9._countAndFlagsBits = 0x6220736563616C50;
  v9._object = 0xED00006E6F747475;
  v10._countAndFlagsBits = 0x736563616C50;
  v18._countAndFlagsBits = 0xD000000000000037;
  v10._object = 0xE600000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, qword_1019600D8, v10, v18);
  v11 = objc_allocWithZone(UserProfileLink);
  v12 = v8;
  v13 = String._bridgeToObjectiveC()();

  v14 = [v11 initWithTitle:v13 icon:v12];

  [v14 setUserProfileLinkType:0];
  if ((*(v1 + OBJC_IVAR____TtC4Maps30UserProfileLinkLibraryProvider_lastTotalCount + 8) & 1) == 0)
  {
    v15 = *(v1 + OBJC_IVAR____TtC4Maps30UserProfileLinkLibraryProvider_lastTotalCount);
    sub_1000CE6B8(&unk_10190D5C0, &unk_1011EA240);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1011E1D30;
    *(v16 + 56) = &type metadata for Int;
    *(v16 + 64) = &protocol witness table for Int;
    *(v16 + 32) = v15;
    static String.localizedStringWithFormat(_:_:)();
  }

  v17 = String._bridgeToObjectiveC()();

  [v14 setSubtitle:v17];
}

Swift::String __swiftcall UserProfileLinkLibraryProvider.retrieveSubtitleText()()
{
  if (*(v0 + OBJC_IVAR____TtC4Maps30UserProfileLinkLibraryProvider_lastTotalCount + 8))
  {
    v1 = 0;
    v2 = 0xE000000000000000;
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC4Maps30UserProfileLinkLibraryProvider_lastTotalCount);
    sub_1000CE6B8(&unk_10190D5C0, &unk_1011EA240);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1011E1D30;
    *(v4 + 56) = &type metadata for Int;
    *(v4 + 64) = &protocol witness table for Int;
    *(v4 + 32) = v3;
    v5 = static String.localizedStringWithFormat(_:_:)();
    v7 = v6;

    v2 = v7;
    v1 = v5;
  }

  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t sub_10047DE88()
{
  v1 = [*(v0 + OBJC_IVAR____TtC4Maps30UserProfileLinkLibraryProvider_observers) allObservers];
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 32;
    do
    {
      sub_10004E374(v4, v7);
      sub_1000CE6B8(&qword_101922868, &qword_1012092F8);
      if (swift_dynamicCast())
      {
        if ([v6 respondsToSelector:"dataDidUpdateForUserProfileLinkType:"])
        {
          [v6 dataDidUpdateForUserProfileLinkType:0];
        }

        swift_unknownObjectRelease();
      }

      v4 += 32;
      --v3;
    }

    while (v3);
  }

  else
  {
  }
}

uint64_t _s4Maps30UserProfileLinkLibraryProviderC24libraryItemsCountManager_15didUpdateCountsyAA0ehiJ0C_AA0ehI0CtF_0()
{
  v1 = v0 + OBJC_IVAR____TtC4Maps30UserProfileLinkLibraryProvider_lastTotalCount;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps30UserProfileLinkLibraryProvider_lastTotalCount + 8);
  v3 = *(*(v0 + OBJC_IVAR____TtC4Maps30UserProfileLinkLibraryProvider_countsManager) + OBJC_IVAR____TtC4Maps24LibraryItemsCountManager_lastFetchedCounts);
  if (v3)
  {
    if (*(v3 + OBJC_IVAR____TtC4Maps17LibraryItemsCount_guidesCount + 8))
    {
      v4 = 0;
    }

    else
    {
      v4 = *(v3 + OBJC_IVAR____TtC4Maps17LibraryItemsCount_guidesCount);
    }

    v5 = *(v3 + OBJC_IVAR____TtC4Maps17LibraryItemsCount_placesCount);
    v6 = __OFADD__(v4, v5);
    v7 = v4 + v5;
    if (v6)
    {
      __break(1u);
    }

    else
    {
      v8 = *(v3 + OBJC_IVAR____TtC4Maps17LibraryItemsCount_routesCount);
      v6 = __OFADD__(v7, v8);
      v9 = v7 + v8;
      if (!v6)
      {
        if (*(v3 + OBJC_IVAR____TtC4Maps17LibraryItemsCount_visitedPlacesCount + 8))
        {
          v10 = 0;
        }

        else
        {
          v10 = *(v3 + OBJC_IVAR____TtC4Maps17LibraryItemsCount_visitedPlacesCount);
        }

        v6 = __OFADD__(v9, v10);
        v11 = v9 + v10;
        if (!v6)
        {
          if (*v1 != v11)
          {
            v2 = 1;
          }

          if (v2 == 1)
          {
            goto LABEL_18;
          }

          return result;
        }

LABEL_21:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  if ((v2 & 1) == 0)
  {
    v11 = 0;
LABEL_18:
    *v1 = v11;
    *(v1 + 8) = v3 == 0;
    return sub_10047DE88();
  }

  return result;
}

void sub_10047E344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 16);
  v7 = [*(v6 + OBJC_IVAR____TtC4Maps21CuratedGuideViewModel_placeCollection) publisherAttribution];
  if (v7)
  {
    v8 = v7;
    if (*(v6 + OBJC_IVAR____TtC4Maps21CuratedGuideViewModel_useRichLayout) == 1)
    {
      v9 = [v7 logoWithoutPaddingIdentifier];
      v10 = &selRef_logoIdentifier;
      if (v9)
      {
        v10 = &selRef_logoWithoutPaddingIdentifier;
      }
    }

    else
    {
      v10 = &selRef_iconIdentifier;
    }

    v11 = [objc_allocWithZone(MapsUIImagePublisherSpec) initWithIconIdentifier:{objc_msgSend(v8, *v10)}];
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v17[0])
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v12 = [objc_opt_self() sharedCache];
      if (v12)
      {
        v13 = v12;
        v14 = swift_allocObject();
        *(v14 + 16) = a2;
        *(v14 + 24) = a3;
        v17[4] = sub_10016F02C;
        v17[5] = v14;
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 1107296256;
        v17[2] = sub_100271778;
        v17[3] = &unk_10161B198;
        v15 = _Block_copy(v17);
        v16 = v11;

        [v13 getImageForSpec:v16 loadImageOnBackgroundQueue:1 completion:v15];
        swift_unknownObjectRelease();

        _Block_release(v15);
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_10047E5D8(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC4Maps21CuratedGuideViewModel_placeCollection];
  v3 = [v2 publisherAttribution];
  if (v3)
  {
    v4 = [objc_allocWithZone(MapsUIImagePublisherSpec) initWithIconIdentifier:{objc_msgSend(v3, "iconIdentifier")}];
    if (!v4)
    {
      __break(1u);
      return;
    }

    v5 = v4;
    sub_10047FB70(v4, a1);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1019066E0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100021540(v6, qword_10195FF40);
    v7 = a1;
    v5 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *(v9 + 4) = v2;
      *v10 = v2;
      v11 = v2;
      _os_log_impl(&_mh_execute_header, v5, v8, "Missing publisher attribution for : %@.", v9, 0xCu);
      sub_1000DCD10(v10);
    }
  }

  sub_10047EB1C(a1);
}

void sub_10047E7A4(void *a1, void *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v21 = v10;
    v22 = v9;
    sub_100014C84(0, &qword_10190B4F0, OS_dispatch_queue_ptr);
    v13 = a1;
    v20 = static OS_dispatch_queue.main.getter();
    v14 = swift_allocObject();
    *(v14 + 16) = a2;
    *(v14 + 24) = v13;
    aBlock[4] = sub_10047FCE8;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100039C64;
    aBlock[3] = &unk_10161B148;
    v15 = _Block_copy(aBlock);
    v16 = v13;
    v17 = a2;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10047FCF0(&qword_1019097D0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000CE6B8(&unk_10190B500, &unk_1011E4610);
    sub_10004EC58(&qword_1019097E0, &unk_10190B500, &unk_1011E4610);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v18 = v20;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v15);

    (*(v5 + 8))(v7, v4);
    (*(v21 + 8))(v12, v22);
  }
}

uint64_t sub_10047EAA4(void *a1, void *a2)
{
  v3 = a2;
  Image.init(uiImage:)();
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = a1;
  return static Published.subscript.setter();
}

void sub_10047EB1C(char *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v10[0])
  {
  }

  else
  {
    v3 = *(v1 + OBJC_IVAR____TtC4Maps35CuratedGuideViewModelDataDownloader_coverPhotoDownloader);
    v4 = *&a1[OBJC_IVAR____TtC4Maps21CuratedGuideViewModel_placeCollection];
    v5 = sub_1002B4098();
    v6 = sub_1002B419C();
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    v10[4] = sub_10047FB60;
    v10[5] = v7;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_1001D3EC8;
    v10[3] = &unk_10161B058;
    v8 = _Block_copy(v10);
    v9 = a1;

    [v3 loadGradientCoverImageWithCuratedCollection:v4 size:0 contentSizeCategory:11 usingImageSource:v8 completion:{v5, v6}];
    _Block_release(v8);
  }
}

void sub_10047EC9C(void *a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a4 & 1) != 0 && a1 && !a2)
  {
    v34 = v15;
    sub_100014C84(0, &qword_10190B4F0, OS_dispatch_queue_ptr);
    v33 = static OS_dispatch_queue.main.getter();
    v18 = swift_allocObject();
    *(v18 + 16) = a5;
    *(v18 + 24) = a1;
    aBlock[4] = sub_10047FB68;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100039C64;
    aBlock[3] = &unk_10161B0A8;
    v19 = _Block_copy(aBlock);
    v20 = a1;
    v21 = a5;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10047FCF0(&qword_1019097D0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000CE6B8(&unk_10190B500, &unk_1011E4610);
    sub_10004EC58(&qword_1019097E0, &unk_10190B500, &unk_1011E4610);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v22 = v33;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v19);

    (*(v10 + 8))(v12, v9);
    (*(v14 + 8))(v17, v34);
  }

  else
  {
    if (qword_1019066E0 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100021540(v23, qword_10195FF40);
    v24 = a5;
    swift_errorRetain();
    v34 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v34, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412546;
      v28 = *&v24[OBJC_IVAR____TtC4Maps21CuratedGuideViewModel_placeCollection];
      *(v26 + 4) = v28;
      *v27 = v28;
      *(v26 + 12) = 2112;
      if (a2)
      {
        swift_errorRetain();
        v29 = v28;
        v30 = _swift_stdlib_bridgeErrorToNSError();
      }

      else
      {
        v31 = v28;
        v30 = 0;
      }

      *(v26 + 14) = v30;
      v27[1] = v30;
      _os_log_impl(&_mh_execute_header, v34, v25, "Unable to download image for collection: %@. %@.", v26, 0x16u);
      sub_1000CE6B8(&qword_1019144F0, &unk_1011E4A70);
      swift_arrayDestroy();
    }

    v32 = v34;
  }
}

void *sub_10047F130(void *result, void *a2)
{
  if (a2)
  {
    v2 = result;
    v3 = a2;
    Image.init(uiImage:)();
    swift_getKeyPath();
    swift_getKeyPath();
    v4 = v2;
    return static Published.subscript.setter();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10047F1B0()
{
  v12 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v12 - 8);
  __chkstk_darwin(v12);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  v6 = OBJC_IVAR____TtC4Maps35CuratedGuideViewModelDataDownloader_coverPhotoDownloader;
  *&v0[v6] = [objc_opt_self() sharedInstance];
  v11 = OBJC_IVAR____TtC4Maps35CuratedGuideViewModelDataDownloader_imageLoadingQueue;
  v7 = sub_100014C84(0, &qword_10190B4F0, OS_dispatch_queue_ptr);
  v10[1] = "edGuideViewModelDataDownloader";
  v10[2] = v7;
  static DispatchQoS.userInitiated.getter();
  v14 = _swiftEmptyArrayStorage;
  sub_10047FCF0(&qword_101909890, 255, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000CE6B8(&unk_101917C30, &qword_1011F1710);
  sub_10004EC58(&qword_1019098A0, &unk_101917C30, &qword_1011F1710);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v12);
  *&v0[v11] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v0[OBJC_IVAR____TtC4Maps35CuratedGuideViewModelDataDownloader_viewModel] = 0;
  *&v0[OBJC_IVAR____TtC4Maps35CuratedGuideViewModelDataDownloader_source] = 11;
  v8 = type metadata accessor for CuratedGuideViewModelDataDownloader();
  v13.receiver = v0;
  v13.super_class = v8;
  return objc_msgSendSuper2(&v13, "init");
}

id sub_10047F4A8(uint64_t a1, __n128 a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CuratedGuideViewModelDataDownloader();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_10047F5A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC4Maps35CuratedGuideViewModelDataDownloader_viewModel);
  if (v4)
  {
    v7 = *&v4[OBJC_IVAR____TtC4Maps21CuratedGuideViewModel_placeCollection];
    v8 = *(v3 + OBJC_IVAR____TtC4Maps35CuratedGuideViewModelDataDownloader_coverPhotoDownloader);
    v9 = v4;
    v10 = v7;
    ImageProvidingSpecs.preferredSize.getter();
    v12 = v11;
    v14 = v13;
    v15 = *(v3 + OBJC_IVAR____TtC4Maps35CuratedGuideViewModelDataDownloader_source);
    v16 = swift_allocObject();
    *(v16 + 16) = a2;
    *(v16 + 24) = a3;
    aBlock[4] = sub_10047FB58;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001D3EC8;
    aBlock[3] = &unk_10161B008;
    v17 = _Block_copy(aBlock);

    [v8 loadGradientCoverImageWithCuratedCollection:v10 size:0 contentSizeCategory:v15 usingImageSource:v17 completion:{v12, v14}];
    _Block_release(v17);
  }

  else
  {
    if (qword_101906728 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100021540(v18, qword_101960018);
    oslog = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v19, "Unable to download image for collection without view model. Must call configure first.", v20, 2u);
    }
  }
}

void sub_10047F7FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *))
{
  if (a1)
  {
    v15 = a1;
    a5(a1);
  }

  else
  {
    if (qword_101906728 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100021540(v7, qword_101960018);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136315138;
      swift_errorRetain();
      sub_1000CE6B8(&qword_101919D48, &qword_1011FACD0);
      v12 = String.init<A>(describing:)();
      v14 = sub_10004DEB8(v12, v13, &v16);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "Unable to download image for collection with error: %s", v10, 0xCu);
      sub_10004E3D0(v11);
    }

    a5(0);
  }
}

uint64_t sub_10047FAE4(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v7 = v6;
  return static Published.subscript.setter();
}

void sub_10047FB70(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v9[0])
  {
  }

  else
  {
    v4 = [objc_opt_self() sharedCache];
    if (v4)
    {
      v5 = v4;
      v6 = swift_allocObject();
      *(v6 + 16) = a2;
      v9[4] = sub_10047FCE0;
      v9[5] = v6;
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 1107296256;
      v9[2] = sub_100271778;
      v9[3] = &unk_10161B0F8;
      v7 = _Block_copy(v9);
      v8 = a2;

      [v5 getImageForSpec:a1 loadImageOnBackgroundQueue:1 completion:v7];
      _Block_release(v7);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_10047FCF0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10047FD7C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for RefinementsBarButtonViewModel.Submenu.Element(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RefinementsBarButtonViewModel(0);
  swift_unknownObjectRetain();
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  v11 = v10;
  if (v10)
  {
    v12 = [v10 type];
    if (v12 == 3)
    {
      v15 = [v11 sort];
      if (v15)
      {
        v16 = (a1 + v9[5]);
        if ((v16[2] & 1) == 0)
        {
          v17 = (a1 + v9[8]);
          v18 = *v17;
          if (*v17)
          {
            v53 = v15;
            v54 = v2;
            v55 = a2;
            v19 = *v16;
            v51 = v16[1];
            v52 = v19;
            v49 = v17[1];
            LODWORD(v50) = *(v17 + 4);
            v56 = _swiftEmptyArrayStorage;
            v20 = *(v18 + 16);
            if (v20)
            {
              v21 = v18 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
              v22 = *(v6 + 72);
              do
              {
                sub_100192B7C(v21, v8, type metadata accessor for RefinementsBarButtonViewModel.Submenu.Element);
                swift_unknownObjectRetain();
                sub_100192C04(v8, type metadata accessor for RefinementsBarButtonViewModel.Submenu.Element);
                objc_opt_self();
                if (swift_dynamicCastObjCClass())
                {
                  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                  if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                  }

                  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                }

                else
                {
                  swift_unknownObjectRelease();
                }

                v21 += v22;
                --v20;
              }

              while (v20);
            }

            if (v50)
            {
              v35 = 0;
            }

            else
            {
              v36 = objc_allocWithZone(NSNumber);
              v35 = [v36 initWithInteger:v49];
            }

            v37 = v53;
            v38 = v35;
            v39 = [v37 defaultSelectedElementIndex];
            v40 = objc_allocWithZone(GEOResultRefinementSort);
            v41 = String._bridgeToObjectiveC()();
            sub_100014C84(0, &unk_101922A40, GEOResultRefinementSortElement_ptr);
            isa = Array._bridgeToObjectiveC()().super.isa;

            v43 = [v40 initWithDisplayName:v41 sorts:isa selectedElementIndex:v38 defaultSelectedElementIndex:v39];

            if (v43)
            {
              v44 = [objc_allocWithZone(GEOResultRefinement) initWithSort:v43];
              v45 = v37;
              v11 = v44;

              swift_unknownObjectRelease();
              a2 = v55;
              goto LABEL_30;
            }

            swift_unknownObjectRelease();
            goto LABEL_27;
          }
        }
      }

      swift_unknownObjectRelease();
      v11 = 0;
      goto LABEL_30;
    }

    if (v12 == 1)
    {
      v55 = a2;
      v13 = a1 + v9[10];
      if (*(v13 + 8))
      {
        v14 = 0;
      }

      else
      {
        v14 = [objc_allocWithZone(NSNumber) initWithInteger:*v13];
      }

      v23 = [v11 toggle];
      if (v23)
      {
        v24 = v23;
        v25 = (a1 + v9[5]);
        if ((v25[2] & 1) == 0)
        {
          v26 = *v25;
          v51 = v25[1];
          v52 = v26;
          LODWORD(v54) = *(a1 + v9[6]);
          v53 = [v23 metadata];
          v50 = [v24 toggleType];
          LODWORD(v49) = [v24 evChargingConnectorType];
          HIDWORD(v48) = [v24 selectionFromView];
          v27 = [v24 refinementKey];
          if (!v27)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v27 = String._bridgeToObjectiveC()();
          }

          v28 = [v24 showAsSelected];
          v29 = objc_allocWithZone(GEOResultRefinementToggle);
          v30 = v14;
          v31 = String._bridgeToObjectiveC()();
          LOBYTE(v47) = v28;
          LOBYTE(v46) = BYTE4(v48);
          v32 = v29;
          v33 = v53;
          v34 = [v32 initWithDisplayName:v31 isSelected:v54 metadata:v53 toggleType:v50 evChargingConnectorType:v49 selectionSequenceNumber:v30 selectionFromView:v46 refinementKey:v27 showAsSelected:v47];

          if (v34)
          {
            v11 = [objc_allocWithZone(GEOResultRefinement) initWithToggle:v34];
            swift_unknownObjectRelease();

            a2 = v55;
            goto LABEL_30;
          }
        }
      }

      swift_unknownObjectRelease();

LABEL_27:
      v11 = 0;
      a2 = v55;
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

LABEL_30:
  *a2 = v11;
}

unint64_t sub_1004803C0(void *a1)
{
  v1 = [a1 sections];
  sub_1000CE6B8(&unk_10191A360, &unk_1012094F0);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = _swiftEmptyArrayStorage;
  if (v2 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    v5 = _swiftEmptyArrayStorage;
    while ((v2 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_14;
      }

LABEL_9:
      v10 = v6;
      sub_1004805B4(&v10, &v9);
      swift_unknownObjectRelease();
      if (v9)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v5 = v11;
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_18;
      }
    }

    if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_15;
    }

    v6 = *(v2 + 8 * v4 + 32);
    swift_unknownObjectRetain();
    v7 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_9;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v5 = _swiftEmptyArrayStorage;
LABEL_18:

  if (v5 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      return v5;
    }

    goto LABEL_20;
  }

  if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_20:

    return 0;
  }

  return v5;
}

void sub_1004805B4(id *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = [*a1 type];
  if (v5 == 2)
  {
    if (MapsFeature_IsEnabled_SearchAndDiscovery())
    {
      objc_opt_self();
      v40 = swift_dynamicCastObjCClass();
      if (v40)
      {
        v41 = v40;
        swift_unknownObjectRetain();
        v42 = sub_1004816D0(v41);
        if (v42)
        {
          v43 = v42;
          v44 = [v41 displayName];
          if (v44)
          {
            v45 = v44;
            static String._unconditionallyBridgeFromObjectiveC(_:)();

            sub_1000CE6B8(&qword_101908400, &qword_1011E2ED0);
            v46 = swift_allocObject();
            *(v46 + 16) = xmmword_1011E47B0;
            *(v46 + 32) = v43;
            v47 = v43;
            v48 = String._bridgeToObjectiveC()();
          }

          else
          {
            sub_1000CE6B8(&qword_101908400, &qword_1011E2ED0);
            v50 = swift_allocObject();
            *(v50 + 16) = xmmword_1011E47B0;
            *(v50 + 32) = v43;
            v51 = v43;
            v48 = 0;
          }

          v52 = objc_allocWithZone(GEOResultRefinementSection);
          sub_100014C84(0, &qword_10190A8D8, GEOResultRefinement_ptr);
          isa = Array._bridgeToObjectiveC()().super.isa;

          v49 = [v52 initWithSectionHeader:v48 resultRefinements:isa];
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
          v49 = 0;
        }

        goto LABEL_93;
      }
    }

    goto LABEL_55;
  }

  if (v5 == 1)
  {
    objc_opt_self();
    v23 = swift_dynamicCastObjCClass();
    if (v23)
    {
      v24 = v23;
      swift_unknownObjectRetain();
      v94 = v24;
      v25 = [v24 elements];
      sub_100014C84(0, &qword_101922A20, off_1015F60D8);
      v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v10 = v2 & 0xFFFFFFFFFFFFFF8;
      if (v2 >> 62)
      {
        goto LABEL_64;
      }

      v26 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v91 = a2;
      if (v26)
      {
        goto LABEL_32;
      }

LABEL_65:

      v54 = [v94 clauseType] == 1;
      v55 = [v94 displayName];
      v105 = v54;
      if (v55)
      {
        v56 = v55;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v58 = v57;
      }

      else
      {
        v58 = 0;
      }

      v59 = [v94 maximumNumberOfSelectableElements];
      v60 = [v94 showEqualWidthButtonsOnFilterView];
      v61 = [v94 displayNameForMultiSelected];
      if (v61)
      {
        v62 = v61;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v64 = v63;
      }

      else
      {
        v64 = 0;
      }

      v65 = [v94 multiSelectIdentifier];
      if (v65)
      {
        v66 = v65;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v68 = v67;

        if (v58)
        {
LABEL_73:
          v69 = String._bridgeToObjectiveC()();

          goto LABEL_76;
        }
      }

      else
      {
        v68 = 0;
        if (v58)
        {
          goto LABEL_73;
        }
      }

      v69 = 0;
LABEL_76:
      sub_100014C84(0, &unk_10191A370, GEOResultRefinementMultiSelectElement_ptr);
      v70.super.isa = Array._bridgeToObjectiveC()().super.isa;

      if (v64)
      {
        v71 = String._bridgeToObjectiveC()();

        if (v68)
        {
LABEL_78:
          v72 = String._bridgeToObjectiveC()();

          goto LABEL_81;
        }
      }

      else
      {
        v71 = 0;
        if (v68)
        {
          goto LABEL_78;
        }
      }

      v72 = 0;
LABEL_81:
      v73 = [objc_allocWithZone(GEOResultRefinementMultiSelect) initWithDisplayName:v69 multiSelect:v70.super.isa maximumNumberOfSelectElements:v59 clauseType:v105 showEqualWidthButtonsOnFilterView:v60 displayNameForMultiSelected:v71 multiSelectIdentifier:v72];

      if (v73)
      {
        v74 = [objc_allocWithZone(GEOResultRefinement) initWithMultiSelect:v73];
        v75 = [v94 displayName];
        if (v75)
        {
          v76 = v75;
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          sub_1000CE6B8(&qword_101908400, &qword_1011E2ED0);
          v77 = swift_allocObject();
          *(v77 + 16) = xmmword_1011E47B0;
          *(v77 + 32) = v74;
          v78 = v74;
          v79 = String._bridgeToObjectiveC()();
        }

        else
        {
          sub_1000CE6B8(&qword_101908400, &qword_1011E2ED0);
          v80 = swift_allocObject();
          *(v80 + 16) = xmmword_1011E47B0;
          *(v80 + 32) = v74;
          v81 = v74;
          v79 = 0;
        }

        a2 = v91;
        v82 = objc_allocWithZone(GEOResultRefinementSection);
        sub_100014C84(0, &qword_10190A8D8, GEOResultRefinement_ptr);
        v83 = Array._bridgeToObjectiveC()().super.isa;

        v49 = [v82 initWithSectionHeader:v79 resultRefinements:v83];

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
        v49 = 0;
        a2 = v91;
      }

      goto LABEL_93;
    }

LABEL_55:
    v49 = 0;
    goto LABEL_93;
  }

  if (v5)
  {
    goto LABEL_55;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
    goto LABEL_55;
  }

  v7 = v6;
  swift_unknownObjectRetain();
  v8 = [v7 toggles];
  sub_100014C84(0, &unk_10191A380, off_1015F60E0);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = v9 & 0xFFFFFFFFFFFFFF8;
  if (v9 >> 62)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
    if (!v11)
    {
      goto LABEL_88;
    }
  }

  else
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
      goto LABEL_88;
    }
  }

  v12 = 0;
  v13 = v9 & 0xC000000000000001;
  v89 = v4;
  v90 = a2;
  v94 = (v9 & 0xFFFFFFFFFFFFFF8);
  v95 = v9;
  v92 = v9 & 0xC000000000000001;
  v93 = v11;
  while (2)
  {
    v14 = v12;
    while (1)
    {
      if (v13)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v14 >= *(v10 + 16))
        {
          goto LABEL_62;
        }

        v15 = *(v9 + 8 * v14 + 32);
      }

      v16 = v15;
      a2 = (v14 + 1);
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        while (1)
        {
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          v26 = _CocoaArrayWrapper.endIndex.getter();
          v91 = a2;
          if (!v26)
          {
            goto LABEL_65;
          }

LABEL_32:
          v27 = 0;
          v28 = v2 & 0xC000000000000001;
          v29 = &selRef_currentDeviceDetailsController;
          v100 = v10;
          v102 = v2;
          v96 = v2 & 0xC000000000000001;
          v98 = v26;
LABEL_33:
          v30 = v27;
          while (1)
          {
            if (v28)
            {
              v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v30 >= *(v10 + 16))
              {
                goto LABEL_63;
              }

              v31 = *(v2 + 8 * v30 + 32);
            }

            v32 = v31;
            if (__OFADD__(v30, 1))
            {
              break;
            }

            v104 = v30 + 1;
            v33 = [v31 v29[225]];
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
            sub_100014C84(0, &unk_10191A370, GEOResultRefinementMultiSelectElement_ptr);
            if (swift_dynamicCast())
            {
              v34 = [v32 displayName];
              if (!v34)
              {
                static String._unconditionallyBridgeFromObjectiveC(_:)();
                v34 = String._bridgeToObjectiveC()();
              }

              v35 = [v32 isSelected];
              v36 = [v106 metadata];
              v37 = [v106 elementType];
              v38 = [v106 evChargingConnectorType];
              v39 = [v32 selectionSequenceNumber];
              a2 = [objc_allocWithZone(GEOResultRefinementMultiSelectElement) initWithDisplayName:v34 isSelected:v35 metadata:v36 elementType:v37 evChargingConnectorType:v38 selectionSequenceNumber:v39];

              v10 = v100;
              v2 = v102;
              v28 = v96;
              v26 = v98;
              v29 = &selRef_currentDeviceDetailsController;
              if (a2)
              {
                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                  v29 = &selRef_currentDeviceDetailsController;
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                v27 = v30 + 1;
                if (v104 != v98)
                {
                  goto LABEL_33;
                }

                goto LABEL_65;
              }
            }

            else
            {
            }

            ++v30;
            if (v104 == v26)
            {
              goto LABEL_65;
            }
          }
        }
      }

      v17 = [v15 data];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_100014C84(0, &qword_101922A28, GEOResultRefinementToggle_ptr);
      if (!swift_dynamicCast())
      {

        goto LABEL_10;
      }

      v103 = (v14 + 1);
      v18 = [v16 displayName];
      if (!v18)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = String._bridgeToObjectiveC()();
      }

      v101 = [v16 isSelected];
      v2 = [v106 metadata];
      v99 = [v106 toggleType];
      v97 = [v106 evChargingConnectorType];
      v19 = [v16 selectionSequenceNumber];
      v20 = [v106 selectionFromView];
      v21 = [v106 refinementKey];
      if (!v21)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = String._bridgeToObjectiveC()();
      }

      LOBYTE(v88) = [v106 showAsSelected];
      LOBYTE(v87) = v20;
      v22 = [objc_allocWithZone(GEOResultRefinementToggle) initWithDisplayName:v18 isSelected:v101 metadata:v2 toggleType:v99 evChargingConnectorType:v97 selectionSequenceNumber:v19 selectionFromView:v87 refinementKey:v21 showAsSelected:v88];

      if (!v22)
      {

        v10 = v94;
        v9 = v95;
        v13 = v92;
        v11 = v93;
        a2 = (v14 + 1);
        goto LABEL_10;
      }

      v2 = [objc_allocWithZone(GEOResultRefinement) initWithToggle:v22];

      v10 = v94;
      v9 = v95;
      v13 = v92;
      v11 = v93;
      a2 = (v14 + 1);
      if (v2)
      {
        break;
      }

LABEL_10:
      ++v14;
      if (a2 == v11)
      {
        v4 = v89;
        a2 = v90;
        goto LABEL_88;
      }
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v12 = v14 + 1;
    v4 = v89;
    a2 = v90;
    if (v103 != v93)
    {
      continue;
    }

    break;
  }

LABEL_88:

  if (_swiftEmptyArrayStorage >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_92;
    }

LABEL_90:
    v84 = [v4 displayName];
    v85 = objc_allocWithZone(GEOResultRefinementSection);
    sub_100014C84(0, &qword_10190A8D8, GEOResultRefinement_ptr);
    v86 = Array._bridgeToObjectiveC()().super.isa;

    v49 = [v85 initWithSectionHeader:v84 resultRefinements:v86];
    swift_unknownObjectRelease();
  }

  else
  {
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_90;
    }

LABEL_92:

    swift_unknownObjectRelease();
    v49 = 0;
  }

LABEL_93:
  *a2 = v49;
}