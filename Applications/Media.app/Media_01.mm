BOOL sub_100019688(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + OBJC_IVAR____TtC5Media30RadioStationListViewController_collectionView);
  v5 = [v4 indexPathsForSelectedItems];
  result = 1;
  if (!v5 || (v6 = v5, type metadata accessor for IndexPath(), v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v6, LOBYTE(v6) = sub_100021FDC(a1, v7), , (v6 & 1) == 0))
  {
    v8 = *(a2 + OBJC_IVAR____TtC5Media30RadioStationListViewController_dataSource);
    if (!v8 || (v9 = v8, , v10 = sub_1000250A4(), v9, , (v10 & 1) == 0))
    {
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v12 = [v4 cellForItemAtIndexPath:isa];

      if (!v12)
      {
        return 0;
      }

      v13 = [v12 isFocused];

      if ((v13 & 1) == 0)
      {
        return 0;
      }
    }
  }

  return result;
}

void *sub_1000197C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for UICollectionLayoutListConfiguration();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = swift_projectBox();
  sub_100005A50(0, &unk_1000EBD90, NSCollectionLayoutSection_ptr);
  swift_beginAccess();
  (*(v4 + 16))(v6, v7, v3);
  v8 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
  (*(v4 + 8))(v6, v3);
  [v8 contentInsets];
  [v8 setContentInsets:0.0];
  [v8 setInterGroupSpacing:0.0];
  return v8;
}

void sub_100019940()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v2 = *(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
  v3 = Strong;

  if (!v2)
  {
    goto LABEL_8;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!v9)
  {
    goto LABEL_8;
  }

  if ([v9 mediaSourceSemanticType] == 3)
  {
    v4 = *(v0 + OBJC_IVAR____TtC5Media30RadioStationListViewController_dataSource);
    if (v4)
    {
      v5 = *&v4[qword_1000EE3E8];
      if (*(v5 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_activeCategory + 8))
      {
        goto LABEL_7;
      }

      if (*(v5 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_filteringStrategy) == 5)
      {
        *(v5 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_filteringStrategy) = 4;
        v8 = v4;

        sub_1000220D4();

        goto LABEL_10;
      }
    }

    return;
  }

LABEL_7:

LABEL_8:
  v6 = *(v0 + OBJC_IVAR____TtC5Media30RadioStationListViewController_dataSource);
  if (!v6)
  {
    return;
  }

  *(*&v6[qword_1000EE3E8] + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_filteringStrategy) = 5;
  v7 = v6;

  sub_1000220D4();

LABEL_10:
}

void sub_100019AEC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = *(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager), v3 = Strong, , v3, v2) && (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , , v14 == 1) && (v4 = swift_unknownObjectWeakLoadStrong()) != 0 && (v5 = *(v4 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager), v6 = v4, , v6, v5) && (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , , v13 == 1))
  {
    v7 = [objc_opt_self() nowPlayingBarButtonWithTarget:v0 action:"nowPlayingTapped"];
    v8 = String._bridgeToObjectiveC()();
    [v7 setAccessibilityIdentifier:v8];

    v9 = [v0 navigationItem];
    sub_10000368C(&unk_1000EC820, &qword_1000B5090);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1000B4FC0;
    *(v10 + 32) = v7;
    sub_100005A50(0, &unk_1000EBD80, UIBarButtonItem_ptr);
    v11 = v7;
    v12.super.isa = Array._bridgeToObjectiveC()().super.isa;

    [v9 setRightBarButtonItems:v12.super.isa];
  }

  else
  {
    v9 = [v0 navigationItem];
    sub_100005A50(0, &unk_1000EBD80, UIBarButtonItem_ptr);
    v12.super.isa = Array._bridgeToObjectiveC()().super.isa;
    [v9 setRightBarButtonItems:v12.super.isa];
  }
}

uint64_t sub_100019EF0(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = a1;
  LOBYTE(a1) = sub_10001AD94();

  (*(v7 + 8))(v9, v6);
  return a1 & 1;
}

void sub_100019FF0(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = OBJC_IVAR____TtC5Media30RadioStationListViewController_carManager;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = *&v2[OBJC_IVAR____TtC5Media30RadioStationListViewController_dataSource];
    if (v11)
    {
      v12 = *&v11[qword_1000EE3E8];
      if (*(v12 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_groupingStrategy) - 1 <= 1 && !*(v12 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_activeCategory + 8))
      {
        v41 = Strong;
        v42 = v11;
        v43 = IndexPath.section.getter();

        v44 = sub_100025278(v43);
        v46 = v45;

        objc_allocWithZone(type metadata accessor for RadioStationListViewController());
        v52 = v41;
        v47 = sub_10001AAC8(v52, v44, v46);

        v48 = [v3 navigationController];
        if (v48)
        {
          v49 = v48;
          [v48 pushViewController:v47 animated:1];
        }

        v50 = v52;

        return;
      }
    }
  }

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [a1 deselectItemAtIndexPath:isa animated:1];

  v14 = OBJC_IVAR____TtC5Media30RadioStationListViewController_dataSource;
  v15 = *&v3[OBJC_IVAR____TtC5Media30RadioStationListViewController_dataSource];
  if (v15)
  {
    v16 = *(*(v15 + qword_1000EE3E8) + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_filteringStrategy);
    if (v16 != 5 && !IndexPath.section.getter())
    {
      v33 = sub_10001A530(v16, &off_1000DF318);
      if (v34)
      {
        v35 = 0;
      }

      else
      {
        v35 = v33;
      }

      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        __break(1u);
      }

      else
      {
        if (v37 >= 5)
        {
          v38 = 0;
        }

        else
        {
          v38 = v37;
        }

        v39 = *&v3[v14];
        if (!v39)
        {
          return;
        }

        if ((v38 & 0x8000000000000000) == 0)
        {
          *(*&v39[qword_1000EE3E8] + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_filteringStrategy) = *(&off_1000DF340 + v38 + 32);
          v40 = v39;

          sub_1000220D4();

          goto LABEL_35;
        }
      }

      __break(1u);
      return;
    }
  }

  if (qword_1000EACE0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100006928(v17, qword_1000F3B70);
  (*(v7 + 16))(v9, a2, v6);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 134217984;
    v21 = IndexPath.row.getter();
    (*(v7 + 8))(v9, v6);
    *(v20 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v18, v19, "RadioStation: processing selection on row %ld", v20, 0xCu);
  }

  else
  {
    (*(v7 + 8))(v9, v6);
  }

  v22 = *&v3[v14];
  if (v22)
  {
    v23 = v22;

    v24 = sub_1000250A4();

    if (v24)
    {
      v25 = swift_unknownObjectWeakLoadStrong();
      if (v25)
      {
        v26 = v25;
        sub_100010040();
      }

      return;
    }

    v27 = *&v3[v14];
    if (v27)
    {

      v28 = v27;
      v29 = sub_100024F70();

      if (v29)
      {
        v30 = swift_unknownObjectWeakLoadStrong();
        if (v30)
        {
          v31 = v30;
          v32 = [*(v30 + OBJC_IVAR____TtC5Media15RadioCarManager_carManager) currentCar];

          if (v32)
          {
            sub_100081374(v29);
          }
        }

LABEL_35:
      }
    }
  }
}

uint64_t sub_10001A530(unsigned __int8 a1, uint64_t a2)
{
  v15 = *(a2 + 16);
  v2 = 0;
  if (v15)
  {
    v16 = a2 + 32;
    v3 = 0xE600000000000000;
    v4 = a1;
    while (1)
    {
      v5 = *(v16 + v2);
      if (v5 <= 1)
      {
        if (*(v16 + v2))
        {
          v6 = 0x7374726F7053;
        }

        else
        {
          v6 = 0x636973754DLL;
        }

        if (*(v16 + v2))
        {
          v7 = 0xE600000000000000;
        }

        else
        {
          v7 = 0xE500000000000000;
        }
      }

      else if (v5 == 2)
      {
        v7 = 0xE400000000000000;
        v6 = 1802264916;
      }

      else
      {
        if (v5 == 3)
        {
          v6 = 1937204558;
        }

        else
        {
          v6 = 0x726568744FLL;
        }

        if (v5 == 3)
        {
          v7 = 0xE400000000000000;
        }

        else
        {
          v7 = 0xE500000000000000;
        }
      }

      if (v4 == 3)
      {
        v8 = 1937204558;
      }

      else
      {
        v8 = 0x726568744FLL;
      }

      if (v4 == 3)
      {
        v9 = 0xE400000000000000;
      }

      else
      {
        v9 = 0xE500000000000000;
      }

      if (v4 == 2)
      {
        v8 = 1802264916;
        v9 = 0xE400000000000000;
      }

      if (v4)
      {
        v10 = 0x7374726F7053;
      }

      else
      {
        v10 = 0x636973754DLL;
      }

      if (!v4)
      {
        v3 = 0xE500000000000000;
      }

      v11 = v4 <= 1 ? v10 : v8;
      v12 = v4 <= 1 ? v3 : v9;
      if (v6 == v11 && v7 == v12)
      {
        break;
      }

      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v13)
      {
        return v2;
      }

      ++v2;
      v3 = 0xE600000000000000;
      if (v15 == v2)
      {
        return 0;
      }
    }
  }

  return v2;
}

unint64_t sub_10001A6C8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (String.subscript.getter() != a1 || v9 != a2)
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      return v8;
    }

    v8 = String.index(after:)();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

void sub_10001A8B8(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC5Media30RadioStationListViewController_dataSource];
  if (v1)
  {
    v3 = a1;
    v2 = v1;

    sub_10002539C();
  }
}

id sub_10001A974(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for RadioStationListViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_10001AA4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = v5(a2, a3);

  swift_unknownObjectRelease();

  return v6;
}

id sub_10001AAC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC5Media30RadioStationListViewController_dataSource] = 0;
  swift_unknownObjectWeakInit();
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = sub_100003210(_swiftEmptyArrayStorage);
  }

  else
  {
    v6 = &_swiftEmptySetSingleton;
  }

  *&v3[OBJC_IVAR____TtC5Media30RadioStationListViewController_cancelSet] = v6;
  v7 = &v3[OBJC_IVAR____TtC5Media30RadioStationListViewController_defaultSectionInsets];
  *v7 = xmmword_1000B4FD0;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  v3[OBJC_IVAR____TtC5Media30RadioStationListViewController_groupingStrategy] = 3;
  swift_unknownObjectWeakAssign();
  v8 = &v3[OBJC_IVAR____TtC5Media30RadioStationListViewController_initialActiveCategory];
  *v8 = a2;
  v8[1] = a3;
  v9 = [objc_allocWithZone(UICollectionViewFlowLayout) init];
  v10 = [objc_allocWithZone(UICollectionView) initWithFrame:v9 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  *&v3[OBJC_IVAR____TtC5Media30RadioStationListViewController_collectionView] = v10;
  v12.receiver = v3;
  v12.super_class = type metadata accessor for RadioStationListViewController();
  return objc_msgSendSuper2(&v12, "initWithNibName:bundle:", 0, 0);
}

uint64_t sub_10001AC48()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001AC90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10001ACA8()
{
  *(v0 + OBJC_IVAR____TtC5Media30RadioStationListViewController_dataSource) = 0;
  swift_unknownObjectWeakInit();
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v1 = sub_100003210(_swiftEmptyArrayStorage);
  }

  else
  {
    v1 = &_swiftEmptySetSingleton;
  }

  *(v0 + OBJC_IVAR____TtC5Media30RadioStationListViewController_cancelSet) = v1;
  v2 = v0 + OBJC_IVAR____TtC5Media30RadioStationListViewController_defaultSectionInsets;
  *v2 = xmmword_1000B4FD0;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v0 + OBJC_IVAR____TtC5Media30RadioStationListViewController_groupingStrategy) = 3;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10001AD94()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Media30RadioStationListViewController_dataSource);
  if (!v1)
  {
    return 1;
  }

  if (*(*(v1 + qword_1000EE3E8) + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_filteringStrategy) == 5)
  {
    return 1;
  }

  result = IndexPath.section.getter();
  if (result)
  {
    return 1;
  }

  return result;
}

unint64_t sub_10001ADF4()
{
  result = qword_1000ED0D0;
  if (!qword_1000ED0D0)
  {
    sub_100005A50(255, &unk_1000ED0C0, NSRunLoop_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED0D0);
  }

  return result;
}

uint64_t sub_10001AE78()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001AF14@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000368C(&qword_1000EB118, &qword_1000B3FD0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_1000077CC(v2, &v14 - v9, &qword_1000EB118, &qword_1000B3FD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorScheme();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_10001B114@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v132 = a2;
  v133 = a1;
  v117 = type metadata accessor for ColorScheme();
  v116 = *(v117 - 8);
  v3 = __chkstk_darwin(v117);
  v112 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v111 = &v94 - v5;
  v115 = type metadata accessor for BlendMode();
  v114 = *(v115 - 8);
  __chkstk_darwin(v115);
  v110 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_10000368C(&qword_1000EBFF8, &qword_1000B53E0);
  v7 = __chkstk_darwin(v108);
  v107 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v101 = &v94 - v9;
  v10 = type metadata accessor for DynamicTypeSize();
  v124 = *(v10 - 8);
  v125 = v10;
  v11 = __chkstk_darwin(v10);
  v123 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v122 = &v94 - v13;
  v105 = sub_10000368C(&qword_1000EC000, &qword_1000B53E8);
  __chkstk_darwin(v105);
  v126 = &v94 - v14;
  v104 = sub_10000368C(&qword_1000EC008, &qword_1000B53F0);
  v102 = *(v104 - 8);
  __chkstk_darwin(v104);
  v127 = &v94 - v15;
  v100 = sub_10000368C(&qword_1000EC010, &qword_1000B53F8);
  v99 = *(v100 - 8);
  __chkstk_darwin(v100);
  v98 = &v94 - v16;
  v97 = sub_10000368C(&qword_1000EC018, &qword_1000B5400);
  __chkstk_darwin(v97);
  v96 = &v94 - v17;
  v95 = sub_10000368C(&qword_1000EC020, &qword_1000B5408);
  __chkstk_darwin(v95);
  v106 = &v94 - v18;
  v131 = sub_10000368C(&qword_1000EC028, &qword_1000B5410);
  v19 = __chkstk_darwin(v131);
  v103 = &v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v109 = &v94 - v21;
  v129 = sub_10000368C(&qword_1000EC030, &qword_1000B5418);
  __chkstk_darwin(v129);
  v130 = &v94 - v22;
  v23 = sub_10000368C(&qword_1000EC038, &qword_1000B5420);
  v24 = __chkstk_darwin(v23);
  v121 = &v94 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = &v94 - v26;
  v128 = sub_10000368C(&qword_1000EC040, &qword_1000B5428);
  __chkstk_darwin(v128);
  v29 = &v94 - v28;
  v30 = *(type metadata accessor for NowPlayingTitleView.ArtistAlbumStyle(0) + 20);
  v113 = v2;
  v31 = (v2 + v30);
  v33 = *v31;
  v32 = v31[1];
  v120 = v33;
  *&v135 = v33;
  *(&v135 + 1) = v32;
  v119 = v32;
  v118 = sub_10000368C(&qword_1000EC048, &qword_1000B5430);
  State.wrappedValue.getter();
  v34 = v134;
  swift_getKeyPath();
  *&v135 = v34;
  sub_1000219C8(&qword_1000EB0F0, type metadata accessor for RadioNowPlayingViewModel, &unk_1000B42A8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v35 = *(v34 + 17);

  if (v35 <= 2 && v35)
  {
    v36 = v35 == 1 ? 0x4D646E417370616DLL : 0xD000000000000010;
    v37 = v35 == 1 ? 0xEC00000061696465 : 0x80000001000BAEF0;
    if (v36 == 0xD000000000000010 && 0x80000001000BAEF0 == v37)
    {
      goto LABEL_13;
    }
  }

  v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v38)
  {
    goto LABEL_15;
  }

  if (v35 <= 2)
  {
    if (v35)
    {
      v53 = v35 == 1 ? 0x4D646E417370616DLL : 0xD000000000000010;
      v54 = v35 == 1 ? 0xEC00000061696465 : 0x80000001000BAEF0;
    }

    else
    {
      v54 = 0xE400000000000000;
      v53 = 1701736302;
    }
  }

  else if (v35 > 4)
  {
    if (v35 == 5)
    {
      v53 = 0x756964654D616364;
      v54 = 0xE90000000000006DLL;
    }

    else
    {
      v54 = 0xE700000000000000;
      v53 = 0x6C6C6154616364;
    }
  }

  else
  {
    v53 = 0x6D696E694D616364;
    v54 = v35 == 3 ? 0xEA00000000006C61 : 0xEE00656469576C61;
  }

  if (v53 == 0x4D646E417370616DLL && v54 == 0xEC00000061696465)
  {
LABEL_13:

LABEL_15:
    v39 = static Font.body.getter();
    KeyPath = swift_getKeyPath();
    v41 = sub_10000368C(&qword_1000EC050, &unk_1000B5468);
    (*(*(v41 - 8) + 16))(v27, v133, v41);
    v42 = &v27[*(v23 + 36)];
    *v42 = KeyPath;
    v42[1] = v39;
    static Font.Weight.regular.getter();
    sub_100021308();
    View.fontWeight(_:)();
    sub_100007834(v27, &qword_1000EC038, &qword_1000B5420);
    LODWORD(v39) = static HierarchicalShapeStyle.secondary.getter();
    *&v29[*(sub_10000368C(&qword_1000EC068, &qword_1000B5478) + 36)] = v39;
    v43 = swift_getKeyPath();
    v44 = &v29[*(sub_10000368C(&qword_1000EC070, &qword_1000B54B0) + 36)];
    *v44 = v43;
    *(v44 + 1) = 1;
    v44[16] = 0;
    v45 = swift_getKeyPath();
    v46 = &v29[*(sub_10000368C(&qword_1000EC078, &qword_1000B54E8) + 36)];
    *v46 = v45;
    v46[8] = 1;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v47 = &v29[*(v128 + 36)];
    v48 = v136;
    *v47 = v135;
    *(v47 + 1) = v48;
    *(v47 + 2) = v137;
    v49 = &qword_1000EC040;
    v50 = &qword_1000B5428;
    sub_1000077CC(v29, v130, &qword_1000EC040, &qword_1000B5428);
    swift_storeEnumTagMultiPayload();
    sub_1000213FC();
    sub_1000216EC();
    _ConditionalContent<>.init(storage:)();
    v51 = v29;
    return sub_100007834(v51, v49, v50);
  }

  v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v55)
  {
    goto LABEL_15;
  }

  *&v135 = v120;
  *(&v135 + 1) = v119;
  State.wrappedValue.getter();
  v56 = v134;
  swift_getKeyPath();
  *&v135 = v56;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v57 = *(v56 + 16);

  if (v57 == 1)
  {
    v58 = static Font.caption.getter();
  }

  else
  {
    v58 = static Font.body.getter();
  }

  v59 = v58;
  v60 = v124;
  v61 = v125;
  v62 = v122;
  v63 = swift_getKeyPath();
  v64 = sub_10000368C(&qword_1000EC050, &unk_1000B5468);
  v65 = v121;
  (*(*(v64 - 8) + 16))(v121, v133, v64);
  v66 = (v65 + *(v23 + 36));
  *v66 = v63;
  v66[1] = v59;
  static Font.Weight.regular.getter();
  v133 = sub_100021308();
  View.fontWeight(_:)();
  sub_100007834(v65, &qword_1000EC038, &qword_1000B5420);
  v67 = v60[13];
  v67(v62, enum case for DynamicTypeSize.large(_:), v61);
  v68 = v123;
  v67(v123, enum case for DynamicTypeSize.xLarge(_:), v61);
  sub_1000219C8(&qword_1000EC0F0, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v69 = v60[4];
    v70 = v101;
    v69(v101, v62, v61);
    v71 = v108;
    v69((v70 + *(v108 + 48)), v68, v61);
    v72 = v107;
    sub_1000077CC(v70, v107, &qword_1000EBFF8, &qword_1000B53E0);
    v125 = *(v71 + 48);
    v73 = v126;
    v69(v126, v72, v61);
    v74 = v60[1];
    v74(v72 + v125, v61);
    sub_10001721C(v70, v72, &qword_1000EBFF8, &qword_1000B53E0);
    v69(&v73[*(v105 + 36)], (v72 + *(v71 + 48)), v61);
    v74(v72, v61);
    *&v135 = v23;
    *(&v135 + 1) = v133;
    swift_getOpaqueTypeConformance2();
    sub_100005870(&qword_1000EC0E8, &qword_1000EC000, &qword_1000B53E8, &protocol conformance descriptor for ClosedRange<A>);
    v75 = v98;
    v77 = v126;
    v76 = v127;
    v78 = v104;
    View.dynamicTypeSize<A>(_:)();
    sub_100007834(v77, &qword_1000EC000, &qword_1000B53E8);
    (*(v102 + 8))(v76, v78);
    LODWORD(v73) = static HierarchicalShapeStyle.secondary.getter();
    v79 = v96;
    (*(v99 + 32))(v96, v75, v100);
    *(v79 + *(v97 + 36)) = v73;
    v80 = swift_getKeyPath();
    v81 = v106;
    sub_10001721C(v79, v106, &qword_1000EC018, &qword_1000B5400);
    v82 = v81 + *(v95 + 36);
    *v82 = v80;
    *(v82 + 8) = 1;
    *(v82 + 16) = 0;
    v83 = v111;
    sub_10001AF14(v111);
    v84 = v116;
    v85 = v112;
    v86 = v117;
    (*(v116 + 104))(v112, enum case for ColorScheme.dark(_:), v117);
    LOBYTE(v80) = static ColorScheme.== infix(_:_:)();
    v87 = *(v84 + 8);
    v87(v85, v86);
    v87(v83, v86);
    v88 = v114;
    v89 = &enum case for BlendMode.plusLighter(_:);
    if ((v80 & 1) == 0)
    {
      v89 = &enum case for BlendMode.plusDarker(_:);
    }

    v90 = v110;
    v91 = v115;
    (*(v114 + 104))(v110, *v89, v115);
    v92 = v103;
    (*(v88 + 32))(&v103[*(v131 + 36)], v90, v91);
    sub_10001721C(v81, v92, &qword_1000EC020, &qword_1000B5408);
    v49 = &qword_1000EC028;
    v50 = &qword_1000B5410;
    v93 = v109;
    sub_10001721C(v92, v109, &qword_1000EC028, &qword_1000B5410);
    sub_1000077CC(v93, v130, &qword_1000EC028, &qword_1000B5410);
    swift_storeEnumTagMultiPayload();
    sub_1000213FC();
    sub_1000216EC();
    _ConditionalContent<>.init(storage:)();
    v51 = v93;
    return sub_100007834(v51, v49, v50);
  }

  __break(1u);
  return result;
}

