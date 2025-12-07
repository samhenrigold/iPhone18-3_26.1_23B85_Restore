void sub_1002021D0()
{
  v1 = v0;
  v2 = sub_10007EBC0(&qword_1006B07D0, qword_100552820);
  __chkstk_darwin(v2 - 8);
  v28 = &v27 - v3;
  v4 = sub_10007EBC0(&unk_1006BBCE0, &unk_1005534C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v27 - v5;
  v7 = type metadata accessor for FMIPDevice();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v27 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100005B14(v10, qword_1006D4630);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "FMDeviceDetailContentViewController: Lost mode button toggled", v13, 2u);
  }

  v14 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator;
  v15 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource;
  v16 = (*&v1[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource] + OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel);
  swift_beginAccess();
  v18 = *v16;
  v17 = v16[1];

  sub_1000E512C(v18, v17, v6);

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_100012DF0(v6, &unk_1006BBCE0, &unk_1005534C0);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "FMDeviceDetailContentViewController: cannot enable lost mode on unknown device", v21, 2u);
    }
  }

  else
  {
    v22 = v27;
    (*(v8 + 32))(v27, v6, v7);
    v23 = *&v1[v15] + OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel;
    swift_beginAccess();
    v24 = type metadata accessor for FMDeviceDetailViewModel(0);
    v25 = v28;
    sub_100007204(v23 + *(v24 + 36), v28, &qword_1006B07D0, qword_100552820);
    v26 = *&v1[v14];

    sub_1000E11B0(v22, v25, v26, v1);

    sub_100012DF0(v25, &qword_1006B07D0, qword_100552820);
    (*(v8 + 8))(v22, v7);
  }
}

void sub_100202644()
{
  v1 = v0;
  v2 = sub_10007EBC0(&unk_1006BBCE0, &unk_1005534C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - v3;
  v5 = type metadata accessor for FMIPDevice();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v26 = &v26 - v10;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100005B14(v11, qword_1006D4630);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "FMDeviceDetailContentViewController: Lock button toggled", v14, 2u);
  }

  v15 = (*&v1[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource] + OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel);
  swift_beginAccess();
  v17 = *v15;
  v16 = v15[1];

  sub_1000E512C(v17, v16, v4);

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100012DF0(v4, &unk_1006BBCE0, &unk_1005534C0);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "FMDeviceDetailContentViewController: cannot lock unknown device", v20, 2u);
    }
  }

  else
  {
    v21 = v26;
    (*(v6 + 32))(v26, v4, v5);
    type metadata accessor for FMDeviceLockViewController(0);
    (*(v6 + 16))(v8, v21, v5);
    v22 = swift_retain_n();
    v23 = sub_10018E900(v22, v8);
    objc_allocWithZone(type metadata accessor for FMActivityIndicatingNavigationController());
    v24 = v23;
    v25 = sub_1000CC510(v24, 2);
    [v1 presentViewController:v25 animated:1 completion:0];

    (*(v6 + 8))(v21, v5);
  }
}

void sub_100202A78()
{
  v1 = v0;
  v2 = sub_10007EBC0(&unk_1006BBCE0, &unk_1005534C0);
  __chkstk_darwin(v2 - 8);
  v4 = &countAndFlagsBits - v3;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100005B14(v5, qword_1006D4630);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "FMDeviceDetailContentViewController: Showing sound pending learn more", v8, 2u);
  }

  v9 = objc_opt_self();
  v10 = [v9 mainBundle];
  v41._object = 0x8000000100586D90;
  v11._object = 0x8000000100586D60;
  v41._countAndFlagsBits = 0xD000000000000032;
  v11._countAndFlagsBits = 0xD000000000000020;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v41)._countAndFlagsBits;

  v13 = *(*&v1[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource] + 40);
  v14 = *v13;
  v39 = v1;
  v15 = *(v14 + class metadata base offset for ManagedBuffer + 16);
  v16 = (*(v14 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock(&v13[v16]);
  v17 = type metadata accessor for FMIPDevice();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v4, &v13[v15], v17);
  os_unfair_lock_unlock(&v13[v16]);

  (*(v18 + 56))(v4, 0, 1, v17);
  v19 = sub_10022F104(0xD000000000000022, 0x8000000100586DD0, v4);
  v21 = v20;
  v23 = v22;
  v25 = v24;

  sub_10022E0A8(v19, v21, v23, v25, 0, 0);

  swift_bridgeObjectRelease_n();
  sub_100012DF0(v4, &unk_1006BBCE0, &unk_1005534C0);
  v26 = [v9 mainBundle];
  v42._object = 0x8000000100579B60;
  v27._countAndFlagsBits = 0x4F545455425F4B4FLL;
  v27._object = 0xEF454C5449545F4ELL;
  v42._countAndFlagsBits = 0xD000000000000021;
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v27, 0, v26, v28, v42);

  v29 = String._bridgeToObjectiveC()();

  v30 = String._bridgeToObjectiveC()();

  v31 = [objc_opt_self() alertControllerWithTitle:v29 message:v30 preferredStyle:1];

  v32 = swift_allocObject();
  v33 = v39;
  *(v32 + 16) = v39;
  v34 = v33;
  v35 = String._bridgeToObjectiveC()();

  aBlock[4] = State.rawValue.getter;
  aBlock[5] = v32;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100017328;
  aBlock[3] = &unk_10062DBD8;
  v36 = _Block_copy(aBlock);

  v37 = [objc_opt_self() actionWithTitle:v35 style:0 handler:v36];
  _Block_release(v36);

  [v31 addAction:v37];
  [v34 presentViewController:v31 animated:1 completion:0];
}

void sub_100203020()
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100005B14(v0, qword_1006D4630);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "FMDeviceDetailContentViewController: Showing mismatch learn more", v3, 2u);
  }

  v4 = objc_opt_self();
  v5 = [v4 mainBundle];
  v37._object = 0x80000001005865D0;
  v6._countAndFlagsBits = 0xD000000000000016;
  v6._object = 0x80000001005865B0;
  v37._countAndFlagsBits = 0xD000000000000028;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v37);

  v8 = [v4 mainBundle];
  v38._object = 0x8000000100582060;
  v9._countAndFlagsBits = 0xD00000000000001ELL;
  v9._object = 0x8000000100586D10;
  v10.value._object = 0x8000000100582040;
  v38._countAndFlagsBits = 0xD000000000000015;
  v10.value._countAndFlagsBits = 0xD000000000000010;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, v38);

  v12 = [v4 mainBundle];
  v39._object = 0x8000000100579B60;
  v13._countAndFlagsBits = 0x4F545455425F4B4FLL;
  v13._object = 0xEF454C5449545F4ELL;
  v39._countAndFlagsBits = 0xD000000000000021;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v13, 0, v12, v14, v39);

  v15 = [v4 mainBundle];
  v40._object = 0x800000010057B940;
  v16._countAndFlagsBits = 0xD000000000000017;
  v16._object = 0x800000010057B920;
  v40._countAndFlagsBits = 0xD000000000000029;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v15, v17, v40);

  v18 = String._bridgeToObjectiveC()();

  v19 = String._bridgeToObjectiveC()();

  v20 = [objc_opt_self() alertControllerWithTitle:v18 message:v19 preferredStyle:1];

  v21 = swift_allocObject();
  *(v21 + 16) = v29;
  v30 = v29;
  v22 = String._bridgeToObjectiveC()();

  v35 = State.rawValue.getter;
  v36 = v21;
  aBlock = _NSConcreteStackBlock;
  v32 = 1107296256;
  v33 = sub_100017328;
  v34 = &unk_10062DB60;
  v23 = _Block_copy(&aBlock);

  v24 = objc_opt_self();
  v25 = [v24 actionWithTitle:v22 style:1 handler:v23];
  _Block_release(v23);

  [v20 addAction:v25];
  v26 = String._bridgeToObjectiveC()();

  v35 = sub_100203540;
  v36 = 0;
  aBlock = _NSConcreteStackBlock;
  v32 = 1107296256;
  v33 = sub_100017328;
  v34 = &unk_10062DB88;
  v27 = _Block_copy(&aBlock);

  v28 = [v24 actionWithTitle:v26 style:0 handler:v27];
  _Block_release(v27);

  [v20 addAction:v28];
  [v30 presentViewController:v20 animated:1 completion:0];
}

uint64_t sub_100203540()
{
  v0 = sub_10007EBC0(&unk_1006B0120, &qword_100552B60);
  __chkstk_darwin(v0 - 8);
  v2 = &v13 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  result = (*(v4 + 48))(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    v8 = [objc_opt_self() sharedApplication];
    URL._bridgeToObjectiveC()(v9);
    v11 = v10;
    sub_10015391C(_swiftEmptyArrayStorage);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_10021E650(&qword_1006AF360, type metadata accessor for OpenExternalURLOptionsKey, &unk_100551F4C);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v8 openURL:v11 options:isa completionHandler:0];

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

void sub_1002037D8()
{
  v1 = v0;
  v2 = sub_10007EBC0(&unk_1006BBCE0, &unk_1005534C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v5 = type metadata accessor for FMIPDevice();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator;
  v10 = (*&v0[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource] + OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel);
  swift_beginAccess();
  v12 = *v10;
  v11 = v10[1];

  sub_1000E512C(v12, v11, v4);

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100012DF0(v4, &unk_1006BBCE0, &unk_1005534C0);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100005B14(v13, qword_1006D4630);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "FMDeviceDetailContentViewController: erase unknown device", v16, 2u);
    }
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v17 = *&v0[v9];

    sub_1000E1BC0(v8, v17, v1);

    (*(v6 + 8))(v8, v5);
  }
}

void sub_100203B10()
{
  v1 = sub_10007EBC0(&unk_1006BBCE0, &unk_1005534C0);
  __chkstk_darwin(v1 - 8);
  v3 = &v16 - v2;
  v4 = type metadata accessor for FMIPDevice();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (*&v0[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource] + OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel);
  swift_beginAccess();
  v10 = *v8;
  v9 = v8[1];

  sub_1000E512C(v10, v9, v3);

  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_100012DF0(v3, &unk_1006BBCE0, &unk_1005534C0);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100005B14(v11, qword_1006D4630);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "FMDeviceDetailContentViewController: cancel erase unknown device", v14, 2u);
    }
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    DeviceManagementSectionViewModel.isCancelling.setter();
    v15 = swift_allocObject();
    *(v15 + 16) = v0;

    sub_1000DD274(v7, v0, sub_10021F04C, v15);

    (*(v5 + 8))(v7, v4);
  }
}

double sub_100203E40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DeviceManagementSectionViewModel.isCancelling.setter();
  if (a2)
  {

    sub_1004E2A54(a2);
  }

  return result;
}

void sub_100203F0C()
{
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v17._object = 0x800000010057FC90;
  v3._countAndFlagsBits = 0xD000000000000023;
  v3._object = 0x800000010057FC60;
  v17._countAndFlagsBits = 0xD000000000000035;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v17);

  v5 = [v1 mainBundle];
  v18._object = 0x8000000100586CD0;
  v6._countAndFlagsBits = 0xD000000000000029;
  v6._object = 0x8000000100586CA0;
  v18._countAndFlagsBits = 0xD00000000000003BLL;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v18);

  v8 = [v1 mainBundle];
  v19._object = 0x8000000100579B60;
  v9._countAndFlagsBits = 0x4F545455425F4B4FLL;
  v9._object = 0xEF454C5449545F4ELL;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v19._countAndFlagsBits = 0xD000000000000021;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v19);

  v11 = String._bridgeToObjectiveC()();

  v12 = [objc_opt_self() actionWithTitle:v11 style:0 handler:0];

  v13 = String._bridgeToObjectiveC()();

  v14 = String._bridgeToObjectiveC()();

  v15 = [objc_opt_self() alertControllerWithTitle:v13 message:v14 preferredStyle:1];

  [v15 addAction:v12];
  [v0 presentViewController:v15 animated:1 completion:0];
}

void sub_1002041FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v55 = a4;
  v5 = type metadata accessor for FMIPNotifyItemActionType();
  v49 = *(v5 - 8);
  v50 = v5;
  __chkstk_darwin(v5);
  v51 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10007EBC0(&qword_1006B07D0, qword_100552820);
  __chkstk_darwin(v7 - 8);
  v53 = &v44 - v8;
  v9 = type metadata accessor for FMIPItem();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v48 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v52 = &v44 - v13;
  v14 = type metadata accessor for FMIPAnalyticsActionType();
  v54 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FMIPDevice();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    v47 = v10;
    *(Strong + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_isNotifyWhenFoundOnOverride) = a3 & 1;
    [*(Strong + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_notificationsView) setUserInteractionEnabled:0];
    v46 = a3;
    if (a3)
    {
      v23 = *(*&v22[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource] + 40);
      v24 = *v23;
      v45 = v9;
      v25 = *(v24 + class metadata base offset for ManagedBuffer + 16);
      v26 = (*(v24 + 48) + 3) & 0x1FFFFFFFCLL;

      os_unfair_lock_lock((v23 + v26));
      v27 = v23 + v25;
      v9 = v45;
      (*(v18 + 16))(v20, v27, v17);
      os_unfair_lock_unlock((v23 + v26));

      v28 = v54;
      (*(v54 + 104))(v16, enum case for FMIPAnalyticsActionType.enableNotifyWhenFound(_:), v14);
      v29 = sub_10020D6E8(v20, v16);
      (*(v28 + 8))(v16, v14, v29);
      (*(v18 + 8))(v20, v17);
    }

    v30 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource;
    v31 = *&v22[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource] + OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel;
    swift_beginAccess();
    v32 = v55;
    if (*(v31 + 40) == 1 && (FMIPDevice.shouldDisplaySeparatedLocation.getter() & 1) != 0)
    {
      v33 = *&v22[v30] + OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel;
      swift_beginAccess();
      v34 = type metadata accessor for FMDeviceDetailViewModel(0);
      v35 = v53;
      sub_100007204(v33 + *(v34 + 36), v53, &qword_1006B07D0, qword_100552820);
      v36 = v47;
      if ((*(v47 + 48))(v35, 1, v9) != 1)
      {
        v39 = v52;
        (*(v36 + 32))(v52, v35, v9);
        (*(v36 + 16))(v48, v39, v9);
        (*(v49 + 104))(v51, enum case for FMIPNotifyItemActionType.whenFound(_:), v50);
        type metadata accessor for FMIPNotifyItemAction();
        swift_allocObject();
        v40 = v36;
        v41 = FMIPNotifyItemAction.init(item:type:state:)();
        v42 = swift_allocObject();
        *(v42 + 16) = v22;

        v43 = v22;
        sub_1000D6A90(v41, sub_10021E6C8, v42);

        (*(v40 + 8))(v39, v9);
        return;
      }

      sub_100012DF0(v35, &qword_1006B07D0, qword_100552820);
    }

    v37 = swift_allocObject();
    *(v37 + 16) = v22;
    v38 = v22;

    sub_1000DD424(v32, sub_10021E6C0, v37);
  }
}

void sub_1002048AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for FMIPItemActionStatus();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FMDeviceDetailViewModel(0);
  *&v12 = __chkstk_darwin(v11 - 8).n128_u64[0];
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*(a4 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_notificationsView) setUserInteractionEnabled:{1, v12}];
  v15 = *(a4 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource);
  v16 = OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel;
  swift_beginAccess();
  sub_10022017C(v15 + v16, v14, type metadata accessor for FMDeviceDetailViewModel);
  sub_1002053C8(v14, v17, v18);
  sub_1002201E4(v14, type metadata accessor for FMDeviceDetailViewModel);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100005B14(v19, qword_1006D4630);
  (*(v8 + 16))(v10, a1, v7);
  swift_errorRetain();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v31[0] = a4;
    v32 = v23;
    *v22 = 136315394;
    sub_10021E650(&unk_1006B4D60, &type metadata accessor for FMIPItemActionStatus, &protocol conformance descriptor for FMIPItemActionStatus);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    (*(v8 + 8))(v10, v7);
    v27 = sub_100005B4C(v24, v26, &v32);

    *(v22 + 4) = v27;
    *(v22 + 12) = 2080;
    v31[1] = a3;
    swift_errorRetain();
    sub_10007EBC0(&qword_1006B9570, &qword_1005523F0);
    v28 = String.init<A>(describing:)();
    v30 = sub_100005B4C(v28, v29, &v32);

    *(v22 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v20, v21, "FMDeviceDetailContentViewController: Toggling notify when found completed with status: %s, error: %s", v22, 0x16u);
    swift_arrayDestroy();
    a4 = v31[0];
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  *(a4 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_isNotifyWhenFoundOnOverride) = 2;
}

uint64_t sub_100204C7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for FMDeviceDetailViewModel(0);
  *&v5 = __chkstk_darwin(v4 - 8).n128_u64[0];
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*(a3 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_notificationsView) setUserInteractionEnabled:{1, v5}];
  v8 = *(a3 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource);
  v9 = OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel;
  swift_beginAccess();
  sub_10022017C(v8 + v9, v7, type metadata accessor for FMDeviceDetailViewModel);
  sub_1002053C8(v7, v10, v11);
  result = sub_1002201E4(v7, type metadata accessor for FMDeviceDetailViewModel);
  *(a3 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_isNotifyWhenFoundOnOverride) = 2;
  return result;
}

char *sub_100204D8C(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for FMIPDevice();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100005B14(v8, qword_1006D4630);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "FMDeviceDetailContentViewController: present NWLB Detail Screen", v11, 2u);
    }

    v12 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource;
    v13 = *&v7[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource];
    v14 = v13 + OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel;
    swift_beginAccess();
    v15 = type metadata accessor for FMDeviceDetailViewModel(0);
    v16 = (*(v14 + *(v15 + 96)) >> 12) & 1;
    v32 = (*(v14 + *(v15 + 92)) >> 14) & 1;
    v33 = v16;
    v17 = *(v13 + 40);
    v18 = *(*v17 + class metadata base offset for ManagedBuffer + 16);
    v19 = (*(*v17 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v17 + v19));
    v20 = v3;
    (*(v3 + 16))(v5, v17 + v18, v2);
    os_unfair_lock_unlock((v17 + v19));

    v21 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_trustedLocationsDetailViewController;
    v22 = *&v7[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_trustedLocationsDetailViewController];
    v23 = FMIPDevice.safeLocations.getter();
    v24 = (*&v7[v12] + OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel);
    swift_beginAccess();
    v34 = v2;
    v25 = v24[2];
    v26 = v24[3];
    v27 = v24[4];

    sub_1004AC438(v23, v32, v33, v25, v26, v27);

    v28 = *&v7[v21];
    v29 = objc_allocWithZone(type metadata accessor for FMTransparentNavigationController());
    v30 = v28;
    v31 = sub_1000CC510(v30, 2);
    [v31 setDelegate:v31];

    [v7 presentViewController:v31 animated:1 completion:0];
    return (*(v20 + 8))(v5, v34);
  }

  return result;
}

void sub_100205128()
{
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v19._object = 0x800000010057D660;
  v3._countAndFlagsBits = 0xD000000000000030;
  v3._object = 0x8000000100586C20;
  v4.value._object = 0x800000010057D640;
  v19._countAndFlagsBits = 0xD00000000000001BLL;
  v4.value._countAndFlagsBits = 0xD000000000000016;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v4, v2, v5, v19);

  v6 = [v1 mainBundle];
  v20._object = 0x800000010057D660;
  v7._countAndFlagsBits = 0xD000000000000032;
  v7._object = 0x8000000100586C60;
  v8.value._object = 0x800000010057D640;
  v20._countAndFlagsBits = 0xD00000000000001BLL;
  v8.value._countAndFlagsBits = 0xD000000000000016;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, v6, v9, v20);

  v10 = String._bridgeToObjectiveC()();

  v11 = String._bridgeToObjectiveC()();

  v17 = [objc_opt_self() alertControllerWithTitle:v10 message:v11 preferredStyle:1];

  v12 = [v1 mainBundle];
  v21._object = 0x8000000100579B60;
  v13._countAndFlagsBits = 0x4F545455425F4B4FLL;
  v13._object = 0xEF454C5449545F4ELL;
  v21._countAndFlagsBits = 0xD000000000000021;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v13, 0, v12, v14, v21);

  v15 = String._bridgeToObjectiveC()();

  v16 = [objc_opt_self() actionWithTitle:v15 style:0 handler:0];

  [v17 addAction:v16];
  [v0 presentViewController:v17 animated:1 completion:0];
}

double sub_1002053C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v192 = type metadata accessor for DispatchWorkItemFlags();
  v191 = *(v192 - 8);
  __chkstk_darwin(v192);
  v189 = &v175 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = type metadata accessor for DispatchQoS();
  v188 = *(v190 - 8);
  __chkstk_darwin(v190);
  v187 = &v175 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = type metadata accessor for FMIPFeatures();
  v201 = *(v202 - 8);
  __chkstk_darwin(v202);
  v200 = &v175 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v199 = &v175 - v9;
  v196 = type metadata accessor for FMIPSeparationMonitoringState();
  v195 = *(v196 - 8);
  __chkstk_darwin(v196);
  v194 = &v175 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = type metadata accessor for FMFDevice();
  v220 = *(v224 - 8);
  __chkstk_darwin(v224);
  v223 = &v175 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10007EBC0(&qword_1006B68E8, &unk_100563FF0);
  v197 = *(v12 - 8);
  __chkstk_darwin(v12 - 8);
  v186 = &v175 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v210 = &v175 - v15;
  __chkstk_darwin(v16);
  v198 = &v175 - v17;
  v207 = v18;
  __chkstk_darwin(v19);
  v208 = &v175 - v20;
  v215 = type metadata accessor for FMIPDeviceState();
  v214 = *(v215 - 1);
  __chkstk_darwin(v215);
  v213 = &v175 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v212 = &v175 - v23;
  v24 = sub_10007EBC0(&qword_1006AF748, &unk_100558AD0);
  __chkstk_darwin(v24 - 8);
  v219 = &v175 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v204 = (&v175 - v27);
  __chkstk_darwin(v28);
  v203 = &v175 - v29;
  v30 = sub_10007EBC0(&unk_1006BBCE0, &unk_1005534C0);
  __chkstk_darwin(v30 - 8);
  v32 = &v175 - v31;
  v33 = type metadata accessor for FMIPDevice();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v185 = &v175 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v209 = &v175 - v37;
  __chkstk_darwin(v38);
  v193 = &v175 - v39;
  v206 = v40;
  __chkstk_darwin(v41);
  v43 = &v175 - v42;
  v44 = swift_allocObject();
  v216 = v44;
  *(v44 + 16) = 1;
  v184 = (v44 + 16);
  v221 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator;
  v45 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource;
  v222 = v3;
  v46 = (*&v3[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource] + OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel);
  swift_beginAccess();
  v48 = *v46;
  v47 = v46[1];

  v49 = v48;
  v50 = v33;
  sub_1000E512C(v49, v47, v32);

  if (v34[6](v32, 1, v33) == 1)
  {
    sub_100012DF0(v32, &unk_1006BBCE0, &unk_1005534C0);
    if (qword_1006AEBE0 != -1)
    {
      goto LABEL_68;
    }

    goto LABEL_3;
  }

  v56 = v34[4];
  v211 = v43;
  v183 = (v34 + 4);
  v182 = v56;
  v56(v43, v32, v33);
  v57 = type metadata accessor for FMDeviceDetailViewModel(0);
  v58 = v57;
  v59 = *(a1 + *(v57 + 92));
  v60 = a1;
  v205 = v59;
  if ((v59 & 0x10000) != 0)
  {
    v61 = *(a1 + *(v57 + 96));
    v59 = v34;
    v62 = v50;
    v63 = *(*&v222[v221] + 16);
    v64 = *&v222[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_notificationsView];
    v65 = v63;
    v68 = sub_100057590(v65, v66, v67);

    v50 = v62;
    v34 = v59;
    LODWORD(v59) = v205;
    sub_100242594((v61 & 0x8000) != 0, (v68 & 0xFFFFFFFFFFFFFFFDLL) == 1);
  }

  v69 = v222;
  if ((v59 & 0x8000) == 0)
  {
    v70 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_notificationsView;
    v71 = *&v222[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_notificationsView];
    sub_10024271C(1, (v59 & 0x10000) == 0);

    v72 = *(v216 + 16);
    v73 = *&v69[v70];
    sub_100242940(v72);

    (v34[1])(v211, v50);
LABEL_57:

    return result;
  }

  if (*(v60 + 40) == 1 && (FMIPDevice.shouldDisplaySeparatedLocation.getter() & 1) != 0 && (v74 = v60 + v58[11], (*(v74 + 8) & 1) == 0) && (v75 = v60 + v58[10], (*(v75 + 8) & 1) == 0))
  {
    v173 = *v75;
    v174 = (*v74 >> 7) & 1;
    if (v69[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_isNotifyWhenFoundOnOverride] != 2)
    {
      LODWORD(v174) = v69[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_isNotifyWhenFoundOnOverride];
    }

    v179 = v174;
    v177 = v173 & 8;
  }

  else
  {
    v76 = v69[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_isNotifyWhenFoundOnOverride];
    if (v76 == 2)
    {
      v76 = (*(v60 + v58[24]) >> 3) & 1;
    }

    v179 = v76;
    v177 = v59 & 0x40;
  }

  v77 = v69[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_isNotifyWhenLeftBehindOnOverride];
  if (v77 == 2)
  {
    v77 = (*(v60 + v58[24] + 1) >> 4) & 1;
  }

  v178 = v77;
  v78 = *&v69[v45] + OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel;
  swift_beginAccess();
  v180 = *(v78 + v58[35]);

  v79 = v203;
  dispatch thunk of FMFManager.myInfo.getter();

  v80 = type metadata accessor for FMFMyInfo();
  v81 = *(v80 - 8);
  v82 = *(v81 + 48);
  v218 = v81 + 48;
  v217 = v82;
  v83 = v82(v79, 1, v80);
  v181 = v50;
  v175 = v81;
  if (v83 == 1)
  {
    sub_100012DF0(v79, &qword_1006AF748, &unk_100558AD0);
    v84 = 0;
    v85 = 0;
  }

  else
  {
    v86 = FMFMyInfo.meDeviceId.getter();
    v85 = v87;
    v88 = v79;
    v84 = v86;
    (*(v81 + 8))(v88, v80);
  }

  v89 = v204;
  v204 = v34;

  dispatch thunk of FMFManager.myInfo.getter();

  if (v217(v89, 1, v80) == 1)
  {
    sub_100012DF0(v89, &qword_1006AF748, &unk_100558AD0);
    if (!v85)
    {
      LODWORD(v203) = 1;
      v90 = v215;
      v91 = v214;
      goto LABEL_33;
    }

    goto LABEL_30;
  }

  v92 = FMFMyInfo.deviceId.getter();
  v94 = v93;
  (*(v175 + 8))(v89, v80);
  if (v85)
  {
    if (v94)
    {
      if (v84 == v92 && v85 == v94)
      {

        LODWORD(v203) = 1;
      }

      else
      {
        LODWORD(v203) = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      goto LABEL_31;
    }

LABEL_30:
    LODWORD(v203) = 0;
LABEL_31:
    v90 = v215;
    v91 = v214;
LABEL_32:

    goto LABEL_33;
  }

  v90 = v215;
  v91 = v214;
  if (v94)
  {
    LODWORD(v203) = 0;
    goto LABEL_32;
  }

  LODWORD(v203) = 1;
LABEL_33:
  v95 = v212;
  FMIPDevice.state.getter();
  v96 = v213;
  static FMIPDeviceState.isThisDevice.getter();
  sub_10021E650(&qword_1006BBCF0, &type metadata accessor for FMIPDeviceState, &protocol conformance descriptor for FMIPDeviceState);
  v176 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v97 = *(v91 + 8);
  v97(v96, v90);
  v97(v95, v90);

  v98 = dispatch thunk of FMFManager.devices.getter();

  if (!v98)
  {
    goto LABEL_47;
  }

  v215 = v80;
  v214 = *(v98 + 16);
  if (!v214)
  {
LABEL_46:

LABEL_47:
    v111 = v208;
    (*(v220 + 56))(v208, 1, 1, v224);
LABEL_48:
    v112 = v216;
    LODWORD(v224) = v177 != 0;
    LODWORD(v219) = (v205 & 0x10000) == 0;

    v113 = v194;
    FMIPManager.separationMonitoringState.getter();

    LODWORD(v223) = FMIPSeparationMonitoringState.allowsSeparationMonitoringUI.getter();
    v114 = *(v195 + 8);
    v115 = v196;
    v114(v113, v196);

    FMIPManager.separationMonitoringState.getter();

    LODWORD(v217) = FMIPSeparationMonitoringState.allowsSeparationMonitoringConfiguration.getter();
    v114(v113, v115);
    v116 = v199;
    v117 = v211;
    FMIPDevice.features.getter();
    v118 = v200;
    static FMIPFeatures.canBeLeashedByHost.getter();
    sub_10021E650(&qword_1006C1D50, &type metadata accessor for FMIPFeatures, &protocol conformance descriptor for FMIPFeatures);
    v119 = v202;
    LODWORD(v220) = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v120 = *(v201 + 8);
    v120(v118, v119);
    v120(v116, v119);
    *(v112 + 16) = 0;
    v121 = v112;
    v123 = (v204 + 2);
    v122 = v204[2];
    v124 = v193;
    v125 = v181;
    v122(v193, v117, v181);
    v126 = v198;
    sub_100007204(v111, v198, &qword_1006B68E8, &unk_100563FF0);
    v215 = v122;
    v122(v209, v124, v125);
    sub_100007204(v126, v210, &qword_1006B68E8, &unk_100563FF0);
    v200 = v123;
    v127 = v123[64];
    v128 = (v127 + 49) & ~v127;
    v129 = v128 + v206;
    v130 = *(v197 + 80);
    v131 = (v130 + v128 + v206 + 2) & ~v130;
    v132 = v131 + v207;
    v202 = v127;
    v218 = v130;
    v212 = (v127 | v130);
    v133 = swift_allocObject();
    *(v133 + 16) = v223 & 1;
    *(v133 + 24) = v121;
    LODWORD(v213) = v203 & 1;
    *(v133 + 32) = v203 & 1;
    LOBYTE(v117) = v176;
    LODWORD(v214) = v176 & 1;
    *(v133 + 33) = v176 & 1;
    *(v133 + 34) = (v205 & 0x4000) != 0;
    *(v133 + 35) = v180;
    *(v133 + 36) = v220 & 1;
    v134 = v222;
    *(v133 + 40) = v222;
    LODWORD(v201) = v178 & 1;
    *(v133 + 48) = v178 & 1;
    v135 = v133 + v128;
    v136 = v134;
    v182(v135, v124, v125);
    v137 = (v133 + v129);
    *v137 = v224;
    v138 = v179 & 1;
    v137[1] = v179 & 1;
    sub_100035318(v126, v133 + v131, &qword_1006B68E8, &unk_100563FF0);
    v139 = v217 & 1;
    *(v133 + v132) = v139;
    v140 = *&v136[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_notificationsView];
    v141 = v136;

    v142 = v140;
    sub_10024271C(0, v219);

    if (v117)
    {
      sub_100012DF0(v210, &qword_1006B68E8, &unk_100563FF0);
      v143 = v204[1];
      v144 = v181;
      (v143)(v209, v181);
      v145 = swift_allocObject();
      *(v145 + 16) = sub_10021EBE4;
      *(v145 + 24) = v133;

      FMIPManager.isCompanion(completion:)();

      sub_100012DF0(v208, &qword_1006B68E8, &unk_100563FF0);
      (v143)(v211, v144);
    }

    else
    {
      LODWORD(v221) = v138;
      v222 = v141;
      v146 = v181;
      v147 = v205 & 0x4000;
      v148 = v184;
      if ((v223 & 1) == 0)
      {
        swift_beginAccess();
        *v148 = 1;
      }

      LODWORD(v223) = v139;
      v149 = v202;
      v219 = ~v218;
      v150 = v210;
      v151 = v209;
      if (!v147 || v180 || ((v203 ^ 1 | v220) & 1) == 0)
      {
        swift_beginAccess();
        *v148 = 1;
      }

      v217 = (v147 >> 14);
      sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
      v220 = static OS_dispatch_queue.main.getter();
      v152 = v185;
      v153 = v146;
      (v215)(v185, v151, v146);
      v154 = v186;
      sub_100007204(v150, v186, &qword_1006B68E8, &unk_100563FF0);
      v155 = (v149 + 25) & ~v149;
      v156 = v155 + v206;
      v157 = (v218 + v155 + v206 + 4) & v219;
      v158 = v157 + v207;
      v159 = (v157 + v207 + 9) & 0xFFFFFFFFFFFFFFF8;
      v160 = swift_allocObject();
      *(v160 + 16) = v222;
      *(v160 + 24) = v201;
      v182((v160 + v155), v152, v153);
      v161 = (v160 + v156);
      *v161 = v217;
      v161[1] = v224;
      v161[2] = v221;
      v161[3] = v213;
      sub_100035318(v154, v160 + v157, &qword_1006B68E8, &unk_100563FF0);
      v162 = (v160 + v158);
      *v162 = v214;
      v162[1] = v223;
      *(v160 + v159) = v216;
      aBlock[4] = sub_10021ED30;
      aBlock[5] = v160;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100004AE4;
      aBlock[3] = &unk_10062DA70;
      v163 = _Block_copy(aBlock);
      v164 = v222;

      v165 = v187;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_10021E650(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
      sub_100004044(&qword_1006AEDF0, &unk_1006B0640, &unk_100552B10);
      v166 = v189;
      v167 = v192;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v168 = v220;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v163);

      (*(v191 + 8))(v166, v167);
      (*(v188 + 8))(v165, v190);
      sub_100012DF0(v210, &qword_1006B68E8, &unk_100563FF0);
      v169 = v204[1];
      v170 = v181;
      (v169)(v209, v181);
      sub_100012DF0(v208, &qword_1006B68E8, &unk_100563FF0);
      (v169)(v211, v170);
    }

    goto LABEL_57;
  }

  v99 = 0;
  v213 = (v98 + ((*(v220 + 80) + 32) & ~*(v220 + 80)));
  v212 = (v220 + 16);
  v100 = (v175 + 8);
  v101 = (v220 + 8);
  while (v99 < *(v98 + 16))
  {
    (*(v220 + 16))(v223, &v213[*(v220 + 72) * v99], v224);
    v102 = FMFDevice.identifier.getter();
    v104 = v103;

    v105 = v219;
    dispatch thunk of FMFManager.myInfo.getter();

    v106 = v215;
    if (v217(v105, 1, v215) == 1)
    {
      sub_100012DF0(v105, &qword_1006AF748, &unk_100558AD0);
LABEL_37:

      goto LABEL_38;
    }

    v107 = FMFMyInfo.meDeviceId.getter();
    v109 = v108;
    (*v100)(v105, v106);
    if (!v109)
    {
      goto LABEL_37;
    }

    if (v102 == v107 && v109 == v104)
    {

LABEL_62:

      v171 = v220;
      v111 = v208;
      v172 = v224;
      (*(v220 + 32))(v208, v223, v224);
      (*(v171 + 56))(v111, 0, 1, v172);
      goto LABEL_48;
    }

    v110 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v110)
    {
      goto LABEL_62;
    }

LABEL_38:
    ++v99;
    (*v101)(v223, v224);
    if (v214 == v99)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_68:
  swift_once();
LABEL_3:
  v51 = type metadata accessor for Logger();
  sub_100005B14(v51, qword_1006D4630);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&_mh_execute_header, v52, v53, "FMDeviceDetailContentViewController: cannot enable notify when detach for unknown device", v54, 2u);
  }

  return result;
}

