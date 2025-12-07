void sub_100087AE8()
{
  v1 = sub_10007EBC0(&qword_1006AF740, &unk_100552330);
  __chkstk_darwin(v1 - 8);
  v3 = &v26 - v2;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100005B14(v4, qword_1006D4630);
  v5 = v0;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "FMMeViewController<%@>: present location label selector", v8, 0xCu);
    sub_100012DF0(v9, &unk_1006AF760, &qword_100552DB0);
  }

  v11 = *&v5[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator];

  dispatch thunk of FMFManager.myUnshiftedLocation.getter();

  v12 = objc_allocWithZone(type metadata accessor for FMLabelViewController(0));
  v13 = sub_1003D8234(v11, v3, 1);

  v14 = *&v5[OBJC_IVAR____TtC6FindMy18FMMeViewController_displayAddress];
  v15 = *&v5[OBJC_IVAR____TtC6FindMy18FMMeViewController_displayAddress + 8];
  v16 = *&v5[OBJC_IVAR____TtC6FindMy18FMMeViewController_displayAddress + 16];
  v17 = *&v5[OBJC_IVAR____TtC6FindMy18FMMeViewController_displayAddress + 24];
  v18 = &v13[OBJC_IVAR____TtC6FindMy21FMLabelViewController_displayAddress];
  v19 = *&v13[OBJC_IVAR____TtC6FindMy21FMLabelViewController_displayAddress];
  v20 = *&v13[OBJC_IVAR____TtC6FindMy21FMLabelViewController_displayAddress + 8];
  v21 = *&v13[OBJC_IVAR____TtC6FindMy21FMLabelViewController_displayAddress + 16];
  v22 = *&v13[OBJC_IVAR____TtC6FindMy21FMLabelViewController_displayAddress + 24];
  v23 = *&v5[OBJC_IVAR____TtC6FindMy18FMMeViewController_displayAddress + 32];
  *v18 = v14;
  *(v18 + 1) = v15;
  *(v18 + 2) = v16;
  *(v18 + 3) = v17;
  *(v18 + 16) = v23;
  sub_10008FAA4(v14, v15, v16, v17);
  sub_10008ECE4(v19, v20, v21, v22);
  objc_allocWithZone(type metadata accessor for FMActivityIndicatingNavigationController());
  v24 = v13;
  v25 = sub_1000CC510(v24, 2);
  [v5 presentViewController:v25 animated:1 completion:0];
}

void sub_100087D88(uint64_t a1, char a2)
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100005B14(v5, qword_1006D4630);
  v6 = v2;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v33 = a1;
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v34 = v11;
    aBlock = 0;
    *v9 = 138412546;
    *(v9 + 4) = v6;
    *v10 = v6;
    *(v9 + 12) = 2080;
    v36 = 0xE000000000000000;
    if (a2)
    {
      v12 = 1702195828;
    }

    else
    {
      v12 = 0x65736C6166;
    }

    if (a2)
    {
      v13 = 0xE400000000000000;
    }

    else
    {
      v13 = 0xE500000000000000;
    }

    v14 = v6;
    v15._countAndFlagsBits = v12;
    v15._object = v13;
    String.append(_:)(v15);

    v16 = sub_100005B4C(aBlock, v36, &v34);

    *(v9 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v7, v8, "FMMeViewController<%@>: location settings, share location state changed: %s", v9, 0x16u);
    sub_100012DF0(v10, &unk_1006AF760, &qword_100552DB0);

    sub_100006060(v11);

    a1 = v33;
  }

  type metadata accessor for FMFShowHideLocationAction();
  swift_allocObject();
  v17 = 1;
  v18 = FMFShowHideLocationAction.init(hideLocation:)();
  [*(a1 + OBJC_IVAR____TtC6FindMy22FMLocationSettingsView_shareLocationSwitch) setUserInteractionEnabled:0];
  v19 = a2 & 1;
  *(v6 + OBJC_IVAR____TtC6FindMy18FMMeViewController_isLocationSharingOnOverride) = v19;
  if (v19)
  {
    v17 = 2;
  }

  v20 = swift_allocObject();
  *(v20 + 16) = v6;
  *(v20 + 24) = v19;
  v21 = v6;

  sub_1000FB600(v18, sub_10008EED8, v20);

  v22 = [objc_allocWithZone(type metadata accessor for ToggleLocationSharingIntent()) init];
  [v22 setState:v17];
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  v24 = objc_allocWithZone(INInteraction);
  v25 = v21;
  v26 = [v24 initWithIntent:v22 response:0];
  v27 = swift_allocObject();
  *(v27 + 16) = sub_10008EEE4;
  *(v27 + 24) = v23;
  v39 = sub_10008EEEC;
  v40 = v27;
  aBlock = _NSConcreteStackBlock;
  v36 = 1107296256;
  v37 = sub_1001A44B4;
  v38 = &unk_100624158;
  v28 = _Block_copy(&aBlock);

  [v26 donateInteractionWithCompletion:v28];
  _Block_release(v28);

  v29 = objc_opt_self();
  v30 = swift_allocObject();
  *(v30 + 16) = v25;
  v39 = sub_10008EEF4;
  v40 = v30;
  aBlock = _NSConcreteStackBlock;
  v36 = 1107296256;
  v37 = sub_100004AE4;
  v38 = &unk_1006241A8;
  v31 = _Block_copy(&aBlock);
  v32 = v25;

  [v29 animateWithDuration:v31 animations:0.2];
  _Block_release(v31);
}

id sub_100088264(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100005B14(v7, qword_1006D4630);
  v8 = a3;
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v11 = 138412546;
    *(v11 + 4) = v8;
    *v12 = v8;
    *(v11 + 12) = 2080;
    v14 = v8;
    swift_errorRetain();
    sub_10007EBC0(&qword_1006B9570, &qword_1005523F0);
    v15 = String.init<A>(describing:)();
    v17 = sub_100005B4C(v15, v16, &v19);

    *(v11 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "FMMeViewController<%@>: location settings, share location completed with error?: %s", v11, 0x16u);
    sub_100012DF0(v12, &unk_1006AF760, &qword_100552DB0);

    sub_100006060(v13);
  }

  [*(*&v8[OBJC_IVAR____TtC6FindMy18FMMeViewController_locationSettings] + OBJC_IVAR____TtC6FindMy22FMLocationSettingsView_shareLocationSwitch) setUserInteractionEnabled:1];
  v8[OBJC_IVAR____TtC6FindMy18FMMeViewController_isLocationSharingOnOverride] = ((a2 != 0) ^ a4) & 1;
  return sub_100083A2C();
}

void sub_10008849C(uint64_t a1, void *a2)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100005B14(v3, qword_1006D4630);
    swift_errorRetain();
    v4 = a2;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14 = v9;
      *v7 = 138412546;
      *(v7 + 4) = v4;
      *v8 = v4;
      *(v7 + 12) = 2080;
      swift_errorRetain();
      v10 = v4;
      sub_10007EBC0(&unk_1006AF7B0, &qword_100552E20);
      v11 = String.init<A>(describing:)();
      v13 = sub_100005B4C(v11, v12, &v14);

      *(v7 + 14) = v13;
      _os_log_impl(&_mh_execute_header, v5, v6, "FMMeViewController<%@>: error during show/hide location donation - %s", v7, 0x16u);
      sub_100012DF0(v8, &unk_1006AF760, &qword_100552DB0);

      sub_100006060(v9);
    }

    else
    {
    }
  }
}

id sub_1000886BC(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100005B14(v7, qword_1006D4630);
  v8 = a3;
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v11 = 138412546;
    *(v11 + 4) = v8;
    *v12 = v8;
    *(v11 + 12) = 2080;
    v14 = v8;
    swift_errorRetain();
    sub_10007EBC0(&qword_1006B9570, &qword_1005523F0);
    v15 = String.init<A>(describing:)();
    v17 = sub_100005B4C(v15, v16, &v20);

    *(v11 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "FMMeViewController<%@>: allow friend requests setting change completed with error?: %s", v11, 0x16u);
    sub_100012DF0(v12, &unk_1006AF760, &qword_100552DB0);

    sub_100006060(v13);
  }

  [*(*&v8[OBJC_IVAR____TtC6FindMy18FMMeViewController_locationSettings] + OBJC_IVAR____TtC6FindMy22FMLocationSettingsView_shareLocationSwitch) setUserInteractionEnabled:1];
  v18 = a4 & 1;
  if (a2)
  {
    v18 = 2;
  }

  v8[OBJC_IVAR____TtC6FindMy18FMMeViewController_isAllowFriendsRequestOnOverride] = v18;
  return sub_100083A2C();
}

void sub_10008893C()
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100005B14(v1, qword_1006D4630);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&_mh_execute_header, v3, v4, "FMMeViewController<%@>: clear ignored tags", v5, 0xCu);
    sub_100012DF0(v6, &unk_1006AF760, &qword_100552DB0);
  }

  v8 = objc_opt_self();
  v9 = [v8 mainBundle];
  v10._countAndFlagsBits = 0xD000000000000012;
  v32._object = 0x8000000100579A00;
  v10._object = 0x80000001005799C0;
  v11.value._object = 0x80000001005799E0;
  v11.value._countAndFlagsBits = 0xD000000000000013;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v32._countAndFlagsBits = 0xD000000000000018;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v32);

  v13 = [v8 mainBundle];
  v33._object = 0x8000000100579A00;
  v14._object = 0x8000000100579A20;
  v15.value._object = 0x80000001005799E0;
  v14._countAndFlagsBits = 0xD000000000000018;
  v15.value._countAndFlagsBits = 0xD000000000000013;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v33._countAndFlagsBits = 0xD000000000000018;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v14, v15, v13, v16, v33);

  v17 = [v8 mainBundle];
  v18._countAndFlagsBits = 0xD000000000000017;
  v34._object = 0x8000000100579A00;
  v18._object = 0x8000000100579A40;
  v19.value._object = 0x80000001005799E0;
  v19.value._countAndFlagsBits = 0xD000000000000013;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  v34._countAndFlagsBits = 0xD000000000000018;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v18, v19, v17, v20, v34);

  v21 = String._bridgeToObjectiveC()();

  v22 = [objc_opt_self() alertControllerWithTitle:0 message:v21 preferredStyle:0];

  v23 = String._bridgeToObjectiveC()();

  v24 = objc_opt_self();
  v25 = [v24 actionWithTitle:v23 style:1 handler:0];

  v26 = swift_allocObject();
  *(v26 + 16) = v2;
  v27 = v2;
  v28 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_10008FA84;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100017328;
  aBlock[3] = &unk_100624220;
  v29 = _Block_copy(aBlock);

  v30 = [v24 actionWithTitle:v28 style:2 handler:v29];
  _Block_release(v29);

  [v22 addAction:v25];
  [v22 addAction:v30];
  [v27 presentViewController:v22 animated:1 completion:0];
}

double sub_100088DB0(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v20 = *(v7 - 8);
  v21 = v7;
  __chkstk_darwin(v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  v14 = FMIPManager.unknownItems.getter();

  a2[OBJC_IVAR____TtC6FindMy18FMMeViewController_isClearTagEnabledOverride] = 1;
  sub_100083A2C();
  sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
  (*(v11 + 104))(v13, enum case for DispatchQoS.QoSClass.default(_:), v10);
  v15 = static OS_dispatch_queue.global(qos:)();
  (*(v11 + 8))(v13, v10);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = a2;
  aBlock[4] = sub_10008FA8C;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100624270;
  v17 = _Block_copy(aBlock);
  v18 = a2;
  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_100009E38(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640, &unk_100552B10, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v22 + 8))(v6, v4);
  (*(v20 + 8))(v9, v21);

  return result;
}

void sub_1000891A0(uint64_t a1, char *a2)
{
  v46 = a2;
  v3 = type metadata accessor for FMIPUnknownItemAlertState();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v38 - v8;
  v10 = type metadata accessor for FMIPUnknownItem();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v45 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v16 = &v38 - v14;
  v17 = *(a1 + 16);
  if (v17)
  {
    v19 = *(v11 + 16);
    v18 = v11 + 16;
    v53 = v19;
    v20 = (a1 + ((*(v18 + 64) + 32) & ~*(v18 + 64)));
    v52 = *(v18 + 56);
    v51 = enum case for FMIPUnknownItemAlertState.ignored(_:);
    v49 = (v4 + 8);
    v50 = (v4 + 104);
    v48 = (v18 - 8);
    v15.n128_u64[0] = 136315138;
    v38 = v15;
    v39 = v3;
    v43 = v10;
    v44 = v9;
    v41 = &v38 - v14;
    v42 = v18;
    v19(v16, v20, v10);
    while (1)
    {
      FMIPUnknownItem.alertState.getter();
      (*v50)(v6, v51, v3);
      sub_100009E38(&unk_1006AF8D0, &type metadata accessor for FMIPUnknownItemAlertState, &protocol conformance descriptor for FMIPUnknownItemAlertState);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v23 = *v49;
      (*v49)(v6, v3);
      v23(v9, v3);
      if (v55 == v54)
      {
        v53(v45, v16, v10);
        type metadata accessor for FMIPIgnoreItemAction();
        swift_allocObject();
        FMIPIgnoreItemAction.init(unknownItem:until:)();
        v24 = v46;
        v25 = *(*(*&v46[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator] + 24) + 32);
        v47 = swift_allocObject();
        *(v47 + 16) = v24;
        v26 = qword_1006AEBE0;

        v27 = v24;
        if (v26 != -1)
        {
          swift_once();
        }

        v28 = type metadata accessor for Logger();
        sub_100005B14(v28, qword_1006D4630);

        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v40 = v25;
          v32 = v31;
          v33 = swift_slowAlloc();
          v55 = v33;
          *v32 = v38.n128_u32[0];
          v34 = FMIPUTItemAction.debugDescription.getter();
          v36 = v6;
          v37 = sub_100005B4C(v34, v35, &v55);

          *(v32 + 4) = v37;
          v6 = v36;
          _os_log_impl(&_mh_execute_header, v29, v30, "FMDevicesActionController: perform UT item action %s", v32, 0xCu);
          sub_100006060(v33);
          v3 = v39;
        }

        v21 = swift_allocObject();
        v22 = v47;
        *(v21 + 16) = sub_10008FA94;
        *(v21 + 24) = v22;

        FMIPManager.perform(action:completion:)();

        v10 = v43;
        v9 = v44;
        v16 = v41;
      }

      (*v48)(v16, v10);
      v20 += v52;
      if (!--v17)
      {
        break;
      }

      v53(v16, v20, v10);
    }
  }
}

void sub_1000896D8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for FMIPItemActionStatus();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100005B14(v10, qword_1006D4630);
  (*(v7 + 16))(v9, a1, v6);
  v11 = a3;
  swift_errorRetain();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v24 = v15;
    v25 = swift_slowAlloc();
    v27 = v25;
    *v14 = 138412802;
    *(v14 + 4) = v11;
    *v15 = v11;
    *(v14 + 12) = 2080;
    sub_100009E38(&unk_1006B4D60, &type metadata accessor for FMIPItemActionStatus, &protocol conformance descriptor for FMIPItemActionStatus);
    v16 = v11;
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v7 + 8))(v9, v6);
    v20 = sub_100005B4C(v17, v19, &v27);

    *(v14 + 14) = v20;
    *(v14 + 22) = 2080;
    v26 = a2;
    swift_errorRetain();
    sub_10007EBC0(&qword_1006B9570, &qword_1005523F0);
    v21 = String.init<A>(describing:)();
    v23 = sub_100005B4C(v21, v22, &v27);

    *(v14 + 24) = v23;
    _os_log_impl(&_mh_execute_header, v12, v13, "FMMeViewController<%@>: clear ignoreAction completed with status %s, and error %s", v14, 0x20u);
    sub_100012DF0(v24, &unk_1006AF760, &qword_100552DB0);

    swift_arrayDestroy();
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  *(v11 + OBJC_IVAR____TtC6FindMy18FMMeViewController_isClearTagEnabledOverride) = 2;
}

id sub_100089A80(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100005B14(v5, qword_1006D4630);
  v6 = a3;
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v44._countAndFlagsBits = v11;
    *v9 = 138412546;
    *(v9 + 4) = v6;
    *v10 = v6;
    *(v9 + 12) = 2080;
    v12 = v6;
    swift_errorRetain();
    sub_10007EBC0(&qword_1006B9570, &qword_1005523F0);
    v13 = String.init<A>(describing:)();
    v15 = sub_100005B4C(v13, v14, &v44._countAndFlagsBits);

    *(v9 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "FMMeViewController<%@>: me device update with error?: %s", v9, 0x16u);
    sub_100012DF0(v10, &unk_1006AF760, &qword_100552DB0);

    sub_100006060(v11);
  }

  v16 = *&v6[OBJC_IVAR____TtC6FindMy18FMMeViewController_locationSettings];
  [*(v16 + OBJC_IVAR____TtC6FindMy22FMLocationSettingsView_changeMeDeviceSpinner) stopAnimating];
  v17 = *(v16 + OBJC_IVAR____TtC6FindMy22FMLocationSettingsView_changeMeDeviceRow);
  *(v17 + OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_isSelectable) = 1;
  v18 = *(v17 + OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_titleLabel);
  v19 = objc_opt_self();
  v20 = v18;
  v21 = [v19 systemBlueColor];
  [v20 setTextColor:v21];

  result = sub_100083A2C();
  if (a2)
  {
    v23 = objc_opt_self();
    swift_errorRetain();
    v24 = [v23 mainBundle];
    v45._object = 0x8000000100579AB0;
    object = 0xE000000000000000;
    v26._countAndFlagsBits = 0xD000000000000026;
    v26._object = 0x8000000100579A80;
    v45._countAndFlagsBits = 0xD000000000000038;
    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    v28 = NSLocalizedString(_:tableName:bundle:value:comment:)(v26, 0, v24, v27, v45);

    if (static SystemInfo.isInternalBuild.getter())
    {
      v44._countAndFlagsBits = 0;
      v44._object = 0xE000000000000000;
      _StringGuts.grow(_:)(16);
      v29._countAndFlagsBits = 0x7265746E69280A0ALL;
      v29._object = 0xED0000203A6C616ELL;
      String.append(_:)(v29);
      sub_10007EBC0(&unk_1006AF7B0, &qword_100552E20);
      _print_unlocked<A, B>(_:_:)();
      v30._countAndFlagsBits = 41;
      v30._object = 0xE100000000000000;
      String.append(_:)(v30);
      countAndFlagsBits = v44._countAndFlagsBits;
      object = v44._object;
    }

    else
    {
      countAndFlagsBits = 0;
    }

    v44 = v28;

    v32._countAndFlagsBits = countAndFlagsBits;
    v32._object = object;
    String.append(_:)(v32);

    v35 = v44;
    v34 = v35._object;
    v33 = v35._countAndFlagsBits;
    v36 = [v23 mainBundle];
    v46._object = 0x8000000100579B20;
    v37._countAndFlagsBits = 0xD000000000000023;
    v37._object = 0x8000000100579AF0;
    v46._countAndFlagsBits = 0xD000000000000035;
    v38._countAndFlagsBits = 0;
    v38._object = 0xE000000000000000;
    v39 = NSLocalizedString(_:tableName:bundle:value:comment:)(v37, 0, v36, v38, v46);

    v40 = [v23 mainBundle];
    v47._object = 0x8000000100579B60;
    v41._countAndFlagsBits = 0x4F545455425F4B4FLL;
    v41._object = 0xEF454C5449545F4ELL;
    v42._countAndFlagsBits = 0;
    v42._object = 0xE000000000000000;
    v47._countAndFlagsBits = 0xD000000000000021;
    v43 = NSLocalizedString(_:tableName:bundle:value:comment:)(v41, 0, v40, v42, v47);

    sub_10027CEB4(v39._countAndFlagsBits, v39._object, v33, v34, v43._countAndFlagsBits, v43._object);
  }

  return result;
}

void sub_10008A010()
{
  v9.receiver = v0;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "viewDidLayoutSubviews");
  v8[3] = &type metadata for SolariumFeatureFlag;
  v8[4] = sub_10000BD04();
  v1 = isFeatureEnabled(_:)();
  sub_100006060(v8);
  if ((v1 & 1) == 0)
  {
    v2 = *&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_labelsTopConstraint];
    if (v2)
    {
      v3 = *&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_primaryLabel];
      v4 = v2;
      [v3 frame];
      v6 = v5;
      [v3 frame];
      [v4 setConstant:v6 + v7 + 30.0];
    }
  }
}

void sub_10008A164()
{
  sub_100083A2C();
  if (*(v0 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_styleGuide + 208) == 1)
  {
    v1 = *(v0 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_actionButton);
    if (v1)
    {
      v2 = v1;
      sub_10008E704(v2);
    }
  }
}

uint64_t sub_10008A40C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_10008A4B8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  v13[2] = a3;
  v13[3] = a4;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v13[4] = 0;
  v13[5] = v6;

  v8 = String.Iterator.next()();
  countAndFlagsBits = v8.value._countAndFlagsBits;
  if (v8.value._object)
  {
    object = v8.value._object;
    while (1)
    {
      v13[0] = countAndFlagsBits;
      v13[1] = object;
      v10 = a1(v13);

      if (v4 || (v10 & 1) != 0)
      {
        break;
      }

      v11 = String.Iterator.next()();
      countAndFlagsBits = v11.value._countAndFlagsBits;
      object = v11.value._object;
      if (!v11.value._object)
      {
        goto LABEL_8;
      }
    }

    return 1;
  }

  else
  {
LABEL_8:

    return 0;
  }
}

uint64_t sub_10008A5E8(uint64_t (*a1)(char *), char a2, uint64_t a3, uint64_t (*a4)(void))
{
  v25 = a1;
  v26 = a4(0);
  __chkstk_darwin(v26);
  v9 = &v21 - v8;
  v10 = a3 + 56;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 56);
  v14 = (v11 + 63) >> 6;
  v23 = v7 + 16;
  v24 = v7;
  v22 = (v7 + 8);
  v27 = a3;

  v16 = 0;
  while (v13)
  {
    v17 = v26;
LABEL_11:
    (*(v24 + 16))(v9, *(v27 + 48) + *(v24 + 72) * (__clz(__rbit64(v13)) | (v16 << 6)), v17);
    v19 = v25(v9);
    if (v4)
    {
      (*v22)(v9, v17);

      return a2 & 1;
    }

    v20 = v19;
    v13 &= v13 - 1;
    result = (*v22)(v9, v17);
    if (v20)
    {
      a2 = 1;
LABEL_15:

      return a2 & 1;
    }
  }

  v17 = v26;
  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v14)
    {
      a2 = 0;
      goto LABEL_15;
    }

    v13 = *(v10 + 8 * v18);
    ++v16;
    if (v13)
    {
      v16 = v18;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10008A800(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = _CocoaArrayWrapper.endIndex.getter();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

__n128 sub_10008A928@<Q0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v5;
  *a2 = v4;
  a2[1] = v5;
  return result;
}

void sub_10008A9AC(_OWORD *a1, uint64_t *a2)
{
  v3 = a1[1];
  v6[0] = *a1;
  v6[1] = v3;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = a1[1];
  v5[2] = *a1;
  v5[3] = v4;

  sub_10008EDD0(v6, v5);
  static Published.subscript.setter();
  sub_100170F90();
}

void *sub_10008AA3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = String._bridgeToObjectiveC()();
  v6 = objc_opt_self();
  v7 = [v6 systemImageNamed:v5];

  v8 = String._bridgeToObjectiveC()();
  v46 = [v6 systemImageNamed:v8];

  sub_10000905C(0, &qword_1006AF730, UIAction_ptr);
  v9 = objc_opt_self();
  v10 = [v9 mainBundle];
  v53._object = 0x80000001005796A0;
  v11._countAndFlagsBits = 0xD000000000000026;
  v11._object = 0x8000000100579670;
  v53._countAndFlagsBits = 0xD000000000000038;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v53);

  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v52 = v7;
  v14 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v15 = [v9 mainBundle];
  v54._object = 0x8000000100579710;
  v16._countAndFlagsBits = 0xD00000000000002ALL;
  v16._object = 0x80000001005796E0;
  v54._countAndFlagsBits = 0xD00000000000003CLL;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v15, v17, v54);

  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v51 = v46;
  v45 = a3;
  v50 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v19 = String._bridgeToObjectiveC()();
  v47 = v6;
  v20 = [v6 _systemImageNamed:{v19, 0, 0, 0, v45, v18}];

  v21 = [v9 mainBundle];
  v55._object = 0x80000001005797A0;
  v22._countAndFlagsBits = 0xD00000000000002BLL;
  v22._object = 0x8000000100579750;
  v23.value._object = 0x8000000100579780;
  v55._countAndFlagsBits = 0xD000000000000015;
  v23.value._countAndFlagsBits = 0xD000000000000010;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v22, v23, v21, v24, v55);

  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = v20;
  v27 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v28 = [objc_opt_self() currentDevice];
  v29 = [v28 userInterfaceIdiom];

  if (v29 == 1)
  {
    if (qword_1006AECB8 != -1)
    {
      swift_once();
    }

    if (byte_1006D4AD0 == 1)
    {
      v30 = v27;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  v31 = String._bridgeToObjectiveC()();
  v32 = MGGetBoolAnswer();

  if (v32)
  {
    v33 = String._bridgeToObjectiveC()();
    v34 = [v47 systemImageNamed:v33];

    if (v34)
    {
      v35 = [objc_opt_self() labelColor];
      v36 = [v34 imageWithTintColor:v35];
    }

    else
    {
      v36 = 0;
    }

    v37 = [v9 mainBundle];
    v56._object = 0x8000000100579840;
    v38.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v38.value._object = 0xEC00000031656C62;
    v39._countAndFlagsBits = 0xD000000000000031;
    v39._object = 0x8000000100579800;
    v56._countAndFlagsBits = 0xD000000000000043;
    v40._countAndFlagsBits = 0;
    v40._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v39, v38, v37, v40, v56);

    v41 = v36;
    v42 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v43 = v50;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  return _swiftEmptyArrayStorage;
}

void *sub_10008B1D0(uint64_t a1, uint64_t a2)
{
  v14[3] = &type metadata for SolariumFeatureFlag;
  v14[4] = sub_10000BD04();
  v2 = isFeatureEnabled(_:)();
  sub_100006060(v14);
  if ((v2 & 1) != 0 || (v3 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleTitle2], v4 = objc_msgSend(objc_opt_self(), "configurationWithFont:", v3), v3, !v4))
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  v6 = String._bridgeToObjectiveC()();
  v7 = [objc_opt_self() _systemImageNamed:v6 withConfiguration:v5];

  sub_10000905C(0, &qword_1006AF730, UIAction_ptr);
  v8 = [objc_opt_self() mainBundle];
  v15._object = 0x8000000100579630;
  v9._object = 0x8000000100579600;
  v15._countAndFlagsBits = 0xD000000000000033;
  v9._countAndFlagsBits = 0xD000000000000021;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v15);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = v7;
  v12 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();

  LOBYTE(v7) = dispatch thunk of FMFManager.friendsOperationsRestricted.getter();

  if (v7)
  {

    return 0;
  }

  return v12;
}

char *sub_10008B454(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for FMSelectedSection(0);
  __chkstk_darwin(v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v12 - v6;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(*&result[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator] + 56);
    v10 = result;
    swift_storeEnumTagMultiPayload();
    v11 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
    swift_beginAccess();
    sub_100062074(v9 + v11, v4);
    swift_beginAccess();

    sub_100058530(v7, v9 + v11);
    swift_endAccess();
    sub_100058594(v4);

    sub_100029E60(v4, type metadata accessor for FMSelectedSection);
    return sub_100029E60(v7, type metadata accessor for FMSelectedSection);
  }

  return result;
}

char *sub_10008B5E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for FMSelectedSection(0);
  __chkstk_darwin(v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v20 - v7;
  v9 = sub_10007EBC0(&unk_1006B8DD0, &unk_100555060);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator;
    v14 = *(*&result[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator] + 56);
    v15 = result;
    v16 = type metadata accessor for FMSelectionPendingAction(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v16 - 8) + 56))(v11, 0, 1, v16);
    v17 = OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingAction;
    swift_beginAccess();

    sub_10008EC74(v11, v14 + v17);
    swift_endAccess();

    v18 = *(*&v15[v13] + 56);
    swift_storeEnumTagMultiPayload();
    v19 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
    swift_beginAccess();
    sub_100062074(v18 + v19, v5);
    swift_beginAccess();

    sub_100058530(v8, v18 + v19);
    swift_endAccess();
    sub_100058594(v5);

    sub_100029E60(v5, type metadata accessor for FMSelectedSection);
    return sub_100029E60(v8, type metadata accessor for FMSelectedSection);
  }

  return result;
}

uint64_t sub_10008B86C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

char *sub_10008B8B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10007EBC0(&qword_1006AF798, &unk_1005523D0);
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