uint64_t sub_10001C4B0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v124 = a3;
  v5 = sub_10000368C(&qword_1000EBF00, &qword_1000B5208);
  v122 = *(v5 - 8);
  v123 = v5;
  __chkstk_darwin(v5);
  v115 = &v107 - v6;
  v116 = sub_10000368C(&qword_1000EBF08, &qword_1000B5210);
  v118 = *(v116 - 8);
  v7 = __chkstk_darwin(v116);
  v110 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v111 = &v107 - v9;
  v10 = sub_10000368C(&qword_1000EBF10, &qword_1000B5218);
  v11 = __chkstk_darwin(v10 - 8);
  v114 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v113 = &v107 - v14;
  v15 = __chkstk_darwin(v13);
  v112 = &v107 - v16;
  __chkstk_darwin(v15);
  v117 = &v107 - v17;
  v18 = sub_10000368C(&qword_1000EBF18, &qword_1000B5220);
  v19 = __chkstk_darwin(v18 - 8);
  v121 = &v107 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v120 = &v107 - v21;
  v22 = sub_10000368C(&qword_1000EBF20, &qword_1000B5228);
  v23 = __chkstk_darwin(v22);
  v119 = &v107 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v107 - v25;
  v27 = type metadata accessor for EnvironmentValues();
  v125 = *(v27 - 8);
  v126 = v27;
  __chkstk_darwin(v27);
  v29 = &v107 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);

  v30 = a1;
  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v31 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v125 + 8))(v29, v126);
    v30 = v128;
  }

  swift_getKeyPath();
  v128 = v30;
  sub_1000219C8(&qword_1000EB0F0, type metadata accessor for RadioNowPlayingViewModel, &unk_1000B42A8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v32 = *(v30 + 17);

  if (v32 == 3)
  {
  }

  else
  {
    v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v33 & 1) == 0)
    {
      v37 = 1;
      goto LABEL_10;
    }
  }

  v34 = a1;
  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v35 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v125 + 8))(v29, v126);
    v34 = v128;
  }

  swift_getKeyPath();
  v128 = v34;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v36 = *(v34 + 41);

  v37 = v36 ^ 1;
LABEL_10:
  KeyPath = swift_getKeyPath();
  v39 = swift_allocObject();
  *(v39 + 16) = a1;
  *(v39 + 24) = a2 & 1;
  v40 = &v26[*(v22 + 36)];
  type metadata accessor for _TaskModifier();

  static TaskPriority.userInitiated.getter();
  *v40 = &unk_1000B5288;
  *(v40 + 1) = v39;
  *v26 = KeyPath;
  v26[8] = 0;
  if (v37)
  {

    if ((a2 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v41 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v125 + 8))(v29, v126);
    }

    v42 = sub_10000ABB4();
    v44 = v43;

    v45 = HIBYTE(v44) & 0xF;
    if ((v44 & 0x2000000000000000) == 0)
    {
      v45 = v42 & 0xFFFFFFFFFFFFLL;
    }

    if (v45)
    {

      if ((a2 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v46 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v125 + 8))(v29, v126);
      }

      v47 = sub_10000ABB4();
      v49 = v48;

      v128 = v47;
      v129 = v49;
      sub_100020F58();
      v108 = Text.init<A>(_:)();
      v51 = v50;
      v53 = v52;
      v109 = v54;

      v55 = a1;
      if ((a2 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v56 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v125 + 8))(v29, v126);
        v55 = v128;
      }

      v57 = swift_getKeyPath();
      v58 = v116;
      v59 = v111;
      v60 = &v111[*(v116 + 36)];
      *v60 = v57;
      sub_10000368C(&qword_1000EB118, &qword_1000B3FD0);
      swift_storeEnumTagMultiPayload();
      v61 = (v60 + *(type metadata accessor for NowPlayingTitleView.ArtistAlbumStyle(0) + 20));
      v127 = v55;
      type metadata accessor for RadioNowPlayingViewModel(0);
      State.init(wrappedValue:)();
      v62 = v129;
      *v61 = v128;
      v61[1] = v62;
      *v59 = v108;
      *(v59 + 1) = v51;
      v59[16] = v53 & 1;
      *(v59 + 3) = v109;
      v63 = v59;
      v64 = v58;
      v65 = v117;
      sub_10001721C(v63, v117, &qword_1000EBF08, &qword_1000B5210);
      v66 = 0;
    }

    else
    {
      v66 = 1;
      v64 = v116;
      v65 = v117;
    }

    v69 = v118 + 56;
    v70 = *(v118 + 56);
    v70(v65, v66, 1, v64);

    if ((a2 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v71 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v125 + 8))(v29, v126);
    }

    v72 = sub_10000A22C();

    if (v72)
    {
      v118 = v69;

      if ((a2 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v73 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v125 + 8))(v29, v126);
      }

      v74 = sub_10000AD74();
      v76 = v75;

      v77 = HIBYTE(v76) & 0xF;
      if ((v76 & 0x2000000000000000) == 0)
      {
        v77 = v74 & 0xFFFFFFFFFFFFLL;
      }

      if (v77)
      {

        if ((a2 & 1) == 0)
        {
          static os_log_type_t.fault.getter();
          v78 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          EnvironmentValues.init()();
          swift_getAtKeyPath();

          (*(v125 + 8))(v29, v126);
        }

        v79 = sub_10000AD74();
        v81 = v80;

        v128 = v79;
        v129 = v81;
        sub_100020F58();
        v82 = Text.init<A>(_:)();
        v84 = v83;
        v86 = v85;
        v88 = v87;

        if ((a2 & 1) == 0)
        {
          static os_log_type_t.fault.getter();
          v89 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          v64 = v116;
          EnvironmentValues.init()();
          swift_getAtKeyPath();

          (*(v125 + 8))(v29, v126);
          a1 = v128;
        }

        v90 = swift_getKeyPath();
        v91 = v110;
        v92 = &v110[*(v64 + 36)];
        *v92 = v90;
        sub_10000368C(&qword_1000EB118, &qword_1000B3FD0);
        swift_storeEnumTagMultiPayload();
        v93 = (v92 + *(type metadata accessor for NowPlayingTitleView.ArtistAlbumStyle(0) + 20));
        v127 = a1;
        type metadata accessor for RadioNowPlayingViewModel(0);
        State.init(wrappedValue:)();
        v94 = v129;
        *v93 = v128;
        v93[1] = v94;
        *v91 = v82;
        *(v91 + 8) = v84;
        *(v91 + 16) = v86 & 1;
        *(v91 + 24) = v88;
        v95 = v112;
        sub_10001721C(v91, v112, &qword_1000EBF08, &qword_1000B5210);
        v96 = 0;
        goto LABEL_39;
      }

      v96 = 1;
    }

    else
    {
      v96 = 1;
    }

    v95 = v112;
LABEL_39:
    v70(v95, v96, 1, v64);
    v97 = v117;
    v98 = v113;
    sub_1000077CC(v117, v113, &qword_1000EBF10, &qword_1000B5218);
    v99 = v114;
    sub_1000077CC(v95, v114, &qword_1000EBF10, &qword_1000B5218);
    v100 = v115;
    sub_1000077CC(v98, v115, &qword_1000EBF10, &qword_1000B5218);
    v101 = sub_10000368C(&qword_1000EBF38, &qword_1000B52D0);
    sub_1000077CC(v99, v100 + *(v101 + 48), &qword_1000EBF10, &qword_1000B5218);
    sub_100007834(v95, &qword_1000EBF10, &qword_1000B5218);
    sub_100007834(v97, &qword_1000EBF10, &qword_1000B5218);
    sub_100007834(v99, &qword_1000EBF10, &qword_1000B5218);
    sub_100007834(v98, &qword_1000EBF10, &qword_1000B5218);
    v68 = v120;
    sub_10001721C(v100, v120, &qword_1000EBF00, &qword_1000B5208);
    v67 = 0;
    goto LABEL_40;
  }

  v67 = 1;
  v68 = v120;
LABEL_40:
  (*(v122 + 56))(v68, v67, 1, v123);
  v102 = v119;
  sub_1000077CC(v26, v119, &qword_1000EBF20, &qword_1000B5228);
  v103 = v121;
  sub_1000077CC(v68, v121, &qword_1000EBF18, &qword_1000B5220);
  v104 = v124;
  sub_1000077CC(v102, v124, &qword_1000EBF20, &qword_1000B5228);
  v105 = sub_10000368C(&qword_1000EBF28, &qword_1000B5290);
  sub_1000077CC(v103, v104 + *(v105 + 48), &qword_1000EBF18, &qword_1000B5220);
  sub_100007834(v68, &qword_1000EBF18, &qword_1000B5220);
  sub_100007834(v26, &qword_1000EBF20, &qword_1000B5228);
  sub_100007834(v103, &qword_1000EBF18, &qword_1000B5220);
  return sub_100007834(v102, &qword_1000EBF20, &qword_1000B5228);
}

uint64_t sub_10001D43C(uint64_t a1, char a2)
{
  *(v2 + 96) = a2;
  *(v2 + 24) = a1;
  v3 = type metadata accessor for EnvironmentValues();
  *(v2 + 32) = v3;
  *(v2 + 40) = *(v3 - 8);
  *(v2 + 48) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v2 + 56) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 64) = v5;
  *(v2 + 72) = v4;

  return _swift_task_switch(sub_10001D534, v5, v4);
}

uint64_t sub_10001D534()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 24);

  if ((v1 & 1) == 0)
  {
    v4 = *(v0 + 40);
    v3 = *(v0 + 48);
    v5 = *(v0 + 32);
    static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v4 + 8))(v3, v5);
    v2 = *(v0 + 16);
  }

  *(v0 + 80) = v2;
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *v7 = v0;
  v7[1] = sub_10001D66C;

  return sub_10000AF34();
}

uint64_t sub_10001D66C()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_10001D7B0, v3, v2);
}

uint64_t sub_10001D7B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001D824@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v5 = type metadata accessor for NonMarqueeTitle(0);
  __chkstk_darwin(v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10000368C(&qword_1000EC0F8, &qword_1000B5530);
  __chkstk_darwin(v30);
  v9 = &v29 - v8;
  v31 = sub_10000368C(&qword_1000EC100, &qword_1000B5538);
  __chkstk_darwin(v31);
  v11 = &v29 - v10;
  v12 = type metadata accessor for EnvironmentValues();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v13 + 8))(v15, v12);
    a1 = v34;
  }

  swift_getKeyPath();
  v34 = a1;
  sub_1000219C8(&qword_1000EB0F0, type metadata accessor for RadioNowPlayingViewModel, &unk_1000B42A8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v17 = *(a1 + 24);
  v18 = *(a1 + 32);
  v19 = *(a1 + 40);
  sub_10000C964(v17, v18, *(a1 + 40));

  if (v19 != 1)
  {
    goto LABEL_11;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!v34)
  {
    LOBYTE(v19) = 1;
LABEL_11:
    sub_10000C9C0(v17, v18, v19);
    *v7 = swift_getKeyPath();
    v7[8] = 0;
    v26 = *(v5 + 20);
    *&v7[v26] = swift_getKeyPath();
    sub_10000368C(&qword_1000EB118, &qword_1000B3FD0);
    swift_storeEnumTagMultiPayload();
    sub_100021A38(v7, v9);
    swift_storeEnumTagMultiPayload();
    sub_100005870(&qword_1000EC108, &qword_1000EC100, &qword_1000B5538, &protocol conformance descriptor for HStack<A>);
    sub_1000219C8(&qword_1000EC110, type metadata accessor for NonMarqueeTitle, &unk_1000B5630);
    _ConditionalContent<>.init(storage:)();
    return sub_100021A9C(v7);
  }

  v20 = (v34 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_multicast);
  swift_beginAccess();
  v21 = *v20;
  LOBYTE(v20) = v20[1];

  LOBYTE(v19) = 1;
  if ((v20 & 1) != 0 || !v21)
  {
    goto LABEL_11;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v22 = v33;
  if (v33 && (v23 = [v33 playbackState], v22, v23 != 1))
  {
    v24 = static Color.secondary.getter();
    v25 = 0;
  }

  else
  {
    sub_100005A50(0, &unk_1000ED140, UIColor_ptr);
    static UIColor.cafui_HDOrangeColor.getter();
    v24 = Color.init(uiColor:)();
    v25 = 1;
  }

  *v11 = static VerticalAlignment.center.getter();
  *(v11 + 1) = 0x4000000000000000;
  v11[16] = 0;
  v28 = sub_10000368C(&qword_1000EC118, &qword_1000B55F8);
  sub_10001DE48(v25, v24, &v11[*(v28 + 44)]);
  sub_1000077CC(v11, v9, &qword_1000EC100, &qword_1000B5538);
  swift_storeEnumTagMultiPayload();
  sub_100005870(&qword_1000EC108, &qword_1000EC100, &qword_1000B5538, &protocol conformance descriptor for HStack<A>);
  sub_1000219C8(&qword_1000EC110, type metadata accessor for NonMarqueeTitle, &unk_1000B5630);
  _ConditionalContent<>.init(storage:)();
  sub_10000C9C0(v17, v18, 1);

  return sub_100007834(v11, &qword_1000EC100, &qword_1000B5538);
}

uint64_t sub_10001DE48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v5 = a1;
  v36 = a4;
  v6 = type metadata accessor for NonMarqueeTitle(0);
  v7 = v6 - 8;
  v8 = __chkstk_darwin(v6);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v32 - v11;
  *v12 = swift_getKeyPath();
  v12[8] = 0;
  v13 = *(v7 + 28);
  *&v12[v13] = swift_getKeyPath();
  sub_10000368C(&qword_1000EB118, &qword_1000B3FD0);
  swift_storeEnumTagMultiPayload();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v51[55] = v56;
  *&v51[71] = v57;
  *&v51[87] = v58;
  *&v51[103] = v59;
  *&v51[7] = v53;
  *&v51[23] = v54;
  v52 = 0;
  *&v51[39] = v55;
  v34 = static VerticalAlignment.center.getter();
  LOBYTE(v37) = 0;
  sub_10001E150(v5, a2, &v42);
  v14 = v42;
  v15 = v43;
  v16 = v44;
  v33 = v45;
  v17 = v46;
  v18 = v47;
  LOBYTE(v42) = v46;
  LOBYTE(a2) = v37;
  v35 = v10;
  sub_100021A38(v12, v10);
  v19 = v10;
  v20 = v36;
  sub_100021A38(v19, v36);
  v21 = sub_10000368C(&qword_1000EC120, &qword_1000B5600);
  v22 = v20 + *(v21 + 48);
  *v22 = 0x4020000000000000;
  *(v22 + 8) = 0;
  v23 = *&v51[80];
  *(v22 + 73) = *&v51[64];
  *(v22 + 89) = v23;
  *(v22 + 105) = *&v51[96];
  *(v22 + 120) = *&v51[111];
  v24 = *&v51[16];
  *(v22 + 9) = *v51;
  *(v22 + 25) = v24;
  v25 = *&v51[48];
  *(v22 + 41) = *&v51[32];
  *(v22 + 57) = v25;
  v26 = v20 + *(v21 + 64);
  v27 = v33;
  v28 = v34;
  *&v37 = v34;
  *(&v37 + 1) = 0x4000000000000000;
  LOBYTE(v38) = a2;
  *(&v38 + 1) = v14;
  *&v39 = v15;
  *(&v39 + 1) = v16;
  *&v40 = v33;
  BYTE8(v40) = v17;
  v41 = v18;
  *(v26 + 64) = v18;
  v29 = v38;
  *v26 = v37;
  *(v26 + 16) = v29;
  v30 = v40;
  *(v26 + 32) = v39;
  *(v26 + 48) = v30;
  sub_1000077CC(&v37, &v42, &qword_1000EC128, &qword_1000B5608);
  sub_100021A9C(v12);
  v42 = v28;
  v43 = 0x4000000000000000;
  LOBYTE(v44) = a2;
  v45 = v14;
  v46 = v15;
  v47 = v16;
  v48 = v27;
  v49 = v17;
  v50 = v18;
  sub_100007834(&v42, &qword_1000EC128, &qword_1000B5608);
  return sub_100021A9C(v35);
}

uint64_t sub_10001E150@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_100005A50(0, &qword_1000EC130, UIImage_ptr);
  if (a1)
  {
    static UIImage.cafui_hdRadioLogoOrange.getter();
  }

  else
  {
    static UIImage.cafui_hdRadioLogo.getter();
  }

  v22 = Image.init(uiImage:)();

  dispatch thunk of CustomStringConvertible.description.getter();
  sub_100020F58();
  v5 = Text.init<A>(_:)();
  v7 = v6;
  v9 = v8;
  sub_100005A50(0, &qword_1000EC138, UIFont_ptr);
  static UIFont.cafui_preferredFont(for:weight:size:rounded:)();
  Font.init(_:)();
  v10 = Text.font(_:)();
  v12 = v11;
  v14 = v13;

  sub_100021B08(v5, v7, v9 & 1);

  v15 = Text.foregroundStyle<A>(_:)();
  v17 = v16;
  LOBYTE(v7) = v18;
  v20 = v19;
  sub_100021B08(v10, v12, v14 & 1);

  *a3 = v22;
  *(a3 + 8) = a2;
  *(a3 + 16) = v15;
  *(a3 + 24) = v17;
  *(a3 + 32) = v7 & 1;
  *(a3 + 40) = v20;

  sub_100021B18(v15, v17, v7 & 1);

  sub_100021B08(v15, v17, v7 & 1);
}

uint64_t sub_10001E378@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000368C(&qword_1000EB118, &qword_1000B3FD0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for NonMarqueeTitle(0);
  sub_1000077CC(v1 + *(v10 + 20), v9, &qword_1000EB118, &qword_1000B3FD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorScheme();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_10001E58C()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 8);

  v7 = v5;
  v19 = v6;
  if ((v6 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    v7 = v20;
  }

  v18 = v2;
  v9 = 1701736302;
  swift_getKeyPath();
  v20 = v7;
  sub_1000219C8(&qword_1000EB0F0, type metadata accessor for RadioNowPlayingViewModel, &unk_1000B42A8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = *(v7 + 17);

  if (v10 <= 2 && v10 > 1)
  {
    goto LABEL_5;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v11)
  {
    return static Font.title3.getter();
  }

  if (v10 <= 2)
  {
    if (v10)
    {
      v9 = 0x4D646E417370616DLL;
      v13 = 0xEC00000061696465;
    }

    else
    {
      v13 = 0xE400000000000000;
    }
  }

  else if (v10 > 4)
  {
    if (v10 == 5)
    {
      v9 = 0x756964654D616364;
      v13 = 0xE90000000000006DLL;
    }

    else
    {
      v13 = 0xE700000000000000;
      v9 = 0x6C6C6154616364;
    }
  }

  else
  {
    v9 = 0x6D696E694D616364;
    v13 = v10 == 3 ? 0xEA00000000006C61 : 0xEE00656469576C61;
  }

  if (v9 == 0x4D646E417370616DLL && v13 == 0xEC00000061696465)
  {
LABEL_5:

    return static Font.title3.getter();
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v14)
  {
    return static Font.title3.getter();
  }

  if ((v19 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v18 + 8))(v4, v1);
    v5 = v20;
  }

  swift_getKeyPath();
  v20 = v5;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v16 = *(v5 + 16);

  if (v16 == 1)
  {
    return static Font.callout.getter();
  }

  else
  {
    return static Font.body.getter();
  }
}

id sub_10001EC90()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 8);

  v7 = v5;
  if ((v6 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    v7 = v21;
  }

  v20 = v2;
  swift_getKeyPath();
  v21 = v7;
  sub_1000219C8(&qword_1000EB0F0, type metadata accessor for RadioNowPlayingViewModel, &unk_1000B42A8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = *(v7 + 24);
  v9 = *(v7 + 32);
  v11 = *(v7 + 40);
  sub_10000C964(v10, v9, *(v7 + 40));

  if (v11)
  {
    sub_10000C9C0(v10, v9, v11);
    return 0;
  }

  v12 = [v10 song];
  if (!v12)
  {
    goto LABEL_10;
  }

  v13 = v12;
  v14 = [v12 isExplicitSong];

  if ((v14 & 1) == 0)
  {
    goto LABEL_10;
  }

  if ((v6 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v20 + 8))(v4, v1);
    v5 = v21;
  }

  swift_getKeyPath();
  v21 = v5;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v16 = *(v5 + 64);

  if (v16 == 1)
  {
LABEL_10:

    return 0;
  }

  v18 = String._bridgeToObjectiveC()();
  v19 = [objc_opt_self() systemImageNamed:v18];

  return v19;
}