uint64_t sub_100206E04(char a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8, void *a9, unsigned __int8 a10, uint64_t a11, unsigned __int8 a12, unsigned __int8 a13, uint64_t a14, unsigned __int8 a15)
{
  LODWORD(v47) = a8;
  LODWORD(v54) = a7;
  v64 = a5;
  v65 = a4;
  v17 = a2;
  v19 = type metadata accessor for DispatchWorkItemFlags();
  v62 = *(v19 - 8);
  v63 = v19;
  __chkstk_darwin(v19);
  v60 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for DispatchQoS();
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v58 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10007EBC0(&qword_1006B68E8, &unk_100563FF0);
  v53 = *(v22 - 8);
  v23 = *(v53 + 64);
  __chkstk_darwin(v22 - 8);
  v56 = &v47 - v24;
  v55 = type metadata accessor for FMIPDevice();
  v25 = *(v55 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v55);
  v27 = &v47 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v17 & 1) == 0)
  {
    swift_beginAccess();
    *(a3 + 16) = 1;
  }

  if ((v65 & 1) != 0 && (v64 & 1) != 0 && (a1 & 1) == 0)
  {
    swift_beginAccess();
    *(a3 + 16) = 1;
  }

  v51 = a15;
  v50 = a13;
  v49 = a12;
  v48 = a10;
  v52 = a9;
  v57 = a6;
  if ((a6 & 1) == 0 || (v54 & 1) != 0 || ((v65 ^ 1 | v64 | v47) & 1) == 0)
  {
    swift_beginAccess();
    *(a3 + 16) = 1;
  }

  sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
  v54 = static OS_dispatch_queue.main.getter();
  v28 = v55;
  (*(v25 + 16))(&v47 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), a11, v55);
  v29 = v56;
  sub_100007204(a14, v56, &qword_1006B68E8, &unk_100563FF0);
  v30 = *(v25 + 80);
  v47 = a3;
  v31 = (v30 + 25) & ~v30;
  v32 = v31 + v26;
  v33 = (*(v53 + 80) + v32 + 4) & ~*(v53 + 80);
  v34 = v33 + v23;
  v35 = swift_allocObject();
  v36 = v25;
  v37 = v52;
  *(v35 + 16) = v52;
  *(v35 + 24) = v48 & 1;
  (*(v36 + 32))(v35 + v31, v27, v28);
  v38 = (v35 + v32);
  *v38 = v57 & 1;
  v38[1] = v49 & 1;
  v38[2] = v50 & 1;
  v38[3] = v65 & 1;
  sub_100035318(v29, v35 + v33, &qword_1006B68E8, &unk_100563FF0);
  v39 = (v35 + v34);
  *v39 = v64 & 1;
  v39[1] = v51 & 1;
  *(v35 + ((v34 + 9) & 0xFFFFFFFFFFFFFFF8)) = v47;
  aBlock[4] = sub_1002204D0;
  aBlock[5] = v35;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_10062DAE8;
  v40 = _Block_copy(aBlock);
  v41 = v37;

  v42 = v58;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10021E650(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640, &unk_100552B10);
  v43 = v60;
  v44 = v63;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v45 = v54;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v40);

  (*(v62 + 8))(v43, v44);
  return (*(v59 + 8))(v42, v61);
}

void sub_10020746C(uint64_t a1, int a2, uint64_t a3, int a4, int a5, int a6, int a7, uint64_t a8, unsigned __int8 a9, unsigned __int8 a10, uint64_t a11)
{
  v49 = a6;
  v50 = a7;
  v47 = a4;
  v48 = a5;
  v52 = a11;
  v44 = a10;
  v45 = a9;
  v46 = a2;
  v13 = type metadata accessor for FMIPDeviceState();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v41 - v18;
  v20 = sub_10007EBC0(&qword_1006B68E8, &unk_100563FF0);
  __chkstk_darwin(v20 - 8);
  v22 = &v41 - v21;
  v51 = a1;
  v43 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_notificationsView;
  v42 = *(a1 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_notificationsView);
  v41 = *(FMIPDevice.safeLocations.getter() + 16);

  sub_100007204(a8, v22, &qword_1006B68E8, &unk_100563FF0);
  v23 = type metadata accessor for FMFDevice();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    sub_100012DF0(v22, &qword_1006B68E8, &unk_100563FF0);
    v25 = 0;
    v26 = 0;
  }

  else
  {
    v27 = FMFDevice.name.getter();
    v26 = v28;
    (*(v24 + 8))(v22, v23);
    v25 = v27;
  }

  FMIPDevice.state.getter();
  static FMIPDeviceState.separationWarningPaused.getter();
  sub_10021E650(&qword_1006BBCF0, &type metadata accessor for FMIPDeviceState, &protocol conformance descriptor for FMIPDeviceState);
  v29 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v30 = *(v14 + 8);
  v30(v16, v13);
  v30(v19, v13);
  v31 = v51;
  v32 = *(*(v51 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator) + 16);
  v35 = sub_100057590(v32, v33, v34);

  v36 = (v35 & 0xFFFFFFFFFFFFFFFDLL) == 1;
  v37 = v42;
  sub_100241AEC(v46 & 1, v41, v47 & 1, v48 & 1, v49 & 1, v50 & 1, v25, v26, v45 & 1, (v44 & 1) == 0, v29 & 1, v36);

  v38 = *(v31 + v43);
  v39 = v52;
  swift_beginAccess();
  LOBYTE(v39) = *(v39 + 16);
  v40 = v38;
  sub_100242940(v39);
}

void sub_10020782C(int a1, uint64_t a2, uint64_t a3)
{
  v34 = a2;
  v35 = a3;
  v33 = a1;
  v4 = sub_10007EBC0(&unk_1006BBCE0, &unk_1005534C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v31 - v5;
  v7 = type metadata accessor for FMIPDevice();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v31 - v12;
  v14 = (*(v3 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource) + OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel);
  swift_beginAccess();
  v15 = *v14;
  v16 = v14[1];

  sub_1000E512C(v15, v16, v6);

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_100012DF0(v6, &unk_1006BBCE0, &unk_1005534C0);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100005B14(v17, qword_1006D4630);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "FMDeviceDetailContentViewController: cannot enable notify when detach for unknown device", v20, 2u);
    }
  }

  else
  {
    v32 = *(v8 + 32);
    v32(v13, v6, v7);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100005B14(v21, qword_1006D4630);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 67109120;
      *(v24 + 4) = v33 & 1;
      _os_log_impl(&_mh_execute_header, v22, v23, "FMDeviceDetailContentViewController: Setting Notify when detached to state = %{BOOL}d", v24, 8u);
    }

    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v8 + 16))(v10, v13, v7);
    v26 = (*(v8 + 80) + 24) & ~*(v8 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = v25;
    v32((v27 + v26), v10, v7);
    v28 = (v27 + ((v9 + v26 + 7) & 0xFFFFFFFFFFFFFFF8));
    v29 = v34;
    v30 = v35;
    *v28 = v34;
    v28[1] = v30;
    sub_100062900(v29, v30);
    sub_1000C5474(sub_10021EAEC, v27, 0, 0);

    (*(v8 + 8))(v13, v7);
  }
}

double sub_100207CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = a4;
    v11[4] = a5;

    v12 = v10;
    sub_100062900(a4, a5);
    sub_1000DDAB8(a3, sub_10021EBD8, v11);
  }

  return result;
}

void sub_100207DA0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(BOOL), uint64_t a5)
{
  v36 = a5;
  v37 = a4;
  v35[1] = a1;
  v7 = type metadata accessor for FMIPActionStatus();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FMIPDeviceState();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v35 - v16;
  if (a2 && *(a2 + 16))
  {
    type metadata accessor for FMIPDevice();
    FMIPDevice.state.getter();
    static FMIPDeviceState.isNotifyWhenDetachedEnabled.getter();
    sub_10021E650(&qword_1006BBCF0, &type metadata accessor for FMIPDeviceState, &protocol conformance descriptor for FMIPDeviceState);
    v18 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v19 = *(v12 + 8);
    v19(v14, v11);
    v19(v17, v11);
    v20 = *(*(a3 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator) + 16);
    v21 = *(a3 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_notificationsView);
    v22 = v20;
    v25 = sub_100057590(v22, v23, v24);

    v26 = (v25 & 0xFFFFFFFFFFFFFFFDLL) == 1;
    v27 = v18 & 1;
  }

  else
  {
    v28 = *(*(a3 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator) + 16);
    v21 = *(a3 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_notificationsView);
    v29 = v28;
    v32 = sub_100057590(v29, v30, v31);

    v26 = (v32 & 0xFFFFFFFFFFFFFFFDLL) == 1;
    v27 = 0;
  }

  sub_100242594(v27, v26);

  v33 = v37;
  if (v37)
  {
    (*(v8 + 104))(v10, enum case for FMIPActionStatus.success(_:), v7);
    sub_10021E650(&qword_1006C1D70, &type metadata accessor for FMIPActionStatus, &protocol conformance descriptor for FMIPActionStatus);
    v34 = v36;

    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    (*(v8 + 8))(v10, v7);
    v33(v39 == v38);
    sub_10001835C(v33, v34);
  }
}

void sub_10020816C()
{
  v1 = v0;
  v2 = sub_10007EBC0(&unk_1006BBCE0, &unk_1005534C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v24 - v3;
  v5 = type metadata accessor for FMIPDevice();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v24 - v10;
  v12 = (*&v0[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource] + OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel);
  swift_beginAccess();
  v14 = *v12;
  v13 = v12[1];

  sub_1000E512C(v14, v13, v4);

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100012DF0(v4, &unk_1006BBCE0, &unk_1005534C0);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100005B14(v15, qword_1006D4630);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "DeviceDetailContentViewController: cannot enable notify when left behind for unknown device", v18, 2u);
    }
  }

  else
  {
    (*(v6 + 32))(v11, v4, v5);
    (*(v6 + 16))(v8, v11, v5);
    v19 = objc_allocWithZone(type metadata accessor for FMNotifyWhenDetachedViewController(0));

    v21 = sub_1003E7A10(v20, v8);
    *&v21[OBJC_IVAR____TtC6FindMy34FMNotifyWhenDetachedViewController_delegate + 8] = &off_10062D290;
    swift_unknownObjectWeakAssign();
    objc_allocWithZone(type metadata accessor for FMTransparentNavigationController());
    v22 = v21;
    v23 = sub_1000CC510(v22, 2);
    [v23 setDelegate:v23];
    [v1 presentViewController:v23 animated:1 completion:0];

    (*(v6 + 8))(v11, v5);
  }
}

void sub_10020850C(int a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v32 = a3;
  v31 = a1;
  v6 = sub_10007EBC0(&unk_1006BBCE0, &unk_1005534C0);
  __chkstk_darwin(v6 - 8);
  v8 = &v30[-v7];
  v9 = type metadata accessor for FMIPDevice();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v30[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = (*&v3[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource] + OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel);
  swift_beginAccess();
  v15 = *v13;
  v14 = v13[1];

  sub_1000E512C(v15, v14, v8);

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_100012DF0(v8, &unk_1006BBCE0, &unk_1005534C0);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100005B14(v16, qword_1006D4630);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "FMDeviceDetailContentViewController: cannot enable/disable show contact details for unknown device", v19, 2u);
    }
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100005B14(v20, qword_1006D4630);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 67109120;
      *(v23 + 4) = v31 & 1;
      _os_log_impl(&_mh_execute_header, v21, v22, "FMDeviceDetailContentViewController: Show contact details button toggled with state = %{BOOL}d", v23, 8u);
    }

    v24 = (*&v4[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_showContactDetailsView] + OBJC_IVAR____TtC6FindMy30FMDeviceShowContactDetailsView_phoneNumber);
    v25 = *v24;
    v26 = v24[1];
    v27 = swift_allocObject();
    v27[2] = v4;
    v27[3] = a2;
    v28 = v32;
    v27[4] = v32;

    v29 = v4;
    sub_100062900(a2, v28);
    sub_1000DDE18(v12, v25, v26, sub_10021EAE0, v27);

    (*(v10 + 8))(v12, v9);
  }
}

void sub_100208944(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v10 = type metadata accessor for FMIPDeviceState();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v19 - v15;
  if (a2)
  {
    if (*(a2 + 16))
    {
      type metadata accessor for FMIPDevice();
      FMIPDevice.state.getter();
      static FMIPDeviceState.isShowContactDetailsEnabled.getter();
      sub_10021E650(&qword_1006BBCF0, &type metadata accessor for FMIPDeviceState, &protocol conformance descriptor for FMIPDeviceState);
      LOBYTE(a2) = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v17 = *(v11 + 8);
      v17(v13, v10);
      v17(v16, v10);
    }

    else
    {
      LOBYTE(a2) = 0;
    }
  }

  v18 = *(a3 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_showContactDetailsView);
  sub_10044C7B8(a2 & 1);

  if (a4)
  {

    a4(a1);
    sub_10001835C(a4, a5);
  }
}

char *sub_100208B54()
{
  v1 = v0;
  v2 = sub_10007EBC0(&unk_1006BBCE0, &unk_1005534C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v27 - v3;
  v5 = type metadata accessor for FMIPDevice();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v27 - v10;
  v12 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator;
  v13 = (*&v0[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource] + OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel);
  swift_beginAccess();
  v15 = *v13;
  v14 = v13[1];

  sub_1000E512C(v15, v14, v4);

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100012DF0(v4, &unk_1006BBCE0, &unk_1005534C0);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100005B14(v16, qword_1006D4630);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "DeviceDetailContentViewController: cannot enable showContactDetails for unknown device", v19, 2u);
    }

    return 0;
  }

  else
  {
    (*(v6 + 32))(v11, v4, v5);
    v21 = *&v0[v12];
    (*(v6 + 16))(v8, v11, v5);
    v22 = *&v0[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_showContactDetailsPhoneNumber];
    v23 = *&v1[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_showContactDetailsPhoneNumber + 8];
    objc_allocWithZone(type metadata accessor for FMContactDetailsWelcomeScreenViewController(0));

    v24 = sub_100228D20(v21, v8, v22, v23);

    *&v24[OBJC_IVAR____TtC6FindMy43FMContactDetailsWelcomeScreenViewController_delegate + 8] = &off_10062D280;
    swift_unknownObjectWeakAssign();
    objc_allocWithZone(type metadata accessor for FMTransparentNavigationController());
    v25 = v24;
    v26 = sub_1000CC510(v25, 2);
    [v26 setDelegate:v26];

    [v1 presentViewController:v26 animated:1 completion:0];
    (*(v6 + 8))(v11, v5);
    return v25;
  }
}

double sub_100208F5C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = a3 & 1;
    *(Strong + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_isNotifyWhenLeftBehindOnOverride) = v8;
    v9 = Strong;
    [*(Strong + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_notificationsView) setUserInteractionEnabled:0];
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    *(v10 + 24) = v8;

    v11 = v9;
    sub_1000DE0C0(a4, v8, sub_10021EAD4, v10);
  }

  return result;
}

uint64_t sub_100209074(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = type metadata accessor for FMIPActionStatus();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FMDeviceDetailViewModel(0);
  *&v11 = __chkstk_darwin(v10 - 8).n128_u64[0];
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*(a3 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_notificationsView) setUserInteractionEnabled:{1, v11}];
  v14 = *(a3 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource);
  v15 = OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel;
  swift_beginAccess();
  sub_10022017C(v14 + v15, v13, type metadata accessor for FMDeviceDetailViewModel);
  sub_1002053C8(v13, v16, v17);
  sub_1002201E4(v13, type metadata accessor for FMDeviceDetailViewModel);
  (*(v7 + 104))(v9, enum case for FMIPActionStatus.success(_:), v6);
  sub_10021E650(&qword_1006C1D70, &type metadata accessor for FMIPActionStatus, &protocol conformance descriptor for FMIPActionStatus);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  result = (*(v7 + 8))(v9, v6);
  *(a3 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_isNotifyWhenLeftBehindOnOverride) = (v19[2] == v19[1]) & a4;
  return result;
}

void sub_1002092CC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator;
  v3 = type metadata accessor for FMSeparationWelcomeScreenViewController();
  v4 = objc_allocWithZone(v3);

  v6 = sub_1004DEC88(v5, 0);
  v7 = objc_allocWithZone(v3);

  v9 = sub_1004DEC88(v8, 1);
  *&v9[OBJC_IVAR____TtC6FindMy39FMSeparationWelcomeScreenViewController_delegate + 8] = &off_10062D208;
  swift_unknownObjectWeakAssign();
  v10 = *&v1[v2];
  sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100552EE0;
  *(v11 + 32) = v6;
  *(v11 + 40) = v9;
  v12 = objc_allocWithZone(type metadata accessor for FMPageViewController());

  v13 = v6;
  v14 = v9;
  v15 = sub_100141E10(v10, v11);
  v16 = [objc_allocWithZone(type metadata accessor for FMTransparentNavigationController()) initWithRootViewController:v15];
  [v1 presentViewController:v16 animated:1 completion:0];
  v17 = [objc_opt_self() standardUserDefaults];
  v18 = String._bridgeToObjectiveC()();
  [v17 setBool:1 forKey:v18];
}

void sub_1002094C8(uint64_t a1)
{
  v2 = v1;
  v97 = a1;
  v3 = sub_10007EBC0(&qword_1006BC990, &unk_100558AC0);
  __chkstk_darwin(v3 - 8);
  v99 = &v87 - v4;
  v5 = sub_10007EBC0(&unk_1006BB1B0, qword_10055C5C0);
  __chkstk_darwin(v5 - 8);
  v100 = &v87 - v6;
  v7 = type metadata accessor for TimeZone();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10007EBC0(&unk_1006B0000, &unk_100552AA0);
  __chkstk_darwin(v11 - 8);
  v13 = &v87 - v12;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource;
  v18 = *&v2[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource] + OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel;
  swift_beginAccess();
  v19 = *(v18 + 24);
  if (v19)
  {
    v96 = v17;
    v20 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator;
    v21 = *&v2[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator];
    v94 = *(v18 + 16);
    v22 = *(v21 + 56) + OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingActionInfo;
    swift_beginAccess();
    v95 = type metadata accessor for FMPendingActionInfo(0);
    sub_100007204(v22 + *(v95 + 28), v13, &unk_1006B0000, &unk_100552AA0);
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      sub_100012DF0(v13, &unk_1006B0000, &unk_100552AA0);
    }

    else
    {
      v92 = v15;
      v27 = *(v15 + 32);
      v93 = v14;
      v27(v96, v13);
      v28 = objc_allocWithZone(NSDateFormatter);

      v29 = [v28 init];
      static TimeZone.autoupdatingCurrent.getter();
      isa = TimeZone._bridgeToObjectiveC()().super.isa;
      (*(v8 + 8))(v10, v7);
      [v29 setTimeZone:isa];

      [v29 setTimeStyle:1];
      v31 = Date._bridgeToObjectiveC()().super.isa;
      v90 = v29;
      v32 = [v29 stringFromDate:v31];

      v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v88 = v33;

      v91 = v20;
      v34 = *&v2[v20];
      sub_10007EBC0(&unk_1006AF770, &unk_1005542D0);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_100552220;
      *(v35 + 32) = v94;
      *(v35 + 40) = v19;
      v36 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_pendingSafeLocation;
      swift_beginAccess();
      sub_100007204(&v2[v36], v100, &unk_1006BB1B0, qword_10055C5C0);
      sub_100007204(v97, v99, &qword_1006BC990, &unk_100558AC0);
      v37 = objc_allocWithZone(type metadata accessor for FMSeparationNotificationWelcomeViewController(0));
      v38 = &v37[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_scrollHandler];
      *v38 = 0;
      v38[1] = 0;
      *&v37[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_delegate + 8] = 0;
      swift_unknownObjectWeakInit();
      v39 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_titleLabel;
      v40 = objc_allocWithZone(UILabel);

      *&v37[v39] = [v40 init];
      v41 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_subtitleLabel;
      *&v37[v41] = [objc_allocWithZone(UILabel) init];
      v42 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_scrollView;
      *&v37[v42] = [objc_allocWithZone(UIScrollView) init];
      v43 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_scrollContentView;
      *&v37[v43] = [objc_allocWithZone(UIView) init];
      v44 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_actionButton;
      v45 = objc_opt_self();
      v46 = [v45 systemBlueColor];
      v47 = type metadata accessor for FMSingleLinePlatterButton();
      v48 = objc_allocWithZone(v47);
      *&v37[v44] = sub_100038758(v46, 1, 0, 1);
      v49 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_secondaryActionButton;
      v50 = [v45 clearColor];
      v51 = objc_allocWithZone(v47);
      *&v37[v49] = sub_100038758(v50, 1, 0, 1);
      v52 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_informativeImage;
      sub_10000905C(0, &qword_1006BC2B0, UIImage_ptr);
      v57 = sub_1003DE3DC(0xD00000000000001ALL, 0x8000000100586BE0, 6778480, 0xE300000000000000, v53, v54, v55, v56, v87);
      v58 = [objc_allocWithZone(UIImageView) initWithImage:v57];

      *&v37[v52] = v58;
      *&v37[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_heightConstraint] = 0;
      v59 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_singleItem;
      v60 = type metadata accessor for FMIPItem();
      (*(*(v60 - 8) + 56))(&v37[v59], 1, 1, v60);
      v61 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_singleDevice;
      v62 = type metadata accessor for FMIPDevice();
      (*(*(v62 - 8) + 56))(&v37[v61], 1, 1, v62);
      v37[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_separationGroupType] = 2;
      v63 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_safeLocationSuggestion;
      v64 = type metadata accessor for FMIPSafeLocation();
      (*(*(v64 - 8) + 56))(&v37[v63], 1, 1, v64);
      v65 = &v37[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_separationTime];
      *v65 = 0;
      v65[1] = 0;
      v66 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_separationLocation;
      v67 = type metadata accessor for FMIPSeparationLocation();
      (*(*(v67 - 8) + 56))(&v37[v66], 1, 1, v67);
      v68 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_mapSnapshotter;
      type metadata accessor for FMMapSnapshotter();
      swift_allocObject();
      *&v37[v68] = sub_10012114C();
      v37[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_type] = 0;
      *&v37[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_beaconUUIDs] = v35;
      swift_beginAccess();
      sub_1000BBE44(v100, &v37[v63], &unk_1006BB1B0, qword_10055C5C0);
      swift_endAccess();
      v69 = v34;
      v70 = *(v34 + 56) + OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingActionInfo;
      swift_beginAccess();
      v71 = 1;
      v72 = *(v70 + *(v95 + 32));
      if (v72)
      {
        v71 = *(v72 + 16);
      }

      *&v37[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_beaconCount] = v71;
      v73 = v88;
      *v65 = v89;
      v65[1] = v73;

      swift_beginAccess();
      v74 = v99;
      sub_1000BBE44(v99, &v37[v66], &qword_1006BC990, &unk_100558AC0);
      swift_endAccess();
      *&v37[OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator] = v69;
      v75 = type metadata accessor for FMMediatedViewController();
      v101.receiver = v37;
      v101.super_class = v75;

      v76 = objc_msgSendSuper2(&v101, "initWithNibName:bundle:", 0, 0);
      sub_1002EEB9C();
      sub_1002EF8A8();
      v77 = objc_allocWithZone(UITapGestureRecognizer);
      v78 = v76;
      v79 = [v77 initWithTarget:v78 action:"primaryAction"];
      [*&v78[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_actionButton] addGestureRecognizer:v79];
      v80 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v78 action:"secondaryAction"];

      [*&v78[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_secondaryActionButton] addGestureRecognizer:v80];

      sub_100012DF0(v74, &qword_1006BC990, &unk_100558AC0);
      sub_100012DF0(v100, &unk_1006BB1B0, qword_10055C5C0);
      *&v78[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_delegate + 8] = &off_10062D1F8;
      swift_unknownObjectWeakAssign();
      v81 = [objc_allocWithZone(type metadata accessor for FMTransparentNavigationController()) initWithRootViewController:v78];
      [v2 presentViewController:v81 animated:1 completion:0];
      v82 = *(*&v2[v91] + 16);
      v83 = *&v2[v98] + OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel;
      swift_beginAccess();
      v85 = *(v83 + 16);
      v84 = *(v83 + 24);

      v86 = v82;
      sub_100424A30(v85, v84);

      (*(v92 + 8))(v96, v93);
    }
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100005B14(v23, qword_1006D4630);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "FMDeivceDetailViewController: Cannot present onboarding for unknown identifier", v26, 2u);
    }
  }
}