char *sub_10008B9E4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10007EBC0(&unk_1006AF770, &unk_1005542D0);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10008BC7C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10007EBC0(&qword_1006AF858, &qword_100552490);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10007EBC0(&qword_1006AF860, &qword_100552498);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10008BEF8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10007EBC0(&qword_1006AF8F8, &qword_100552520);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10007EBC0(&qword_1006AF900, &qword_100552528);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10008C054(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_10007EBC0(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

void *sub_10008C140(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10007EBC0(&qword_1006AF7C0, &qword_1005523F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10007EBC0(&qword_1006AF7C8, &qword_100552400);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10008C29C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10007EBC0(&qword_1006AF848, &qword_100552480);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10007EBC0(&qword_1006AF850, &qword_100552488);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10008C470(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10007EBC0(a5, a6);
  v16 = *(sub_10007EBC0(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(sub_10007EBC0(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_10008C658(char *result, int64_t a2, char a3, char *a4)
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
    sub_10007EBC0(&qword_1006AF7F0, &qword_100555D90);
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

void *sub_10008C780(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_10007EBC0(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10007EBC0(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_10008C904(uint64_t a1, uint64_t a2)
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

  sub_10007EBC0(&qword_1006AF938, &unk_100552560);
  v4 = *(sub_10007EBC0(&qword_1006AF940, &unk_100555E70) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_10008CA70(uint64_t a1, uint64_t a2)
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

  sub_10007EBC0(&qword_1006B4160, &unk_100552510);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 + 31;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 6);
  return result;
}

void *sub_10008CB1C(uint64_t a1, uint64_t a2)
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

  sub_10007EBC0(&qword_1006AF960, &qword_100555EA0);
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

void *sub_10008CBC8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10007EBC0(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = j__malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_10008CCC4(uint64_t a1, uint64_t a2)
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

  sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
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

_BYTE **sub_10008CD4C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_10008CD5C(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_10008CDD0@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void sub_10008CE28(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_10008CE9C(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

void sub_10008CEF4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC6FindMy18FMMeViewController_locationSettings;
  *(v1 + v2) = [objc_allocWithZone(type metadata accessor for FMLocationSettingsView(0)) init];
  v3 = OBJC_IVAR____TtC6FindMy18FMMeViewController_locationSettingsContainerView;
  *(v1 + v3) = [objc_allocWithZone(UIView) init];
  v4 = OBJC_IVAR____TtC6FindMy18FMMeViewController_locationSettingsBackgroundView;
  v5 = type metadata accessor for FMPlatterBackgroundView();
  v6 = objc_allocWithZone(v5);
  v6[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 1;
  v19.receiver = v6;
  v19.super_class = v5;
  v7 = objc_msgSendSuper2(&v19, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10024610C();

  *(v1 + v4) = v7;
  v8 = OBJC_IVAR____TtC6FindMy18FMMeViewController_stewieSettings;
  *(v1 + v8) = [objc_allocWithZone(type metadata accessor for FMStewieSettingsView()) init];
  v9 = OBJC_IVAR____TtC6FindMy18FMMeViewController_stewieSettingsContainerView;
  *(v1 + v9) = [objc_allocWithZone(UIView) init];
  v10 = OBJC_IVAR____TtC6FindMy18FMMeViewController_stewieSettingsBackgroundView;
  v11 = objc_allocWithZone(v5);
  v11[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 1;
  v18.receiver = v11;
  v18.super_class = v5;
  v12 = objc_msgSendSuper2(&v18, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10024610C();

  *(v1 + v10) = v12;
  v13 = OBJC_IVAR____TtC6FindMy18FMMeViewController_helpFriendView;
  *(v1 + v13) = [objc_allocWithZone(type metadata accessor for FMHelpFriendView()) init];
  v14 = OBJC_IVAR____TtC6FindMy18FMMeViewController_verticalStackView;
  *(v1 + v14) = [objc_allocWithZone(UIStackView) init];
  v15 = OBJC_IVAR____TtC6FindMy18FMMeViewController_coarseLabel;
  *(v1 + v15) = [objc_allocWithZone(UILabel) init];
  *(v1 + OBJC_IVAR____TtC6FindMy18FMMeViewController_peopleSubscription) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy18FMMeViewController_deviceSubscription) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy18FMMeViewController_conditionsSubscription) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy18FMMeViewController_isLocationSharingOnOverride) = 2;
  *(v1 + OBJC_IVAR____TtC6FindMy18FMMeViewController_isAllowFriendsRequestOnOverride) = 2;
  *(v1 + OBJC_IVAR____TtC6FindMy18FMMeViewController_isAllowLocationAlertsOnOverride) = 2;
  *(v1 + OBJC_IVAR____TtC6FindMy18FMMeViewController_isClearTagEnabledOverride) = 2;
  *(v1 + OBJC_IVAR____TtC6FindMy18FMMeViewController_currentLimitedPrecision) = 0;
  v16 = v1 + OBJC_IVAR____TtC6FindMy18FMMeViewController_displayAddress;
  *(v16 + 32) = 0;
  *v16 = 0u;
  *(v16 + 16) = 0u;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_100174A74(_swiftEmptyArrayStorage);
  }

  else
  {
    v17 = _swiftEmptySetSingleton;
  }

  *(v1 + OBJC_IVAR____TtC6FindMy18FMMeViewController_cancellables) = v17;
  *(v1 + OBJC_IVAR____TtC6FindMy18FMMeViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10008D1D8(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10007EBC0(&qword_1006AF740, &unk_100552330);
  __chkstk_darwin(v6 - 8);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v60 - v10;
  v12 = type metadata accessor for FMFLocation();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    v16 = [objc_opt_self() mainBundle];
    v69._object = 0x80000001005798C0;
    v17._countAndFlagsBits = 0xD000000000000021;
    v17._object = 0x8000000100579890;
    v66._countAndFlagsBits = 0xD000000000000033;
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    v19 = NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, v16, v18, v66);
    countAndFlagsBits = v19._countAndFlagsBits;
    object = v19._object;

    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    goto LABEL_25;
  }

  dispatch thunk of FMFManager.myLocation.getter();
  if ((*(v13 + 48))(v11, 1, v12) != 1)
  {
    (*(v13 + 32))(v15, v11, v12);
    if (qword_1006AECC0 != -1)
    {
      swift_once();
    }

    if (byte_1006D4AD1 != 1)
    {
      (*(v13 + 8))(v15, v12);
      goto LABEL_11;
    }

    v26 = *(*(a2 + 40) + OBJC_IVAR____TtC6FindMy18FMLocationProvider_limitedPrecision);
    v65[3] = &type metadata for SolariumFeatureFlag;
    v65[4] = sub_10000BD04();
    v27 = isFeatureEnabled(_:)();
    sub_100006060(v65);
    (*(v13 + 16))(v8, v15, v12);
    v64 = v13;
    (*(v13 + 56))(v8, 0, 1, v12);
    v61 = v26;
    v28 = v26 ^ 1u;
    if (v27)
    {
      v29 = sub_100051E0C(v8, v28);
      v62 = v30;
      v63 = v29;
      countAndFlagsBits = v31;
      object = v32;
    }

    else
    {
      countAndFlagsBits = sub_1000532F8(v8, v28);
      object = v37;
      v62 = 0;
      v63 = 0;
    }

    sub_100012DF0(v8, &qword_1006AF740, &unk_100552330);

    sub_10007EBC0(&unk_1006AF770, &unk_1005542D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100552210;
    v60 = objc_opt_self();
    v39 = [v60 mainBundle];
    v69._object = 0x8000000100579940;
    v40._object = 0x8000000100579920;
    v68._countAndFlagsBits = 0xD000000000000030;
    v40._countAndFlagsBits = 0xD00000000000001ELL;
    v41._countAndFlagsBits = 0;
    v41._object = 0xE000000000000000;
    v42 = NSLocalizedString(_:tableName:bundle:value:comment:)(v40, 0, v39, v41, v68);

    *(inited + 32) = v42;
    v43 = static PublishedLocation.Label.noLocationLabel.getter();
    *(inited + 48) = v43;
    *(inited + 56) = v44;
    v65[0] = countAndFlagsBits;
    v65[1] = object;
    __chkstk_darwin(v43);
    v69._object = v65;
    v45 = sub_10008A40C(sub_10008EE2C, (&v60 - 4), inited);
    swift_setDeallocating();
    swift_arrayDestroy();

    if ((v45 & 1) != 0 && (v46 = FMFLocation.location.getter()) != 0)
    {
      v47 = v46;

      [v47 coordinate];
      v49 = v48;
      v51 = v50;

      v52 = [objc_allocWithZone(MUCoordinateStringFormatter) init];
      v53 = [v52 stringFromCoordinate:{v49, v51}];

      countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
      object = v54;

      v22 = 1;
      if (!v61)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v22 = 0;
      if (!v61)
      {
LABEL_24:
        (*(v64 + 8))(v15, v12);
        v23 = 1;
        v25 = v62;
        v24 = v63;
        goto LABEL_25;
      }
    }

    v55 = [v60 mainBundle];
    v69._object = 0x8000000100579980;
    v56._countAndFlagsBits = 0x4444415F5241454ELL;
    v56._object = 0xEC00000053534552;
    v57._countAndFlagsBits = 0;
    v57._object = 0xE000000000000000;
    v69._countAndFlagsBits = 0xD00000000000001ELL;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v56, 0, v55, v57, v69);

    sub_10007EBC0(&unk_1006B20B0, &unk_1005523B0);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_100552220;
    *(v58 + 56) = &type metadata for String;
    *(v58 + 64) = sub_10008EE84();
    *(v58 + 32) = countAndFlagsBits;
    *(v58 + 40) = object;
    countAndFlagsBits = String.init(format:_:)();
    object = v59;

    goto LABEL_24;
  }

  sub_100012DF0(v11, &qword_1006AF740, &unk_100552330);
LABEL_11:
  if (qword_1006AECC0 != -1)
  {
    swift_once();
  }

  if (byte_1006D4AD1 == 1)
  {
    v33 = [objc_opt_self() mainBundle];
    v67._countAndFlagsBits = 0xD00000000000001CLL;
    v69._object = 0x8000000100579900;
    v34._countAndFlagsBits = 0x45524444415F4F4ELL;
    v34._object = 0xEA00000000005353;
    v35._countAndFlagsBits = 0;
    v35._object = 0xE000000000000000;
    v36 = NSLocalizedString(_:tableName:bundle:value:comment:)(v34, 0, v33, v35, v67);
    countAndFlagsBits = v36._countAndFlagsBits;
    object = v36._object;

    v23 = 0;
    v24 = 0;
    v25 = 0;
  }

  else
  {
    v23 = 0;
    countAndFlagsBits = 0;
    v24 = 0;
    v25 = 0;
    object = 0xE000000000000000;
  }

  v22 = 1;
LABEL_25:
  *a3 = v24;
  *(a3 + 8) = v25;
  *(a3 + 16) = countAndFlagsBits;
  *(a3 + 24) = object;
  *(a3 + 32) = v23;
  *(a3 + 33) = v22;
}

void sub_10008D940(char a1)
{
  My = type metadata accessor for Feature.FindMy();
  v17[3] = My;
  v17[4] = sub_100009E38(&qword_1006B4220, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v4 = sub_100008FC0(v17);
  (*(*(My - 8) + 104))(v4, enum case for Feature.FindMy.fmNiftyCurve(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100006060(v17);
  if (My)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100005B14(v5, qword_1006D4630);
    v6 = v1;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *(v9 + 4) = v6;
      *v10 = v6;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v7, v8, "FMMeViewController<%@>: update Stewie location actioned", v9, 0xCu);
      sub_100012DF0(v10, &unk_1006AF760, &qword_100552DB0);
    }

    type metadata accessor for FMStewieWelcomeViewController(0);
    v12 = *&v6[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator];
    v13 = *&v6[OBJC_IVAR____TtC6FindMy18FMMeViewController_stewieViewModel];
    v14 = v6;

    v15 = sub_100426428(v12, v13, v6, &off_100623BC8, a1 & 1);
    v16 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v15];
    [v14 presentViewController:v16 animated:1 completion:0];
  }
}

void sub_10008DBCC(void *a1)
{
  v3 = *(*(*(v1 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator) + 16) + OBJC_IVAR____TtC6FindMy19FMConditionProvider_accountsAreSignedIn);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100005B14(v4, qword_1006D4630);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = v3;
    _os_log_impl(&_mh_execute_header, v5, v6, "FMActionButtonController: areAccountsSignedIn: %{BOOL}d", v7, 8u);
  }

  v8 = sub_10008AA3C(&unk_100624320, sub_10008FB0C, sub_10008FB2C, sub_10008FB4C);
  v9 = v8;
  v10 = v8 >> 62;
  if (v8 >> 62)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v11)
  {
    v12 = v3;
  }

  else
  {
    v12 = 0;
  }

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 67109120;
    *(v15 + 4) = v11 != 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "FMActionButtonController: hasActions: %{BOOL}d", v15, 8u);
  }

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 67109120;
    *(v18 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v16, v17, "FMActionButtonController: Platform Action Button Visibility: %{BOOL}d", v18, 8u);
  }

  v19 = sub_10008B1D0(&unk_100624320, sub_10008FAF0);
  if (v19)
  {
    v20 = v19;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v21 = [objc_opt_self() mainBundle];
  swift__string._object = 0x80000001005795D0;
  v22._object = 0x80000001005795B0;
  swift__string._countAndFlagsBits = 0xD00000000000002BLL;
  v22._countAndFlagsBits = 0xD000000000000019;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  v24 = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, 0, v21, v23, swift__string);

  if (v10)
  {
    sub_10000905C(0, &unk_1006BAA80, UIMenuElement_ptr);

    preferredElementSize = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_10000905C(0, &unk_1006BAA80, UIMenuElement_ptr);
    preferredElementSize = v9;
  }

  sub_10000905C(0, &unk_1006AF720, UIMenu_ptr);
  v32.value.super.isa = 0;
  v32.is_nil = 0;
  v30 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v24, 0, v32, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v28).super.super.isa;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  v33.value.super.isa = 0;
  v33.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v26, 0, v33, 0, 0xFFFFFFFFFFFFFFFFLL, _swiftEmptyArrayStorage, v29).super.super.isa;
  [a1 setMenu:isa];

  [a1 setPreferredMenuElementOrder:2];
  [a1 setHidden:v12 ^ 1u];
}

uint64_t sub_10008E13C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v10 = *(v18 - 8);
  __chkstk_darwin(v18);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
  v13 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = v4;
  aBlock[4] = a3;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = a4;
  v15 = _Block_copy(aBlock);
  v16 = v4;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100009E38(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640, &unk_100552B10, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v19 + 8))(v9, v7);
  return (*(v10 + 8))(v12, v18);
}

uint64_t sub_10008E420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v9 = *(v17 - 8);
  __chkstk_darwin(v17);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = a3;
  v14 = _Block_copy(aBlock);
  v15 = v3;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100009E38(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640, &unk_100552B10, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v18 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v17);
}

void sub_10008E704(void *a1)
{
  v3 = *(*(*(v1 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator) + 16) + OBJC_IVAR____TtC6FindMy19FMConditionProvider_accountsAreSignedIn);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100005B14(v4, qword_1006D4630);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = v3;
    _os_log_impl(&_mh_execute_header, v5, v6, "FMActionButtonController: areAccountsSignedIn: %{BOOL}d", v7, 8u);
  }

  v8 = sub_10008AA3C(&unk_100623DF8, sub_10008FCA0, sub_10008FCA4, sub_10008FCA8);
  v9 = v8;
  v10 = v8 >> 62;
  if (v8 >> 62)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v11)
  {
    v12 = v3;
  }

  else
  {
    v12 = 0;
  }

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 67109120;
    *(v15 + 4) = v11 != 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "FMActionButtonController: hasActions: %{BOOL}d", v15, 8u);
  }

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 67109120;
    *(v18 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v16, v17, "FMActionButtonController: Platform Action Button Visibility: %{BOOL}d", v18, 8u);
  }

  v19 = sub_10008B1D0(&unk_100623DF8, sub_10008FC9C);
  if (v19)
  {
    v20 = v19;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v21 = [objc_opt_self() mainBundle];
  swift__string._object = 0x80000001005795D0;
  v22._object = 0x80000001005795B0;
  swift__string._countAndFlagsBits = 0xD00000000000002BLL;
  v22._countAndFlagsBits = 0xD000000000000019;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  v24 = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, 0, v21, v23, swift__string);

  if (v10)
  {
    sub_10000905C(0, &unk_1006BAA80, UIMenuElement_ptr);

    preferredElementSize = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_10000905C(0, &unk_1006BAA80, UIMenuElement_ptr);
    preferredElementSize = v9;
  }

  sub_10000905C(0, &unk_1006AF720, UIMenu_ptr);
  v32.value.super.isa = 0;
  v32.is_nil = 0;
  v30 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v24, 0, v32, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v28).super.super.isa;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  v33.value.super.isa = 0;
  v33.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v26, 0, v33, 0, 0xFFFFFFFFFFFFFFFFLL, _swiftEmptyArrayStorage, v29).super.super.isa;
  [a1 setMenu:isa];

  [a1 setPreferredMenuElementOrder:2];
  [a1 setHidden:v12 ^ 1u];
}

uint64_t sub_10008EC74(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&unk_1006B8DD0, &unk_100555060);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_10008ECE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }
}

uint64_t sub_10008EE2C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

unint64_t sub_10008EE84()
{
  result = qword_1006AF780;
  if (!qword_1006AF780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006AF780);
  }

  return result;
}

uint64_t sub_10008EF58(const char *a1, uint64_t (*a2)(void), ...)
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100005B14(v5, qword_1006D4630);
  v6 = v2;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, a1, v9, 0xCu);
    sub_100012DF0(v10, &unk_1006AF760, &qword_100552DB0);
  }

  return a2();
}

void sub_10008F0AC(char a1)
{
  v3 = sub_10007EBC0(&qword_1006AF750, &qword_100552340);
  __chkstk_darwin(v3 - 8);
  v5 = v48 - v4;
  v6 = type metadata accessor for FMFPreferences();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v51 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v52 = v48 - v10;
  __chkstk_darwin(v11);
  v53 = v48 - v12;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_100005B14(v13, qword_1006D4630);
  v15 = v1;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v48[1] = v14;
    v19 = v18;
    v20 = swift_slowAlloc();
    v49 = v7;
    v21 = v20;
    v22 = swift_slowAlloc();
    v50 = v6;
    v48[0] = v22;
    *v19 = 138412546;
    *(v19 + 4) = v15;
    *v21 = v15;
    *(v19 + 12) = 2080;
    v54 = 0;
    v55 = 0xE000000000000000;
    v56 = v22;
    v23 = v5;
    if (a1)
    {
      v24 = 1702195828;
    }

    else
    {
      v24 = 0x65736C6166;
    }

    v25 = a1;
    if (a1)
    {
      v26 = 0xE400000000000000;
    }

    else
    {
      v26 = 0xE500000000000000;
    }

    v27 = v15;
    v28._countAndFlagsBits = v24;
    v5 = v23;
    v28._object = v26;
    String.append(_:)(v28);

    v29 = sub_100005B4C(v54, v55, &v56);
    a1 = v25;

    *(v19 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v16, v17, "FMMeViewController<%@>: friends settings, allow friend request state changed: %s", v19, 0x16u);
    sub_100012DF0(v21, &unk_1006AF760, &qword_100552DB0);
    v7 = v49;

    sub_100006060(v48[0]);
    v6 = v50;
  }

  *(v15 + OBJC_IVAR____TtC6FindMy18FMMeViewController_isAllowFriendsRequestOnOverride) = a1 & 1;
  v30 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator;

  dispatch thunk of FMFManager.preferences.getter();

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100012DF0(v5, &qword_1006AF750, &qword_100552340);
    v31 = v15;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      *(v34 + 4) = v31;
      *v35 = v31;
      v36 = v31;
      _os_log_impl(&_mh_execute_header, v32, v33, "FMMeViewController<%@>: prefs is nil for some reason", v34, 0xCu);
      sub_100012DF0(v35, &unk_1006AF760, &qword_100552DB0);
    }
  }

  else
  {
    v37 = *(v7 + 32);
    v38 = v53;
    v50 = v15;
    v39 = v6;
    v37(v53, v5, v6);
    v40 = a1 & 1;
    v49 = v30;
    v41 = *(v7 + 16);
    v41(v51, v38, v39);
    v42 = v52;
    FMFPreferences.init(prefs:allowFriendRequests:)();
    v43 = *(v7 + 8);
    v43(v38, v39);
    v37(v38, v42, v39);
    v41(v42, v38, v39);
    type metadata accessor for FMFUpdatePrefsAction();
    swift_allocObject();
    v44 = FMFUpdatePrefsAction.init(prefs:)();
    v45 = v50;
    v46 = swift_allocObject();
    *(v46 + 16) = v45;
    *(v46 + 24) = v40;
    v47 = v45;

    sub_1000FB600(v44, sub_10008F690, v46);

    v43(v38, v39);
  }
}

void sub_10008F69C()
{
  v1 = sub_10007EBC0(&qword_1006AF748, &unk_100558AD0);
  __chkstk_darwin(v1 - 8);
  v3 = &v22[-1] - v2;
  My = type metadata accessor for Feature.FindMy();
  v22[3] = My;
  v22[4] = sub_100009E38(&qword_1006B4220, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v5 = sub_100008FC0(v22);
  (*(*(My - 8) + 104))(v5, enum case for Feature.FindMy.fmNiftyCurve(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100006060(v22);
  if (My)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100005B14(v6, qword_1006D4630);
    v7 = v0;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      *(v10 + 4) = v7;
      *v11 = v7;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v8, v9, "FMMeViewController<%@>: update Stewie location confirmed", v10, 0xCu);
      sub_100012DF0(v11, &unk_1006AF760, &qword_100552DB0);
    }

    dispatch thunk of FMFManager.myInfo.getter();

    v13 = type metadata accessor for FMFMyInfo();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v3, 1, v13) == 1)
    {
      sub_100012DF0(v3, &qword_1006AF748, &unk_100558AD0);
      v15 = v7;
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *v18 = 138412290;
        *(v18 + 4) = v15;
        *v19 = v15;
        v20 = v15;
        _os_log_impl(&_mh_execute_header, v16, v17, "FMMeViewController<%@>: couldn't update Stewie: No deviceId", v18, 0xCu);
        sub_100012DF0(v19, &unk_1006AF760, &qword_100552DB0);
      }
    }

    else
    {
      FMFMyInfo.deviceId.getter();
      (*(v14 + 8))(v3, v13);

      sub_100170934(v7);
    }
  }
}

void sub_10008FAA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }
}

uint64_t sub_10008FBAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMSelectionPendingAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 sub_10008FCAC()
{
  v0 = [objc_opt_self() systemBlueColor];
  xmmword_1006AF9C0 = xmmword_1005525D0;
  *algn_1006AF9D0 = xmmword_1005525E0;
  *&xmmword_1006AF9E0 = 0x4041000000000000;
  *(&xmmword_1006AF9E0 + 1) = 2;
  qword_1006AF9F0 = v0;
  *algn_1006AF9F8 = xmmword_1005525F0;
  __asm { FMOV            V0.2D, #4.0 }

  *(&xmmword_1006AFA00 + 8) = result;
  return result;
}

uint64_t sub_10008FDD8(void *a1)
{
  ObjectType = swift_getObjectType();
  v8.receiver = v1;
  v8.super_class = ObjectType;
  objc_msgSendSuper2(&v8, "setAnnotation:", a1);
  v7.receiver = v1;
  v7.super_class = ObjectType;
  if (objc_msgSendSuper2(&v7, "annotation"))
  {
    type metadata accessor for FMClusterAnnotation();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      __chkstk_darwin(v4);
      sub_10007EBC0(&unk_1006BEF10, &unk_100552680);
      OS_dispatch_queue.sync<A>(execute:)();
      sub_10008FF20(v6);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_10008FF20(unint64_t a1)
{
  v2 = v1;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100005B14(v4, qword_1006D4630);

  v5 = Logger.logObject.getter();
  LOBYTE(v6) = static os_log_type_t.default.getter();
  v7 = a1 >> 62;
  if (!os_log_type_enabled(v5, LOBYTE(v6)))
  {

    goto LABEL_8;
  }

  v8 = swift_slowAlloc();
  *v8 = 134217984;
  if (!v7)
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_6;
  }

  while (1)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:
    *(v8 + 4) = v9;

    _os_log_impl(&_mh_execute_header, v5, LOBYTE(v6), "*x* FMClusteredAnnotation: update annotations %ld ", v8, 0xCu);

LABEL_8:
    if (v7)
    {
      v8 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = &v2[OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_style];
    v11 = 0.0;
    if (v8 >= 2)
    {
      v11 = *(v10 + 10);
    }

    v12 = *v10;
    v13 = *(v10 + 2);
    v87 = *&v2[OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_balloonLayer];
    [v87 frame];
    v15 = v14;
    v16 = *(v10 + 7);
    v17 = *(v10 + 8);
    v18 = *&v2[OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_firstImage];
    p_ivar_lyt = &LocateDeviceIntentResponse__metaData.ivar_lyt;
    [v18 setHidden:1];
    v86 = *&v2[OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_secondImage];
    [v86 setHidden:1];
    v83 = *&v2[OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_thirdImage];
    [*&v83 setHidden:1];
    v82 = *&v2[OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_additionalCount];
    [v82 setHidden:1];
    v6 = *&v2[OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_additionalText];
    [*&v6 setHidden:1];
    if (v7)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_22;
      }
    }

    else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_22;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v20 = *(a1 + 32);
      goto LABEL_19;
    }

    __break(1u);
LABEL_67:
    __break(1u);
  }

  v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_19:
  v21 = v20;
  v22 = *&v20[OBJC_IVAR____TtC6FindMy12FMAnnotation_fmClusterIdentifier];
  v5 = *&v20[OBJC_IVAR____TtC6FindMy12FMAnnotation_fmClusterIdentifier + 8];
  sub_10009186C(v22, v5);

  if (v5 < 4 || (v2[OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_puckHidden] & 1) != 0)
  {
    sub_100091880(v22, v5);
LABEL_22:
    v22 = *&v2[OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_puckIcon];
    v5 = 1;
    [v22 setHidden:1];
    goto LABEL_23;
  }

  while (1)
  {
    v81 = v6;
    v71 = OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_cachedHomeIcon;
    if (*&v2[OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_cachedHomeIcon])
    {
      sub_100091880(v22, v5);
    }

    else
    {
      v85 = String._bridgeToObjectiveC()();
      v72 = [objc_opt_self() systemImageNamed:v85];

      sub_100091880(v22, v5);
      v73 = v72;
      if (v72)
      {
        v74 = [objc_opt_self() whiteColor];
        v75 = sub_1003DE2DC(v74);

        v73 = [(UIImage *)v75 CGImage];
      }

      v76 = *&v2[v71];
      *&v2[v71] = v73;
    }

    v22 = *&v2[OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_puckIcon];
    [v22 setContents:*&v2[v71]];
    [v22 p:0 ivar:?lyt[403]];
    v5 = 0;
    v6 = v81;
LABEL_23:
    v23 = (v12 - v13) * 0.5;
    v15 = v23 + v15;
    v24 = *&v2[OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_puckBackgroundLayer];
    [v24 p:v5 ivar:?lyt[403]];
    if (v8 < 1)
    {
      break;
    }

    v84 = v22;
    v7 = a1 & 0xC000000000000001;
    v80 = *&v6;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_67;
      }

      v25 = *(a1 + 32);
    }

    v26 = v25;
    v11 = v23 + v11;
    v6 = COERCE_DOUBLE((*((swift_isaMask & *v25) + 0x188))());

    v5 = [*&v6 CGImage];
    [v18 setContents:v5];

    [v18 setFrame:{v11, v15, v13, v13}];
    [v18 p:0 ivar:?lyt[403]];
    if (v8 < 2)
    {
LABEL_39:
      v18 = 0;
      goto LABEL_40;
    }

    if (v7)
    {
      v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v27 = &selRef__enter3DMode;
    }

    else
    {
      v27 = &selRef__enter3DMode;
      if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        __break(1u);
LABEL_71:
        v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_35;
      }

      v28 = *(a1 + 40);
    }

    v29 = (*((swift_isaMask & *v28) + 0x188))();

    v5 = [v29 CGImage];
    v6 = *&v86;
    [v86 setContents:v5];

    [v86 v27[311]];
    [v86 p:0 ivar:?lyt[403]];
    if (v8 == 2)
    {
      goto LABEL_39;
    }

    v86 = (v8 - 2);
    if (v7)
    {
      goto LABEL_71;
    }

    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
    {
      __break(1u);
    }

    v30 = *(a1 + 48);
LABEL_35:
    v31 = v30;
    v32 = (*((swift_isaMask & *v30) + 0x188))();

    v5 = [v32 CGImage];
    v6 = v83;
    [*&v83 setContents:v5];

    v11 = v13 + v13 + v11;
    [*&v83 v27[311]];
    [*&v83 p:0 ivar:?lyt[403]];
    if (v8 < 4)
    {
      goto LABEL_39;
    }

    v33 = v27;
    v34 = *(v10 + 3);
    v18 = 1;
    [*&v83 p:1 ivar:?lyt[403]];
    [v87 frame];
    v83 = (v12 - v34) * 0.5;
    [v82 v33[311]];
    v78 = v34;
    v79 = v11;
    v36 = *(v10 + 4);
    v37 = [objc_opt_self() bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, v36, v34, v34 * 0.5}];
    v38 = [v37 CGPath];

    [v82 setPath:v38];
    v39 = [v2 traitCollection];
    v40 = [v39 userInterfaceStyle];

    v41 = objc_opt_self();
    v42 = &selRef_systemGray4Color;
    if (v40 != 2)
    {
      v42 = &selRef_systemGray3Color;
    }

    v43 = [v41 *v42];
    v44 = [v43 CGColor];

    [v82 setFillColor:v44];
    [v82 p:0 ivar:?lyt[403]];
    v45 = p_ivar_lyt[403];
    p_ivar_lyt = v80;
    [v80 v45];
    *&transform.a = 43;
    transform.b = -1.7573882e159;
    sub_100091894();
    v46 = BinaryInteger.formatted()();
    String.append(_:)(v46);

    v5 = 0xE100000000000000;
    v6 = COERCE_DOUBLE(String._bridgeToObjectiveC()());

    [v80 setString:*&v6];

    [v80 preferredFrameSize];
    v48 = v47;
    v50 = v49;
    v11 = v79 + (v36 - v47) * 0.5;
    [v87 frame];
    [v80 setFrame:{v11, (v78 - v50) * 0.5 + v83 + v51 + 1.0, v48, v50}];