uint64_t sub_10001F060@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v189 = a2;
  v164 = type metadata accessor for ColorScheme();
  v163 = *(v164 - 8);
  v3 = __chkstk_darwin(v164);
  v160 = &v151 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v157 = &v151 - v5;
  v162 = type metadata accessor for BlendMode();
  v161 = *(v162 - 8);
  __chkstk_darwin(v162);
  v156 = &v151 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = type metadata accessor for Image.ResizingMode();
  v152 = *(v153 - 8);
  __chkstk_darwin(v153);
  v151 = &v151 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_10000368C(&qword_1000EC200, &qword_1000B5688);
  __chkstk_darwin(v154);
  v155 = &v151 - v8;
  v187 = sub_10000368C(&qword_1000EC208, &qword_1000B5690);
  v185 = *(v187 - 8);
  v9 = __chkstk_darwin(v187);
  v159 = &v151 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v158 = &v151 - v11;
  v12 = sub_10000368C(&qword_1000EC210, &qword_1000B5698);
  v13 = __chkstk_darwin(v12 - 8);
  v188 = &v151 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v186 = &v151 - v15;
  v174 = sub_10000368C(&qword_1000EBFF8, &qword_1000B53E0);
  v16 = __chkstk_darwin(v174);
  v173 = &v151 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v171 = &v151 - v18;
  v191 = type metadata accessor for DynamicTypeSize();
  v192 = *(v191 - 8);
  v19 = __chkstk_darwin(v191);
  v190 = &v151 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v151 - v21;
  v172 = sub_10000368C(&qword_1000EC000, &qword_1000B53E8);
  __chkstk_darwin(v172);
  v170 = &v151 - v23;
  v24 = type metadata accessor for EnvironmentValues();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v193 = &v151 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_10000368C(&qword_1000EC218, &qword_1000B56A0);
  __chkstk_darwin(v169);
  v176 = &v151 - v27;
  v175 = sub_10000368C(&qword_1000EC220, &qword_1000B56A8);
  __chkstk_darwin(v175);
  v194 = &v151 - v28;
  v177 = sub_10000368C(&qword_1000EC228, &qword_1000B56B0);
  __chkstk_darwin(v177);
  v182 = &v151 - v29;
  v181 = sub_10000368C(&qword_1000EC230, &qword_1000B56B8);
  v30 = __chkstk_darwin(v181);
  v183 = &v151 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v179 = &v151 - v33;
  __chkstk_darwin(v32);
  v195 = &v151 - v34;
  v35 = *a1;
  v36 = *(a1 + 8);

  v196 = v36;
  if ((v36 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v37 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v38 = v193;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v25 + 8))(v38, v24);
  }

  v197 = v35;
  v178 = v25;
  v180 = v24;
  v39 = sub_10000A7D0();
  v41 = v40;

  *&v201 = v39;
  *(&v201 + 1) = v41;
  sub_100020F58();
  v42 = Text.init<A>(_:)();
  v44 = v43;
  v46 = v45;
  v184 = a1;
  sub_10001E58C();
  v47 = Text.font(_:)();
  v49 = v48;
  v51 = v50;

  sub_100021B08(v42, v44, v46 & 1);

  static Font.Weight.semibold.getter();
  v52 = Text.fontWeight(_:)();
  v54 = v53;
  v56 = v55;
  v58 = v57;
  sub_100021B08(v47, v49, v51 & 1);

  v167 = v52;
  *&v201 = v52;
  *(&v201 + 1) = v54;
  v166 = v54;
  v59 = v56 & 1;
  LOBYTE(v202) = v56 & 1;
  v168 = v58;
  *(&v202 + 1) = v58;
  v60 = v192;
  v61 = *(v192 + 104);
  v62 = v22;
  v63 = v191;
  v61(v22, enum case for DynamicTypeSize.large(_:), v191);
  v64 = v190;
  v61(v190, enum case for DynamicTypeSize.xLarge(_:), v63);
  sub_1000219C8(&qword_1000EC0F0, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v165 = v59;
  v66 = *(v60 + 32);
  v67 = v171;
  v66(v171, v62, v63);
  v68 = v174;
  v66((v67 + *(v174 + 48)), v64, v63);
  v69 = v173;
  sub_1000077CC(v67, v173, &qword_1000EBFF8, &qword_1000B53E0);
  v70 = *(v68 + 48);
  v71 = v170;
  v66(v170, v69, v63);
  v72 = *(v60 + 8);
  v72(v69 + v70, v63);
  sub_10001721C(v67, v69, &qword_1000EBFF8, &qword_1000B53E0);
  v66((v71 + *(v172 + 36)), (v69 + *(v68 + 48)), v63);
  v72(v69, v63);
  sub_100005870(&qword_1000EC0E8, &qword_1000EC000, &qword_1000B53E8, &protocol conformance descriptor for ClosedRange<A>);
  v73 = v176;
  View.dynamicTypeSize<A>(_:)();
  sub_100007834(v71, &qword_1000EC000, &qword_1000B53E8);
  sub_100021B08(v167, v166, v165);

  *(v73 + *(v169 + 36)) = static HierarchicalShapeStyle.primary.getter();
  v74 = v197;

  v75 = v74;
  v76 = v180;
  v77 = v178;
  v78 = v193;
  if ((v196 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v79 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v77 + 8))(v78, v76);
    v75 = v201;
  }

  swift_getKeyPath();
  *&v201 = v75;
  sub_1000219C8(&qword_1000EB0F0, type metadata accessor for RadioNowPlayingViewModel, &unk_1000B42A8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v80 = *(v75 + 16);

  if (v80)
  {
    v81 = 2;
  }

  else
  {
    v81 = 1;
  }

  KeyPath = swift_getKeyPath();
  v83 = v194;
  sub_10001721C(v73, v194, &qword_1000EC218, &qword_1000B56A0);
  v84 = v83 + *(v175 + 36);
  *v84 = KeyPath;
  *(v84 + 8) = v81;
  *(v84 + 16) = 0;

  v85 = v74;
  v86 = v182;
  if ((v196 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v87 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v77 + 8))(v78, v76);
    v85 = v201;
  }

  v192 = 0xEA00000000006C61;
  swift_getKeyPath();
  *&v201 = v85;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v88 = *(v85 + 17);

  if (v88 == 3)
  {
    goto LABEL_16;
  }

  v89 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v89)
  {
    goto LABEL_18;
  }

  v90 = v197;

  if ((v196 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v91 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v77 + 8))(v78, v76);
    v90 = v201;
  }

  swift_getKeyPath();
  *&v201 = v90;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v92 = *(v90 + 17);

  if (v92 == 5)
  {
LABEL_16:

    v93 = 0;
    goto LABEL_19;
  }

  v94 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v94)
  {
    goto LABEL_18;
  }

  v100 = v197;

  if ((v196 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v101 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v77 + 8))(v78, v76);
    v100 = v201;
  }

  swift_getKeyPath();
  *&v201 = v100;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v102 = *(v100 + 16);

  if (v102)
  {
    goto LABEL_29;
  }

  v103 = v197;

  if ((v196 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v104 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v77 + 8))(v78, v76);
    v103 = v201;
  }

  swift_getKeyPath();
  *&v201 = v103;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v105 = *(v103 + 41);

  if (v105)
  {
LABEL_18:
    v93 = 0;
  }

  else
  {
LABEL_29:
    v93 = 1;
  }

LABEL_19:
  v95 = swift_getKeyPath();
  sub_10001721C(v194, v86, &qword_1000EC220, &qword_1000B56A8);
  v96 = v86 + *(v177 + 36);
  *v96 = v95;
  *(v96 + 8) = v93;
  v97 = v197;

  if ((v196 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v98 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v77 + 8))(v78, v76);
    v97 = v201;
  }

  swift_getKeyPath();
  *&v201 = v97;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v99 = *(v97 + 17);

  if (v99 == 3)
  {
    goto LABEL_35;
  }

  v106 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v106 & 1) == 0)
  {
    v107 = v197;

    if ((v196 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v108 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v77 + 8))(v78, v76);
      v107 = v201;
    }

    swift_getKeyPath();
    *&v201 = v107;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v109 = *(v107 + 17);

    if (v109 > 4)
    {
      v192 = 0xE90000000000006DLL;
      if (v109 == 5)
      {
LABEL_35:

        goto LABEL_40;
      }
    }

    v110 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v110 & 1) == 0)
    {
      v111 = v197;

      if ((v196 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v112 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v77 + 8))(v78, v76);
        v111 = v201;
      }

      swift_getKeyPath();
      *&v201 = v111;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v113 = *(v111 + 41);

      if ((v113 & 1) == 0)
      {
        static Alignment.center.getter();
        goto LABEL_41;
      }
    }
  }

LABEL_40:
  static Alignment.leading.getter();
LABEL_41:
  v114 = 1;
  _FrameLayout.init(width:height:alignment:)();
  v115 = v179;
  sub_10001721C(v86, v179, &qword_1000EC228, &qword_1000B56B0);
  v116 = (v115 + *(v181 + 36));
  v117 = v199;
  *v116 = v198;
  v116[1] = v117;
  v116[2] = v200;
  sub_10001721C(v115, v195, &qword_1000EC230, &qword_1000B56B8);
  v118 = sub_10001EC90();
  if (v118)
  {
    v119 = v118;
    v120 = [v118 imageWithRenderingMode:2];
    Image.init(uiImage:)();
    v121 = v152;
    v122 = v151;
    v123 = v153;
    (*(v152 + 104))(v151, enum case for Image.ResizingMode.stretch(_:), v153);
    v124 = Image.resizable(capInsets:resizingMode:)();

    (*(v121 + 8))(v122, v123);
    v125 = static HierarchicalShapeStyle.secondary.getter();
    v126 = v157;
    sub_10001E378(v157);
    v127 = v163;
    v128 = v160;
    v129 = v164;
    (*(v163 + 104))(v160, enum case for ColorScheme.dark(_:), v164);
    v130 = static ColorScheme.== infix(_:_:)();
    v131 = *(v127 + 8);
    v131(v128, v129);
    v131(v126, v129);
    v132 = v161;
    v133 = &enum case for BlendMode.plusLighter(_:);
    if ((v130 & 1) == 0)
    {
      v133 = &enum case for BlendMode.plusDarker(_:);
    }

    v134 = v156;
    v135 = v162;
    (*(v161 + 104))(v156, *v133, v162);
    v136 = v155;
    (*(v132 + 32))(&v155[*(v154 + 36)], v134, v135);
    *v136 = v124;
    *(v136 + 8) = 0;
    *(v136 + 16) = 1;
    *(v136 + 20) = v125;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();

    v137 = v159;
    sub_10001721C(v136, v159, &qword_1000EC200, &qword_1000B5688);
    v138 = v187;
    v139 = (v137 + *(v187 + 36));
    v140 = v206;
    v139[4] = v205;
    v139[5] = v140;
    v139[6] = v207;
    v141 = v202;
    *v139 = v201;
    v139[1] = v141;
    v142 = v204;
    v139[2] = v203;
    v139[3] = v142;
    v143 = v137;
    v144 = v158;
    sub_10001721C(v143, v158, &qword_1000EC208, &qword_1000B5690);
    v145 = v186;
    sub_10001721C(v144, v186, &qword_1000EC208, &qword_1000B5690);
    v114 = 0;
  }

  else
  {
    v138 = v187;
    v145 = v186;
  }

  (*(v185 + 56))(v145, v114, 1, v138);
  v146 = v195;
  v147 = v183;
  sub_1000077CC(v195, v183, &qword_1000EC230, &qword_1000B56B8);
  v148 = v188;
  sub_1000077CC(v145, v188, &qword_1000EC210, &qword_1000B5698);
  v149 = v189;
  sub_1000077CC(v147, v189, &qword_1000EC230, &qword_1000B56B8);
  v150 = sub_10000368C(&qword_1000EC238, &qword_1000B56C0);
  sub_1000077CC(v148, v149 + *(v150 + 48), &qword_1000EC210, &qword_1000B5698);
  sub_100007834(v145, &qword_1000EC210, &qword_1000B5698);
  sub_100007834(v146, &qword_1000EC230, &qword_1000B56B8);
  sub_100007834(v148, &qword_1000EC210, &qword_1000B5698);
  return sub_100007834(v147, &qword_1000EC230, &qword_1000B56B8);
}

uint64_t sub_100020D2C@<X0>(uint64_t a2@<X8>)
{
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0x4018000000000000;
  *(a2 + 16) = 0;
  v4 = sub_10000368C(&qword_1000EC1F8, &qword_1000B5680);
  return sub_10001F060(v2, a2 + *(v4 + 44));
}

uint64_t sub_100020D90()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100020DC8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100020E64;

  return sub_10001D43C(v2, v3);
}

uint64_t sub_100020E64()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_100020F58()
{
  result = qword_1000EBF30;
  if (!qword_1000EBF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EBF30);
  }

  return result;
}