double sub_10020A0F0(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v29 = a3;
  v9 = type metadata accessor for FMIPSafeLocation();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100005B14(v13, qword_1006D4630);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "FMItemNotificationsViewController: Add Safe Location", v16, 2u);
  }

  v17 = *(v5 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource) + OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel;
  swift_beginAccess();
  v18 = *(v17 + 16);
  v21 = v17 + 24;
  v20 = *(v17 + 24);
  v19 = *(v21 + 8);
  if (!v19 || !*(v19 + 16))
  {
    sub_10007EBC0(&unk_1006AF770, &unk_1005542D0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_100552220;
    if (v20)
    {
      v24 = v18;
    }

    else
    {
      v24 = 0;
    }

    v25 = 0xE000000000000000;
    if (v20)
    {
      v25 = v20;
    }

    *(v23 + 32) = v24;
    *(v23 + 40) = v25;

    if ((a2 & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_15:

    (*(v10 + 16))(v12, a1, v9);
    type metadata accessor for FMIPAssignSafeLocationToAllSupportedBeaconsAction();
    swift_allocObject();
    v22 = FMIPAssignSafeLocationToAllSupportedBeaconsAction.init(location:)();
    goto LABEL_16;
  }

  if (a2)
  {
    goto LABEL_15;
  }

LABEL_8:
  (*(v10 + 16))(v12, a1, v9);
  type metadata accessor for FMIPAssignMultipleSafeLocationsItemAction();
  swift_allocObject();
  v22 = FMIPAssignMultipleSafeLocationsItemAction.init(beaconUUIDs:location:)();
LABEL_16:
  v26 = v22;
  v27 = swift_allocObject();
  *(v27 + 16) = v29;
  *(v27 + 24) = a4;

  sub_1000D6C5C(v26, sub_10021E964, v27);

  return result;
}

uint64_t sub_10020A424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(BOOL))
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100005B14(v7, qword_1006D4630);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136315138;
    swift_errorRetain();
    sub_10007EBC0(&qword_1006B9570, &qword_1005523F0);
    v12 = String.init<A>(describing:)();
    v14 = sub_100005B4C(v12, v13, &v16);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "FMDeivceDetailViewController: Add Safe Location completed with error: %s", v10, 0xCu);
    sub_100006060(v11);
  }

  return a5(a1 == 0);
}

void sub_10020A5C4()
{
  v1 = v0;
  v2 = sub_1001D73FC(&aBlock);
  v4 = v3;
  v5 = type metadata accessor for FMIPSeparationEvent();
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {
    FMIPSeparationEvent.addSafeLocationTapped.setter();
  }

  (v2)(&aBlock, 0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100005B14(v6, qword_1006D4630);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "FMDeviceDetailContentViewController: Left Behind Button Toggled", v9, 2u);
  }

  if (v1[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_pendingSafeLocationAdded] == 1)
  {
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1000C5474(sub_1002206A8, v10, 0, 0);
  }

  else
  {
    v11 = objc_opt_self();
    v12 = [v11 mainBundle];
    v61._object = 0x800000010057D660;
    v13._countAndFlagsBits = 0xD00000000000002ALL;
    v13._object = 0x8000000100586AB0;
    v14.value._object = 0x800000010057D640;
    v61._countAndFlagsBits = 0xD00000000000001BLL;
    v14.value._countAndFlagsBits = 0xD000000000000016;
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v14, v12, v15, v61);

    sub_10007EBC0(&unk_1006B20B0, &unk_1005523B0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_100552220;
    v18 = *&v1[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_separationAddress];
    v17 = *&v1[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_separationAddress + 8];
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = sub_10008EE84();
    if (v17)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = 0xE000000000000000;
    if (v17)
    {
      v20 = v17;
    }

    *(v16 + 32) = v19;
    *(v16 + 40) = v20;

    String.init(format:_:)();

    v21 = v11;
    v22 = [v11 mainBundle];
    v62._object = 0x800000010057D660;
    v23._countAndFlagsBits = 0xD00000000000002DLL;
    v23._object = 0x8000000100586AE0;
    v24.value._object = 0x800000010057D640;
    v62._countAndFlagsBits = 0xD00000000000001BLL;
    v24.value._countAndFlagsBits = 0xD000000000000016;
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v23, v24, v22, v25, v62);

    v26 = swift_allocObject();
    *(v26 + 16) = v1;
    v52 = v1;
    v27 = String._bridgeToObjectiveC()();

    v59 = sub_10021E838;
    v60 = v26;
    aBlock = _NSConcreteStackBlock;
    v56 = 1107296256;
    v57 = sub_100017328;
    v58 = &unk_10062D6D8;
    v28 = _Block_copy(&aBlock);

    v51 = objc_opt_self();
    v54 = [v51 actionWithTitle:v27 style:0 handler:v28];
    _Block_release(v28);

    v29 = v21;
    v30 = [v21 mainBundle];
    v63._object = 0x800000010057D660;
    v31._countAndFlagsBits = 0xD000000000000030;
    v31._object = 0x8000000100586B10;
    v32.value._object = 0x800000010057D640;
    v63._countAndFlagsBits = 0xD00000000000001BLL;
    v32.value._countAndFlagsBits = 0xD000000000000016;
    v33._countAndFlagsBits = 0;
    v33._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v31, v32, v30, v33, v63);

    v34 = String._bridgeToObjectiveC()();

    v35 = String._bridgeToObjectiveC()();

    v36 = [objc_opt_self() alertControllerWithTitle:v34 message:v35 preferredStyle:1];

    [v36 addAction:v54];
    v37 = [v29 mainBundle];
    v64._object = 0x800000010057D660;
    v38._countAndFlagsBits = 0xD000000000000034;
    v38._object = 0x8000000100586B50;
    v39.value._object = 0x800000010057D640;
    v64._countAndFlagsBits = 0xD00000000000001BLL;
    v39.value._countAndFlagsBits = 0xD000000000000016;
    v40._countAndFlagsBits = 0;
    v40._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v38, v39, v37, v40, v64);

    v41 = swift_allocObject();
    *(v41 + 16) = v52;
    v53 = v52;
    v42 = String._bridgeToObjectiveC()();

    v59 = sub_10021E878;
    v60 = v41;
    aBlock = _NSConcreteStackBlock;
    v56 = 1107296256;
    v57 = sub_100017328;
    v58 = &unk_10062D728;
    v43 = _Block_copy(&aBlock);

    v44 = [v51 actionWithTitle:v42 style:0 handler:v43];
    _Block_release(v43);

    [v36 addAction:v44];
    v45 = [v29 mainBundle];
    v46._countAndFlagsBits = 0xD000000000000013;
    v65._object = 0x800000010057B8F0;
    v46._object = 0x800000010057B8D0;
    v65._countAndFlagsBits = 0xD000000000000025;
    v47._countAndFlagsBits = 0;
    v47._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v46, 0, v45, v47, v65);

    v48 = String._bridgeToObjectiveC()();

    v59 = State.rawValue.getter;
    v60 = 0;
    aBlock = _NSConcreteStackBlock;
    v56 = 1107296256;
    v57 = sub_100017328;
    v58 = &unk_10062D750;
    v49 = _Block_copy(&aBlock);

    v50 = [v51 actionWithTitle:v48 style:0 handler:v49];
    _Block_release(v49);

    [v36 addAction:v50];
    [v53 presentViewController:v36 animated:1 completion:0];
  }
}

void sub_10020ADAC(char *a1)
{
  v2 = sub_10007EBC0(&unk_1006BB1B0, qword_10055C5C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v20[-v3];
  v5 = type metadata accessor for FMIPSafeLocation();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1001D73FC(v20);
  v11 = v10;
  v12 = type metadata accessor for FMIPSeparationEvent();
  if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
  {
    FMIPSeparationEvent.addToAllTapped.setter();
  }

  (v9)(v20, 0);
  v13 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_pendingSafeLocation;
  swift_beginAccess();
  sub_100007204(&a1[v13], v4, &unk_1006BB1B0, qword_10055C5C0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100012DF0(v4, &unk_1006BB1B0, qword_10055C5C0);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100005B14(v14, qword_1006D4630);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "FMDeviceDetailContentViewController: No pending safe location", v17, 2u);
    }
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v18 = swift_allocObject();
    *(v18 + 16) = a1;
    v19 = a1;
    sub_10020A0F0(v8, 1, sub_10021E924, v18);

    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_10020B0DC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v11 = *(v19 - 8);
  __chkstk_darwin(v19);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
  v14 = static OS_dispatch_queue.main.getter();
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  aBlock[4] = a4;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = a5;
  v16 = _Block_copy(aBlock);
  v17 = a2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10021E650(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640, &unk_100552B10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v20 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v19);
}

void sub_10020B3AC(char *a1)
{
  v2 = sub_10007EBC0(&unk_1006BB1B0, qword_10055C5C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  v5 = type metadata accessor for FMIPSafeLocation();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_pendingSafeLocation;
  swift_beginAccess();
  sub_100007204(&a1[v9], v4, &unk_1006BB1B0, qword_10055C5C0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100012DF0(v4, &unk_1006BB1B0, qword_10055C5C0);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100005B14(v10, qword_1006D4630);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "FMDeviceDetailContentViewController: No pending safe location", v13, 2u);
    }
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v14 = swift_allocObject();
    *(v14 + 16) = a1;
    v15 = a1;
    sub_10020A0F0(v8, 0, sub_10021E8C0, v14);

    (*(v6 + 8))(v8, v5);
  }
}

double sub_10020B668(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v41 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
    v40 = static OS_dispatch_queue.main.getter();
    v16 = swift_allocObject();
    *(v16 + 16) = a2;
    aBlock[4] = a4;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004AE4;
    aBlock[3] = a5;
    v17 = _Block_copy(aBlock);
    v18 = a2;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10021E650(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
    sub_100004044(&qword_1006AEDF0, &unk_1006B0640, &unk_100552B10);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v19 = v40;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v17);

    (*(v41 + 8))(v11, v9);
    (*(v13 + 8))(v15, v12);
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100005B14(v21, qword_1006D4630);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "FMDeviceDetailContentViewController: Add Safe Location failed", v24, 2u);
    }

    v25 = objc_opt_self();
    v26 = [v25 mainBundle];
    v44._object = 0x800000010057D660;
    v27._countAndFlagsBits = 0xD00000000000001ELL;
    v27._object = 0x8000000100586B90;
    v28.value._object = 0x800000010057D640;
    v44._countAndFlagsBits = 0xD00000000000001BLL;
    v28.value._countAndFlagsBits = 0xD000000000000016;
    v29._countAndFlagsBits = 0;
    v29._object = 0xE000000000000000;
    v30 = NSLocalizedString(_:tableName:bundle:value:comment:)(v27, v28, v26, v29, v44);

    v31 = [v25 mainBundle];
    v45._object = 0x800000010057D660;
    v32._countAndFlagsBits = 0xD00000000000002ALL;
    v32._object = 0x8000000100586BB0;
    v33.value._object = 0x800000010057D640;
    v45._countAndFlagsBits = 0xD00000000000001BLL;
    v33.value._countAndFlagsBits = 0xD000000000000016;
    v34._countAndFlagsBits = 0;
    v34._object = 0xE000000000000000;
    v35 = NSLocalizedString(_:tableName:bundle:value:comment:)(v32, v33, v31, v34, v45);

    v36 = [v25 mainBundle];
    v46._object = 0x8000000100579B60;
    v37._countAndFlagsBits = 0x4F545455425F4B4FLL;
    v37._object = 0xEF454C5449545F4ELL;
    v46._countAndFlagsBits = 0xD000000000000021;
    v38._countAndFlagsBits = 0;
    v38._object = 0xE000000000000000;
    v39 = NSLocalizedString(_:tableName:bundle:value:comment:)(v37, 0, v36, v38, v46);

    sub_10027CEB4(v30._countAndFlagsBits, v30._object, v35._countAndFlagsBits, v35._object, v39._countAndFlagsBits, v39._object);
  }

  return result;
}

uint64_t sub_10020BBC4(uint64_t a1)
{
  v2 = type metadata accessor for FMDeviceDetailViewModel(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a1 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_pendingSafeLocationAdded) = 1;
  v5 = *(a1 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource);
  v6 = OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel;
  swift_beginAccess();
  v7 = sub_10022017C(v5 + v6, v4, type metadata accessor for FMDeviceDetailViewModel);
  sub_1001F995C(v7, v8, v9);
  return sub_1002201E4(v4, type metadata accessor for FMDeviceDetailViewModel);
}

void sub_10020BCFC()
{
  v1 = sub_10007EBC0(&unk_1006BBCE0, &unk_1005534C0);
  __chkstk_darwin(v1 - 8);
  v3 = &v101 - v2;
  v4 = type metadata accessor for FMIPDevice();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v108 = (&v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v111 = &v101 - v8;
  __chkstk_darwin(v9);
  v107 = &v101 - v10;
  v110 = v11;
  __chkstk_darwin(v12);
  v14 = &v101 - v13;
  v109 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator;
  v15 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource;
  v16 = (*&v0[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource] + OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel);
  swift_beginAccess();
  v17 = *v16;
  v18 = v16[1];

  v19 = v17;
  v20 = v4;
  v21 = v5;
  sub_1000E512C(v19, v18, v3);

  if ((*(v5 + 48))(v3, 1, v20) == 1)
  {
    sub_100012DF0(v3, &unk_1006BBCE0, &unk_1005534C0);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100005B14(v22, qword_1006D4630);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "FMDeviceDetailContentViewController: cannot remove an unknown device", v25, 2u);
    }
  }

  else
  {
    v26 = *(v5 + 32);
    v26(v14, v3, v20);
    v105 = v0;
    v27 = *&v0[v15] + OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel;
    swift_beginAccess();
    v28 = *(v27 + *(type metadata accessor for FMDeviceDetailViewModel(0) + 92) + 2);
    v106 = v14;
    if ((v28 & 0x10) != 0)
    {
      v109 = v21 + 32;
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v108 = v26;
      v43 = type metadata accessor for Logger();
      sub_100005B14(v43, qword_1006D4630);
      v44 = *(v21 + 16);
      v45 = v107;
      v104 = v21 + 16;
      v103 = v44;
      v44(v107, v14, v20);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.default.getter();
      v48 = os_log_type_enabled(v46, v47);
      v102 = v21;
      if (v48)
      {
        v49 = swift_slowAlloc();
        v50 = v20;
        v51 = swift_slowAlloc();
        aBlock[0] = v51;
        *v49 = 136315138;
        v52 = FMIPDevice.name.getter();
        v54 = v53;
        v55 = v45;
        v56 = v50;
        (*(v21 + 8))(v55, v50);
        v57 = sub_100005B4C(v52, v54, aBlock);

        *(v49 + 4) = v57;
        _os_log_impl(&_mh_execute_header, v46, v47, "FMDeviceDetailContentViewController: Remove button selected but needs repair for device: %s", v49, 0xCu);
        sub_100006060(v51);
      }

      else
      {

        (*(v21 + 8))(v45, v20);
        v56 = v20;
      }

      v73 = objc_opt_self();
      v74 = [v73 mainBundle];
      v113._object = 0x8000000100586960;
      v75._countAndFlagsBits = 0xD000000000000019;
      v75._object = 0x8000000100586940;
      v113._countAndFlagsBits = 0xD00000000000002BLL;
      v76._countAndFlagsBits = 0;
      v76._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v75, 0, v74, v76, v113);

      v77 = [v73 mainBundle];
      v114._object = 0x80000001005869B0;
      v78._countAndFlagsBits = 0xD00000000000001CLL;
      v78._object = 0x8000000100586990;
      v114._countAndFlagsBits = 0xD00000000000002ELL;
      v79._countAndFlagsBits = 0;
      v79._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v78, 0, v77, v79, v114);

      v80 = String._bridgeToObjectiveC()();

      v81 = String._bridgeToObjectiveC()();

      v82 = [objc_opt_self() alertControllerWithTitle:v80 message:v81 preferredStyle:1];

      v83 = [v73 mainBundle];
      v115._object = 0x800000010057B8F0;
      v84._object = 0x800000010057B8D0;
      v115._countAndFlagsBits = 0xD000000000000025;
      v84._countAndFlagsBits = 0xD000000000000013;
      v85._countAndFlagsBits = 0;
      v85._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v84, 0, v83, v85, v115);

      v86 = String._bridgeToObjectiveC()();

      v107 = objc_opt_self();
      v87 = [v107 actionWithTitle:v86 style:1 handler:0];

      [v82 addAction:v87];
      v88 = [v73 mainBundle];
      v116._object = 0x800000010057B8A0;
      v89._countAndFlagsBits = 0xD000000000000015;
      v89._object = 0x800000010057B880;
      v116._countAndFlagsBits = 0xD000000000000027;
      v90._countAndFlagsBits = 0;
      v90._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v89, 0, v88, v90, v116);

      v91 = v111;
      v92 = v106;
      v103(v111, v106, v56);
      v93 = v102;
      v94 = (*(v102 + 80) + 24) & ~*(v102 + 80);
      v95 = swift_allocObject();
      v96 = v105;
      *(v95 + 16) = v105;
      v108(v95 + v94, v91, v56);
      v97 = v96;
      v98 = String._bridgeToObjectiveC()();

      aBlock[4] = sub_10021E710;
      aBlock[5] = v95;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100017328;
      aBlock[3] = &unk_10062D660;
      v99 = _Block_copy(aBlock);

      v100 = [v107 actionWithTitle:v98 style:0 handler:v99];
      _Block_release(v99);

      [v82 addAction:v100];
      [v97 presentViewController:v82 animated:1 completion:0];

      (*(v93 + 8))(v92, v56);
    }

    else
    {
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      sub_100005B14(v29, qword_1006D4630);
      v30 = *(v21 + 16);
      v31 = v108;
      v30(v108, v14, v20);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = v30;
        v36 = swift_slowAlloc();
        aBlock[0] = v36;
        *v34 = 136315138;
        v37 = FMIPDevice.name.getter();
        v38 = v31;
        v39 = v20;
        v41 = v40;
        v110 = *(v21 + 8);
        v110(v38, v39);
        v42 = sub_100005B4C(v37, v41, aBlock);
        v20 = v39;

        *(v34 + 4) = v42;
        _os_log_impl(&_mh_execute_header, v32, v33, "FMDeviceDetailContentViewController: Remove Accessory Device %s", v34, 0xCu);
        sub_100006060(v36);
        v30 = v35;
      }

      else
      {

        v110 = *(v21 + 8);
        v110(v31, v20);
      }

      v58 = v105;
      v59 = v106;
      v60 = v111;
      v30(v111, v106, v20);
      v61 = objc_allocWithZone(type metadata accessor for FMRemoveDeviceViewController(0));

      v63 = sub_1005047C0(v62, v60);
      objc_allocWithZone(type metadata accessor for FMTransparentNavigationController());
      v64 = v63;
      v65 = sub_1000CC510(v64, 2);
      [v65 setDelegate:v65];
      v66 = qword_1006AEC30;
      v67 = v65;
      if (v66 != -1)
      {
        swift_once();
      }

      v68 = [objc_opt_self() mainScreen];
      [v68 bounds];
      v70 = v69;
      v72 = v71;

      [v67 setPreferredContentSize:{fmin(v70, 520.0), fmin(v72, 720.0)}];
      [v58 presentViewController:v67 animated:1 completion:0];

      v110(v59, v20);
    }
  }
}

double sub_10020C928(uint64_t a1, char *a2, uint64_t a3)
{
  v5 = type metadata accessor for FMIPDevice();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v9 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a3, v5, v8);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = (v7 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  (*(v6 + 32))(v12 + v10, v9, v5);
  *(v12 + v11) = a2;

  sub_1000DE3B4(a3, a2, sub_10021E784, v12);

  return result;
}

void sub_10020CAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = type metadata accessor for FMIPDevice();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v67 - v13;
  __chkstk_darwin(v15);
  v17 = v67 - v16;
  if (!a2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100005B14(v25, qword_1006D4630);
    (*(v9 + 16))(v17, a4, v8);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v26, v27))
    {

      (*(v9 + 8))(v17, v8);
      return;
    }

    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v68 = v29;
    *v28 = 136315138;
    v30 = FMIPDevice.name.getter();
    v32 = v31;
    (*(v9 + 8))(v17, v8);
    v33 = sub_100005B4C(v30, v32, &v68);

    *(v28 + 4) = v33;
    v34 = "FMDeviceDetailContentViewController: Repair device %s succeeded";
    goto LABEL_20;
  }

  swift_getErrorValue();
  v18 = sub_100271E80(v67[1], v67[2]);
  v20 = v19;
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (v20)
  {
    if (v18 == v21 && v20 == v22)
    {
    }

    else
    {
      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v24 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    swift_getErrorValue();
    if (sub_100271D20(v67[5], v67[6]) == -7003)
    {
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      sub_100005B14(v35, qword_1006D4630);
      (*(v9 + 16))(v11, a4, v8);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v26, v27))
      {

        (*(v9 + 8))(v11, v8);
        return;
      }

      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v68 = v29;
      *v28 = 136315138;
      v36 = FMIPDevice.name.getter();
      v38 = v37;
      (*(v9 + 8))(v11, v8);
      v39 = sub_100005B4C(v36, v38, &v68);

      *(v28 + 4) = v39;
      v34 = "FMDevicesListDataSource: Repair device %s, user cancelled auth.";
LABEL_20:
      _os_log_impl(&_mh_execute_header, v26, v27, v34, v28, 0xCu);
      sub_100006060(v29);

      return;
    }
  }

  else
  {
  }

LABEL_21:
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  sub_100005B14(v40, qword_1006D4630);
  (*(v9 + 16))(v14, a4, v8);
  swift_errorRetain();
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    *v43 = 136315394;
    v44 = FMIPDevice.name.getter();
    v45 = v8;
    v47 = v46;
    (*(v9 + 8))(v14, v45);
    v48 = sub_100005B4C(v44, v47, &v68);

    *(v43 + 4) = v48;
    *(v43 + 12) = 2080;
    v67[8] = a2;
    swift_errorRetain();
    sub_10007EBC0(&qword_1006B9570, &qword_1005523F0);
    v49 = String.init<A>(describing:)();
    v51 = sub_100005B4C(v49, v50, &v68);

    *(v43 + 14) = v51;
    _os_log_impl(&_mh_execute_header, v41, v42, "FMDeviceDetailContentViewController: Repair device %s failed with error: %s", v43, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v9 + 8))(v14, v8);
  }

  v52 = objc_opt_self();
  v53 = [v52 mainBundle];
  v54._countAndFlagsBits = 0xD00000000000001FLL;
  v69._object = 0x8000000100586A00;
  v54._object = 0x80000001005869E0;
  v69._countAndFlagsBits = 0xD000000000000031;
  v55._countAndFlagsBits = 0;
  v55._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v54, 0, v53, v55, v69);

  v56 = [v52 mainBundle];
  v70._object = 0x8000000100586A70;
  v57._object = 0x8000000100586A40;
  v70._countAndFlagsBits = 0xD000000000000033;
  v57._countAndFlagsBits = 0xD000000000000021;
  v58._countAndFlagsBits = 0;
  v58._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v57, 0, v56, v58, v70);

  v59 = String._bridgeToObjectiveC()();

  v60 = String._bridgeToObjectiveC()();

  v61 = [objc_opt_self() alertControllerWithTitle:v59 message:v60 preferredStyle:1];

  v62 = [v52 mainBundle];
  v71._object = 0x8000000100579B60;
  v63._countAndFlagsBits = 0x4F545455425F4B4FLL;
  v63._object = 0xEF454C5449545F4ELL;
  v64._countAndFlagsBits = 0;
  v64._object = 0xE000000000000000;
  v71._countAndFlagsBits = 0xD000000000000021;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v63, 0, v62, v64, v71);

  v65 = String._bridgeToObjectiveC()();

  v66 = [objc_opt_self() actionWithTitle:v65 style:0 handler:0];

  [v61 addAction:v66];
  [a5 presentViewController:v61 animated:1 completion:0];
}