LABEL_40:
    v22 = v84;
    v52 = v8 - 1;
    if (!__OFSUB__(v8, 1))
    {
      goto LABEL_41;
    }

LABEL_55:
    __break(1u);
  }

  v18 = 0;
  v52 = v8 - 1;
  if (__OFSUB__(v8, 1))
  {
    goto LABEL_55;
  }

LABEL_41:
  v53 = v52 & ~(v52 >> 63);
  if (*(v10 + 5) < v53)
  {
    v53 = *(v10 + 5);
  }

  v54 = v13 * v53 + *(v10 + 10) + *(v10 + 10);
  v55 = v54 + -4.0;
  v56 = v54 + 0.0;
  if (v8 <= 1)
  {
    v56 = 0.0;
  }

  if (v18)
  {
    v57 = v55;
  }

  else
  {
    v57 = v56;
  }

  v58 = OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_annotations;
  v59 = *&v2[OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_annotations];
  if (v59 >> 62)
  {
    v77 = v57;
    v60 = _CocoaArrayWrapper.endIndex.getter();
    v57 = v77;
  }

  else
  {
    v60 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v61 = v12 + v57;
  if (v60 != v8)
  {
    v62 = sub_10043C384(v12 * 0.5, v12 * 0.125, v57);
    v63 = [v62 CGPath];
    [v87 setPath:v63];

    [v87 setFrame:{0.0, 0.0, v61, v12}];
    transform.a = 1.0;
    transform.b = 0.0;
    transform.c = 0.0;
    transform.d = 1.0;
    transform.tx = 0.0;
    transform.ty = 0.0;
    v89.origin.x = 0.0;
    v89.origin.y = 0.0;
    v89.size.width = v61;
    v89.size.height = v12;
    v64 = CGPathCreateWithEllipseInRect(v89, &transform);
    [v87 setShadowPath:v64];
    v65 = [v2 layer];
    [v65 setFrame:{0.0, 0.0, v61, v12 + v12 + 45.0}];
  }

  [v24 setFrame:{v61 * 0.5 - v16 * 0.5, v17 + v15 + v16 + v16, v16, v16}];
  [v24 frame];
  [v22 setFrame:{v66 + *(v10 + 9), v67 + *(v10 + 9), v68 - (*(v10 + 9) + *(v10 + 9)), v69 - (*(v10 + 9) + *(v10 + 9))}];
  sub_1000912E8();
  *&v2[v58] = a1;
}

id sub_100090B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_style;
  if (qword_1006AEA20 != -1)
  {
    swift_once();
  }

  v23[2] = xmmword_1006AF9E0;
  v23[3] = *&qword_1006AF9F0;
  v23[4] = xmmword_1006AFA00;
  v24 = qword_1006AFA10;
  v23[0] = xmmword_1006AF9C0;
  v23[1] = *algn_1006AF9D0;
  memmove(&v3[v7], &xmmword_1006AF9C0, 0x58uLL);
  v8 = OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_balloonLayer;
  v9 = objc_allocWithZone(CAShapeLayer);
  sub_100091B08(v23, v22);
  *&v3[v8] = [v9 init];
  v10 = OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_firstImage;
  *&v3[v10] = [objc_allocWithZone(CALayer) init];
  v11 = OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_secondImage;
  *&v3[v11] = [objc_allocWithZone(CALayer) init];
  v12 = OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_thirdImage;
  *&v3[v12] = [objc_allocWithZone(CALayer) init];
  v13 = OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_additionalCount;
  *&v3[v13] = [objc_allocWithZone(CAShapeLayer) init];
  v14 = OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_additionalText;
  *&v3[v14] = [objc_allocWithZone(CATextLayer) init];
  v15 = OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_puckBackgroundLayer;
  *&v3[v15] = [objc_allocWithZone(CAShapeLayer) init];
  v16 = OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_puckIcon;
  *&v3[v16] = [objc_allocWithZone(CALayer) init];
  *&v3[OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_cachedHomeIcon] = 0;
  *&v3[OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_annotations] = _swiftEmptyArrayStorage;
  v3[OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_puckHidden] = 0;
  if (a3)
  {
    v17 = String._bridgeToObjectiveC()();
  }

  else
  {
    v17 = 0;
  }

  v21.receiver = v3;
  v21.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v21, "initWithAnnotation:reuseIdentifier:", a1, v17);

  v19 = v18;
  sub_100090DC0();
  sub_1000912E8();

  swift_unknownObjectRelease();
  return v19;
}

void sub_100090DC0()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_balloonLayer];
  [v2 setAnchorPoint:{0.5, 1.0}];
  v3 = *&v0[OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_additionalText];
  v4 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleSubheadline];
  sub_10007EBC0(&qword_1006BA720, &unk_1005565C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100552220;
  *(inited + 32) = UIFontWeightTrait;
  *(inited + 40) = UIFontWeightMedium;
  v6 = UIFontWeightTrait;
  v7 = sub_10002AB84(inited);
  swift_setDeallocating();
  sub_10002AC74(inited + 32);
  v8 = sub_10002ACDC(v7);

  [v3 setFont:v8];

  [v3 setFontSize:15.0];
  v9 = [objc_opt_self() mainScreen];
  [v9 scale];
  v11 = v10;

  [v3 setContentsScale:v11];
  v12 = objc_opt_self();
  v13 = [v12 whiteColor];
  v14 = [v13 CGColor];

  [v3 setForegroundColor:v14];
  v15 = [v12 blackColor];
  v16 = [v15 CGColor];

  [v2 setShadowColor:v16];
  [v2 setShadowOffset:{0.0, 0.0}];
  LODWORD(v17) = 1045220557;
  [v2 setShadowOpacity:v17];
  v18 = &v1[OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_style];
  [v2 setShadowRadius:*&v1[OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_style + 8]];
  v19 = [objc_opt_self() bezierPathWithOvalInRect:{0.0, 0.0, *(v18 + 7), *(v18 + 7)}];
  v20 = *&v1[OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_puckBackgroundLayer];
  v21 = [v19 CGPath];
  [v20 setPath:v21];

  v22 = [*(v18 + 6) CGColor];
  [v20 setFillColor:v22];

  v23 = *&v1[OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_puckIcon];
  [v23 setContentsGravity:kCAGravityResizeAspectFill];
  v24 = [v1 layer];
  [v24 addSublayer:v20];

  v25 = [v1 layer];
  [v25 addSublayer:v23];

  v26 = [v1 layer];
  [v26 addSublayer:v2];

  v27 = [v1 layer];
  [v27 addSublayer:*&v1[OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_firstImage]];

  v28 = [v1 layer];
  [v28 addSublayer:*&v1[OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_secondImage]];

  v29 = [v1 layer];
  [v29 addSublayer:*&v1[OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_thirdImage]];

  v30 = [v1 layer];
  [v30 addSublayer:*&v1[OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_additionalCount]];

  v31 = [v1 layer];
  [v31 addSublayer:v3];

  v32 = [v1 layer];
  [v32 setAnchorPoint:{0.5, 0.5}];

  LODWORD(v33) = 1148846080;
  [v1 setDisplayPriority:v33];
}

void sub_1000912E8()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceStyle];

  if (v2 == 2)
  {
    v3 = [objc_opt_self() systemGray3Color];
    v4 = *&v0[OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_balloonLayer];
    v7 = [v3 CGColor];
    [v4 setFillColor:?];
  }

  else
  {
    v5 = *&v0[OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_balloonLayer];
    v6 = [objc_opt_self() whiteColor];
    v7 = [v6 CGColor];

    [v5 setFillColor:v7];
  }
}

id sub_1000914AC()
{
  ObjectType = swift_getObjectType();
  v6.receiver = v0;
  v6.super_class = ObjectType;
  objc_msgSendSuper2(&v6, "prepareForDisplay");
  v5.receiver = v0;
  v5.super_class = ObjectType;
  result = objc_msgSendSuper2(&v5, "annotation");
  if (result)
  {
    type metadata accessor for FMClusterAnnotation();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      __chkstk_darwin(v3);
      sub_10007EBC0(&unk_1006BEF10, &unk_100552680);
      OS_dispatch_queue.sync<A>(execute:)();
      sub_10008FF20(v4);
      swift_unknownObjectRelease();
    }

    else
    {
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

__n128 sub_10009179C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1000917C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100091808(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10009186C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

uint64_t sub_100091880(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

unint64_t sub_100091894()
{
  result = qword_1006B6BE0;
  if (!qword_1006B6BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B6BE0);
  }

  return result;
}

void sub_100091904()
{
  v1 = OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_style;
  if (qword_1006AEA20 != -1)
  {
    swift_once();
  }

  v12[3] = *&qword_1006AF9F0;
  v12[4] = xmmword_1006AFA00;
  v13 = qword_1006AFA10;
  v12[0] = xmmword_1006AF9C0;
  v12[1] = *algn_1006AF9D0;
  v12[2] = xmmword_1006AF9E0;
  memmove((v0 + v1), &xmmword_1006AF9C0, 0x58uLL);
  v2 = OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_balloonLayer;
  v3 = objc_allocWithZone(CAShapeLayer);
  sub_100091B08(v12, v11);
  *(v0 + v2) = [v3 init];
  v4 = OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_firstImage;
  *(v0 + v4) = [objc_allocWithZone(CALayer) init];
  v5 = OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_secondImage;
  *(v0 + v5) = [objc_allocWithZone(CALayer) init];
  v6 = OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_thirdImage;
  *(v0 + v6) = [objc_allocWithZone(CALayer) init];
  v7 = OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_additionalCount;
  *(v0 + v7) = [objc_allocWithZone(CAShapeLayer) init];
  v8 = OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_additionalText;
  *(v0 + v8) = [objc_allocWithZone(CATextLayer) init];
  v9 = OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_puckBackgroundLayer;
  *(v0 + v9) = [objc_allocWithZone(CAShapeLayer) init];
  v10 = OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_puckIcon;
  *(v0 + v10) = [objc_allocWithZone(CALayer) init];
  *(v0 + OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_cachedHomeIcon) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_annotations) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_puckHidden) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t UITabBarItem.largeContentTitle.getter()
{
  v1 = [v0 title];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id UITabBarItem.largeContentImage.getter()
{
  v1 = [v0 image];

  return v1;
}

NSString *sub_100091D04()
{
  v0 = objc_opt_self();
  v4 = UIFontTextStyleBody;
  v1 = [v0 labelColor];
  v2 = [v1 colorWithAlphaComponent:0.5];

  qword_1006D3C40 = v4;
  qword_1006D3C48 = v4;
  qword_1006D3C50 = v2;
  *&qword_1006D3C58 = xmmword_1005526A0;
  unk_1006D3C68 = xmmword_1005526B0;
  unk_1006D3C78 = xmmword_1005526C0;

  return v4;
}

void sub_100091DD0()
{
  v1 = String._bridgeToObjectiveC()();
  [v0 setAccessibilityIdentifier:v1];

  if (qword_1006AEA28 != -1)
  {
    swift_once();
  }

  v2 = qword_1006D3C40;
  v3 = *&qword_1006D3C60;
  v4 = *&v0[OBJC_IVAR____TtC6FindMy26FMPhoneNumberTableViewCell_textField];
  v5 = [v4 superview];
  if (!v5)
  {
    v6 = objc_opt_self();
    v7 = [v6 preferredFontForTextStyle:v2];
    [v4 setFont:v7];

    [v4 setAdjustsFontForContentSizeCategory:1];
    [v4 setAutocorrectionType:2];
    [v4 setTextContentType:UITextContentTypeTelephoneNumber];
    [v4 setKeyboardType:5];
    [v4 setAutocorrectionType:1];
    [v4 setTextAlignment:4];
    [v4 setClearButtonMode:1];
    [v4 setDelegate:v0];
    [v4 addTarget:v0 action:"textFieldDidChangeWithSender:" forControlEvents:0x20000];
    v8 = String._bridgeToObjectiveC()();
    [v4 setAccessibilityIdentifier:v8];

    v9 = [v0 contentView];
    [v9 addSubview:v4];

    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v29 = objc_opt_self();
    sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1005521F0;
    v11 = [v4 centerYAnchor];
    v12 = [v0 centerYAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];

    *(v10 + 32) = v13;
    v14 = [v4 leadingAnchor];
    v15 = [v0 leadingAnchor];
    [v0 layoutMargins];
    v17 = [v14 constraintEqualToAnchor:v15 constant:v16];

    *(v10 + 40) = v17;
    v18 = [v4 trailingAnchor];
    v19 = [v0 trailingAnchor];
    [v0 layoutMargins];
    v21 = [v18 constraintEqualToAnchor:v19 constant:-v20];

    *(v10 + 48) = v21;
    v22 = [v4 heightAnchor];
    v23 = *&qword_1006D3C58;
    v24 = [v6 preferredFontForTextStyle:v2];
    [v24 lineHeight];
    v26 = v25;

    v27 = [v22 constraintEqualToConstant:v3 + v3 + v23 * v26 - (v3 + v3)];
    *(v10 + 56) = v27;
    sub_10002B27C();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v29 activateConstraints:isa];
    v5 = isa;
  }

  sub_10009229C();
}

void sub_10009229C()
{
  if (qword_1006AEA28 != -1)
  {
    swift_once();
  }

  v2 = qword_1006D3C48;
  v1 = qword_1006D3C50;
  v3 = *&qword_1006D3C60;
  v4 = unk_1006D3C68;
  v5 = *&qword_1006D3C70;
  v6 = unk_1006D3C78;
  v7 = *&v0[OBJC_IVAR____TtC6FindMy26FMPhoneNumberTableViewCell_placeHolderLabel];
  v8 = [v7 superview];
  if (!v8)
  {
    v9 = objc_opt_self();
    v10 = [v9 preferredFontForTextStyle:v2];
    [v7 setFont:v10];

    [v7 setNumberOfLines:0];
    [v7 setTextColor:v1];
    [v7 setTextAlignment:4];
    [v7 setAdjustsFontForContentSizeCategory:1];
    [v0 addSubview:v7];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    if (v0[OBJC_IVAR____TtC6FindMy26FMPhoneNumberTableViewCell_textViewIsEnabled])
    {
      v5 = v5 + v6;
    }

    v11 = objc_opt_self();
    sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1005521F0;
    v13 = [v7 centerYAnchor];
    v14 = [v0 centerYAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];

    *(v12 + 32) = v15;
    v16 = [v7 leadingAnchor];
    v17 = [v0 leadingAnchor];
    v18 = [v16 constraintEqualToAnchor:v17 constant:v5];

    *(v12 + 40) = v18;
    v19 = [v7 trailingAnchor];
    v20 = [v0 trailingAnchor];
    v21 = [v19 constraintEqualToAnchor:v20 constant:-v4];

    *(v12 + 48) = v21;
    v22 = [v7 heightAnchor];
    v23 = *&qword_1006D3C58;
    v24 = [v9 preferredFontForTextStyle:qword_1006D3C40];
    [v24 lineHeight];
    v26 = v25;

    v27 = [v22 constraintEqualToConstant:v3 + v3 + v23 * v26 - (v3 + v3)];
    *(v12 + 56) = v27;
    sub_10002B27C();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v11 activateConstraints:isa];
    v8 = isa;
  }
}

id sub_100092668()
{
  if (*(v0 + OBJC_IVAR____TtC6FindMy26FMPhoneNumberTableViewCell_textViewIsEnabled) == 1)
  {
    v1 = [*(*(v0 + OBJC_IVAR____TtC6FindMy26FMPhoneNumberTableViewCell_textView) + OBJC_IVAR____TtC6FindMy17FMMessageTextView_textView) text];
    if (v1)
    {
LABEL_3:
      v2 = v1;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v3 = String.characterCount.getter();

      v4 = v3 > 0;
      goto LABEL_6;
    }
  }

  else
  {
    v1 = [*(v0 + OBJC_IVAR____TtC6FindMy26FMPhoneNumberTableViewCell_textField) text];
    if (v1)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = *(v0 + OBJC_IVAR____TtC6FindMy26FMPhoneNumberTableViewCell_placeHolderLabel);

  return [v5 setHidden:v4];
}

uint64_t sub_1000928A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v12 = type metadata accessor for CharacterSet();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static CharacterSet.decimalDigits.getter();
  CharacterSet.insert(_:)();

  v16 = sub_100123328(a4, a5, v15);
  v18 = v17;

  (*(v13 + 8))(v15, v12);
  v19 = v6 + OBJC_IVAR____TtC6FindMy26FMPhoneNumberTableViewCell_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v20 = *(v19 + 8);
    ObjectType = swift_getObjectType();
    v22 = (*(v20 + 16))(a1, a2, a3, v16, v18, ObjectType, v20);
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = 0;
  }

  sub_100092668();
  return v22 & 1;
}

id sub_100092CB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC6FindMy26FMPhoneNumberTableViewCell_textField;
  *&v3[v6] = [objc_allocWithZone(UITextField) init];
  v7 = OBJC_IVAR____TtC6FindMy26FMPhoneNumberTableViewCell_textView;
  *&v3[v7] = [objc_allocWithZone(type metadata accessor for FMMessageTextView()) init];
  v8 = OBJC_IVAR____TtC6FindMy26FMPhoneNumberTableViewCell_placeHolderLabel;
  *&v3[v8] = [objc_allocWithZone(UILabel) init];
  *&v3[OBJC_IVAR____TtC6FindMy26FMPhoneNumberTableViewCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC6FindMy26FMPhoneNumberTableViewCell_textFieldIsEnabled] = 0;
  v3[OBJC_IVAR____TtC6FindMy26FMPhoneNumberTableViewCell_textViewIsEnabled] = 0;
  v9 = &v3[OBJC_IVAR____TtC6FindMy26FMPhoneNumberTableViewCell_initialPhoneNumber];
  *v9 = 0;
  v9[1] = 0;
  v10 = &v3[OBJC_IVAR____TtC6FindMy26FMPhoneNumberTableViewCell_placeHolderText];
  *v10 = 0;
  v10[1] = 0;
  if (a3)
  {
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  v14.receiver = v3;
  v14.super_class = type metadata accessor for FMPhoneNumberTableViewCell();
  v12 = objc_msgSendSuper2(&v14, "initWithStyle:reuseIdentifier:", a1, v11);

  return v12;
}

id sub_100092E54(void *a1)
{
  v3 = OBJC_IVAR____TtC6FindMy26FMPhoneNumberTableViewCell_textField;
  *&v1[v3] = [objc_allocWithZone(UITextField) init];
  v4 = OBJC_IVAR____TtC6FindMy26FMPhoneNumberTableViewCell_textView;
  *&v1[v4] = [objc_allocWithZone(type metadata accessor for FMMessageTextView()) init];
  v5 = OBJC_IVAR____TtC6FindMy26FMPhoneNumberTableViewCell_placeHolderLabel;
  *&v1[v5] = [objc_allocWithZone(UILabel) init];
  *&v1[OBJC_IVAR____TtC6FindMy26FMPhoneNumberTableViewCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC6FindMy26FMPhoneNumberTableViewCell_textFieldIsEnabled] = 0;
  v1[OBJC_IVAR____TtC6FindMy26FMPhoneNumberTableViewCell_textViewIsEnabled] = 0;
  v6 = &v1[OBJC_IVAR____TtC6FindMy26FMPhoneNumberTableViewCell_initialPhoneNumber];
  *v6 = 0;
  v6[1] = 0;
  v7 = &v1[OBJC_IVAR____TtC6FindMy26FMPhoneNumberTableViewCell_placeHolderText];
  v8 = type metadata accessor for FMPhoneNumberTableViewCell();
  *v7 = 0;
  v7[1] = 0;
  v11.receiver = v1;
  v11.super_class = v8;
  v9 = objc_msgSendSuper2(&v11, "initWithCoder:", a1);

  if (v9)
  {
  }

  return v9;
}

uint64_t sub_100092FAC()
{
  sub_10005CD20(v0 + OBJC_IVAR____TtC6FindMy26FMPhoneNumberTableViewCell_delegate);
  sub_10005CD20(v0 + OBJC_IVAR____TtC6FindMy26FMPhoneNumberTableViewCell_textViewDelegate);
}

id sub_100093044(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FMPhoneNumberTableViewCell();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1000931A4()
{
  v1 = type metadata accessor for FMIPFeatures();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v106 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v106 - v6;
  v8 = sub_10007EBC0(&unk_1006BBCE0, &unk_1005534C0);
  __chkstk_darwin(v8 - 8);
  v113 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v115 = &v106 - v11;
  __chkstk_darwin(v12);
  v114 = &v106 - v13;
  __chkstk_darwin(v14);
  v121 = &v106 - v15;
  __chkstk_darwin(v16);
  v18 = &v106 - v17;
  sub_100264BC8();
  v19 = [v0 headerView];
  v119 = objc_opt_self();
  v20 = [v119 mainBundle];
  v124._object = 0x800000010057A100;
  v21._countAndFlagsBits = 0xD00000000000001ALL;
  v21._object = 0x800000010057A0E0;
  v124._countAndFlagsBits = 0xD00000000000002CLL;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v21, 0, v20, v22, v124);

  v23 = String._bridgeToObjectiveC()();

  [v19 setTitle:v23];

  v24 = v0;
  v25 = OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_device;
  swift_beginAccess();
  v120 = v25;
  sub_100007204(v0 + v25, v18, &unk_1006BBCE0, &unk_1005534C0);
  v26 = type metadata accessor for FMIPDevice();
  v27 = *(v26 - 8);
  v117 = *(v27 + 48);
  if ((v117)(v18, 1, v26) == 1)
  {
    __break(1u);
    goto LABEL_24;
  }

  FMIPDevice.features.getter();
  v116 = *(v27 + 8);
  v116(v18, v26);
  static FMIPFeatures.isKeypadEnabled.getter();
  v28 = sub_1000971D0(&qword_1006C1D50, &type metadata accessor for FMIPFeatures, &protocol conformance descriptor for FMIPFeatures);
  LODWORD(v118) = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v31 = *(v2 + 8);
  v30 = v2 + 8;
  v29 = v31;
  v31(v4, v1);
  v31(v7, v1);
  if (v24[OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_mode + 4])
  {
    return;
  }

  v32 = *&v24[OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_mode];
  if (v32 == 4)
  {
    v47 = v24;
    v54 = 0xD000000000000012;
    v67 = "ERASE_BUTTON_TITLE";
    v68 = 0xD000000000000026;
    v117 = &selRef_setDetailText_;
    v118 = "g DEVICE_ENTER_MESSAGE_TITLE";
    v69 = &selRef_headerView;
    v46 = v120;
LABEL_19:
    v81 = [v47 *v69];
    v82 = v121;
    sub_100007204(&v47[v46], v121, &unk_1006BBCE0, &unk_1005534C0);
    v83 = sub_10022F104(v68, v67 | 0x8000000000000000, v82);
    v85 = v84;
    v87 = v86;
    v89 = v88;

    sub_10022E0A8(v83, v85, v87, v89, 0, 0);

    swift_bridgeObjectRelease_n();
    sub_100012DF0(v82, &unk_1006BBCE0, &unk_1005534C0);
    v90 = String._bridgeToObjectiveC()();
    v55 = v47;

    [v81 *v117];

    goto LABEL_20;
  }

  if (v32 == 2)
  {
    v109 = v28;
    v110 = v29;
    v111 = v4;
    v112 = v30;
    v107 = v1;
    v108 = v7;
    v56 = [v24 headerView];
    v57 = v120;
    v58 = v121;
    sub_100007204(&v24[v120], v121, &unk_1006BBCE0, &unk_1005534C0);
    v59 = sub_10022F104(0xD000000000000025, 0x800000010057A1C0, v58);
    v61 = v60;
    v114 = v62;
    v37 = v24;
    v64 = v63;

    v114 = sub_10022E0A8(v59, v61, v114, v64, 0, 0);

    swift_bridgeObjectRelease_n();
    sub_100012DF0(v58, &unk_1006BBCE0, &unk_1005534C0);
    v65 = String._bridgeToObjectiveC()();

    [v56 setDetailText:v65];

    v44 = "FMLocalizedString ";
    if (v118)
    {
      goto LABEL_11;
    }

    v118 = "FMLocalizedString ";
    v70 = v115;
    sub_100007204(&v37[v57], v115, &unk_1006BBCE0, &unk_1005534C0);
    if ((v117)(v70, 1, v26) != 1)
    {
      v71 = v37;
      v72 = v108;
      FMIPDevice.features.getter();
      v73 = v116;
      v116(v70, v26);
      v74 = v111;
      static FMIPFeatures.isEraseAfterLockSupported.getter();
      v75 = v107;
      v76 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v77 = v74;
      v78 = v110;
      v110(v77, v75);
      v78(v72, v75);
      if (v76)
      {
        v55 = v71;
        v54 = 0xD000000000000011;
        goto LABEL_20;
      }

      v46 = v120;
      v79 = v113;
      sub_100007204(&v71[v120], v113, &unk_1006BBCE0, &unk_1005534C0);
      if ((v117)(v79, 1, v26) != 1)
      {
        v47 = v71;
        v80 = FMIPDevice.isConsideredAccessory.getter();
        v73(v79, v26);
        if (v80)
        {
          goto LABEL_9;
        }

LABEL_18:
        v67 = "SAGE_LOST_DESCRIPTION";
        v68 = 0xD00000000000001DLL;
        v117 = &selRef_setCaptionText_;
        v69 = &selRef_buttonTray;
        v54 = 0xD000000000000011;
        goto LABEL_19;
      }

LABEL_26:
      __break(1u);
      return;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v32 != 1)
  {
    return;
  }

  v109 = v28;
  v110 = v29;
  v111 = v4;
  v112 = v30;
  v107 = v1;
  v108 = v7;
  v33 = [v24 headerView];
  v34 = v120;
  v35 = v121;
  sub_100007204(&v24[v120], v121, &unk_1006BBCE0, &unk_1005534C0);
  v36 = sub_10022F104(0xD000000000000025, 0x800000010057A230, v35);
  v37 = v24;
  v39 = v38;
  v115 = v40;
  v42 = v41;

  v115 = sub_10022E0A8(v36, v39, v115, v42, 0, 0);

  swift_bridgeObjectRelease_n();
  sub_100012DF0(v35, &unk_1006BBCE0, &unk_1005534C0);
  v43 = String._bridgeToObjectiveC()();

  [v33 setDetailText:v43];

  v44 = "DEVICE_ENTER_MESSAGE_FOOTNOTE";
  if ((v118 & 1) == 0)
  {
    v118 = "DEVICE_ENTER_MESSAGE_FOOTNOTE";
    v45 = v114;
    sub_100007204(&v37[v34], v114, &unk_1006BBCE0, &unk_1005534C0);
    if ((v117)(v45, 1, v26) != 1)
    {
      v46 = v34;
      v47 = v37;
      v48 = v108;
      FMIPDevice.features.getter();
      v116(v45, v26);
      v49 = v111;
      static FMIPFeatures.isEraseAfterLockSupported.getter();
      v50 = v107;
      v51 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v52 = v49;
      v53 = v110;
      v110(v52, v50);
      v53(v48, v50);
      if (v51)
      {
LABEL_9:
        v54 = 0xD000000000000011;
        v55 = v47;
LABEL_20:
        v44 = v118;
        v66 = v119;
        goto LABEL_21;
      }

      goto LABEL_18;
    }

    goto LABEL_25;
  }

LABEL_11:
  v54 = 0xD000000000000011;
  v66 = v119;
  v55 = v37;
LABEL_21:
  v91 = [v55 buttonTray];
  [v91 removeAllButtons];

  v92 = [objc_opt_self() boldButton];
  v122 = 0;
  v123 = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  v122 = 0xD000000000000012;
  v123 = 0x800000010057A180;
  v93._object = (v44 | 0x8000000000000000);
  v93._countAndFlagsBits = v54;
  String.append(_:)(v93);
  v94 = v122;
  v95 = v123;
  v96 = [v66 mainBundle];
  v125._object = v95;
  v97._object = (v44 | 0x8000000000000000);
  v97._countAndFlagsBits = v54;
  v98._countAndFlagsBits = 0;
  v98._object = 0xE000000000000000;
  v125._countAndFlagsBits = v94;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v97, 0, v96, v98, v125);

  v99 = String._bridgeToObjectiveC()();

  [v92 setTitle:v99 forState:0];

  v100 = v92;
  v101 = String._bridgeToObjectiveC()();
  [v100 setAccessibilityIdentifier:v101];

  sub_10000905C(0, &qword_1006AF730, UIAction_ptr);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v102 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v100 addAction:v102 forControlEvents:64];

  v103 = *&v55[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_nextButton];
  *&v55[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_nextButton] = v100;
  v104 = v100;

  v105 = [v55 buttonTray];
  [v105 addButton:v104];
}