uint64_t sub_100020FF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000368C(&qword_1000EBF40, &unk_1000B5300);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000210CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10000368C(&qword_1000EBF40, &unk_1000B5300);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_100021190(uint64_t a1)
{
  sub_100021D94(319, &qword_1000EBFB0, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_100021D94(319, &unk_1000EBFB8, type metadata accessor for RadioNowPlayingViewModel, &type metadata accessor for State);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_100021308()
{
  result = qword_1000EC058;
  if (!qword_1000EC058)
  {
    sub_100005780(&qword_1000EC038, &qword_1000B5420);
    sub_100005870(&qword_1000EC060, &qword_1000EC050, &unk_1000B5468, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100005870(&qword_1000EBB00, &qword_1000EBB08, &qword_1000B4B60, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EC058);
  }

  return result;
}

unint64_t sub_1000213FC()
{
  result = qword_1000EC080;
  if (!qword_1000EC080)
  {
    sub_100005780(&qword_1000EC040, &qword_1000B5428);
    sub_100021488();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EC080);
  }

  return result;
}

unint64_t sub_100021488()
{
  result = qword_1000EC088;
  if (!qword_1000EC088)
  {
    sub_100005780(&qword_1000EC078, &qword_1000B54E8);
    sub_100021540();
    sub_100005870(&qword_1000EC0C0, &qword_1000EC0C8, &qword_1000B5500, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EC088);
  }

  return result;
}

unint64_t sub_100021540()
{
  result = qword_1000EC090;
  if (!qword_1000EC090)
  {
    sub_100005780(&qword_1000EC070, &qword_1000B54B0);
    sub_1000215F8();
    sub_100005870(&qword_1000EC0B0, &qword_1000EC0B8, &qword_1000B6FE0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EC090);
  }

  return result;
}

unint64_t sub_1000215F8()
{
  result = qword_1000EC098;
  if (!qword_1000EC098)
  {
    sub_100005780(&qword_1000EC068, &qword_1000B5478);
    sub_100005780(&qword_1000EC038, &qword_1000B5420);
    sub_100021308();
    swift_getOpaqueTypeConformance2();
    sub_100005870(&qword_1000EC0A0, &qword_1000EC0A8, &unk_1000B54F0, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EC098);
  }

  return result;
}

unint64_t sub_1000216EC()
{
  result = qword_1000EC0D0;
  if (!qword_1000EC0D0)
  {
    sub_100005780(&qword_1000EC028, &qword_1000B5410);
    sub_100021778();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EC0D0);
  }

  return result;
}

unint64_t sub_100021778()
{
  result = qword_1000EC0D8;
  if (!qword_1000EC0D8)
  {
    sub_100005780(&qword_1000EC020, &qword_1000B5408);
    sub_100021830();
    sub_100005870(&qword_1000EC0B0, &qword_1000EC0B8, &qword_1000B6FE0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EC0D8);
  }

  return result;
}

unint64_t sub_100021830()
{
  result = qword_1000EC0E0;
  if (!qword_1000EC0E0)
  {
    sub_100005780(&qword_1000EC018, &qword_1000B5400);
    sub_100005780(&qword_1000EC008, &qword_1000B53F0);
    sub_100005780(&qword_1000EC000, &qword_1000B53E8);
    sub_100005780(&qword_1000EC038, &qword_1000B5420);
    sub_100021308();
    swift_getOpaqueTypeConformance2();
    sub_100005870(&qword_1000EC0E8, &qword_1000EC000, &qword_1000B53E8, &protocol conformance descriptor for ClosedRange<A>);
    swift_getOpaqueTypeConformance2();
    sub_100005870(&qword_1000EC0A0, &qword_1000EC0A8, &unk_1000B54F0, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EC0E0);
  }

  return result;
}

uint64_t sub_1000219C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100021A38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NonMarqueeTitle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100021A9C(uint64_t a1)
{
  v2 = type metadata accessor for NonMarqueeTitle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100021B08(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100021B18(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100021B3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_10000368C(&qword_1000EBF40, &unk_1000B5300);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100021C04(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = sub_10000368C(&qword_1000EBF40, &unk_1000B5300);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100021CB0(uint64_t a1)
{
  sub_100021D94(319, &unk_1000EC1A8, type metadata accessor for RadioNowPlayingViewModel, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_100021D94(319, &qword_1000EBFB0, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100021D94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_100021DFC()
{
  result = qword_1000EC1D8;
  if (!qword_1000EC1D8)
  {
    sub_100005780(&qword_1000EC1E0, &qword_1000B5620);
    sub_1000213FC();
    sub_1000216EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EC1D8);
  }

  return result;
}

unint64_t sub_100021E8C()
{
  result = qword_1000EC1E8;
  if (!qword_1000EC1E8)
  {
    sub_100005780(&qword_1000EC1F0, &qword_1000B5628);
    sub_100005870(&qword_1000EC108, &qword_1000EC100, &qword_1000B5538, &protocol conformance descriptor for HStack<A>);
    sub_1000219C8(&qword_1000EC110, type metadata accessor for NonMarqueeTitle, &unk_1000B5630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EC1E8);
  }

  return result;
}

BOOL sub_100021FDC(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    type metadata accessor for IndexPath();
    ++v2;
    sub_10002D0B4(&qword_1000EC590, &protocol conformance descriptor for IndexPath);
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  return v3 != v4;
}

void sub_1000220D4()
{
  v2 = v0;
  v159 = 0;
  v171 = type metadata accessor for UUID();
  *&v168 = *(v171 - 8);
  __chkstk_darwin(v171);
  v170 = &v153[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_10000368C(&qword_1000EC548, &qword_1000B5820);
  v158 = *(v4 - 8);
  __chkstk_darwin(v4);
  v174 = &v153[-v5];
  v167 = (v0 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_activeCategory);
  if (*(v0 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_activeCategory + 8))
  {
    goto LABEL_2;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_2;
  }

  v1 = &OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager;
  v19 = *(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
  v20 = Strong;

  if (!v19)
  {
    goto LABEL_2;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  countAndFlagsBits = v178._countAndFlagsBits;
  if (!v178._countAndFlagsBits)
  {
    goto LABEL_2;
  }

  v22 = swift_unknownObjectWeakLoadStrong();
  if (v22)
  {
    v23 = *(v22 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
    v24 = v22;

    if (v23)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v25 = sub_100093ED4(countAndFlagsBits, v178._countAndFlagsBits);

      v1 = OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_groupingStrategy;
      v26 = v25[2];
      v27 = (v25 + 4);
      while (v26)
      {
        v28 = *v27++;
        --v26;
        if (v28 == *(v2 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_groupingStrategy))
        {

          goto LABEL_2;
        }
      }

      v130 = *(v2 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_currentBandStations);
      if (v130 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter())
        {
LABEL_153:
          if (v25[2])
          {
            v131 = *(v25 + 32);
          }

          else
          {
            v131 = 0;
          }

          if (qword_1000EACE0 != -1)
          {
            swift_once();
          }

          v144 = type metadata accessor for Logger();
          sub_100006928(v144, qword_1000F3B70);
          v145 = Logger.logObject.getter();
          v146 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v145, v146))
          {
            v147 = swift_slowAlloc();
            *v147 = 16777472;
            v147[4] = v131;
            _os_log_impl(&_mh_execute_header, v145, v146, "Resetting grouping strategy to %hhu", v147, 5u);
          }

          if (v131 != *(v2 + v1))
          {
            *(v2 + v1) = v131;
            sub_1000220D4();
            if (qword_1000EAD48 != -1)
            {
              swift_once();
            }

            sub_1000922F8(*(v2 + v1));

            return;
          }

          goto LABEL_179;
        }
      }

      else if (*((v130 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_153;
      }

      if (qword_1000EACE0 != -1)
      {
        swift_once();
      }

      v148 = type metadata accessor for Logger();
      sub_100006928(v148, qword_1000F3B70);

      v149 = Logger.logObject.getter();
      v150 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v149, v150))
      {
        v151 = swift_slowAlloc();
        *v151 = 16777472;
        v151[4] = *(v2 + v1);

        _os_log_impl(&_mh_execute_header, v149, v150, "Keeping grouping strategy %hhu, pending stations", v151, 5u);
      }

      else
      {
      }

      goto LABEL_2;
    }
  }

LABEL_179:

LABEL_2:
  v6 = swift_unknownObjectWeakLoadStrong();
  if (!v6)
  {
    return;
  }

  v7 = *(v6 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
  v8 = v6;

  if (!v7)
  {
    return;
  }

  v156 = v7;
  v166 = objc_opt_self();
  v9 = [v166 mainBundle];
  v180._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0x49544154535F4F4ELL;
  v10._object = 0xEB00000000534E4FLL;
  v11.value._countAndFlagsBits = 0x6F69646152;
  v11.value._object = 0xE500000000000000;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v180._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v180);

  v155 = String.init(format:_:)();
  v157 = v13;

  v14 = OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_currentBandStations;
  v15 = *(v2 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_currentBandStations);
  v179 = _swiftEmptyArrayStorage;

  sub_1000267D8();
  if (v16)
  {
    v17 = 1;
  }

  else
  {
    v29 = *(v2 + v14);
    if (v29 >> 62)
    {
      v30 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v17 = v30 == 0;
  }

  v154 = v17;
  v31 = *(v2 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_filteringStrategy);
  v161 = v4;
  v160 = v2;
  if (v31 != 5)
  {
    if (*(v2 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_groupingStrategy) - 1 <= 1 && !v167[1])
    {
      goto LABEL_102;
    }

    v32 = [v166 mainBundle];
    v181._object = 0xE000000000000000;
    v33._object = 0x80000001000BB790;
    v33._countAndFlagsBits = 0xD000000000000014;
    v34.value._countAndFlagsBits = 0x6F69646152;
    v34.value._object = 0xE500000000000000;
    v35._countAndFlagsBits = 0;
    v35._object = 0xE000000000000000;
    v181._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v33, v34, v32, v35, v181);

    v36 = _swiftEmptyArrayStorage;
    v155 = String.init(format:_:)();
    v157 = v37;

    sub_10000368C(&qword_1000EC558, &unk_1000BA800);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000B4760;
    *(inited + 40) = 0;
    *(inited + 48) = 0;
    *(inited + 32) = _swiftEmptyArrayStorage;
    *(inited + 56) = 1;
    sub_10009EE38(inited);
    v175 = _swiftEmptyArrayStorage;
    if (v15 >> 62)
    {
      v39 = _CocoaArrayWrapper.endIndex.getter();
      if (v39)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v39 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v39)
      {
LABEL_23:
        v40 = 0;
        v173 = v15 & 0xC000000000000001;
        v172 = v15 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if (v173)
          {
            v1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v41 = v40 + 1;
            if (__OFADD__(v40, 1))
            {
LABEL_64:
              __break(1u);
LABEL_65:
              v36 = v175;
              v4 = v161;
              v2 = v160;
              goto LABEL_66;
            }
          }

          else
          {
            if (v40 >= *(v172 + 16))
            {
LABEL_185:
              __break(1u);
LABEL_186:
              __break(1u);
LABEL_187:
              __break(1u);
LABEL_188:
              v63 = _CocoaArrayWrapper.endIndex.getter();
              goto LABEL_70;
            }

            v1 = *(v15 + 8 * v40 + 32);

            v41 = v40 + 1;
            if (__OFADD__(v40, 1))
            {
              goto LABEL_64;
            }
          }

          if (v31 >= 4)
          {
            goto LABEL_25;
          }

          v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v42)
          {
            goto LABEL_26;
          }

          v43 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceType;
          swift_beginAccess();
          if (*(v1 + v43) != 3)
          {
            goto LABEL_43;
          }

          v44 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
          swift_beginAccess();
          v45 = [*(v1 + v44) mediaItemGroup];
          if (!v45)
          {
            goto LABEL_43;
          }

          v46 = v45;
          v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v49 = v48;

          v50 = HIBYTE(v49) & 0xF;
          if ((v49 & 0x2000000000000000) == 0)
          {
            v50 = v47 & 0xFFFFFFFFFFFFLL;
          }

          if (!v50)
          {
            break;
          }

          v51 = v15;
          v52 = String.lowercased()();

          v178 = v52;
          sub_100020F58();
          v53 = StringProtocol.capitalized.getter();
          v55 = v54;

          v56._countAndFlagsBits = v53;
          v56._object = v55;
          v57 = _findStringSwitchCase(cases:string:)(&off_1000DF280, v56);

          v58 = 0xE500000000000000;
          if (v57 > 1)
          {
            v15 = v51;
            if (v57 == 2)
            {
              v58 = 0xE400000000000000;
              v59 = 1802264916;
            }

            else
            {
              v59 = 0x726568744FLL;
              if (v57 == 3)
              {
                v58 = 0xE400000000000000;
                v59 = 1937204558;
              }
            }
          }

          else
          {
            v15 = v51;
            if (v57)
            {
              v59 = 0x726568744FLL;
              if (v57 == 1)
              {
                v58 = 0xE600000000000000;
                v59 = 0x7374726F7053;
              }
            }

            else
            {
              v59 = 0x636973754DLL;
            }
          }

LABEL_44:
          if (v31 > 1)
          {
            if (v31 == 2)
            {
              v61 = 1802264916;
            }

            else
            {
              v61 = 1937204558;
            }

            v60 = 0xE400000000000000;
            if (v59 != v61)
            {
              goto LABEL_55;
            }
          }

          else if (v31)
          {
            v60 = 0xE600000000000000;
            if (v59 != 0x7374726F7053)
            {
              goto LABEL_55;
            }
          }

          else
          {
            v60 = 0xE500000000000000;
            if (v59 != 0x636973754DLL)
            {
              goto LABEL_55;
            }
          }

          if (v58 == v60)
          {

LABEL_25:

            goto LABEL_26;
          }

LABEL_55:
          v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v62 & 1) == 0)
          {

            goto LABEL_27;
          }

LABEL_26:
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
LABEL_27:
          ++v40;
          if (v41 == v39)
          {
            goto LABEL_65;
          }
        }

LABEL_43:
        v58 = 0xE500000000000000;
        v59 = 0x726568744FLL;
        goto LABEL_44;
      }
    }

LABEL_66:

    v15 = v36;
  }

  v39 = v167[1];
  if (!v39)
  {
    goto LABEL_102;
  }

  v1 = *v167;
  v178._countAndFlagsBits = _swiftEmptyArrayStorage;
  if (v15 >> 62)
  {
    goto LABEL_188;
  }

  v63 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_70:

  if (!v63)
  {
    goto LABEL_101;
  }

  v64 = 0;
  v173 = v15 & 0xC000000000000001;
  v172 = v15 & 0xFFFFFFFFFFFFFF8;
  v169 = v15;
  while (v173)
  {
    v65 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v66 = v64 + 1;
    if (__OFADD__(v64, 1))
    {
      goto LABEL_100;
    }

LABEL_79:
    v67 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
    swift_beginAccess();
    v68 = [*(v65 + v67) mediaItemCategoryUserVisibleLabel];
    if (v68)
    {
      v69 = v68;
      v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v72 = v71;

      v73 = HIBYTE(v72) & 0xF;
      if ((v72 & 0x2000000000000000) == 0)
      {
        v73 = v70 & 0xFFFFFFFFFFFFLL;
      }

      if (v73)
      {
        v74 = v70;
        v15 = v169;
        goto LABEL_86;
      }

      v15 = v169;
    }

    v74 = sub_1000820E4([*(v65 + v67) mediaItemCategory]);
    v72 = v75;
LABEL_86:
    if (v74 == v1 && v39 == v72)
    {
      goto LABEL_73;
    }

    v77 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v77)
    {
      goto LABEL_74;
    }

    v78 = [*(v65 + v67) ensemble];
    if (!v78)
    {
      goto LABEL_97;
    }

    v79 = v78;
    v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v82 = v81;

    if (v80 == v1 && v39 == v82)
    {
      v15 = v169;
LABEL_73:

      goto LABEL_74;
    }

    v84 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v15 = v169;
    if ((v84 & 1) == 0)
    {
LABEL_97:

      goto LABEL_75;
    }

LABEL_74:
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
LABEL_75:
    ++v64;
    if (v66 == v63)
    {
      goto LABEL_101;
    }
  }

  if (v64 >= *(v172 + 16))
  {
    goto LABEL_184;
  }

  v65 = *(v15 + 8 * v64 + 32);

  v66 = v64 + 1;
  if (!__OFADD__(v64, 1))
  {
    goto LABEL_79;
  }

LABEL_100:
  __break(1u);
LABEL_101:

  v15 = v178._countAndFlagsBits;
  v4 = v161;
  v2 = v160;
LABEL_102:
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v178._countAndFlagsBits & 1) == 0)
  {

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v88 = v178._countAndFlagsBits;
    if (v178._countAndFlagsBits)
    {
      v89 = [v178._countAndFlagsBits mediaSourceSemanticType];
      if (v89 <= 8 && ((1 << v89) & 0x14E) != 0 || ([v88 disabled] & 1) == 0)
      {

        v1 = "currentPlayingStation";
        sub_10000368C(&unk_1000EEE80, &unk_1000B58C0);
        v90 = swift_allocObject();
        *(v90 + 16) = xmmword_1000B4760;
        sub_100005A50(0, &qword_1000EAFE0, CAFMediaSource_ptr);
        sub_1000058D0(&qword_1000EAFE8, &qword_1000EAFE0, CAFMediaSource_ptr, &protocol conformance descriptor for CAFMediaSource);
        v91 = CAFObserved<>.observable.getter();
        v92 = sub_100083338(v91);
        v94 = v93;

        *(v90 + 56) = &type metadata for String;
        *(v90 + 64) = sub_10002BE6C();
        *(v90 + 32) = v92;
        *(v90 + 40) = v94;
        v95 = [v166 mainBundle];
        v182._object = 0xE000000000000000;
        v96._countAndFlagsBits = 0xD000000000000017;
        v96._object = 0x80000001000BB770;
        v97.value._countAndFlagsBits = 0x6F69646152;
        v97.value._object = 0xE500000000000000;
        v98._countAndFlagsBits = 0;
        v98._object = 0xE000000000000000;
        v182._countAndFlagsBits = 0;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v96, v97, v95, v98, v182);

        v155 = String.init(format:_:)();
        v157 = v99;
      }

      else
      {
      }
    }

    v15 = _swiftEmptyArrayStorage;
    goto LABEL_111;
  }

  v85 = OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_groupingStrategy;
  v86 = sub_10007647C;
  if (*(v2 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_groupingStrategy) > 1u)
  {
    if (*(v2 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_groupingStrategy) == 2)
    {
      v86 = sub_1000767A8;
      v87 = v159;
      goto LABEL_114;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v129 = v178._countAndFlagsBits;
    if (v178._countAndFlagsBits)
    {
      if (*(v2 + v85) == 3)
      {
        if ([v178._countAndFlagsBits mediaSourceSemanticType] == 6)
        {

          v1 = 0;
          goto LABEL_157;
        }

        v143 = [v129 mediaSourceSemanticType];

        if (v143 == 8)
        {
          v1 = 0;
LABEL_157:
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v132 = v178._countAndFlagsBits;
          if (v178._countAndFlagsBits)
          {
            v133 = [v178._countAndFlagsBits mediaSourceSemanticType];
            if (v133 == 8)
            {
              __chkstk_darwin(v133);

              v178._countAndFlagsBits = sub_10002BC68(v134);
              v135 = v159;
              sub_10002CD6C(&v178._countAndFlagsBits, sub_10002D094);
              v159 = v135;
              if (!v135)
              {

                v136 = v178._countAndFlagsBits;
                if (v178._countAndFlagsBits < 0 || (v178._countAndFlagsBits & 0x4000000000000000) != 0)
                {
                  type metadata accessor for TerrestrialRadioStation(0);

                  v152 = _bridgeCocoaArray<A>(_:)();

                  v136 = v152;
                }

                else
                {

                  dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
                  type metadata accessor for TerrestrialRadioStation(0);
                }

                goto LABEL_166;
              }

              goto LABEL_199;
            }
          }

          v178._countAndFlagsBits = sub_10002BC68(v137);
          v138 = v159;
          sub_100027D28(&v178._countAndFlagsBits);
          v159 = v138;
          if (!v138)
          {

            v136 = v178._countAndFlagsBits;
LABEL_166:
            v139 = sub_100027120(v1, v136);

            v15 = v179;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v15 = sub_1000A2450(0, *(v15 + 16) + 1, 1, v15);
            }

            v141 = *(v15 + 16);
            v140 = *(v15 + 24);
            if (v141 >= v140 >> 1)
            {
              v15 = sub_1000A2450((v140 > 1), v141 + 1, 1, v15);
            }

            *(v15 + 16) = v141 + 1;
            v142 = v15 + 32 * v141;
            *(v142 + 32) = v139;
            *(v142 + 40) = 0;
            *(v142 + 48) = 0;
            *(v142 + 56) = 0;
LABEL_111:
            v179 = v15;
            goto LABEL_116;
          }

LABEL_199:

          __break(1u);
          return;
        }
      }

      else
      {
      }
    }

    v1 = *(v2 + v85);
    goto LABEL_157;
  }

  v87 = v159;
  if (*(v2 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_groupingStrategy))
  {
    v86 = sub_1000766E4;
  }

LABEL_114:
  v100 = sub_10002BEC0(v15, v86);

  v101 = sub_10002CE00(v100, v2);

  v178._countAndFlagsBits = v101;

  sub_100027FE0(&v178);
  v159 = v87;
  if (v87)
  {
    goto LABEL_199;
  }

  sub_10009EE38(v178._countAndFlagsBits);
  v15 = v179;
LABEL_116:
  v39 = OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_sections;
  *(v2 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_sections) = v15;

  NSDiffableDataSourceSnapshot.init()();
  v102 = *(v2 + v39);
  v103 = *(v102 + 16);
  if (v103)
  {
    v104 = sub_100027554(*(v102 + 16), 0);
    if (sub_10002BD38(&v178._countAndFlagsBits, (v104 + 4), v103, 0, v103) == v103)
    {
      NSDiffableDataSourceSnapshot.appendSections(_:)(v104);

      v1 = *(v2 + v39);
      v105 = *(v1 + 16);
      v166 = OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_groupingStrategy;

      if (v105)
      {
        v106 = 0;
        v173 = v1 + 32;
        v169 = (v168 + 8);
        v168 = xmmword_1000B4760;
        v164 = v15;
        v163 = v1;
        v162 = v105;
        while (v106 < *(v1 + 16))
        {
          v111 = v173 + 32 * v106;
          if ((*(v111 + 24) & 1) != 0 || (v112 = *v111, v113 = *(v111 + 16), v166[v2] - 1 <= 1) && !v167[1])
          {
            sub_10000368C(&qword_1000EEF40, &qword_1000BA810);
            v107 = swift_allocObject();
            *(v107 + 16) = v168;
            v39 = v170;
            UUID.init()();
            v108 = UUID.uuidString.getter();
            v110 = v109;
            (*v169)(v39, v171);
            *(v107 + 32) = v108;
            *(v107 + 40) = v110;
            v176 = v106;
            v177 = 0;
            NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
          }

          else
          {
            if (v112 >> 62)
            {
              v15 = _CocoaArrayWrapper.endIndex.getter();
            }

            else
            {
              v15 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v172 = v106;
            if (v15)
            {
              v176 = _swiftEmptyArrayStorage;

              v165 = v113;

              sub_1000A2C90(0, v15 & ~(v15 >> 63), 0);
              if ((v15 & 0x8000000000000000) != 0)
              {
                goto LABEL_186;
              }

              v114 = 0;
              v115 = v176;
              do
              {
                if ((v112 & 0xC000000000000001) != 0)
                {
                  v116 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  v116 = *(v112 + 8 * v114 + 32);
                }

                v117 = (v116 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
                swift_beginAccess();
                v39 = *v117;
                v118 = v117[1];

                v176 = v115;
                v120 = v115[2];
                v119 = v115[3];
                if (v120 >= v119 >> 1)
                {
                  sub_1000A2C90((v119 > 1), v120 + 1, 1);
                  v115 = v176;
                }

                ++v114;
                v115[2] = v120 + 1;
                v121 = &v115[2 * v120];
                v121[4] = v39;
                v121[5] = v118;
              }

              while (v15 != v114);

              v4 = v161;
              v2 = v160;
            }

            v122 = v172;
            v176 = v172;
            v177 = 0;
            NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
            v106 = v122;

            v15 = v164;
            v1 = v163;
            v105 = v162;
          }

          if (++v106 == v105)
          {
            goto LABEL_140;
          }
        }

        __break(1u);
LABEL_184:
        __break(1u);
        goto LABEL_185;
      }

LABEL_140:

      goto LABEL_141;
    }

    goto LABEL_187;
  }

LABEL_141:

  sub_10002539C();
  v123 = swift_unknownObjectWeakLoadStrong();
  if (v123)
  {
    v124 = v123;
    v125 = swift_allocObject();
    swift_weakInit();
    v126 = swift_allocObject();
    v127 = v155;
    *(v126 + 16) = v125;
    *(v126 + 24) = v127;
    *(v126 + 32) = v157;
    *(v126 + 40) = v154;

    v128 = v174;
    dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

    (*(v158 + 8))(v128, v4);
  }

  else
  {

    (*(v158 + 8))(v174, v4);
  }
}

void sub_100023A58()
{
  v1 = sub_10000368C(&unk_1000EC7E0, &unk_1000B5100);
  __chkstk_darwin(v1 - 8);
  v32 = &v25 - v2;
  v39 = sub_10000368C(&qword_1000EBDC0, &qword_1000B61F0);
  __chkstk_darwin(v39);
  v38 = &v25 - v3;
  v37 = sub_10000368C(&unk_1000EC890, &unk_1000B6100);
  __chkstk_darwin(v37);
  v36 = &v25 - v4;
  v35 = sub_10000368C(&qword_1000EC5F0, &qword_1000B5A40);
  v5 = *(v35 - 8);
  __chkstk_darwin(v35);
  v31 = &v25 - v6;
  v34 = sub_10000368C(&qword_1000EC5F8, &qword_1000B5A48);
  v7 = *(v34 - 8);
  __chkstk_darwin(v34);
  v30 = &v25 - v8;
  v9 = (v0 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_stationCancelSet);
  swift_beginAccess();
  v33 = v9;
  *v9 = &_swiftEmptySetSingleton;

  v40 = v0;
  v10 = *(v0 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_currentBandStations);
  if (v10 >> 62)
  {
LABEL_15:
    v11 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v11)
  {
    v12 = 0;
    v28 = v10 & 0xFFFFFFFFFFFFFF8;
    v29 = v10 & 0xC000000000000001;
    v26 = (v5 + 1);
    v25 = (v7 + 8);
    v27 = v10;
    v13 = v32;
    do
    {
      if (v29)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v15 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
LABEL_12:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v12 >= *(v28 + 16))
        {
          __break(1u);
          goto LABEL_15;
        }

        v14 = *(v10 + 8 * v12 + 32);

        v15 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_12;
        }
      }

      v41 = v15;
      swift_beginAccess();
      sub_10000368C(&unk_1000EEFD0, &unk_1000B5A50);
      Published.projectedValue.getter();
      swift_endAccess();
      swift_beginAccess();
      sub_10000368C(&unk_1000EBE20, &unk_1000B5120);
      Published.projectedValue.getter();
      swift_endAccess();
      sub_100005870(&unk_1000EC8E0, &unk_1000EC890, &unk_1000B6100, &protocol conformance descriptor for Published<A>.Publisher);
      sub_100005870(&unk_1000EC800, &qword_1000EBDC0, &qword_1000B61F0, &protocol conformance descriptor for Published<A>.Publisher);
      v16 = v31;
      Publishers.CombineLatest.init(_:_:)();
      v17 = [objc_opt_self() mainRunLoop];
      v42 = v17;
      v18 = type metadata accessor for NSRunLoop.SchedulerOptions();
      (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
      sub_100005A50(0, &unk_1000ED0C0, NSRunLoop_ptr);
      sub_100005870(&qword_1000EC600, &qword_1000EC5F0, &qword_1000B5A40, &protocol conformance descriptor for Publishers.CombineLatest<A, B>);
      sub_1000058D0(&qword_1000ED0D0, &unk_1000ED0C0, NSRunLoop_ptr, &protocol conformance descriptor for NSRunLoop);
      v19 = v11;
      v20 = v30;
      v21 = v35;
      Publisher.receive<A>(on:options:)();
      sub_100007834(v13, &unk_1000EC7E0, &unk_1000B5100);

      (*v26)(v16, v21);
      v22 = swift_allocObject();
      swift_weakInit();
      v7 = swift_allocObject();
      *(v7 + 16) = v22;
      *(v7 + 24) = v14;
      sub_100005870(&qword_1000EC608, &qword_1000EC5F8, &qword_1000B5A48, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

      v23 = v34;
      Publisher<>.sink(receiveValue:)();

      v24 = v20;
      v11 = v19;
      (*v25)(v24, v23);
      v5 = v33;
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();

      v10 = v27;

      ++v12;
    }

    while (v41 != v19);
  }

  sub_1000220D4();
}

uint64_t sub_100024138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10000368C(&unk_1000EC820, &qword_1000B5090);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000B4FC0;
    *(inited + 32) = a3;

    sub_1000241FC(inited);

    swift_setDeallocating();
    return swift_arrayDestroy();
  }

  return result;
}