void sub_10020D468(uint64_t a1)
{
  sub_10020DB1C(319, &qword_1006B3F80, &type metadata accessor for Date);
  if (v1 <= 0x3F)
  {
    sub_10020DB1C(319, &qword_1006B67A8, &type metadata accessor for FMIPAirPodsPlaySoundEvent);
    if (v2 <= 0x3F)
    {
      sub_10020DB1C(319, &qword_1006BB190, &type metadata accessor for FMIPSafeLocation);
      if (v3 <= 0x3F)
      {
        sub_10020DB1C(319, &qword_1006B67B0, &type metadata accessor for FMIPSeparationEvent);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

double sub_10020D6E8(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v24 = a1;
  v2 = type metadata accessor for FMIPDevice();
  v25 = *(v2 - 8);
  v26 = v2;
  __chkstk_darwin(v2);
  v23 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FMIPAnalyticsProductType();
  __chkstk_darwin(v4 - 8);
  v21 = type metadata accessor for FMIPAnalyticsOwnerContext();
  v5 = *(v21 - 8);
  __chkstk_darwin(v21);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FMIPAnalyticsActionType();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FMIPActionEvent();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, v22, v8, v14);

  v17 = v24;
  v18 = FMIPDevice.isOwned.getter();
  v19 = &enum case for FMIPAnalyticsOwnerContext.owner(_:);
  if ((v18 & 1) == 0)
  {
    v19 = &enum case for FMIPAnalyticsOwnerContext.shared(_:);
  }

  (*(v5 + 104))(v7, *v19, v21);
  (*(v25 + 16))(v23, v17, v26);
  FMIPAnalyticsProductType.init(device:)();
  FMIPActionEvent.init(type:ownerContext:productType:)();
  FMIPManager.enqueue(actionEvent:)();
  (*(v13 + 8))(v16, v12);

  return result;
}

uint64_t sub_10020DA3C()
{
  v1 = type metadata accessor for FMDeviceDetailViewModel(0);
  __chkstk_darwin(v1 - 8);
  v3 = (&v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = *(v0 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource);
  v5 = OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel;
  swift_beginAccess();
  sub_10022017C(v4 + v5, v3, type metadata accessor for FMDeviceDetailViewModel);
  sub_1001DFC5C(v3);
  return sub_1002201E4(v3, type metadata accessor for FMDeviceDetailViewModel);
}

void sub_10020DB1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10020DB78(uint64_t a1)
{
  sub_10000905C(0, &qword_1006B4980, NSObject_ptr);
  result = static NSObject.== infix(_:_:)();
  if (result)
  {

    return sub_1004244CC();
  }

  return result;
}

void sub_10020DBEC()
{
  v1 = type metadata accessor for FMDeviceDetailViewModel(0);
  __chkstk_darwin(v1 - 8);
  v3 = (&v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100208F2C(0);
  v4 = *(v0 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_showSeparationAttention);
  *(v0 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_showSeparationAttention) = 0;
  if (v4 == 1)
  {
    v5 = *(v0 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource);
    v6 = OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel;
    swift_beginAccess();
    sub_10022017C(v5 + v6, v3, type metadata accessor for FMDeviceDetailViewModel);
    sub_1001DFC5C(v3);
    sub_1002201E4(v3, type metadata accessor for FMDeviceDetailViewModel);
  }
}

double sub_10020DCF8(char *a1, uint64_t a2)
{
  v4 = type metadata accessor for FMDeviceDetailViewModel(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = sub_10007EBC0(&unk_1006BEF30, &qword_100554550);
  *&result = __chkstk_darwin(v7 - 8).n128_u64[0];
  v10 = &v16 - v9;
  v11 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_connectionMaterialTask;
  if (!*&a1[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_connectionMaterialTask] && !*&a1[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_btDeviceDiscoveryToken])
  {
    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
    sub_10022017C(a2, &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FMDeviceDetailViewModel);
    v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    sub_10021FB38(&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for FMDeviceDetailViewModel);
    *(v14 + ((v6 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
    v15 = a1;
    *&a1[v11] = sub_10047F498(0, 0, v10, &unk_100558B98, v14);
  }

  return result;
}

uint64_t sub_10020DF08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[33] = a4;
  v5[34] = a5;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v5[35] = v6;
  v5[36] = *(v6 - 8);
  v5[37] = swift_task_alloc();
  v7 = type metadata accessor for DispatchQoS();
  v5[38] = v7;
  v5[39] = *(v7 - 8);
  v5[40] = swift_task_alloc();
  sub_10007EBC0(&unk_1006B20C0, &unk_100552E10);
  v5[41] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v5[42] = v8;
  v5[43] = *(v8 - 8);
  v5[44] = swift_task_alloc();
  v5[45] = swift_task_alloc();

  return _swift_task_switch(sub_10020E0C4, 0, 0);
}

uint64_t sub_10020E0C4()
{
  if (!*(v0[33] + 24))
  {
LABEL_7:

    v6 = v0[1];

    return v6();
  }

  v1 = v0[42];
  v2 = v0[43];
  v3 = v0[41];
  UUID.init(uuidString:)();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100012DF0(v0[41], &unk_1006B20C0, &unk_100552E10);
    goto LABEL_7;
  }

  (*(v0[43] + 32))(v0[45], v0[41], v0[42]);
  static Task<>.checkCancellation()();
  v0[46] = 0;
  type metadata accessor for MainActor();
  v0[47] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10020E56C, v5, v4);
}

uint64_t sub_10020E56C()
{
  v1 = *(v0 + 272);

  v2 = *(v1 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_localFindableConnectionMaterialMonitoringSession);
  *(v0 + 384) = v2;
  v3 = v2;

  return _swift_task_switch(sub_10020E5F0, 0, 0);
}

uint64_t sub_10020E5F0()
{
  v1 = v0[48];
  if (v1)
  {
    v2 = v1;
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v0[49] = isa;
    v0[2] = v0;
    v0[7] = v0 + 31;
    v0[3] = sub_10020E97C;
    v4 = swift_continuation_init();
    v0[17] = sub_10007EBC0(&qword_1006B6988, &unk_100558BA0);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10020F6A0;
    v0[13] = &unk_10062F898;
    v0[14] = v4;
    [v2 peripheralConnectionMaterialForAccessoryIdentifier:isa completion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    v18 = v0[42];
    v19 = v0[45];
    v15 = v0[39];
    v5 = v0[37];
    v16 = v0[38];
    v17 = v0[43];
    v7 = v0[35];
    v6 = v0[36];
    v8 = v0[34];
    v14 = v0[40];
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v0[22] = sub_1002200EC;
    v0[23] = v9;
    v0[18] = _NSConcreteStackBlock;
    v0[19] = 1107296256;
    v0[20] = sub_100004AE4;
    v0[21] = &unk_10062F870;
    v10 = _Block_copy(v0 + 18);
    v11 = v8;
    static DispatchQoS.unspecified.getter();
    v0[30] = _swiftEmptyArrayStorage;
    sub_10021E650(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
    sub_100004044(&qword_1006AEDF0, &unk_1006B0640, &unk_100552B10);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v10);
    (*(v6 + 8))(v5, v7);
    (*(v15 + 8))(v14, v16);
    (*(v17 + 8))(v19, v18);

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_10020E97C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 400) = v2;
  if (v2)
  {

    v3 = sub_10020F2E0;
  }

  else
  {
    v3 = sub_10020EA94;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10020EA94()
{
  v70 = v0;
  v1 = v0[46];
  v2 = v0[31];

  static Task<>.checkCancellation()();
  v3 = v0[48];
  v4 = &off_100550000;
  if (v1)
  {

    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100005B14(v5, qword_1006D4630);
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      swift_errorRetain();
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&_mh_execute_header, v6, v7, "FMDeviceDetailContentViewController: Attempting to get connection material failed with error: %@", v8, 0xCu);
      sub_100012DF0(v9, &unk_1006AF760, &qword_100552DB0);
    }

    else
    {
    }
  }

  else
  {
    v67 = v2;

    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v12 = v0[44];
    v11 = v0[45];
    v14 = v0[42];
    v13 = v0[43];
    v15 = type metadata accessor for Logger();
    sub_100005B14(v15, qword_1006D4630);
    (*(v13 + 16))(v12, v11, v14);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[43];
    v20 = v0[44];
    v21 = v0[42];
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v69 = v23;
      *v22 = 136315138;
      sub_10021E650(&qword_1006B7830, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      (*(v19 + 8))(v20, v21);
      v27 = sub_100005B4C(v24, v26, &v69);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v16, v17, "FMDeviceDetailContentViewController: Got pheripheral connection material successfully for %s", v22, 0xCu);
      sub_100006060(v23);
    }

    else
    {

      (*(v19 + 8))(v20, v21);
    }

    v28 = v0[40];
    v62 = v0[39];
    v64 = v0[38];
    v57 = v0[37];
    v59 = v0[48];
    v29 = v0[35];
    v60 = v0[36];
    v30 = v0[34];
    v31 = objc_opt_self();
    v32 = [v67 btAddressWithTypeData];
    v33 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10000A858(v33, v35);
    v37 = [v67 irkData];
    v38 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    v41 = Data._bridgeToObjectiveC()().super.isa;
    sub_10000A858(v38, v40);
    v42 = [v31 generateBluetoothDeviceTokenWithPublicAddress:isa IRK:v41];

    v43 = swift_allocObject();
    *(v43 + 16) = v30;
    *(v43 + 24) = v42;
    v0[28] = sub_100220130;
    v0[29] = v43;
    v0[24] = _NSConcreteStackBlock;
    v0[25] = 1107296256;
    v0[26] = sub_100004AE4;
    v0[27] = &unk_10062F8E8;
    v44 = _Block_copy(v0 + 24);
    v45 = v30;
    v46 = v42;
    static DispatchQoS.unspecified.getter();
    v0[32] = _swiftEmptyArrayStorage;
    sub_10021E650(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
    sub_100004044(&qword_1006AEDF0, &unk_1006B0640, &unk_100552B10);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    v47 = v44;
    v4 = &off_100550000;
    _Block_release(v47);

    (*(v60 + 8))(v57, v29);
    (*(v62 + 8))(v28, v64);
  }

  aBlock = v0[42];
  v68 = v0[45];
  v61 = v0[39];
  v48 = v0[37];
  v63 = v0[38];
  v65 = v0[43];
  v50 = v0[35];
  v49 = v0[36];
  v51 = v0[34];
  v58 = v0[40];
  v52 = swift_allocObject();
  *(v52 + 16) = v51;
  v0[22] = sub_1002200EC;
  v0[23] = v52;
  v0[18] = _NSConcreteStackBlock;
  v0[19] = *(v4 + 130);
  v0[20] = sub_100004AE4;
  v0[21] = &unk_10062F870;
  v53 = _Block_copy(v0 + 18);
  v54 = v51;
  static DispatchQoS.unspecified.getter();
  v0[30] = _swiftEmptyArrayStorage;
  sub_10021E650(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640, &unk_100552B10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v53);
  (*(v49 + 8))(v48, v50);
  (*(v61 + 8))(v58, v63);
  (*(v65 + 8))(v68, aBlock);

  v55 = v0[1];

  return v55();
}

uint64_t sub_10020F2E0(uint64_t a1)
{
  v2 = v1[49];
  v3 = v1[48];
  swift_willThrow();

  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100005B14(v4, qword_1006D4630);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "FMDeviceDetailContentViewController: Attempting to get connection material failed with error: %@", v7, 0xCu);
    sub_100012DF0(v8, &unk_1006AF760, &qword_100552DB0);
  }

  else
  {
  }

  v23 = v1[42];
  v24 = v1[45];
  v20 = v1[39];
  v10 = v1[37];
  v21 = v1[38];
  v22 = v1[43];
  v12 = v1[35];
  v11 = v1[36];
  v13 = v1[34];
  v19 = v1[40];
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v1[22] = sub_1002200EC;
  v1[23] = v14;
  v1[18] = _NSConcreteStackBlock;
  v1[19] = 1107296256;
  v1[20] = sub_100004AE4;
  v1[21] = &unk_10062F870;
  v15 = _Block_copy(v1 + 18);
  v16 = v13;
  static DispatchQoS.unspecified.getter();
  v1[30] = _swiftEmptyArrayStorage;
  sub_10021E650(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640, &unk_100552B10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v11 + 8))(v10, v12);
  (*(v20 + 8))(v19, v21);
  (*(v22 + 8))(v24, v23);

  v17 = v1[1];

  return v17();
}

uint64_t sub_10020F6A0(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_1000244BC((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_10007EBC0(&unk_1006AF7B0, &qword_100552E20);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

void sub_10020F7E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for FindingMode(0);
  __chkstk_darwin(v4);
  v6 = (&v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10007EBC0(&unk_1006B20C0, &unk_100552E10);
  __chkstk_darwin(v7 - 8);
  v72 = &v65 - v8;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FMIPDevice();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v73 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v65 - v17;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v74 = v13;
    v66 = v12;
    v68 = v4;
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100005B14(v21, qword_1006D4630);
    v22 = v20;
    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    v71 = v24;
    v25 = os_log_type_enabled(v23, v24);
    v26 = &qword_1006B6000;
    v67 = v6;
    v69 = v10;
    v70 = v9;
    v75 = v22;
    if (v25)
    {
      v27 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v76 = v65;
      *v27 = 136315394;
      v28 = *(*&v22[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource] + 40);
      v29 = *(*v28 + class metadata base offset for ManagedBuffer + 16);
      v30 = (*(*v28 + 48) + 3) & 0x1FFFFFFFCLL;

      os_unfair_lock_lock((v28 + v30));
      v31 = v74;
      (*(v14 + 16))(v18, v28 + v29, v74);
      os_unfair_lock_unlock((v28 + v30));

      v32 = FMIPDevice.baIdentifier.getter();
      v34 = v33;
      (*(v14 + 8))(v18, v31);
      v77 = v32;
      v78 = v34;
      sub_10007EBC0(&qword_1006AF8F0, &qword_100555D20);
      v35 = String.init<A>(describing:)();
      v37 = sub_100005B4C(v35, v36, &v76);

      *(v27 + 4) = v37;
      *(v27 + 12) = 2080;
      v77 = a2;
      swift_errorRetain();
      sub_10007EBC0(&qword_1006B9570, &qword_1005523F0);
      v38 = String.init<A>(describing:)();
      v40 = sub_100005B4C(v38, v39, &v76);

      *(v27 + 14) = v40;
      v26 = &qword_1006B6000;
      _os_log_impl(&_mh_execute_header, v23, v71, "FMDeviceDetailContentViewController, fast advertisement stopped for device: %s. With error?: %s", v27, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v31 = v74;
    }

    v41 = v26[181];
    v42 = *(*&v75[v41] + 40);
    v43 = *(*v42 + class metadata base offset for ManagedBuffer + 16);
    v44 = (*(*v42 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v42 + v44));
    v45 = *(v14 + 16);
    v45(v18, v42 + v43, v31);
    os_unfair_lock_unlock((v42 + v44));

    v46 = FMIPDevice.isLocalFindable.getter();
    v47 = *(v14 + 8);
    v47(v18, v31);
    if (v46)
    {
      v48 = v75;
      v49 = *&v75[v41];
      v50 = v49 + OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel;
      swift_beginAccess();
      if (*(v50 + *(type metadata accessor for FMDeviceDetailViewModel(0) + 156)) == 1)
      {
        v51 = *(v49 + 40);
        v52 = *(*v51 + class metadata base offset for ManagedBuffer + 16);
        v53 = (*(*v51 + 48) + 3) & 0x1FFFFFFFCLL;

        os_unfair_lock_lock((v51 + v53));
        v54 = v51 + v52;
        v56 = v73;
        v55 = v74;
        v45(v73, v54, v74);
        os_unfair_lock_unlock((v51 + v53));

        FMIPDevice.baIdentifier.getter();
        v58 = v57;
        v47(v56, v55);
        if (v58)
        {
          v59 = v72;
          UUID.init(uuidString:)();

          v61 = v69;
          v60 = v70;
          if ((*(v69 + 48))(v59, 1, v70) == 1)
          {

            sub_100012DF0(v59, &unk_1006B20C0, &unk_100552E10);
            return;
          }

          v62 = v66;
          (*(v61 + 32))(v66, v59, v60);
          v63 = *(v61 + 16);
          v64 = v67;
          v63(v67, v62, v60);
          swift_storeEnumTagMultiPayload();
          sub_100162FAC(v64);
          sub_1002201E4(v64, type metadata accessor for FindingMode);
          v63(v64, v62, v60);
          swift_storeEnumTagMultiPayload();
          sub_100458B70(v64);
          sub_1002201E4(v64, type metadata accessor for FindingMode);
          (*(v61 + 8))(v62, v60);
        }
      }
    }

    else
    {
    }
  }
}

void sub_10020FFF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void (*a6)(void), uint64_t a7)
{
  v13 = type metadata accessor for FMIPItemActionStatus();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v28 = a1;
    v29 = a7;
    swift_errorRetain();
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100005B14(v18, qword_1006D4630);
    swift_errorRetain();

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v27 = a6;
      v22 = v21;
      v31 = swift_slowAlloc();
      *v22 = 136315394;
      *(v22 + 4) = sub_100005B4C(a4, a5, &v31);
      *(v22 + 12) = 2080;
      swift_getErrorValue();
      v23 = Error.localizedDescription.getter();
      v25 = sub_100005B4C(v23, v24, &v31);

      *(v22 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v19, v20, "FMDeviceDetailContentViewController: Failed to play sound for item identifier: %s - error: %s", v22, 0x16u);
      swift_arrayDestroy();

      a6 = v27;
    }

    else
    {
    }
  }

  if (a6)
  {
    (*(v14 + 104))(v17, enum case for FMIPItemActionStatus.success(_:), v13, v15);
    sub_10021E650(&qword_1006B6898, &type metadata accessor for FMIPItemActionStatus, &protocol conformance descriptor for FMIPItemActionStatus);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    (*(v14 + 8))(v17, v13);
    a6(v31 == v30);
  }
}

uint64_t sub_100210320(char a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for FMDeviceDetailViewModel(0);
  __chkstk_darwin(v6);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 24;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100005B14(v9, qword_1006D4630);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22[0] = v13;
    *v12 = 67109378;
    *(v12 + 4) = a1 & 1;
    *(v12 + 8) = 2080;
    if (a2)
    {
      swift_getErrorValue();
      v14 = Error.localizedDescription.getter();
      v16 = v15;
    }

    else
    {
      v16 = 0xE300000000000000;
      v14 = 7104878;
    }

    v17 = sub_100005B4C(v14, v16, v22);

    *(v12 + 10) = v17;
    _os_log_impl(&_mh_execute_header, v10, v11, "FMDeviceDetailContentViewController: isRangingServiceAvailable: %{BOOL}d, error: %s", v12, 0x12u);
    sub_100006060(v13);
  }

  *(v3 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_isRangingAvailable) = a1 & 1;
  v18 = *(v3 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource) + OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel;
  swift_beginAccess();
  v19 = *(v18 + *(v6 + 92));
  sub_10022017C(v18, v8, type metadata accessor for FMDeviceDetailViewModel);
  sub_1001E3A7C(v8, (v19 & 0x1400) != 0);
  return sub_1002201E4(v8, type metadata accessor for FMDeviceDetailViewModel);
}

void sub_1002105F0(uint64_t a1, void *a2, uint64_t a3)
{
  v80 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v85 = *(v5 - 8);
  v86 = v5;
  __chkstk_darwin(v5);
  v83 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for DispatchQoS();
  v82 = *(v84 - 8);
  __chkstk_darwin(v84);
  v81 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v10;
  __chkstk_darwin(v12);
  v79 = &v77 - v13;
  v14 = type metadata accessor for FMIPDevice();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = a1;
  v89 = UUID.uuidString.getter();
  v19 = v18;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v21 = *(Strong + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource), v22 = Strong, , v22, v23 = *(v21 + 40), v24 = *v23, v87 = v19, v88 = v9, v25 = v11, v26 = v17, v27 = v14, v28 = v8, v29 = a3, v30 = *(v24 + class metadata base offset for ManagedBuffer + 16), v31 = (*(v24 + 48) + 3) & 0x1FFFFFFFCLL, , os_unfair_lock_lock((v23 + v31)), v32 = v23 + v30, v33 = v29, v8 = v28, v14 = v27, v17 = v26, v11 = v25, v34 = v87, (*(v15 + 16))(v17, v32, v14), v35 = (v23 + v31), v9 = v88, os_unfair_lock_unlock(v35), , , v36 = FMIPDevice.baIdentifier.getter(), v38 = v37, (*(v15 + 8))(v17, v14), v38))
  {
    if (v89 == v36 && v38 == v34)
    {

      goto LABEL_14;
    }

    v59 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v59)
    {
LABEL_14:
      swift_beginAccess();
      v60 = swift_unknownObjectWeakLoadStrong();
      if (v60)
      {
        v61 = v9;
        v62 = v60;
        v63 = *(v60 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_connectionMaterialUpdateQueue);

        v64 = v79;
        (*(v61 + 2))(v79, v90, v8);
        v65 = (v61[80] + 16) & ~v61[80];
        v66 = (v78 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
        v67 = swift_allocObject();
        (*(v61 + 4))(v67 + v65, v64, v8);
        v68 = v80;
        *(v67 + v66) = v80;
        *(v67 + ((v66 + 15) & 0xFFFFFFFFFFFFFFF8)) = v33;
        aBlock[4] = sub_100220264;
        aBlock[5] = v67;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100004AE4;
        aBlock[3] = &unk_10062FA50;
        v69 = _Block_copy(aBlock);
        v70 = v68;

        v71 = v81;
        static DispatchQoS.unspecified.getter();
        v92 = _swiftEmptyArrayStorage;
        sub_10021E650(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
        sub_100004044(&qword_1006AEDF0, &unk_1006B0640, &unk_100552B10);
        v72 = v83;
        v73 = v86;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v69);

        (*(v85 + 8))(v72, v73);
        (*(v82 + 8))(v71, v84);
      }

      return;
    }
  }

  else
  {
  }

  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  sub_100005B14(v39, qword_1006D4630);
  (*(v9 + 2))(v11, v90, v8);

  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v40, v41))
  {
    LODWORD(v90) = v41;
    v88 = v17;
    v42 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v92 = v89;
    *v42 = 136315394;
    sub_10021E650(&qword_1006B7830, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v43 = dispatch thunk of CustomStringConvertible.description.getter();
    v45 = v44;
    (*(v9 + 1))(v11, v8);
    v46 = sub_100005B4C(v43, v45, &v92);

    *(v42 + 4) = v46;
    *(v42 + 12) = 2080;
    swift_beginAccess();
    v47 = swift_unknownObjectWeakLoadStrong();
    if (v47)
    {
      v48 = *(v47 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource);
      v49 = v47;

      v50 = *(v48 + 40);
      v51 = v14;
      v52 = *(*v50 + class metadata base offset for ManagedBuffer + 16);
      v53 = (*(*v50 + 48) + 3) & 0x1FFFFFFFCLL;

      os_unfair_lock_lock((v50 + v53));
      v54 = v50 + v52;
      v55 = v88;
      (*(v15 + 16))(v88, v54, v51);
      os_unfair_lock_unlock((v50 + v53));

      v56 = FMIPDevice.baIdentifier.getter();
      v58 = v57;
      (*(v15 + 8))(v55, v51);
    }

    else
    {
      v56 = 0;
      v58 = 0;
    }

    aBlock[6] = v56;
    aBlock[7] = v58;
    sub_10007EBC0(&qword_1006AF8F0, &qword_100555D20);
    v74 = String.init<A>(describing:)();
    v76 = sub_100005B4C(v74, v75, &v92);

    *(v42 + 14) = v76;
    _os_log_impl(&_mh_execute_header, v40, v90, "Peripheral connection updated for id: %s, doesn't match deviceId: %s", v42, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v9 + 1))(v11, v8);
  }
}

void sub_100210F88(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v52[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100005B14(v10, qword_1006D4630);
  (*(v7 + 16))(v9, a1, v6);
  v11 = a2;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  v14 = &selRef_initWithScrollView_edge_;
  if (os_log_type_enabled(v12, v13))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v51 = a3;
    v52[0] = v16;
    *v15 = 136315650;
    sub_10021E650(&qword_1006B7830, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v7 + 8))(v9, v6);
    v20 = sub_100005B4C(v17, v19, v52);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    v21 = [v11 irkData];
    v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25 = Data.description.getter();
    v27 = v26;
    sub_10000A858(v22, v24);
    v28 = sub_100005B4C(v25, v27, v52);

    *(v15 + 14) = v28;
    *(v15 + 22) = 2080;
    v29 = [v11 btAddressWithTypeData];
    v30 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    v33 = Data.description.getter();
    v35 = v34;
    sub_10000A858(v30, v32);
    v36 = sub_100005B4C(v33, v35, v52);
    v14 = &selRef_initWithScrollView_edge_;

    *(v15 + 24) = v36;
    _os_log_impl(&_mh_execute_header, v12, v13, "Peripheral connection updated for id: %s - irk: %s btAddress: %s", v15, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  v37 = objc_opt_self();
  v38 = [v11 btAddressWithTypeData];
  v39 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;

  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10000A858(v39, v41);
  v43 = [v11 v14[97]];
  v44 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v46 = v45;

  v47 = Data._bridgeToObjectiveC()().super.isa;
  sub_10000A858(v44, v46);
  v48 = [v37 generateBluetoothDeviceTokenWithPublicAddress:isa IRK:v47];

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v50 = *&Strong[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_btDeviceDiscoveryToken];
    *&Strong[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_btDeviceDiscoveryToken] = v48;

    v48 = v50;
  }
}

uint64_t sub_100211414(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 32);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = a3;
  v9(v8, v10);

  return (*(v6 + 8))(v8, v5);
}

void sub_100211528(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_localFindableConnectionMaterialMonitoringSession;
    v4 = *(Strong + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_localFindableConnectionMaterialMonitoringSession);
    *(Strong + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_localFindableConnectionMaterialMonitoringSession) = 0;

    sub_1001DC624();
    v5 = *&v2[v3];
    if (v5)
    {
      aBlock[4] = sub_10021162C;
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1001A44B4;
      aBlock[3] = &unk_10062FA00;
      v6 = _Block_copy(aBlock);
      v7 = v5;
      [v7 startLocalFindableConnectionMaterialMonitoringWithCompletion:v6];

      _Block_release(v6);
      v2 = v7;
    }
  }
}

void sub_10021162C(uint64_t a1)
{
  if (!a1)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100005B14(v6, qword_1006D4630);
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v7, "Accessory Characteristics monitoring session started!", v8, 2u);
    }

    goto LABEL_10;
  }

  swift_errorRetain();
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100005B14(v1, qword_1006D4630);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, oslog, v2, "Error starting characteristic monitoring session: %@", v3, 0xCu);
    sub_100012DF0(v4, &unk_1006AF760, &qword_100552DB0);

LABEL_10:

    return;
  }
}

void sub_10021187C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const char *a5, const char *a6)
{
  v11 = type metadata accessor for FMIPActionStatus();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v15, enum case for FMIPActionStatus.success(_:), v11, v13);
  sub_10021E650(&qword_1006C1D70, &type metadata accessor for FMIPActionStatus, &protocol conformance descriptor for FMIPActionStatus);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(v12 + 8))(v15, v11);
  if (v29 == v28)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100005B14(v16, qword_1006D4630);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v29 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_100005B4C(a3, a4, &v29);
      _os_log_impl(&_mh_execute_header, v17, v18, a5, v19, 0xCu);
      sub_100006060(v20);
    }
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100005B14(v21, qword_1006D4630);
    swift_errorRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      if (a2)
      {
        swift_errorRetain();
        v26 = _swift_stdlib_bridgeErrorToNSError();
        v27 = v26;
      }

      else
      {
        v26 = 0;
        v27 = 0;
      }

      *(v24 + 4) = v26;
      *v25 = v27;
      _os_log_impl(&_mh_execute_header, v22, v23, a6, v24, 0xCu);
      sub_100012DF0(v25, &unk_1006AF760, &qword_100552DB0);
    }
  }
}

uint64_t sub_100211C28()
{
  sub_100012DF0(v0 + OBJC_IVAR____TtC6FindMyP33_FDB0C6A0A8911E0A6244ECE6337EF12425LostModeStatusCoordinator_continuation, &qword_1006B68D0, &qword_100558A88);

  return swift_deallocClassInstance();
}

void sub_100211CC4(uint64_t a1)
{
  sub_100211D54(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100211D54(uint64_t a1)
{
  if (!qword_1006B67F8)
  {
    sub_10007EC08(&unk_1006B6800, &qword_100558950);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1006B67F8);
    }
  }
}

uint64_t sub_100211DB8(uint64_t (*a1)(void))
{
  result = a1();
  if (result)
  {
    return _swift_stdlib_bridgeErrorToNSError();
  }

  return result;
}