void sub_100093E18(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1000948F0();
  }
}

uint64_t sub_100093F1C()
{
  v1 = sub_10007EBC0(&unk_1006BBCE0, &unk_1005534C0);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_device;
  swift_beginAccess();
  sub_100007204(v0 + v4, v3, &unk_1006BBCE0, &unk_1005534C0);
  v5 = type metadata accessor for FMIPDevice();
  v6 = *(v5 - 8);
  result = (*(v6 + 48))(v3, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v8 = FMIPDevice.maxMessageLength.getter();
    (*(v6 + 8))(v3, v5);
    return v8;
  }

  return result;
}

id sub_100094060(void *a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&unk_1006BBCE0, &unk_1005534C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v47 - v5;
  v7 = sub_100264DE8(a1);
  type metadata accessor for FMEditableMessageTableViewCell();
  v8 = swift_dynamicCastClass();
  if (!v8 || (*(v2 + OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_mode + 4) & 1) != 0)
  {
    return v7;
  }

  v9 = *(v2 + OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_mode);
  switch(v9)
  {
    case 4:
      v37 = *(v8 + OBJC_IVAR____TtC6FindMy30FMEditableMessageTableViewCell_textView);
      v38 = objc_opt_self();
      v39 = v7;
      v23 = v37;
      v40 = [v38 mainBundle];
      v49._object = 0x800000010057A070;
      v41._object = 0x800000010057A040;
      v49._countAndFlagsBits = 0xD000000000000037;
      v41._countAndFlagsBits = 0xD000000000000025;
      v42._countAndFlagsBits = 0;
      v42._object = 0xE000000000000000;
      v43 = NSLocalizedString(_:tableName:bundle:value:comment:)(v41, 0, v40, v42, v49);

      *&v23[OBJC_IVAR____TtC6FindMy17FMMessageTextView_placeHolderText] = v43;

      v44 = *&v23[OBJC_IVAR____TtC6FindMy17FMMessageTextView_placeHolderLabel];
      v45 = String._bridgeToObjectiveC()();

      [v44 setText:v45];

      sub_100155E6C();
      goto LABEL_9;
    case 2:
      v20 = *(v8 + OBJC_IVAR____TtC6FindMy30FMEditableMessageTableViewCell_textView);
      v21 = OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_device;
      swift_beginAccess();
      sub_100007204(v2 + v21, v6, &unk_1006BBCE0, &unk_1005534C0);
      v22 = v7;
      v23 = v20;
      v24 = sub_10022F104(0xD000000000000025, 0x800000010057A0B0, v6);
      v26 = v25;
      v28 = v27;
      v30 = v29;

      v31 = sub_10022E0A8(v24, v26, v28, v30, 0, 0);
      v33 = v32;

      swift_bridgeObjectRelease_n();
      sub_100012DF0(v6, &unk_1006BBCE0, &unk_1005534C0);
      v34 = &v23[OBJC_IVAR____TtC6FindMy17FMMessageTextView_placeHolderText];
      *v34 = v31;
      v34[1] = v33;

      v35 = *&v23[OBJC_IVAR____TtC6FindMy17FMMessageTextView_placeHolderLabel];
      v36 = String._bridgeToObjectiveC()();

      [v35 setText:v36];

      sub_100155E6C();
LABEL_9:

      return v7;
    case 1:
      v10 = *(v8 + OBJC_IVAR____TtC6FindMy30FMEditableMessageTableViewCell_textView);
      v11 = objc_opt_self();
      v12 = v7;
      v13 = v10;
      v14 = [v11 mainBundle];
      v48._object = 0x800000010057A070;
      v15._object = 0x800000010057A040;
      v48._countAndFlagsBits = 0xD000000000000037;
      v15._countAndFlagsBits = 0xD000000000000025;
      v16._countAndFlagsBits = 0;
      v16._object = 0xE000000000000000;
      v17 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v14, v16, v48);

      *&v13[OBJC_IVAR____TtC6FindMy17FMMessageTextView_placeHolderText] = v17;

      v18 = *&v13[OBJC_IVAR____TtC6FindMy17FMMessageTextView_placeHolderLabel];
      v19 = String._bridgeToObjectiveC()();

      [v18 setText:v19];

      sub_100155E6C();
      break;
  }

  return v7;
}

void sub_100094620(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v4 = v3;
  v27 = a1;
  v6 = sub_10007EBC0(&unk_1006BBCE0, &unk_1005534C0);
  __chkstk_darwin(v6 - 8);
  v8 = &object - v7;
  v9 = objc_opt_self();
  v10 = [v9 mainBundle];
  v28._object = 0x800000010057A3C0;
  v11._object = 0x800000010057A390;
  v28._countAndFlagsBits = 0xD000000000000039;
  v11._countAndFlagsBits = 0xD000000000000027;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v28);
  object = v13._object;
  countAndFlagsBits = v13._countAndFlagsBits;

  v14 = [v9 mainBundle];
  v15._countAndFlagsBits = 0xD000000000000015;
  v29._object = 0x800000010057A420;
  v15._object = 0x800000010057A400;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v29._countAndFlagsBits = 0xD000000000000027;
  v17 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v14, v16, v29);

  v18 = [objc_allocWithZone(AKAppleIDAuthenticationInAppContext) init];
  v19 = OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_device;
  swift_beginAccess();
  sub_100007204(v4 + v19, v8, &unk_1006BBCE0, &unk_1005534C0);
  v20 = type metadata accessor for FMIPDevice();
  if ((*(*(v20 - 8) + 48))(v8, 1, v20) == 1)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for FMIPLockAction();
    swift_allocObject();

    v21 = FMIPLockAction.init(device:message:passcode:)();
    [v18 setPresentingViewController:v4];

    v22 = v18;
    dispatch thunk of FMIPDeviceAction.authenticationContext.setter();

    v23 = object;
    v24 = countAndFlagsBits;
    *a3 = v21;
    *(a3 + 8) = v24;
    *(a3 + 16) = v23;
    *(a3 + 24) = v17;
  }
}

void sub_1000948F0()
{
  v1 = v0;
  v2 = type metadata accessor for FMIPDevice();
  v3 = *(v2 - 8);
  v128 = v2;
  v129 = v3;
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v125 = (v118 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10007EBC0(&unk_1006BBCE0, &unk_1005534C0);
  __chkstk_darwin(v5 - 8);
  v124 = v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v126 = v118 - v8;
  __chkstk_darwin(v9);
  v11 = v118 - v10;
  __chkstk_darwin(v12);
  v14 = v118 - v13;
  v15 = type metadata accessor for FMLostModeTrackable(0);
  __chkstk_darwin(v15);
  v17 = v118 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v118 - v19;
  __chkstk_darwin(v21);
  v23 = v118 - v22;
  v24 = sub_1002653B0();
  v25 = v24;
  v127 = v11;
  if (v24)
  {
    v26 = [*&v24[OBJC_IVAR____TtC6FindMy17FMMessageTextView_textView] text];
    if (v26)
    {
      v27 = v26;
      v130 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      v25 = v29;
    }

    else
    {

      v130 = 0;
      v25 = 0;
    }
  }

  else
  {
    v130 = 0;
  }

  v30 = &v1[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_phoneNumber];
  v31 = *&v1[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_phoneNumber + 8];
  if (v31)
  {
    if ((v31 & 0x2000000000000000) != 0 ? HIBYTE(v31) & 0xF : *v30 & 0xFFFFFFFFFFFFLL)
    {
      if (!v25)
      {
        goto LABEL_16;
      }

      v33 = HIBYTE(v25) & 0xF;
      if ((v25 & 0x2000000000000000) == 0)
      {
        v33 = v130 & 0xFFFFFFFFFFFFLL;
      }

      if (!v33)
      {
LABEL_16:
        if ((v1[OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_mode + 4] & 1) == 0 && *&v1[OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_mode] == 2)
        {
          v123 = v25;
          v25 = sub_1002653B0();

          if (v25)
          {
            v34 = *(v25 + OBJC_IVAR____TtC6FindMy17FMMessageTextView_placeHolderText + 8);
            v130 = *(v25 + OBJC_IVAR____TtC6FindMy17FMMessageTextView_placeHolderText);
            v123 = v34;

            v25 = v123;
          }

          else
          {
            v130 = 0;
          }
        }
      }
    }
  }

  if (v1[OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_mode + 4])
  {
    goto LABEL_21;
  }

  v39 = *&v1[OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_mode];
  if (v39 == 4)
  {
    v123 = v25;
    v61 = OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_device;
    swift_beginAccess();
    v62 = &v1[v61];
    v23 = v127;
    sub_100007204(v62, v127, &unk_1006BBCE0, &unk_1005534C0);
    v63 = v129;
    v64 = v128;
    if ((*(v129 + 48))(v23, 1) != 1)
    {
      v65 = v30[1];
      v120 = *v30;
      v118[0] = v65;
      v66 = *&v1[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_passcode + 8];
      v119 = *&v1[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_passcode];
      v118[1] = v66;
      v67 = objc_opt_self();

      v68 = [v67 mainBundle];
      v141._object = 0x800000010057A290;
      v69._countAndFlagsBits = 0xD000000000000028;
      v69._object = 0x800000010057A260;
      v141._countAndFlagsBits = 0xD00000000000003ALL;
      v70._countAndFlagsBits = 0;
      v70._object = 0xE000000000000000;
      v121 = NSLocalizedString(_:tableName:bundle:value:comment:)(v69, 0, v68, v70, v141);

      v71 = [v67 mainBundle];
      v142._object = 0x800000010057A2F0;
      v72._object = 0x800000010057A2D0;
      v142._countAndFlagsBits = 0xD000000000000027;
      v72._countAndFlagsBits = 0xD000000000000015;
      v73._countAndFlagsBits = 0;
      v73._object = 0xE000000000000000;
      v74 = NSLocalizedString(_:tableName:bundle:value:comment:)(v72, 0, v71, v73, v142);
      countAndFlagsBits = v74._countAndFlagsBits;
      object = v74._object;

      v75 = *(v63 + 16);
      v76 = v125;
      v77 = v127;
      v75(v125, v127, v64);
      type metadata accessor for FMIPEraseAction();
      swift_allocObject();

      v78 = FMIPEraseAction.init(device:message:phoneNumber:passcode:)();
      v79 = [objc_allocWithZone(AKAppleIDAuthenticationInAppContext) init];
      [v79 setPresentingViewController:v1];
      v130 = v79;
      dispatch thunk of FMIPDeviceAction.authenticationContext.setter();
      v75(v76, v77, v64);
      v41 = v78;
      v80 = v129;
      v81 = (*(v129 + 80) + 16) & ~*(v129 + 80);
      v82 = v4 + v81;
      v40 = v121._countAndFlagsBits;
      v83 = (v82 + 7) & 0xFFFFFFFFFFFFFFF8;
      v84 = swift_allocObject();
      (*(v80 + 32))(v84 + v81, v76, v64);
      *(v84 + v83) = v1;
      v85 = v1;
      dispatch thunk of FMIPDeviceAction.trustedDeviceConfirmation.setter();

      (*(v80 + 8))(v127, v64);
      v44 = v64;
      v42 = v121._object;
      goto LABEL_35;
    }

LABEL_45:
    __break(1u);
LABEL_46:

    __break(1u);
    goto LABEL_47;
  }

  if (v39 == 2)
  {
    v123 = v25;
    v45 = v30[1];
    v125 = *v30;
    v127 = v45;
    v46 = *&v1[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_passcode + 8];
    v124 = *&v1[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_passcode];
    v126 = *&v1[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_mediator];
    v47 = OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_device;
    swift_beginAccess();
    sub_100007204(&v1[v47], v14, &unk_1006BBCE0, &unk_1005534C0);
    v48 = v128;
    v49 = v129;
    if ((*(v129 + 48))(v14, 1, v128) != 1)
    {
      v50 = *(sub_10007EBC0(&qword_1006AFC80, &qword_100554B70) + 48);
      (*(v49 + 32))(v23, v14, v48);
      v51 = OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_primaryItemPart;
      swift_beginAccess();
      sub_100007204(&v1[v51], &v23[v50], &qword_1006B07D0, qword_100552820);
      swift_storeEnumTagMultiPayload();
      v52 = objc_allocWithZone(type metadata accessor for FMLostModeConfirmationViewController(0));
      sub_1000970F8(v23, v20);
      *&v52[qword_1006B8820] = 0;
      *&v52[qword_1006D4360] = 0;
      v53 = &v52[qword_1006D4358];
      v54 = v123;
      *v53 = v130;
      *(v53 + 1) = v54;
      v55 = v124;
      v56 = v127;
      *(v53 + 2) = v125;
      *(v53 + 3) = v56;
      *(v53 + 4) = 0;
      *(v53 + 5) = 0;
      *(v53 + 6) = v55;
      *(v53 + 7) = v46;
      v53[64] = 1;
      sub_1000970F8(v20, v17);
      *&v52[qword_1006B3A80] = 0;
      sub_1000970F8(v17, &v52[qword_1006D3E00]);

      v57 = v126;

      v58 = sub_1003C3E60(v57);
      sub_10009715C(v20);
      sub_10009715C(v17);
      sub_10009715C(v23);
      v59 = [v1 navigationController];
      if (v59)
      {
        v60 = v59;
        [v59 pushViewController:v58 animated:1];
      }

      else
      {
      }

      goto LABEL_29;
    }

    __break(1u);
    goto LABEL_45;
  }

  if (v39 != 1)
  {
LABEL_21:
    v35 = [v1 navigationController];
    if (v35)
    {
      v36 = v35;
      v37 = swift_allocObject();
      *(v37 + 16) = 0;
      *(v37 + 24) = 0;
      v138 = sub_1000822F4;
      v139 = v37;
      aBlock = _NSConcreteStackBlock;
      v135 = 1107296256;
      v136 = sub_100004AE4;
      v137 = &unk_100624528;
      v38 = _Block_copy(&aBlock);

      [v36 dismissViewControllerAnimated:1 completion:v38];

      _Block_release(v38);

      return;
    }

    goto LABEL_29;
  }

  v123 = v25;
  sub_100094620(v130, &aBlock);
  v41 = aBlock;
  v40 = v135;
  v42 = v136;
  countAndFlagsBits = v137;
  object = v138;
  v44 = v128;
LABEL_35:
  v86 = qword_1006AEBE0;

  v87 = v126;
  if (v86 != -1)
  {
    swift_once();
  }

  v88 = type metadata accessor for Logger();
  sub_100005B14(v88, qword_1006D4630);
  v23 = v1;

  v89 = Logger.logObject.getter();
  v90 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v89, v90))
  {

    goto LABEL_42;
  }

  LODWORD(v120) = v90;
  v125 = v89;
  v127 = v41;
  v121._countAndFlagsBits = v40;
  v121._object = v42;
  v91 = swift_slowAlloc();
  v119 = swift_slowAlloc();
  v133 = v119;
  *v91 = 136315650;
  v128 = object;
  *(v91 + 4) = sub_100005B4C(countAndFlagsBits, object, &v133);
  *(v91 + 12) = 2080;
  v131 = 0;
  v132 = 0xE000000000000000;
  v92 = OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_device;
  swift_beginAccess();
  sub_100007204(&v23[v92], v87, &unk_1006BBCE0, &unk_1005534C0);
  v93 = v129;
  v130 = *(v129 + 48);
  v94 = (v130)(v87, 1, v44);

  if (v94 == 1)
  {
    goto LABEL_46;
  }

  v95 = v44;
  v96 = FMIPDevice.name.getter();
  v98 = v97;
  v99 = v87;
  v100 = *(v93 + 8);
  v100(v99, v95);
  v101._countAndFlagsBits = v96;
  v101._object = v98;
  String.append(_:)(v101);

  v102 = sub_100005B4C(v131, v132, &v133);

  *(v91 + 14) = v102;
  *(v91 + 22) = 2080;
  v131 = 0;
  v132 = 0xE000000000000000;
  v103 = &v23[v92];
  v104 = v124;
  sub_100007204(v103, v124, &unk_1006BBCE0, &unk_1005534C0);
  v105 = (v130)(v104, 1, v95);

  if (v105 != 1)
  {
    v106 = FMIPDevice.identifier.getter();
    v108 = v107;
    v100(v104, v95);
    sub_10047BEA4(10, v106, v108);

    v109 = static String._fromSubstring(_:)();
    v111 = v110;

    v112._countAndFlagsBits = v109;
    v112._object = v111;
    String.append(_:)(v112);

    v113 = sub_100005B4C(v131, v132, &v133);

    *(v91 + 24) = v113;
    v114 = v125;
    _os_log_impl(&_mh_execute_header, v125, v120, "FMDeviceMessageViewController: %s %s %s...", v91, 0x20u);
    swift_arrayDestroy();

    v42 = v121._object;
    v40 = v121._countAndFlagsBits;
    v41 = v127;
    object = v128;
LABEL_42:
    sub_100437A74();
    v115 = swift_allocObject();
    v116 = countAndFlagsBits;
    v115[2] = v23;
    v115[3] = v116;
    v115[4] = object;
    v115[5] = v41;
    v115[6] = v40;
    v115[7] = v42;
    v115[8] = v116;
    v115[9] = object;
    v117 = v23;

    sub_1000D7218(v41, sub_100096DF0, v115);

LABEL_29:

    return;
  }

LABEL_47:
  __break(1u);
}

void sub_100095770(uint64_t a1, void **a2, char *a3, uint64_t a4, void *a5, NSObject *a6, uint64_t a7, uint64_t a8)
{
  v164 = a7;
  v165 = a3;
  v161 = a2;
  v162 = a6;
  v155 = a1;
  v9 = *(a8 + 8);
  v157 = *(a8 + 16);
  v158 = v9;
  v160 = type metadata accessor for FMIPActionStatus();
  v156 = *(v160 - 8);
  __chkstk_darwin(v160);
  v11 = &v149 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FMIPDevice();
  v163 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v149 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v149 - v16;
  __chkstk_darwin(v18);
  v20 = &v149 - v19;
  __chkstk_darwin(v21);
  v23 = &v149 - v22;
  __chkstk_darwin(v24);
  v26 = &v149 - v25;
  __chkstk_darwin(v27);
  v29 = &v149 - v28;
  __chkstk_darwin(v30);
  v32 = &v149 - v31;
  v159 = a5;
  sub_1003EB538();
  if (!v165)
  {
    v149 = v29;
    v152 = v23;
    v153 = v17;
    v150 = v26;
    v154 = v20;
    v151 = v14;
    v157 = v11;
    v158 = v12;
    v49 = v160;
    v165 = v32;
    v50 = v163;
    if (!v161 || !v161[2])
    {
      return;
    }

    v51 = *(v163 + 16);
    v52 = v165;
    v53 = v158;
    v51(v165, v161 + ((*(v163 + 80) + 32) & ~*(v163 + 80)), v158);
    v54 = v156;
    v55 = v157;
    v56 = v49;
    (*(v156 + 16))(v157, v155, v49);
    v57 = (*(v54 + 88))(v55, v49);
    if (v57 == enum case for FMIPActionStatus.error(_:))
    {
      v58 = v164;
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v59 = type metadata accessor for Logger();
      sub_100005B14(v59, qword_1006D4630);
      v60 = v152;
      v51(v152, v52, v53);
      v61 = v154;
      v51(v154, v52, v53);

      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v161 = swift_slowAlloc();
        aBlock = v161;
        *v64 = 136315650;
        *(v64 + 4) = sub_100005B4C(v162, v58, &aBlock);
        *(v64 + 12) = 2080;
        LODWORD(v164) = v63;
        v65 = FMIPDevice.name.getter();
        v66 = v60;
        v68 = v67;
        v69 = *(v50 + 8);
        v69(v66, v53);
        v70 = sub_100005B4C(v65, v68, &aBlock);

        *(v64 + 14) = v70;
        *(v64 + 22) = 2080;
        v71 = FMIPDevice.identifier.getter();
        sub_10047BEA4(10, v71, v72);
        v73 = v61;

        v74 = static String._fromSubstring(_:)();
        v76 = v75;
        v53 = v158;

        v69(v73, v53);
        v77 = sub_100005B4C(v74, v76, &aBlock);

        *(v64 + 24) = v77;
        _os_log_impl(&_mh_execute_header, v62, v164, "FMDeviceMessageViewController: Error %s %s %s", v64, 0x20u);
        swift_arrayDestroy();

        goto LABEL_29;
      }

      v69 = *(v50 + 8);
      v69(v61, v53);
      v122 = v60;
    }

    else
    {
      v103 = v164;
      if (v57 != enum case for FMIPActionStatus.pending(_:))
      {
        if (qword_1006AEBE0 != -1)
        {
          swift_once();
        }

        v123 = type metadata accessor for Logger();
        sub_100005B14(v123, qword_1006D4630);
        v51(v153, v52, v53);
        v124 = v51;
        v125 = v151;
        v124(v151, v52, v53);

        v126 = Logger.logObject.getter();
        v127 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v126, v127))
        {
          v128 = swift_slowAlloc();
          v161 = swift_slowAlloc();
          aBlock = v161;
          *v128 = 136315650;
          *(v128 + 4) = sub_100005B4C(v162, v103, &aBlock);
          *(v128 + 12) = 2080;
          LODWORD(v164) = v127;
          v129 = v153;
          v130 = FMIPDevice.name.getter();
          v132 = v131;
          v162 = v126;
          v133 = *(v50 + 8);
          v133(v129, v53);
          v134 = sub_100005B4C(v130, v132, &aBlock);

          *(v128 + 14) = v134;
          *(v128 + 22) = 2080;
          v135 = v151;
          v136 = FMIPDevice.identifier.getter();
          sub_10047BEA4(10, v136, v137);

          v55 = v157;
          v56 = v49;
          v138 = static String._fromSubstring(_:)();
          v140 = v139;
          v53 = v158;

          v133(v135, v53);
          v69 = v133;
          v141 = sub_100005B4C(v138, v140, &aBlock);

          *(v128 + 24) = v141;
          v142 = v162;
          _os_log_impl(&_mh_execute_header, v162, v164, "FMDeviceMessageViewController: Done %s %s %s", v128, 0x20u);
          swift_arrayDestroy();
        }

        else
        {

          v69 = *(v50 + 8);
          v69(v125, v53);
          v69(v153, v53);
        }

        (*(v156 + 8))(v55, v56);
        v121 = sub_1003E1AD0();
        if (!v121)
        {
          goto LABEL_44;
        }

        goto LABEL_41;
      }

      v104 = v51;
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v105 = type metadata accessor for Logger();
      sub_100005B14(v105, qword_1006D4630);
      v106 = v149;
      v104(v149, v52, v53);
      v107 = v150;
      v104(v150, v52, v53);

      v62 = Logger.logObject.getter();
      v108 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v62, v108))
      {
        v109 = swift_slowAlloc();
        v161 = swift_slowAlloc();
        aBlock = v161;
        *v109 = 136315650;
        *(v109 + 4) = sub_100005B4C(v162, v103, &aBlock);
        *(v109 + 12) = 2080;
        LODWORD(v164) = v108;
        v110 = FMIPDevice.name.getter();
        v112 = v111;
        v113 = *(v50 + 8);
        v113(v106, v53);
        v114 = sub_100005B4C(v110, v112, &aBlock);

        *(v109 + 14) = v114;
        *(v109 + 22) = 2080;
        v115 = FMIPDevice.identifier.getter();
        sub_10047BEA4(10, v115, v116);

        v69 = v113;
        v117 = static String._fromSubstring(_:)();
        v119 = v118;
        v53 = v158;

        v113(v107, v53);
        v120 = sub_100005B4C(v117, v119, &aBlock);

        *(v109 + 24) = v120;
        _os_log_impl(&_mh_execute_header, v62, v164, "FMDeviceMessageViewController: %s pending on %s %s", v109, 0x20u);
        swift_arrayDestroy();

LABEL_29:

        v121 = sub_1003E1AD0();
        if (!v121)
        {
LABEL_44:
          v69(v165, v53);
          return;
        }

LABEL_41:
        v143 = v121;
        type metadata accessor for FMActivityIndicatingNavigationController();
        v144 = swift_dynamicCastClass();

        if (v144)
        {
          v145 = [v159 navigationController];
          if (v145)
          {
            v146 = v145;
            v147 = swift_allocObject();
            *(v147 + 16) = 0;
            *(v147 + 24) = 0;
            v170 = sub_100097224;
            v171 = v147;
            aBlock = _NSConcreteStackBlock;
            v167 = 1107296256;
            v168 = sub_100004AE4;
            v169 = &unk_1006245C8;
            v148 = _Block_copy(&aBlock);

            [v146 dismissViewControllerAnimated:1 completion:v148];
            _Block_release(v148);
          }
        }

        goto LABEL_44;
      }

      v69 = *(v50 + 8);
      v69(v107, v53);
      v122 = v106;
    }

    v69(v122, v53);
    v121 = sub_1003E1AD0();
    if (!v121)
    {
      goto LABEL_44;
    }

    goto LABEL_41;
  }

  v33 = _convertErrorToNSError(_:)();
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_100005B14(v34, qword_1006D4630);
  v35 = v164;

  v165 = v33;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v38 = 136315394;
    *(v38 + 4) = sub_100005B4C(v162, v35, &aBlock);
    *(v38 + 12) = 2080;
    v39 = v165;
    v40 = [v39 description];
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    v44 = sub_100005B4C(v41, v43, &aBlock);

    *(v38 + 14) = v44;
    _os_log_impl(&_mh_execute_header, v36, v37, "FMDeviceMessageViewController: Error %s %s", v38, 0x16u);
    swift_arrayDestroy();
  }

  v45 = [v165 domain];
  v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v48 = v47;

  if (v46 == 0xD000000000000015 && 0x800000010057A320 == v48)
  {
  }

  else
  {
    v78 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v78 & 1) == 0)
    {
LABEL_18:
      if (!sub_100271C38())
      {
        v81 = objc_opt_self();
        v82 = [v81 mainBundle];
        v173._object = 0x800000010057A360;
        v83._countAndFlagsBits = 0xD00000000000001DLL;
        v83._object = 0x800000010057A340;
        v173._countAndFlagsBits = 0xD00000000000002FLL;
        v84._countAndFlagsBits = 0;
        v84._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v83, 0, v82, v84, v173);

        sub_10007EBC0(&unk_1006B20B0, &unk_1005523B0);
        v85 = swift_allocObject();
        *(v85 + 16) = xmmword_100552220;
        v86 = [v165 localizedDescription];
        v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v89 = v88;

        *(v85 + 56) = &type metadata for String;
        *(v85 + 64) = sub_10008EE84();
        *(v85 + 32) = v87;
        *(v85 + 40) = v89;
        String.init(format:_:)();

        v90 = String._bridgeToObjectiveC()();
        v91 = String._bridgeToObjectiveC()();

        v92 = [objc_opt_self() alertControllerWithTitle:v90 message:v91 preferredStyle:1];

        v93 = [v81 mainBundle];
        v174._object = 0x8000000100579B60;
        v94._countAndFlagsBits = 0x4F545455425F4B4FLL;
        v94._object = 0xEF454C5449545F4ELL;
        v174._countAndFlagsBits = 0xD000000000000021;
        v95._countAndFlagsBits = 0;
        v95._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v94, 0, v93, v95, v174);

        v96 = swift_allocObject();
        v97 = v159;
        *(v96 + 16) = v159;
        v98 = v97;
        v99 = String._bridgeToObjectiveC()();

        v170 = sub_1000971B8;
        v171 = v96;
        aBlock = _NSConcreteStackBlock;
        v167 = 1107296256;
        v168 = sub_100017328;
        v169 = &unk_100624618;
        v100 = _Block_copy(&aBlock);

        v101 = [objc_opt_self() actionWithTitle:v99 style:1 handler:v100];
        _Block_release(v100);

        [v92 addAction:v101];
        v102 = sub_1002653B0();
        [v102 resignFirstResponder];

        [v98 presentViewController:v92 animated:1 completion:0];
        return;
      }

      v80 = v165;
      goto LABEL_20;
    }
  }

  v79 = [v165 code] == -7003;
  v80 = v165;
  if (!v79)
  {
    goto LABEL_18;
  }

LABEL_20:
}

void sub_1000968F8(int a1, id a2)
{
  v2 = [a2 navigationController];
  if (v2)
  {
    v3 = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    v6[4] = sub_100097224;
    v6[5] = v4;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1107296256;
    v6[2] = sub_100004AE4;
    v6[3] = &unk_100624668;
    v5 = _Block_copy(v6);

    [v3 dismissViewControllerAnimated:1 completion:v5];
    _Block_release(v5);
  }
}

void sub_100096A2C()
{
  sub_100012DF0(v0 + OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_device, &unk_1006BBCE0, &unk_1005534C0);
  sub_100012DF0(v0 + OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_primaryItemPart, &qword_1006B07D0, qword_100552820);
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_tableViewheightConstraint);
}