void *sub_1000241FC(unint64_t a1)
{
  v37 = sub_10000368C(&qword_1000EC548, &qword_1000B5820);
  v3 = *(v37 - 8);
  v4 = __chkstk_darwin(v37);
  v6 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v34 - v7;
  v9 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_36:
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v34[1] = OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_dataSource;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v34[0] = v1;
    v11 = result;
    dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

    (*(v3 + 32))(v8, v6, v37);
    v40 = _swiftEmptyArrayStorage;
    if (v9)
    {
      v6 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v1 = _swiftEmptyArrayStorage;
    v35 = v3;
    if (v6)
    {
      v3 = 0;
      v9 = a1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v13 = (v3 + 1);
          if (__OFADD__(v3, 1))
          {
LABEL_18:
            __break(1u);
LABEL_19:
            v17 = v40;
            v3 = v35;
            goto LABEL_21;
          }
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_36;
          }

          v12 = *(a1 + 8 * v3 + 32);

          v13 = (v3 + 1);
          if (__OFADD__(v3, 1))
          {
            goto LABEL_18;
          }
        }

        v14 = (v12 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
        swift_beginAccess();
        v15 = v14[1];
        v38 = *v14;
        v39 = v15;
        v1 = v8;
        NSDiffableDataSourceSnapshot.indexOfItem(_:)();
        if (v16)
        {
        }

        else
        {
          v1 = &v40;
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        ++v3;
        if (v13 == v6)
        {
          goto LABEL_19;
        }
      }
    }

    v17 = _swiftEmptyArrayStorage;
LABEL_21:

    if ((v17 & 0x8000000000000000) != 0 || (v17 & 0x4000000000000000) != 0)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        v18 = _CocoaArrayWrapper.endIndex.getter();
        if (!v18)
        {

          v20 = _swiftEmptyArrayStorage;
LABEL_33:
          NSDiffableDataSourceSnapshot.reconfigureItems(_:)(v20);

          Strong = swift_unknownObjectWeakLoadStrong();
          v3 = v35;
          if (Strong)
          {
            v33 = Strong;
            dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();
          }

          return (*(v3 + 8))(v8, v37);
        }

LABEL_24:
        v40 = _swiftEmptyArrayStorage;
        result = sub_1000A2C90(0, v18 & ~(v18 >> 63), 0);
        if (v18 < 0)
        {
          __break(1u);
          return result;
        }

        v19 = 0;
        v20 = v40;
        v21 = v17;
        v36 = v17 & 0xC000000000000001;
        v22 = v8;
        v23 = v17;
        v24 = v18;
        do
        {
          if (v36)
          {
            v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v25 = *(v21 + 8 * v19 + 32);
          }

          v26 = (v25 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
          swift_beginAccess();
          v27 = *v26;
          v28 = v26[1];

          v40 = v20;
          v30 = v20[2];
          v29 = v20[3];
          if (v30 >= v29 >> 1)
          {
            sub_1000A2C90((v29 > 1), v30 + 1, 1);
            v20 = v40;
          }

          ++v19;
          v20[2] = v30 + 1;
          v31 = &v20[2 * v30];
          v31[4] = v27;
          v31[5] = v28;
          v21 = v23;
        }

        while (v24 != v19);
        v8 = v22;

        goto LABEL_33;
      }
    }

    else
    {
      v18 = *(v17 + 16);
      if (v18)
      {
        goto LABEL_24;
      }
    }

    return (*(v3 + 8))(v8, v37);
  }

  return result;
}

void sub_100024650(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_currentPlayingStation;
  if (*(v1 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_currentPlayingStation))
  {
    swift_retain_n();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  if (a1)
  {
    v5 = *(v1 + v4);
    if (!v5 || ((v6 = (a1 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier), swift_beginAccess(), v7 = *v6, v8 = v6[1], v9 = (v5 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier), swift_beginAccess(), v7 == *v9) ? (v10 = v8 == v9[1]) : (v10 = 0), !v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
    {

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    sub_1000241FC(_swiftEmptyArrayStorage);

    v11 = *(v2 + v4);
    if (!v11 || ((v12 = (a1 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier), swift_beginAccess(), v13 = *v12, v14 = v12[1], v15 = (v11 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier), swift_beginAccess(), v13 == *v15) ? (v16 = v14 == v15[1]) : (v16 = 0), !v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
    {
      v17 = qword_1000EACE0;

      if (v17 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_100006928(v18, qword_1000F3B70);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "Attempting to scroll to new playing station.", v21, 2u);
      }

      sub_100026200(a1);

      return;
    }
  }

  else
  {
    sub_1000241FC(_swiftEmptyArrayStorage);
  }

  if (qword_1000EACE0 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100006928(v22, qword_1000F3B70);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "Suppressing scroll to playing station - it has not changed", v25, 2u);
  }
}

uint64_t sub_1000249F0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_currentBandStations) = v2;

    sub_100023A58();
  }

  return result;
}

void sub_100024A74(_BYTE *a1@<X0>, void *a3@<X8>)
{
  if (*a1 == 1 && (swift_beginAccess(), swift_weakLoadStrong()) && (Strong = swift_unknownObjectWeakLoadStrong(), , Strong) && (v5 = *&Strong[OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager], , Strong, v5))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v6 = v7;
  }

  else
  {
    v6 = 0;
  }

  *a3 = v6;
}

uint64_t sub_100024B74(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;

    sub_100024650(v5);
    *(v4 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_currentPlayingStation) = v2;
  }

  return result;
}

uint64_t sub_100024BF8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000220D4();
  }

  return result;
}

uint64_t sub_100024C50(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = (result + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_playbackState);
    *v5 = v2;
    v5[1] = v3;
    v6 = *(result + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_currentPlayingStation);
    if (v6)
    {
      sub_10000368C(&unk_1000EC820, &qword_1000B5090);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000B4FC0;
      *(inited + 32) = v6;
      swift_retain_n();
      sub_1000241FC(inited);

      swift_setDeallocating();
      return swift_arrayDestroy();
    }

    else
    {
    }
  }

  return result;
}

void sub_100024D54(unint64_t a1)
{
  if (a1 <= 4)
  {
    v2 = *(&off_1000DF430 + a1 + 32);
    if (qword_1000EACE0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100006928(v3, qword_1000F3B70);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v17 = v7;
      v8 = 0xE500000000000000;
      v9 = 0x636973754DLL;
      *v6 = 136446210;
      v10 = 0xE400000000000000;
      v11 = 1802264916;
      v12 = 0xE400000000000000;
      v13 = 1937204558;
      if (v2 != 3)
      {
        v13 = 0x726568744FLL;
        v12 = 0xE500000000000000;
      }

      if (v2 != 2)
      {
        v11 = v13;
        v10 = v12;
      }

      if (v2)
      {
        v9 = 0x7374726F7053;
        v8 = 0xE600000000000000;
      }

      if (v2 <= 1)
      {
        v14 = v9;
      }

      else
      {
        v14 = v11;
      }

      if (v2 <= 1)
      {
        v15 = v8;
      }

      else
      {
        v15 = v10;
      }

      v16 = sub_100043AF0(v14, v15, &v17);

      *(v6 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v4, v5, "Category filter changed to %{public}s", v6, 0xCu);
      sub_100006960(v7);
    }

    else
    {
    }

    *(v1 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_filteringStrategy) = v2;

    sub_1000220D4();
  }
}

unint64_t sub_100024F70()
{
  v1 = IndexPath.section.getter();
  v2 = OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_sections;
  if (v1 >= *(*(v0 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_sections) + 16))
  {
    return 0;
  }

  v3 = IndexPath.row.getter();
  v4 = IndexPath.section.getter();
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *(v0 + v2);
  if (v4 >= *(v5 + 16))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = *(v5 + 32 * v4 + 32);
  if (!(v6 >> 62))
  {
    if (v3 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    return 0;
  }

LABEL_15:
  if (v3 >= _CocoaArrayWrapper.endIndex.getter())
  {
    return 0;
  }

LABEL_6:
  v7 = IndexPath.section.getter();
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  v8 = *(v0 + v2);
  if (v7 >= *(v8 + 16))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(v8 + 32 * v7 + 32);

  result = IndexPath.row.getter();
  if ((v9 & 0xC000000000000001) != 0)
  {
LABEL_19:
    v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_12;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(v9 + 8 * result + 32);

LABEL_12:

    return v11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000250A4()
{
  v0 = sub_100024F70();
  if (!v0)
  {
    goto LABEL_14;
  }

  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v3 = *(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager), v4 = Strong, , v4, !v3))
  {
LABEL_13:

LABEL_14:
    v10 = 0;
    return v10 & 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v12 & 1) == 0 || (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , !v12))
  {

    goto LABEL_13;
  }

  v5 = (v12 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  v8 = (v1 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
  swift_beginAccess();
  if (v6 == *v8 && v7 == v8[1])
  {

    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

unint64_t sub_100025278(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v2 = *(v1 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_sections);
  if (*(v2 + 16) <= result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v3 = v2 + 32 * result;
  if (*(v3 + 56))
  {
    return 0;
  }

  if (*(v3 + 48))
  {
    v4 = *(v3 + 40);
  }

  else
  {
    v5 = [objc_opt_self() mainBundle];
    v9._object = 0xE000000000000000;
    v6.value._countAndFlagsBits = 0x6F69646152;
    v7._object = 0x80000001000BB7B0;
    v7._countAndFlagsBits = 0xD000000000000012;
    v6.value._object = 0xE500000000000000;
    v8._countAndFlagsBits = 0;
    v8._object = 0xE000000000000000;
    v9._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v6, v5, v8, v9);

    v4 = String.init(format:_:)();
  }

  return v4;
}

void sub_10002539C()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v61 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v57 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v7 = &v52 - v6;
  __chkstk_darwin(v5);
  v9 = &v52 - v8;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = swift_unknownObjectWeakLoadStrong();

    if (v12)
    {
      v13 = [v12 indexPathsForVisibleItems];

      v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = *(v14 + 16);
      v62 = OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_sections;
      v55 = v2;
      v56 = v1;
      v60 = v15;
      if (v15)
      {
        v16 = 0;
        v59 = (v61 + 16);
        v54 = (v61 + 32);
        v17 = (v61 + 8);
        v58 = _swiftEmptyArrayStorage;
        while (v16 < *(v14 + 16))
        {
          v18 = (*(v61 + 80) + 32) & ~*(v61 + 80);
          v19 = *(v61 + 72);
          (*(v61 + 16))(v9, v14 + v18 + v19 * v16, v2);
          if (IndexPath.section.getter() >= *(*(v1 + v62) + 16))
          {
            goto LABEL_5;
          }

          v20 = IndexPath.section.getter();
          if ((v20 & 0x8000000000000000) != 0)
          {
            goto LABEL_51;
          }

          v21 = *(v1 + v62);
          if (v20 >= *(v21 + 16))
          {
            goto LABEL_52;
          }

          if (*(v21 + 32 * v20 + 56))
          {
LABEL_5:
            (*v17)(v9, v2);
          }

          else
          {
            v53 = *v54;
            v53(v57, v9, v2);
            v22 = v58;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v63 = v22;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1000A2CB0(0, v22[2] + 1, 1);
              v22 = v63;
            }

            v25 = v22[2];
            v24 = v22[3];
            if (v25 >= v24 >> 1)
            {
              sub_1000A2CB0((v24 > 1), v25 + 1, 1);
              v22 = v63;
            }

            v22[2] = v25 + 1;
            v58 = v22;
            v26 = v22 + v18 + v25 * v19;
            v2 = v55;
            v53(v26, v57, v55);
            v1 = v56;
          }

          if (v60 == ++v16)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      v58 = _swiftEmptyArrayStorage;
LABEL_18:

      v27 = v58[2];
      if (v27)
      {
        v28 = v61 + 16;
        v29 = *(v61 + 16);
        v30 = v58 + ((*(v61 + 80) + 32) & ~*(v61 + 80));
        v61 = *(v61 + 72);
        v17 = (v28 - 8);
        v59 = v29;
        v60 = _swiftEmptyArrayStorage;
        v29(v7, v30, v2);
        while (IndexPath.section.getter() < *(*(v1 + v62) + 16))
        {
          v31 = IndexPath.row.getter();
          v32 = IndexPath.section.getter();
          if ((v32 & 0x8000000000000000) != 0)
          {
            goto LABEL_53;
          }

          v33 = *(v1 + v62);
          if (v32 >= *(v33 + 16))
          {
            goto LABEL_54;
          }

          v34 = *(v33 + 32 * v32 + 32);
          if (v34 >> 62)
          {
            if (v31 >= _CocoaArrayWrapper.endIndex.getter())
            {
              break;
            }
          }

          else if (v31 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            break;
          }

          v35 = IndexPath.section.getter();
          if ((v35 & 0x8000000000000000) != 0)
          {
            goto LABEL_55;
          }

          v36 = *(v1 + v62);
          if (v35 >= *(v36 + 16))
          {
            goto LABEL_56;
          }

          v37 = *(v36 + 32 * v35 + 32);

          v38 = IndexPath.row.getter();
          if ((v37 & 0xC000000000000001) != 0)
          {
            v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if ((v38 & 0x8000000000000000) != 0)
            {
              goto LABEL_57;
            }

            if (v38 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_58;
            }

            v39 = *(v37 + 8 * v38 + 32);
          }

          (*v17)(v7, v2);
          v40 = (v39 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
          swift_beginAccess();
          v42 = *v40;
          v41 = v40[1];

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v1 = v56;
            v43 = v60;
          }

          else
          {
            v43 = sub_1000A2344(0, *(v60 + 2) + 1, 1, v60);
            v1 = v56;
          }

          v45 = *(v43 + 2);
          v44 = *(v43 + 3);
          if (v45 >= v44 >> 1)
          {
            v43 = sub_1000A2344((v44 > 1), v45 + 1, 1, v43);
          }

          *(v43 + 2) = v45 + 1;
          v60 = v43;
          v46 = &v43[16 * v45];
          *(v46 + 4) = v42;
          *(v46 + 5) = v41;
          v2 = v55;
          v29 = v59;
LABEL_21:
          v30 += v61;
          if (!--v27)
          {

            v47 = v60;
            goto LABEL_46;
          }

          v29(v7, v30, v2);
        }

        (*v17)(v7, v2);
        goto LABEL_21;
      }
    }
  }

  v47 = _swiftEmptyArrayStorage;
LABEL_46:
  v17 = OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_scrollAnchors;
  *(v1 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_scrollAnchors) = v47;

  if (qword_1000EACE0 != -1)
  {
LABEL_59:
    swift_once();
  }

  v48 = type metadata accessor for Logger();
  sub_100006928(v48, qword_1000F3B70);

  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 134349056;
    *(v51 + 4) = (*(v17 + v1))[2];

    _os_log_impl(&_mh_execute_header, v49, v50, "Updated to %{public}ld scroll anchors.", v51, 0xCu);
  }

  else
  {
  }
}

void sub_100025A60()
{
  v2 = sub_10000368C(&qword_1000EC578, &qword_1000B5940);
  __chkstk_darwin(v2 - 8);
  v4 = &v52 - v3;
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v53 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v58 = &v52 - v10;
  __chkstk_darwin(v9);
  v54 = (&v52 - v11);
  v52 = OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_scrollAnchors;
  v12 = *(v0 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_scrollAnchors);
  v13 = *(v12 + 16);
  v59 = OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_dataSource;
  v60 = v0;

  v61 = v5;
  v55 = v6;
  if (v13)
  {
    v14 = 0;
    v15 = v6 + 48;
    v56 = (v6 + 56);
    v57 = (v6 + 32);
    v16 = (v12 + 40);
    v17 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v14 >= *(v12 + 16))
      {
        __break(1u);
LABEL_36:
        swift_once();
LABEL_17:
        v24 = type metadata accessor for Logger();
        sub_100006928(v24, qword_1000F3B70);
        v25 = v53;
        (v16)(v53, v1, v5);
        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v62[0] = v29;
          *v28 = 136446210;
          sub_10002D0B4(&qword_1000EC580, &protocol conformance descriptor for IndexPath);
          v30 = dispatch thunk of CustomStringConvertible.description.getter();
          v32 = v31;
          v33 = *(v15 + 8);
          v33(v25, v61);
          v34 = sub_100043AF0(v30, v32, v62);

          *(v28 + 4) = v34;
          _os_log_impl(&_mh_execute_header, v26, v27, "Scrolling to anchor at index %{public}s", v28, 0xCu);
          sub_100006960(v29);
          v5 = v61;

          v1 = v54;
        }

        else
        {

          v33 = *(v15 + 8);
          v33(v25, v5);
        }

        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v45 = Strong;
          v46 = swift_unknownObjectWeakLoadStrong();

          if (v46)
          {
            isa = IndexPath._bridgeToObjectiveC()().super.isa;
            [v46 scrollToItemAtIndexPath:isa atScrollPosition:2 animated:0];
          }
        }

        v33(v1, v5);
        return;
      }

      v18 = *(v16 - 1);
      v1 = *v16;
      v19 = swift_unknownObjectWeakLoadStrong();
      if (v19)
      {
        v20 = v19;
        v62[0] = v18;
        v62[1] = v1;

        dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

        v5 = v61;
        if ((*v15)(v4, 1, v61) != 1)
        {
          v1 = *v57;
          (*v57)(v58, v4, v5);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = sub_1000A255C(0, v17[2] + 1, 1, v17);
          }

          v22 = v17[2];
          v21 = v17[3];
          if (v22 >= v21 >> 1)
          {
            v17 = sub_1000A255C((v21 > 1), v22 + 1, 1, v17);
          }

          v17[2] = v22 + 1;
          v23 = v17 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v22;
          v5 = v61;
          v1(v23, v58, v61);
          goto LABEL_5;
        }
      }

      else
      {
        v5 = v61;
        (*v56)(v4, 1, 1, v61);
      }

      sub_100007834(v4, &qword_1000EC578, &qword_1000B5940);
LABEL_5:
      ++v14;
      v16 += 16;
      if (v13 == v14)
      {
        goto LABEL_15;
      }
    }
  }

  v17 = _swiftEmptyArrayStorage;
LABEL_15:

  if (v17[2])
  {
    v1 = v54;
    v15 = v55;
    v16 = *(v55 + 16);
    (v16)(v54, v17 + ((*(v55 + 80) + 32) & ~*(v55 + 80)), v5);

    if (qword_1000EACE0 != -1)
    {
      goto LABEL_36;
    }

    goto LABEL_17;
  }

  if (*(*(v60 + v52) + 16))
  {
    if (qword_1000EACE0 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_100006928(v35, qword_1000F3B70);

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v62[0] = v39;
      *v38 = 136446210;

      v40 = Array.description.getter();
      v42 = v41;

      v43 = sub_100043AF0(v40, v42, v62);

      *(v38 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v36, v37, "No anchors were available to scroll to: %{public}s", v38, 0xCu);
      sub_100006960(v39);
    }
  }

  else
  {
    if (qword_1000EACE0 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_100006928(v48, qword_1000F3B70);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "No available identifiers to scroll to", v51, 2u);
    }
  }
}