void sub_100211DE8(uint64_t *a1)
{
  v2 = *(sub_10007EBC0(&qword_1006AF940, &unk_100555E70) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10025F2F0(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_100211E9C(v5);
  *a1 = v3;
}

void sub_100211E9C(unint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10007EBC0(&qword_1006AF940, &unk_100555E70);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(sub_10007EBC0(&qword_1006AF940, &unk_100555E70) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100212260(v8, v9, a1, v4);
      v6[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_100211FE0(0, v2, 1, a1);
  }
}

void sub_100211FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = sub_10007EBC0(&qword_1006AF940, &unk_100555E70);
  __chkstk_darwin(v35);
  v34 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = (&v26 - v10);
  __chkstk_darwin(v12);
  v15 = (&v26 - v14);
  v28 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v17 = *(v13 + 72);
    v18 = *a4 + v17 * (a3 - 1);
    v19 = -v17;
    v20 = a1 - a3;
    v33 = v16;
    v27 = v17;
    v21 = v16 + v17 * a3;
LABEL_6:
    v31 = v18;
    v32 = a3;
    v29 = v21;
    v30 = v20;
    while (1)
    {
      sub_100007204(v21, v15, &qword_1006AF940, &unk_100555E70);
      sub_100007204(v18, v11, &qword_1006AF940, &unk_100555E70);
      if (*v15 == *v11 && v15[1] == v11[1])
      {
        sub_100012DF0(v11, &qword_1006AF940, &unk_100555E70);
        sub_100012DF0(v15, &qword_1006AF940, &unk_100555E70);
LABEL_5:
        a3 = v32 + 1;
        v18 = v31 + v27;
        v20 = v30 - 1;
        v21 = v29 + v27;
        if (v32 + 1 == v28)
        {
          return;
        }

        goto LABEL_6;
      }

      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
      sub_100012DF0(v11, &qword_1006AF940, &unk_100555E70);
      sub_100012DF0(v15, &qword_1006AF940, &unk_100555E70);
      if ((v23 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v33)
      {
        break;
      }

      v24 = v34;
      sub_100035318(v21, v34, &qword_1006AF940, &unk_100555E70);
      swift_arrayInitWithTakeFrontToBack();
      sub_100035318(v24, v18, &qword_1006AF940, &unk_100555E70);
      v18 += v19;
      v21 += v19;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_100212260(unint64_t *a1, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  v5 = v4;
  v116 = a1;
  v131 = sub_10007EBC0(&qword_1006AF940, &unk_100555E70);
  v8 = *(v131 - 8);
  __chkstk_darwin(v131);
  v121 = &v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v130 = &v111 - v11;
  __chkstk_darwin(v12);
  __chkstk_darwin(v13);
  __chkstk_darwin(v14);
  v128 = (&v111 - v15);
  __chkstk_darwin(v16);
  v127 = (&v111 - v17);
  __chkstk_darwin(v18);
  v115 = (&v111 - v19);
  __chkstk_darwin(v20);
  v114 = (&v111 - v23);
  v24 = a3[1];
  if (v24 < 1)
  {
    v28 = a3;
    v26 = _swiftEmptyArrayStorage;
LABEL_112:
    a4 = *v116;
    if (!*v116)
    {
      goto LABEL_150;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_144:
      v26 = sub_10025EFD4(v26);
    }

    v134 = v26;
    v106 = *(v26 + 16);
    if (v106 >= 2)
    {
      while (*v28)
      {
        v107 = v26;
        v26 = v106 - 1;
        v108 = *&v107[16 * v106];
        v109 = *&v107[16 * v106 + 24];
        sub_100212CC8(*v28 + *(v8 + 72) * v108, *v28 + *(v8 + 72) * *&v107[16 * v106 + 16], *v28 + *(v8 + 72) * v109, a4);
        if (v5)
        {
          goto LABEL_122;
        }

        if (v109 < v108)
        {
          goto LABEL_137;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v107 = sub_10025EFD4(v107);
        }

        if (v106 - 2 >= *(v107 + 2))
        {
          goto LABEL_138;
        }

        v110 = &v107[16 * v106];
        *v110 = v108;
        *(v110 + 1) = v109;
        v134 = v107;
        sub_10025EF48(v26);
        v26 = v134;
        v106 = *(v134 + 16);
        if (v106 <= 1)
        {
          goto LABEL_122;
        }
      }

      goto LABEL_148;
    }

LABEL_122:

    return;
  }

  v132 = v22;
  v133 = v21;
  v111 = a4;
  v25 = 0;
  v26 = _swiftEmptyArrayStorage;
  v27 = &unk_100555E70;
  v28 = a3;
  v117 = a3;
  v125 = v8;
  while (1)
  {
    v29 = v25++;
    v118 = v29;
    if (v25 >= v24)
    {
      goto LABEL_37;
    }

    v123 = v24;
    a4 = *v28;
    v8 = *(v8 + 72);
    v30 = v29;
    v31 = v114;
    sub_100007204(*v28 + v8 * v25, v114, &qword_1006AF940, v27);
    v126 = v8;
    v32 = a4 + v8 * v30;
    v33 = v115;
    sub_100007204(v32, v115, &qword_1006AF940, v27);
    v34 = *v31 == *v33 && v31[1] == v33[1];
    v113 = v5;
    if (v34)
    {
      LODWORD(v124) = 0;
    }

    else
    {
      LODWORD(v124) = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v112 = v26;
    sub_100012DF0(v115, &qword_1006AF940, v27);
    sub_100012DF0(v114, &qword_1006AF940, v27);
    v35 = v118 + 2;
    v36 = v126 * (v118 + 2);
    v37 = a4 + v36;
    v38 = v126 * v25;
    v5 = a4 + v126 * v25;
    v39 = v25;
    do
    {
      v25 = v35;
      v28 = v39;
      v40 = v38;
      v26 = v36;
      if (v35 >= v123)
      {
        break;
      }

      v129 = v35;
      v41 = v127;
      v8 = &qword_1006AF940;
      sub_100007204(v37, v127, &qword_1006AF940, &unk_100555E70);
      v42 = v128;
      sub_100007204(v5, v128, &qword_1006AF940, &unk_100555E70);
      v43 = *v41 == *v42 && v41[1] == v42[1];
      a4 = v43 ? 0 : _stringCompareWithSmolCheck(_:_:expecting:)();
      sub_100012DF0(v128, &qword_1006AF940, &unk_100555E70);
      sub_100012DF0(v127, &qword_1006AF940, &unk_100555E70);
      v25 = v129;
      v35 = v129 + 1;
      v37 += v126;
      v5 += v126;
      v39 = (v28 + 1);
      v38 = v40 + v126;
      v36 = v26 + v126;
    }

    while (((v124 ^ a4) & 1) == 0);
    if (v124)
    {
      v29 = v118;
      if (v25 < v118)
      {
        goto LABEL_141;
      }

      if (v118 >= v25)
      {
        v5 = v113;
        v28 = v117;
        goto LABEL_36;
      }

      v44 = v118;
      v45 = v118 * v126;
      do
      {
        if (v44 != v28)
        {
          a4 = *v117;
          if (!*v117)
          {
            goto LABEL_147;
          }

          sub_100035318(a4 + v45, v121, &qword_1006AF940, &unk_100555E70);
          if (v45 < v40 || a4 + v45 >= a4 + v26)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v45 != v40)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          sub_100035318(v121, a4 + v40, &qword_1006AF940, &unk_100555E70);
        }

        v44 = (v44 + 1);
        v40 -= v126;
        v26 -= v126;
        v45 += v126;
        v46 = v44 < v28;
        v28 = (v28 - 1);
      }

      while (v46);
    }

    v5 = v113;
    v28 = v117;
    v29 = v118;
LABEL_36:
    v8 = v125;
    v26 = v112;
    v27 = &unk_100555E70;
LABEL_37:
    v47 = v28[1];
    if (v25 < v47)
    {
      if (__OFSUB__(v25, v29))
      {
        goto LABEL_140;
      }

      if (v25 - v29 < v111)
      {
        v48 = v29 + v111;
        if (__OFADD__(v29, v111))
        {
          goto LABEL_142;
        }

        if (v48 >= v47)
        {
          v48 = v28[1];
        }

        if (v48 < v29)
        {
LABEL_143:
          __break(1u);
          goto LABEL_144;
        }

        if (v25 != v48)
        {
          break;
        }
      }
    }

LABEL_60:
    if (v25 < v29)
    {
      goto LABEL_139;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v26 = sub_10008B8B8(0, *(v26 + 16) + 1, 1, v26);
    }

    a4 = *(v26 + 16);
    v61 = *(v26 + 24);
    v62 = a4 + 1;
    if (a4 >= v61 >> 1)
    {
      v26 = sub_10008B8B8((v61 > 1), a4 + 1, 1, v26);
    }

    *(v26 + 16) = v62;
    v63 = v26 + 16 * a4;
    *(v63 + 32) = v118;
    *(v63 + 40) = v25;
    if (!*v116)
    {
      goto LABEL_149;
    }

    if (a4)
    {
      v8 = *v116;
      while (1)
      {
        a4 = v62 - 1;
        if (v62 >= 4)
        {
          break;
        }

        if (v62 == 3)
        {
          v64 = *(v26 + 32);
          v65 = *(v26 + 40);
          v74 = __OFSUB__(v65, v64);
          v66 = v65 - v64;
          v67 = v74;
LABEL_81:
          if (v67)
          {
            goto LABEL_128;
          }

          v80 = (v26 + 16 * v62);
          v82 = *v80;
          v81 = v80[1];
          v83 = __OFSUB__(v81, v82);
          v84 = v81 - v82;
          v85 = v83;
          if (v83)
          {
            goto LABEL_131;
          }

          v86 = (v26 + 32 + 16 * a4);
          v88 = *v86;
          v87 = v86[1];
          v74 = __OFSUB__(v87, v88);
          v89 = v87 - v88;
          if (v74)
          {
            goto LABEL_134;
          }

          if (__OFADD__(v84, v89))
          {
            goto LABEL_135;
          }

          if (v84 + v89 >= v66)
          {
            if (v66 < v89)
            {
              a4 = v62 - 2;
            }

            goto LABEL_102;
          }

          goto LABEL_95;
        }

        v90 = (v26 + 16 * v62);
        v92 = *v90;
        v91 = v90[1];
        v74 = __OFSUB__(v91, v92);
        v84 = v91 - v92;
        v85 = v74;
LABEL_95:
        if (v85)
        {
          goto LABEL_130;
        }

        v93 = v26 + 16 * a4;
        v95 = *(v93 + 32);
        v94 = *(v93 + 40);
        v74 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v74)
        {
          goto LABEL_133;
        }

        if (v96 < v84)
        {
          goto LABEL_3;
        }

LABEL_102:
        v101 = a4 - 1;
        if (a4 - 1 >= v62)
        {
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
          goto LABEL_143;
        }

        if (!*v28)
        {
          goto LABEL_146;
        }

        v102 = v26;
        v103 = v26 + 32;
        v26 = *(v26 + 32 + 16 * v101);
        v104 = *(v103 + 16 * a4 + 8);
        sub_100212CC8(*v28 + *(v125 + 72) * v26, *v28 + *(v125 + 72) * *(v103 + 16 * a4), *v28 + *(v125 + 72) * v104, v8);
        if (v5)
        {
          goto LABEL_122;
        }

        if (v104 < v26)
        {
          goto LABEL_124;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v102 = sub_10025EFD4(v102);
        }

        if (v101 >= *(v102 + 2))
        {
          goto LABEL_125;
        }

        v105 = &v102[16 * v101];
        *(v105 + 4) = v26;
        *(v105 + 5) = v104;
        v134 = v102;
        sub_10025EF48(a4);
        v26 = v134;
        v62 = *(v134 + 16);
        v27 = &unk_100555E70;
        if (v62 <= 1)
        {
          goto LABEL_3;
        }
      }

      v68 = v26 + 32 + 16 * v62;
      v69 = *(v68 - 64);
      v70 = *(v68 - 56);
      v74 = __OFSUB__(v70, v69);
      v71 = v70 - v69;
      if (v74)
      {
        goto LABEL_126;
      }

      v73 = *(v68 - 48);
      v72 = *(v68 - 40);
      v74 = __OFSUB__(v72, v73);
      v66 = v72 - v73;
      v67 = v74;
      if (v74)
      {
        goto LABEL_127;
      }

      v75 = (v26 + 16 * v62);
      v77 = *v75;
      v76 = v75[1];
      v74 = __OFSUB__(v76, v77);
      v78 = v76 - v77;
      if (v74)
      {
        goto LABEL_129;
      }

      v74 = __OFADD__(v66, v78);
      v79 = v66 + v78;
      if (v74)
      {
        goto LABEL_132;
      }

      if (v79 >= v71)
      {
        v97 = (v26 + 32 + 16 * a4);
        v99 = *v97;
        v98 = v97[1];
        v74 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v74)
        {
          goto LABEL_136;
        }

        if (v66 < v100)
        {
          a4 = v62 - 2;
        }

        goto LABEL_102;
      }

      goto LABEL_81;
    }

LABEL_3:
    v24 = v28[1];
    v8 = v125;
    if (v25 >= v24)
    {
      goto LABEL_112;
    }
  }

  v112 = v26;
  v113 = v5;
  v49 = *v28;
  v50 = *(v8 + 72);
  v51 = *v28 + v50 * (v25 - 1);
  v52 = -v50;
  v53 = v29 - v25;
  v129 = v49;
  v119 = v50;
  v120 = v48;
  a4 = v49 + v25 * v50;
  v8 = &qword_1006AF940;
  while (2)
  {
    v126 = v25;
    v122 = a4;
    v123 = v53;
    v124 = v51;
LABEL_49:
    v54 = v132;
    sub_100007204(a4, v132, &qword_1006AF940, v27);
    v55 = v27;
    v56 = v133;
    sub_100007204(v51, v133, &qword_1006AF940, v55);
    if (*v54 == *v56 && v54[1] == v56[1])
    {
      sub_100012DF0(v56, &qword_1006AF940, v55);
      sub_100012DF0(v54, &qword_1006AF940, v55);
      v27 = v55;
LABEL_47:
      v25 = v126 + 1;
      v51 = v124 + v119;
      v53 = v123 - 1;
      a4 = v122 + v119;
      if (v126 + 1 != v120)
      {
        continue;
      }

      v25 = v120;
      v5 = v113;
      v28 = v117;
      v29 = v118;
      v26 = v112;
      goto LABEL_60;
    }

    break;
  }

  v58 = _stringCompareWithSmolCheck(_:_:expecting:)();
  sub_100012DF0(v56, &qword_1006AF940, v55);
  sub_100012DF0(v54, &qword_1006AF940, v55);
  v27 = v55;
  if ((v58 & 1) == 0)
  {
    v8 = &qword_1006AF940;
    goto LABEL_47;
  }

  if (v129)
  {
    v59 = v130;
    v8 = &qword_1006AF940;
    sub_100035318(a4, v130, &qword_1006AF940, v55);
    swift_arrayInitWithTakeFrontToBack();
    sub_100035318(v59, v51, &qword_1006AF940, v55);
    v51 += v52;
    a4 += v52;
    if (__CFADD__(v53++, 1))
    {
      goto LABEL_47;
    }

    goto LABEL_49;
  }

  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
}

void sub_100212CC8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v53 = sub_10007EBC0(&qword_1006AF940, &unk_100555E70);
  __chkstk_darwin(v53);
  v52 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v51 = (&v46 - v10);
  __chkstk_darwin(v11);
  v13 = (&v46 - v12);
  __chkstk_darwin(v14);
  v16 = (&v46 - v15);
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  if (a2 - a1 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_75;
  }

  v19 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v18 != -1)
  {
    v20 = (a2 - a1) / v18;
    v57 = a1;
    v56 = a4;
    v54 = v18;
    if (v20 < v19 / v18)
    {
      v21 = a2;
      v22 = v20 * v18;
      if (a4 < a1 || a1 + v22 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v52 = a4 + v22;
      v55 = a4 + v22;
      if (v22 >= 1 && v21 < a3)
      {
        v25 = v21;
        while (1)
        {
          v26 = v25;
          sub_100007204(v25, v16, &qword_1006AF940, &unk_100555E70);
          sub_100007204(a4, v13, &qword_1006AF940, &unk_100555E70);
          if (*v16 == *v13 && v16[1] == v13[1])
          {
            sub_100012DF0(v13, &qword_1006AF940, &unk_100555E70);
            sub_100012DF0(v16, &qword_1006AF940, &unk_100555E70);
LABEL_31:
            v29 = v54;
            v31 = a4 + v54;
            if (a1 < a4 || a1 >= v31)
            {
              swift_arrayInitWithTakeFrontToBack();
LABEL_36:
              v29 = v54;
            }

            else if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
              goto LABEL_36;
            }

            v56 = v31;
            a4 = v31;
            v25 = v26;
            goto LABEL_41;
          }

          v28 = _stringCompareWithSmolCheck(_:_:expecting:)();
          sub_100012DF0(v13, &qword_1006AF940, &unk_100555E70);
          sub_100012DF0(v16, &qword_1006AF940, &unk_100555E70);
          if ((v28 & 1) == 0)
          {
            goto LABEL_31;
          }

          v29 = v54;
          v30 = v26 + v54;
          if (a1 < v26 || a1 >= v30)
          {
            break;
          }

          if (a1 != v26)
          {
            swift_arrayInitWithTakeBackToFront();
LABEL_39:
            v29 = v54;
          }

          v25 = v30;
LABEL_41:
          a1 += v29;
          v57 = a1;
          if (a4 >= v52 || v25 >= a3)
          {
            goto LABEL_73;
          }
        }

        swift_arrayInitWithTakeFrontToBack();
        goto LABEL_39;
      }

      goto LABEL_73;
    }

    v23 = v19 / v18 * v18;
    if (a4 < a2 || a2 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == a2)
      {
LABEL_46:
        v32 = a4 + v23;
        if (v23 >= 1)
        {
          v33 = -v18;
          v34 = v32;
          v54 = -v18;
          v48 = a4;
          do
          {
            v46 = v32;
            v35 = a2;
            v36 = a2 + v33;
            v49 = v35;
            v50 = v36;
            while (1)
            {
              if (v35 <= a1)
              {
                v57 = v35;
                v32 = v46;
                goto LABEL_72;
              }

              v38 = a3;
              v47 = v32;
              v39 = v34 + v33;
              v40 = v51;
              sub_100007204(v39, v51, &qword_1006AF940, &unk_100555E70);
              v41 = v52;
              sub_100007204(v36, v52, &qword_1006AF940, &unk_100555E70);
              v42 = *v40 == *v41 && v40[1] == v41[1];
              v43 = v42 ? 0 : _stringCompareWithSmolCheck(_:_:expecting:)();
              a3 = v38 + v54;
              sub_100012DF0(v52, &qword_1006AF940, &unk_100555E70);
              sub_100012DF0(v51, &qword_1006AF940, &unk_100555E70);
              v35 = v49;
              if (v43)
              {
                break;
              }

              v32 = v39;
              v44 = v48;
              if (v38 < v34 || a3 >= v34)
              {
                swift_arrayInitWithTakeFrontToBack();
                v32 = v39;
                v36 = v50;
              }

              else
              {
                v36 = v50;
                if (v38 != v34)
                {
                  swift_arrayInitWithTakeBackToFront();
                  v32 = v39;
                }
              }

              v34 = v32;
              v37 = v39 > v44;
              v33 = v54;
              if (!v37)
              {
                v57 = v35;
                goto LABEL_72;
              }
            }

            v45 = v48;
            if (v38 < v49 || a3 >= v49)
            {
              a2 = v50;
              swift_arrayInitWithTakeFrontToBack();
              v33 = v54;
            }

            else
            {
              a2 = v50;
              v33 = v54;
              if (v38 != v49)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v32 = v47;
          }

          while (v34 > v45);
        }

        v57 = a2;
LABEL_72:
        v55 = v32;
LABEL_73:
        sub_10025F000(&v57, &v56, &v55);
        return;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v18 = v54;
    goto LABEL_46;
  }

LABEL_76:
  __break(1u);
}

void *sub_100213264(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_100215AFC(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_1002132F4(uint64_t a1)
{
  v3 = sub_10007EBC0(&qword_1006B6948, &qword_100558B38);
  __chkstk_darwin(v3 - 8);
  v5 = v17 - v4;
  v6 = type metadata accessor for FMIPPlaySoundChannels();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;
    v17[0] = v7 + 8;
    v17[1] = v7 + 16;

    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      (*(v7 + 16))(v9, *(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v6);
      sub_10021554C(v9, v5);
      (*(v7 + 8))(v9, v6);
      sub_100012DF0(v5, &qword_1006B6948, &qword_100558B38);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void *sub_100213510(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for FMIPPlaySoundChannels();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v57 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v49 - v8;
  __chkstk_darwin(v10);
  i = v49 - v11;
  if (!a2[2])
  {

    return _swiftEmptySetSingleton;
  }

  v63[0] = a1;
  v12 = *(a1 + 16);

  v51 = v12;
  if (!v12)
  {
    goto LABEL_30;
  }

  v13 = 0;
  v15 = *(v5 + 16);
  v14 = v5 + 16;
  v16 = *(v14 + 64);
  v53 = a1;
  v54 = a1 + ((v16 + 32) & ~v16);
  v60 = *(v14 + 56);
  v61 = v15;
  v58 = a2 + 7;
  v59 = a2;
  v62 = v14;
  v17 = (v14 - 8);
  v50 = ((v14 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
  while (1)
  {
    v55 = v13 + 1;
    v63[1] = v13 + 1;
    v61(i, v54 + v60 * v13, v4);
    v52 = sub_10021E650(&qword_1006B41C8, &type metadata accessor for FMIPPlaySoundChannels, &protocol conformance descriptor for FMIPPlaySoundChannels);
    v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v19 = -1 << *(a2 + 32);
    v20 = v18 & ~v19;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if (((1 << v20) & v58[v20 >> 6]) != 0)
    {
      break;
    }

    v25 = *v17;
LABEL_10:
    v25(i, v4);
    v13 = v55;
    if (v55 == v51)
    {
      goto LABEL_30;
    }
  }

  v23 = ~v19;
  while (1)
  {
    v61(v9, v59[6] + v20 * v60, v4);
    sub_10021E650(&qword_1006B41D0, &type metadata accessor for FMIPPlaySoundChannels, &protocol conformance descriptor for FMIPPlaySoundChannels);
    v24 = dispatch thunk of static Equatable.== infix(_:_:)();
    v25 = *v17;
    (*v17)(v9, v4);
    if (v24)
    {
      break;
    }

    v20 = (v20 + 1) & v23;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if (((1 << v20) & v58[v20 >> 6]) == 0)
    {
      a2 = v59;
      goto LABEL_10;
    }
  }

  v26 = (v25)(i, v4);
  v27 = v59;
  v28 = *(v59 + 32);
  v49[0] = ((1 << v28) + 63) >> 6;
  v29 = 8 * v49[0];
  if ((v28 & 0x3Fu) > 0xD)
  {
    goto LABEL_34;
  }

  while (2)
  {
    v49[1] = v49;
    __chkstk_darwin(v26);
    v31 = v49 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v31, v58, v30);
    v32 = v27[2];
    *&v31[8 * v21] &= ~v22;
    v50 = v31;
    v51 = (v32 - 1);
    v33 = *(v53 + 16);
    v34 = v55;
    for (i = v33; ; v33 = i)
    {
      if (v34 == v33)
      {
        a2 = sub_100214EFC(v50, v49[0], v51, v27);
        goto LABEL_30;
      }

      if (v34 >= *(v53 + 16))
      {
        break;
      }

      v55 = v34;
      v61(v57, v54 + v34 * v60, v4);
      v36 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v37 = -1 << *(v27 + 32);
      v20 = v36 & ~v37;
      v22 = v20 >> 6;
      v21 = 1 << v20;
      if (((1 << v20) & v58[v20 >> 6]) == 0)
      {
        goto LABEL_15;
      }

      v61(v9, v59[6] + v20 * v60, v4);
      v38 = dispatch thunk of static Equatable.== infix(_:_:)();
      v25(v9, v4);
      if ((v38 & 1) == 0)
      {
        v39 = ~v37;
        while (1)
        {
          v20 = (v20 + 1) & v39;
          v22 = v20 >> 6;
          v21 = 1 << v20;
          if (((1 << v20) & v58[v20 >> 6]) == 0)
          {
            break;
          }

          v61(v9, v59[6] + v20 * v60, v4);
          v40 = dispatch thunk of static Equatable.== infix(_:_:)();
          v25(v9, v4);
          if (v40)
          {
            goto LABEL_25;
          }
        }

LABEL_15:
        v25(v57, v4);
        v27 = v59;
LABEL_16:
        v35 = v55;
        goto LABEL_17;
      }

LABEL_25:
      v25(v57, v4);
      v41 = v50[v22];
      v50[v22] = v41 & ~v21;
      v27 = v59;
      if ((v41 & v21) == 0)
      {
        goto LABEL_16;
      }

      v42 = v51 - 1;
      v35 = v55;
      if (__OFSUB__(v51, 1))
      {
        goto LABEL_33;
      }

      --v51;
      if (!v42)
      {

        a2 = _swiftEmptySetSingleton;
        goto LABEL_30;
      }

LABEL_17:
      v34 = v35 + 1;
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v44 = v29;

    v45 = v44;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v46 = v59;

      v27 = v46;
      continue;
    }

    break;
  }

  v47 = swift_slowAlloc();
  memcpy(v47, v58, v45);
  sub_100214634(v47, v49[0], v59, v20, v63);
  a2 = v48;

LABEL_30:

  return a2;
}

char *sub_100213BD0(uint64_t a1, char *a2)
{
  v5 = sub_10007EBC0(&qword_1006B6948, &qword_100558B38);
  __chkstk_darwin(v5 - 8);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = (&v66 - v9);
  v11 = type metadata accessor for FMIPPlaySoundChannels();
  __chkstk_darwin(v11);
  v86 = (&v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v15 = (&v66 - v14);
  __chkstk_darwin(v16);
  v81 = (&v66 - v18);
  if (!*(a2 + 2))
  {

    return _swiftEmptySetSingleton;
  }

  v67 = v10;
  v69 = v7;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
  v21 = -1 << *(a1 + 32);
  v80 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v88 = (v22 & v19);
  v73 = (63 - v21) >> 6;
  v87 = v17 + 16;
  v78 = (v17 + 48);
  v79 = (v17 + 56);
  v77 = (v17 + 32);
  v83 = a2 + 56;
  v68 = v17;
  v89 = (v17 + 8);

  v24 = 0;
  v70 = a1;
  for (i = a1 + 56; ; v20 = i)
  {
    v25 = v88;
    v26 = v24;
    if (v88)
    {
LABEL_14:
      v2 = (v25 - 1) & v25;
      v30 = v67;
      (*(v68 + 16))(v67, *(a1 + 48) + *(v68 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11);
      v31 = 0;
      v28 = v26;
    }

    else
    {
      v27 = v73 <= (v24 + 1) ? v24 + 1 : v73;
      v28 = v27 - 1;
      v29 = v24;
      while (1)
      {
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_58;
        }

        if (v26 >= v73)
        {
          break;
        }

        v25 = *(v20 + 8 * v26);
        ++v29;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v31 = 1;
      v30 = v67;
    }

    v75 = *v79;
    v75(v30, v31, 1, v11);
    v90 = a1;
    v91 = v20;
    v92 = v80;
    v93 = v28;
    v94 = v2;
    v74 = *v78;
    if (v74(v30, 1, v11) == 1)
    {
      sub_100012DF0(v30, &qword_1006B6948, &qword_100558B38);
      v59 = a1;
      goto LABEL_53;
    }

    v72 = *v77;
    v72(v81, v30, v11);
    v71 = sub_10021E650(&qword_1006B41C8, &type metadata accessor for FMIPPlaySoundChannels, &protocol conformance descriptor for FMIPPlaySoundChannels);
    v32 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v33 = -1 << a2[32];
    v24 = v32 & ~v33;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v83[v24 >> 6]) != 0)
    {
      break;
    }

    (*v89)(v81, v11);
LABEL_22:
    v24 = v28;
    v88 = v2;
  }

  v66 = v89 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v82 = ~v33;
  v34 = *(v68 + 72);
  v84 = *(v68 + 16);
  v85 = v34;
  while (1)
  {
    v84(v15, *(a2 + 6) + v85 * v24, v11);
    v35 = sub_10021E650(&qword_1006B41D0, &type metadata accessor for FMIPPlaySoundChannels, &protocol conformance descriptor for FMIPPlaySoundChannels);
    v36 = dispatch thunk of static Equatable.== infix(_:_:)();
    v88 = *v89;
    v88(v15, v11);
    if (v36)
    {
      break;
    }

    v24 = (v24 + 1) & v82;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v83[v24 >> 6]) == 0)
    {
      a1 = v70;
      v88(v81, v11);
      goto LABEL_22;
    }
  }

  v82 = v35;
  v37 = (v88)(v81, v11);
  v38 = a2[32];
  v66 = ((1 << v38) + 63) >> 6;
  v23 = 8 * v66;
  a1 = v70;
  if ((v38 & 0x3Fu) > 0xD)
  {
    goto LABEL_59;
  }

  while (2)
  {
    v67 = &v66;
    __chkstk_darwin(v37);
    v40 = &v66 - ((v39 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v40, v83, v39);
    v41 = *&v40[8 * v26] & ~v20;
    v42 = *(a2 + 2);
    v81 = v40;
    *&v40[8 * v26] = v41;
    v43 = v42 - 1;
    v24 = v69;
    v44 = i;
    v45 = v73;
LABEL_26:
    v68 = v43;
    while (v2)
    {
      v46 = v28;
LABEL_38:
      v49 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v84(v24, *(a1 + 48) + (v49 | (v46 << 6)) * v85, v11);
      v50 = 0;
LABEL_39:
      v75(v24, v50, 1, v11);
      v90 = a1;
      v91 = v44;
      v92 = v80;
      v93 = v28;
      v94 = v2;
      if (v74(v24, 1, v11) == 1)
      {
        sub_100012DF0(v24, &qword_1006B6948, &qword_100558B38);
        a2 = sub_100214EFC(v81, v66, v68, a2);
        goto LABEL_52;
      }

      v72(v86, v24, v11);
      v51 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v52 = a2;
      v53 = -1 << a2[32];
      v54 = v51 & ~v53;
      v26 = v54 >> 6;
      v20 = 1 << v54;
      if (((1 << v54) & v83[v54 >> 6]) != 0)
      {
        v84(v15, *(v52 + 6) + v54 * v85, v11);
        v55 = dispatch thunk of static Equatable.== infix(_:_:)();
        v88(v15, v11);
        if ((v55 & 1) == 0)
        {
          v56 = ~v53;
          do
          {
            v54 = (v54 + 1) & v56;
            v26 = v54 >> 6;
            v20 = 1 << v54;
            if (((1 << v54) & v83[v54 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v84(v15, *(v52 + 6) + v54 * v85, v11);
            v57 = dispatch thunk of static Equatable.== infix(_:_:)();
            v88(v15, v11);
          }

          while ((v57 & 1) == 0);
        }

        v88(v86, v11);
        v58 = v81[v26];
        v81[v26] = v58 & ~v20;
        a2 = v52;
        a1 = v70;
        v24 = v69;
        v44 = i;
        v45 = v73;
        if ((v58 & v20) != 0)
        {
          v43 = v68 - 1;
          if (__OFSUB__(v68, 1))
          {
            __break(1u);
          }

          if (v68 == 1)
          {

            a2 = _swiftEmptySetSingleton;
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v88(v86, v11);
        a2 = v52;
        a1 = v70;
        v24 = v69;
        v44 = i;
        v45 = v73;
      }
    }

    if (v45 <= (v28 + 1))
    {
      v47 = v28 + 1;
    }

    else
    {
      v47 = v45;
    }

    v48 = v47 - 1;
    while (1)
    {
      v46 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v46 >= v45)
      {
        v2 = 0;
        v50 = 1;
        v28 = v48;
        goto LABEL_39;
      }

      v2 = *(v44 + 8 * v46);
      ++v28;
      if (v2)
      {
        v28 = v46;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v61 = v23;

    v81 = a2;
    v62 = v61;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v63 = v81;

      a2 = v63;
      continue;
    }

    break;
  }

  v64 = swift_slowAlloc();
  memcpy(v64, v83, v62);
  sub_100214A28(v64, v66, v81, v24, &v90);
  a2 = v65;

LABEL_52:
  v59 = v90;
LABEL_53:
  sub_10000BEC8(v59);
  return a2;
}

void sub_100214634(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v35 = a2;
  v9 = type metadata accessor for FMIPPlaySoundChannels();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v42 = &v35 - v14;
  v16 = __chkstk_darwin(v15);
  v48 = &v35 - v17;
  v18 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v36 = a1;
  v37 = v18 - 1;
  v19 = *a5;
  v20 = a5[1];
  v21 = *(*a5 + 16);
  if (v20 == v21)
  {
LABEL_2:

    sub_100214EFC(v36, v35, v37, a3);
    return;
  }

  v40 = v10 + 32;
  v41 = v10;
  v43 = a3 + 56;
  v38 = a5;
  v46 = v10 + 16;
  v47 = (v10 + 8);
  while (v20 < v21)
  {
    v23 = *(v10 + 80);
    v45 = *(v10 + 72);
    v24 = v42;
    v44 = *(v10 + 16);
    v44(v42, v19 + ((v23 + 32) & ~v23) + v45 * v20, v9, v16);
    a5[1] = v20 + 1;
    (*(v10 + 32))(v48, v24, v9);
    sub_10021E650(&qword_1006B41C8, &type metadata accessor for FMIPPlaySoundChannels, &protocol conformance descriptor for FMIPPlaySoundChannels);
    v25 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v26 = -1 << *(a3 + 32);
    v27 = v25 & ~v26;
    v28 = v27 >> 6;
    v29 = 1 << v27;
    if (((1 << v27) & *(v43 + 8 * (v27 >> 6))) == 0)
    {
      v22 = *v47;
LABEL_5:
      v22(v48, v9);
      goto LABEL_6;
    }

    v39 = v47 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v30 = a3;
    v31 = ~v26;
    while (1)
    {
      (v44)(v12, *(v30 + 48) + v27 * v45, v9);
      sub_10021E650(&qword_1006B41D0, &type metadata accessor for FMIPPlaySoundChannels, &protocol conformance descriptor for FMIPPlaySoundChannels);
      v32 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v47;
      (*v47)(v12, v9);
      if (v32)
      {
        break;
      }

      v27 = (v27 + 1) & v31;
      v28 = v27 >> 6;
      v29 = 1 << v27;
      if (((1 << v27) & *(v43 + 8 * (v27 >> 6))) == 0)
      {
        a3 = v30;
        a5 = v38;
        goto LABEL_5;
      }
    }

    v22(v48, v9);
    v33 = v36[v28];
    v36[v28] = v33 & ~v29;
    if ((v33 & v29) == 0)
    {
      a3 = v30;
      a5 = v38;
LABEL_6:
      v10 = v41;
      goto LABEL_7;
    }

    v34 = v37 - 1;
    v10 = v41;
    if (__OFSUB__(v37, 1))
    {
      goto LABEL_20;
    }

    a3 = v30;
    a5 = v38;
    --v37;
    if (!v34)
    {
      return;
    }

LABEL_7:
    v19 = *a5;
    v20 = a5[1];
    v21 = *(*a5 + 16);
    if (v20 == v21)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

void sub_100214A28(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v47 = a2;
  v9 = sub_10007EBC0(&qword_1006B6948, &qword_100558B38);
  __chkstk_darwin(v9 - 8);
  v11 = &v46 - v10;
  v12 = type metadata accessor for FMIPPlaySoundChannels();
  __chkstk_darwin(v12);
  v57 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v14);
  v63 = &v46 - v16;
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18);
  v49 = a1;
  v50 = v11;
  *(a1 + v18) = v19 & ((-1 << a4) - 1);
  v20 = v17 - 1;
  v60 = v21 + 16;
  v61 = a3;
  v54 = (v21 + 48);
  v55 = (v21 + 56);
  v53 = (v21 + 32);
  v59 = a3 + 56;
  v56 = v21;
  v62 = (v21 + 8);
  v51 = a5;
  while (2)
  {
    v48 = v20;
    do
    {
      while (1)
      {
        v23 = *a5;
        v24 = a5[1];
        v26 = a5[2];
        v25 = a5[3];
        v27 = a5[4];
        if (!v27)
        {
          v29 = (v26 + 64) >> 6;
          if (v29 <= v25 + 1)
          {
            v30 = v25 + 1;
          }

          else
          {
            v30 = (v26 + 64) >> 6;
          }

          v31 = v30 - 1;
          while (1)
          {
            v28 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v28 >= v29)
            {
              v32 = 0;
              v33 = 1;
              goto LABEL_15;
            }

            v27 = *(v24 + 8 * v28);
            ++v25;
            if (v27)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_29;
        }

        v28 = a5[3];
LABEL_14:
        v32 = (v27 - 1) & v27;
        (*(v56 + 16))(v11, *(v23 + 48) + *(v56 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12, v15);
        v33 = 0;
        v31 = v28;
LABEL_15:
        (*v55)(v11, v33, 1, v12);
        *a5 = v23;
        a5[1] = v24;
        a5[2] = v26;
        a5[3] = v31;
        a5[4] = v32;
        if ((*v54)(v11, 1, v12) == 1)
        {
          sub_100012DF0(v11, &qword_1006B6948, &qword_100558B38);
          v45 = v61;

          sub_100214EFC(v49, v47, v48, v45);
          return;
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        sub_10021E650(&qword_1006B41C8, &type metadata accessor for FMIPPlaySoundChannels, &protocol conformance descriptor for FMIPPlaySoundChannels);
        v35 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v36 = -1 << *(v34 + 32);
        v37 = v35 & ~v36;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) != 0)
        {
          break;
        }

        v22 = *v62;
LABEL_4:
        v22(v63, v12);
      }

      v52 = v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = ~v36;
      v40 = *(v56 + 72);
      v41 = *(v56 + 16);
      while (1)
      {
        v42 = v57;
        v41(v57, *(v61 + 48) + v40 * v37, v12);
        sub_10021E650(&qword_1006B41D0, &type metadata accessor for FMIPPlaySoundChannels, &protocol conformance descriptor for FMIPPlaySoundChannels);
        v43 = dispatch thunk of static Equatable.== infix(_:_:)();
        v22 = *v62;
        (*v62)(v42, v12);
        if (v43)
        {
          break;
        }

        v37 = (v37 + 1) & v58;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) == 0)
        {
          v11 = v50;
          a5 = v51;
          goto LABEL_4;
        }
      }

      v22(v63, v12);
      v11 = v50;
      v44 = v49[v38];
      v49[v38] = v44 & ~v39;
      a5 = v51;
    }

    while ((v44 & v39) == 0);
    v20 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
LABEL_29:
      __break(1u);
      return;
    }

    if (v48 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_100214EFC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = type metadata accessor for FMIPPlaySoundChannels();
  v8 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return _swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_10007EBC0(&qword_1006B6950, &qword_100558B40);
  result = static _SetStorage.allocate(capacity:)();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_10021E650(&qword_1006B41C8, &type metadata accessor for FMIPPlaySoundChannels, &protocol conformance descriptor for FMIPPlaySoundChannels);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_100215224(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = type metadata accessor for FMIPItem();
  v8 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return _swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_10007EBC0(&qword_1006B6910, &unk_100558B10);
  result = static _SetStorage.allocate(capacity:)();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_10021E650(&qword_1006B6918, &type metadata accessor for FMIPItem, &protocol conformance descriptor for FMIPItem);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10021554C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for FMIPPlaySoundChannels();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10021E650(&qword_1006B41C8, &type metadata accessor for FMIPPlaySoundChannels, &protocol conformance descriptor for FMIPPlaySoundChannels);
  v31 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_10021E650(&qword_1006B41D0, &type metadata accessor for FMIPPlaySoundChannels, &protocol conformance descriptor for FMIPPlaySoundChannels);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1002584A0();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_1002157F4(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

void sub_1002157F4(int64_t a1)
{
  v3 = type metadata accessor for FMIPPlaySoundChannels();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = _HashTable.previousHole(before:)();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v13 = v11;
      v14 = (v12 + 1) & v11;
      v34 = *(v4 + 16);
      v35 = v4 + 16;
      v15 = *(v4 + 72);
      v32 = (v4 + 8);
      v33 = v8;
      v16 = v15;
      do
      {
        v17 = v16;
        v18 = v16 * v10;
        v34(v6, *(v7 + 48) + v16 * v10, v3);
        v19 = v7;
        v20 = v14;
        v21 = v13;
        v22 = v19;
        sub_10021E650(&qword_1006B41C8, &type metadata accessor for FMIPPlaySoundChannels, &protocol conformance descriptor for FMIPPlaySoundChannels);
        v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v32)(v6, v3);
        v24 = v23 & v21;
        v13 = v21;
        v14 = v20;
        if (a1 >= v20)
        {
          if (v24 >= v20 && a1 >= v24)
          {
LABEL_16:
            v7 = v22;
            v27 = *(v22 + 48);
            v16 = v17;
            v28 = v17 * a1;
            if (v17 * a1 < v18 || v27 + v17 * a1 >= (v27 + v18 + v17))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v10;
            }

            else
            {
              a1 = v10;
              if (v28 != v18)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v10;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v24 >= v20 || a1 >= v24)
        {
          goto LABEL_16;
        }

        v7 = v22;
        v16 = v17;
LABEL_5:
        v10 = (v10 + 1) & v13;
        v8 = v33;
      }

      while (((*(v33 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v29 = *(v7 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v31;
    ++*(v7 + 36);
  }
}

void sub_100215AFC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v35 = a4;
  v29 = a2;
  v30 = a1;
  v38 = type metadata accessor for FMIPItem();
  v7 = __chkstk_darwin(v38);
  v36 = a3;
  v37 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v12 = *(a3 + 56);
  v11 = a3 + 56;
  v10 = v12;
  v13 = 1 << *(v11 - 24);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v33 = v6 + 16;
  v34 = v6;
  v31 = 0;
  v32 = (v6 + 8);
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v18 = v17 | (v9 << 6);
    v19 = v38;
    v20 = v37;
LABEL_11:
    (*(v34 + 16))(v20, *(v36 + 48) + *(v34 + 72) * v18, v19, v7);
    v23 = v35(v20);
    v24 = v20;
    if (v4)
    {
      (*v32)(v20, v19);
      return;
    }

    v25 = v23;
    (*v32)(v24, v19);
    if (v25)
    {
      *(v30 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      if (__OFADD__(v31++, 1))
      {
        __break(1u);
LABEL_16:
        v27 = v36;

        sub_100215224(v30, v29, v31, v27);
        return;
      }
    }
  }

  v21 = v9;
  v19 = v38;
  v20 = v37;
  while (1)
  {
    v9 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v9 >= v16)
    {
      goto LABEL_16;
    }

    v22 = *(v11 + 8 * v9);
    ++v21;
    if (v22)
    {
      v15 = (v22 - 1) & v22;
      v18 = __clz(__rbit64(v22)) | (v9 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_100215D8C(int a1, const char *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v37 = a4;
  v35 = a3;
  v33 = a2;
  v36 = a1;
  v7 = sub_10007EBC0(&unk_1006BBCE0, &unk_1005534C0);
  __chkstk_darwin(v7 - 8);
  v9 = &v31 - v8;
  v10 = type metadata accessor for FMIPDevice();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v34 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v31 - v14;
  v16 = (*(v5 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource) + OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel);
  swift_beginAccess();
  v18 = *v16;
  v17 = v16[1];

  sub_1000E512C(v18, v17, v9);

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_100012DF0(v9, &unk_1006BBCE0, &unk_1005534C0);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100005B14(v19, qword_1006D4630);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, a5, v22, 2u);
    }
  }

  else
  {
    v32 = *(v11 + 32);
    v32(v15, v9, v10);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100005B14(v23, qword_1006D4630);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, v33, v26, 2u);
    }

    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v28 = v34;
    (*(v11 + 16))(v34, v15, v10);
    v29 = (*(v11 + 80) + 25) & ~*(v11 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = v27;
    *(v30 + 24) = v36 & 1;
    v32((v30 + v29), v28, v10);
    sub_1000C5474(v37, v30, 0, 0);

    (*(v11 + 8))(v15, v10);
  }
}

void *sub_1002161DC()
{
  v0 = type metadata accessor for FMIPPlaySoundChannels();
  v199 = *(v0 - 8);
  __chkstk_darwin(v0);
  v198 = &v184 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v197 = &v184 - v3;
  v4 = sub_10007EBC0(&qword_1006B6958, &qword_100558B48);
  __chkstk_darwin(v4 - 8);
  v196 = &v184 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v195 = &v184 - v7;
  __chkstk_darwin(v8);
  v194 = &v184 - v9;
  __chkstk_darwin(v10);
  v192 = &v184 - v11;
  v12 = type metadata accessor for FMIPItemState();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v213 = &v184 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v184 - v16;
  __chkstk_darwin(v18);
  v209 = &v184 - v19;
  __chkstk_darwin(v20);
  v210 = &v184 - v21;
  __chkstk_darwin(v22);
  v211 = &v184 - v23;
  v24 = type metadata accessor for FMIPPartType();
  v203 = *(v24 - 8);
  __chkstk_darwin(v24);
  v221 = &v184 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v220 = &v184 - v27;
  __chkstk_darwin(v28);
  v215 = &v184 - v29;
  __chkstk_darwin(v30);
  v214 = &v184 - v31;
  __chkstk_darwin(v32);
  v186 = &v184 - v33;
  __chkstk_darwin(v34);
  v225 = &v184 - v35;
  __chkstk_darwin(v36);
  v227 = &v184 - v37;
  __chkstk_darwin(v38);
  v226 = &v184 - v39;
  v231 = type metadata accessor for FMIPItem();
  v228 = *(v231 - 8);
  __chkstk_darwin(v231);
  v222 = &v184 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v223 = &v184 - v42;
  __chkstk_darwin(v43);
  v224 = &v184 - v44;
  __chkstk_darwin(v45);
  v47 = &v184 - v46;
  v48 = sub_10007EBC0(&qword_1006B07D0, qword_100552820);
  __chkstk_darwin(v48 - 8);
  v193 = &v184 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v191 = &v184 - v51;
  __chkstk_darwin(v52);
  v190 = &v184 - v53;
  __chkstk_darwin(v54);
  v189 = &v184 - v55;
  __chkstk_darwin(v56);
  v205 = &v184 - v57;
  __chkstk_darwin(v58);
  v206 = &v184 - v59;
  __chkstk_darwin(v60);
  v207 = &v184 - v61;
  __chkstk_darwin(v62);
  v208 = &v184 - v63;
  v64 = sub_10007EBC0(&unk_1006BB1C0, &unk_1005534F0);
  __chkstk_darwin(v64 - 8);
  v66 = &v184 - v65;
  v200 = FMIPDevice.identifier.getter();
  v204 = v67;
  v236 = _swiftEmptySetSingleton;
  FMIPDevice.itemGroup.getter();
  v68 = type metadata accessor for FMIPItemGroup();
  v69 = *(v68 - 8);
  if ((*(v69 + 48))(v66, 1, v68) == 1)
  {
    v70 = &unk_1006BB1C0;
    v71 = &unk_1005534F0;
    v72 = v66;
    goto LABEL_80;
  }

  v73 = FMIPItemGroup.items.getter();
  (*(v69 + 8))(v66, v68);
  v74 = *(v73 + 16);
  v185 = v12;
  v184 = v13;
  v187 = v17;
  v229 = v74;
  v230 = v73;
  v188 = v0;
  if (v74)
  {
    v75 = v73;
    v76 = 0;
    v77 = v228;
    v219 = (v228 + 16);
    LODWORD(v218) = enum case for FMIPPartType.leftBud(_:);
    v78 = (v203 + 104);
    v79 = (v203 + 8);
    v80 = (v228 + 8);
    v81 = v231;
    while (v76 < *(v75 + 16))
    {
      (*(v77 + 16))(v47, v75 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v76, v81);
      FMIPItem.partType.getter();
      (*v78)(v227, v218, v24);
      sub_10021E650(&qword_1006BEF50, &type metadata accessor for FMIPPartType, &protocol conformance descriptor for FMIPPartType);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v234 == v232 && v235 == v233)
      {
        v86 = *v79;
        (*v79)(v227, v24);
        v86(v226, v24);

LABEL_13:
        v77 = v228;
        v85 = v208;
        v81 = v231;
        (*(v228 + 32))(v208, v47, v231);
        v84 = 0;
        goto LABEL_14;
      }

      v82 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v83 = *v79;
      (*v79)(v227, v24);
      v83(v226, v24);

      if (v82)
      {
        goto LABEL_13;
      }

      ++v76;
      v81 = v231;
      (*v80)(v47, v231);
      v77 = v228;
      v75 = v230;
      if (v229 == v76)
      {
        v84 = 1;
        v85 = v208;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
  }

  else
  {
    v84 = 1;
    v85 = v208;
    v81 = v231;
    v77 = v228;
LABEL_14:
    v87 = *(v77 + 56);
    v87(v85, v84, 1, v81);
    v202 = v77 + 56;
    v201 = v87;
    if (v229)
    {
      v88 = 0;
      v227 = (v77 + 16);
      v212 = enum case for FMIPPartType.rightBud(_:);
      v226 = (v203 + 104);
      v89 = (v203 + 8);
      v217 = (v77 + 8);
      v90 = v186;
      while (1)
      {
        if (v88 >= *(v230 + 16))
        {
          goto LABEL_88;
        }

        v91 = (*(v77 + 80) + 32) & ~*(v77 + 80);
        v216 = *(v77 + 72);
        v219 = *(v77 + 16);
        v219(v224, v230 + v91 + v216 * v88, v81);
        FMIPItem.partType.getter();
        v218 = *v226;
        v218(v90, v212, v24);
        sub_10021E650(&qword_1006BEF50, &type metadata accessor for FMIPPartType, &protocol conformance descriptor for FMIPPartType);
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        if (v234 == v232 && v235 == v233)
        {
          break;
        }

        v92 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v93 = *v89;
        (*v89)(v90, v24);
        v93(v225, v24);

        if (v92)
        {
          goto LABEL_24;
        }

        ++v88;
        v81 = v231;
        (*v217)(v224, v231);
        v77 = v228;
        if (v229 == v88)
        {
          v94 = 1;
          v95 = v207;
          goto LABEL_25;
        }
      }

      v98 = *v89;
      (*v89)(v90, v24);
      v98(v225, v24);

LABEL_24:
      v95 = v207;
      v81 = v231;
      (*(v228 + 32))(v207, v224, v231);
      v94 = 0;
LABEL_25:
      v201(v95, v94, 1, v81);
      v99 = 0;
      LODWORD(v225) = enum case for FMIPPartType.case(_:);
      v100 = v230;
      v101 = v230 + v91;
      v102 = v214;
      while (1)
      {
        if (v99 >= *(v100 + 16))
        {
          goto LABEL_89;
        }

        v219(v223, v101, v81);
        FMIPItem.partType.getter();
        v103 = v215;
        v218(v215, v225, v24);
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        v104 = v234 == v232 && v235 == v233;
        if (v104)
        {
          break;
        }

        v105 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v106 = v103;
        v107 = v105;
        v108 = *v89;
        (*v89)(v106, v24);
        v108(v102, v24);

        if (v107)
        {
          goto LABEL_35;
        }

        ++v99;
        v81 = v231;
        (*v217)(v223, v231);
        v101 += v216;
        v100 = v230;
        if (v229 == v99)
        {
          v96 = 1;
          v97 = v206;
          goto LABEL_36;
        }
      }

      v109 = *v89;
      (*v89)(v103, v24);
      v109(v102, v24);

LABEL_35:
      v97 = v206;
      v81 = v231;
      (*(v228 + 32))(v206, v223, v231);
      v96 = 0;
LABEL_36:
      v87 = v201;
      goto LABEL_37;
    }

    v96 = 1;
    v87(v207, 1, 1, v81);
    v97 = v206;
LABEL_37:
    v87(v97, v96, 1, v81);
    if (!v229)
    {
LABEL_44:

      v117 = 1;
      v118 = v205;
      v119 = v228;
LABEL_47:
      v201(v118, v117, 1, v81);
      v121 = v189;
      sub_100007204(v208, v189, &qword_1006B07D0, qword_100552820);
      v122 = *(v119 + 48);
      v123 = v122(v121, 1, v81);
      v124 = v81;
      v125 = v185;
      v126 = v184;
      if (v123 == 1)
      {
        sub_100012DF0(v121, &qword_1006B07D0, qword_100552820);
        v127 = *(v126 + 56);
        v128 = v192;
        v127(v192, 1, 1, v125);
        static FMIPItemState.normal.getter();
        if ((*(v126 + 48))(v128, 1, v125) != 1)
        {
          sub_100012DF0(v128, &qword_1006B6958, &qword_100558B48);
        }

        v129 = v188;
        v124 = v231;
      }

      else
      {
        v130 = v192;
        FMIPItem.state.getter();
        (*(v119 + 8))(v121, v124);
        v127 = *(v126 + 56);
        v127(v130, 0, 1, v125);
        (*(v126 + 32))(v211, v130, v125);
        v129 = v188;
      }

      v131 = v190;
      sub_100007204(v207, v190, &qword_1006B07D0, qword_100552820);
      if (v122(v131, 1, v124) == 1)
      {
        sub_100012DF0(v131, &qword_1006B07D0, qword_100552820);
        v132 = v194;
        v127(v194, 1, 1, v125);
        static FMIPItemState.normal.getter();
        v133 = (*(v126 + 48))(v132, 1, v125);
        v134 = v195;
        if (v133 != 1)
        {
          sub_100012DF0(v132, &qword_1006B6958, &qword_100558B48);
        }
      }

      else
      {
        v135 = v194;
        FMIPItem.state.getter();
        (*(v228 + 8))(v131, v124);
        v127(v135, 0, 1, v125);
        (*(v126 + 32))(v210, v135, v125);
        v134 = v195;
      }

      v136 = v191;
      sub_100007204(v206, v191, &qword_1006B07D0, qword_100552820);
      v137 = v231;
      if (v122(v136, 1, v231) == 1)
      {
        sub_100012DF0(v136, &qword_1006B07D0, qword_100552820);
        v127(v134, 1, 1, v125);
        static FMIPItemState.normal.getter();
        v104 = (*(v126 + 48))(v134, 1, v125) == 1;
        v138 = v193;
        v139 = v205;
        if (!v104)
        {
          v140 = v205;
          sub_100012DF0(v134, &qword_1006B6958, &qword_100558B48);
          v139 = v140;
        }
      }

      else
      {
        FMIPItem.state.getter();
        (*(v228 + 8))(v136, v137);
        v127(v134, 0, 1, v125);
        (*(v126 + 32))(v209, v134, v125);
        v138 = v193;
        v139 = v205;
      }

      sub_100007204(v139, v138, &qword_1006B07D0, qword_100552820);
      v141 = v231;
      if (v122(v138, 1, v231) == 1)
      {
        sub_100012DF0(v138, &qword_1006B07D0, qword_100552820);
        v142 = v196;
        v127(v196, 1, 1, v125);
        static FMIPItemState.normal.getter();
        v143 = (*(v126 + 48))(v142, 1, v125);
        v144 = v199;
        v145 = v213;
        v146 = v197;
        v147 = v198;
        if (v143 != 1)
        {
          sub_100012DF0(v142, &qword_1006B6958, &qword_100558B48);
        }
      }

      else
      {
        v148 = v196;
        FMIPItem.state.getter();
        (*(v228 + 8))(v138, v141);
        v127(v148, 0, 1, v125);
        (*(v126 + 32))(v187, v148, v125);
        v144 = v199;
        v145 = v213;
        v146 = v197;
        v147 = v198;
      }

      static FMIPItemState.soundPlaying.getter();
      sub_10021E650(&qword_1006C0350, &type metadata accessor for FMIPItemState, &protocol conformance descriptor for FMIPItemState);
      v149 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v150 = v145;
      v151 = *(v126 + 8);
      v151(v150, v125);
      if (v149 & 1) != 0 || (v152 = v213, static FMIPItemState.soundPending.getter(), v153 = dispatch thunk of SetAlgebra.isSuperset(of:)(), v151(v152, v125), (v153) || (v154 = v213, static FMIPItemState.soundQueued.getter(), v155 = dispatch thunk of SetAlgebra.isSuperset(of:)(), v151(v154, v125), (v155))
      {
        (*(v144 + 104))(v147, enum case for FMIPPlaySoundChannels.left(_:), v129);
        sub_1002546CC(v146, v147);
        (*(v144 + 8))(v146, v129);
      }

      v156 = v213;
      static FMIPItemState.soundPlaying.getter();
      v157 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v151(v156, v125);
      if (v157 & 1) != 0 || (v158 = v213, static FMIPItemState.soundPending.getter(), v159 = dispatch thunk of SetAlgebra.isSuperset(of:)(), v151(v158, v125), (v159) || (v160 = v213, static FMIPItemState.soundQueued.getter(), v161 = dispatch thunk of SetAlgebra.isSuperset(of:)(), v151(v160, v125), (v161))
      {
        (*(v144 + 104))(v147, enum case for FMIPPlaySoundChannels.right(_:), v129);
        sub_1002546CC(v146, v147);
        (*(v144 + 8))(v146, v129);
      }

      v162 = v213;
      static FMIPItemState.soundPlaying.getter();
      v163 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v151(v162, v125);
      if (v163 & 1) != 0 || (v164 = v213, static FMIPItemState.soundPending.getter(), v165 = dispatch thunk of SetAlgebra.isSuperset(of:)(), v151(v164, v125), (v165) || (v166 = v213, static FMIPItemState.soundQueued.getter(), v167 = dispatch thunk of SetAlgebra.isSuperset(of:)(), v151(v166, v125), (v167))
      {
        (*(v144 + 104))(v147, enum case for FMIPPlaySoundChannels.case(_:), v129);
        sub_1002546CC(v146, v147);
        (*(v144 + 8))(v146, v129);
      }

      v168 = v213;
      static FMIPItemState.soundPlaying.getter();
      v169 = v187;
      v170 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v151(v168, v125);
      if ((v170 & 1) == 0)
      {
        static FMIPItemState.soundPending.getter();
        v171 = dispatch thunk of SetAlgebra.isSuperset(of:)();
        v151(v168, v125);
        if ((v171 & 1) == 0)
        {
          static FMIPItemState.soundQueued.getter();
          v172 = dispatch thunk of SetAlgebra.isSuperset(of:)();
          v151(v168, v125);
          if ((v172 & 1) == 0)
          {
            v151(v169, v125);
            v151(v209, v125);
            v151(v210, v125);
            v151(v211, v125);
            sub_100012DF0(v205, &qword_1006B07D0, qword_100552820);
            sub_100012DF0(v206, &qword_1006B07D0, qword_100552820);
            sub_100012DF0(v207, &qword_1006B07D0, qword_100552820);
            sub_100012DF0(v208, &qword_1006B07D0, qword_100552820);
            v24 = v204;
LABEL_81:
            if (qword_1006AEBE0 == -1)
            {
              goto LABEL_82;
            }

            goto LABEL_91;
          }
        }
      }

      v173 = v188;
      (*(v144 + 104))(v147, enum case for FMIPPlaySoundChannels.standalone(_:), v188);
      sub_1002546CC(v146, v147);
      (*(v144 + 8))(v146, v173);
      v151(v169, v125);
      v151(v209, v125);
      v151(v210, v125);
      v151(v211, v125);
      sub_100012DF0(v205, &qword_1006B07D0, qword_100552820);
      sub_100012DF0(v206, &qword_1006B07D0, qword_100552820);
      sub_100012DF0(v207, &qword_1006B07D0, qword_100552820);
      v72 = v208;
      v70 = &qword_1006B07D0;
      v71 = qword_100552820;
LABEL_80:
      sub_100012DF0(v72, v70, v71);
      v24 = v204;
      goto LABEL_81;
    }

    v110 = 0;
    v227 = (v228 + 16);
    v111 = enum case for FMIPPartType.standalone(_:);
    v112 = (v203 + 104);
    v113 = (v203 + 8);
    v114 = (v228 + 8);
    while (v110 < *(v230 + 16))
    {
      (*(v228 + 16))(v222, v230 + ((*(v228 + 80) + 32) & ~*(v228 + 80)) + *(v228 + 72) * v110, v81);
      FMIPItem.partType.getter();
      (*v112)(v221, v111, v24);
      sub_10021E650(&qword_1006BEF50, &type metadata accessor for FMIPPartType, &protocol conformance descriptor for FMIPPartType);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v234 == v232 && v235 == v233)
      {
        v120 = *v113;
        (*v113)(v221, v24);
        v120(v220, v24);

LABEL_46:

        v119 = v228;
        v118 = v205;
        v81 = v231;
        (*(v228 + 32))(v205, v222, v231);
        v117 = 0;
        goto LABEL_47;
      }

      v115 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v116 = *v113;
      (*v113)(v221, v24);
      v116(v220, v24);

      if (v115)
      {
        goto LABEL_46;
      }

      ++v110;
      v81 = v231;
      (*v114)(v222, v231);
      if (v229 == v110)
      {
        goto LABEL_44;
      }
    }
  }

  __break(1u);
LABEL_91:
  swift_once();
LABEL_82:
  v174 = type metadata accessor for Logger();
  sub_100005B14(v174, qword_1006D4630);

  v175 = Logger.logObject.getter();
  v176 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v175, v176))
  {
    v177 = swift_slowAlloc();
    v234 = swift_slowAlloc();
    *v177 = 141558531;
    *(v177 + 4) = 1752392040;
    *(v177 + 12) = 2081;
    v178 = sub_100005B4C(v200, v24, &v234);

    *(v177 + 14) = v178;
    *(v177 + 22) = 2082;
    swift_beginAccess();
    sub_10021E650(&qword_1006B41C8, &type metadata accessor for FMIPPlaySoundChannels, &protocol conformance descriptor for FMIPPlaySoundChannels);

    v179 = Set.description.getter();
    v181 = v180;

    v182 = sub_100005B4C(v179, v181, &v234);

    *(v177 + 24) = v182;
    _os_log_impl(&_mh_execute_header, v175, v176, "FMDeviceDetailContentViewController: offlineActiveChannels for %{private,mask.hash}s %{public}s.", v177, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  swift_beginAccess();
  return v236;
}

double sub_100218158()
{
  v1 = sub_10007EBC0(&unk_1006B0000, &unk_100552AA0);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - v2;
  if ((*(*(v0 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_playSoundButton) + OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active) & 1) != 0 || (v4 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_playSoundInFlight, swift_beginAccess(), sub_100007204(v0 + v4, v3, &unk_1006B0000, &unk_100552AA0), v5 = type metadata accessor for Date(), LODWORD(v4) = (*(*(v5 - 8) + 48))(v3, 1, v5), sub_100012DF0(v3, &unk_1006B0000, &unk_100552AA0), v4 != 1))
  {
    sub_1001EFE58();
  }

  *(*(v0 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource) + 104) = 0;

  sub_1004E156C(v6, v7, v8);

  return result;
}

double sub_1002182B8()
{
  v1 = v0;
  v2 = type metadata accessor for FMIPFeatures();
  v47 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v41 - v6;
  v8 = type metadata accessor for FMIPDevice();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource;
  v13 = *(v0 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource);
  v14 = v13 + OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel;
  swift_beginAccess();
  if ((*(v14 + *(type metadata accessor for FMDeviceDetailViewModel(0) + 148)) & 1) == 0)
  {
    v15 = *(v13 + 40);
    v16 = *v15;
    v45 = v2;
    v46 = v12;
    v17 = *(v16 + class metadata base offset for ManagedBuffer + 16);
    v18 = v1;
    v19 = (*(v16 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v15 + v19));
    v43 = *(v9 + 16);
    v44 = v9 + 16;
    v43(v11, v15 + v17, v8);
    v20 = (v15 + v19);
    v1 = v18;
    os_unfair_lock_unlock(v20);

    FMIPDevice.features.getter();
    v42 = *(v9 + 8);
    v42(v11, v8);
    static FMIPFeatures.isBTFindingSupported.getter();
    sub_10021E650(&qword_1006C1D50, &type metadata accessor for FMIPFeatures, &protocol conformance descriptor for FMIPFeatures);
    v21 = v45;
    v22 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v23 = *(v47 + 8);
    v23(v4, v21);
    v23(v7, v21);
    v12 = v46;
    if (v22)
    {
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_100005B14(v24, qword_1006D4630);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "FMDeviceDetailContentViewController, attempting to stop fast advertisement", v27, 2u);
      }

      v28 = *(v1 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_findingExperienceCoordinator);
      v29 = *(*(v1 + v12) + 40);
      v30 = *(*v29 + class metadata base offset for ManagedBuffer + 16);
      v31 = (*(*v29 + 48) + 3) & 0x1FFFFFFFCLL;

      os_unfair_lock_lock((v29 + v31));
      v32 = (v29 + v30);
      v12 = v46;
      v43(v11, v32, v8);
      os_unfair_lock_unlock((v29 + v31));

      v33 = FMIPDevice.baIdentifier.getter();
      v35 = v34;
      v42(v11, v8);
      v36 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_1001A4FD0(v33, v35, 0, v28, v36);
    }
  }

  *(*(v1 + v12) + 104) = 1;

  sub_1004E156C(v37, v38, v39);

  return result;
}

void sub_1002187A4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v32 = a5;
  v33 = a6;
  v36 = a4;
  v37 = a3;
  v34 = a2;
  v35 = a1;
  v7 = type metadata accessor for FMIPItem();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v31 = &v29 - v12;
  v29 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator;
  v30 = v6;

  v13 = FMIPManager.items.getter();

  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = 0;
    while (v15 < *(v13 + 16))
    {
      (*(v8 + 16))(v10, v13 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v15, v7);
      if (FMIPItem.identifier.getter() == v37 && v16 == v36)
      {
        v24 = v36;

LABEL_14:
        v25 = v31;
        (*(v8 + 32))(v31, v10, v7);
        v26 = swift_allocObject();
        v26[2] = v37;
        v26[3] = v24;
        v28 = v32;
        v27 = v33;
        v26[4] = v32;
        v26[5] = v27;

        sub_100062900(v28, v27);
        sub_1000DB0B0(v25, v35, v34 & 1, sub_10021E644, v26);

        (*(v8 + 8))(v25, v7);
        return;
      }

      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v17)
      {

        v24 = v36;
        goto LABEL_14;
      }

      ++v15;
      (*(v8 + 8))(v10, v7);
      if (v14 == v15)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_8:

  if (qword_1006AEBE0 != -1)
  {
LABEL_16:
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100005B14(v18, qword_1006D4630);
  v19 = v36;

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v38 = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_100005B4C(v37, v19, &v38);
    _os_log_impl(&_mh_execute_header, v20, v21, "FMDeviceDetailContentViewController: Requested play sound for unknown item identifier: %s", v22, 0xCu);
    sub_100006060(v23);
  }
}

void sub_100218B88()
{
  v1 = v0;
  v2 = sub_10007EBC0(&qword_1006B0080, &unk_100552AF0);
  __chkstk_darwin(v2 - 8);
  v172 = &v166 - v3;
  v171 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v171);
  v170 = &v166 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  v173 = &v166 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v176 = *(v174 - 8);
  __chkstk_darwin(v174);
  v169 = &v166 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = type metadata accessor for FMPlatterIcon(0);
  __chkstk_darwin(v179);
  v9 = &v166 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_playSoundDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_conditionsSubscription) = 0;
  v168 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_playSoundButton;
  v182 = objc_opt_self();
  v10 = [v182 systemIndigoColor];
  swift_storeEnumTagMultiPayload();
  v11 = type metadata accessor for FMIconPlatterButton(0);
  v12 = objc_allocWithZone(v11);
  v13 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_iconView;
  *&v12[v13] = [objc_allocWithZone(UIImageView) init];
  v14 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_titleLabel;
  *&v12[v14] = [objc_allocWithZone(UILabel) init];
  v15 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_subtitleLabel;
  *&v12[v15] = [objc_allocWithZone(UILabel) init];
  v16 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activityIndicator;
  *&v12[v16] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v17 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterBackgroundView;
  v18 = type metadata accessor for FMPlatterBackgroundView();
  v19 = objc_allocWithZone(v18);
  v19[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 1;
  v200.receiver = v19;
  v200.super_class = v18;
  v20 = objc_msgSendSuper2(&v200, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10024610C();

  *&v12[v17] = v20;
  v12[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_state] = 0;
  v12[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_currentIconState] = 3;
  v12[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
  v12[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] = 0;
  v12[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
  v12[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 0;
  v12[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled] = 0;
  v21 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled;
  v12[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled] = 0;
  v12[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showQueuedWhenDisabled] = 0;
  v12[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_stopping] = 0;
  *&v12[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeColor] = v10;
  v180 = type metadata accessor for FMPlatterIcon;
  sub_10022017C(v9, &v12[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterIcon], type metadata accessor for FMPlatterIcon);
  v22 = &v12[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext];
  *v22 = 0xD00000000000001ELL;
  *(v22 + 1) = 0x80000001005863C0;
  v22[40] = 0;
  *(v22 + 3) = 0;
  *(v22 + 4) = 0;
  *(v22 + 2) = 0;
  v12[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeWhenPending] = 1;
  v12[v21] = 1;
  v199.receiver = v12;
  v199.super_class = v11;
  v23 = v10;
  v24 = objc_msgSendSuper2(&v199, "init");
  sub_1000D3C9C();
  v25 = objc_opt_self();
  v177 = v25;
  v26 = swift_allocObject();
  *(v26 + 16) = v24;
  *(v26 + 24) = 0;
  v197 = sub_100141408;
  v198 = v26;
  aBlock = _NSConcreteStackBlock;
  v194 = 1107296256;
  v181 = &v195;
  v195 = sub_100004AE4;
  v196 = &unk_10062FAA0;
  v27 = _Block_copy(&aBlock);
  v28 = v24;

  [v25 animateWithDuration:v27 animations:0.35];
  _Block_release(v27);

  v178 = type metadata accessor for FMPlatterIcon;
  sub_1002201E4(v9, type metadata accessor for FMPlatterIcon);
  *(v1 + v168) = v28;
  v168 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteLeftButton;
  v29 = [v182 systemIndigoColor];
  swift_storeEnumTagMultiPayload();
  v166 = 0x80000001005863E0;
  v30 = objc_allocWithZone(v11);
  v31 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_iconView;
  *&v30[v31] = [objc_allocWithZone(UIImageView) init];
  v32 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_titleLabel;
  *&v30[v32] = [objc_allocWithZone(UILabel) init];
  v33 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_subtitleLabel;
  *&v30[v33] = [objc_allocWithZone(UILabel) init];
  v34 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activityIndicator;
  *&v30[v34] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v35 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterBackgroundView;
  v175 = v18;
  v36 = objc_allocWithZone(v18);
  v36[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 1;
  v192.receiver = v36;
  v192.super_class = v18;
  v37 = objc_msgSendSuper2(&v192, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10024610C();

  *&v30[v35] = v37;
  v30[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_state] = 0;
  v30[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_currentIconState] = 3;
  v30[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
  v30[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] = 0;
  v30[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
  v30[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 0;
  v30[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled] = 0;
  v38 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled;
  v30[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled] = 0;
  v30[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showQueuedWhenDisabled] = 0;
  v30[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_stopping] = 0;
  *&v30[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeColor] = v29;
  sub_10022017C(v9, &v30[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterIcon], v180);
  v39 = &v30[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext];
  v40 = v166;
  *v39 = 0xD000000000000028;
  *(v39 + 1) = v40;
  v39[40] = 0;
  *(v39 + 3) = 0;
  *(v39 + 4) = 0;
  *(v39 + 2) = 0;
  v30[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeWhenPending] = 0;
  v30[v38] = 0;
  v191.receiver = v30;
  v191.super_class = v11;
  v41 = v29;
  v42 = objc_msgSendSuper2(&v191, "init");
  sub_1000D3C9C();
  v43 = swift_allocObject();
  *(v43 + 16) = v42;
  *(v43 + 24) = 0;
  v197 = sub_100141408;
  v198 = v43;
  aBlock = _NSConcreteStackBlock;
  v194 = 1107296256;
  v195 = sub_100004AE4;
  v196 = &unk_10062FAF0;
  v44 = _Block_copy(&aBlock);
  v45 = v42;

  [v177 animateWithDuration:v44 animations:0.35];
  _Block_release(v44);

  sub_1002201E4(v9, v178);
  *(v1 + v168) = v45;
  v168 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteRightButton;
  v46 = [v182 systemIndigoColor];
  swift_storeEnumTagMultiPayload();
  v47 = objc_allocWithZone(v11);
  v48 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_iconView;
  *&v47[v48] = [objc_allocWithZone(UIImageView) init];
  v49 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_titleLabel;
  *&v47[v49] = [objc_allocWithZone(UILabel) init];
  v50 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_subtitleLabel;
  *&v47[v50] = [objc_allocWithZone(UILabel) init];
  v51 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activityIndicator;
  *&v47[v51] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v52 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterBackgroundView;
  v53 = v175;
  v54 = objc_allocWithZone(v175);
  v54[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 1;
  v190.receiver = v54;
  v190.super_class = v53;
  v55 = objc_msgSendSuper2(&v190, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10024610C();

  *&v47[v52] = v55;
  v47[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_state] = 0;
  v47[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_currentIconState] = 3;
  v47[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
  v47[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] = 0;
  v47[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
  v47[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 0;
  v47[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled] = 0;
  v56 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled;
  v47[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled] = 0;
  v47[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showQueuedWhenDisabled] = 0;
  v47[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_stopping] = 0;
  *&v47[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeColor] = v46;
  v57 = v9;
  v58 = v180;
  sub_10022017C(v9, &v47[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterIcon], v180);
  v59 = &v47[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext];
  *v59 = 0xD000000000000029;
  *(v59 + 1) = 0x8000000100586410;
  v59[40] = 0;
  *(v59 + 3) = 0;
  *(v59 + 4) = 0;
  *(v59 + 2) = 0;
  v47[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeWhenPending] = 0;
  v47[v56] = 0;
  v189.receiver = v47;
  v189.super_class = v11;
  v167 = v11;
  v60 = v46;
  v61 = objc_msgSendSuper2(&v189, "init");
  sub_1000D3C9C();
  v62 = swift_allocObject();
  *(v62 + 16) = v61;
  *(v62 + 24) = 0;
  v197 = sub_100141408;
  v198 = v62;
  aBlock = _NSConcreteStackBlock;
  v194 = 1107296256;
  v195 = sub_100004AE4;
  v196 = &unk_10062FB40;
  v63 = _Block_copy(&aBlock);
  v64 = v61;

  [v177 animateWithDuration:v63 animations:0.35];
  _Block_release(v63);

  v65 = v178;
  sub_1002201E4(v9, v178);
  *(v1 + v168) = v64;
  v168 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_stopSoundButton;
  v66 = [v182 systemIndigoColor];
  swift_storeEnumTagMultiPayload();
  v166 = 0x8000000100586440;
  v67 = objc_allocWithZone(v11);
  v68 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_iconView;
  *&v67[v68] = [objc_allocWithZone(UIImageView) init];
  v69 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_titleLabel;
  *&v67[v69] = [objc_allocWithZone(UILabel) init];
  v70 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_subtitleLabel;
  *&v67[v70] = [objc_allocWithZone(UILabel) init];
  v71 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activityIndicator;
  *&v67[v71] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v72 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterBackgroundView;
  v73 = v175;
  v74 = objc_allocWithZone(v175);
  v74[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 1;
  v188.receiver = v74;
  v188.super_class = v73;
  v75 = objc_msgSendSuper2(&v188, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10024610C();

  *&v67[v72] = v75;
  v67[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_state] = 0;
  v67[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_currentIconState] = 3;
  v67[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
  v67[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] = 0;
  v67[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
  v67[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 0;
  v67[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled] = 0;
  v76 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled;
  v67[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled] = 0;
  v67[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showQueuedWhenDisabled] = 0;
  v67[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_stopping] = 0;
  *&v67[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeColor] = v66;
  sub_10022017C(v9, &v67[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterIcon], v58);
  v77 = &v67[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext];
  *v77 = 0xD00000000000001ELL;
  *(v77 + 1) = v166;
  *(v77 + 2) = 0;
  v77[40] = 0;
  *(v77 + 3) = 0;
  *(v77 + 4) = 0;
  v67[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeWhenPending] = 0;
  v67[v76] = 0;
  v187.receiver = v67;
  v78 = v167;
  v187.super_class = v167;
  v79 = v66;
  v80 = objc_msgSendSuper2(&v187, "init");
  sub_1000D3C9C();
  v81 = swift_allocObject();
  *(v81 + 16) = v80;
  *(v81 + 24) = 0;
  v197 = sub_100141408;
  v198 = v81;
  aBlock = _NSConcreteStackBlock;
  v194 = 1107296256;
  v195 = sub_100004AE4;
  v196 = &unk_10062FB90;
  v82 = _Block_copy(&aBlock);
  v83 = v80;

  v84 = v177;
  [v177 animateWithDuration:v82 animations:0.35];
  _Block_release(v82);

  sub_1002201E4(v57, v65);
  *(v1 + v168) = v83;
  v168 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_directionsButton;
  v85 = [v182 systemBlueColor];
  swift_storeEnumTagMultiPayload();
  v86 = v78;
  v87 = objc_allocWithZone(v78);
  v88 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_iconView;
  *&v87[v88] = [objc_allocWithZone(UIImageView) init];
  v89 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_titleLabel;
  *&v87[v89] = [objc_allocWithZone(UILabel) init];
  v90 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_subtitleLabel;
  *&v87[v90] = [objc_allocWithZone(UILabel) init];
  v91 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activityIndicator;
  *&v87[v91] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v92 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterBackgroundView;
  v93 = v175;
  v94 = objc_allocWithZone(v175);
  v94[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 1;
  v186.receiver = v94;
  v186.super_class = v93;
  v95 = objc_msgSendSuper2(&v186, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10024610C();

  *&v87[v92] = v95;
  v87[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_state] = 0;
  v87[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_currentIconState] = 3;
  v87[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
  v87[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] = 0;
  v87[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
  v87[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 0;
  v87[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled] = 0;
  v96 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled;
  v87[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled] = 0;
  v87[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showQueuedWhenDisabled] = 0;
  v87[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_stopping] = 0;
  *&v87[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeColor] = v85;
  sub_10022017C(v57, &v87[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterIcon], v180);
  v97 = &v87[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext];
  *v97 = 0xD00000000000001FLL;
  *(v97 + 1) = 0x800000010057F980;
  v97[40] = 0;
  *(v97 + 3) = 0;
  *(v97 + 4) = 0;
  *(v97 + 2) = 0;
  v87[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeWhenPending] = 0;
  v87[v96] = 0;
  v185.receiver = v87;
  v185.super_class = v86;
  v98 = v85;
  v99 = objc_msgSendSuper2(&v185, "init");
  sub_1000D3C9C();
  v100 = swift_allocObject();
  *(v100 + 16) = v99;
  *(v100 + 24) = 0;
  v197 = sub_100141408;
  v198 = v100;
  aBlock = _NSConcreteStackBlock;
  v194 = 1107296256;
  v195 = sub_100004AE4;
  v196 = &unk_10062FBE0;
  v101 = _Block_copy(&aBlock);
  v102 = v99;

  [v84 animateWithDuration:v101 animations:0.35];
  _Block_release(v101);

  sub_1002201E4(v57, v178);
  *(v1 + v168) = v102;
  *(v1 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_itemConnectionManager) = 0;
  v168 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_findButton;
  v103 = [v182 systemBlueColor];
  v104 = *(sub_10007EBC0(&qword_1006B68B0, &unk_100565040) + 48);
  v105 = enum case for FMFindingType.owner(_:);
  v106 = type metadata accessor for FMFindingType();
  (*(*(v106 - 8) + 104))(v57, v105, v106);
  *(v57 + v104) = 0;
  v107 = enum case for FMFindingTechnology.proximity(_:);
  v108 = type metadata accessor for FMFindingTechnology();
  (*(*(v108 - 8) + 104))(v57, v107, v108);
  swift_storeEnumTagMultiPayload();
  v109 = objc_allocWithZone(v86);
  v110 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_iconView;
  *&v109[v110] = [objc_allocWithZone(UIImageView) init];
  v111 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_titleLabel;
  *&v109[v111] = [objc_allocWithZone(UILabel) init];
  v112 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_subtitleLabel;
  *&v109[v112] = [objc_allocWithZone(UILabel) init];
  v113 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activityIndicator;
  *&v109[v113] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v114 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterBackgroundView;
  v115 = objc_allocWithZone(v93);
  v115[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 1;
  v184.receiver = v115;
  v184.super_class = v93;
  v116 = objc_msgSendSuper2(&v184, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10024610C();

  *&v109[v114] = v116;
  v109[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_state] = 0;
  v109[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_currentIconState] = 3;
  v109[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
  v109[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] = 0;
  v109[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
  v109[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 0;
  v109[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled] = 0;
  v117 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled;
  v109[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled] = 0;
  v109[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showQueuedWhenDisabled] = 0;
  v109[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_stopping] = 0;
  *&v109[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeColor] = v103;
  sub_10022017C(v57, &v109[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterIcon], v180);
  v118 = &v109[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext];
  *v118 = 0xD000000000000019;
  *(v118 + 1) = 0x8000000100586460;
  v118[40] = 0;
  *(v118 + 3) = 0;
  *(v118 + 4) = 0;
  *(v118 + 2) = 0;
  v109[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeWhenPending] = 0;
  v109[v117] = 0;
  v183.receiver = v109;
  v183.super_class = v86;
  v119 = v103;
  v120 = objc_msgSendSuper2(&v183, "init");
  sub_1000D3C9C();
  v121 = swift_allocObject();
  *(v121 + 16) = v120;
  *(v121 + 24) = 0;
  v197 = sub_100141408;
  v198 = v121;
  aBlock = _NSConcreteStackBlock;
  v194 = 1107296256;
  v195 = sub_100004AE4;
  v196 = &unk_10062FC30;
  v122 = _Block_copy(&aBlock);
  v123 = v120;

  [v177 animateWithDuration:v122 animations:0.35];
  _Block_release(v122);

  sub_1002201E4(v57, v178);
  *(v1 + v168) = v123;
  *(v1 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_btDeviceDiscoveryToken) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController____lazy_storage___ownerSession) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_connectionMaterialTask) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_localFindableConnectionMaterialMonitoringSession) = 0;
  v175 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_connectionMaterialUpdateQueue;
  v179 = sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
  LODWORD(v181) = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v124 = *(v176 + 104);
  v176 += 104;
  v182 = v124;
  v125 = v169;
  (v124)(v169);
  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  v178 = sub_10021E650(&unk_1006B0620, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  v177 = sub_10007EBC0(&unk_1006AEDD0, &unk_100550420);
  v180 = sub_100004044(&unk_1006B0630, &unk_1006AEDD0, &unk_100550420);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v175 + v1) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v126 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_notificationsView;
  v127 = objc_allocWithZone(type metadata accessor for FMDeviceNotificationsView());
  *(v1 + v126) = sub_100240BE4();
  v128 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_showContactDetailsView;
  v129 = objc_allocWithZone(type metadata accessor for FMDeviceShowContactDetailsView());
  *(v1 + v128) = sub_10044B9AC();
  *(v1 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_showContactDetailsWelcomeScreenViewController) = 0;
  v130 = (v1 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_showContactDetailsPhoneNumber);
  *v130 = 0;
  v130[1] = 0xE000000000000000;
  v131 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_separationAttention;
  v132 = type metadata accessor for FMExtendedPlatterInfoView(0);
  v133 = objc_allocWithZone(v132);
  *(v1 + v131) = sub_10032B2F8(1, 0);
  *(v1 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_markAsLostHostingController) = 0;
  v134 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_inaccurateAttention;
  v135 = objc_allocWithZone(v132);
  *(v1 + v134) = sub_10032B2F8(1, 0);
  v136 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_soundPendingAttention;
  v137 = objc_allocWithZone(type metadata accessor for FMFailablePlatterInfoView(0));
  v138 = OBJC_IVAR____TtC6FindMy25FMFailablePlatterInfoView_isActionable;
  v137[OBJC_IVAR____TtC6FindMy25FMFailablePlatterInfoView_isActionable] = 0;
  v137[OBJC_IVAR____TtC6FindMy25FMFailablePlatterInfoView_playSoundFailureCode] = 0;
  v137[OBJC_IVAR____TtC6FindMy25FMFailablePlatterInfoView_localizableType] = 1;
  v137[v138] = 1;
  v139 = sub_1002AEC90(1);
  sub_1003F0AB4();

  *(v1 + v136) = v139;
  v140 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_mismatchAttention;
  v141 = objc_allocWithZone(v132);
  *(v1 + v140) = sub_10032B2F8(1, 0);
  v142 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_pairingIncompleteAttention;
  v143 = objc_allocWithZone(v132);
  *(v1 + v142) = sub_10032B2F8(1, 0);
  v144 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_pairingStatusDebugView;
  v145 = objc_allocWithZone(v132);
  *(v1 + v144) = sub_10032B2F8(0, 0);
  v146 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_notificationsOffAttention;
  v147 = objc_allocWithZone(v132);
  *(v1 + v146) = sub_10032B2F8(1, 1);
  v148 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_repairModeAttention;
  v149 = objc_allocWithZone(v132);
  *(v1 + v148) = sub_10032B2F8(0, 0);
  v150 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_firstButtonsStackView;
  *(v1 + v150) = [objc_allocWithZone(UIStackView) init];
  v151 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_verticalStackView;
  *(v1 + v151) = [objc_allocWithZone(UIStackView) init];
  *(v1 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_verticalStackBottomConstraint) = 0;
  v152 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_playSoundInFlight;
  v153 = type metadata accessor for Date();
  v154 = *(*(v153 - 8) + 56);
  v154(v1 + v152, 1, 1, v153);
  *(v1 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_isNotifyWhenFoundOnOverride) = 2;
  *(v1 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_isNotifyWhenLeftBehindOnOverride) = 2;
  v154(v1 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_canShowQueueAlert, 1, 1, v153);
  *(v1 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_lastPlayAction) = &_swiftEmptyDictionarySingleton;
  *(v1 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_cancelOnlinePlaySoundWorkItem) = 0;
  v155 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_actionQueue;
  (v182)(v125, v181, v174);
  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v1 + v155) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v156 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_pendingPlaySoundAnalytics;
  v157 = type metadata accessor for FMIPAirPodsPlaySoundEvent();
  (*(*(v157 - 8) + 56))(v1 + v156, 1, 1, v157);
  v158 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_pendingSafeLocation;
  v159 = type metadata accessor for FMIPSafeLocation();
  (*(*(v159 - 8) + 56))(v1 + v158, 1, 1, v159);
  v160 = (v1 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_separationAddress);
  *v160 = 0;
  v160[1] = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_pendingSafeLocationAdded) = 0;
  v161 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_separationEvent;
  v162 = type metadata accessor for FMIPSeparationEvent();
  (*(*(v162 - 8) + 56))(v1 + v161, 1, 1, v162);
  v163 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_geocodingCache;
  v164 = v172;
  static Locale.autoupdatingCurrent.getter();
  v165 = type metadata accessor for Locale();
  (*(*(v165 - 8) + 56))(v164, 0, 1, v165);
  type metadata accessor for FMIPReverseGeocodingCache();
  swift_allocObject();
  *(v1 + v163) = FMIPReverseGeocodingCache.init(preferredLocale:)();
  *(v1 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_showSeparationAttention) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_soundPlayingOrPending) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_isRangingAvailable) = 1;
  *(v1 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_soundPendingTimer) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10021AB40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPPlaySoundChannels();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v8);
  v11 = &v19 - v10;
  v20 = a2;
  v12 = *(a1 + 16);
  if (v12)
  {
    v15 = *(v5 + 16);
    v13 = v5 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v4, v9);
      sub_1002546CC(v11, v7);
      (*(v13 - 8))(v11, v4);
      v16 += v17;
      --v12;
    }

    while (v12);
    return v20;
  }

  return a2;
}

double sub_10021ACA0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for FMIPPlaySoundMethod();
  v176 = *(v6 - 8);
  v177 = v6;
  __chkstk_darwin(v6);
  v165 = &v158[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v168 = &v158[-v9];
  v10 = type metadata accessor for FMIPDevice();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v158[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for FMIPPlaySoundChannels();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v162 = &v158[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v160 = &v158[-v18];
  __chkstk_darwin(v19);
  v164 = &v158[-v20];
  v161 = v21;
  __chkstk_darwin(v22);
  v24 = &v158[-v23];
  v169 = swift_allocObject();
  *(v169 + 16) = a3;
  v179 = v15;
  v180 = v24;
  v25 = *(v15 + 16);
  *&v166 = a1;
  v181 = v14;
  v174 = v25;
  v175 = v15 + 16;
  v25(v24, a1, v14);
  v173 = a2;
  v26 = *(a2 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource);
  v27 = v26 + OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel;
  swift_beginAccess();
  v28 = *(type metadata accessor for FMDeviceDetailViewModel(0) + 100);
  v29 = *(v26 + 40);
  v30 = *(*v29 + class metadata base offset for ManagedBuffer + 16);
  v31 = (*(*v29 + 48) + 3) & 0x1FFFFFFFCLL;
  v32 = *(v27 + v28);
  v163 = a3;

  os_unfair_lock_lock((v29 + v31));
  v171 = v11;
  v33 = *(v11 + 16);
  v172 = v10;
  v33(v13, v29 + v30, v10);
  os_unfair_lock_unlock((v29 + v31));

  v34 = FMIPDevice.identifier.getter();
  v36 = v35;
  v170 = v13;
  v37 = sub_1002161DC();
  v38 = sub_1001F0AF8(v32);
  if (v37[2] <= *(v38 + 2) >> 3)
  {
    aBlock[0] = v38;
    sub_1002132F4(v37);
    v39 = aBlock[0];
  }

  else
  {
    v39 = sub_100213BD0(v37, v38);
  }

  v40 = v180;
  v41 = sub_1001605D4(v180, v39);
  v42 = v181;
  v43 = v179;
  v178 = v34;
  if (v41)
  {
    sub_10007EBC0(&qword_1006AF788, &qword_1005523C0);
    v44 = (*(v43 + 80) + 32) & ~*(v43 + 80);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_100552220;
    v174(v45 + v44, v40, v42);
    v46 = sub_100213510(v45, v39);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    if (v37[2] <= *(v46 + 2) >> 3)
    {
      aBlock[0] = v46;
      sub_1002132F4(v37);

      v47 = aBlock[0];
    }

    else
    {
      v47 = sub_100213BD0(v37, v46);
    }

    v68 = qword_1006AEB18;

    if (v68 != -1)
    {
      swift_once();
    }

    v69 = type metadata accessor for Logger();
    sub_100005B14(v69, qword_1006D4110);

    v70 = Logger.logObject.getter();
    v71 = v36;
    v72 = static os_log_type_t.default.getter();

    v73 = os_log_type_enabled(v70, v72);
    v167 = v71;
    if (v73)
    {
      v74 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v74 = 136446723;
      sub_10021E650(&qword_1006B41C8, &type metadata accessor for FMIPPlaySoundChannels, &protocol conformance descriptor for FMIPPlaySoundChannels);
      v75 = Set.description.getter();
      v77 = sub_100005B4C(v75, v76, aBlock);

      *(v74 + 4) = v77;
      v42 = v181;
      *(v74 + 12) = 2160;
      *(v74 + 14) = 1752392040;
      *(v74 + 22) = 2081;
      *(v74 + 24) = sub_100005B4C(v178, v71, aBlock);
      _os_log_impl(&_mh_execute_header, v70, v72, "FMDeviceDetailContentViewController: mute sound selecting channels to play Classic %{public}s for %{private,mask.hash}s.", v74, 0x20u);
      swift_arrayDestroy();
    }

    (v176[13].isa)(v168, enum case for FMIPPlaySoundMethod.classic(_:), v177);
    v78 = v47[2];
    if (!v78)
    {
      v36 = _swiftEmptyArrayStorage;
      goto LABEL_27;
    }

    v36 = sub_10008C8DC(v47[2], 0);
    sub_1004A2EA8(aBlock, &v36[v44], v78, v47);
    v80 = v79;
    v42 = aBlock[0];
    v43 = v184;
    v48 = v186;

    sub_10000BEC8(v42);
    if (v80 == v78)
    {
      v42 = v181;
LABEL_27:
      v113 = swift_allocObject();
      v114 = v178;
      v113[2] = v47;
      v113[3] = v114;
      v113[4] = v167;
      v113[5] = sub_10021F5D4;
      v113[6] = v169;

      v115 = v168;
      sub_1001F3DC8(v168, 1, 0, v36, sub_1002204C8, v113);

      (v176[1].isa)(v115, v177);
      (*(v171 + 8))(v170, v172);
      (*(v179 + 8))(v40, v42);
      goto LABEL_37;
    }

    __break(1u);
    goto LABEL_39;
  }

  if (sub_1001605D4(v40, v37))
  {

    sub_10007EBC0(&qword_1006AF788, &qword_1005523C0);
    v48 = (*(v43 + 80) + 32) & ~*(v43 + 80);
    v168 = *(v43 + 9);
    v49 = swift_allocObject();
    v166 = xmmword_100552220;
    *(v49 + 16) = xmmword_100552220;
    v174(v49 + v48, v40, v42);
    v47 = sub_100213510(v49, v37);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v50 = qword_1006AEB18;

    if (v50 == -1)
    {
LABEL_9:
      v51 = type metadata accessor for Logger();
      sub_100005B14(v51, qword_1006D4110);

      v52 = Logger.logObject.getter();
      v53 = v36;
      v54 = static os_log_type_t.default.getter();

      v55 = os_log_type_enabled(v52, v54);
      v167 = v53;
      if (v55)
      {
        v56 = swift_slowAlloc();
        v175 = swift_slowAlloc();
        aBlock[0] = v175;
        *v56 = 136446723;
        sub_10021E650(&qword_1006B41C8, &type metadata accessor for FMIPPlaySoundChannels, &protocol conformance descriptor for FMIPPlaySoundChannels);
        v57 = Set.description.getter();
        LODWORD(v174) = v54;
        v59 = sub_100005B4C(v57, v58, aBlock);

        *(v56 + 4) = v59;
        v42 = v181;
        *(v56 + 12) = 2160;
        *(v56 + 14) = 1752392040;
        *(v56 + 22) = 2081;
        *(v56 + 24) = sub_100005B4C(v178, v53, aBlock);
        _os_log_impl(&_mh_execute_header, v52, v174, "FMDeviceDetailContentViewController: mute sound selecting channels to play LE %{public}s for %{private,mask.hash}s.", v56, 0x20u);
        swift_arrayDestroy();
      }

      v61 = v176;
      v60 = v177;
      v62 = v165;
      (v176[13].isa)(v165, enum case for FMIPPlaySoundMethod.ble(_:), v177);
      v63 = swift_allocObject();
      *(v63 + 16) = v166;
      (*(v43 + 13))(v63 + v48, enum case for FMIPPlaySoundChannels.mute(_:), v42);
      aBlock[0] = sub_10008BB18(0, v47[2] + 1, 0, _swiftEmptyArrayStorage);

      sub_100494038(v64);
      sub_100493EC8(v63);
      v65 = aBlock[0];
      v66 = swift_allocObject();
      v67 = v178;
      v66[2] = v47;
      v66[3] = v67;
      v66[4] = v167;
      v66[5] = sub_10021F5D4;
      v66[6] = v169;

      sub_1001F3DC8(v62, 1, 0, v65, sub_1002204C4, v66);

      (v61[1].isa)(v62, v60);
      (*(v171 + 8))(v170, v172);
      (*(v43 + 1))(v180, v42);
      goto LABEL_37;
    }

LABEL_39:
    swift_once();
    goto LABEL_9;
  }

  v81 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_lastPlayAction;
  v82 = v173;
  swift_beginAccess();
  v83 = *(v82 + v81);
  v84 = v164;
  if (*(v83 + 16))
  {

    v85 = sub_1001B3AC8(v40);
    if (v86)
    {
      v87 = v42;
      v88 = *(*(v83 + 56) + 8 * v85);

      v176 = v88;
      v89 = sub_1001F0FF8(v88, v37, v40, v39);
      if (qword_1006AEB18 != -1)
      {
        swift_once();
      }

      v90 = type metadata accessor for Logger();
      sub_100005B14(v90, qword_1006D4110);
      v91 = v160;
      v174(v160, v166, v42);

      v92 = Logger.logObject.getter();
      v93 = static os_log_type_t.default.getter();

      v94 = os_log_type_enabled(v92, v93);
      v167 = v36;
      v177 = v89;
      if (v94)
      {
        v95 = swift_slowAlloc();
        v163 = v92;
        v96 = v91;
        v97 = v95;
        v164 = swift_slowAlloc();
        aBlock[0] = v164;
        *v97 = 136447491;
        v159 = v93;
        sub_10021E650(&qword_1006B6938, &type metadata accessor for FMIPPlaySoundChannels, &protocol conformance descriptor for FMIPPlaySoundChannels);
        v98 = dispatch thunk of CustomStringConvertible.description.getter();
        v100 = v99;
        v101 = *(v43 + 1);
        v165 = ((v43 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v168 = v101;
        (v101)(v96, v87);
        v102 = sub_100005B4C(v98, v100, aBlock);

        *(v97 + 4) = v102;
        *(v97 + 12) = 2160;
        *(v97 + 14) = 1752392040;
        *(v97 + 22) = 2081;
        *(v97 + 24) = sub_100005B4C(v178, v36, aBlock);
        *(v97 + 32) = 2082;
        sub_10021E650(&qword_1006B41C8, &type metadata accessor for FMIPPlaySoundChannels, &protocol conformance descriptor for FMIPPlaySoundChannels);
        v103 = Set.description.getter();
        v105 = sub_100005B4C(v103, v104, aBlock);

        *(v97 + 34) = v105;
        *(v97 + 42) = 2082;
        v106 = Set.description.getter();
        v108 = sub_100005B4C(v106, v107, aBlock);

        *(v97 + 44) = v108;
        *(v97 + 52) = 2082;
        v182 = v177;
        type metadata accessor for FMIPPlaySoundDeviceAction();
        sub_10021E650(&qword_1006B6940, &type metadata accessor for FMIPPlaySoundDeviceAction, &protocol conformance descriptor for FMIPDeviceAction);
        v109 = dispatch thunk of CustomStringConvertible.description.getter();
        v111 = sub_100005B4C(v109, v110, aBlock);

        *(v97 + 54) = v111;
        v112 = v163;
        _os_log_impl(&_mh_execute_header, v163, v159, "FMDeviceDetailContentViewController: mute %{public}s sound button pressed for %{private,mask.hash}s. onlineActiveChannels: %{public}s, offlineActiveChannels: %{public}s - Reissuing action %{public}s.", v97, 0x3Eu);
        swift_arrayDestroy();
      }

      else
      {

        v146 = *(v43 + 1);
        v165 = ((v43 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v168 = v146;
        (v146)(v91, v87);
      }

      v173 = *(*(*(v173 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator) + 24) + 32);
      v174(v162, v166, v87);
      v147 = (*(v43 + 80) + 16) & ~*(v43 + 80);
      v148 = (v161 + v147 + 7) & 0xFFFFFFFFFFFFFFF8;
      v175 = (v148 + 23) & 0xFFFFFFFFFFFFFFF8;
      v149 = (v175 + 15) & 0xFFFFFFFFFFFFFFF8;
      v150 = (v149 + 15) & 0xFFFFFFFFFFFFFFF8;
      v151 = swift_allocObject();
      (*(v43 + 4))(v151 + v147, v162, v87);
      v152 = (v151 + v148);
      v153 = v177;
      v154 = v167;
      *v152 = v178;
      v152[1] = v154;
      *(v151 + v175) = v39;
      *(v151 + v149) = v37;
      *(v151 + v150) = v153;
      v155 = (v151 + ((v150 + 15) & 0xFFFFFFFFFFFFFFF8));
      v156 = v169;
      *v155 = sub_10021F5D4;
      v155[1] = v156;

      sub_1000DA734(v153, sub_1002204CC, v151);

      (*(v171 + 8))(v170, v172);
      (v168)(v180, v87);
      goto LABEL_37;
    }
  }

  if (qword_1006AEB18 != -1)
  {
    swift_once();
  }

  v116 = type metadata accessor for Logger();
  sub_100005B14(v116, qword_1006D4110);
  v174(v84, v166, v42);

  v117 = Logger.logObject.getter();
  v118 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v117, v118))
  {
    v119 = swift_slowAlloc();
    v177 = swift_slowAlloc();
    aBlock[0] = v177;
    *v119 = 136447235;
    sub_10021E650(&qword_1006B6938, &type metadata accessor for FMIPPlaySoundChannels, &protocol conformance descriptor for FMIPPlaySoundChannels);
    v176 = v117;
    v120 = dispatch thunk of CustomStringConvertible.description.getter();
    v121 = v84;
    v123 = v122;
    v179 = *(v43 + 1);
    LODWORD(v175) = v118;
    (v179)(v121, v42);
    v124 = sub_100005B4C(v120, v123, aBlock);

    *(v119 + 4) = v124;
    *(v119 + 12) = 2160;
    *(v119 + 14) = 1752392040;
    *(v119 + 22) = 2081;
    v125 = sub_100005B4C(v178, v36, aBlock);

    *(v119 + 24) = v125;
    *(v119 + 32) = 2082;
    sub_10021E650(&qword_1006B41C8, &type metadata accessor for FMIPPlaySoundChannels, &protocol conformance descriptor for FMIPPlaySoundChannels);
    v126 = Set.description.getter();
    v127 = v42;
    v129 = v128;

    v130 = sub_100005B4C(v126, v129, aBlock);

    *(v119 + 34) = v130;
    *(v119 + 42) = 2082;
    v131 = Set.description.getter();
    v133 = v132;

    v134 = sub_100005B4C(v131, v133, aBlock);

    *(v119 + 44) = v134;
    v135 = v176;
    _os_log_impl(&_mh_execute_header, v176, v175, "FMDeviceDetailContentViewController: mute %{public}s sound button pressed for %{private,mask.hash}s. onlineActiveChannels: %{public}s, offlineActiveChannels: %{public}s - Failed to reissue action, no last action.", v119, 0x34u);
    swift_arrayDestroy();

    v136 = v179;
  }

  else
  {

    v136 = *(v43 + 1);
    v136(v84, v42);
    v127 = v42;
  }

  v137 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteLeftButton;
  v138 = v163;
  v139 = *(&v163->isa + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteLeftButton);
  v139[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
  v140 = v139;
  sub_1000D17E8();

  v141 = *(&v138->isa + v137);
  v141[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 0;
  v142 = objc_opt_self();
  v143 = swift_allocObject();
  *(v143 + 16) = v141;
  v186 = sub_100141428;
  v187 = v143;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  v184 = sub_100004AE4;
  v185 = &unk_10062E240;
  v144 = _Block_copy(aBlock);
  v145 = v141;

  [v142 animateWithDuration:4 delay:v144 options:0 animations:0.3 completion:0.0];
  _Block_release(v144);

  [*(&v138->isa + v137) setUserInteractionEnabled:1];
  (*(v171 + 8))(v170, v172);
  v136(v180, v127);
LABEL_37:

  return result;
}

double sub_10021C3F4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for FMIPPlaySoundMethod();
  v185 = *(v6 - 8);
  v186 = v6;
  __chkstk_darwin(v6);
  v174 = &v167 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v176 = (&v167 - v9);
  v10 = type metadata accessor for FMIPDevice();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v167 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FMIPPlaySoundChannels();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v171 = &v167 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v169 = &v167 - v18;
  __chkstk_darwin(v19);
  v172 = &v167 - v20;
  v170 = v21;
  __chkstk_darwin(v22);
  v24 = &v167 - v23;
  v177 = swift_allocObject();
  *(v177 + 16) = a3;
  v189 = v15;
  isa = v15[2].isa;
  v187 = v24;
  *&v175 = a1;
  v188 = v14;
  v183 = isa;
  v184 = v15 + 2;
  isa(v24, a1, v14);
  v182 = a2;
  v26 = *(a2 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource);
  v27 = v26 + OBJC_IVAR____TtC6FindMy24FMDeviceDetailDataSource_deviceViewModel;
  swift_beginAccess();
  v28 = *(type metadata accessor for FMDeviceDetailViewModel(0) + 100);
  v29 = *(v26 + 40);
  v30 = *(*v29 + class metadata base offset for ManagedBuffer + 16);
  v31 = (*(*v29 + 48) + 3) & 0x1FFFFFFFCLL;
  v32 = *(v27 + v28);
  v173 = a3;

  os_unfair_lock_lock((v29 + v31));
  v179 = v11;
  v33 = *(v11 + 16);
  v180 = v10;
  v33(v13, v29 + v30, v10);
  os_unfair_lock_unlock((v29 + v31));

  v34 = FMIPDevice.identifier.getter();
  v36 = v35;
  v178 = v13;
  v37 = sub_1002161DC();
  v38 = sub_1001F0AF8(v32);
  if (v37[2] <= *(v38 + 2) >> 3)
  {
    aBlock[0] = v38;
    sub_1002132F4(v37);
    v39 = aBlock[0];
  }

  else
  {
    v39 = sub_100213BD0(v37, v38);
  }

  v40 = v187;
  v41 = sub_1001605D4(v187, v39);
  v42 = v188;
  v43 = v189;
  v181 = v34;
  if (v41)
  {
    sub_10007EBC0(&qword_1006AF788, &qword_1005523C0);
    v44 = (LOBYTE(v43[10].isa) + 32) & ~LOBYTE(v43[10].isa);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_100552220;
    v183(v45 + v44, v40, v42);
    v46 = sub_100213510(v45, v39);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    if (v37[2] <= *(v46 + 2) >> 3)
    {
      aBlock[0] = v46;
      sub_1002132F4(v37);

      v47 = aBlock[0];
    }

    else
    {
      v47 = sub_100213BD0(v37, v46);
    }

    v72 = qword_1006AEB18;

    if (v72 != -1)
    {
      swift_once();
    }

    v73 = type metadata accessor for Logger();
    sub_100005B14(v73, qword_1006D4110);

    v74 = Logger.logObject.getter();
    v75 = v36;
    v76 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v74, v76))
    {
      v77 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v77 = 136446723;
      sub_10021E650(&qword_1006B41C8, &type metadata accessor for FMIPPlaySoundChannels, &protocol conformance descriptor for FMIPPlaySoundChannels);
      v78 = Set.description.getter();
      v80 = sub_100005B4C(v78, v79, aBlock);

      *(v77 + 4) = v80;
      v42 = v188;
      *(v77 + 12) = 2160;
      *(v77 + 14) = 1752392040;
      *(v77 + 22) = 2081;
      v81 = v34;
      v82 = v75;
      *(v77 + 24) = sub_100005B4C(v81, v75, aBlock);
      _os_log_impl(&_mh_execute_header, v74, v76, "FMDeviceDetailContentViewController: mute sound selecting channels to play Classic %{public}s for %{private,mask.hash}s.", v77, 0x20u);
      swift_arrayDestroy();
      v40 = v187;
    }

    else
    {
      v82 = v75;
    }

    (*(v185 + 104))(v176, enum case for FMIPPlaySoundMethod.classic(_:), v186);
    v117 = v47[2];
    if (!v117)
    {
      v36 = _swiftEmptyArrayStorage;
      goto LABEL_28;
    }

    v36 = sub_10008C8DC(v47[2], 0);
    sub_1004A2EA8(aBlock, &v36[v44], v117, v47);
    v119 = v118;
    v120 = aBlock[0];
    v40 = v192;
    v49 = v194;

    sub_10000BEC8(v120);
    if (v119 == v117)
    {
      v40 = v187;
      v42 = v188;
LABEL_28:
      v121 = swift_allocObject();
      v122 = v181;
      v121[2] = v47;
      v121[3] = v122;
      v121[4] = v82;
      v121[5] = sub_10021F57C;
      v121[6] = v177;

      v123 = v176;
      sub_1001F3DC8(v176, 1, 0, v36, sub_10021F594, v121);

      (*(v185 + 8))(v123, v186);
      (*(v179 + 8))(v178, v180);
      (v189[1].isa)(v40, v42);
      goto LABEL_38;
    }

    __break(1u);
    goto LABEL_40;
  }

  if (sub_1001605D4(v40, v37))
  {

    sub_10007EBC0(&qword_1006AF788, &qword_1005523C0);
    v48 = v43[9].isa;
    v49 = (LOBYTE(v43[10].isa) + 32) & ~LOBYTE(v43[10].isa);
    v176 = v48;
    v50 = swift_allocObject();
    v175 = xmmword_100552220;
    *(v50 + 16) = xmmword_100552220;
    v183(v50 + v49, v40, v42);
    v47 = sub_100213510(v50, v37);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v51 = qword_1006AEB18;

    if (v51 == -1)
    {
LABEL_9:
      v52 = type metadata accessor for Logger();
      sub_100005B14(v52, qword_1006D4110);

      v53 = Logger.logObject.getter();
      v54 = v36;
      v55 = static os_log_type_t.default.getter();

      v56 = os_log_type_enabled(v53, v55);
      v168 = v54;
      if (v56)
      {
        v57 = swift_slowAlloc();
        v184 = swift_slowAlloc();
        aBlock[0] = v184;
        *v57 = 136446723;
        sub_10021E650(&qword_1006B41C8, &type metadata accessor for FMIPPlaySoundChannels, &protocol conformance descriptor for FMIPPlaySoundChannels);
        v58 = Set.description.getter();
        LODWORD(v183) = v55;
        v60 = sub_100005B4C(v58, v59, aBlock);

        *(v57 + 4) = v60;
        *(v57 + 12) = 2160;
        *(v57 + 14) = 1752392040;
        *(v57 + 22) = 2081;
        *(v57 + 24) = sub_100005B4C(v181, v54, aBlock);
        _os_log_impl(&_mh_execute_header, v53, v183, "FMDeviceDetailContentViewController: mute sound selecting channels to play LE %{public}s for %{private,mask.hash}s.", v57, 0x20u);
        swift_arrayDestroy();
      }

      v62 = v185;
      v61 = v186;
      v63 = v174;
      (*(v185 + 104))(v174, enum case for FMIPPlaySoundMethod.ble(_:), v186);
      v64 = swift_allocObject();
      *(v64 + 16) = v175;
      v65 = v189;
      v66 = v64 + v49;
      v67 = v188;
      (v189[13].isa)(v66, enum case for FMIPPlaySoundChannels.mute(_:), v188);
      aBlock[0] = sub_10008BB18(0, v47[2] + 1, 0, _swiftEmptyArrayStorage);

      sub_100494038(v68);
      sub_100493EC8(v64);
      v69 = aBlock[0];
      v70 = swift_allocObject();
      v71 = v181;
      v70[2] = v47;
      v70[3] = v71;
      v70[4] = v168;
      v70[5] = sub_10021F57C;
      v70[6] = v177;

      sub_1001F3DC8(v63, 1, 0, v69, sub_10021F588, v70);

      (*(v62 + 8))(v63, v61);
      (*(v179 + 8))(v178, v180);
      (v65[1].isa)(v40, v67);
      goto LABEL_38;
    }

LABEL_40:
    swift_once();
    goto LABEL_9;
  }

  v83 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_lastPlayAction;
  v84 = v182;
  swift_beginAccess();
  v85 = *(v84 + v83);
  if (*(v85 + 16))
  {

    v86 = sub_1001B3AC8(v40);
    if (v87)
    {
      v88 = v42;
      v89 = *(*(v85 + 56) + 8 * v86);

      v185 = v89;
      v90 = sub_1001F0FF8(v89, v37, v40, v39);
      if (qword_1006AEB18 != -1)
      {
        swift_once();
      }

      v91 = type metadata accessor for Logger();
      sub_100005B14(v91, qword_1006D4110);
      v92 = v169;
      v93 = v175;
      v183(v169, v175, v42);

      v94 = Logger.logObject.getter();
      v95 = static os_log_type_t.default.getter();

      LODWORD(v173) = v95;
      v96 = os_log_type_enabled(v94, v95);
      v186 = v90;
      v168 = v36;
      if (v96)
      {
        v97 = swift_slowAlloc();
        v167 = v94;
        v98 = v93;
        v99 = v92;
        v100 = v97;
        v172 = swift_slowAlloc();
        aBlock[0] = v172;
        *v100 = 136447491;
        sub_10021E650(&qword_1006B6938, &type metadata accessor for FMIPPlaySoundChannels, &protocol conformance descriptor for FMIPPlaySoundChannels);
        v101 = dispatch thunk of CustomStringConvertible.description.getter();
        v103 = v102;
        v104 = v189[1].isa;
        v174 = (&v189[1] & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v105 = v99;
        v93 = v98;
        v176 = v104;
        (v104)(v105, v88);
        v106 = sub_100005B4C(v101, v103, aBlock);

        *(v100 + 4) = v106;
        *(v100 + 12) = 2160;
        *(v100 + 14) = 1752392040;
        *(v100 + 22) = 2081;
        *(v100 + 24) = sub_100005B4C(v181, v36, aBlock);
        *(v100 + 32) = 2082;
        sub_10021E650(&qword_1006B41C8, &type metadata accessor for FMIPPlaySoundChannels, &protocol conformance descriptor for FMIPPlaySoundChannels);
        v107 = Set.description.getter();
        v109 = sub_100005B4C(v107, v108, aBlock);

        *(v100 + 34) = v109;
        *(v100 + 42) = 2082;
        v110 = Set.description.getter();
        v112 = sub_100005B4C(v110, v111, aBlock);

        *(v100 + 44) = v112;
        *(v100 + 52) = 2082;
        v190 = v186;
        type metadata accessor for FMIPPlaySoundDeviceAction();
        sub_10021E650(&qword_1006B6940, &type metadata accessor for FMIPPlaySoundDeviceAction, &protocol conformance descriptor for FMIPDeviceAction);
        v113 = dispatch thunk of CustomStringConvertible.description.getter();
        v115 = sub_100005B4C(v113, v114, aBlock);

        *(v100 + 54) = v115;
        v116 = v167;
        _os_log_impl(&_mh_execute_header, v167, v173, "FMDeviceDetailContentViewController: mute %{public}s sound button pressed for %{private,mask.hash}s. onlineActiveChannels: %{public}s, offlineActiveChannels: %{public}s - Reissuing action %{public}s.", v100, 0x3Eu);
        swift_arrayDestroy();

        v43 = v189;
      }

      else
      {

        v154 = v43[1].isa;
        v174 = (&v43[1] & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v176 = v154;
        (v154)(v92, v88);
      }

      v182 = *(*(*(v182 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator) + 24) + 32);
      v183(v171, v93, v88);
      v155 = v43;
      v156 = (LOBYTE(v43[10].isa) + 16) & ~LOBYTE(v43[10].isa);
      v157 = (v170 + v156 + 7) & 0xFFFFFFFFFFFFFFF8;
      v184 = ((v157 + 23) & 0xFFFFFFFFFFFFFFF8);
      v158 = (&v184[1].isa + 7) & 0xFFFFFFFFFFFFFFF8;
      v159 = (v158 + 15) & 0xFFFFFFFFFFFFFFF8;
      v160 = swift_allocObject();
      (v155[4].isa)(v160 + v156, v171, v88);
      v161 = (v160 + v157);
      v162 = v168;
      *v161 = v181;
      v161[1] = v162;
      *(&v184->isa + v160) = v39;
      *(v160 + v158) = v37;
      v163 = v186;
      *(v160 + v159) = v186;
      v164 = (v160 + ((v159 + 15) & 0xFFFFFFFFFFFFFFF8));
      v165 = v177;
      *v164 = sub_10021F57C;
      v164[1] = v165;

      sub_1000DA734(v163, sub_10021F584, v160);

      (*(v179 + 8))(v178, v180);
      (v176)(v187, v88);
      goto LABEL_38;
    }
  }

  if (qword_1006AEB18 != -1)
  {
    swift_once();
  }

  v124 = type metadata accessor for Logger();
  sub_100005B14(v124, qword_1006D4110);
  v125 = v172;
  v183(v172, v175, v42);

  v126 = Logger.logObject.getter();
  v127 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v126, v127))
  {
    v128 = swift_slowAlloc();
    v186 = swift_slowAlloc();
    aBlock[0] = v186;
    *v128 = 136447235;
    sub_10021E650(&qword_1006B6938, &type metadata accessor for FMIPPlaySoundChannels, &protocol conformance descriptor for FMIPPlaySoundChannels);
    LODWORD(v185) = v127;
    v129 = dispatch thunk of CustomStringConvertible.description.getter();
    v184 = v126;
    v131 = v130;
    v132 = v189[1].isa;
    v132(v125, v42);
    v133 = sub_100005B4C(v129, v131, aBlock);

    *(v128 + 4) = v133;
    *(v128 + 12) = 2160;
    *(v128 + 14) = 1752392040;
    *(v128 + 22) = 2081;
    v134 = sub_100005B4C(v181, v36, aBlock);

    *(v128 + 24) = v134;
    *(v128 + 32) = 2082;
    v40 = v187;
    sub_10021E650(&qword_1006B41C8, &type metadata accessor for FMIPPlaySoundChannels, &protocol conformance descriptor for FMIPPlaySoundChannels);
    v135 = Set.description.getter();
    v137 = v136;

    v138 = sub_100005B4C(v135, v137, aBlock);
    v42 = v188;

    *(v128 + 34) = v138;
    *(v128 + 42) = 2082;
    v139 = Set.description.getter();
    v141 = v140;
    v142 = v132;

    v143 = sub_100005B4C(v139, v141, aBlock);

    *(v128 + 44) = v143;
    v144 = v184;
    _os_log_impl(&_mh_execute_header, v184, v185, "FMDeviceDetailContentViewController: mute %{public}s sound button pressed for %{private,mask.hash}s. onlineActiveChannels: %{public}s, offlineActiveChannels: %{public}s - Failed to reissue action, no last action.", v128, 0x34u);
    swift_arrayDestroy();
  }

  else
  {

    v142 = v189[1].isa;
    v142(v125, v42);
  }

  v145 = OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteRightButton;
  v146 = v173;
  v147 = *&v173[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteRightButton];
  v147[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
  v148 = v147;
  sub_1000D17E8();

  v149 = *&v146[v145];
  v149[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 0;
  v150 = objc_opt_self();
  v151 = swift_allocObject();
  *(v151 + 16) = v149;
  v194 = sub_100141428;
  v195 = v151;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  v192 = sub_100004AE4;
  v193 = &unk_10062E0B0;
  v152 = _Block_copy(aBlock);
  v153 = v149;

  [v150 animateWithDuration:4 delay:v152 options:0 animations:0.3 completion:0.0];
  _Block_release(v152);

  [*&v146[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_muteLeftButton] setUserInteractionEnabled:1];
  (*(v179 + 8))(v178, v180);
  v142(v40, v42);
LABEL_38:

  return result;
}

double sub_10021DE68()
{
  v1 = v0;
  v26 = type metadata accessor for FMIPDeviceState();
  v2 = *(v26 - 8);
  __chkstk_darwin(v26);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v25 - v6;
  v8 = type metadata accessor for FMIPDevice();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100005B14(v12, qword_1006D4630);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "FMDeviceDetailContentViewController: handle itemNotificationViewSelectNWLBDetailLabel", v15, 2u);
  }

  v16 = *(*(v1 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_dataSource) + 40);
  v17 = *(*v16 + class metadata base offset for ManagedBuffer + 16);
  v18 = *(*v16 + 48) + 3;
  v25 = v1;
  v19 = v18 & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v16 + v19));
  (*(v9 + 16))(v11, v16 + v17, v8);
  os_unfair_lock_unlock((v16 + v19));

  FMIPDevice.state.getter();
  (*(v9 + 8))(v11, v8);
  static FMIPDeviceState.separationWarningPaused.getter();
  sub_10021E650(&qword_1006BBCF0, &type metadata accessor for FMIPDeviceState, &protocol conformance descriptor for FMIPDeviceState);
  v20 = v26;
  v21 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v22 = *(v2 + 8);
  v22(v4, v20);
  v22(v7, v20);
  if (v21)
  {
    sub_100205128();
  }

  else
  {
    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1000C5474(sub_10021E6A0, v24, 0, 0);
  }

  return result;
}

void sub_10021E228(uint64_t a1, uint64_t a2)
{
  v2 = sub_10007EBC0(&unk_1006B0120, &qword_100552B60);
  __chkstk_darwin(v2 - 8);
  v4 = &v19 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100012DF0(v4, &unk_1006B0120, &qword_100552B60);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100005B14(v9, qword_1006D4630);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "FMDeviceDetailContentViewController: Error opening settings. Invalid URL", v12, 2u);
    }
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v13 = [objc_opt_self() defaultWorkspace];
    if (v13)
    {
      v15 = v13;
      URL._bridgeToObjectiveC()(v14);
      v17 = v16;
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      [v15 openSensitiveURL:v17 withOptions:isa];
    }

    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_10021E4E4(const char *a1, uint64_t (*a2)(void))
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100005B14(v3, qword_1006D4630);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, a1, v6, 2u);
  }

  return a2();
}

uint64_t sub_10021E650(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_10021E710(uint64_t a1)
{
  v3 = *(type metadata accessor for FMIPDevice() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_10020C928(a1, v4, v5);
}

void sub_10021E784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for FMIPDevice() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_10020CAB4(a1, a2, a3, v3 + v8, v9);
}

uint64_t sub_10021E96C()
{
  v1 = type metadata accessor for FMIPDevice();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 25) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10021EA48(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for FMIPDevice() - 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = v2 + ((*(v4 + 80) + 25) & ~*(v4 + 80));

  return a2(a1, v5, v6, v7);
}

double sub_10021EAEC(uint64_t a1)
{
  v3 = *(type metadata accessor for FMIPDevice() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return sub_100207CA8(a1, v5, v1 + v4, v7, v8);
}

uint64_t sub_10021EB90()
{
  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10021EBE4(char a1)
{
  v3 = *(type metadata accessor for FMIPDevice() - 8);
  v4 = (*(v3 + 80) + 49) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(sub_10007EBC0(&qword_1006B68E8, &unk_100563FF0) - 8);
  v7 = (v5 + *(v6 + 80) + 2) & ~*(v6 + 80);
  return sub_100206E04(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 33), *(v1 + 34), *(v1 + 35), *(v1 + 36), *(v1 + 40), *(v1 + 48), v1 + v4, *(v1 + v5), *(v1 + v5 + 1), v1 + v7, *(v1 + v7 + *(v6 + 64)));
}

uint64_t sub_10021ED5C()
{
  v1 = type metadata accessor for FMIPDevice();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 25) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(sub_10007EBC0(&qword_1006B68E8, &unk_100563FF0) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v4 + v7 + 4) & ~v7;
  v9 = *(v6 + 64);

  (*(v2 + 8))(v0 + v4, v1);
  v10 = type metadata accessor for FMFDevice();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v8, 1, v10))
  {
    (*(v11 + 8))(v0 + v8, v10);
  }

  return _swift_deallocObject(v0, ((v9 + v8 + 9) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | v7 | 7);
}

void sub_10021EF14()
{
  v1 = *(type metadata accessor for FMIPDevice() - 8);
  v2 = (*(v1 + 80) + 25) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(sub_10007EBC0(&qword_1006B68E8, &unk_100563FF0) - 8);
  v5 = (v3 + *(v4 + 80) + 4) & ~*(v4 + 80);
  sub_10020746C(*(v0 + 16), *(v0 + 24), v0 + v2, *(v0 + v3), *(v0 + v3 + 1), *(v0 + v3 + 2), *(v0 + v3 + 3), v0 + v5, *(v0 + v5 + *(v4 + 64)), *(v0 + v5 + *(v4 + 64) + 1), *(v0 + ((v5 + *(v4 + 64) + 9) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_10021F054(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_100201280(a1, a2, v6);
}

char *sub_10021F0D4@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v4 = *a1;
  v5 = *(v2 + 32);
  v7[1] = *(v2 + 16);
  v7[2] = v5;
  result = sub_1003F8284(sub_10021F128, v7, v4);
  *a2 = result;
  return result;
}

uint64_t sub_10021F2A0(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4)
{
  v9 = *(type metadata accessor for FMIPPlaySoundMethod() - 8);
  v10 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(type metadata accessor for FMIPDevice() - 8);
  return sub_1001F4818(a1, a2, a3, a4, *(v4 + 16), v4 + v10, *(v4 + v11), *(v4 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), v4 + ((((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + *(v12 + 80) + 16) & ~*(v12 + 80)));
}

uint64_t sub_10021F3C0()
{
  v1 = *(type metadata accessor for FMIPActionStatus() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(type metadata accessor for FMIPDevice() - 8);
  v6 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + v3);
  v10 = *(v0 + v3 + 8);
  v11 = *(v0 + v4);
  v12 = *(v0 + v7);
  v13 = *(v0 + v8);
  v14 = *(v0 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1001F5178(v0 + v2, v9, v10, v11, v0 + v6, v12, v13, v14);
}

uint64_t sub_10021F4F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for FMIPPlaySoundMethod() - 8);
  v8 = *(v3 + 16);
  v9 = v3 + ((*(v7 + 80) + 24) & ~*(v7 + 80));

  return sub_1001F3778(a1, a2, a3, v8, v9);
}

uint64_t sub_10021F5DC()
{
  v1 = type metadata accessor for FMIPPlaySoundChannels();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}