id sub_100096A9C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for FMDeviceEditableMessageViewController(0);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for FMDeviceEditableMessageViewController(uint64_t a1)
{
  result = qword_1006AFC68;
  if (!qword_1006AFC68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100096BA4(uint64_t a1)
{
  sub_100096CC0(319, &qword_1006AFC78, &type metadata accessor for FMIPDevice);
  if (v1 <= 0x3F)
  {
    sub_100096CC0(319, &qword_1006BA400, &type metadata accessor for FMIPItem);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100096CC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_100096D2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, __n128), uint64_t a4)
{
  v8 = a1;
  v9 = *(type metadata accessor for FMIPDevice() - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = *(v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000D9E8C(v8, a2, a3, a4, v4 + v10, v11);
}

void sub_100096DF0(uint64_t a1, void **a2, char *a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(v4 + 32);
  v8 = *(v4 + 56);
  v9 = *(v4 + 72);
  v10[0] = *(v4 + 40);
  v10[1] = v8;
  v11 = v9;
  sub_100095770(a1, a2, a3, a4, v5, v6, v7, v10);
}

uint64_t sub_100096E34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  aBlock[4] = sub_1000971C0;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_1006246B8;
  v14 = _Block_copy(aBlock);
  v15 = v3;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000971D0(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1000970F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMLostModeTrackable(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009715C(uint64_t a1)
{
  v2 = type metadata accessor for FMLostModeTrackable(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000971D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10009734C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC6FindMy25FMPlusButtonTableViewCell_addButton];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = objc_opt_self();
  sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1005521F0;
  v5 = [v2 centerYAnchor];
  v6 = [v1 centerYAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];

  *(v4 + 32) = v7;
  v8 = [v2 leadingAnchor];
  v9 = [v1 leadingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];

  *(v4 + 40) = v10;
  v11 = [v2 trailingAnchor];
  v12 = [v1 trailingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];

  *(v4 + 48) = v13;
  v14 = [v2 heightAnchor];
  v15 = [v1 heightAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];

  *(v4 + 56) = v16;
  sub_10002B27C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 activateConstraints:isa];
}

id sub_1000975A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMPlusButtonTableViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_100097610(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = OBJC_IVAR____TtC6FindMy25FMPlusButtonTableViewCell_addButton;
  if (qword_1006AEB28 != -1)
  {
    swift_once();
  }

  v13[0] = xmmword_1006D4130;
  v13[1] = *&qword_1006D4140;
  v13[2] = xmmword_1006D4150;
  v6 = objc_allocWithZone(type metadata accessor for FMAddButton());
  *&v2[v5] = sub_10022D0C8(0, 0xE000000000000000, v13);
  if (a2)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for FMPlusButtonTableViewCell();
  v8 = objc_msgSendSuper2(&v12, "initWithStyle:reuseIdentifier:", 3, v7);

  v9 = *&v8[OBJC_IVAR____TtC6FindMy25FMPlusButtonTableViewCell_addButton];
  v10 = v8;
  [v10 addSubview:v9];
  sub_10009734C();

  return v10;
}

CGFloat sub_100097740()
{
  result = UITableViewAutomaticDimension;
  qword_1006D3CA8 = *&UITableViewAutomaticDimension;
  return result;
}

Swift::Int sub_10009776C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000977B4(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

double sub_1000977F8()
{
  qword_1006AFCC0 = 0;
  qword_1006AFCC8 = *&UITableViewAutomaticDimension;
  result = 0.0;
  xmmword_1006AFCD0 = 0u;
  unk_1006AFCE0 = 0u;
  return result;
}

uint64_t sub_100097820(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v42 = a2;
  v43 = a1;
  v4 = type metadata accessor for FMFLocationAlertTriggerType();
  v41 = *(v4 - 8);
  __chkstk_darwin(v4);
  v40 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v39 = &v39 - v7;
  v8 = sub_10007EBC0(&qword_1006AFFF8, &qword_100552A98);
  __chkstk_darwin(v8 - 8);
  v10 = &v39 - v9;
  v11 = sub_10007EBC0(&qword_1006AF740, &unk_100552330);
  __chkstk_darwin(v11 - 8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v39 - v15;
  v17 = type metadata accessor for FMFLocation();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007204(v43, v16, &qword_1006AF740, &unk_100552330);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_100012DF0(v16, &qword_1006AF740, &unk_100552330);
    (*(v18 + 56))(v13, 1, 1, v17);
    v21 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController__selectedLocation;
    swift_beginAccess();
    sub_1000BBF40(v13, &v3[v21], &qword_1006AF740, &unk_100552330);
    swift_endAccess();
    v22 = type metadata accessor for TimeZone();
    (*(*(v22 - 8) + 56))(v10, 1, 1, v22);
    v23 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_selectedLocationTimeZone;
    swift_beginAccess();
    sub_1000BBF40(v10, &v3[v23], &qword_1006AFFF8, &qword_100552A98);
    return swift_endAccess();
  }

  else
  {
    (*(v18 + 32))(v20, v16, v17);
    (*(v18 + 16))(v13, v20, v17);
    (*(v18 + 56))(v13, 0, 1, v17);
    v25 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController__selectedLocation;
    swift_beginAccess();
    sub_1000BBF40(v13, &v3[v25], &qword_1006AF740, &unk_100552330);
    swift_endAccess();
    sub_100007204(v42, v10, &qword_1006AFFF8, &qword_100552A98);
    v26 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_selectedLocationTimeZone;
    swift_beginAccess();
    sub_1000BBF40(v10, &v3[v26], &qword_1006AFFF8, &qword_100552A98);
    swift_endAccess();
    v27 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_triggerType;
    swift_beginAccess();
    v28 = v41;
    v29 = v39;
    (*(v41 + 16))(v39, &v3[v27], v4);
    v30 = v40;
    (*(v28 + 104))(v40, enum case for FMFLocationAlertTriggerType.scheduled(_:), v4);
    sub_1000BBEF8(&qword_1006B0098, &type metadata accessor for FMFLocationAlertTriggerType, &protocol conformance descriptor for FMFLocationAlertTriggerType);
    LOBYTE(v27) = dispatch thunk of static Equatable.== infix(_:_:)();
    v31 = *(v28 + 8);
    v31(v30, v4);
    v31(v29, v4);
    if (v27)
    {
      v32 = type metadata accessor for TimeZone();
      if ((*(*(v32 - 8) + 48))(v42, 1, v32) == 1)
      {
        sub_1000A838C();
        v33 = FMFLocation.location.getter();
        if (v33)
        {
          v34 = v33;
          v35 = [objc_allocWithZone(CLGeocoder) init];
          v36 = swift_allocObject();
          *(v36 + 16) = v3;
          aBlock[4] = sub_1000BBFA8;
          aBlock[5] = v36;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100485DE8;
          aBlock[3] = &unk_100624BF0;
          v37 = _Block_copy(aBlock);
          v38 = v3;

          [v35 reverseGeocodeLocation:v34 completionHandler:v37];
          _Block_release(v37);
        }
      }
    }

    return (*(v18 + 8))(v20, v17);
  }
}

void sub_100097EB0(unint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 || !a1)
  {
    goto LABEL_14;
  }

  if (a1 >> 62)
  {
    v27 = v12;
    v28 = _CocoaArrayWrapper.endIndex.getter();
    v12 = v27;
    if (v28)
    {
      goto LABEL_5;
    }

LABEL_14:
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100005B14(v29, qword_1006D4630);
    v34 = Logger.logObject.getter();
    v30 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v34, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v34, v30, "FMLocationAlertViewController: reverse geocode failed while getting directions", v31, 2u);
    }

    v32 = v34;

    return;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

LABEL_5:
  v34 = v12;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v15 = *(a1 + 32);
  }

  v16 = v15;
  v17 = v7;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100005B14(v18, qword_1006D4630);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "FMLocationAlertViewController: reverse geocode updating timeZone", v21, 2u);
  }

  sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
  v22 = static OS_dispatch_queue.main.getter();
  v23 = swift_allocObject();
  *(v23 + 16) = v16;
  *(v23 + 24) = a3;
  aBlock[4] = sub_1000BBFB0;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100624C40;
  v24 = _Block_copy(aBlock);
  v25 = v16;
  v26 = a3;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000BBEF8(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);

  (*(v17 + 8))(v9, v6);
  (*(v11 + 8))(v14, v34);
}

id sub_100098390(void *a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006AFFF8, &qword_100552A98);
  __chkstk_darwin(v4 - 8);
  v6 = &v24[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v24[-v8];
  v10 = type metadata accessor for TimeZone();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v15 = __chkstk_darwin(v14).n128_u64[0];
  v17 = &v24[-v16];
  result = [a1 timeZone];
  if (result)
  {
    v19 = result;
    static TimeZone._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v11 + 32))(v17, v13, v10);
    v20 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_selectedLocationTimeZone;
    swift_beginAccess();
    sub_100007204(a2 + v20, v9, &qword_1006AFFF8, &qword_100552A98);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_100012DF0(v9, &qword_1006AFFF8, &qword_100552A98);
      (*(v11 + 16))(v6, v17, v10);
      (*(v11 + 56))(v6, 0, 1, v10);
      swift_beginAccess();
      sub_1000BBF40(v6, a2 + v20, &qword_1006AFFF8, &qword_100552A98);
      swift_endAccess();
      v21 = *(a2 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_tableView);
      v22 = sub_1000986CC(1);
      sub_1000A6A44(v22);
      type metadata accessor for IndexPath();
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v21 reloadRowsAtIndexPaths:isa withRowAnimation:5];

      sub_1000A838C();
      return (*(v11 + 8))(v17, v10);
    }

    else
    {
      (*(v11 + 8))(v17, v10);
      return sub_100012DF0(v9, &qword_1006AFFF8, &qword_100552A98);
    }
  }

  return result;
}

unint64_t sub_1000986CC(int a1)
{
  v2 = v1;
  v4 = type metadata accessor for FMFLocationAlertTriggerType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v38 = &v32[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v37 = &v32[-v8];
  __chkstk_darwin(v9);
  v35 = &v32[-v10];
  *&v12 = __chkstk_darwin(v11).n128_u64[0];
  v34 = &v32[-v13];
  v14 = *&v2[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_tableView];
  v43 = v2;
  result = [v2 numberOfSectionsInTableView:{v14, v12}];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v16 = result;
    if (result)
    {
      v33 = a1;
      v42 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_triggerType;
      swift_beginAccess();
      v17 = 0;
      v41 = (v5 + 16);
      v40 = enum case for FMFLocationAlertTriggerType.scheduled(_:);
      v39 = (v5 + 104);
      v18 = (v5 + 8);
      v19 = _swiftEmptyArrayStorage;
      v36 = v16;
      while (1)
      {
        if (v17 == 1)
        {
          LOBYTE(v20) = 1;
        }

        else if (v17)
        {
          v21 = *v41;
          v22 = v34;
          (*v41)(v34, &v43[v42], v4);
          v23 = *v39;
          v24 = v35;
          (*v39)(v35, v40, v4);
          sub_1000BBEF8(&qword_1006B0098, &type metadata accessor for FMFLocationAlertTriggerType, &protocol conformance descriptor for FMFLocationAlertTriggerType);
          v25 = dispatch thunk of static Equatable.== infix(_:_:)();
          v26 = *v18;
          (*v18)(v24, v4);
          v26(v22, v4);
          if (v25)
          {
            v20 = 2;
          }

          else
          {
            v20 = 3;
            v16 = v36;
            if (v17 == 2)
            {
              goto LABEL_20;
            }
          }

          v21(v37, &v43[v42], v4);
          v23(v38, v40, v4);
          sub_1000BBEF8(&qword_1006B00A0, &type metadata accessor for FMFLocationAlertTriggerType, &protocol conformance descriptor for FMFLocationAlertTriggerType);
          dispatch thunk of RawRepresentable.rawValue.getter();
          dispatch thunk of RawRepresentable.rawValue.getter();
          if (v46 == v44 && v47 == v45)
          {
            v26(v38, v4);
            v26(v37, v4);

            v16 = v36;
          }

          else
          {
            v27 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v26(v38, v4);
            v26(v37, v4);

            v16 = v36;
            if ((v27 & 1) == 0)
            {
              goto LABEL_19;
            }
          }

          if (v17 == v20)
          {
            LOBYTE(v20) = 2;
          }

          else
          {
            if (v17 != v20 + 1)
            {
LABEL_19:
              LOBYTE(v20) = 5;
              goto LABEL_20;
            }

            LOBYTE(v20) = 4;
          }
        }

        else
        {
          LOBYTE(v20) = 0;
        }

LABEL_20:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_10008BC68(0, *(v19 + 2) + 1, 1, v19);
        }

        v29 = *(v19 + 2);
        v28 = *(v19 + 3);
        v30 = (v29 + 1);
        if (v29 >= v28 >> 1)
        {
          v19 = sub_10008BC68((v28 > 1), v29 + 1, 1, v19);
        }

        ++v17;
        *(v19 + 2) = v30;
        v31 = v19 + 32;
        v19[v29 + 32] = v20;
        if (v16 == v17)
        {
          LOBYTE(a1) = v33;
LABEL_28:
          v2 = 0;
          while (v2[v31] != a1)
          {
            if (v30 == ++v2)
            {
              goto LABEL_31;
            }
          }

          goto LABEL_32;
        }
      }
    }

    v30 = _swiftEmptyArrayStorage[2];
    if (v30)
    {
      v31 = &_swiftEmptyArrayStorage[4];
      goto LABEL_28;
    }

LABEL_31:
    __break(1u);
LABEL_32:

    return v2;
  }

  return result;
}

_BYTE *sub_100098BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v8 = v7;
  v240 = a7;
  LODWORD(v268) = a6;
  v275 = a5;
  v276 = a1;
  v269 = a4;
  v277 = a3;
  v272 = a2;
  v9 = sub_10007EBC0(&qword_1006AFFF8, &qword_100552A98);
  __chkstk_darwin(v9 - 8);
  v222 = &v205 - v10;
  v217 = type metadata accessor for UUID();
  v216 = *(v217 - 8);
  __chkstk_darwin(v217);
  v215 = &v205 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FMFLocation();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v212 = &v205 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v263 = type metadata accessor for FMFLocationAlertTriggerType();
  v262 = *(v263 - 8);
  __chkstk_darwin(v263);
  v228 = &v205 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FMFLocationAlertTarget();
  v270 = *(v16 - 8);
  v271 = v16;
  __chkstk_darwin(v16);
  v242 = &v205 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for FMFLocationAlert();
  v274 = *(v18 - 8);
  v19 = v274;
  __chkstk_darwin(v18);
  v245 = &v205 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v230 = &v205 - v22;
  v229 = v23;
  __chkstk_darwin(v24);
  v244 = &v205 - v25;
  v273 = type metadata accessor for FMFFriend();
  v264 = *(v273 - 8);
  __chkstk_darwin(v273);
  v208 = &v205 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v232 = &v205 - v28;
  v29 = sub_10007EBC0(&qword_1006B0050, &unk_1005538A0);
  v226 = *(v29 - 8);
  __chkstk_darwin(v29 - 8);
  v207 = &v205 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v211 = &v205 - v32;
  __chkstk_darwin(v33);
  v243 = &v205 - v34;
  __chkstk_darwin(v35);
  v225 = &v205 - v36;
  __chkstk_darwin(v37);
  v214 = &v205 - v38;
  __chkstk_darwin(v39);
  v239 = &v205 - v40;
  __chkstk_darwin(v41);
  v210 = &v205 - v42;
  v227 = v43;
  __chkstk_darwin(v44);
  v237 = &v205 - v45;
  v46 = type metadata accessor for FMFSchedule.DaysOfWeek();
  __chkstk_darwin(v46 - 8);
  v235 = &v205 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v257 = type metadata accessor for Calendar.Component();
  v256 = *(v257 - 8);
  __chkstk_darwin(v257);
  v254 = &v205 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v255 = type metadata accessor for Calendar();
  v253 = *(v255 - 8);
  __chkstk_darwin(v255);
  v252 = &v205 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v251 = &v205 - v51;
  v250 = type metadata accessor for Date();
  v249 = *(v250 - 8);
  __chkstk_darwin(v250);
  v247 = &v205 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v53);
  v248 = &v205 - v54;
  v224 = sub_10007EBC0(&qword_1006AF740, &unk_100552330);
  __chkstk_darwin(v224);
  v206 = &v205 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v209 = &v205 - v57;
  __chkstk_darwin(v58);
  v218 = &v205 - v59;
  __chkstk_darwin(v60);
  v213 = &v205 - v61;
  __chkstk_darwin(v62);
  v231 = &v205 - v63;
  __chkstk_darwin(v64);
  v223 = &v205 - v65;
  __chkstk_darwin(v66);
  v258 = &v205 - v67;
  v68 = sub_10007EBC0(&unk_1006BEF80, &unk_100565B90);
  __chkstk_darwin(v68 - 8);
  v241 = &v205 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v70);
  v238 = &v205 - v71;
  __chkstk_darwin(v72);
  v74 = &v205 - v73;
  *&v7[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v75 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_locationAlert;
  (*(v19 + 56))(&v7[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_locationAlert], 1, 1, v18);
  v76 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_tableView;
  *&v8[v76] = [objc_allocWithZone(UITableView) initWithFrame:1 style:{0.0, 0.0, 0.0, 0.0}];
  v77 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_mapSnapshotter;
  type metadata accessor for FMMapSnapshotter();
  swift_allocObject();
  *&v8[v77] = sub_10012114C();
  v8[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_repeatingCellsExpanded] = 1;
  v8[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_triggerCellsExpanded] = 1;
  v8[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_locationCellsExpanded] = 1;
  v8[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_startTimeCellsExpanded] = 0;
  v8[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_endTimeCellsExpanded] = 0;
  v78 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_myCurrentLocation;
  v259 = v13;
  v79 = *(v13 + 56);
  v265 = v13 + 56;
  v80 = v12;
  v79(&v8[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_myCurrentLocation], 1, 1, v12);
  v261 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_myCurrentUnshiftedLocation;
  v79(&v8[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_myCurrentUnshiftedLocation], 1, 1, v12);
  v79(&v8[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_customLocation], 1, 1, v12);
  v81 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_locationShifter;
  type metadata accessor for FMLocationShifter();
  swift_allocObject();
  *&v8[v81] = FMLocationShifter.init()();
  v82 = v18;
  v260 = v80;
  v83 = v274;
  v266 = v79;
  v79(&v8[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController__selectedLocation], 1, 1, v80);
  v84 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_selectedLocationTimeZone;
  v85 = type metadata accessor for TimeZone();
  v86 = *(v85 - 8);
  v87 = *(v86 + 56);
  v221 = v85;
  v220 = v87;
  v219 = v86 + 56;
  (v87)(&v8[v84], 1, 1);
  *&v8[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_imageCache] = &_swiftEmptyDictionarySingleton;
  v236 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_repeating;
  v8[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_repeating] = 0;
  (*(v262 + 104))(&v8[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_triggerType], enum case for FMFLocationAlertTriggerType.leaving(_:), v263);
  *&v8[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_doneButton] = 0;
  *&v8[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_removeButton] = 0;
  *&v8[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_doneButtonItem] = 0;
  *&v8[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_removeCell] = 0;
  v8[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_cancelable] = v268;
  *&v8[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_friendHandles] = v269;
  sub_100007204(v277, &v8[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_friendForAlert], &qword_1006B0050, &unk_1005538A0);
  (*(v270 + 16))(&v8[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_alertTarget], v272, v271);
  swift_beginAccess();
  v88 = v275;
  sub_1000BBE44(v275, &v8[v75], &unk_1006BEF80, &unk_100565B90);
  swift_endAccess();
  sub_100007204(v88, v74, &unk_1006BEF80, &unk_100565B90);
  v89 = *(v83 + 48);
  v268 = (v83 + 48);
  v267 = v89;
  v90 = v89(v74, 1, v82);
  v269 = v82;
  if (v90 != 1)
  {
    FMFLocationAlert.radius.getter();
    v91 = v92;
    (*(v83 + 8))(v74, v82);
    goto LABEL_5;
  }

  sub_100012DF0(v74, &unk_1006BEF80, &unk_100565B90);
  if (qword_1006AED88 != -1)
  {
    goto LABEL_54;
  }

  while (1)
  {
    v91 = qword_1006D4D20;
LABEL_5:
    *&v8[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_selectedRadius] = v91;

    v93 = v258;
    dispatch thunk of FMFManager.myLocation.getter();

    swift_beginAccess();
    sub_1000BBF40(v93, &v8[v78], &qword_1006AF740, &unk_100552330);
    swift_endAccess();

    dispatch thunk of FMFManager.myUnshiftedLocation.getter();

    v94 = v261;
    swift_beginAccess();
    sub_1000BBF40(v93, &v8[v94], &qword_1006AF740, &unk_100552330);
    swift_endAccess();
    v95 = [objc_allocWithZone(NSDateFormatter) init];
    *&v8[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_dateFormatter] = v95;
    v96 = v95;
    v97 = String._bridgeToObjectiveC()();
    [v96 setLocalizedDateFormatFromTemplate:v97];

    v98 = [objc_allocWithZone(NSDateFormatter) init];
    *&v8[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_timeFormatterWithTimezone] = v98;
    v99 = v98;
    v100 = String._bridgeToObjectiveC()();
    [v99 setLocalizedDateFormatFromTemplate:v100];

    v101 = [objc_allocWithZone(NSDateFormatter) init];
    *&v8[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_timeFormatterNoTimezone] = v101;
    [v101 setTimeStyle:1];
    v234 = type metadata accessor for FMFSchedule();
    v261 = swift_allocBox();
    v103 = v102;
    FMFSchedule.init()();
    FMFSchedule.startHour.setter();
    FMFSchedule.startMin.setter();
    FMFSchedule.endHour.setter();
    FMFSchedule.endMin.setter();
    v104 = v248;
    Date.init()();
    v105 = v251;
    static Calendar.current.getter();
    v106 = v252;
    static Calendar.current.getter();
    v107 = v256;
    v108 = v254;
    v109 = v257;
    (*(v256 + 13))(v254, enum case for Calendar.Component.weekday(_:), v257);
    v110 = v247;
    Date.init()();
    v246 = Calendar.component(_:from:)();
    v233 = v8;
    v8 = (v249 + 8);
    v111 = *(v249 + 8);
    v112 = v110;
    v113 = v250;
    v111(v112, v250);
    (*(v107 + 1))(v108, v109);
    v114 = *(v253 + 8);
    v78 = v255;
    v114(v106, v255);
    v114(v105, v78);
    v111(v104, v113);
    v115 = v246 + 6;
    if (!__OFADD__(v246, 6))
    {
      break;
    }

    __break(1u);
LABEL_54:
    swift_once();
  }

  type metadata accessor for ScheduleDaysOfWeekCell(0);
  sub_10009AE7C(v115 % 7);
  FMFSchedule.daysOfWeek.setter();
  v116 = v233;
  (*(*(v234 - 8) + 16))(&v233[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_schedule], v103);
  v116[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_editable] = v240 & 1;
  v117 = v237;
  sub_100007204(v277, v237, &qword_1006B0050, &unk_1005538A0);
  v118 = v264;
  v119 = *(v264 + 48);
  v120 = v273;
  if (v119(v117, 1, v273) == 1)
  {
    sub_100012DF0(v117, &qword_1006B0050, &unk_1005538A0);
    v121 = v260;
    v122 = v269;
LABEL_13:
    v131 = v231;
    v266(v231, 1, 1, v121);
    LODWORD(v257) = 0;
    goto LABEL_14;
  }

  v123 = v223;
  FMFFriend.location.getter();
  v124 = *(v118 + 8);
  v124(v117, v120);
  v125 = v259;
  v121 = v260;
  v126 = (*(v259 + 48))(v123, 1, v260);
  v122 = v269;
  if (v126 == 1)
  {
    sub_100012DF0(v123, &qword_1006AF740, &unk_100552330);
    v120 = v273;
    goto LABEL_13;
  }

  v127 = FMFLocation.location.getter();
  v128 = v123;
  v129 = v127;
  (*(v125 + 8))(v128, v121);
  v120 = v273;
  if (!v129)
  {
    goto LABEL_13;
  }

  v130 = v210;
  sub_100007204(v277, v210, &qword_1006B0050, &unk_1005538A0);
  if (v119(v130, 1, v120) == 1)
  {
    sub_100012DF0(v130, &qword_1006B0050, &unk_1005538A0);
    LODWORD(v257) = 1;
    v131 = v231;
    v266(v231, 1, 1, v121);
  }

  else
  {
    v131 = v231;
    FMFFriend.location.getter();
    v124(v130, v120);
    LODWORD(v257) = 1;
  }

LABEL_14:
  v132 = v232;
  sub_100035318(v131, &v116[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_friendLocation], &qword_1006AF740, &unk_100552330);
  v133 = v239;
  sub_100007204(v277, v239, &qword_1006B0050, &unk_1005538A0);
  if (v119(v133, 1, v120) == 1)
  {
    sub_100012DF0(v133, &qword_1006B0050, &unk_1005538A0);
LABEL_20:
    v143 = v274;
    v266(&v116[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_friendUnshiftedLocation], 1, 1, v121);
    v144 = v238;
    goto LABEL_23;
  }

  v134 = v264;
  v135 = *(v264 + 32);
  v135(v132, v133, v120);
  if (!v257)
  {
    (*(v134 + 8))(v132, v120);
    v122 = v269;
    goto LABEL_20;
  }

  v136 = v132;
  v137 = FMFFriend.identifier.getter();
  v138 = v214;
  sub_1000BD300(v137, v139, v214);
  v140 = v138;
  v141 = v273;

  v256 = v119;
  if (v119(v140, 1, v141) == 1)
  {
    (*(v264 + 8))(v136, v141);
    sub_100012DF0(v140, &qword_1006B0050, &unk_1005538A0);
    v142 = v213;
    v121 = v260;
    v266(v213, 1, 1, v260);
    v122 = v269;
    v143 = v274;
    v144 = v238;
  }

  else
  {
    v145 = v208;
    v135(v208, v140, v141);
    v146 = v141;
    v142 = v213;
    dispatch thunk of FMFManager.unshiftedLocation(for:)();
    v147 = *(v264 + 8);
    v147(v145, v146);
    v147(v136, v146);
    v122 = v269;
    v143 = v274;
    v144 = v238;
    v121 = v260;
  }

  sub_100035318(v142, &v116[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_friendUnshiftedLocation], &qword_1006AF740, &unk_100552330);
  v120 = v273;
  v119 = v256;
LABEL_23:
  sub_100007204(v275, v144, &unk_1006BEF80, &unk_100565B90);
  if (v267(v144, 1, v122) == 1)
  {
    sub_100012DF0(v144, &unk_1006BEF80, &unk_100565B90);
    v148 = 0;
  }

  else
  {
    v148 = FMFLocationAlert.repeating.getter();
    (*(v143 + 8))(v144, v122);
  }

  v116[v236] = v148 & 1;
  *&v116[OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator] = v276;
  v149 = type metadata accessor for FMMediatedViewController();
  v282.receiver = v116;
  v282.super_class = v149;

  v150 = objc_msgSendSuper2(&v282, "initWithNibName:bundle:", 0, 0);
  v151 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_locationAlert;
  swift_beginAccess();
  v152 = &v150[v151];
  v153 = v241;
  sub_100007204(v152, v241, &unk_1006BEF80, &unk_100565B90);
  if (v267(v153, 1, v122) == 1)
  {
    sub_100012DF0(v153, &unk_1006BEF80, &unk_100565B90);
    v155 = v270;
    v154 = v271;
    (*(v270 + 104))(v242, enum case for FMFLocationAlertTarget.alertMe(_:), v271);
    sub_1000BBEF8(&unk_1006B0058, &type metadata accessor for FMFLocationAlertTarget, &protocol conformance descriptor for FMFLocationAlertTarget);
    v156 = v272;
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v278 == v280 && v279 == v281)
    {
      (*(v155 + 8))(v242, v154);

LABEL_35:
      if (!v257)
      {

        v189 = v218;
        dispatch thunk of FMFManager.myLocation.getter();

        goto LABEL_47;
      }

      v187 = v211;
      sub_100007204(v277, v211, &qword_1006B0050, &unk_1005538A0);
      if (v119(v187, 1, v120) != 1)
      {
        v189 = v218;
        FMFFriend.location.getter();
        (*(v264 + 8))(v187, v120);
        goto LABEL_47;
      }

      sub_100012DF0(v187, &qword_1006B0050, &unk_1005538A0);
      v188 = &v250;
LABEL_38:
      v189 = *(v188 - 32);
      v266(v189, 1, 1, v260);
LABEL_47:
      v199 = v222;
      v220(v222, 1, 1, v221);
      sub_100097820(v189, v199);
      sub_100012DF0(v199, &qword_1006AFFF8, &qword_100552A98);
      v200 = v189;
LABEL_48:
      sub_100012DF0(v200, &qword_1006AF740, &unk_100552330);
      goto LABEL_49;
    }

    v186 = _stringCompareWithSmolCheck(_:_:expecting:)();
    (*(v155 + 8))(v242, v154);

    if (v186)
    {
      goto LABEL_35;
    }

    v194 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_myCurrentLocation;
    swift_beginAccess();
    v195 = v209;
    sub_100007204(&v150[v194], v209, &qword_1006AF740, &unk_100552330);
    v196 = (*(v259 + 48))(v195, 1, v260);
    sub_100012DF0(v195, &qword_1006AF740, &unk_100552330);
    if (v196 != 1)
    {
      v202 = &v150[v194];
      v203 = v258;
      sub_100007204(v202, v258, &qword_1006AF740, &unk_100552330);
      v204 = v222;
      v220(v222, 1, 1, v221);
      sub_100097820(v203, v204);
      sub_100012DF0(v204, &qword_1006AFFF8, &qword_100552A98);
      v200 = v203;
      goto LABEL_48;
    }

    if (v257)
    {
      v197 = v207;
      sub_100007204(v277, v207, &qword_1006B0050, &unk_1005538A0);
      v198 = v273;
      if (v119(v197, 1, v273) != 1)
      {
        v189 = v206;
        FMFFriend.location.getter();
        (*(v264 + 8))(v197, v198);
        goto LABEL_47;
      }

      sub_100012DF0(v197, &qword_1006B0050, &unk_1005538A0);
      v188 = &v238;
      goto LABEL_38;
    }
  }

  else
  {
    v157 = v244;
    v267 = *(v143 + 32);
    v267(v244, v153, v122);
    v158 = v150[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_editable];
    v150[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_triggerCellsExpanded] = v158;
    v150[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_locationCellsExpanded] = v158;
    v150[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_startTimeCellsExpanded] = 0;
    v150[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_endTimeCellsExpanded] = 0;
    v150[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_repeatingCellsExpanded] = v158;
    v159 = v228;
    FMFLocationAlert.triggerType.getter();
    v160 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_triggerType;
    swift_beginAccess();
    (*(v262 + 40))(&v150[v160], v159, v263);
    swift_endAccess();
    v273 = swift_allocBox();
    v162 = v161;
    FMFLocationAlert.location.getter();
    v163 = v259;
    v164 = (*(v259 + 48))(v162, 1, v121);
    v268 = 0;
    if (!v164)
    {
      v165 = v212;
      (*(v163 + 16))(v212, v162, v121);
      v268 = FMFLocation.location.getter();
      (*(v163 + 8))(v165, v121);
    }

    v166 = *(v143 + 16);
    v167 = v230;
    v166(v230, v157, v122);
    v168 = v225;
    sub_100007204(v277, v225, &qword_1006B0050, &unk_1005538A0);
    v166(v245, v167, v122);
    sub_100007204(v168, v243, &qword_1006B0050, &unk_1005538A0);
    v169 = (*(v143 + 80) + 24) & ~*(v143 + 80);
    v170 = (v229 + v169 + 7) & 0xFFFFFFFFFFFFFFF8;
    v171 = (*(v226 + 80) + v170 + 8) & ~*(v226 + 80);
    v172 = v122;
    v173 = (v227 + v171 + 7) & 0xFFFFFFFFFFFFFFF8;
    v174 = swift_allocObject();
    *(v174 + 16) = v273;
    v267(v174 + v169, v167, v172);
    *(v174 + v170) = v150;
    sub_100035318(v168, v174 + v171, &qword_1006B0050, &unk_1005538A0);
    v175 = v261;
    *(v174 + v173) = v261;
    if (v268)
    {
      v176 = v150;

      v177 = v268;
      v178 = v215;
      UUID.init()();
      UUID.uuidString.getter();
      (*(v216 + 8))(v178, v217);
      type metadata accessor for FMLocationShiftingRequest();
      swift_allocObject();
      v179 = v177;
      v180 = FMLocationShiftingRequest.init(identifier:location:)();
      sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
      v181 = swift_allocObject();
      *(v181 + 16) = xmmword_1005528C0;
      *(v181 + 32) = v180;
      v182 = swift_allocObject();
      v182[2] = v179;
      v182[3] = sub_1000BA99C;
      v182[4] = v174;
      v183 = v179;

      dispatch thunk of FMLocationShifter.shift(requests:completion:)();

      v154 = v271;
      v156 = v272;
      v155 = v270;
      v184 = v245;
      v185 = v243;
    }

    else
    {
      v190 = v150;

      v191 = v273;

      v184 = v245;
      v185 = v243;
      sub_10009AEE0(0, v191, v245, v190, v243, v175);

      v154 = v271;
      v156 = v272;
      v155 = v270;
    }

    v192 = *(v274 + 8);
    v193 = v269;
    v192(v244, v269);
    v192(v184, v193);
    sub_100012DF0(v185, &qword_1006B0050, &unk_1005538A0);
  }