void sub_100026200(uint64_t a1)
{
  v3 = sub_10000368C(&qword_1000EC578, &qword_1000B5940);
  __chkstk_darwin(v3 - 8);
  v5 = v43 - v4;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v43 - v11;
  v13 = OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_dataSource;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v43[1] = v13;
    v43[2] = v1;
    v16 = (a1 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
    swift_beginAccess();
    v17 = v16[1];
    v44[0] = *v16;
    v44[1] = v17;

    dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      (*(v7 + 32))(v12, v5, v6);
      if (qword_1000EACE0 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_100006928(v18, qword_1000F3B70);
      (*(v7 + 16))(v10, v12, v6);

      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v43[0] = swift_slowAlloc();
        v44[0] = v43[0];
        *v21 = 136446466;
        v22 = *v16;
        v23 = v16[1];

        v24 = sub_100043AF0(v22, v23, v44);

        *(v21 + 4) = v24;
        *(v21 + 12) = 2082;
        sub_10002D0B4(&qword_1000EC580, &protocol conformance descriptor for IndexPath);
        v25 = dispatch thunk of CustomStringConvertible.description.getter();
        v27 = v26;
        v28 = *(v7 + 8);
        v28(v10, v6);
        v29 = sub_100043AF0(v25, v27, v44);

        *(v21 + 14) = v29;
        _os_log_impl(&_mh_execute_header, v19, v20, "Scrolling to station %{public}s at index %{public}s", v21, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        v28 = *(v7 + 8);
        v28(v10, v6);
      }

      v39 = swift_unknownObjectWeakLoadStrong();
      if (v39)
      {
        v40 = v39;
        v41 = swift_unknownObjectWeakLoadStrong();

        if (v41)
        {
          isa = IndexPath._bridgeToObjectiveC()().super.isa;
          [v41 scrollToItemAtIndexPath:isa atScrollPosition:2 animated:0];
        }
      }

      v28(v12, v6);
      return;
    }
  }

  else
  {
    (*(v7 + 56))(v5, 1, 1, v6);
  }

  sub_100007834(v5, &qword_1000EC578, &qword_1000B5940);
  if (qword_1000EACE0 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  sub_100006928(v30, qword_1000F3B70);

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v45 = v34;
    *v33 = 136446210;
    v35 = (a1 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
    swift_beginAccess();
    v37 = *v35;
    v36 = v35[1];

    v38 = sub_100043AF0(v37, v36, &v45);

    *(v33 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v31, v32, "Unable to find an index path for station %{public}s", v33, 0xCu);
    sub_100006960(v34);
  }
}

void sub_1000267D8()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v59 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v7 = &v52 - v6;
  __chkstk_darwin(v5);
  v9 = &v52 - v8;
  v10 = *(v0 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_currentPlayingStation);
  if (!v10)
  {
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v56 = v0;
  v12 = Strong;
  v13 = swift_unknownObjectWeakLoadStrong();

  if (!v13)
  {
    goto LABEL_48;
  }

  v53 = v7;
  v54 = v10;
  v58 = v2;
  v14 = [v13 indexPathsForVisibleItems];

  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v62 = *(v15 + 16);
  v63 = OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_sections;
  if (!v62)
  {
    v60 = _swiftEmptyArrayStorage;
    v19 = v56;
    v17 = v58;
LABEL_20:

    v30 = v60;
    v31 = v60[2];
    if (v31)
    {
      v32 = (v54 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
      v33 = v60 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
      swift_beginAccess();
      v34 = 0;
      v61 = (v17 + 8);
      v62 = v17 + 16;
      v35 = v53;
      v59 = v31;
      v60 = v30;
      do
      {
        if (v34 >= v30[2])
        {
          goto LABEL_55;
        }

        (*(v17 + 16))(v35, &v33[*(v17 + 72) * v34], v1);
        if (IndexPath.section.getter() >= *(*(v19 + v63) + 16))
        {
          v49 = 0;
          v48 = 0xE000000000000000;
          goto LABEL_39;
        }

        v36 = v32;
        v37 = IndexPath.row.getter();
        v38 = IndexPath.section.getter();
        if ((v38 & 0x8000000000000000) != 0)
        {
          goto LABEL_56;
        }

        v39 = *(v19 + v63);
        if (v38 >= *(v39 + 16))
        {
          goto LABEL_57;
        }

        v40 = *(v39 + 32 * v38 + 32);
        if (v40 >> 62)
        {
          if (v37 < _CocoaArrayWrapper.endIndex.getter())
          {
LABEL_28:
            v41 = IndexPath.section.getter();
            if ((v41 & 0x8000000000000000) != 0)
            {
              goto LABEL_58;
            }

            v42 = *(v19 + v63);
            if (v41 >= *(v42 + 16))
            {
              goto LABEL_59;
            }

            v43 = *(v42 + 32 * v41 + 32);

            v44 = IndexPath.row.getter();
            if ((v43 & 0xC000000000000001) != 0)
            {
              v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if ((v44 & 0x8000000000000000) != 0)
              {
                goto LABEL_60;
              }

              if (v44 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_61;
              }

              v45 = *(v43 + 8 * v44 + 32);
            }

            v46 = (v45 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
            swift_beginAccess();
            v47 = *v46;
            v48 = v46[1];

            v49 = v47;
            v19 = v56;
            v31 = v59;
            goto LABEL_38;
          }
        }

        else if (v37 < *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v49 = 0;
        v48 = 0xE000000000000000;
LABEL_38:
        v32 = v36;
        v30 = v60;
LABEL_39:
        if (v49 == *v32 && v48 == v32[1])
        {

          (*v61)(v35, v1);
LABEL_50:

          return;
        }

        v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

        (*v61)(v35, v1);
        if (v51)
        {
          goto LABEL_50;
        }

        ++v34;
        v17 = v58;
      }

      while (v31 != v34);
    }

LABEL_48:

    return;
  }

  v16 = 0;
  v17 = v58;
  v61 = (v58 + 16);
  v57 = (v58 + 32);
  v18 = (v58 + 8);
  v60 = _swiftEmptyArrayStorage;
  v55 = v1;
  v19 = v56;
  while (v16 < *(v15 + 16))
  {
    v20 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v21 = *(v17 + 72);
    (*(v17 + 16))(v9, v15 + v20 + v21 * v16, v1);
    if (IndexPath.section.getter() >= *(*(v19 + v63) + 16))
    {
      goto LABEL_6;
    }

    v22 = IndexPath.section.getter();
    if ((v22 & 0x8000000000000000) != 0)
    {
      goto LABEL_53;
    }

    v23 = *(v19 + v63);
    if (v22 >= *(v23 + 16))
    {
      goto LABEL_54;
    }

    if (*(v23 + 32 * v22 + 56))
    {
LABEL_6:
      (*v18)(v9, v1);
    }

    else
    {
      v24 = *v57;
      (*v57)(v59, v9, v1);
      v25 = v60;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v64 = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000A2CB0(0, v25[2] + 1, 1);
        v25 = v64;
      }

      v28 = v25[2];
      v27 = v25[3];
      if (v28 >= v27 >> 1)
      {
        sub_1000A2CB0((v27 > 1), v28 + 1, 1);
        v25 = v64;
      }

      v25[2] = v28 + 1;
      v60 = v25;
      v29 = v25 + v20 + v28 * v21;
      v1 = v55;
      v24(v29, v59, v55);
      v19 = v56;
      v17 = v58;
    }

    if (v62 == ++v16)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
}

uint64_t sub_100026DEC()
{
  v1 = OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage__emptyTitle;
  v2 = sub_10000368C(&qword_1000EC588, &qword_1000B59D8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectWeakDestroy();

  swift_unknownObjectWeakDestroy();

  return v0;
}

uint64_t sub_100026EEC()
{
  sub_100026DEC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for RadioStationDataSourceStorage(uint64_t a1)
{
  result = qword_1000EC2B0;
  if (!qword_1000EC2B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100026F98(uint64_t a1)
{
  sub_10002707C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10002707C(uint64_t a1)
{
  if (!qword_1000EC2C0)
  {
    sub_100005780(&unk_1000EC2C8, &qword_1000B5750);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_1000EC2C0);
    }
  }
}

uint64_t sub_1000270E0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for RadioStationDataSourceStorage(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t sub_100027120(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {

    v8 = sub_10002BC68(v5);
    sub_100027F64(&v8);
    v3 = v8;
    if (v8 < 0 || (v8 & 0x4000000000000000) != 0)
    {
      type metadata accessor for TerrestrialRadioStation(0);

      v7 = _bridgeCocoaArray<A>(_:)();

      return v7;
    }

    goto LABEL_7;
  }

  __chkstk_darwin(a1);

  v8 = sub_10002BC68(v2);
  sub_10002CD6C(&v8, sub_10002F018);
  v3 = v8;
  if ((v8 & 0x8000000000000000) == 0 && (v8 & 0x4000000000000000) == 0)
  {
LABEL_7:

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for TerrestrialRadioStation(0);

    return v3;
  }

  type metadata accessor for TerrestrialRadioStation(0);

  v4 = _bridgeCocoaArray<A>(_:)();

  return v4;
}

uint64_t sub_100027294(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      sub_100080B70(a2, a3);
    }

    if (a4)
    {
      if (qword_1000EACE0 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_100006928(v11, qword_1000F3B70);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "Attempting to return to playing station.", v14, 2u);
      }

      if (*(v8 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_currentPlayingStation))
      {

        sub_100026200(v15);
      }

      sub_10002539C();
    }

    else
    {
      if (qword_1000EACE0 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_100006928(v16, qword_1000F3B70);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "Attempting to return to anchors.", v19, 2u);
      }

      sub_100025A60();
    }
  }

  return result;
}

void *sub_1000274CC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10000368C(&unk_1000EC820, &qword_1000B5090);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_100027554(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10000368C(&unk_1000EEED0, &qword_1000B5938);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

unint64_t sub_1000275D8(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10002B918(a1, a2, v4);
}

unint64_t sub_100027650(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  if (a2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v4 = Hasher._finalize()();

  return sub_10002B9D0(a1, a2, v4);
}

unint64_t sub_1000276E4(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10002BA9C(a1, v4);
}

unint64_t sub_100027728(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_10002BB64(a1, v2);
}

Swift::Int sub_1000277BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000368C(&qword_1000EC570, &qword_1000B5930);
  v30 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 56) + 8 * v19);
      v31 = *(*(v5 + 48) + 16 * v19);
      v21 = *(*(v5 + 48) + 16 * v19 + 8);
      if ((v30 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      if (v21)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      result = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v31;
      *(*(v7 + 56) + 8 * v15) = v20;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_36;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v7;
  return result;
}

Swift::Int sub_100027A84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000368C(&unk_1000EC610, &unk_1000B6700);
  v35 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100027D28(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_10002BD10(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v24 = v2 + 32;
  v29[0] = v2 + 32;
  v29[1] = v4;
  v5 = _minimumMergeRunLength(_:)(v4);
  if (v5 >= v4)
  {
    if (v4 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = (v2 + 32);
      v23 = v4;
      do
      {
        v26 = v9;
        v11 = *(v24 + 8 * v9);
        v30 = v8;
        v12 = v8;
        v25 = v10;
        do
        {
          v13 = *v10;
          v14 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
          swift_beginAccess();
          v15 = *(v11 + v14);
          v16 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
          swift_beginAccess();
          v17 = *(v13 + v16);
          swift_beginAccess();

          v18 = v15;
          v19 = v17;
          LOBYTE(v16) = CAFMediaItem.isOrderedAscending(preferringFrequency:to:in:)();

          if ((v16 & 1) == 0)
          {
            break;
          }

          v20 = *v10;
          v11 = v10[1];
          *v10 = v11;
          v10[1] = v20;
          --v10;
        }

        while (!__CFADD__(v12++, 1));
        v9 = v26 + 1;
        v10 = v25 + 1;
        v8 = v30 - 1;
      }

      while (v26 + 1 != v23);
    }
  }

  else
  {
    v6 = v5;
    if (v4 >= 2)
    {
      type metadata accessor for TerrestrialRadioStation(0);
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4 >> 1;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v28[0] = ((v7 & 0xFFFFFFFFFFFFFF8) + 32);
    v28[1] = (v4 >> 1);
    sub_100028914(v28, v27, v29, v6);
    *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

  return specialized ContiguousArray._endMutation()();
}

uint64_t sub_100027F64(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_10002BD10(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_10002804C(v6);
  return specialized ContiguousArray._endMutation()();
}

Swift::Int sub_100027FE0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10002BD24(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_100028150(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_10002804C(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for TerrestrialRadioStation(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1000290BC(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100028248(0, v2, 1, a1);
  }

  return result;
}

Swift::Int sub_100028150(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_10002A190(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100028650(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100028248(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v32 = *a4;
    v4 = (*a4 + 8 * a3 - 8);
    v5 = result - a3;
LABEL_6:
    v31 = a3;
    v6 = *(v32 + 8 * a3);
    v29 = v5;
    v30 = v4;
    while (1)
    {
      v7 = *v4;
      v8 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceType;
      swift_beginAccess();
      if (*(v6 + v8) == 3)
      {
        swift_beginAccess();
        swift_beginAccess();
        sub_100020F58();

        v9 = StringProtocol.caseInsensitiveCompare<A>(_:)();
        if (v9 == -1)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v10 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
        swift_beginAccess();
        v11 = *(v6 + v10);

        v12 = v11;
        CAFMediaItem.primaryDisplayName(in:)();

        v13 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
        swift_beginAccess();
        v14 = *(v7 + v13);
        swift_beginAccess();
        v15 = v14;
        CAFMediaItem.primaryDisplayName(in:)();

        sub_100020F58();
        v9 = StringProtocol.caseInsensitiveCompare<A>(_:)();

        if (v9 == -1)
        {
          goto LABEL_18;
        }
      }

      if (v9 == 1)
      {
        goto LABEL_4;
      }

      v16 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
      swift_beginAccess();
      v17 = *(v6 + v16);
      CAFMediaItem.secondaryDisplayName.getter();

      v18 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
      swift_beginAccess();
      v19 = *(v7 + v18);
      CAFMediaItem.secondaryDisplayName.getter();

      sub_100020F58();
      v20 = StringProtocol.caseInsensitiveCompare<A>(_:)();

      if (v20 == -1)
      {
LABEL_18:

        goto LABEL_19;
      }

      if (v20 == 1)
      {
LABEL_4:

        goto LABEL_5;
      }

      v21 = TerrestrialRadioStation.formattedFrequency.getter();
      v23 = v22;
      if (v21 == TerrestrialRadioStation.formattedFrequency.getter() && v23 == v24)
      {

LABEL_5:
        a3 = v31 + 1;
        v4 = v30 + 1;
        v5 = v29 - 1;
        if (v31 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v25 & 1) == 0)
      {
        goto LABEL_5;
      }

LABEL_19:
      if (!v32)
      {
        __break(1u);
        return result;
      }

      v26 = *v4;
      v6 = v4[1];
      *v4 = v6;
      v4[1] = v26;
      --v4;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t sub_100028650(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v25 = *a4;
    v4 = *a4 + 32 * a3 + 24;
    v5 = result - a3;
LABEL_6:
    v22 = v4;
    v23 = a3;
    v21 = v5;
    while (1)
    {
      v6 = (v4 - 24);
      v7 = *(v4 - 8);
      v8 = *(v4 - 40);
      if (v7)
      {
        v9 = *(v4 - 16);
        if (v8)
        {
          v10 = *(v4 - 48);
        }

        else
        {
          v10 = 0;
        }

        v11 = 0xE000000000000000;
        if (v8)
        {
          v11 = *(v4 - 40);
        }

        v26 = v11;
        if (v7 == 0xE100000000000000 && v9 == 35)
        {
LABEL_4:
          swift_bridgeObjectRetain_n();

LABEL_5:
          a3 = v23 + 1;
          v4 = v22 + 32;
          v5 = v21 - 1;
          if (v23 + 1 == a2)
          {
            return result;
          }

          goto LABEL_6;
        }

        v12 = *(v4 - 8);
      }

      else
      {
        v9 = 0;
        v10 = v8 ? *(v4 - 48) : 0;
        v12 = 0xE000000000000000;
        v13 = v8 ? *(v4 - 40) : 0xE000000000000000;
        v26 = v13;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        goto LABEL_4;
      }

      v14 = v10 == 35 && v26 == 0xE100000000000000;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        swift_bridgeObjectRetain_n();
      }

      else
      {
        if (v9 == v10 && v12 == v26)
        {
          goto LABEL_4;
        }

        v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
        swift_bridgeObjectRetain_n();

        if ((v24 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      if (!v25)
      {
        break;
      }

      v16 = *(v4 - 56);
      v15 = *(v4 - 40);
      *(v4 - 32) = *v4;
      v4 -= 32;
      v17 = *(v4 + 8);
      v18 = *(v4 + 16);
      *v6 = v16;
      v6[1] = v15;
      *(v4 - 24) = v17;
      *(v4 - 16) = v18;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_100028914(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = a1;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = _swiftEmptyArrayStorage;
LABEL_86:
    v9 = *v7;
    if (!*v7)
    {
      goto LABEL_124;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_118:
      v10 = sub_10002B800(v10);
    }

    v100 = *(v10 + 2);
    if (v100 >= 2)
    {
      while (*v6)
      {
        v101 = v10;
        v10 = (v100 - 1);
        v102 = *&v101[16 * v100];
        v103 = *&v101[16 * v100 + 24];
        sub_10002AB80((*v6 + 8 * v102), (*v6 + 8 * *&v101[16 * v100 + 16]), (*v6 + 8 * v103), v9);
        if (v5)
        {
          goto LABEL_96;
        }

        if (v103 < v102)
        {
          goto LABEL_111;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v101 = sub_10002B800(v101);
        }

        if (v100 - 2 >= *(v101 + 2))
        {
          goto LABEL_112;
        }

        v104 = &v101[16 * v100];
        *v104 = v102;
        *(v104 + 1) = v103;
        sub_10002B774(v100 - 1);
        v10 = v101;
        v100 = *(v101 + 2);
        if (v100 <= 1)
        {
          goto LABEL_96;
        }
      }

      goto LABEL_122;
    }

LABEL_96:

    return;
  }

  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  while (1)
  {
    v11 = v9++;
    if (v9 < v8)
    {
      v115 = v8;
      v107 = v10;
      v109 = v5;
      v12 = *(*v6 + 8 * v9);
      v13 = 8 * v11;
      v14 = (*v6 + 8 * v11);
      v16 = *v14;
      v15 = v14 + 2;
      v112 = v11;
      v17 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
      swift_beginAccess();
      v18 = *(v12 + v17);
      v19 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
      swift_beginAccess();
      v20 = *(v16 + v19);
      swift_beginAccess();

      v21 = v18;
      v22 = v20;
      v117 = CAFMediaItem.isOrderedAscending(preferringFrequency:to:in:)();

      v23 = (v112 + 2);
      while (1)
      {
        v9 = v115;
        if (v115 == v23)
        {
          break;
        }

        v25 = *(v15 - 1);
        v24 = *v15;
        v26 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
        swift_beginAccess();
        v27 = *(v24 + v26);
        v28 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
        swift_beginAccess();
        v29 = *(v25 + v28);
        swift_beginAccess();

        v30 = v27;
        v31 = v29;
        LODWORD(v28) = CAFMediaItem.isOrderedAscending(preferringFrequency:to:in:)() & 1;

        ++v23;
        ++v15;
        if ((v117 & 1) != v28)
        {
          v9 = (v23 - 1);
          break;
        }
      }

      v10 = v107;
      v5 = v109;
      v6 = a3;
      v7 = a1;
      v11 = v112;
      if (v117)
      {
        if (v9 < v112)
        {
          goto LABEL_115;
        }

        if (v112 < v9)
        {
          v32 = 8 * v9 - 8;
          v33 = v9;
          v34 = v112;
          do
          {
            if (v34 != --v33)
            {
              v36 = *a3;
              if (!*a3)
              {
                goto LABEL_121;
              }

              v35 = *(v36 + v13);
              *(v36 + v13) = *(v36 + v32);
              *(v36 + v32) = v35;
            }

            ++v34;
            v32 -= 8;
            v13 += 8;
          }

          while (v34 < v33);
        }
      }
    }

    v37 = v6[1];
    if (v9 < v37)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_114;
      }

      if (v9 - v11 < a4)
      {
        v38 = (v11 + a4);
        if (__OFADD__(v11, a4))
        {
          goto LABEL_116;
        }

        if (v38 >= v37)
        {
          v38 = v6[1];
        }

        if (v38 < v11)
        {
LABEL_117:
          __break(1u);
          goto LABEL_118;
        }

        if (v9 != v38)
        {
          break;
        }
      }
    }

LABEL_35:
    if (v9 < v11)
    {
      goto LABEL_113;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_10002B814(0, *(v10 + 2) + 1, 1, v10);
    }

    v54 = *(v10 + 2);
    v53 = *(v10 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      v10 = sub_10002B814((v53 > 1), v54 + 1, 1, v10);
    }

    *(v10 + 2) = v55;
    v56 = &v10[16 * v54];
    *(v56 + 4) = v11;
    *(v56 + 5) = v9;
    v57 = *v7;
    if (!*v7)
    {
      goto LABEL_123;
    }

    if (v54)
    {
      while (1)
      {
        v58 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v59 = *(v10 + 4);
          v60 = *(v10 + 5);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_55:
          if (v62)
          {
            goto LABEL_102;
          }

          v75 = &v10[16 * v55];
          v77 = *v75;
          v76 = *(v75 + 1);
          v78 = __OFSUB__(v76, v77);
          v79 = v76 - v77;
          v80 = v78;
          if (v78)
          {
            goto LABEL_105;
          }

          v81 = &v10[16 * v58 + 32];
          v83 = *v81;
          v82 = *(v81 + 1);
          v69 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v69)
          {
            goto LABEL_108;
          }

          if (__OFADD__(v79, v84))
          {
            goto LABEL_109;
          }

          if (v79 + v84 >= v61)
          {
            if (v61 < v84)
            {
              v58 = v55 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v85 = &v10[16 * v55];
        v87 = *v85;
        v86 = *(v85 + 1);
        v69 = __OFSUB__(v86, v87);
        v79 = v86 - v87;
        v80 = v69;
LABEL_69:
        if (v80)
        {
          goto LABEL_104;
        }

        v88 = &v10[16 * v58];
        v90 = *(v88 + 4);
        v89 = *(v88 + 5);
        v69 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v69)
        {
          goto LABEL_107;
        }

        if (v91 < v79)
        {
          goto LABEL_3;
        }

LABEL_76:
        v96 = v58 - 1;
        if (v58 - 1 >= v55)
        {
          __break(1u);
LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
          goto LABEL_117;
        }

        if (!*v6)
        {
          goto LABEL_120;
        }

        v97 = *&v10[16 * v96 + 32];
        v98 = *&v10[16 * v58 + 40];
        sub_10002AB80((*v6 + 8 * v97), (*v6 + 8 * *&v10[16 * v58 + 32]), (*v6 + 8 * v98), v57);
        if (v5)
        {
          goto LABEL_96;
        }

        if (v98 < v97)
        {
          goto LABEL_98;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_10002B800(v10);
        }

        if (v96 >= *(v10 + 2))
        {
          goto LABEL_99;
        }

        v99 = &v10[16 * v96];
        *(v99 + 4) = v97;
        *(v99 + 5) = v98;
        sub_10002B774(v58);
        v55 = *(v10 + 2);
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v63 = &v10[16 * v55 + 32];
      v64 = *(v63 - 64);
      v65 = *(v63 - 56);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_100;
      }

      v68 = *(v63 - 48);
      v67 = *(v63 - 40);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_101;
      }

      v70 = &v10[16 * v55];
      v72 = *v70;
      v71 = *(v70 + 1);
      v69 = __OFSUB__(v71, v72);
      v73 = v71 - v72;
      if (v69)
      {
        goto LABEL_103;
      }

      v69 = __OFADD__(v61, v73);
      v74 = v61 + v73;
      if (v69)
      {
        goto LABEL_106;
      }

      if (v74 >= v66)
      {
        v92 = &v10[16 * v58 + 32];
        v94 = *v92;
        v93 = *(v92 + 1);
        v69 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v69)
        {
          goto LABEL_110;
        }

        if (v61 < v95)
        {
          v58 = v55 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v8 = v6[1];
    v7 = a1;
    if (v9 >= v8)
    {
      goto LABEL_86;
    }
  }

  v108 = v10;
  v110 = v5;
  v39 = *v6;
  v40 = (*v6 + 8 * v9 - 8);
  v113 = v11;
  v114 = v38;
  v41 = v11 - v9;
LABEL_28:
  v116 = v40;
  v118 = v9;
  v42 = *(v39 + 8 * v9);
  v43 = v41;
  while (1)
  {
    v44 = *v40;
    v45 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
    swift_beginAccess();
    v46 = *(v42 + v45);
    v47 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
    swift_beginAccess();
    v48 = *(v44 + v47);
    swift_beginAccess();

    v49 = v46;
    v50 = v48;
    LOBYTE(v47) = CAFMediaItem.isOrderedAscending(preferringFrequency:to:in:)();

    if ((v47 & 1) == 0)
    {
LABEL_27:
      v9 = (v118 + 1);
      v40 = v116 + 1;
      --v41;
      if (v118 + 1 != v114)
      {
        goto LABEL_28;
      }

      v9 = v114;
      v10 = v108;
      v5 = v110;
      v6 = a3;
      v7 = a1;
      v11 = v113;
      goto LABEL_35;
    }

    if (!v39)
    {
      break;
    }

    v51 = *v40;
    v42 = v40[1];
    *v40 = v42;
    v40[1] = v51;
    --v40;
    if (__CFADD__(v43++, 1))
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
}

uint64_t sub_1000290BC(uint64_t result, uint64_t a2, char **a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v148 = result;
  v8 = a3[1];
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = _swiftEmptyArrayStorage;
    while (1)
    {
      v150 = v9;
      if (v9 + 1 >= v8)
      {
        v153 = v9 + 1;
      }

      else
      {
        v5 = *v7;
        v11 = *&(*v7)[8 * v9 + 8];
        v12 = *&(*v7)[8 * v9];

        v13 = sub_100043648(v11, v12);

        v14 = v150;
        v153 = v150 + 2;
        if (v150 + 2 < v8)
        {
          v143 = v10;
          v145 = v6;
          v15 = &v5[8 * v150 + 16];
          while (1)
          {
            v16 = *(v15 - 1);
            v5 = *v15;
            v17 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceType;
            swift_beginAccess();
            if (v5[v17] == 3)
            {
              swift_beginAccess();
              swift_beginAccess();
              sub_100020F58();

              v18 = StringProtocol.caseInsensitiveCompare<A>(_:)();
              if (v18 == 1)
              {
                goto LABEL_7;
              }
            }

            else
            {
              v19 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
              swift_beginAccess();
              v20 = *&v5[v19];

              v21 = v20;
              CAFMediaItem.primaryDisplayName(in:)();

              v22 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
              swift_beginAccess();
              v23 = *(v16 + v22);
              swift_beginAccess();
              v24 = v23;
              CAFMediaItem.primaryDisplayName(in:)();

              sub_100020F58();
              v18 = StringProtocol.caseInsensitiveCompare<A>(_:)();

              if (v18 == 1)
              {
LABEL_7:

                if (v13)
                {
                  goto LABEL_33;
                }

                goto LABEL_8;
              }
            }

            if (v18 == -1)
            {

              if ((v13 & 1) == 0)
              {
                goto LABEL_42;
              }
            }

            else
            {
              v25 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
              swift_beginAccess();
              v26 = *&v5[v25];
              CAFMediaItem.secondaryDisplayName.getter();

              v27 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
              swift_beginAccess();
              v28 = *(v16 + v27);
              CAFMediaItem.secondaryDisplayName.getter();

              sub_100020F58();
              v29 = StringProtocol.caseInsensitiveCompare<A>(_:)();

              if (v29 == 1)
              {

                if (v13)
                {
LABEL_33:
                  v10 = v143;
                  v6 = v145;
                  v7 = a3;
                  v14 = v150;
                  goto LABEL_34;
                }
              }

              else if (v29 == -1)
              {

                if ((v13 & 1) == 0)
                {
LABEL_42:
                  v10 = v143;
                  v6 = v145;
                  v7 = a3;
                  goto LABEL_43;
                }
              }

              else
              {
                v30 = TerrestrialRadioStation.formattedFrequency.getter();
                v32 = v31;
                if (v30 == TerrestrialRadioStation.formattedFrequency.getter() && v32 == v33)
                {
                  v34 = 0;
                }

                else
                {
                  v34 = _stringCompareWithSmolCheck(_:_:expecting:)();
                }

                if ((v13 ^ v34))
                {
                  goto LABEL_30;
                }
              }
            }

LABEL_8:
            ++v15;
            if (v8 == ++v153)
            {
              v153 = v8;
LABEL_30:
              v10 = v143;
              v6 = v145;
              v7 = a3;
              v14 = v150;
              break;
            }
          }
        }

        if (v13)
        {
LABEL_34:
          v35 = v153;
          if (v153 < v14)
          {
            goto LABEL_165;
          }

          if (v14 < v153)
          {
            v36 = 8 * v153 - 8;
            v37 = 8 * v14;
            do
            {
              if (v14 != --v35)
              {
                v39 = *v7;
                if (!*v7)
                {
                  goto LABEL_171;
                }

                v38 = *&v39[v37];
                *&v39[v37] = *&v39[v36];
                *&v39[v36] = v38;
              }

              ++v14;
              v36 -= 8;
              v37 += 8;
            }

            while (v14 < v35);
          }
        }
      }

LABEL_43:
      v40 = v7[1];
      if (v153 >= v40)
      {
        goto LABEL_85;
      }

      if (__OFSUB__(v153, v150))
      {
        goto LABEL_164;
      }

      if (v153 - v150 >= a4)
      {
        goto LABEL_85;
      }

      if (__OFADD__(v150, a4))
      {
        goto LABEL_166;
      }

      if (v150 + a4 < v40)
      {
        v40 = (v150 + a4);
      }

      if (v40 < v150)
      {
LABEL_167:
        __break(1u);
        goto LABEL_168;
      }

      if (v153 == v40)
      {
        goto LABEL_85;
      }

      v149 = v40;
      v144 = v10;
      v146 = v6;
      v155 = *v7;
      v41 = &(*v7)[8 * v153 - 8];
      v42 = v150 - v153;
      v43 = v153;
      while (2)
      {
        v154 = v43;
        v44 = *&v155[8 * v43];
        v151 = v42;
        v152 = v41;
        v45 = v42;
        while (1)
        {
          v156 = v45;
          v46 = *v41;
          v47 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceType;
          swift_beginAccess();
          if (*(v44 + v47) == 3)
          {
            swift_beginAccess();
            swift_beginAccess();
            sub_100020F58();

            v48 = StringProtocol.caseInsensitiveCompare<A>(_:)();
            if (v48 == -1)
            {
              goto LABEL_65;
            }
          }

          else
          {
            v49 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
            swift_beginAccess();
            v50 = *(v44 + v49);

            v51 = v50;
            CAFMediaItem.primaryDisplayName(in:)();
            v5 = v52;

            v53 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
            swift_beginAccess();
            v54 = *(v46 + v53);
            swift_beginAccess();
            v55 = v54;
            CAFMediaItem.primaryDisplayName(in:)();

            sub_100020F58();
            v48 = StringProtocol.caseInsensitiveCompare<A>(_:)();

            if (v48 == -1)
            {
              goto LABEL_65;
            }
          }

          if (v48 == 1)
          {
            goto LABEL_52;
          }

          v56 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
          swift_beginAccess();
          v57 = *(v44 + v56);
          CAFMediaItem.secondaryDisplayName.getter();
          v5 = v58;

          v59 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
          swift_beginAccess();
          v60 = *(v46 + v59);
          CAFMediaItem.secondaryDisplayName.getter();

          sub_100020F58();
          v61 = StringProtocol.caseInsensitiveCompare<A>(_:)();

          if (v61 == -1)
          {
LABEL_65:

            goto LABEL_80;
          }

          if (v61 == 1)
          {
LABEL_52:

            goto LABEL_53;
          }

          v62 = *(v44 + v47);
          if (v62 == 2 || v62 == 8)
          {
            sub_10000368C(&unk_1000EEE80, &unk_1000B58C0);
            v63 = swift_allocObject();
            *(v63 + 16) = xmmword_1000B4760;
            v64 = (v44 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_frequency);
            swift_beginAccess();
            LODWORD(v65) = *v64;
            *(v63 + 56) = &type metadata for Double;
            *(v63 + 64) = &protocol witness table for Double;
            *(v63 + 32) = v65 / 1000.0;
            v5 = String.init(format:_:)();
            v67 = v66;
          }

          else
          {
            v68 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_frequency;
            swift_beginAccess();
            v69 = *(v44 + v68);
            sub_10000368C(&unk_1000EEE80, &unk_1000B58C0);
            v70 = swift_allocObject();
            *(v70 + 16) = xmmword_1000B5700;
            if (v69 >= 0x64)
            {
              v71 = 0;
              v73 = 0xE000000000000000;
            }

            else
            {
              sub_10000368C(&qword_1000EC560, &unk_1000B5920);
              sub_100005870(&qword_1000EC568, &qword_1000EC560, &unk_1000B5920, &protocol conformance descriptor for Repeated<A>);
              v71 = String.init<A>(_:)();
              v73 = v72;
            }

            *(v70 + 56) = &type metadata for String;
            *(v70 + 64) = sub_10002BE6C();
            *(v70 + 32) = v71;
            *(v70 + 40) = v73;
            v74 = *(v44 + v68);
            *(v70 + 96) = &type metadata for UInt;
            *(v70 + 104) = &protocol witness table for UInt;
            *(v70 + 72) = v74;
            v5 = String.init(format:_:)();
            v67 = v75;
          }

          v76 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceType;
          swift_beginAccess();
          v77 = *(v46 + v76);
          if (v77 == 2 || v77 == 8)
          {
            sub_10000368C(&unk_1000EEE80, &unk_1000B58C0);
            v78 = swift_allocObject();
            *(v78 + 16) = xmmword_1000B4760;
            v79 = (v46 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_frequency);
            swift_beginAccess();
            LODWORD(v80) = *v79;
            *(v78 + 56) = &type metadata for Double;
            *(v78 + 64) = &protocol witness table for Double;
            *(v78 + 32) = v80 / 1000.0;
          }

          else
          {
            v81 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_frequency;
            swift_beginAccess();
            v82 = *(v46 + v81);
            sub_10000368C(&unk_1000EEE80, &unk_1000B58C0);
            v83 = swift_allocObject();
            *(v83 + 16) = xmmword_1000B5700;
            if (v82 >= 0x64)
            {
              v84 = 0;
              v86 = 0xE000000000000000;
            }

            else
            {
              sub_10000368C(&qword_1000EC560, &unk_1000B5920);
              sub_100005870(&qword_1000EC568, &qword_1000EC560, &unk_1000B5920, &protocol conformance descriptor for Repeated<A>);
              v84 = String.init<A>(_:)();
              v86 = v85;
            }

            *(v83 + 56) = &type metadata for String;
            *(v83 + 64) = sub_10002BE6C();
            *(v83 + 32) = v84;
            *(v83 + 40) = v86;
            v87 = *(v46 + v81);
            *(v83 + 96) = &type metadata for UInt;
            *(v83 + 104) = &protocol witness table for UInt;
            *(v83 + 72) = v87;
          }

          if (v5 == String.init(format:_:)() && v67 == v88)
          {
            break;
          }

          v89 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v89 & 1) == 0)
          {
            goto LABEL_53;
          }

LABEL_80:
          if (!v155)
          {
            __break(1u);
LABEL_170:
            __break(1u);
LABEL_171:
            __break(1u);
            goto LABEL_172;
          }

          v90 = *v41;
          v44 = *(v41 + 1);
          *v41 = v44;
          *(v41 + 1) = v90;
          v41 -= 8;
          v45 = v156 + 1;
          if (v156 == -1)
          {
            goto LABEL_53;
          }
        }

LABEL_53:
        v43 = v154 + 1;
        v41 = v152 + 8;
        v42 = v151 - 1;
        if ((v154 + 1) != v149)
        {
          continue;
        }

        break;
      }

      v153 = v149;
      v10 = v144;
      v6 = v146;
      v7 = a3;
LABEL_85:
      if (v153 < v150)
      {
        goto LABEL_163;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_10002B814(0, *(v10 + 2) + 1, 1, v10);
        v10 = result;
      }

      v92 = *(v10 + 2);
      v91 = *(v10 + 3);
      v93 = v92 + 1;
      v94 = v150;
      if (v92 >= v91 >> 1)
      {
        result = sub_10002B814((v91 > 1), v92 + 1, 1, v10);
        v94 = v150;
        v10 = result;
      }

      *(v10 + 2) = v93;
      v95 = &v10[16 * v92];
      *(v95 + 4) = v94;
      *(v95 + 5) = v153;
      v5 = *v148;
      if (!*v148)
      {
        goto LABEL_173;
      }

      if (v92)
      {
        while (2)
        {
          v96 = v93 - 1;
          if (v93 >= 4)
          {
            v101 = &v10[16 * v93 + 32];
            v102 = *(v101 - 64);
            v103 = *(v101 - 56);
            v107 = __OFSUB__(v103, v102);
            v104 = v103 - v102;
            if (v107)
            {
              goto LABEL_150;
            }

            v106 = *(v101 - 48);
            v105 = *(v101 - 40);
            v107 = __OFSUB__(v105, v106);
            v99 = v105 - v106;
            v100 = v107;
            if (v107)
            {
              goto LABEL_151;
            }

            v108 = &v10[16 * v93];
            v110 = *v108;
            v109 = *(v108 + 1);
            v107 = __OFSUB__(v109, v110);
            v111 = v109 - v110;
            if (v107)
            {
              goto LABEL_153;
            }

            v107 = __OFADD__(v99, v111);
            v112 = v99 + v111;
            if (v107)
            {
              goto LABEL_156;
            }

            if (v112 >= v104)
            {
              v130 = &v10[16 * v96 + 32];
              v132 = *v130;
              v131 = *(v130 + 1);
              v107 = __OFSUB__(v131, v132);
              v133 = v131 - v132;
              if (v107)
              {
                goto LABEL_160;
              }

              if (v99 < v133)
              {
                v96 = v93 - 2;
              }
            }

            else
            {
LABEL_105:
              if (v100)
              {
                goto LABEL_152;
              }

              v113 = &v10[16 * v93];
              v115 = *v113;
              v114 = *(v113 + 1);
              v116 = __OFSUB__(v114, v115);
              v117 = v114 - v115;
              v118 = v116;
              if (v116)
              {
                goto LABEL_155;
              }

              v119 = &v10[16 * v96 + 32];
              v121 = *v119;
              v120 = *(v119 + 1);
              v107 = __OFSUB__(v120, v121);
              v122 = v120 - v121;
              if (v107)
              {
                goto LABEL_158;
              }

              if (__OFADD__(v117, v122))
              {
                goto LABEL_159;
              }

              if (v117 + v122 < v99)
              {
                goto LABEL_119;
              }

              if (v99 < v122)
              {
                v96 = v93 - 2;
              }
            }
          }

          else
          {
            if (v93 == 3)
            {
              v97 = *(v10 + 4);
              v98 = *(v10 + 5);
              v107 = __OFSUB__(v98, v97);
              v99 = v98 - v97;
              v100 = v107;
              goto LABEL_105;
            }

            v123 = &v10[16 * v93];
            v125 = *v123;
            v124 = *(v123 + 1);
            v107 = __OFSUB__(v124, v125);
            v117 = v124 - v125;
            v118 = v107;
LABEL_119:
            if (v118)
            {
              goto LABEL_154;
            }

            v126 = &v10[16 * v96];
            v128 = *(v126 + 4);
            v127 = *(v126 + 5);
            v107 = __OFSUB__(v127, v128);
            v129 = v127 - v128;
            if (v107)
            {
              goto LABEL_157;
            }

            if (v129 < v117)
            {
              break;
            }
          }

          v134 = v96 - 1;
          if (v96 - 1 >= v93)
          {
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
            goto LABEL_167;
          }

          if (!*v7)
          {
            goto LABEL_170;
          }

          v135 = *&v10[16 * v134 + 32];
          v136 = *&v10[16 * v96 + 40];
          sub_10002AF4C(&(*v7)[8 * v135], &(*v7)[8 * *&v10[16 * v96 + 32]], &(*v7)[8 * v136], v5);
          if (v6)
          {
          }

          if (v136 < v135)
          {
            goto LABEL_148;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_10002B800(v10);
          }

          if (v134 >= *(v10 + 2))
          {
            goto LABEL_149;
          }

          v137 = &v10[16 * v134];
          *(v137 + 4) = v135;
          *(v137 + 5) = v136;
          result = sub_10002B774(v96);
          v93 = *(v10 + 2);
          if (v93 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v8 = v7[1];
      v9 = v153;
      if (v153 >= v8)
      {
        goto LABEL_136;
      }
    }
  }

  v10 = _swiftEmptyArrayStorage;
LABEL_136:
  v5 = *v148;
  if (!*v148)
  {
    goto LABEL_174;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_168:
    result = sub_10002B800(v10);
    v10 = result;
  }

  v138 = *(v10 + 2);
  if (v138 < 2)
  {
  }

  while (*v7)
  {
    v139 = *&v10[16 * v138];
    v140 = *&v10[16 * v138 + 24];
    sub_10002AF4C(&(*v7)[8 * v139], &(*v7)[8 * *&v10[16 * v138 + 16]], &(*v7)[8 * v140], v5);
    if (v6)
    {
    }

    if (v140 < v139)
    {
      goto LABEL_161;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_10002B800(v10);
    }

    if (v138 - 2 >= *(v10 + 2))
    {
      goto LABEL_162;
    }

    v141 = &v10[16 * v138];
    *v141 = v139;
    *(v141 + 1) = v140;
    result = sub_10002B774(v138 - 1);
    v138 = *(v10 + 2);
    if (v138 <= 1)
    {
    }
  }

LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
  return result;
}

uint64_t sub_10002A190(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v112 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_147:
    v5 = *v112;
    if (!*v112)
    {
      goto LABEL_186;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_180:
      result = sub_10002B800(v9);
      v9 = result;
    }

    v131 = v9;
    v105 = *(v9 + 2);
    if (v105 >= 2)
    {
      while (*a3)
      {
        v106 = *&v9[16 * v105];
        v107 = *&v9[16 * v105 + 24];
        sub_10002B1E4((*a3 + 32 * v106), (*a3 + 32 * *&v9[16 * v105 + 16]), *a3 + 32 * v107, v5);
        if (v6)
        {
        }

        if (v107 < v106)
        {
          goto LABEL_173;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_10002B800(v9);
        }

        if (v105 - 2 >= *(v9 + 2))
        {
          goto LABEL_174;
        }

        v108 = &v9[16 * v105];
        *v108 = v106;
        *(v108 + 1) = v107;
        v131 = v9;
        result = sub_10002B774(v105 - 1);
        v9 = v131;
        v105 = *(v131 + 2);
        if (v105 <= 1)
        {
        }
      }

      goto LABEL_184;
    }
  }

  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8;
    if (v8 + 1 >= v7)
    {
      v7 = v8 + 1;
      goto LABEL_51;
    }

    v11 = *a3;
    v12 = *a3 + 32 * (v8 + 1);
    v5 = *v12;
    v13 = *(v12 + 8);
    v14 = *(v12 + 16);
    LOBYTE(v12) = *(v12 + 24);
    v129[0] = v5;
    v129[1] = v13;
    v129[2] = v14;
    v130 = v12;
    v15 = (v11 + 32 * v8);
    v17 = *v15;
    v16 = v15[1];
    v18 = v15[2];
    LOBYTE(v15) = *(v15 + 24);
    v127[0] = v17;
    v127[1] = v16;
    v127[2] = v18;
    v128 = v15;

    v125 = sub_100075C2C(v129, v127);
    if (v6)
    {
    }

    v19 = v10;
    v20 = v10 + 2;
    v110 = v19;
    v124 = 32 * v19;
    v21 = (v11 + 32 * v19 + 40);
    v116 = v9;
    v120 = v7;
    while (v7 != v20)
    {
      v23 = v21[5];
      v24 = v21[1];
      if (v23)
      {
        v25 = v21[4];
        if (v24)
        {
          v26 = *v21;
        }

        else
        {
          v26 = 0;
        }

        if (v24)
        {
          v27 = v21[1];
        }

        else
        {
          v27 = 0xE000000000000000;
        }

        v5 = 0xE100000000000000;
        if (v23 == 0xE100000000000000 && v25 == 35)
        {
          goto LABEL_7;
        }

        v5 = v21[5];
      }

      else
      {
        v25 = 0;
        if (v24)
        {
          v26 = *v21;
        }

        else
        {
          v26 = 0;
        }

        v5 = 0xE000000000000000;
        if (v24)
        {
          v27 = v21[1];
        }

        else
        {
          v27 = 0xE000000000000000;
        }
      }

      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        if (v26 == 35 && v27 == 0xE100000000000000)
        {
          v22 = 1;
          goto LABEL_8;
        }

        if (_stringCompareWithSmolCheck(_:_:expecting:)())
        {
          v22 = 1;
          goto LABEL_8;
        }

        if (v25 != v26 || v5 != v27)
        {
          v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
          goto LABEL_8;
        }
      }

LABEL_7:
      v22 = 0;
LABEL_8:
      swift_bridgeObjectRetain_n();

      ++v20;
      v21 += 4;
      v9 = v116;
      v6 = 0;
      v7 = v120;
      if ((v125 ^ v22))
      {
        v7 = v20 - 1;
        break;
      }
    }

    v10 = v110;
    v29 = v124;
    if ((v125 & 1) == 0)
    {
      goto LABEL_51;
    }

    if (v7 < v110)
    {
      goto LABEL_179;
    }

    if (v110 < v7)
    {
      v30 = 32 * v7 - 32;
      v31 = v7;
      v32 = v110;
      do
      {
        if (v32 != --v31)
        {
          v35 = *a3;
          if (!*a3)
          {
            goto LABEL_183;
          }

          v36 = (v35 + v29);
          v37 = (v35 + v30);
          v38 = *(v35 + v29);
          v39 = *(v35 + v29 + 8);
          v40 = *(v35 + v29 + 24);
          if (v29 != v30 || v36 >= v37 + 2)
          {
            v33 = v37[1];
            *v36 = *v37;
            v36[1] = v33;
          }

          v34 = v35 + v30;
          *v34 = v38;
          *(v34 + 8) = v39;
          *(v34 + 24) = v40;
        }

        ++v32;
        v30 -= 32;
        v29 += 32;
      }

      while (v32 < v31);
    }

LABEL_51:
    v41 = a3[1];
    if (v7 >= v41)
    {
      goto LABEL_60;
    }

    if (__OFSUB__(v7, v10))
    {
      goto LABEL_176;
    }

    if (v7 - v10 >= a4)
    {
LABEL_60:
      v5 = v7;
      if (v7 < v10)
      {
        goto LABEL_175;
      }

      goto LABEL_61;
    }

    if (__OFADD__(v10, a4))
    {
      goto LABEL_177;
    }

    if (v10 + a4 >= v41)
    {
      v5 = a3[1];
    }

    else
    {
      v5 = v10 + a4;
    }

    if (v5 < v10)
    {
LABEL_178:
      __break(1u);
LABEL_179:
      __break(1u);
      goto LABEL_180;
    }

    if (v7 == v5)
    {
      goto LABEL_60;
    }

    v117 = v9;
    v118 = v6;
    v123 = *a3;
    v88 = *a3 + 32 * v7 + 24;
    v111 = v10;
    v89 = v10 - v7;
    v113 = v5;
LABEL_113:
    v121 = v7;
    v114 = v89;
    v115 = v88;
    v90 = v88;
LABEL_114:
    v91 = (v90 - 24);
    v92 = *(v90 - 8);
    v93 = *(v90 - 40);
    if (!v92)
    {
      break;
    }

    v94 = *(v90 - 16);
    if (v93)
    {
      v95 = *(v90 - 48);
    }

    else
    {
      v95 = 0;
    }

    v96 = 0xE000000000000000;
    if (v93)
    {
      v96 = *(v90 - 40);
    }

    v126 = v96;
    if (v92 != 0xE100000000000000 || v94 != 35)
    {
      v97 = *(v90 - 8);
      goto LABEL_130;
    }

LABEL_111:
    swift_bridgeObjectRetain_n();

LABEL_112:
    v7 = v121 + 1;
    v88 = v115 + 32;
    v89 = v114 - 1;
    v5 = v113;
    if (v121 + 1 != v113)
    {
      goto LABEL_113;
    }

    v9 = v117;
    v6 = v118;
    v10 = v111;
    if (v113 < v111)
    {
      goto LABEL_175;
    }

LABEL_61:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10002B814(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v43 = *(v9 + 2);
    v42 = *(v9 + 3);
    v44 = v43 + 1;
    if (v43 >= v42 >> 1)
    {
      result = sub_10002B814((v42 > 1), v43 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v44;
    v45 = &v9[16 * v43];
    *(v45 + 4) = v10;
    *(v45 + 5) = v5;
    v46 = *v112;
    if (!*v112)
    {
      goto LABEL_185;
    }

    v8 = v5;
    if (v43)
    {
      while (2)
      {
        v47 = v44 - 1;
        if (v44 >= 4)
        {
          v52 = &v9[16 * v44 + 32];
          v53 = *(v52 - 64);
          v54 = *(v52 - 56);
          v58 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          if (v58)
          {
            goto LABEL_162;
          }

          v57 = *(v52 - 48);
          v56 = *(v52 - 40);
          v58 = __OFSUB__(v56, v57);
          v50 = v56 - v57;
          v51 = v58;
          if (v58)
          {
            goto LABEL_163;
          }

          v59 = &v9[16 * v44];
          v61 = *v59;
          v60 = *(v59 + 1);
          v58 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v58)
          {
            goto LABEL_165;
          }

          v58 = __OFADD__(v50, v62);
          v63 = v50 + v62;
          if (v58)
          {
            goto LABEL_168;
          }

          if (v63 >= v55)
          {
            v81 = &v9[16 * v47 + 32];
            v83 = *v81;
            v82 = *(v81 + 1);
            v58 = __OFSUB__(v82, v83);
            v84 = v82 - v83;
            if (v58)
            {
              goto LABEL_172;
            }

            if (v50 < v84)
            {
              v47 = v44 - 2;
            }
          }

          else
          {
LABEL_80:
            if (v51)
            {
              goto LABEL_164;
            }

            v64 = &v9[16 * v44];
            v66 = *v64;
            v65 = *(v64 + 1);
            v67 = __OFSUB__(v65, v66);
            v68 = v65 - v66;
            v69 = v67;
            if (v67)
            {
              goto LABEL_167;
            }

            v70 = &v9[16 * v47 + 32];
            v72 = *v70;
            v71 = *(v70 + 1);
            v58 = __OFSUB__(v71, v72);
            v73 = v71 - v72;
            if (v58)
            {
              goto LABEL_170;
            }

            if (__OFADD__(v68, v73))
            {
              goto LABEL_171;
            }

            if (v68 + v73 < v50)
            {
              goto LABEL_94;
            }

            if (v50 < v73)
            {
              v47 = v44 - 2;
            }
          }
        }

        else
        {
          if (v44 == 3)
          {
            v48 = *(v9 + 4);
            v49 = *(v9 + 5);
            v58 = __OFSUB__(v49, v48);
            v50 = v49 - v48;
            v51 = v58;
            goto LABEL_80;
          }

          v74 = &v9[16 * v44];
          v76 = *v74;
          v75 = *(v74 + 1);
          v58 = __OFSUB__(v75, v76);
          v68 = v75 - v76;
          v69 = v58;
LABEL_94:
          if (v69)
          {
            goto LABEL_166;
          }

          v77 = &v9[16 * v47];
          v79 = *(v77 + 4);
          v78 = *(v77 + 5);
          v58 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v58)
          {
            goto LABEL_169;
          }

          if (v80 < v68)
          {
            break;
          }
        }

        v85 = v47 - 1;
        if (v47 - 1 >= v44)
        {
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
LABEL_173:
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
          goto LABEL_178;
        }

        if (!*a3)
        {
          goto LABEL_182;
        }

        v86 = *&v9[16 * v85 + 32];
        v5 = *&v9[16 * v47 + 40];
        sub_10002B1E4((*a3 + 32 * v86), (*a3 + 32 * *&v9[16 * v47 + 32]), *a3 + 32 * v5, v46);
        if (v6)
        {
        }

        if (v5 < v86)
        {
          goto LABEL_160;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_10002B800(v9);
        }

        if (v85 >= *(v9 + 2))
        {
          goto LABEL_161;
        }

        v87 = &v9[16 * v85];
        *(v87 + 4) = v86;
        *(v87 + 5) = v5;
        v131 = v9;
        result = sub_10002B774(v47);
        v9 = v131;
        v44 = *(v131 + 2);
        if (v44 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v7 = a3[1];
    if (v8 >= v7)
    {
      goto LABEL_147;
    }
  }

  v94 = 0;
  if (v93)
  {
    v95 = *(v90 - 48);
  }

  else
  {
    v95 = 0;
  }

  v97 = 0xE000000000000000;
  if (v93)
  {
    v98 = *(v90 - 40);
  }

  else
  {
    v98 = 0xE000000000000000;
  }

  v126 = v98;
LABEL_130:
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    goto LABEL_111;
  }

  v99 = v95 == 35 && v126 == 0xE100000000000000;
  if (v99 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    swift_bridgeObjectRetain_n();
  }

  else
  {
    if (v94 == v95 && v97 == v126)
    {
      goto LABEL_111;
    }

    v122 = _stringCompareWithSmolCheck(_:_:expecting:)();
    swift_bridgeObjectRetain_n();

    if ((v122 & 1) == 0)
    {
      goto LABEL_112;
    }
  }

  if (v123)
  {
    v101 = *(v90 - 56);
    v100 = *(v90 - 40);
    *(v90 - 32) = *v90;
    v90 -= 32;
    v102 = *(v90 + 8);
    v103 = *(v90 + 16);
    *v91 = v101;
    v91[1] = v100;
    *(v90 - 24) = v102;
    *(v90 - 16) = v103;
    if (__CFADD__(v89++, 1))
    {
      goto LABEL_112;
    }

    goto LABEL_114;
  }

  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
  return result;
}

uint64_t sub_10002AB80(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a3;
  v5 = __dst;
  v6 = __src - __dst;
  v7 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v7 = __src - __dst;
  }

  v8 = v7 >> 3;
  v9 = a3 - __src;
  v10 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v10 = a3 - __src;
  }

  v11 = v10 >> 3;
  if (v8 < v10 >> 3)
  {
    v12 = __src;
    v13 = a4;
    if (a4 != __dst || &__dst[8 * v8] <= a4)
    {
      memmove(a4, __dst, 8 * v8);
    }

    v45 = &v13[8 * v8];
    if (v6 < 8)
    {
LABEL_10:
      v14 = v5;
      goto LABEL_36;
    }

    while (1)
    {
      if (v12 >= v4)
      {
        goto LABEL_10;
      }

      v43 = v5;
      v18 = *v12;
      v19 = *v13;
      v20 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
      swift_beginAccess();
      v21 = *(v18 + v20);
      v22 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
      swift_beginAccess();
      v23 = *(v19 + v22);
      swift_beginAccess();

      v24 = v21;
      v25 = v23;
      LOBYTE(v22) = CAFMediaItem.isOrderedAscending(preferringFrequency:to:in:)();

      if (v22)
      {
        break;
      }

      v15 = v13;
      v16 = v43;
      v17 = v43 == v13;
      v13 += 8;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v5 = v16 + 8;
      if (v13 >= v45)
      {
        goto LABEL_10;
      }
    }

    v15 = v12;
    v16 = v43;
    v17 = v43 == v12;
    v12 += 8;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v16 = *v15;
    goto LABEL_13;
  }

  v14 = __src;
  if (a4 != __src || &__src[8 * v11] <= a4)
  {
    v26 = a4;
    memmove(a4, __src, 8 * v11);
    a4 = v26;
  }

  v45 = &a4[8 * v11];
  v13 = a4;
  if (v9 >= 8 && v14 > v5)
  {
    v42 = a4;
    v44 = v5;
LABEL_25:
    v41 = v14;
    v27 = v14 - 8;
    v4 -= 8;
    v28 = v45;
    do
    {
      v29 = v4 + 8;
      v30 = *(v28 - 1);
      v28 -= 8;
      v31 = v27;
      v32 = *v27;
      v33 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
      swift_beginAccess();
      v34 = *(v30 + v33);
      v35 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
      swift_beginAccess();
      v36 = *(v32 + v35);
      swift_beginAccess();

      v37 = v34;
      v38 = v36;
      LOBYTE(v35) = CAFMediaItem.isOrderedAscending(preferringFrequency:to:in:)();

      if (v35)
      {
        v39 = v31;
        if (v29 != v41)
        {
          *v4 = *v31;
        }

        v13 = v42;
        if (v45 <= v42 || (v14 = v39, v39 <= v44))
        {
          v14 = v39;
          goto LABEL_36;
        }

        goto LABEL_25;
      }

      if (v29 != v45)
      {
        *v4 = *v28;
      }

      v4 -= 8;
      v45 = v28;
      v27 = v31;
    }

    while (v28 > v42);
    v45 = v28;
    v13 = v42;
    v14 = v41;
  }

LABEL_36:
  if (v14 != v13 || v14 >= &v13[(v45 - v13 + (v45 - v13 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v14, v13, 8 * ((v45 - v13) / 8));
  }

  return 1;
}

uint64_t sub_10002AF4C(char *__src, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 < v11 >> 3)
  {
    v13 = a2;
    if (a4 != __src || &__src[8 * v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
    }

    v14 = &v4[v9];
    if (v7 < 8)
    {
LABEL_10:
      v15 = v6;
      goto LABEL_36;
    }

    while (1)
    {
      if (v13 >= v5)
      {
        goto LABEL_10;
      }

      v18 = *v13;
      v19 = *v4;

      v20 = sub_100043648(v18, v19);

      if (v20)
      {
        break;
      }

      v16 = v4;
      v17 = v6 == v4++;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v6 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v13;
    v17 = v6 == v13++;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v6 = *v16;
    goto LABEL_13;
  }

  if (a4 != a2 || &a2[8 * v12] <= a4)
  {
    v21 = a2;
    memmove(a4, a2, 8 * v12);
    a2 = v21;
  }

  v15 = a2;
  v14 = &v4[v12];
  if (v10 >= 8 && a2 > v6)
  {
    v32 = v4;
LABEL_25:
    v31 = v15;
    v22 = (v15 - 8);
    v5 -= 8;
    v23 = v14;
    do
    {
      v24 = v5 + 8;
      v25 = *--v23;
      v26 = v22;
      v27 = *v22;

      v28 = sub_100043648(v25, v27);

      if (v28)
      {
        v29 = v26;
        if (v24 != v31)
        {
          *v5 = *v26;
        }

        v4 = v32;
        if (v14 <= v32 || (v15 = v29, v29 <= v6))
        {
          v15 = v29;
          goto LABEL_36;
        }

        goto LABEL_25;
      }

      if (v24 != v14)
      {
        *v5 = *v23;
      }

      v5 -= 8;
      v14 = v23;
      v22 = v26;
    }

    while (v23 > v32);
    v14 = v23;
    v15 = v31;
    v4 = v32;
  }

LABEL_36:
  if (v15 != v4 || v15 >= v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8))
  {
    memmove(v15, v4, 8 * (v14 - v4));
  }

  return 1;
}

uint64_t sub_10002B1E4(char *__src, unint64_t *__dst, unint64_t a3, unint64_t *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst - __src;
  v8 = __dst - __src + 31;
  if (__dst - __src >= 0)
  {
    v8 = __dst - __src;
  }

  v9 = v8 >> 5;
  v10 = a3 - __dst;
  v11 = a3 - __dst + 31;
  if ((a3 - __dst) >= 0)
  {
    v11 = a3 - __dst;
  }

  v12 = v11 >> 5;
  if (v9 < v12)
  {
    v13 = 32 * v9;
    if (a4 != __src || &__src[v13] <= a4)
    {
      v14 = __dst;
      memmove(a4, __src, v13);
      __dst = v14;
    }

    v53 = &v4[v13 / 8];
    if (v7 < 32 || __dst >= v5)
    {
LABEL_93:
      __dst = v6;
      goto LABEL_95;
    }

    v49 = v5;
    while (1)
    {
      v47 = v6;
      v15 = __dst[2];
      v16 = v4[1];
      v51 = v4;
      v17 = v4[2];
      if (v15)
      {
        v18 = __dst[1];
        if (v17)
        {
          v19 = v16;
        }

        else
        {
          v19 = 0;
        }

        if (v17)
        {
          v20 = v17;
        }

        else
        {
          v20 = 0xE000000000000000;
        }

        if (v15 == 0xE100000000000000 && v18 == 35)
        {
          v21 = __dst;
LABEL_30:
          swift_bridgeObjectRetain_n();

          v4 = v51;
LABEL_31:
          v23 = v4;
          v24 = v47;
          v27 = v47 == v4;
          v4 += 4;
          __dst = v21;
          v25 = v49;
          if (v27)
          {
            goto LABEL_33;
          }

LABEL_32:
          v26 = *(v23 + 1);
          *v24 = *v23;
          *(v24 + 1) = v26;
          goto LABEL_33;
        }

        v21 = __dst;
        v22 = __dst[2];
      }

      else
      {
        v21 = __dst;
        v18 = 0;
        if (v17)
        {
          v19 = v16;
        }

        else
        {
          v19 = 0;
        }

        v22 = 0xE000000000000000;
        if (v17)
        {
          v20 = v17;
        }

        else
        {
          v20 = 0xE000000000000000;
        }
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        goto LABEL_30;
      }

      v27 = v19 == 35 && v20 == 0xE100000000000000;
      if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        swift_bridgeObjectRetain_n();

        v4 = v51;
      }

      else
      {
        if (v18 == v19 && v22 == v20)
        {
          goto LABEL_30;
        }

        v28 = _stringCompareWithSmolCheck(_:_:expecting:)();
        swift_bridgeObjectRetain_n();

        v4 = v51;
        if ((v28 & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      v23 = v21;
      __dst = v21 + 4;
      v24 = v47;
      v27 = v47 == v21;
      v25 = v49;
      if (!v27)
      {
        goto LABEL_32;
      }

LABEL_33:
      v6 = v24 + 4;
      if (v4 >= v53 || __dst >= v25)
      {
        goto LABEL_93;
      }
    }
  }

  v29 = 4 * v12;
  if (a4 != __dst || &__dst[v29] <= a4)
  {
    v30 = __dst;
    memmove(a4, __dst, 32 * v12);
    __dst = v30;
  }

  v53 = &v4[v29];
  if (v10 < 32 || __dst <= v6)
  {
    goto LABEL_95;
  }

  v52 = v4;
  v48 = v6;
  while (2)
  {
    v45 = __dst - 4;
    v31 = (v5 - 32);
    v32 = v53;
    v46 = __dst;
    while (1)
    {
      v50 = v31;
      v32 -= 4;
      v33 = v32[2];
      v34 = *(__dst - 2);
      if (v33)
      {
        v35 = *(v53 - 3);
        if (v34)
        {
          v36 = *(__dst - 3);
        }

        else
        {
          v36 = 0;
        }

        if (v34)
        {
          v37 = *(__dst - 2);
        }

        else
        {
          v37 = 0xE000000000000000;
        }

        if (v33 == 0xE100000000000000 && v35 == 35)
        {
LABEL_74:
          v39 = 0;
          goto LABEL_75;
        }

        v38 = v32[2];
      }

      else
      {
        v35 = 0;
        v36 = v34 ? *(__dst - 3) : 0;
        v38 = 0xE000000000000000;
        v37 = v34 ? *(__dst - 2) : 0xE000000000000000;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        goto LABEL_74;
      }

      if (v36 == 35 && v37 == 0xE100000000000000)
      {
        v39 = 1;
      }

      else if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        v39 = 1;
      }

      else
      {
        if (v35 == v36 && v38 == v37)
        {
          goto LABEL_74;
        }

        v39 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

LABEL_75:
      swift_bridgeObjectRetain_n();

      if (v39)
      {
        break;
      }

      v4 = v52;
      __dst = v46;
      if (v50 + 2 != v53)
      {
        v40 = *(v32 + 1);
        *v50 = *v32;
        v50[1] = v40;
      }

      v31 = v50 - 2;
      v53 = v32;
      if (v32 <= v52)
      {
        v53 = v32;
        goto LABEL_95;
      }
    }

    v5 = v50;
    v4 = v52;
    if (v50 + 2 != v46)
    {
      v42 = *(v45 + 1);
      *v50 = *v45;
      v50[1] = v42;
    }

    if (v53 <= v52)
    {
      __dst = v45;
    }

    else
    {
      __dst = v45;
      if (v45 > v48)
      {
        continue;
      }

      __dst = v45;
    }

    break;
  }

LABEL_95:
  v43 = (v53 - v4 + (v53 - v4 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0;
  if (__dst != v4 || __dst >= (v4 + v43))
  {
    memmove(__dst, v4, v43);
  }

  return 1;
}

uint64_t sub_10002B774(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10002B800(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_10002B814(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000368C(&unk_1000EEF20, &qword_1000B5918);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

unint64_t sub_10002B918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10002B9D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12)
      {
        if (a2)
        {
          v13 = *v11 == a1 && v12 == a2;
          if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            return v6;
          }
        }
      }

      else if (!a2)
      {
        return v6;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_10002BA9C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10002EF68(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10002EFC4(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10002BB64(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

void *sub_10002BC68(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_1000274CC(v3, 0);
  sub_1000A37C0((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t *sub_10002BD38(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
LABEL_15:
    a3 = 0;
LABEL_16:
    v8 = a4;
LABEL_19:
    *result = a4;
    result[1] = a5;
    result[2] = v8;
    return a3;
  }

  if (!a3)
  {
    goto LABEL_16;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    if (a5 <= a4)
    {
      v6 = a4;
    }

    else
    {
      v6 = a5;
    }

    v7 = a4 - v6;
    while (1)
    {
      if (!(a4 - a5 + v5))
      {
        v8 = a5;
        a3 = a5 - a4;
        goto LABEL_19;
      }

      if (a5 < a4)
      {
        break;
      }

      if (!(v7 + v5))
      {
        goto LABEL_21;
      }

      *(a2 + 8 * v5) = a4 + v5;
      if (a3 - 1 == v5)
      {
        v8 = a4 + v5 + 1;
        goto LABEL_19;
      }

      if (__OFADD__(++v5, 1))
      {
        __break(1u);
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10002BDE4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002BE1C()
{

  return _swift_deallocObject(v0, 41, 7);
}

unint64_t sub_10002BE6C()
{
  result = qword_1000EC550;
  if (!qword_1000EC550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EC550);
  }

  return result;
}

void *sub_10002BEC0(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = a1;
  if (a1 >> 62)
  {
LABEL_27:
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      v28 = v3 & 0xFFFFFFFFFFFFFF8;
      v29 = v3 & 0xC000000000000001;
      v27 = v4;
      do
      {
        if (v29)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v8 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_23;
          }
        }

        else
        {
          if (v5 >= *(v28 + 16))
          {
            goto LABEL_24;
          }

          v7 = *(v3 + 8 * v5 + 32);

          v8 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_23:
            __break(1u);
LABEL_24:
            __break(1u);
LABEL_25:
            __break(1u);
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }
        }

        v9 = a2(v7);
        if (v2)
        {

          return _swiftEmptyDictionarySingleton;
        }

        v11 = v9;
        v12 = v10;
        v13 = v3;
        v15 = sub_100027650(v9, v10);
        v16 = _swiftEmptyDictionarySingleton[2];
        v17 = (v14 & 1) == 0;
        v18 = v16 + v17;
        if (__OFADD__(v16, v17))
        {
          goto LABEL_25;
        }

        v3 = v14;
        if (_swiftEmptyDictionarySingleton[3] < v18)
        {
          sub_1000277BC(v18, 1);
          v19 = sub_100027650(v11, v12);
          if ((v3 & 1) != (v20 & 1))
          {
            sub_10000368C(&unk_1000EC2C8, &qword_1000B5750);
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

          v15 = v19;
        }

        if (v3)
        {

          v6 = (_swiftEmptyDictionarySingleton[7] + 8 * v15);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }

        else
        {
          sub_10000368C(&unk_1000EC820, &qword_1000B5090);
          v21 = swift_allocObject();
          *(v21 + 16) = xmmword_1000B4FC0;
          *(v21 + 32) = v7;
          _swiftEmptyDictionarySingleton[(v15 >> 6) + 8] |= 1 << v15;
          v22 = (_swiftEmptyDictionarySingleton[6] + 16 * v15);
          *v22 = v11;
          v22[1] = v12;
          *(_swiftEmptyDictionarySingleton[7] + 8 * v15) = v21;
          v23 = _swiftEmptyDictionarySingleton[2];
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (v24)
          {
            goto LABEL_26;
          }

          _swiftEmptyDictionarySingleton[2] = v25;
        }

        v3 = v13;
        ++v5;
        v2 = 0;
      }

      while (v8 != v27);
    }
  }

  return _swiftEmptyDictionarySingleton;
}