LABEL_49:
  sub_10009C2E4();
  sub_10009CB1C();

  sub_100012DF0(v275, &unk_1006BEF80, &unk_100565B90);
  sub_100012DF0(v277, &qword_1006B0050, &unk_1005538A0);
  (*(v155 + 8))(v156, v154);

  return v150;
}

uint64_t sub_10009AE7C(uint64_t a1)
{
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        return static FMFSchedule.DaysOfWeek.sunday.getter();
      case 1:
        return static FMFSchedule.DaysOfWeek.monday.getter();
      case 2:
        return static FMFSchedule.DaysOfWeek.tuesday.getter();
    }

    return static FMFSchedule.DaysOfWeek.none.getter();
  }

  if (a1 > 4)
  {
    if (a1 == 5)
    {
      return static FMFSchedule.DaysOfWeek.friday.getter();
    }

    if (a1 == 6)
    {
      return static FMFSchedule.DaysOfWeek.saturday.getter();
    }

    return static FMFSchedule.DaysOfWeek.none.getter();
  }

  if (a1 == 3)
  {
    return static FMFSchedule.DaysOfWeek.wednesday.getter();
  }

  else
  {
    return static FMFSchedule.DaysOfWeek.thursday.getter();
  }
}

uint64_t sub_10009AEE0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v125 = a6;
  v116 = a5;
  v132 = a3;
  v8 = sub_10007EBC0(&qword_1006AFFF8, &qword_100552A98);
  __chkstk_darwin(v8 - 8);
  v124 = &v107 - v9;
  v10 = sub_10007EBC0(&unk_1006B0010, &unk_100552AB0);
  __chkstk_darwin(v10 - 8);
  v123 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v119 = &v107 - v13;
  v122 = type metadata accessor for FMFSchedule();
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v120 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10007EBC0(&qword_1006B0050, &unk_1005538A0);
  __chkstk_darwin(v15 - 8);
  v115 = &v107 - v16;
  v17 = type metadata accessor for FMFLocation();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v111 = &v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_10007EBC0(&qword_1006B0020, &unk_100552AC0);
  __chkstk_darwin(v129);
  v117 = &v107 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v107 - v22;
  v24 = sub_10007EBC0(&qword_1006B0038, &unk_10055EDB0);
  __chkstk_darwin(v24 - 8);
  v114 = &v107 - v25;
  v26 = sub_10007EBC0(&qword_1006B0040, &qword_100552AE0);
  __chkstk_darwin(v26 - 8);
  v28 = &v107 - v27;
  v29 = sub_10007EBC0(&qword_1006AF740, &unk_100552330);
  __chkstk_darwin(v29 - 8);
  v118 = &v107 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v110 = &v107 - v32;
  __chkstk_darwin(v33);
  v109 = &v107 - v34;
  __chkstk_darwin(v35);
  v127 = &v107 - v36;
  __chkstk_darwin(v37);
  v131 = &v107 - v38;
  __chkstk_darwin(v39);
  v112 = &v107 - v40;
  __chkstk_darwin(v41);
  v128 = &v107 - v42;
  __chkstk_darwin(v43);
  v45 = &v107 - v44;
  __chkstk_darwin(v46);
  v48 = &v107 - v47;
  __chkstk_darwin(v49);
  v51 = &v107 - v50;
  v52 = swift_projectBox();
  v113 = swift_projectBox();
  v125 = v18;
  v126 = a4;
  v130 = v52;
  if (a1)
  {
    v108 = a1;
    FMFLocationAlert.location.getter();
    v53 = *(v18 + 48);
    if (v53(v48, 1, v17) == 1)
    {
      sub_100012DF0(v48, &qword_1006AF740, &unk_100552330);
      v54 = type metadata accessor for FMFAddress();
      (*(*(v54 - 8) + 56))(v28, 1, 1, v54);
    }

    else
    {
      FMFLocation.address.getter();
      (*(v18 + 8))(v48, v17);
    }

    FMFLocationAlert.location.getter();
    v55 = v53(v45, 1, v17);
    v56 = v114;
    if (v55 == 1)
    {
      sub_100012DF0(v45, &qword_1006AF740, &unk_100552330);
      v57 = type metadata accessor for FMFLabel();
      (*(*(v57 - 8) + 56))(v56, 1, 1, v57);
      a4 = v126;
      v52 = v130;
      v18 = v125;
    }

    else
    {
      FMFLocation.label.getter();
      v18 = v125;
      (*(v125 + 8))(v45, v17);
      a4 = v126;
      v52 = v130;
    }

    FMFLocation.init(from:address:label:labels:)();
    (*(v18 + 56))(v51, 0, 1, v17);
    swift_beginAccess();
    sub_1000BBF40(v51, v52, &qword_1006AF740, &unk_100552330);
  }

  swift_beginAccess();
  v58 = a4;
  v59 = v128;
  sub_100007204(v52, v128, &qword_1006AF740, &unk_100552330);
  v60 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_myCurrentLocation;
  swift_beginAccess();
  v61 = *(v129 + 48);
  sub_100007204(v59, v23, &qword_1006AF740, &unk_100552330);
  sub_100007204(v58 + v60, &v23[v61], &qword_1006AF740, &unk_100552330);
  v62 = *(v18 + 48);
  v63 = v62(v23, 1, v17);
  v64 = v17;
  v114 = v62;
  if (v63 == 1)
  {
    sub_100012DF0(v59, &qword_1006AF740, &unk_100552330);
    v65 = v62(&v23[v61], 1, v17);
    v66 = v131;
    v67 = v127;
    if (v65 == 1)
    {
      v68 = v58;
      sub_100012DF0(v23, &qword_1006AF740, &unk_100552330);
      v69 = v119;
      v70 = v130;
      goto LABEL_28;
    }
  }

  else
  {
    v71 = v112;
    sub_100007204(v23, v112, &qword_1006AF740, &unk_100552330);
    v72 = v62(&v23[v61], 1, v17);
    v67 = v127;
    if (v72 != 1)
    {
      v87 = &v23[v61];
      v88 = v111;
      (*(v18 + 32))(v111, v87, v64);
      sub_1000BBEF8(&qword_1006B0048, &type metadata accessor for FMFLocation, &protocol conformance descriptor for FMFLocation);
      LODWORD(v108) = dispatch thunk of static Equatable.== infix(_:_:)();
      v89 = *(v18 + 8);
      v89(v88, v64);
      sub_100012DF0(v128, &qword_1006AF740, &unk_100552330);
      v128 = v64;
      v89(v71, v64);
      v70 = v130;
      v68 = v58;
      sub_100012DF0(v23, &qword_1006AF740, &unk_100552330);
      v69 = v119;
      v66 = v131;
      if (v108)
      {
        goto LABEL_28;
      }

      goto LABEL_15;
    }

    sub_100012DF0(v128, &qword_1006AF740, &unk_100552330);
    (*(v18 + 8))(v71, v64);
    v66 = v131;
  }

  v128 = v64;
  sub_100012DF0(v23, &qword_1006B0020, &unk_100552AC0);
  v69 = v119;
  v70 = v130;
LABEL_15:
  swift_beginAccess();
  sub_100007204(v70, v66, &qword_1006AF740, &unk_100552330);
  v73 = v115;
  sub_100007204(v116, v115, &qword_1006B0050, &unk_1005538A0);
  v74 = type metadata accessor for FMFFriend();
  v75 = *(v74 - 8);
  if ((*(v75 + 48))(v73, 1, v74) == 1)
  {
    sub_100012DF0(v73, &qword_1006B0050, &unk_1005538A0);
    v76 = v128;
    (*(v125 + 56))(v67, 1, 1, v128);
    v77 = v117;
  }

  else
  {
    FMFFriend.location.getter();
    (*(v75 + 8))(v73, v74);
    v77 = v117;
    v76 = v128;
  }

  v78 = *(v129 + 48);
  v79 = v131;
  sub_100007204(v131, v77, &qword_1006AF740, &unk_100552330);
  sub_100007204(v67, v77 + v78, &qword_1006AF740, &unk_100552330);
  v80 = v114;
  v81 = v76;
  if ((v114)(v77, 1, v76) == 1)
  {
    sub_100012DF0(v67, &qword_1006AF740, &unk_100552330);
    sub_100012DF0(v79, &qword_1006AF740, &unk_100552330);
    v82 = v80(v77 + v78, 1, v76);
    v68 = v126;
    if (v82 == 1)
    {
      sub_100012DF0(v77, &qword_1006AF740, &unk_100552330);
      goto LABEL_28;
    }

    goto LABEL_23;
  }

  v83 = v109;
  sub_100007204(v77, v109, &qword_1006AF740, &unk_100552330);
  v84 = v80(v77 + v78, 1, v81);
  v68 = v126;
  if (v84 == 1)
  {
    sub_100012DF0(v127, &qword_1006AF740, &unk_100552330);
    sub_100012DF0(v131, &qword_1006AF740, &unk_100552330);
    (*(v125 + 8))(v83, v81);
LABEL_23:
    sub_100012DF0(v77, &qword_1006B0020, &unk_100552AC0);
LABEL_24:
    swift_beginAccess();
    v85 = v110;
    sub_100007204(v70, v110, &qword_1006AF740, &unk_100552330);
    v86 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_customLocation;
    swift_beginAccess();
    sub_1000BBF40(v85, v68 + v86, &qword_1006AF740, &unk_100552330);
    swift_endAccess();
    goto LABEL_28;
  }

  v90 = v83;
  v91 = v125;
  v92 = v77 + v78;
  v93 = v111;
  (*(v125 + 32))(v111, v92, v81);
  sub_1000BBEF8(&qword_1006B0048, &type metadata accessor for FMFLocation, &protocol conformance descriptor for FMFLocation);
  LODWORD(v129) = dispatch thunk of static Equatable.== infix(_:_:)();
  v94 = *(v91 + 8);
  v94(v93, v81);
  sub_100012DF0(v127, &qword_1006AF740, &unk_100552330);
  sub_100012DF0(v131, &qword_1006AF740, &unk_100552330);
  v94(v90, v81);
  sub_100012DF0(v77, &qword_1006AF740, &unk_100552330);
  if ((v129 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_28:
  FMFLocationAlert.schedule.getter();
  v95 = v121;
  v96 = *(v121 + 48);
  v97 = v122;
  if (v96(v69, 1, v122) == 1)
  {
    v98 = v113;
    swift_beginAccess();
    v99 = v120;
    (*(v95 + 16))(v120, v98, v97);
    v100 = v96(v69, 1, v97);
    v101 = v123;
    if (v100 != 1)
    {
      sub_100012DF0(v69, &unk_1006B0010, &unk_100552AB0);
    }
  }

  else
  {
    v99 = v120;
    (*(v95 + 32))(v120, v69, v97);
    v101 = v123;
  }

  v102 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_schedule;
  swift_beginAccess();
  (*(v95 + 40))(v68 + v102, v99, v97);
  swift_endAccess();
  swift_beginAccess();
  v103 = v118;
  sub_100007204(v70, v118, &qword_1006AF740, &unk_100552330);
  FMFLocationAlert.schedule.getter();
  if (v96(v101, 1, v97) == 1)
  {
    sub_100012DF0(v101, &unk_1006B0010, &unk_100552AB0);
    v104 = type metadata accessor for TimeZone();
    v105 = v124;
    (*(*(v104 - 8) + 56))(v124, 1, 1, v104);
  }

  else
  {
    v105 = v124;
    FMFSchedule.timeZone.getter();
    (*(v95 + 8))(v101, v97);
  }

  sub_100097820(v103, v105);
  sub_100012DF0(v105, &qword_1006AFFF8, &qword_100552A98);
  return sub_100012DF0(v103, &qword_1006AF740, &unk_100552330);
}

void sub_10009C0C8(char a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for FMLocationAlertViewController(0);
  objc_msgSendSuper2(&v9, "viewWillAppear:", a1 & 1);
  v3 = [v1 navigationController];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 navigationBar];

    [v5 setPrefersLargeTitles:1];
  }

  v6 = [v1 navigationController];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 navigationItem];

    [v8 setLargeTitleDisplayMode:3];
  }
}

void sub_10009C2E4()
{
  v1 = sub_10007EBC0(&unk_1006BEF80, &unk_100565B90);
  __chkstk_darwin(v1 - 8);
  v3 = &v53[-v2];
  if (v0[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_cancelable] == 1)
  {
    v4 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:1 target:v0 action:"cancel"];
    v5 = [v0 navigationItem];
    [v5 setLeftBarButtonItem:v4];
  }

  if (v0[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_editable] == 1)
  {
    v6 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_locationAlert;
    swift_beginAccess();
    sub_100007204(&v0[v6], v3, &unk_1006BEF80, &unk_100565B90);
    v7 = type metadata accessor for FMFLocationAlert();
    LODWORD(v6) = (*(*(v7 - 8) + 48))(v3, 1, v7);
    sub_100012DF0(v3, &unk_1006BEF80, &unk_100565B90);
    v8 = [objc_opt_self() mainBundle];
    if (v6 == 1)
    {
      v9 = 0xD000000000000012;
      v52 = 0x800000010057BB00;
      v10 = 0x800000010057BAE0;
      v11 = 0xD000000000000024;
    }

    else
    {
      v9 = 0xD000000000000013;
      v52 = 0x800000010057BB50;
      v10 = 0x800000010057BB30;
      v11 = 0xD000000000000025;
    }

    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(*&v9, 0, v8, v12, *&v11);

    v13 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:0 target:v0 action:"saveAlertWithSender:"];
    [v13 setEnabled:0];
    v14 = [v0 navigationItem];
    sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1005528C0;
    *(v15 + 32) = v13;
    sub_10000905C(0, &qword_1006B0160, UIBarButtonItem_ptr);
    v16 = v13;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v14 setRightBarButtonItems:isa animated:0];

    v18 = *&v0[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_doneButtonItem];
    *&v0[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_doneButtonItem] = v16;
    v19 = v16;

    sub_1000A838C();
  }

  v20 = [v0 navigationItem];
  sub_10009CE0C();
  v21 = String._bridgeToObjectiveC()();

  [v20 setTitle:v21];

  v22 = [v0 view];
  if (!v22)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

  v23 = v22;
  v24 = [objc_opt_self() systemGroupedBackgroundColor];
  [v23 setBackgroundColor:v24];

  v25 = *&v0[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_tableView];
  [v25 _setSectionContentInsetFollowsLayoutMargins:1];
  v54[3] = &type metadata for SolariumFeatureFlag;
  v54[4] = sub_10000BD04();
  LOBYTE(v24) = isFeatureEnabled(_:)();
  sub_100006060(v54);
  if ((v24 & 1) == 0)
  {
    [v25 contentInset];
    [v25 setContentInset:-17.0];
  }

  [v25 setDataSource:v0];
  [v25 setDelegate:v0];
  type metadata accessor for SelectionCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v27 = String._bridgeToObjectiveC()();
  [v25 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v27];

  type metadata accessor for TriggerTypeCell();
  v28 = swift_getObjCClassFromMetadata();
  v29 = String._bridgeToObjectiveC()();
  [v25 registerClass:v28 forCellReuseIdentifier:v29];

  type metadata accessor for FMPlusButtonTableViewCell();
  v30 = swift_getObjCClassFromMetadata();
  v31 = String._bridgeToObjectiveC()();
  [v25 registerClass:v30 forCellReuseIdentifier:v31];

  type metadata accessor for ScheduleTimeCell();
  v32 = swift_getObjCClassFromMetadata();
  v33 = String._bridgeToObjectiveC()();
  [v25 registerClass:v32 forCellReuseIdentifier:v33];

  type metadata accessor for ScheduleTimePickerCell(0);
  v34 = swift_getObjCClassFromMetadata();
  v35 = String._bridgeToObjectiveC()();
  [v25 registerClass:v34 forCellReuseIdentifier:v35];

  type metadata accessor for ScheduleDaysOfWeekCell(0);
  v36 = swift_getObjCClassFromMetadata();
  v37 = String._bridgeToObjectiveC()();
  [v25 registerClass:v36 forCellReuseIdentifier:v37];

  type metadata accessor for AlertLocationCell();
  v38 = swift_getObjCClassFromMetadata();
  v39 = String._bridgeToObjectiveC()();
  [v25 registerClass:v38 forCellReuseIdentifier:v39];

  v40 = sub_10000905C(0, &qword_1006B00B0, UITableViewCell_ptr);
  v41 = swift_getObjCClassFromMetadata();
  v54[0] = v40;
  sub_10007EBC0(&qword_1006B00B8, &unk_100552B20);
  String.init<A>(describing:)();
  v42 = String._bridgeToObjectiveC()();

  [v25 registerClass:v41 forCellReuseIdentifier:v42];

  v43 = [v0 view];
  if (!v43)
  {
    goto LABEL_18;
  }

  v44 = v43;
  [v43 addSubview:v25];

  v45 = [v0 traitCollection];
  v46 = [v45 horizontalSizeClass];

  if (v46 == 2)
  {
    if (qword_1006AEC30 != -1)
    {
      swift_once();
    }

    v47 = [objc_opt_self() mainScreen];
    [v47 bounds];
    v49 = v48;
    v51 = v50;

    [v0 setPreferredContentSize:{fmin(v49, 520.0), fmin(v51, 720.0)}];
  }
}

void sub_10009CB1C()
{
  v1 = *&v0[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_tableView];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1005521F0;
  v3 = [v1 topAnchor];
  v4 = [v0 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v4;
  v6 = [v4 topAnchor];

  v7 = [v3 constraintEqualToAnchor:v6];
  *(v2 + 32) = v7;
  v8 = [v1 leadingAnchor];
  v9 = [v0 view];
  if (!v9)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = v9;
  v11 = [v9 leadingAnchor];

  v12 = [v8 constraintEqualToAnchor:v11];
  *(v2 + 40) = v12;
  v13 = [v1 trailingAnchor];
  v14 = [v0 view];
  if (!v14)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v15 = v14;
  v16 = [v14 trailingAnchor];

  v17 = [v13 constraintEqualToAnchor:v16];
  *(v2 + 48) = v17;
  v18 = [v1 bottomAnchor];
  v19 = [v0 view];
  if (!v19)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v20 = v19;
  v21 = objc_opt_self();
  v22 = [v20 bottomAnchor];

  v23 = [v18 constraintEqualToAnchor:v22];
  *(v2 + 56) = v23;
  sub_10000905C(0, &qword_1006B3A70, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v21 activateConstraints:isa];
}

uint64_t sub_10009CE0C()
{
  v1 = sub_10007EBC0(&qword_1006B0050, &unk_1005538A0);
  __chkstk_darwin(v1 - 8);
  v3 = &v27 - v2;
  v4 = type metadata accessor for FMFLocationAlertTarget();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v0 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_alertTarget, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == enum case for FMFLocationAlertTarget.alertMe(_:))
  {
    v10 = [objc_opt_self() mainBundle];
    v26 = 0x800000010057BAA0;
    v11 = 0x800000010057BA70;
    v12 = 0xD000000000000038;
    v13 = 0xD000000000000026;
    goto LABEL_9;
  }

  if (v9 == enum case for FMFLocationAlertTarget.alertFriends(_:))
  {
    sub_100007204(v0 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_friendForAlert, v3, &qword_1006B0050, &unk_1005538A0);
    v14 = type metadata accessor for FMFFriend();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v3, 1, v14) == 1)
    {
      sub_100012DF0(v3, &qword_1006B0050, &unk_1005538A0);
    }

    else
    {
      v16 = FMFFriend.properName.getter();
      v18 = v17;
      (*(v15 + 8))(v3, v14);
      if (v18)
      {
        v19 = [objc_opt_self() mainBundle];
        v28._object = 0x800000010057BA30;
        v20._countAndFlagsBits = 0xD00000000000002ALL;
        v20._object = 0x800000010057BA00;
        v28._countAndFlagsBits = 0xD00000000000003CLL;
        v21._countAndFlagsBits = 0;
        v21._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v20, 0, v19, v21, v28);

        sub_10007EBC0(&unk_1006B20B0, &unk_1005523B0);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_100552220;
        *(v22 + 56) = &type metadata for String;
        *(v22 + 64) = sub_10008EE84();
        *(v22 + 32) = v16;
        *(v22 + 40) = v18;
        countAndFlagsBits = String.init(format:_:)();

        return countAndFlagsBits;
      }
    }

    v10 = [objc_opt_self() mainBundle];
    v26 = 0x800000010057B9B0;
    v13 = 0xD000000000000032;
    v11 = 0x800000010057B970;
    v12 = 0xD000000000000044;
LABEL_9:
    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v13, 0, v10, v24, *&v12)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

void *sub_10009D2F8()
{
  v1 = sub_10007EBC0(&qword_1006B0050, &unk_1005538A0);
  __chkstk_darwin(v1 - 8);
  v3 = &v12[-1] - v2;
  v4 = *(v0 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_friendHandles);
  if (v4)
  {
    v5 = *(v0 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_friendHandles);
    v3 = *(v4 + 16);
    if (v3)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  sub_100007204(v0 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_friendForAlert, v3, &qword_1006B0050, &unk_1005538A0);
  v6 = type metadata accessor for FMFFriend();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v3, 1, v6) != 1)
  {
    goto LABEL_8;
  }

  sub_100012DF0(v3, &qword_1006B0050, &unk_1005538A0);
  v5 = _swiftEmptySetSingleton;
  v3 = _swiftEmptySetSingleton[2];
  if (!v3)
  {
LABEL_9:

    return _swiftEmptyArrayStorage;
  }

LABEL_6:
  while (1)
  {
    v8 = sub_10002E21C(v3, 0);
    v9 = sub_100016318(v12, v8 + 4, v3, v5);
    v6 = v12[0];
    v7 = v12[1];

    sub_10000BEC8(v6);
    if (v9 == v3)
    {
      return v8;
    }

    __break(1u);
LABEL_8:
    v5 = FMFFriend.contactHandles.getter();
    (*(v7 + 8))(v3, v6);
    v3 = v5[2];
    if (!v3)
    {
      goto LABEL_9;
    }
  }
}

uint64_t sub_10009D4F8()
{
  result = sub_10009D2F8();
  v1 = result;
  v2 = *(result + 16);
  if (v2)
  {
    v3 = 0;
    v4 = result + 40;
    v14 = _swiftEmptyArrayStorage;
    v13 = result + 40;
    do
    {
      v5 = (v4 + 16 * v3);
      v6 = v3;
      while (1)
      {
        if (v6 >= *(v1 + 16))
        {
          __break(1u);
          return result;
        }

        v8 = *(v5 - 1);
        v7 = *v5;
        v3 = v6 + 1;
        sub_100035F3C();

        if (StringProtocol.contains<A>(_:)())
        {
          break;
        }

        v5 += 2;
        ++v6;
        if (v2 == v3)
        {
          goto LABEL_15;
        }
      }

      v9 = v14;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_10016715C(0, v14[2] + 1, 1);
        v9 = v14;
      }

      v11 = v9[2];
      v10 = v9[3];
      if (v11 >= v10 >> 1)
      {
        result = sub_10016715C((v10 > 1), v11 + 1, 1);
        v9 = v14;
      }

      v9[2] = v11 + 1;
      v14 = v9;
      v12 = &v9[2 * v11];
      v12[4] = v8;
      v12[5] = v7;
      v4 = v13;
    }

    while (v2 - 1 != v6);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

LABEL_15:

  return v14;
}

uint64_t sub_10009D68C()
{
  result = sub_10009D2F8();
  v1 = result;
  v2 = *(result + 16);
  if (v2)
  {
    v3 = 0;
    v4 = result + 40;
    v14 = _swiftEmptyArrayStorage;
    v13 = result + 40;
    do
    {
      v5 = (v4 + 16 * v3);
      v6 = v3;
      while (1)
      {
        if (v6 >= *(v1 + 16))
        {
          __break(1u);
          return result;
        }

        v8 = *(v5 - 1);
        v7 = *v5;
        v3 = v6 + 1;
        sub_100035F3C();

        if ((StringProtocol.contains<A>(_:)() & 1) == 0)
        {
          break;
        }

        v5 += 2;
        ++v6;
        if (v2 == v3)
        {
          goto LABEL_15;
        }
      }

      v9 = v14;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_10016715C(0, v14[2] + 1, 1);
        v9 = v14;
      }

      v11 = v9[2];
      v10 = v9[3];
      if (v11 >= v10 >> 1)
      {
        result = sub_10016715C((v10 > 1), v11 + 1, 1);
        v9 = v14;
      }

      v9[2] = v11 + 1;
      v14 = v9;
      v12 = &v9[2 * v11];
      v12[4] = v8;
      v12[5] = v7;
      v4 = v13;
    }

    while (v2 - 1 != v6);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

LABEL_15:

  return v14;
}

uint64_t sub_10009D820@<X0>(uint64_t a1@<X8>)
{
  v100 = a1;
  v122 = type metadata accessor for Calendar.SearchDirection();
  v130 = *(v122 - 8);
  __chkstk_darwin(v122);
  v121 = &v90 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for Calendar.RepeatedTimePolicy();
  v129 = *(v120 - 8);
  __chkstk_darwin(v120);
  v119 = &v90 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for Calendar.MatchingPolicy();
  v105 = *(v118 - 8);
  __chkstk_darwin(v118);
  v117 = &v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10007EBC0(&unk_1006B0000, &unk_100552AA0);
  __chkstk_darwin(v4 - 8);
  v99 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v115 = &v90 - v7;
  __chkstk_darwin(v8);
  v116 = &v90 - v9;
  v125 = type metadata accessor for Date();
  v10 = *(v125 - 8);
  __chkstk_darwin(v125);
  v95 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v114 = &v90 - v13;
  __chkstk_darwin(v14);
  v101 = &v90 - v15;
  v128 = type metadata accessor for FMFSchedule.DaysOfWeek();
  v138 = *(v128 - 8);
  __chkstk_darwin(v128);
  v137 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v124 = &v90 - v18;
  v19 = type metadata accessor for TimeZone();
  v107 = v19;
  v106 = *(v19 - 8);
  v20 = v106;
  __chkstk_darwin(v19);
  v112 = &v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for Calendar.Identifier();
  v110 = *(v111 - 1);
  __chkstk_darwin(v111);
  v109 = &v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Calendar();
  v94 = *(v23 - 8);
  __chkstk_darwin(v23);
  v127 = &v90 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for FMFSchedule();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v90 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10007EBC0(&qword_1006AFFF8, &qword_100552A98);
  __chkstk_darwin(v29 - 8);
  v108 = (&v90 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v31);
  v33 = &v90 - v32;
  v34 = sub_10007EBC0(&qword_1006B00A8, &qword_100565050);
  __chkstk_darwin(v34 - 8);
  v36 = &v90 - v35;
  v92 = type metadata accessor for DateComponents();
  v91 = *(v92 - 8);
  v37 = __chkstk_darwin(v92);
  v39 = &v90 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = v10;
  v40 = *(v10 + 7);
  v97 = v10 + 56;
  v96 = v40;
  (v40)(v100, 1, 1, v125, v37);
  v41 = *(v94 + 56);
  v93 = v23;
  v41(v36, 1, 1, v23);
  v42 = v20[7];
  v123 = v33;
  (v42)(v33, 1, 1, v19);
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  v43 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_schedule;
  v44 = v126;
  swift_beginAccess();
  v45 = *(v26 + 16);
  v45(v28, v44 + v43, v25);
  FMFSchedule.startHour.getter();
  v46 = *(v26 + 8);
  v46(v28, v25);
  DateComponents.hour.setter();
  v132 = v45;
  v133 = v26 + 16;
  v45(v28, v44 + v43, v25);
  FMFSchedule.startMin.getter();
  v134 = v28;
  v135 = v26 + 8;
  v136 = v25;
  v131 = v46;
  v46(v28, v25);
  DateComponents.minute.setter();
  v47 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_selectedLocationTimeZone;
  swift_beginAccess();
  v48 = v44;
  sub_100007204(v44 + v47, v123, &qword_1006AFFF8, &qword_100552A98);
  v123 = v39;
  v49 = v106;
  DateComponents.timeZone.setter();
  v50 = v110;
  v51 = v109;
  v52 = v111;
  (*(v110 + 104))(v109, enum case for Calendar.Identifier.gregorian(_:), v111);
  Calendar.init(identifier:)();
  v53 = v51;
  v54 = v107;
  (*(v50 + 8))(v53, v52);
  v55 = v48 + v47;
  v56 = v108;
  sub_100007204(v55, v108, &qword_1006AFFF8, &qword_100552A98);
  v57 = v49[6];
  if ((v57)(v56, 1, v54) == 1)
  {
    static TimeZone.current.getter();
    if ((v57)(v56, 1, v54) != 1)
    {
      sub_100012DF0(v56, &qword_1006AFFF8, &qword_100552A98);
    }
  }

  else
  {
    (v49[4])(v112, v56, v54);
  }

  Calendar.timeZone.setter();
  ++v138;
  LODWORD(v112) = enum case for Calendar.MatchingPolicy.nextTime(_:);
  v111 = (v105 + 13);
  LODWORD(v110) = enum case for Calendar.RepeatedTimePolicy.first(_:);
  v109 = (v129 + 13);
  v108 = (v130 + 104);
  v107 = (v130 + 8);
  v106 = v129 + 1;
  ++v105;
  v129 = (v102 + 8);
  v104 = (v102 + 48);
  v103 = enum case for Calendar.SearchDirection.forward(_:);
  v98 = (v102 + 32);
  v58 = 1;
  v59 = v126;
  v60 = v128;
  v61 = v124;
  v113 = v43;
  do
  {
    if (v58 - 1 <= 2)
    {
      if (v58 == 1)
      {
        static FMFSchedule.DaysOfWeek.sunday.getter();
        goto LABEL_25;
      }

      if (v58 != 2)
      {
        if (v58 == 3)
        {
          static FMFSchedule.DaysOfWeek.tuesday.getter();
          goto LABEL_25;
        }

        goto LABEL_21;
      }

      static FMFSchedule.DaysOfWeek.monday.getter();
    }

    else if (v58 - 1 > 4)
    {
      if (v58 != 6)
      {
        if (v58 == 7)
        {
          static FMFSchedule.DaysOfWeek.saturday.getter();
          goto LABEL_25;
        }

        goto LABEL_21;
      }

      static FMFSchedule.DaysOfWeek.friday.getter();
    }

    else
    {
      if (v58 != 4)
      {
        if (v58 == 5)
        {
          static FMFSchedule.DaysOfWeek.thursday.getter();
          goto LABEL_25;
        }

LABEL_21:
        static FMFSchedule.DaysOfWeek.none.getter();
        goto LABEL_25;
      }

      static FMFSchedule.DaysOfWeek.wednesday.getter();
    }

LABEL_25:
    v62 = v134;
    v63 = v136;
    v132(v134, v59 + v43, v136);
    v64 = v137;
    FMFSchedule.daysOfWeek.getter();
    v131(v62, v63);
    sub_1000BBEF8(&qword_1006B0070, &type metadata accessor for FMFSchedule.DaysOfWeek, &protocol conformance descriptor for FMFSchedule.DaysOfWeek);
    LOBYTE(v62) = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v65 = *v138;
    (*v138)(v64, v60);
    if ((v62 & 1) == 0)
    {
      v65(v61, v60);
      goto LABEL_7;
    }

    v130 = v65;
    DateComponents.weekday.setter();
    v66 = v114;
    Date.init()();
    v67 = v117;
    v68 = v118;
    (*v111)(v117, v112, v118);
    v69 = v119;
    v70 = v122;
    v71 = v120;
    (*v109)(v119, v110, v120);
    v72 = v121;
    (*v108)(v121, v103, v70);
    v73 = v116;
    Calendar.nextDate(after:matching:matchingPolicy:repeatedTimePolicy:direction:)();
    (*v107)(v72, v70);
    (*v106)(v69, v71);
    v74 = v68;
    v75 = v125;
    (*v105)(v67, v74);
    v76 = *v129;
    (*v129)(v66, v75);
    v77 = *v104;
    if ((*v104)(v73, 1, v75) == 1)
    {
      v61 = v124;
      v60 = v128;
      v130(v124, v128);
      sub_100012DF0(v73, &unk_1006B0000, &unk_100552AA0);
      v43 = v113;
      v59 = v126;
      goto LABEL_7;
    }

    v78 = v101;
    v102 = *v98;
    (v102)(v101, v73, v75);
    v79 = v100;
    v80 = v115;
    sub_100007204(v100, v115, &unk_1006B0000, &unk_100552AA0);
    if (v77(v80, 1, v75) == 1)
    {
      v81 = v124;
      v60 = v128;
      v130(v124, v128);
      sub_100012DF0(v79, &unk_1006B0000, &unk_100552AA0);
      sub_100012DF0(v115, &unk_1006B0000, &unk_100552AA0);
      (v102)(v79, v78, v75);
      v82 = v79;
      v61 = v81;
      v96(v82, 0, 1, v75);
    }

    else
    {
      sub_100012DF0(v115, &unk_1006B0000, &unk_100552AA0);
      v83 = v99;
      sub_100007204(v79, v99, &unk_1006B0000, &unk_100552AA0);
      if (v77(v83, 1, v75) != 1)
      {
        v84 = v95;
        v85 = v102;
        (v102)(v95, v99, v75);
        v86 = v101;
        v87 = static Date.< infix(_:_:)();
        v76(v84, v75);
        v61 = v124;
        v130(v124, v128);
        if (v87)
        {
          v88 = v100;
          sub_100012DF0(v100, &unk_1006B0000, &unk_100552AA0);
          v85(v88, v86, v75);
          v96(v88, 0, 1, v75);
        }

        else
        {
          v76(v86, v75);
        }

        v59 = v126;
        v60 = v128;
        goto LABEL_37;
      }

      v76(v101, v75);
      v61 = v124;
      v60 = v128;
      v130(v124, v128);
      sub_100012DF0(v99, &unk_1006B0000, &unk_100552AA0);
    }

    v59 = v126;
LABEL_37:
    v43 = v113;
LABEL_7:
    ++v58;
  }

  while (v58 != 8);
  (*(v94 + 8))(v127, v93);
  return (*(v91 + 8))(v123, v92);
}

void sub_10009EA98()
{
  v1 = v0;
  v2 = type metadata accessor for FMFLocationAlertTarget();
  v401 = *(v2 - 8);
  v402 = v2;
  __chkstk_darwin(v2);
  v415 = &v389 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10007EBC0(&qword_1006B0050, &unk_1005538A0);
  __chkstk_darwin(v4 - 8);
  v405 = &v389 - v5;
  v409 = sub_10007EBC0(&qword_1006B0020, &unk_100552AC0);
  __chkstk_darwin(v409);
  v393 = &v389 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v398 = &v389 - v8;
  v9 = type metadata accessor for FMFLocationAlertAddressType();
  v431 = *(v9 - 8);
  v432 = v9;
  __chkstk_darwin(v9);
  v414 = &v389 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v430 = &v389 - v12;
  v13 = sub_10007EBC0(&unk_1006BC950, &unk_10055CEA0);
  __chkstk_darwin(v13 - 8);
  v404 = &v389 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v428 = &v389 - v16;
  v17 = sub_10007EBC0(&unk_1006B0010, &unk_100552AB0);
  __chkstk_darwin(v17 - 8);
  v403 = &v389 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v427 = &v389 - v20;
  v21 = sub_10007EBC0(&unk_1006BC960, &unk_100565AB0);
  __chkstk_darwin(v21 - 8);
  v446 = &v389 - v22;
  v23 = sub_10007EBC0(&unk_1006BEF80, &unk_100565B90);
  __chkstk_darwin(v23 - 8);
  v399 = &v389 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v391 = &v389 - v26;
  __chkstk_darwin(v27);
  v453 = (&v389 - v28);
  v458 = type metadata accessor for FMFLocationAlert();
  v455 = *(v458 - 8);
  __chkstk_darwin(v458);
  v392 = &v389 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v445 = &v389 - v31;
  __chkstk_darwin(v32);
  v454 = &v389 - v33;
  v34 = type metadata accessor for TimeZone();
  v435 = *(v34 - 8);
  v436 = v34;
  __chkstk_darwin(v34);
  v416 = &v389 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v464 = type metadata accessor for FMFLocationAlertTriggerType();
  v461 = *(v464 - 8);
  __chkstk_darwin(v464);
  v400 = &v389 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v412 = &v389 - v38;
  __chkstk_darwin(v39);
  v413 = &v389 - v40;
  __chkstk_darwin(v41);
  v426 = &v389 - v42;
  __chkstk_darwin(v43);
  v443 = &v389 - v44;
  __chkstk_darwin(v45);
  v452 = &v389 - v46;
  __chkstk_darwin(v47);
  v451 = &v389 - v48;
  v49 = sub_10007EBC0(&qword_1006AFFF8, &qword_100552A98);
  __chkstk_darwin(v49 - 8);
  v434 = &v389 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v437 = &v389 - v52;
  v465 = type metadata accessor for FMFAddress();
  v466 = *(v465 - 1);
  __chkstk_darwin(v465);
  v429 = &v389 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v459 = sub_10007EBC0(&qword_1006B0100, &qword_100552B48);
  __chkstk_darwin(v459);
  v442 = (&v389 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v55);
  v460 = (&v389 - v56);
  v57 = sub_10007EBC0(&qword_1006B0040, &qword_100552AE0);
  __chkstk_darwin(v57 - 8);
  v444 = &v389 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v59);
  v419 = &v389 - v60;
  __chkstk_darwin(v61);
  v441 = &v389 - v62;
  __chkstk_darwin(v63);
  v448 = (&v389 - v64);
  __chkstk_darwin(v65);
  v417 = &v389 - v66;
  __chkstk_darwin(v67);
  v433 = &v389 - v68;
  __chkstk_darwin(v69);
  v457 = &v389 - v70;
  __chkstk_darwin(v71);
  v450 = &v389 - v72;
  __chkstk_darwin(v73);
  v467 = &v389 - v74;
  v75 = type metadata accessor for FMFLocation();
  v76 = *(v75 - 8);
  __chkstk_darwin(v75);
  v411 = &v389 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v78);
  v438 = &v389 - v79;
  __chkstk_darwin(v80);
  v396 = &v389 - v81;
  __chkstk_darwin(v82);
  v408 = &v389 - v83;
  __chkstk_darwin(v84);
  v395 = &v389 - v85;
  __chkstk_darwin(v86);
  v407 = &v389 - v87;
  __chkstk_darwin(v88);
  v456 = &v389 - v89;
  __chkstk_darwin(v90);
  v447 = &v389 - v91;
  __chkstk_darwin(v92);
  v94 = &v389 - v93;
  v95 = sub_10007EBC0(&qword_1006AF740, &unk_100552330);
  __chkstk_darwin(v95 - 8);
  v389 = &v389 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v97);
  v394 = &v389 - v98;
  __chkstk_darwin(v99);
  v390 = &v389 - v100;
  __chkstk_darwin(v101);
  v397 = &v389 - v102;
  __chkstk_darwin(v103);
  v424 = &v389 - v104;
  __chkstk_darwin(v105);
  v425 = &v389 - v106;
  __chkstk_darwin(v107);
  v423 = &v389 - v108;
  __chkstk_darwin(v109);
  v410 = &v389 - v110;
  __chkstk_darwin(v111);
  v440 = &v389 - v112;
  __chkstk_darwin(v113);
  v439 = &v389 - v114;
  __chkstk_darwin(v115);
  v418 = &v389 - v116;
  __chkstk_darwin(v117);
  v422 = &v389 - v118;
  __chkstk_darwin(v119);
  v421 = &v389 - v120;
  __chkstk_darwin(v121);
  v420 = &v389 - v122;
  __chkstk_darwin(v123);
  v449 = &v389 - v124;
  __chkstk_darwin(v125);
  v127 = &v389 - v126;
  __chkstk_darwin(v128);
  v130 = &v389 - v129;
  __chkstk_darwin(v131);
  v133 = &v389 - v132;
  v134 = sub_10007EBC0(&qword_1006B0038, &unk_10055EDB0);
  __chkstk_darwin(v134 - 8);
  v406 = &v389 - ((v135 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v136);
  v138 = &v389 - v137;
  v139 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController__selectedLocation;
  swift_beginAccess();
  v471 = v1;
  v468 = v139;
  sub_100007204(v1 + v139, v133, &qword_1006AF740, &unk_100552330);
  v140 = *(v76 + 48);
  v469 = v76 + 48;
  v470 = v140;
  v141 = v140(v133, 1, v75);
  v462 = v75;
  v463 = v76;
  if (v141)
  {
    v142 = &qword_1006AF740;
    v143 = &unk_100552330;
    v144 = v133;
  }

  else
  {
    (*(v76 + 16))(v94, v133, v75);
    sub_100012DF0(v133, &qword_1006AF740, &unk_100552330);
    FMFLocation.label.getter();
    (*(v76 + 8))(v94, v75);
    v145 = type metadata accessor for FMFLabel();
    v146 = *(v145 - 8);
    if ((*(v146 + 48))(v138, 1, v145) != 1)
    {
      v447 = FMFLabel.value.getter();
      v467 = v158;
      (*(v146 + 8))(v138, v145);
      v149 = v471;
      v150 = v462;
      v152 = v466;
      v147 = v470;
      v148 = v457;
      goto LABEL_16;
    }

    v142 = &qword_1006B0038;
    v143 = &unk_10055EDB0;
    v144 = v138;
  }

  sub_100012DF0(v144, v142, v143);
  v147 = v470;
  v148 = v457;
  v149 = v471;
  sub_100007204(v471 + v468, v130, &qword_1006AF740, &unk_100552330);
  v150 = v462;
  v151 = v147(v130, 1, v462);
  v152 = v466;
  if (v151)
  {
    sub_100012DF0(v130, &qword_1006AF740, &unk_100552330);
    v447 = 0;
    v467 = 0;
    goto LABEL_16;
  }

  v153 = v463;
  v154 = v447;
  (*(v463 + 16))(v447, v130, v150);
  sub_100012DF0(v130, &qword_1006AF740, &unk_100552330);
  v155 = v467;
  FMFLocation.address.getter();
  v156 = v153;
  v152 = v466;
  (*(v156 + 8))(v154, v150);
  v157 = v465;
  if ((*(v152 + 48))(v155, 1, v465) != 1)
  {
    v159 = FMFAddress.formattedAddressLines.getter();
    (*(v152 + 8))(v155, v157);
    if (v159)
    {
      if (v159[2])
      {
        v160 = v159[5];
        v447 = v159[4];
        v467 = v160;

        goto LABEL_15;
      }
    }

    v447 = 0;
    v467 = 0;
    goto LABEL_15;
  }

  sub_100012DF0(v155, &qword_1006B0040, &qword_100552AE0);
  v447 = 0;
  v467 = 0;
LABEL_15:
  v147 = v470;
LABEL_16:
  sub_100007204(v149 + v468, v127, &qword_1006AF740, &unk_100552330);
  if (v147(v127, 1, v150))
  {
    sub_100012DF0(v127, &qword_1006AF740, &unk_100552330);
    v161 = v450;
    (*(v152 + 56))(v450, 1, 1, v465);
  }

  else
  {
    v162 = v463;
    v163 = v456;
    (*(v463 + 16))(v456, v127, v150);
    sub_100012DF0(v127, &qword_1006AF740, &unk_100552330);
    v161 = v450;
    FMFLocation.address.getter();
    v147 = v470;
    v164 = v162;
    v148 = v457;
    (*(v164 + 8))(v163, v150);
  }

  v165 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_myCurrentLocation;
  swift_beginAccess();
  v457 = v165;
  v166 = v149 + v165;
  v167 = v449;
  sub_100007204(v166, v449, &qword_1006AF740, &unk_100552330);
  if (v147(v167, 1, v150))
  {
    sub_100012DF0(v167, &qword_1006AF740, &unk_100552330);
    v168 = v465;
    (*(v152 + 56))(v148, 1, 1, v465);
  }

  else
  {
    v169 = v463;
    v170 = v456;
    (*(v463 + 16))(v456, v167, v150);
    sub_100012DF0(v167, &qword_1006AF740, &unk_100552330);
    FMFLocation.address.getter();
    (*(v169 + 8))(v170, v150);
    v168 = v465;
  }

  v171 = *(v459 + 48);
  v172 = v460;
  sub_100007204(v161, v460, &qword_1006B0040, &qword_100552AE0);
  v173 = v172;
  sub_100007204(v148, v172 + v171, &qword_1006B0040, &qword_100552AE0);
  v174 = v152 + 48;
  v175 = *(v152 + 48);
  v176 = (v175)(v173, 1, v168);
  v450 = v175;
  if (v176 == 1)
  {
    sub_100012DF0(v148, &qword_1006B0040, &qword_100552AE0);
    v177 = v460;
    sub_100012DF0(v161, &qword_1006B0040, &qword_100552AE0);
    if ((v175)(&v177[v171], 1, v168) == 1)
    {
      sub_100012DF0(v177, &qword_1006B0040, &qword_100552AE0);
      goto LABEL_31;
    }

    goto LABEL_27;
  }

  v178 = v174;
  v179 = v433;
  sub_100007204(v173, v433, &qword_1006B0040, &qword_100552AE0);
  v449 = v178;
  if ((v175)(v173 + v171, 1, v168) == 1)
  {
    sub_100012DF0(v148, &qword_1006B0040, &qword_100552AE0);
    v177 = v460;
    sub_100012DF0(v161, &qword_1006B0040, &qword_100552AE0);
    (*(v466 + 8))(v179, v168);
LABEL_27:
    sub_100012DF0(v177, &qword_1006B0100, &qword_100552B48);
    goto LABEL_28;
  }

  v183 = v466;
  v184 = v173 + v171;
  v185 = v429;
  (*(v466 + 32))(v429, v184, v168);
  sub_1000BBEF8(&qword_1006B0108, &type metadata accessor for FMFAddress, &protocol conformance descriptor for FMFAddress);
  v186 = v179;
  v187 = v173;
  v188 = dispatch thunk of static Equatable.== infix(_:_:)();
  v189 = *(v183 + 8);
  v189(v185, v465);
  sub_100012DF0(v148, &qword_1006B0040, &qword_100552AE0);
  sub_100012DF0(v161, &qword_1006B0040, &qword_100552AE0);
  v189(v186, v465);
  v168 = v465;
  v150 = v462;
  sub_100012DF0(v187, &qword_1006B0040, &qword_100552AE0);
  if (v188)
  {
LABEL_31:

    v190 = v420;
    sub_100007204(v471 + v457, v420, &qword_1006AF740, &unk_100552330);
    v191 = v470;
    if ((v470)(v190, 1, v150))
    {
      sub_100012DF0(v190, &qword_1006AF740, &unk_100552330);
      v192 = v421;
    }

    else
    {
      v214 = v463;
      v215 = v407;
      (*(v463 + 16))(v407, v190, v150);
      sub_100012DF0(v190, &qword_1006AF740, &unk_100552330);
      v216 = v406;
      FMFLocation.label.getter();
      (*(v214 + 8))(v215, v150);
      v217 = type metadata accessor for FMFLabel();
      v218 = *(v217 - 8);
      v219 = (*(v218 + 48))(v216, 1, v217);
      v192 = v421;
      if (v219 != 1)
      {
        v447 = FMFLabel.value.getter();
        v205 = v233;
        (*(v218 + 8))(v216, v217);
        v202 = v471;
        v204 = v452;
        goto LABEL_60;
      }

      sub_100012DF0(v216, &qword_1006B0038, &unk_10055EDB0);
      v191 = v470;
    }

    sub_100007204(v471 + v457, v192, &qword_1006AF740, &unk_100552330);
    v220 = v191(v192, 1, v150);
    v221 = v417;
    if (v220)
    {
      v222 = &qword_1006AF740;
      v223 = &unk_100552330;
      v224 = v192;
    }

    else
    {
      v231 = v463;
      v232 = v395;
      (*(v463 + 16))(v395, v192, v150);
      sub_100012DF0(v192, &qword_1006AF740, &unk_100552330);
      FMFLocation.address.getter();
      (*(v231 + 8))(v232, v150);
      if ((v450)(v221, 1, v168) != 1)
      {
        v234 = FMFAddress.formattedAddressLines.getter();
        (*(v466 + 8))(v221, v168);
        v202 = v471;
        if (v234)
        {
          v204 = v452;
          if (v234[2])
          {
            v205 = v234[5];
            v447 = v234[4];
          }

          else
          {

            v447 = 0;
            v205 = 0;
          }
        }

        else
        {
          v447 = 0;
          v205 = 0;
          v204 = v452;
        }

LABEL_60:
        v235 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_myCurrentUnshiftedLocation;
        swift_beginAccess();
        v236 = v202 + v235;
        v237 = v422;
        sub_100007204(v236, v422, &qword_1006AF740, &unk_100552330);
        if ((v470)(v237, 1, v150) == 1)
        {
          sub_100012DF0(v237, &qword_1006AF740, &unk_100552330);
        }

        else
        {
          v238 = v463;
          v239 = v408;
          (*(v463 + 32))(v408, v237, v150);
          v240 = *(v238 + 16);
          v467 = v205;
          v241 = v418;
          v240(v418, v239, v150);
          (*(v238 + 56))(v241, 0, 1, v150);
          v242 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_selectedLocationTimeZone;
          swift_beginAccess();
          v243 = v437;
          sub_100007204(v202 + v242, v437, &qword_1006AFFF8, &qword_100552A98);
          sub_100097820(v241, v243);
          sub_100012DF0(v243, &qword_1006AFFF8, &qword_100552A98);
          v244 = v241;
          v205 = v467;
          sub_100012DF0(v244, &qword_1006AF740, &unk_100552330);
          (*(v238 + 8))(v239, v150);
        }

        v203 = v458;
        goto LABEL_64;
      }

      v222 = &qword_1006B0040;
      v223 = &qword_100552AE0;
      v224 = v221;
    }

    sub_100012DF0(v224, v222, v223);
    v447 = 0;
    v205 = 0;
    v202 = v471;
    v204 = v452;
    goto LABEL_60;
  }

LABEL_28:
  v180 = v439;
  sub_100007204(v471 + v468, v439, &qword_1006AF740, &unk_100552330);
  v181 = v470;
  if ((v470)(v180, 1, v150))
  {
    sub_100012DF0(v180, &qword_1006AF740, &unk_100552330);
    v182 = v448;
    (*(v466 + 56))(v448, 1, 1, v168);
  }

  else
  {
    v193 = v463;
    v194 = v456;
    (*(v463 + 16))(v456, v180, v150);
    sub_100012DF0(v180, &qword_1006AF740, &unk_100552330);
    v182 = v448;
    FMFLocation.address.getter();
    v195 = v194;
    v181 = v470;
    (*(v193 + 8))(v195, v150);
  }

  v197 = v441;
  v196 = v442;
  v198 = v440;
  sub_100007204(v471 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_friendLocation, v440, &qword_1006AF740, &unk_100552330);
  if (v181(v198, 1, v150) == 1)
  {
    sub_100012DF0(v198, &qword_1006AF740, &unk_100552330);
    (*(v466 + 56))(v197, 1, 1, v168);
  }

  else
  {
    FMFLocation.address.getter();
    (*(v463 + 8))(v198, v150);
  }

  v199 = *(v459 + 48);
  sub_100007204(v182, v196, &qword_1006B0040, &qword_100552AE0);
  sub_100007204(v197, v196 + v199, &qword_1006B0040, &qword_100552AE0);
  v200 = v182;
  v201 = v450;
  if ((v450)(v196, 1, v168) != 1)
  {
    v206 = v419;
    sub_100007204(v196, v419, &qword_1006B0040, &qword_100552AE0);
    if ((v201)(v196 + v199, 1, v168) != 1)
    {
      v207 = v466;
      v208 = v429;
      (*(v466 + 32))(v429, v196 + v199, v168);
      sub_1000BBEF8(&qword_1006B0108, &type metadata accessor for FMFAddress, &protocol conformance descriptor for FMFAddress);
      v209 = v206;
      v210 = dispatch thunk of static Equatable.== infix(_:_:)();
      v211 = *(v207 + 8);
      v211(v208, v168);
      sub_100012DF0(v197, &qword_1006B0040, &qword_100552AE0);
      sub_100012DF0(v448, &qword_1006B0040, &qword_100552AE0);
      v211(v209, v168);
      sub_100012DF0(v196, &qword_1006B0040, &qword_100552AE0);
      v202 = v471;
      v203 = v458;
      v204 = v452;
      v205 = v467;
      if ((v210 & 1) == 0)
      {
        goto LABEL_64;
      }

      goto LABEL_44;
    }

    sub_100012DF0(v197, &qword_1006B0040, &qword_100552AE0);
    sub_100012DF0(v448, &qword_1006B0040, &qword_100552AE0);
    (*(v466 + 8))(v206, v168);
LABEL_42:
    sub_100012DF0(v196, &qword_1006B0100, &qword_100552B48);
    v202 = v471;
    v203 = v458;
    v204 = v452;
    v205 = v467;
    goto LABEL_64;
  }

  sub_100012DF0(v197, &qword_1006B0040, &qword_100552AE0);
  sub_100012DF0(v200, &qword_1006B0040, &qword_100552AE0);
  if ((v201)(v196 + v199, 1, v168) != 1)
  {
    goto LABEL_42;
  }

  sub_100012DF0(v196, &qword_1006B0040, &qword_100552AE0);
  v202 = v471;
  v203 = v458;
  v204 = v452;
  v205 = v467;
LABEL_44:
  v212 = v410;
  sub_100007204(v202 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_friendUnshiftedLocation, v410, &qword_1006AF740, &unk_100552330);
  v213 = v462;
  if ((v470)(v212, 1, v462) == 1)
  {
    sub_100012DF0(v212, &qword_1006AF740, &unk_100552330);
  }

  else
  {
    v225 = v463;
    v226 = v396;
    (*(v463 + 32))(v396, v212, v213);
    v227 = v418;
    (*(v225 + 16))(v418, v226, v213);
    (*(v225 + 56))(v227, 0, 1, v213);
    v228 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_selectedLocationTimeZone;
    swift_beginAccess();
    v229 = v437;
    sub_100007204(v202 + v228, v437, &qword_1006AFFF8, &qword_100552A98);
    sub_100097820(v227, v229);
    v203 = v458;
    sub_100012DF0(v229, &qword_1006AFFF8, &qword_100552A98);
    v230 = v227;
    v205 = v467;
    sub_100012DF0(v230, &qword_1006AF740, &unk_100552330);
    (*(v225 + 8))(v226, v213);
  }

LABEL_64:
  v245 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_triggerType;
  swift_beginAccess();
  v246 = v461;
  v247 = *(v461 + 16);
  v452 = v245;
  v248 = v451;
  v449 = v461 + 16;
  v442 = v247;
  (v247)(v451, v202 + v245, v464);
  v249 = *(v246 + 104);
  LODWORD(v441) = enum case for FMFLocationAlertTriggerType.scheduled(_:);
  v450 = (v246 + 104);
  v448 = v249;
  (v249)(v204);
  v250 = sub_1000BBEF8(&qword_1006B00A0, &type metadata accessor for FMFLocationAlertTriggerType, &protocol conformance descriptor for FMFLocationAlertTriggerType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  v459 = v250;
  dispatch thunk of RawRepresentable.rawValue.getter();
  v467 = v205;
  if (v472 == v480 && v473 == v481)
  {
    v251 = 1;
  }

  else
  {
    v251 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v252 = *(v461 + 8);
  v253 = v204;
  v254 = v464;
  v252(v253, v464);
  v460 = v252;
  v252(v248, v254);

  v255 = &off_1006AE000;
  v256 = v453;
  if (v251)
  {
    v257 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_selectedLocationTimeZone;
    swift_beginAccess();
    v258 = v434;
    sub_100007204(v202 + v257, v434, &qword_1006AFFF8, &qword_100552A98);
    v260 = v435;
    v259 = v436;
    if ((*(v435 + 48))(v258, 1, v436) == 1)
    {

      sub_100012DF0(v258, &qword_1006AFFF8, &qword_100552A98);
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v261 = type metadata accessor for Logger();
      sub_100005B14(v261, qword_1006D4630);
      v262 = Logger.logObject.getter();
      v263 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v262, v263))
      {
        goto LABEL_84;
      }

      v264 = swift_slowAlloc();
      *v264 = 0;
      v265 = "No time zone to set alert on";
      goto LABEL_83;
    }

    v266 = v258;
    v267 = v416;
    (*(v260 + 32))(v416, v266, v259);
    v268 = v437;
    (*(v260 + 16))(v437, v267, v259);
    (*(v260 + 56))(v268, 0, 1, v259);
    swift_beginAccess();
    FMFSchedule.timeZone.setter();
    swift_endAccess();
    (*(v260 + 8))(v267, v259);
    v255 = &off_1006AE000;
  }

  v269 = *(v202 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_selectedRadius);
  v270 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_locationAlert;
  swift_beginAccess();
  sub_100007204(v202 + v270, v256, &unk_1006BEF80, &unk_100565B90);
  v271 = v455;
  v272 = *(v455 + 48);
  if (v272(v256, 1, v203) != 1)
  {
    (*(v271 + 32))(v454, v256, v203);
    v280 = v271;
    if (v255[380] != -1)
    {
      swift_once();
    }

    v281 = type metadata accessor for Logger();
    sub_100005B14(v281, qword_1006D4630);
    v282 = Logger.logObject.getter();
    v283 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v282, v283))
    {
      v284 = swift_slowAlloc();
      *v284 = 134217984;
      *(v284 + 4) = v269;
      _os_log_impl(&_mh_execute_header, v282, v283, "LocationAlertViewController: Updating an existing alert (radius=%fm)", v284, 0xCu);
    }

    (*(v280 + 16))(v445, v454, v203);
    v285 = v423;
    sub_100007204(v202 + v468, v423, &qword_1006AF740, &unk_100552330);
    v286 = v462;
    v287 = (v470)(v285, 1, v462);
    v288 = v425;
    if (v287)
    {
      sub_100012DF0(v285, &qword_1006AF740, &unk_100552330);
      v457 = 0;
    }

    else
    {
      v302 = v463;
      v303 = v456;
      (*(v463 + 16))(v456, v285, v286);
      sub_100012DF0(v285, &qword_1006AF740, &unk_100552330);
      v457 = FMFLocation.location.getter();
      (*(v302 + 8))(v303, v286);
    }

    v304 = v465;
    sub_100007204(v202 + v468, v288, &qword_1006AF740, &unk_100552330);
    if ((v470)(v288, 1, v286))
    {
      sub_100012DF0(v288, &qword_1006AF740, &unk_100552330);
      (*(v466 + 56))(v444, 1, 1, v304);
    }

    else
    {
      v305 = v463;
      v306 = v456;
      (*(v463 + 16))(v456, v288, v286);
      sub_100012DF0(v288, &qword_1006AF740, &unk_100552330);
      FMFLocation.address.getter();
      (*(v305 + 8))(v306, v286);
    }

    v307 = v452;
    v308 = v446;
    v309 = v464;
    v310 = v442;
    v442(v446, &v452[v202], v464);
    (*(v461 + 56))(v308, 0, 1, v309);
    sub_10009D68C();
    sub_10009D4F8();
    v310(v443, &v307[v202], v309);
    v311 = v426;
    (v448)(v426, v441, v309);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v472 == v478 && v473 == v479)
    {
      v312 = v311;
      v313 = v464;
      v314 = v460;
      v460(v312, v464);
      v314(v443, v313);
    }

    else
    {
      v315 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v316 = v311;
      v317 = v464;
      v318 = v460;
      v460(v316, v464);
      v318(v443, v317);

      if ((v315 & 1) == 0)
      {
        v325 = type metadata accessor for FMFSchedule();
        (*(*(v325 - 8) + 56))(v427, 1, 1, v325);
        goto LABEL_105;
      }
    }

    v319 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_schedule;
    v320 = v471;
    swift_beginAccess();
    v321 = type metadata accessor for FMFSchedule();
    v322 = *(v321 - 8);
    v323 = v320 + v319;
    v324 = v427;
    (*(v322 + 16))(v427, v323, v321);
    (*(v322 + 56))(v324, 0, 1, v321);
LABEL_105:
    v326 = type metadata accessor for FMFLocationAlertAcceptanceStatus();
    (*(*(v326 - 8) + 56))(v428, 1, 1, v326);
    type metadata accessor for FMFUpdateLocationAlertAction();
    swift_allocObject();
    v327 = FMFUpdateLocationAlertAction.init(locationAlert:location:radius:address:label:triggerType:isOn:repeating:phoneNumbers:emails:schedule:ckRecordName:ckRecordZoneOwnerName:acceptanceStatus:)();
    (*(v455 + 8))(v454, v458);
LABEL_106:

    v328 = v471;
    sub_100437A74();
    v329 = swift_allocObject();
    *(v329 + 16) = v328;

    v330 = v328;
    sub_1000FB600(v327, sub_1000BBEE0, v329);

    return;
  }

  v466 = v272;
  sub_100012DF0(v256, &unk_1006BEF80, &unk_100565B90);
  if (v255[380] != -1)
  {
    swift_once();
  }

  v273 = type metadata accessor for Logger();
  v274 = sub_100005B14(v273, qword_1006D4630);
  v275 = Logger.logObject.getter();
  v276 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v275, v276))
  {
    v277 = swift_slowAlloc();
    *v277 = 134217984;
    *(v277 + 4) = v269;
    _os_log_impl(&_mh_execute_header, v275, v276, "LocationAlertViewController: Creating a new alert (radius=%fm)", v277, 0xCu);
    v202 = v471;
  }

  v278 = v424;
  sub_100007204(v202 + v468, v424, &qword_1006AF740, &unk_100552330);
  v279 = v462;
  if ((v470)(v278, 1, v462) == 1)
  {

    sub_100012DF0(v278, &qword_1006AF740, &unk_100552330);
    v262 = Logger.logObject.getter();
    v263 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v262, v263))
    {
LABEL_84:

      return;
    }

    v264 = swift_slowAlloc();
    *v264 = 0;
    v265 = "No location to set alert on";
LABEL_83:
    _os_log_impl(&_mh_execute_header, v262, v263, v265, v264, 2u);

    goto LABEL_84;
  }

  v289 = v463;
  v290 = *(v463 + 32);
  v291 = v438;
  v454 = (v463 + 32);
  v453 = v290;
  v290(v438, v278, v279);
  v292 = sub_10009D2F8()[2];

  if (v292)
  {
    v461 = v270;
    v451 = v274;
    v443 = *(v431 + 104);
    v444 = (v431 + 104);
    (v443)(v430, enum case for FMFLocationAlertAddressType.custom(_:), v432);
    v293 = *(v289 + 16);
    v294 = v397;
    v468 = v289 + 16;
    v465 = v293;
    (v293)(v397, v291, v279);
    v445 = *(v289 + 56);
    v446 = (v289 + 56);
    (v445)(v294, 0, 1, v279);
    v295 = *(v409 + 48);
    v296 = v398;
    sub_100007204(v294, v398, &qword_1006AF740, &unk_100552330);
    sub_100007204(v202 + v457, v296 + v295, &qword_1006AF740, &unk_100552330);
    v297 = v470;
    if ((v470)(v296, 1, v279) == 1)
    {
      sub_100012DF0(v294, &qword_1006AF740, &unk_100552330);
      v298 = v297(v296 + v295, 1, v279);
      v299 = v438;
      if (v298 == 1)
      {
        v300 = v471;
        v301 = v405;
LABEL_116:
        v345 = v461;
        sub_100012DF0(v296, &qword_1006AF740, &unk_100552330);
LABEL_123:
        v352 = v430;
        v353 = v432;
        (*(v431 + 8))(v430, v432);
        (v443)(v352, enum case for FMFLocationAlertAddressType.currentLocation(_:), v353);
LABEL_124:
        sub_100007204(v300 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_friendForAlert, v301, &qword_1006B0050, &unk_1005538A0);
        v354 = type metadata accessor for FMFFriend();
        v355 = v300;
        v356 = *(v354 - 8);
        if ((*(v356 + 48))(v301, 1, v354) == 1)
        {
          sub_100012DF0(v301, &qword_1006B0050, &unk_1005538A0);
          v357 = v391;
          sub_100007204(v355 + v345, v391, &unk_1006BEF80, &unk_100565B90);
          v358 = v458;
          v359 = v355;
          if ((v466)(v357, 1, v458))
          {
            sub_100012DF0(v357, &unk_1006BEF80, &unk_100565B90);
            v470 = 0;
            v469 = 0;
          }

          else
          {
            v362 = v455;
            v363 = v392;
            (*(v455 + 16))(v392, v357, v358);
            sub_100012DF0(v357, &unk_1006BEF80, &unk_100565B90);
            v470 = FMFLocationAlert.friendId.getter();
            v469 = v364;
            (*(v362 + 8))(v363, v358);
          }

          v361 = v358;
        }

        else
        {
          v470 = FMFFriend.identifier.getter();
          v469 = v360;
          (*(v356 + 8))(v301, v354);
          v359 = v355;
          v361 = v458;
        }

        v365 = v399;
        sub_100007204(v359 + v345, v399, &unk_1006BEF80, &unk_100565B90);
        if ((v466)(v365, 1, v361))
        {
          sub_100012DF0(v365, &unk_1006BEF80, &unk_100565B90);
          v466 = 0;
        }

        else
        {
          v366 = v455;
          v367 = v392;
          (*(v455 + 16))(v392, v365, v361);
          sub_100012DF0(v365, &unk_1006BEF80, &unk_100565B90);
          v466 = FMFLocationAlert.followerIds.getter();
          (*(v366 + 8))(v367, v361);
        }

        v368 = v359;
        sub_10009D4F8();
        sub_10009D68C();
        (v465)(v411, v438, v462);
        (*(v431 + 16))(v414, v430, v432);
        (*(v401 + 16))(v415, v359 + OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_alertTarget, v402);
        v369 = v452;
        v370 = v464;
        v371 = v442;
        v442(v413, &v452[v368], v464);
        v371(v412, &v369[v368], v370);
        v372 = v400;
        (v448)(v400, v441, v370);
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        if (v472 == v478 && v473 == v479)
        {
          v373 = v372;
          v374 = v464;
          v375 = v460;
          v460(v373, v464);
          v375(v412, v374);

          v376 = v463;
          v377 = v403;
        }

        else
        {
          v378 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v379 = v372;
          v380 = v464;
          v381 = v460;
          v460(v379, v464);
          v381(v412, v380);

          v376 = v463;
          v377 = v403;
          if ((v378 & 1) == 0)
          {
            v386 = type metadata accessor for FMFSchedule();
            (*(*(v386 - 8) + 56))(v377, 1, 1, v386);
            goto LABEL_139;
          }
        }

        v382 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_schedule;
        v383 = v471;
        swift_beginAccess();
        v384 = type metadata accessor for FMFSchedule();
        v385 = *(v384 - 8);
        (*(v385 + 16))(v377, v383 + v382, v384);
        (*(v385 + 56))(v377, 0, 1, v384);
LABEL_139:
        v387 = v462;
        v388 = type metadata accessor for FMFLocationAlertAcceptanceStatus();
        (*(*(v388 - 8) + 56))(v404, 1, 1, v388);
        type metadata accessor for FMFAddLocationAlertAction();
        swift_allocObject();
        v327 = FMFAddLocationAlertAction.init(friendId:followerIds:emails:phoneNumbers:location:address:label:addressType:radius:locationAlertTarget:triggerType:repeating:schedule:ckRecordName:ckRecordZoneOwnerName:acceptanceStatus:)();
        (*(v431 + 8))(v430, v432);
        (*(v376 + 8))(v438, v387);
        goto LABEL_106;
      }
    }

    else
    {
      v336 = v390;
      sub_100007204(v296, v390, &qword_1006AF740, &unk_100552330);
      if (v297(v296 + v295, 1, v279) != 1)
      {
        v347 = v456;
        v453(v456, v296 + v295, v279);
        sub_1000BBEF8(&qword_1006B0048, &type metadata accessor for FMFLocation, &protocol conformance descriptor for FMFLocation);
        LODWORD(v457) = dispatch thunk of static Equatable.== infix(_:_:)();
        v348 = *(v463 + 8);
        v348(v347, v279);
        sub_100012DF0(v294, &qword_1006AF740, &unk_100552330);
        v348(v336, v279);
        sub_100012DF0(v296, &qword_1006AF740, &unk_100552330);
        v300 = v471;
        v299 = v438;
        v301 = v405;
        v345 = v461;
        if (v457)
        {
          goto LABEL_123;
        }

LABEL_113:
        v337 = v394;
        v338 = v462;
        (v465)(v394, v299, v462);
        (v445)(v337, 0, 1, v338);
        v339 = OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_friendLocation;
        v340 = *(v409 + 48);
        v341 = v393;
        sub_100007204(v337, v393, &qword_1006AF740, &unk_100552330);
        v342 = v471 + v339;
        v300 = v471;
        sub_100007204(v342, v341 + v340, &qword_1006AF740, &unk_100552330);
        v343 = v470;
        if ((v470)(v341, 1, v338) == 1)
        {
          sub_100012DF0(v337, &qword_1006AF740, &unk_100552330);
          v344 = v343(v341 + v340, 1, v338);
          v301 = v405;
          if (v344 == 1)
          {
            v296 = v341;
            goto LABEL_116;
          }
        }

        else
        {
          v346 = v389;
          sub_100007204(v341, v389, &qword_1006AF740, &unk_100552330);
          if (v343(v341 + v340, 1, v338) != 1)
          {
            v349 = v456;
            v453(v456, v341 + v340, v338);
            sub_1000BBEF8(&qword_1006B0048, &type metadata accessor for FMFLocation, &protocol conformance descriptor for FMFLocation);
            v350 = v341;
            LODWORD(v470) = dispatch thunk of static Equatable.== infix(_:_:)();
            v351 = *(v463 + 8);
            v351(v349, v338);
            sub_100012DF0(v394, &qword_1006AF740, &unk_100552330);
            v351(v346, v338);
            v300 = v471;
            sub_100012DF0(v350, &qword_1006AF740, &unk_100552330);
            v345 = v461;
            v301 = v405;
            if ((v470 & 1) == 0)
            {
              goto LABEL_124;
            }

            goto LABEL_123;
          }

          sub_100012DF0(v394, &qword_1006AF740, &unk_100552330);
          (*(v463 + 8))(v346, v338);
          v301 = v405;
        }

        sub_100012DF0(v341, &qword_1006B0020, &unk_100552AC0);
        v345 = v461;
        goto LABEL_124;
      }

      sub_100012DF0(v294, &qword_1006AF740, &unk_100552330);
      (*(v463 + 8))(v336, v279);
      v299 = v438;
    }

    sub_100012DF0(v296, &qword_1006B0020, &unk_100552AC0);
    goto LABEL_113;
  }

  v331 = Logger.logObject.getter();
  v332 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v331, v332))
  {
    v333 = swift_slowAlloc();
    *v333 = 0;
    _os_log_impl(&_mh_execute_header, v331, v332, "No friend handles to set alert on", v333, 2u);
    v291 = v438;
  }

  v334 = swift_allocObject();
  *(v334 + 16) = 0;
  *(v334 + 24) = 0;
  v476 = sub_100097224;
  v477 = v334;
  v472 = _NSConcreteStackBlock;
  v473 = 1107296256;
  v474 = sub_100004AE4;
  v475 = &unk_100624A88;
  v335 = _Block_copy(&v472);

  [v202 dismissViewControllerAnimated:1 completion:v335];
  _Block_release(v335);
  (*(v463 + 8))(v291, v462);
}

void sub_1000A25C0(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = sub_10007EBC0(&qword_1006B0050, &unk_1005538A0);
  __chkstk_darwin(v5 - 8);
  v7 = &v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v106 - v9;
  v11 = sub_10007EBC0(&unk_1006B0110, &unk_100552B50);
  __chkstk_darwin(v11 - 8);
  v13 = &v106 - v12;
  v14 = type metadata accessor for FMFActionsError();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v106 - v19;
  sub_1003EB538();
  if (!a2)
  {
    v45 = swift_allocObject();
    *(v45 + 16) = 0;
    *(v45 + 24) = 0;
    aBlock[4] = sub_100097224;
    aBlock[5] = v45;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004AE4;
    aBlock[3] = &unk_100624AD8;
    v46 = _Block_copy(aBlock);

    [a3 dismissViewControllerAnimated:1 completion:v46];
    _Block_release(v46);
    return;
  }

  v108 = v17;
  v109 = v13;
  swift_errorRetain();
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_100005B14(v21, qword_1006D4630);
  swift_errorRetain();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();

  v24 = os_log_type_enabled(v22, v23);
  v110 = a3;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v107 = v20;
    v26 = v25;
    v106 = swift_slowAlloc();
    aBlock[0] = v106;
    *v26 = 136315138;
    swift_getErrorValue();
    v27 = Error.localizedDescription.getter();
    v29 = v15;
    v30 = v14;
    v31 = v10;
    v32 = v7;
    v33 = a2;
    v34 = sub_100005B4C(v27, v28, aBlock);

    *(v26 + 4) = v34;
    a2 = v33;
    v7 = v32;
    v10 = v31;
    v14 = v30;
    v15 = v29;
    _os_log_impl(&_mh_execute_header, v22, v23, "Error creating action to save alert %s", v26, 0xCu);
    sub_100006060(v106);

    v20 = v107;
  }

  v35 = v109;
  swift_getErrorValue();
  if (sub_1000A3444(v115, v116))
  {
    v36 = objc_opt_self();
    v37 = [v36 mainBundle];
    v118._object = 0x800000010057ABB0;
    v38._countAndFlagsBits = 0xD00000000000002ALL;
    v38._object = 0x800000010057B820;
    v39.value._object = 0x800000010057AB90;
    v118._countAndFlagsBits = 0xD000000000000017;
    v39.value._countAndFlagsBits = 0xD000000000000012;
    v40._countAndFlagsBits = 0;
    v40._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v38, v39, v37, v40, v118);

    v41 = [v36 mainBundle];
    v119._object = 0x800000010057ABB0;
    v42._countAndFlagsBits = 0xD00000000000002CLL;
    v42._object = 0x800000010057B850;
    v43.value._object = 0x800000010057AB90;
    v119._countAndFlagsBits = 0xD000000000000017;
    v43.value._countAndFlagsBits = 0xD000000000000012;
    v44._countAndFlagsBits = 0;
    v44._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v42, v43, v41, v44, v119);

    sub_1000A3844();
  }

  else
  {
    aBlock[0] = a2;
    v109 = a2;
    swift_errorRetain();
    sub_10007EBC0(&unk_1006AF7B0, &qword_100552E20);
    v47 = swift_dynamicCast();
    v48 = *(v15 + 56);
    v49 = v110;
    if (v47)
    {
      v48(v35, 0, 1, v14);
      (*(v15 + 32))(v20, v35, v14);
      v50 = v108;
      (*(v15 + 104))(v108, enum case for FMFActionsError.unavailableInDemoMode(_:), v14);
      v51 = static FMFActionsError.== infix(_:_:)();
      v52 = v20;
      v53 = *(v15 + 8);
      v53(v50, v14);
      if (v51)
      {
        v54 = [objc_opt_self() mainBundle];
        v120._object = 0x800000010057B7E0;
        v55._countAndFlagsBits = 0xD00000000000001ELL;
        v55._object = 0x800000010057B7C0;
        v120._countAndFlagsBits = 0xD000000000000030;
        v56._countAndFlagsBits = 0;
        v56._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v55, 0, v54, v56, v120);

        sub_1000A3B40();

        v53(v52, v14);
        return;
      }

      v53(v52, v14);
    }

    else
    {
      v48(v35, 1, 1, v14);
      sub_100012DF0(v35, &unk_1006B0110, &unk_100552B50);
    }

    swift_getErrorValue();
    if (sub_1000A3D48(v113, v114))
    {
      sub_100007204(&v49[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_friendForAlert], v10, &qword_1006B0050, &unk_1005538A0);
      v57 = type metadata accessor for FMFFriend();
      v58 = *(v57 - 8);
      if ((*(v58 + 48))(v10, 1, v57) == 1)
      {
        sub_100012DF0(v10, &qword_1006B0050, &unk_1005538A0);
        v59 = [objc_opt_self() mainBundle];
        v121._object = 0x800000010057ABB0;
        v60._countAndFlagsBits = 0xD00000000000002ELL;
        v60._object = 0x800000010057B730;
        v61.value._object = 0x800000010057AB90;
        v121._countAndFlagsBits = 0xD000000000000017;
        v61.value._countAndFlagsBits = 0xD000000000000012;
        v62._countAndFlagsBits = 0;
        v62._object = 0xE000000000000000;
        v63 = NSLocalizedString(_:tableName:bundle:value:comment:)(v60, v61, v59, v62, v121);
        countAndFlagsBits = v63._countAndFlagsBits;
        object = v63._object;
      }

      else
      {
        countAndFlagsBits = FMFFriend.name.getter();
        object = v75;
        (*(v58 + 8))(v10, v57);
      }

      v76 = *&v49[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_doneButtonItem];
      if (v76)
      {
        [v76 setEnabled:1];
      }

      v77 = objc_opt_self();
      v78 = [v77 mainBundle];
      v123._object = 0x800000010057ABB0;
      v79._countAndFlagsBits = 0xD000000000000025;
      v79._object = 0x800000010057B760;
      v80.value._object = 0x800000010057AB90;
      v123._countAndFlagsBits = 0xD000000000000017;
      v80.value._countAndFlagsBits = 0xD000000000000012;
      v81._countAndFlagsBits = 0;
      v81._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v79, v80, v78, v81, v123);

      v82 = [v77 mainBundle];
      v124._object = 0x800000010057ABB0;
      v83._countAndFlagsBits = 0xD000000000000027;
      v83._object = 0x800000010057B790;
      v84.value._object = 0x800000010057AB90;
      v124._countAndFlagsBits = 0xD000000000000017;
      v84.value._countAndFlagsBits = 0xD000000000000012;
      v85._countAndFlagsBits = 0;
      v85._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v83, v84, v82, v85, v124);

      sub_10007EBC0(&unk_1006B20B0, &unk_1005523B0);
      v86 = swift_allocObject();
      *(v86 + 16) = xmmword_100552220;
      *(v86 + 56) = &type metadata for String;
      *(v86 + 64) = sub_10008EE84();
      *(v86 + 32) = countAndFlagsBits;
      *(v86 + 40) = object;
      String.init(format:_:)();

      sub_1000A4330();
    }

    else
    {
      swift_getErrorValue();
      if (sub_1000A4614(v111, v112))
      {
        sub_100007204(&v49[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_friendForAlert], v7, &qword_1006B0050, &unk_1005538A0);
        v66 = type metadata accessor for FMFFriend();
        v67 = *(v66 - 8);
        if ((*(v67 + 48))(v7, 1, v66) == 1)
        {
          sub_100012DF0(v7, &qword_1006B0050, &unk_1005538A0);
          v68 = [objc_opt_self() mainBundle];
          v122._object = 0x800000010057ABB0;
          v69._countAndFlagsBits = 0xD000000000000036;
          v69._object = 0x800000010057B690;
          v70.value._object = 0x800000010057AB90;
          v122._countAndFlagsBits = 0xD000000000000017;
          v70.value._countAndFlagsBits = 0xD000000000000012;
          v71._countAndFlagsBits = 0;
          v71._object = 0xE000000000000000;
          v72 = NSLocalizedString(_:tableName:bundle:value:comment:)(v69, v70, v68, v71, v122);
          v73 = v72._countAndFlagsBits;
          v74 = v72._object;
        }

        else
        {
          v73 = FMFFriend.name.getter();
          v74 = v94;
          (*(v67 + 8))(v7, v66);
        }

        v95 = *&v110[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_doneButtonItem];
        if (v95)
        {
          [v95 setEnabled:1];
        }

        v96 = objc_opt_self();
        v97 = [v96 mainBundle];
        v127._object = 0x800000010057ABB0;
        v98._countAndFlagsBits = 0xD00000000000002DLL;
        v98._object = 0x800000010057B6D0;
        v99.value._object = 0x800000010057AB90;
        v127._countAndFlagsBits = 0xD000000000000017;
        v99.value._countAndFlagsBits = 0xD000000000000012;
        v100._countAndFlagsBits = 0;
        v100._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v98, v99, v97, v100, v127);

        v101 = [v96 mainBundle];
        v128._object = 0x800000010057ABB0;
        v102._countAndFlagsBits = 0xD00000000000002FLL;
        v102._object = 0x800000010057B700;
        v103.value._object = 0x800000010057AB90;
        v128._countAndFlagsBits = 0xD000000000000017;
        v103.value._countAndFlagsBits = 0xD000000000000012;
        v104._countAndFlagsBits = 0;
        v104._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v102, v103, v101, v104, v128);

        sub_10007EBC0(&unk_1006B20B0, &unk_1005523B0);
        v105 = swift_allocObject();
        *(v105 + 16) = xmmword_100552220;
        *(v105 + 56) = &type metadata for String;
        *(v105 + 64) = sub_10008EE84();
        *(v105 + 32) = v73;
        *(v105 + 40) = v74;
        String.init(format:_:)();

        sub_1000A4330();
      }

      else
      {
        v87 = objc_opt_self();
        v88 = [v87 mainBundle];
        v125._object = 0x800000010057B5E0;
        v89._countAndFlagsBits = 0xD000000000000022;
        v89._object = 0x800000010057B5B0;
        v125._countAndFlagsBits = 0xD000000000000034;
        v90._countAndFlagsBits = 0;
        v90._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v89, 0, v88, v90, v125);

        v91 = [v87 mainBundle];
        v126._object = 0x800000010057B650;
        v92._countAndFlagsBits = 0xD000000000000024;
        v92._object = 0x800000010057B620;
        v126._countAndFlagsBits = 0xD000000000000036;
        v93._countAndFlagsBits = 0;
        v93._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v92, 0, v91, v93, v126);

        sub_1000A3B40();
      }
    }
  }
}

uint64_t sub_1000A3444(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  v4 = __chkstk_darwin(a1);
  v6 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v7, a1, v4);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    (*(v3 + 8))(v6, a1);
  }

  else
  {
    swift_allocError();
    (*(v3 + 32))(v8, v6, a1);
  }

  v9 = _convertErrorToNSError(_:)();

  v10 = [v9 domain];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
  {
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v16 & 1) == 0)
    {
LABEL_26:

      return 0;
    }
  }

  v17 = [v9 code];
  if (v17 != 2)
  {
    v36 = v17;

    return v36 == 110;
  }

  v18 = [v9 userInfo];
  v19 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v19 + 16))
  {
    goto LABEL_28;
  }

  v22 = sub_10000726C(v20, v21);
  v24 = v23;

  if (v24)
  {

    sub_100006004(*(v19 + 56) + 32 * v22, v39);

    sub_1000072E4(v39, &v40);
    sub_10007EBC0(&qword_1006B0148, &unk_100552B70);
    swift_dynamicCast();
    v25 = v38 + 64;
    v26 = 1 << *(v38 + 32);
    v27 = -1;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    v28 = v27 & *(v38 + 64);
    v29 = (v26 + 63) >> 6;

    v30 = 0;
    while (v28)
    {
LABEL_22:
      v28 &= v28 - 1;
      swift_getErrorValue();
      v32 = v37[2];
      v33 = v37[3];
      swift_errorRetain();
      v34 = sub_1000A3444(v32, v33);

      if (v34)
      {

        return 1;
      }
    }

    while (1)
    {
      v31 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v31 >= v29)
      {

        goto LABEL_26;
      }

      v28 = *(v25 + 8 * v31);
      ++v30;
      if (v28)
      {
        v30 = v31;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_28:

    __break(1u);
  }

  __break(1u);
  return result;
}