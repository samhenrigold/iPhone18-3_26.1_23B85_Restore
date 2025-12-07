void sub_1004B368C(uint64_t a1, void (*a2)(char *, char *, uint64_t))
{
  v39 = a2;
  v3 = sub_10007EBC0(&unk_1006BBCE0, &unk_1005534C0);
  __chkstk_darwin(v3 - 8);
  v37 = &v35 - v4;
  v5 = type metadata accessor for FMIPDevice();
  v38 = *(v5 - 8);
  __chkstk_darwin(v5);
  v35 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v36 = &v35 - v8;
  v9 = type metadata accessor for FMSelectedSection(0);
  __chkstk_darwin(v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v35 - v13;
  __chkstk_darwin(v15);
  v17 = &v35 - v16;
  v18 = *(*(a1 + 16) + 56);
  v19 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100027BE0(v18 + v19, v17, type metadata accessor for FMSelectedSection);
  sub_100027BE0(v17, v14, type metadata accessor for FMSelectedSection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 6)
  {
    if (EnumCaseMultiPayload == 7)
    {
LABEL_8:
      sub_10002A100(v14, type metadata accessor for FMSelectedSection);
      goto LABEL_10;
    }

    if (EnumCaseMultiPayload != 12)
    {
LABEL_7:
      sub_10002A100(v17, type metadata accessor for FMSelectedSection);
      v23 = v14;
LABEL_18:
      sub_10002A100(v23, type metadata accessor for FMSelectedSection);
      return;
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 6)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    }

    v24 = sub_10007EBC0(&qword_1006BEEE0, qword_100552070);
    sub_100012DF0(&v14[*(v24 + 48)], &qword_1006B07D0, qword_100552820);
    (*(v38 + 8))(v14, v5);
  }

LABEL_10:
  v25 = *(a1 + 56);
  if (v25 <= 2)
  {
    if (v25 - 1 < 2)
    {
      sub_1004B8C00(v39, v21, v22);
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  if (v25 == 3)
  {
LABEL_14:
    sub_1004B5834(v39, v21, v22);
    goto LABEL_16;
  }

  sub_1004B7458(v39, v21, v22);
LABEL_16:
  sub_100027BE0(v17, v11, type metadata accessor for FMSelectedSection);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_10002A100(v17, type metadata accessor for FMSelectedSection);
    v23 = v11;
    goto LABEL_18;
  }

  v26 = *(sub_10007EBC0(&qword_1006BEEE0, qword_100552070) + 48);
  v27 = v38;
  v28 = v36;
  v39 = *(v38 + 32);
  v39(v36, v11, v5);
  sub_100012DF0(&v11[v26], &qword_1006B07D0, qword_100552820);

  v29 = FMIPDevice.identifier.getter();
  v30 = v37;
  sub_1000E512C(v29, v31, v37);

  if ((*(v27 + 48))(v30, 1, v5) == 1)
  {
    (*(v27 + 8))(v28, v5);
    sub_10002A100(v17, type metadata accessor for FMSelectedSection);
    sub_100012DF0(v30, &unk_1006BBCE0, &unk_1005534C0);
  }

  else
  {
    v32 = v35;
    v39(v35, v30, v5);
    v33 = FMIPDevice.historicalLocations.getter();
    v34 = *(v27 + 8);
    v34(v32, v5);
    v34(v28, v5);
    sub_10002A100(v17, type metadata accessor for FMSelectedSection);
    if (v33)
    {

      *(a1 + 56) = 2;
    }
  }
}

void sub_1004B3BB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMSelectedSection(0);
  __chkstk_darwin(v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(a1 + 16) + 56);
  v8 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100027BE0(v7 + v8, v6, type metadata accessor for FMSelectedSection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 17) >= 2)
  {
    if (EnumCaseMultiPayload != 5 && EnumCaseMultiPayload != 3)
    {
      sub_10002A100(v6, type metadata accessor for FMSelectedSection);
      return;
    }

    sub_10002A100(v6, type metadata accessor for FMSelectedSection);
  }

  if (*(a1 + 56) - 1 >= 2)
  {
    sub_1004BF4C8(a2, v10, v11);
  }

  else
  {
    sub_1004C138C(a2, v10, v11);
  }
}

void sub_1004B3D08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMSelectedSection(0);
  __chkstk_darwin(v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(a1 + 16) + 56);
  v8 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100027BE0(v7 + v8, v6, type metadata accessor for FMSelectedSection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 9)
  {
    if (EnumCaseMultiPayload != 8)
    {
      sub_10002A100(v6, type metadata accessor for FMSelectedSection);
      return;
    }

    sub_10002A100(v6, type metadata accessor for FMSelectedSection);
  }

  if (*(a1 + 56) - 1 >= 2)
  {
    sub_1004C5110(a2, v10, v11);
  }

  else
  {
    sub_1004C7204(a2, v10, v11);
  }
}

uint64_t sub_1004B3E50(uint64_t a1, void *a2, uint64_t a3)
{
  v33 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v5 - 8);
  __chkstk_darwin(v5);
  v36 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for DispatchQoS();
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v34 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FMIPItem();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100005B14(v12, qword_1006D4630);
  (*(v9 + 16))(v11, a3, v8);
  v13 = a2;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v32[0] = v5;
    v19 = v18;
    aBlock[0] = v18;
    *v16 = 138412546;
    *(v16 + 4) = v13;
    *v17 = v13;
    *(v16 + 12) = 2080;
    v20 = v13;
    v21 = FMIPItem.debugDescription.getter();
    v23 = v22;
    (*(v9 + 8))(v11, v8);
    v24 = sub_100005B4C(v21, v23, aBlock);

    *(v16 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v14, v15, "FMMapViewDataSource: didUpdate image %@ item %s", v16, 0x16u);
    sub_100012DF0(v17, &unk_1006AF760, &qword_100552DB0);

    sub_100006060(v19);
    v5 = v32[0];
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
  v25 = static OS_dispatch_queue.main.getter();
  v26 = swift_allocObject();
  v27 = v33;
  *(v26 + 16) = v32[1];
  *(v26 + 24) = v27;
  aBlock[4] = sub_1004D1F2C;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100642960;
  v28 = _Block_copy(aBlock);

  v29 = v34;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A738(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640, &unk_100552B10, &protocol conformance descriptor for [A]);
  v30 = v36;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v28);

  (*(v38 + 8))(v30, v5);
  return (*(v35 + 8))(v29, v37);
}

void sub_1004B43BC(uint64_t a1)
{
  v2 = type metadata accessor for FMSelectedSection(0);
  __chkstk_darwin(v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(a1 + 16) + 56);
  v6 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100027BE0(v5 + v6, v4, type metadata accessor for FMSelectedSection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 17) >= 2)
  {
    if (EnumCaseMultiPayload != 5 && EnumCaseMultiPayload != 3)
    {
      sub_10002A100(v4, type metadata accessor for FMSelectedSection);
      return;
    }

    sub_10002A100(v4, type metadata accessor for FMSelectedSection);
  }

  v9 = FMIPManager.items.getter();
  if (*(a1 + 56) - 1 >= 2)
  {
    sub_1004BF4C8(v9, v10, v11);
  }

  else
  {
    sub_1004C138C(v9, v10, v11);
  }
}

uint64_t sub_1004B4520(uint64_t a1, void *a2, uint64_t a3)
{
  v33 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v5 - 8);
  __chkstk_darwin(v5);
  v36 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for DispatchQoS();
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v34 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FMIPDevice();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100005B14(v12, qword_1006D4630);
  (*(v9 + 16))(v11, a3, v8);
  v13 = a2;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v32[0] = v5;
    v19 = v18;
    aBlock[0] = v18;
    *v16 = 138412546;
    *(v16 + 4) = v13;
    *v17 = v13;
    *(v16 + 12) = 2080;
    v20 = v13;
    v21 = FMIPDevice.debugDescription.getter();
    v23 = v22;
    (*(v9 + 8))(v11, v8);
    v24 = sub_100005B4C(v21, v23, aBlock);

    *(v16 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v14, v15, "FMMapViewDataSource: didUpdate image %@ device %s", v16, 0x16u);
    sub_100012DF0(v17, &unk_1006AF760, &qword_100552DB0);

    sub_100006060(v19);
    v5 = v32[0];
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
  v25 = static OS_dispatch_queue.main.getter();
  v26 = swift_allocObject();
  v27 = v33;
  *(v26 + 16) = v32[1];
  *(v26 + 24) = v27;
  aBlock[4] = sub_1004D1ED4;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100642910;
  v28 = _Block_copy(aBlock);

  v29 = v34;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A738(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640, &unk_100552B10, &protocol conformance descriptor for [A]);
  v30 = v36;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v28);

  (*(v38 + 8))(v30, v5);
  return (*(v35 + 8))(v29, v37);
}

double sub_1004B4A8C(uint64_t a1)
{
  v2 = type metadata accessor for FMSelectedSection(0);
  __chkstk_darwin(v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(a1 + 16) + 56);
  v6 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100027BE0(v5 + v6, v4, type metadata accessor for FMSelectedSection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 6)
  {
    if (EnumCaseMultiPayload == 7)
    {
LABEL_8:
      sub_10002A100(v4, type metadata accessor for FMSelectedSection);
      goto LABEL_10;
    }

    if (EnumCaseMultiPayload != 12)
    {
LABEL_7:
      sub_10002A100(v4, type metadata accessor for FMSelectedSection);
      return result;
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 6)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    }

    v9 = sub_10007EBC0(&qword_1006BEEE0, qword_100552070);
    sub_100012DF0(&v4[*(v9 + 48)], &qword_1006B07D0, qword_100552820);
    v10 = type metadata accessor for FMIPDevice();
    (*(*(v10 - 8) + 8))(v4, v10);
  }

LABEL_10:
  v11 = FMIPManager.devices.getter();
  v14 = *(a1 + 56);
  if (v14 > 2)
  {
    if (v14 != 3)
    {
      sub_1004B7458(v11, v12, v13);
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  if (v14 - 1 >= 2)
  {
LABEL_14:
    sub_1004B5834(v11, v12, v13);
    goto LABEL_16;
  }

  sub_1004B8C00(v11, v12, v13);
LABEL_16:

  return result;
}

uint64_t sub_1004B4C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v29 = *(v10 - 8);
  v30 = v10;
  __chkstk_darwin(v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    v28 = v7;
    v17 = v16;
    v18 = swift_slowAlloc();
    v27 = a1;
    v19 = v18;
    aBlock[0] = v18;
    *v17 = 136315138;
    type metadata accessor for FMIPSafeLocation();
    v20 = Array.description.getter();
    v22 = sub_100005B4C(v20, v21, aBlock);

    *(v17 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v14, v15, "FMMapViewDataSource: didUpdate safeLocations %s", v17, 0xCu);
    sub_100006060(v19);
    a1 = v27;

    v7 = v28;
  }

  sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
  v23 = static OS_dispatch_queue.main.getter();
  v24 = swift_allocObject();
  *(v24 + 16) = v4;
  *(v24 + 24) = a1;
  aBlock[4] = sub_1004D1ECC;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_1006428C0;
  v25 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A738(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640, &unk_100552B10, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);

  (*(v7 + 8))(v9, v6);
  return (*(v29 + 8))(v12, v30);
}

double sub_1004B50CC(uint64_t a1)
{
  v2 = type metadata accessor for FMSelectedSection(0);
  __chkstk_darwin(v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(a1 + 16) + 56);
  v6 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100027BE0(v5 + v6, v4, type metadata accessor for FMSelectedSection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 11)
  {
    if (EnumCaseMultiPayload != 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        sub_10002A100(v4, type metadata accessor for FMSelectedSection);
        goto LABEL_8;
      }

LABEL_7:
      sub_10002A100(v4, type metadata accessor for FMSelectedSection);
      return result;
    }

    sub_10002A100(v4, type metadata accessor for FMSelectedSection);
LABEL_12:
    v13 = FMIPManager.items.getter();
    if (*(a1 + 56) - 1 >= 2)
    {
      sub_1004BF4C8(v13, v14, v15);
    }

    else
    {
      sub_1004C138C(v13, v14, v15);
    }

    goto LABEL_18;
  }

  if (EnumCaseMultiPayload != 12)
  {
    if (EnumCaseMultiPayload != 17)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

LABEL_8:
  v9 = FMIPManager.devices.getter();
  v12 = *(a1 + 56);
  if (v12 > 2)
  {
    if (v12 != 3)
    {
      sub_1004B7458(v9, v10, v11);
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  if (v12 - 1 >= 2)
  {
LABEL_16:
    sub_1004B5834(v9, v10, v11);
    goto LABEL_18;
  }

  sub_1004B8C00(v9, v10, v11);
LABEL_18:

  return result;
}

double sub_1004B52B8(uint64_t a1)
{
  v2 = type metadata accessor for FMSelectedSection(0);
  __chkstk_darwin(v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(a1 + 16) + 56);
  v6 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100027BE0(v5 + v6, v4, type metadata accessor for FMSelectedSection);
  if (swift_getEnumCaseMultiPayload() == 9)
  {

    v7 = FMIPManager.unknownItems.getter();

    if (*(a1 + 56) - 1 >= 2)
    {
      sub_1004C5110(v7, v8, v9);
    }

    else
    {
      sub_1004C7204(v7, v8, v9);
    }
  }

  else
  {
    sub_10002A100(v4, type metadata accessor for FMSelectedSection);
  }

  return result;
}

void sub_1004B5404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 56) - 1 >= 2)
  {
    *(a1 + 57) = 0;
    sub_100012488(a2, a2, a3);
  }

  else
  {
    sub_1004BD720(a2, a2, a3);
  }
}

double sub_1004B544C(uint64_t a1)
{

  v2 = dispatch thunk of FMFManager.friends.getter();

  if (*(a1 + 56) - 1 >= 2)
  {
    *(a1 + 57) = 0;
    sub_100012488(v2, v3, v4);
  }

  else
  {
    sub_1004BD720(v2, v3, v4);
  }

  return result;
}

uint64_t sub_1004B54DC(uint64_t a1, uint64_t a2)
{
  v3 = sub_10007EBC0(&qword_1006AF740, &unk_100552330);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  sub_100007204(a2, &v13 - v4, &qword_1006AF740, &unk_100552330);
  v6 = type metadata accessor for FMFLocation();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    v8 = sub_100012DF0(v5, &qword_1006AF740, &unk_100552330);
    v13 = 0u;
    v14 = 0u;
  }

  else
  {
    *(&v14 + 1) = v6;
    v11 = sub_100008FC0(&v13);
    v8 = (*(v7 + 32))(v11, v5, v6);
  }

  sub_1004CAF58(v8, v9, v10);
  return sub_100012DF0(&v13, &unk_1006B8740, &unk_100552DA0);
}

void sub_1004B5640(uint64_t *a1@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X2>, void *a4@<X8>)
{
  v6 = *a1;
  if (a2 >> 62)
  {
    goto LABEL_25;
  }

  v7 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  swift_unknownObjectRetain();
  if (v7)
  {
    v12 = a4;
    v8 = 0;
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v8 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        swift_unknownObjectRetain();
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          v7 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_3;
        }
      }

      objc_opt_self();
      v10 = swift_dynamicCastObjCClass();
      if (v10)
      {
        a4 = v10;
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v11 = sub_10000905C(0, &qword_1006B4980, NSObject_ptr);
          swift_unknownObjectRetain();
          a4 = v11;
          if (static NSObject.== infix(_:_:)())
          {
            if (*a3 >> 62)
            {
              if (v8 < _CocoaArrayWrapper.endIndex.getter())
              {
LABEL_20:
                sub_100250790(v8);
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                swift_unknownObjectRelease_n();
                v6 = 0;
LABEL_21:
                a4 = v12;
                break;
              }
            }

            else if (v8 < *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_20;
            }
          }

          swift_unknownObjectRelease();
        }
      }

      swift_unknownObjectRelease();
      ++v8;
      if (v9 == v7)
      {
        goto LABEL_21;
      }
    }
  }

  *a4 = v6;
}

double sub_1004B5834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v17 = *(v8 - 8);
  v18 = v8;
  __chkstk_darwin(v8);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = &_swiftEmptyDictionarySingleton;
  v12 = swift_allocObject();
  *(v12 + 16) = &_swiftEmptyDictionarySingleton;
  v16[1] = *(v3 + 88);
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = v3;
  v13[4] = v11;
  v13[5] = v12;
  aBlock[4] = sub_1004D1E58;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_1006427D0;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_10000A738(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640, &unk_100552B10, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v19 + 8))(v7, v5);
  (*(v17 + 8))(v10, v18);

  return result;
}

void sub_1004B5B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v195 = a4;
  v175 = a3;
  v187 = a2;
  v179 = 0;
  v158 = type metadata accessor for DispatchQoS();
  v160 = *(v158 - 8);
  __chkstk_darwin(v158);
  v157 = &v155 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = type metadata accessor for DispatchWorkItemFlags();
  v159 = *(v156 - 8);
  __chkstk_darwin(v156);
  v155 = &v155 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = type metadata accessor for FMAnnotationIdentifier(0);
  __chkstk_darwin(v183);
  v162 = &v155 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v168 = (&v155 - v9);
  v10 = sub_10007EBC0(&unk_1006C0220, qword_100553770);
  __chkstk_darwin(v10 - 8);
  v12 = &v155 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v155 - v14;
  v167 = type metadata accessor for FMIPLocation();
  v16 = *(v167 - 8);
  __chkstk_darwin(v167);
  v18 = &v155 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v155 - v20;
  i = type metadata accessor for FMIPItem();
  v22 = *(i - 8);
  __chkstk_darwin(i);
  v186 = &v155 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10007EBC0(&qword_1006B07D0, qword_100552820);
  __chkstk_darwin(v24 - 8);
  v180 = &v155 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v155 - v27;
  __chkstk_darwin(v29);
  v185 = &v155 - v30;
  v31 = sub_10007EBC0(&unk_1006BB1C0, &unk_1005534F0);
  __chkstk_darwin(v31 - 8);
  v33 = &v155 - v32;
  v182 = type metadata accessor for FMIPItemGroup();
  v34 = *(v182 - 8);
  __chkstk_darwin(v182);
  v181 = &v155 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = type metadata accessor for FMIPDevice();
  v37 = __chkstk_darwin(v204);
  v201 = (&v155 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v194 = *(a1 + 16);
  if (!v194)
  {
    v46 = v195;
LABEL_51:
    swift_beginAccess();
    v112 = *(v46 + 16);
    v113 = v112 + 64;
    v114 = 1 << *(v112 + 32);
    v115 = -1;
    if (v114 < 64)
    {
      v115 = ~(-1 << v114);
    }

    v116 = v115 & *(v112 + 64);
    v117 = (v114 + 63) >> 6;
    v201 = v206;
    v200 = v160 + 8;
    v199 = (v159 + 8);
    v204 = v112;

    v118 = 0;
    for (i = v117; ; v117 = i)
    {
      if (!v116)
      {
        while (1)
        {
          v124 = v118 + 1;
          if (__OFADD__(v118, 1))
          {
            goto LABEL_76;
          }

          if (v124 >= v117)
          {

            swift_beginAccess();

            sub_100012E50(v154, _swiftEmptyArrayStorage);

            return;
          }

          v116 = *(v113 + 8 * v124);
          ++v118;
          if (v116)
          {
            v118 = v124;
            break;
          }
        }
      }

      v125 = __clz(__rbit64(v116)) | (v118 << 6);
      v126 = (*(v204 + 48) + 16 * v125);
      v127 = *v126;
      v128 = v126[1];
      v129 = *(*(v204 + 56) + 8 * v125);
      if (!(v129 >> 62))
      {
        break;
      }

      v150 = _CocoaArrayWrapper.endIndex.getter();
      if (!v150)
      {
        v130 = _swiftEmptyArrayStorage;
        goto LABEL_63;
      }

      v151 = v150;
      v130 = sub_10008FC98();
      swift_bridgeObjectRetain_n();
      sub_10009186C(v127, v128);
      sub_10043A9D8((v130 + 4), v151, v129);
      v153 = v152;

      if (v153 != v151)
      {
        goto LABEL_77;
      }

LABEL_64:
      aBlock[0] = v130;
      v131 = v179;
      sub_1004CB9DC(aBlock);
      if (v131)
      {
        goto LABEL_78;
      }

      sub_100091880(v127, v128);

      v132 = aBlock[0];
      v133 = *(v187 + 48);
      v203 = type metadata accessor for FMClusterAnnotation();
      v134 = objc_allocWithZone(v203);

      sub_1003F4230(v135);
      v137 = v136;
      __chkstk_darwin(v136);
      *(&v155 - 2) = v138;
      v139 = v162;
      OS_dispatch_queue.sync<A>(execute:)();
      if (*(v133 + 16) && (v140 = sub_1001B4074(v139), (v141 & 1) != 0))
      {
        v142 = *(*(v133 + 56) + 8 * v140);
        sub_10002A100(v139, type metadata accessor for FMAnnotationIdentifier);
        v143 = swift_dynamicCastClass();
        if (v143)
        {
          v198 = *(v143 + OBJC_IVAR____TtC6FindMy19FMClusterAnnotation_updateQueue);
          v144 = v155;
          v145 = v143;
          v203 = v143;
          static DispatchWorkItemFlags.barrier.getter();
          v146 = swift_allocObject();
          *(v146 + 16) = v132;
          *(v146 + 24) = v145;
          v206[2] = sub_1004D1FD8;
          v206[3] = v146;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          v206[0] = sub_100004AE4;
          v206[1] = &unk_100642820;
          v147 = _Block_copy(aBlock);
          v148 = v142;
          v149 = v157;
          static DispatchQoS.unspecified.getter();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v147);

          (*v200)(v149, v158);
          (*v199)(v144, v156);

          v137 = v203;
        }

        else
        {
        }
      }

      else
      {

        v119 = sub_10002A100(v139, type metadata accessor for FMAnnotationIdentifier);
      }

      v116 &= v116 - 1;
      __chkstk_darwin(v119);
      *(&v155 - 2) = v137;
      v120 = v168;
      OS_dispatch_queue.sync<A>(execute:)();
      v179 = 0;
      v121 = v175;
      swift_beginAccess();
      v122 = v137;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v207 = *(v121 + 16);
      *(v121 + 16) = 0x8000000000000000;
      sub_1001BCC70(v122, v120, isUniquelyReferenced_nonNull_native);
      sub_10002A100(v120, type metadata accessor for FMAnnotationIdentifier);
      *(v121 + 16) = v207;
      swift_endAccess();
    }

    v130 = (v129 & 0xFFFFFFFFFFFFFF8);

LABEL_63:

    sub_10009186C(v127, v128);
    goto LABEL_64;
  }

  v174 = v15;
  v166 = v21;
  v39 = 0;
  v41 = *(v36 + 16);
  v40 = v36 + 16;
  v193 = v41;
  v192 = a1 + ((*(v40 + 64) + 32) & ~*(v40 + 64));
  v191 = (v34 + 48);
  v171 = (v34 + 32);
  v170 = (v34 + 8);
  v196 = (v22 + 48);
  v173 = (v22 + 32);
  v199 = (v16 + 48);
  v178 = (v16 + 32);
  v164 = (v22 + 16);
  v177 = (v22 + 56);
  v176 = (v16 + 8);
  v172 = (v22 + 8);
  v188 = (v40 - 8);
  v190 = *(v40 + 56);
  v42 = v167;
  v165 = v18;
  v197 = v28;
  v43 = v182;
  v44 = v181;
  v45 = v201;
  v46 = v195;
  v47 = v12;
  v169 = v12;
  v163 = v33;
  v189 = v40;
  while (1)
  {
    v203 = v39;
    v193(v45, v192 + v190 * v39, v204, v37);
    FMIPDevice.itemGroup.getter();
    if ((*v191)(v33, 1, v43) != 1)
    {
      break;
    }

    sub_100012DF0(v33, &unk_1006BB1C0, &unk_1005534F0);
LABEL_37:
    v45 = v201;
    FMIPDevice.bestLocation.getter();
    if ((*v199)(v47, 1, v42) == 1)
    {
      (*v188)(v45, v204);
      sub_100012DF0(v47, &unk_1006C0220, qword_100553770);
    }

    else
    {
      (*v178)(v18, v47, v42);
      v92 = v180;
      (*v177)(v180, 1, 1, i);
      v93 = v42;
      v94 = *(v187 + 48);

      v95 = sub_1004BB7DC(v45, v92, 0, v18, v94);

      sub_100012DF0(v92, &qword_1006B07D0, qword_100552820);
      v96 = *&v95[OBJC_IVAR____TtC6FindMy12FMAnnotation_fmClusterIdentifier + 8];
      if (v96)
      {
        v97 = *&v95[OBJC_IVAR____TtC6FindMy12FMAnnotation_fmClusterIdentifier];
        v46 = v195;
        swift_beginAccess();
        v98 = *(*(v46 + 16) + 16);
        v99 = v95;
        sub_10009186C(v97, v96);
        if (!v98 || (sub_1001B40E0(v97, v96), (v100 & 1) == 0))
        {
          swift_endAccess();
          swift_beginAccess();
          sub_10009186C(v97, v96);
          v101 = swift_isUniquelyReferenced_nonNull_native();
          v208 = *(v46 + 16);
          *(v46 + 16) = 0x8000000000000000;
          sub_1001BCAF0(_swiftEmptyArrayStorage, v97, v96, v101);
          sub_100091880(v97, v96);
          *(v46 + 16) = v208;
        }

        swift_endAccess();
        swift_beginAccess();
        v103 = sub_1004B1F10(aBlock, v97, v96);
        if (*v102)
        {
          v104 = v102;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*v104 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v104 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v18 = v165;
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          (v103)(aBlock, 0);
          swift_endAccess();
        }

        else
        {
          (v103)(aBlock, 0);
          swift_endAccess();
        }

        sub_100091880(v97, v96);

        v42 = v167;
        (*v176)(v18, v167);
        v45 = v201;
        (*v188)(v201, v204);
        v43 = v182;
        v44 = v181;
        v47 = v169;
      }

      else
      {
        v105 = v95;
        v106 = FMIPDevice.identifier.getter();
        v107 = v168;
        *v168 = v106;
        *(v107 + 8) = v108;
        swift_storeEnumTagMultiPayload();
        v109 = v175;
        swift_beginAccess();
        v110 = swift_isUniquelyReferenced_nonNull_native();
        v208 = *(v109 + 16);
        *(v109 + 16) = 0x8000000000000000;
        sub_1001BCC70(v105, v107, v110);
        v111 = v107;
        v18 = v165;
        sub_10002A100(v111, type metadata accessor for FMAnnotationIdentifier);
        *(v109 + 16) = v208;
        swift_endAccess();

        (*v176)(v18, v93);
        (*v188)(v45, v204);
        v43 = v182;
        v44 = v181;
        v46 = v195;
        v42 = v93;
      }
    }

LABEL_4:
    v39 = (v203 + 1);
    if (v203 + 1 == v194)
    {
      goto LABEL_51;
    }
  }

  (*v171)(v44, v33, v43);
  if ((FMIPDevice.shouldDisplaySeparatedLocation.getter() & 1) == 0)
  {
    (*v170)(v44, v43);
    goto LABEL_37;
  }

  v48 = FMIPItemGroup.groupedItems.getter();
  v49 = 0;
  v51 = v48 + 56;
  v50 = *(v48 + 56);
  v200 = v48;
  v52 = 1 << *(v48 + 32);
  if (v52 < 64)
  {
    v53 = ~(-1 << v52);
  }

  else
  {
    v53 = -1;
  }

  v54 = v53 & v50;
  v55 = (v52 + 63) >> 6;
  v56 = v185;
  v198 = v55;
  v184 = v48 + 56;
  if ((v53 & v50) != 0)
  {
    do
    {
      while (1)
      {
        v57 = v42;
LABEL_19:
        v59 = __clz(__rbit64(v54));
        v54 &= v54 - 1;
        v60 = *(*(v200 + 48) + ((v49 << 9) | (8 * v59)));

        static FMIPItemGroup.primaryPart(group:)();
        v61 = v197;
        sub_100007204(v56, v197, &qword_1006B07D0, qword_100552820);
        v62 = i;
        if ((*v196)(v61, 1, i) != 1)
        {
          break;
        }

        sub_100012DF0(v56, &qword_1006B07D0, qword_100552820);

        sub_100012DF0(v61, &qword_1006B07D0, qword_100552820);
        v42 = v57;
        v55 = v198;
        if (!v54)
        {
          goto LABEL_15;
        }
      }

      v63 = v186;
      (*v173)(v186, v61, v62);
      v64 = v174;
      FMIPItem.location.getter();
      v42 = v57;
      if ((*v199)(v64, 1, v57) == 1)
      {

        (*v172)(v63, v62);
        v56 = v185;
        sub_100012DF0(v185, &qword_1006B07D0, qword_100552820);
        v65 = v64;
        v66 = &unk_1006C0220;
        v67 = qword_100553770;
      }

      else
      {
        v68 = v166;
        (*v178)(v166, v64, v42);
        v69 = v180;
        (*v164)(v180, v63, v62);
        (*v177)(v69, 0, 1, v62);
        v70 = v42;
        v71 = *(v187 + 48);

        v72 = sub_1004BB7DC(v201, v69, v60, v68, v71);

        v73 = sub_100012DF0(v69, &qword_1006B07D0, qword_100552820);
        v74 = *&v72[OBJC_IVAR____TtC6FindMy12FMAnnotation_fmClusterIdentifier + 8];
        if (v74)
        {
          v75 = *&v72[OBJC_IVAR____TtC6FindMy12FMAnnotation_fmClusterIdentifier];
          v76 = v195;
          swift_beginAccess();
          v77 = *(*(v76 + 16) + 16);
          v78 = v72;
          sub_10009186C(v75, v74);
          if (v77 && (sub_1001B40E0(v75, v74), (v79 & 1) != 0))
          {
            swift_endAccess();
          }

          else
          {
            swift_endAccess();
            v80 = v195;
            swift_beginAccess();
            sub_10009186C(v75, v74);
            v81 = swift_isUniquelyReferenced_nonNull_native();
            v208 = *(v80 + 16);
            *(v80 + 16) = 0x8000000000000000;
            sub_1001BCAF0(_swiftEmptyArrayStorage, v75, v74, v81);
            sub_100091880(v75, v74);
            *(v80 + 16) = v208;
            swift_endAccess();
          }

          v82 = i;
          swift_beginAccess();
          v84 = sub_1004B1F10(aBlock, v75, v74);
          if (*v83)
          {
            v85 = v83;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((*v85 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v85 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            (v84)(aBlock, 0);
            swift_endAccess();
            sub_100091880(v75, v74);

            v42 = v167;
            (*v176)(v166, v167);
            (*v172)(v186, i);
          }

          else
          {
            (v84)(aBlock, 0);
            swift_endAccess();

            sub_100091880(v75, v74);
            v91 = v82;
            v42 = v167;
            (*v176)(v166, v167);
            (*v172)(v186, v91);
          }

          v56 = v185;
          v65 = v185;
          v66 = &qword_1006B07D0;
          v67 = qword_100552820;
        }

        else
        {
          v161 = &v155;
          __chkstk_darwin(v73);
          *(&v155 - 2) = v72;
          v86 = v72;
          v87 = v168;
          v88 = v179;
          OS_dispatch_queue.sync<A>(execute:)();
          v179 = v88;
          v89 = v175;
          swift_beginAccess();
          v90 = swift_isUniquelyReferenced_nonNull_native();
          v208 = *(v89 + 16);
          *(v89 + 16) = 0x8000000000000000;
          sub_1001BCC70(v86, v87, v90);
          sub_10002A100(v87, type metadata accessor for FMAnnotationIdentifier);
          *(v89 + 16) = v208;
          swift_endAccess();

          v42 = v70;
          (*v176)(v68, v70);
          (*v172)(v186, v62);
          v56 = v185;
          v65 = v185;
          v66 = &qword_1006B07D0;
          v67 = qword_100552820;
        }
      }

      sub_100012DF0(v65, v66, v67);
      v55 = v198;
      v51 = v184;
    }

    while (v54);
  }

LABEL_15:
  while (1)
  {
    v58 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      break;
    }

    if (v58 >= v55)
    {
      v44 = v181;
      v43 = v182;
      (*v170)(v181, v182);
      v45 = v201;
      (*v188)(v201, v204);

      v46 = v195;
      v47 = v169;
      v18 = v165;
      v33 = v163;
      goto LABEL_4;
    }

    v54 = *(v51 + 8 * v58);
    ++v49;
    if (v54)
    {
      v57 = v42;
      v49 = v58;
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:

  __break(1u);
}

double sub_1004B7458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v56 = *(v3 - 8);
  v57 = v3;
  __chkstk_darwin(v3);
  v54 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for DispatchQoS();
  v53 = *(v55 - 8);
  __chkstk_darwin(v55);
  v52 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007EBC0(&unk_1006BBCE0, &unk_1005534C0);
  __chkstk_darwin(v6 - 8);
  v8 = &v51 - v7;
  v9 = type metadata accessor for FMSelectedSection(0);
  __chkstk_darwin(v9);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FMIPDevice();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v59 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v58 = &v51 - v16;
  __chkstk_darwin(v17);
  v60 = &v51 - v18;
  __chkstk_darwin(v19);
  v21 = &v51 - v20;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100005B14(v22, qword_1006D4630);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "FMMapViewDataSource: updateSelectedDevice", v25, 2u);
  }

  v26 = swift_allocObject();
  *(v26 + 16) = &_swiftEmptyDictionarySingleton;
  v27 = *(*(v62 + 16) + 56);
  v28 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100027BE0(v27 + v28, v11, type metadata accessor for FMSelectedSection);
  if (swift_getEnumCaseMultiPayload() == 7)
  {
    v29 = *(v13 + 32);
    v29(v21, v11, v12);
    v30 = FMIPDevice.shouldDisplaySeparatedLocation.getter();
    if ((v30 & 1) == 0)
    {
      v35.n128_f64[0] = sub_1004B8C00(v61, v31, v32);
LABEL_15:
      (*(v13 + 8))(v21, v12, v35);
      goto LABEL_16;
    }

    __chkstk_darwin(v30);
    *(&v51 - 2) = v21;
    sub_1001108AC(sub_1004D1FA0, v61, v8);
    if ((*(v13 + 48))(v8, 1, v12) == 1)
    {
      sub_100012DF0(v8, &unk_1006BBCE0, &unk_1005534C0);
LABEL_14:
      v49 = v61;
      *(v62 + 58) = 0;
      v35.n128_f64[0] = sub_1004B5834(v49, v33, v34);
      goto LABEL_15;
    }

    v36 = v60;
    v29(v60, v8, v12);
    if ((FMIPDevice.hasLocation.getter() & 1) == 0)
    {
      (*(v13 + 8))(v36, v12);
      goto LABEL_14;
    }

    v37 = v62;
    *(v62 + 58) = 1;
    v51 = *(v37 + 88);
    v38 = *(v13 + 16);
    v38(v58, v36, v12);
    v38(v59, v21, v12);
    v39 = *(v13 + 80);
    v40 = (v39 + 16) & ~v39;
    v61 = v13;
    v41 = (v14 + v39 + v40) & ~v39;
    v42 = (v14 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
    v43 = swift_allocObject();
    v29((v43 + v40), v58, v12);
    v29((v43 + v41), v59, v12);
    *(v43 + v42) = v26;
    *(v43 + ((v42 + 15) & 0xFFFFFFFFFFFFFFF8)) = v62;
    aBlock[4] = sub_1004D1DB0;
    aBlock[5] = v43;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004AE4;
    aBlock[3] = &unk_100642780;
    v44 = _Block_copy(aBlock);

    v45 = v52;
    static DispatchQoS.unspecified.getter();
    v63 = _swiftEmptyArrayStorage;
    sub_10000A738(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
    sub_100004098(&qword_1006AEDF0, &unk_1006B0640, &unk_100552B10, &protocol conformance descriptor for [A]);
    v46 = v54;
    v47 = v57;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v44);
    (*(v56 + 8))(v46, v47);
    (*(v53 + 8))(v45, v55);
    v48 = *(v61 + 8);
    v48(v60, v12);

    v48(v21, v12);
  }

  else
  {
    sub_10002A100(v11, type metadata accessor for FMSelectedSection);
  }

LABEL_16:

  return result;
}

double sub_1004B7C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v160 = a3;
  v151 = type metadata accessor for FMAnnotationIdentifier(0);
  __chkstk_darwin(v151);
  v152 = (&v123 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10007EBC0(&unk_1006C0220, qword_100553770);
  __chkstk_darwin(v7 - 8);
  v9 = &v123 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v148 = &v123 - v11;
  v158 = type metadata accessor for FMIPLocation();
  v12 = *(v158 - 8);
  __chkstk_darwin(v158);
  v145 = &v123 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v146 = &v123 - v15;
  __chkstk_darwin(v16);
  v147 = &v123 - v17;
  v154 = type metadata accessor for FMIPItem();
  v149 = *(v154 - 8);
  __chkstk_darwin(v154);
  v144 = &v123 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v156 = &v123 - v20;
  v21 = sub_10007EBC0(&qword_1006B07D0, qword_100552820);
  __chkstk_darwin(v21 - 8);
  v150 = &v123 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v153 = &v123 - v24;
  __chkstk_darwin(v25);
  v159 = &v123 - v26;
  v27 = sub_10007EBC0(&unk_1006BB1C0, &unk_1005534F0);
  __chkstk_darwin(v27 - 8);
  v29 = &v123 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v123 - v31;
  v157 = a1;
  v33 = FMIPDevice.identifier.getter();
  v35 = v34;
  if (v33 == FMIPDevice.identifier.getter() && v35 == v36)
  {
  }

  else
  {
    v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v37 & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  v155 = a4;
  v38 = v157;
  v140 = FMIPDevice.identifier.getter();
  v40 = v39;
  FMIPDevice.itemGroup.getter();
  v41 = type metadata accessor for FMIPItemGroup();
  v42 = *(v41 - 8);
  v43 = *(v42 + 48);
  if (v43(v32, 1, v41) == 1)
  {

    sub_100012DF0(v32, &unk_1006BB1C0, &unk_1005534F0);
    goto LABEL_11;
  }

  v143 = v40;
  sub_100012DF0(v32, &unk_1006BB1C0, &unk_1005534F0);
  if ((FMIPDevice.shouldDisplaySeparatedLocation.getter() & 1) == 0)
  {

LABEL_11:
    FMIPDevice.bestLocation.getter();
    v46 = v158;
    v47 = (*(v12 + 48))(v9, 1, v158);
    v48 = v155;
    if (v47 == 1)
    {
      sub_100012DF0(v9, &unk_1006C0220, qword_100553770);
    }

    else
    {
      v49 = v145;
      (*(v12 + 32))(v145, v9, v46);
      v50 = FMIPDevice.identifier.getter();
      v51 = v152;
      *v152 = v50;
      *(v51 + 8) = v52;
      swift_storeEnumTagMultiPayload();
      v53 = v150;
      (*(v149 + 56))(v150, 1, 1, v154);
      v54 = *(v48 + 48);

      v55 = sub_1004BB7DC(v38, v53, 0, v49, v54);

      sub_100012DF0(v53, &qword_1006B07D0, qword_100552820);
      v56 = v160;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v161 = *(v56 + 16);
      *(v56 + 16) = 0x8000000000000000;
      sub_1001BCC70(v55, v51, isUniquelyReferenced_nonNull_native);
      sub_10002A100(v51, type metadata accessor for FMAnnotationIdentifier);
      *(v56 + 16) = v161;
      swift_endAccess();
      (*(v12 + 8))(v49, v46);
    }

LABEL_37:
    if (qword_1006AEBE0 == -1)
    {
      goto LABEL_38;
    }

    goto LABEL_43;
  }

  FMIPDevice.itemGroup.getter();
  if (v43(v29, 1, v41) == 1)
  {
    sub_100012DF0(v29, &unk_1006BB1C0, &unk_1005534F0);
    v45 = _swiftEmptySetSingleton;
  }

  else
  {
    v58 = FMIPItemGroup.groupedItems.getter();
    (*(v42 + 8))(v29, v41);
    v45 = v58;
  }

  v59 = v158;
  v60 = v153;
  v61 = 0;
  v62 = v45 + 7;
  v63 = 1 << *(v45 + 32);
  v64 = -1;
  if (v63 < 64)
  {
    v64 = ~(-1 << v63);
  }

  v65 = v64 & v45[7];
  v66 = (v63 + 63) >> 6;
  v142 = (v149 + 48);
  v139 = (v149 + 32);
  v138 = (v12 + 48);
  v129 = (v12 + 32);
  v137 = (v149 + 16);
  v128 = (v12 + 16);
  v127 = (v12 + 8);
  v136 = (v149 + 8);
  v126 = (v149 + 56);
  *&v44 = 136315651;
  v125 = v44;
  v67 = v154;
  v149 = v66;
  v141 = v45 + 7;
  v145 = v45;
  while (v65)
  {
    v68 = v59;
LABEL_26:
    v70 = __clz(__rbit64(v65));
    v65 &= v65 - 1;
    v71 = *(v45[6] + ((v61 << 9) | (8 * v70)));

    v72 = v159;
    static FMIPItemGroup.primaryPart(group:)();
    sub_100007204(v72, v60, &qword_1006B07D0, qword_100552820);
    if ((*v142)(v60, 1, v67) == 1)
    {
      sub_100012DF0(v72, &qword_1006B07D0, qword_100552820);

      sub_100012DF0(v60, &qword_1006B07D0, qword_100552820);
      v45 = v145;
      v66 = v149;
      v59 = v68;
    }

    else
    {
      v73 = v156;
      (*v139)(v156, v60, v67);
      v74 = v148;
      FMIPItem.location.getter();
      v75 = v74;
      v59 = v68;
      if ((*v138)(v74, 1, v68) == 1)
      {

        (*v136)(v73, v67);
        sub_100012DF0(v159, &qword_1006B07D0, qword_100552820);
        v76 = v74;
        v77 = &unk_1006C0220;
        v78 = qword_100553770;
      }

      else
      {
        v79 = v147;
        (*v129)(v147, v75, v68);
        v131 = v71;
        if (qword_1006AEBE0 != -1)
        {
          swift_once();
        }

        v80 = type metadata accessor for Logger();
        sub_100005B14(v80, qword_1006D4630);
        v81 = v144;
        v134 = *v137;
        (v134)(v144, v156, v67);
        v82 = v146;
        (*v128)(v146, v79, v68);

        v83 = Logger.logObject.getter();
        v84 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v83, v84))
        {
          v85 = swift_slowAlloc();
          v124 = swift_slowAlloc();
          v162 = v124;
          *v85 = v125;
          v86 = FMIPItem.debugDescription.getter();
          v87 = v59;
          v89 = v88;
          v90 = *v136;
          v135 = v136 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v130 = v90;
          v90(v81, v67);
          v91 = sub_100005B4C(v86, v89, &v162);

          *(v85 + 4) = v91;
          *(v85 + 12) = 2080;
          *(v85 + 14) = sub_100005B4C(v140, v143, &v162);
          *(v85 + 22) = 2081;
          v92 = v146;
          v93 = FMIPLocation.debugDescription.getter();
          v95 = v94;
          v96 = *v127;
          v132 = v127 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v133 = v96;
          v96(v92, v87);
          v97 = sub_100005B4C(v93, v95, &v162);

          *(v85 + 24) = v97;
          _os_log_impl(&_mh_execute_header, v83, v84, "FMMapViewDataSource: Creating annotation for item %s, groupIdentifier: %s - %{private}s", v85, 0x20u);
          swift_arrayDestroy();
        }

        else
        {

          v98 = *v127;
          v132 = v127 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v133 = v98;
          v98(v82, v59);
          v99 = *v136;
          v135 = v136 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v130 = v99;
          v99(v81, v67);
        }

        v100 = v67;
        v101 = v157;
        v102 = FMIPDevice.identifier.getter();
        v104 = v103;
        v105 = v156;
        v106 = FMIPItem.identifier.getter();
        v107 = v152;
        *v152 = v102;
        v107[1] = v104;
        v107[2] = v106;
        v107[3] = v108;
        swift_storeEnumTagMultiPayload();
        v109 = v150;
        (v134)(v150, v105, v100);
        (*v126)(v109, 0, 1, v100);
        v110 = *(v155 + 48);

        v111 = v101;
        v112 = v147;
        v134 = sub_1004BB7DC(v111, v109, v131, v147, v110);

        sub_100012DF0(v109, &qword_1006B07D0, qword_100552820);
        v113 = v160;
        swift_beginAccess();
        v114 = swift_isUniquelyReferenced_nonNull_native();
        v161 = *(v113 + 16);
        *(v113 + 16) = 0x8000000000000000;
        sub_1001BCC70(v134, v107, v114);
        *(v113 + 16) = v161;
        swift_endAccess();
        sub_10002A100(v107, type metadata accessor for FMAnnotationIdentifier);
        v59 = v158;
        v133(v112, v158);
        v115 = v105;
        v67 = v154;
        v130(v115, v154);
        v76 = v159;
        v77 = &qword_1006B07D0;
        v78 = qword_100552820;
      }

      sub_100012DF0(v76, v77, v78);
      v60 = v153;
      v45 = v145;
      v66 = v149;
    }

    v62 = v141;
  }

  while (1)
  {
    v69 = v61 + 1;
    if (__OFADD__(v61, 1))
    {
      break;
    }

    if (v69 >= v66)
    {

      goto LABEL_37;
    }

    v65 = v62[v69];
    ++v61;
    if (v65)
    {
      v68 = v59;
      v61 = v69;
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_43:
  swift_once();
LABEL_38:
  v116 = type metadata accessor for Logger();
  sub_100005B14(v116, qword_1006D4630);
  v117 = v160;

  v118 = Logger.logObject.getter();
  v119 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v118, v119))
  {
    v120 = swift_slowAlloc();
    *v120 = 134217984;
    swift_beginAccess();
    *(v120 + 4) = *(*(v117 + 16) + 16);

    _os_log_impl(&_mh_execute_header, v118, v119, "FMMapViewDataSource: result %ld", v120, 0xCu);
  }

  else
  {
  }

  swift_beginAccess();

  sub_100012E50(v121, _swiftEmptyArrayStorage);

  return result;
}

double sub_1004B8C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v59 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v53 = *(v5 - 8);
  v54 = v5;
  __chkstk_darwin(v5);
  v51 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for DispatchQoS();
  v50 = *(v52 - 8);
  __chkstk_darwin(v52);
  v49 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10007EBC0(&unk_1006BBCE0, &unk_1005534C0);
  __chkstk_darwin(v8 - 8);
  v10 = v47 - v9;
  v57 = type metadata accessor for FMSelectedSection(0);
  __chkstk_darwin(v57);
  v12 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FMIPDevice();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v55 = v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v56 = v47 - v17;
  __chkstk_darwin(v18);
  v20 = v47 - v19;
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
    _os_log_impl(&_mh_execute_header, v22, v23, "FMMapViewDataSource: updateSelectedDevice", v24, 2u);
  }

  v25 = swift_allocObject();
  *(v25 + 16) = _swiftEmptyArrayStorage;
  v58 = swift_allocObject();
  *(v58 + 16) = &_swiftEmptyDictionarySingleton;
  v26 = *(*(v4 + 16) + 56);
  v27 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100027BE0(v26 + v27, v12, type metadata accessor for FMSelectedSection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 7 || EnumCaseMultiPayload == 1)
  {
    v57 = v25;
    v30 = *(v14 + 32);
    v31 = v30(v20, v12, v13);
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      sub_10002A100(v12, type metadata accessor for FMSelectedSection);
      goto LABEL_17;
    }

    v57 = v25;
    v29 = *(sub_10007EBC0(&qword_1006BEEE0, qword_100552070) + 48);
    v30 = *(v14 + 32);
    v30(v20, v12, v13);
    v31 = sub_100012DF0(&v12[v29], &qword_1006B07D0, qword_100552820);
  }

  __chkstk_darwin(v31);
  v47[-2] = v20;
  sub_1001108AC(sub_1004D1CD4, v59, v10);
  if ((*(v14 + 48))(v10, 1, v13) == 1)
  {
    sub_100012DF0(v10, &unk_1006BBCE0, &unk_1005534C0);
LABEL_16:
    *(v4 + 58) = 0;
    v45 = sub_1004B5834(v59, v32, v33);
    (*(v14 + 8))(v20, v13, v45);
    goto LABEL_17;
  }

  v34 = v56;
  v30(v56, v10, v13);
  if ((FMIPDevice.hasLocation.getter() & 1) == 0)
  {
    (*(v14 + 8))(v34, v13);
    goto LABEL_16;
  }

  *(v4 + 58) = 1;
  v47[1] = *(v4 + 88);
  (*(v14 + 16))(v55, v20, v13);
  v35 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v36 = (v15 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = v20;
  v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  *(v38 + 16) = v59;
  v30((v38 + v35), v55, v13);
  *(v38 + v36) = v4;
  v39 = v57;
  *(v38 + v37) = v58;
  *(v38 + ((v37 + 15) & 0xFFFFFFFFFFFFFFF8)) = v39;
  aBlock[4] = sub_1004D1D08;
  aBlock[5] = v38;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100642730;
  v40 = _Block_copy(aBlock);

  v41 = v49;
  static DispatchQoS.unspecified.getter();
  v60 = _swiftEmptyArrayStorage;
  sub_10000A738(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640, &unk_100552B10, &protocol conformance descriptor for [A]);
  v42 = v51;
  v43 = v54;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v40);
  (*(v53 + 8))(v42, v43);
  (*(v50 + 8))(v41, v52);
  v44 = *(v14 + 8);
  v44(v56, v13);

  v44(v48, v13);
LABEL_17:

  return result;
}

void sub_1004B9468(uint64_t a1, uint64_t a2, uint64_t a3, int64_t a4, uint64_t a5)
{
  v269 = a5;
  v316 = a3;
  v297 = a2;
  v7 = sub_10007EBC0(&unk_1006C0220, qword_100553770);
  __chkstk_darwin(v7 - 8);
  v265 = &v250 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v267 = &v250 - v10;
  __chkstk_darwin(v11);
  v284 = &v250 - v12;
  __chkstk_darwin(v13);
  v278 = &v250 - v14;
  v304 = type metadata accessor for FMIPLocation();
  v15 = *(v304 - 8);
  __chkstk_darwin(v304);
  v260 = &v250 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v266 = &v250 - v18;
  __chkstk_darwin(v19);
  v268 = &v250 - v20;
  __chkstk_darwin(v21);
  v262 = &v250 - v22;
  __chkstk_darwin(v23);
  v277 = &v250 - v24;
  v302 = type metadata accessor for FMIPItem();
  v25 = *(v302 - 8);
  __chkstk_darwin(v302);
  v27 = &v250 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v264 = &v250 - v29;
  __chkstk_darwin(v30);
  v32 = &v250 - v31;
  __chkstk_darwin(v33);
  v295 = &v250 - v34;
  v35 = sub_10007EBC0(&qword_1006B07D0, qword_100552820);
  __chkstk_darwin(v35 - 8);
  v258 = &v250 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v257 = &v250 - v38;
  __chkstk_darwin(v39);
  v283 = &v250 - v40;
  __chkstk_darwin(v41);
  v285 = &v250 - v42;
  __chkstk_darwin(v43);
  v44 = sub_10007EBC0(&unk_1006BB1C0, &unk_1005534F0);
  __chkstk_darwin(v44 - 8);
  v252 = &v250 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v263 = &v250 - v47;
  __chkstk_darwin(v48);
  v261 = &v250 - v49;
  __chkstk_darwin(v50);
  v301 = &v250 - v51;
  v317 = type metadata accessor for FMAnnotationIdentifier(0);
  __chkstk_darwin(v317);
  v53 = (&v250 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v54);
  v312 = (&v250 - v55);
  v311 = type metadata accessor for FMIPHistoricalLocation();
  v270 = *(v311 - 8);
  __chkstk_darwin(v311);
  v310 = &v250 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v306 = type metadata accessor for FMIPDevice();
  v59 = __chkstk_darwin(v306);
  v307 = &v250 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v296 = *(a1 + 16);
  if (!v296)
  {
LABEL_100:
    if (qword_1006AEBE0 != -1)
    {
      goto LABEL_107;
    }

    goto LABEL_101;
  }

  v61 = 0;
  v63 = *(v57 + 16);
  v62 = v57 + 16;
  v293 = v63;
  v292 = a1 + ((*(v62 + 64) + 32) & ~*(v62 + 64));
  v300 = (v15 + 48);
  v286 = (v15 + 32);
  v287 = (v15 + 8);
  v282 = (v25 + 56);
  v290 = (v62 - 8);
  v298 = (v25 + 48);
  v279 = (v25 + 32);
  v281 = (v25 + 16);
  v280 = (v25 + 8);
  v308 = (v270 + 8);
  v309 = v270 + 16;
  v259 = (v15 + 16);
  v294 = v62;
  v291 = *(v62 + 56);
  v59.n128_u64[0] = 136315651;
  v253 = v59;
  v59.n128_u64[0] = 136315138;
  v250 = v59;
  v315 = a4;
  v251 = v27;
  v276 = v32;
  v299 = v58;
LABEL_5:
  v64 = v307;
  v293(v307, v292 + v291 * v61, v306);
  v65 = FMIPDevice.identifier.getter();
  v67 = v66;
  v68 = FMIPDevice.identifier.getter();
  v305 = v61;
  if (v65 != v68 || v67 != v69)
  {
    v71 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v70 = v301;
    if (v71)
    {
      goto LABEL_9;
    }

    v115 = v267;
    FMIPDevice.bestLocation.getter();
    v116 = v304;
    v314 = *v300;
    v117 = v314(v115, 1, v304);
    v118 = v266;
    if (v117 == 1)
    {
      sub_100012DF0(v115, &unk_1006C0220, qword_100553770);
    }

    else
    {
      (*v286)(v266, v115, v116);
      if (FMIPDevice.historicalLocations.getter())
      {
      }

      else if ((FMIPDevice.pairingIncomplete.getter() & 1) == 0)
      {
        v236 = v283;
        (*v282)(v283, 1, 1, v302);
        v237 = *(v316 + 48);

        v238 = v64;
        v239 = sub_1004BB7DC(v64, v236, 0, v118, v237);

        sub_100012DF0(v236, &qword_1006B07D0, qword_100552820);
        *v53 = FMIPDevice.identifier.getter();
        v53[1] = v240;
        swift_storeEnumTagMultiPayload();
        swift_beginAccess();
        v241 = v239;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v318 = *(a4 + 16);
        *(a4 + 16) = 0x8000000000000000;
        sub_1001BCC70(v241, v53, isUniquelyReferenced_nonNull_native);
        sub_10002A100(v53, type metadata accessor for FMAnnotationIdentifier);
        *(a4 + 16) = v318;
        swift_endAccess();

        (*v287)(v118, v116);
        (*v290)(v238, v306);
        goto LABEL_4;
      }

      (*v287)(v118, v116);
    }

    v189 = v263;
    FMIPDevice.itemGroup.getter();
    v190 = v189;
    v191 = type metadata accessor for FMIPItemGroup();
    v192 = *(v191 - 8);
    v193 = *(v192 + 48);
    if (v193(v190, 1, v191) == 1)
    {
      (*v290)(v64, v306);
      sub_100012DF0(v190, &unk_1006BB1C0, &unk_1005534F0);
      goto LABEL_98;
    }

    sub_100012DF0(v190, &unk_1006BB1C0, &unk_1005534F0);
    if ((FMIPDevice.shouldDisplaySeparatedLocation.getter() & 1) == 0)
    {
      (*v290)(v64, v306);
      goto LABEL_98;
    }

    v194 = v252;
    FMIPDevice.itemGroup.getter();
    if (v193(v194, 1, v191) == 1)
    {
      sub_100012DF0(v194, &unk_1006BB1C0, &unk_1005534F0);
      v195 = _swiftEmptySetSingleton;
    }

    else
    {
      v195 = FMIPItemGroup.groupedItems.getter();
      (*(v192 + 8))(v194, v191);
    }

    v196 = v258;
    v197 = v257;
    v198 = 0;
    v199 = (v195 + 7);
    v200 = 1 << *(v195 + 32);
    if (v200 < 64)
    {
      v201 = ~(-1 << v200);
    }

    else
    {
      v201 = -1;
    }

    v202 = v201 & v195[7];
    v203 = (v200 + 63) >> 6;
    v303 = v203;
    v289 = v195 + 7;
    v313 = v195;
    while (1)
    {
      if (!v202)
      {
        while (1)
        {
          v204 = v198 + 1;
          if (__OFADD__(v198, 1))
          {
            goto LABEL_106;
          }

          if (v204 >= v203)
          {
            break;
          }

          v202 = *(v199 + 8 * v204);
          ++v198;
          if (v202)
          {
            v198 = v204;
            goto LABEL_88;
          }
        }

        (*v290)(v307, v306);

LABEL_98:
        v61 = v305;
LABEL_4:
        if (++v61 == v296)
        {
          goto LABEL_100;
        }

        goto LABEL_5;
      }

LABEL_88:
      v205 = __clz(__rbit64(v202));
      v202 &= v202 - 1;
      v206 = *(v195[6] + ((v198 << 9) | (8 * v205)));

      static FMIPItemGroup.primaryPart(group:)();
      sub_100007204(v197, v196, &qword_1006B07D0, qword_100552820);
      v207 = v197;
      v208 = v302;
      if ((*v298)(v196, 1, v302) == 1)
      {
        break;
      }

      v288 = v206;
      v209 = v196;
      v210 = v264;
      (*v279)(v264, v209, v208);
      FMIPItem.location.getter();
      v211 = v265;
      v212 = v304;
      if (v314(v265, 1, v304) == 1)
      {

        (*v280)(v210, v208);
        v197 = v257;
        sub_100012DF0(v257, &qword_1006B07D0, qword_100552820);
        sub_100012DF0(v211, &unk_1006C0220, qword_100553770);
        v196 = v258;
        goto LABEL_81;
      }

      (*v286)(v260, v211, v212);
      v195 = v313;
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v213 = type metadata accessor for Logger();
      sub_100005B14(v213, qword_1006D4630);
      v214 = v251;
      v273 = *v281;
      v273(v251, v264, v302);
      v215 = Logger.logObject.getter();
      v216 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v215, v216))
      {
        v217 = v216;
        v218 = swift_slowAlloc();
        v272 = swift_slowAlloc();
        v319 = v272;
        *v218 = v250.n128_u32[0];
        v219 = FMIPItem.debugDescription.getter();
        v221 = v220;
        v222 = *v280;
        v274 = (v280 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v275 = v222;
        v222(v214, v302);
        v223 = sub_100005B4C(v219, v221, &v319);
        a4 = v315;

        *(v218 + 4) = v223;
        _os_log_impl(&_mh_execute_header, v215, v217, "FMMapViewDataSource: Creating annotation for item %s", v218, 0xCu);
        sub_100006060(v272);
      }

      else
      {

        v224 = *v280;
        v274 = (v280 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v275 = v224;
        v224(v214, v302);
      }

      v225 = v288;
      v226 = FMIPDevice.identifier.getter();
      v228 = v227;
      v229 = v264;
      v230 = FMIPItem.identifier.getter();
      *v53 = v226;
      v53[1] = v228;
      v53[2] = v230;
      v53[3] = v231;
      swift_storeEnumTagMultiPayload();
      v232 = v283;
      v233 = v302;
      v273(v283, v229, v302);
      (*v282)(v232, 0, 1, v233);
      v234 = *(v316 + 48);

      v288 = sub_1004BB7DC(v307, v232, v225, v260, v234);

      sub_100012DF0(v232, &qword_1006B07D0, qword_100552820);
      swift_beginAccess();
      v235 = swift_isUniquelyReferenced_nonNull_native();
      v318 = *(a4 + 16);
      *(a4 + 16) = 0x8000000000000000;
      sub_1001BCC70(v288, v53, v235);
      *(a4 + 16) = v318;
      swift_endAccess();
      sub_10002A100(v53, type metadata accessor for FMAnnotationIdentifier);
      (*v287)(v260, v304);
      v275(v229, v302);
      v197 = v257;
      sub_100012DF0(v257, &qword_1006B07D0, qword_100552820);
      v196 = v258;
LABEL_82:
      v203 = v303;
      v199 = v289;
    }

    sub_100012DF0(v207, &qword_1006B07D0, qword_100552820);

    sub_100012DF0(v196, &qword_1006B07D0, qword_100552820);
    v197 = v207;
LABEL_81:
    v195 = v313;
    goto LABEL_82;
  }

  v70 = v301;
LABEL_9:
  v288 = FMIPDevice.identifier.getter();
  v303 = v72;
  v73 = FMIPDevice.historicalLocations.getter();
  if (v73)
  {
    v74 = *(v73 + 16);
    v289 = v73;
    if (v74)
    {
      v75 = v73 + ((*(v270 + 80) + 32) & ~*(v270 + 80));
      v76 = *(v270 + 72);
      v313 = *(v270 + 16);
      v314 = v76;
      v77 = _swiftEmptyArrayStorage;
      while (1)
      {
        v79 = v310;
        v80 = v311;
        (v313)(v310, v75, v311);
        v81 = FMIPHistoricalLocation.location.getter();
        (*v308)(v79, v80);
        v82 = objc_allocWithZone(type metadata accessor for FMTrackAnnotation(0));
        v83 = sub_10042620C(v81);

        v84 = OBJC_IVAR____TtC6FindMy17FMTrackAnnotation_location;
        v85 = *&v83[OBJC_IVAR____TtC6FindMy17FMTrackAnnotation_location];
        v86 = sub_1002CEAA0();
        v88 = v87;

        v89 = v312;
        *v312 = v86;
        *(v89 + 8) = v88;
        swift_storeEnumTagMultiPayload();
        v90 = *(v316 + 48);
        if (!*(v90 + 16))
        {
          goto LABEL_21;
        }

        v91 = sub_1001B4074(v89);
        if ((v92 & 1) == 0)
        {
          break;
        }

        v93 = *(*(v90 + 56) + 8 * v91);
        sub_10002A100(v89, type metadata accessor for FMAnnotationIdentifier);

        v94 = *&v83[v84];
        v95 = sub_1002CEAA0();
        v97 = v96;

        *v53 = v95;
        v53[1] = v97;
        a4 = v315;
        swift_storeEnumTagMultiPayload();
        swift_beginAccess();
        v98 = v93;
        v99 = swift_isUniquelyReferenced_nonNull_native();
        v318 = *(a4 + 16);
        *(a4 + 16) = 0x8000000000000000;
        sub_1001BCC70(v98, v53, v99);
        sub_10002A100(v53, type metadata accessor for FMAnnotationIdentifier);
        *(a4 + 16) = v318;
        swift_endAccess();
        [v98 coordinate];
        v101 = v100;
        v103 = v102;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v77 = sub_10008C658(0, *(v77 + 2) + 1, 1, v77);
        }

        v105 = *(v77 + 2);
        v104 = *(v77 + 3);
        v106 = v105 + 1;
        if (v105 >= v104 >> 1)
        {
          v77 = sub_10008C658((v104 > 1), v105 + 1, 1, v77);
        }

LABEL_13:
        *(v77 + 2) = v106;
        v78 = &v77[16 * v105];
        *(v78 + 4) = v101;
        *(v78 + 5) = v103;
        v75 += v314;
        if (!--v74)
        {
          goto LABEL_28;
        }
      }

LABEL_21:
      sub_10002A100(v89, type metadata accessor for FMAnnotationIdentifier);
      v107 = *&v83[v84];
      v108 = sub_1002CEAA0();
      v110 = v109;

      *v53 = v108;
      v53[1] = v110;
      a4 = v315;
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      v98 = v83;
      v111 = swift_isUniquelyReferenced_nonNull_native();
      v318 = *(a4 + 16);
      *(a4 + 16) = 0x8000000000000000;
      sub_1001BCC70(v98, v53, v111);
      sub_10002A100(v53, type metadata accessor for FMAnnotationIdentifier);
      *(a4 + 16) = v318;
      swift_endAccess();
      [v98 coordinate];
      v101 = v112;
      v103 = v113;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v77 = sub_10008C658(0, *(v77 + 2) + 1, 1, v77);
      }

      v105 = *(v77 + 2);
      v114 = *(v77 + 3);
      v106 = v105 + 1;
      if (v105 >= v114 >> 1)
      {
        v77 = sub_10008C658((v114 > 1), v105 + 1, 1, v77);
      }

      goto LABEL_13;
    }

    v77 = _swiftEmptyArrayStorage;
LABEL_28:

    v119 = *(v77 + 2);
    if (v119 <= 1)
    {

      v70 = v301;
    }

    else
    {
      v120 = [objc_opt_self() polylineWithCoordinates:v77 + 32 count:v119];

      v121 = v269;
      swift_beginAccess();
      v122 = v120;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v70 = v301;
      if (*((*(v121 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v121 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
    }

    v61 = v305;
  }

  FMIPDevice.itemGroup.getter();
  v123 = type metadata accessor for FMIPItemGroup();
  v124 = *(v123 - 8);
  v125 = *(v124 + 48);
  if (v125(v70, 1, v123) == 1)
  {

    sub_100012DF0(v70, &unk_1006BB1C0, &unk_1005534F0);
    goto LABEL_40;
  }

  sub_100012DF0(v70, &unk_1006BB1C0, &unk_1005534F0);
  if ((FMIPDevice.shouldDisplaySeparatedLocation.getter() & 1) == 0)
  {

LABEL_40:
    v128 = v284;
    v129 = v307;
    FMIPDevice.bestLocation.getter();
    v130 = v304;
    if ((*v300)(v128, 1, v304) == 1)
    {
      (*v290)(v129, v306);
      sub_100012DF0(v128, &unk_1006C0220, qword_100553770);
    }

    else
    {
      v131 = v268;
      (*v286)(v268, v128, v130);
      *v53 = FMIPDevice.identifier.getter();
      v53[1] = v132;
      swift_storeEnumTagMultiPayload();
      v133 = v283;
      (*v282)(v283, 1, 1, v302);
      v134 = *(v316 + 48);

      v135 = sub_1004BB7DC(v129, v133, 0, v131, v134);

      sub_100012DF0(v133, &qword_1006B07D0, qword_100552820);
      swift_beginAccess();
      v136 = swift_isUniquelyReferenced_nonNull_native();
      v318 = *(a4 + 16);
      *(a4 + 16) = 0x8000000000000000;
      sub_1001BCC70(v135, v53, v136);
      sub_10002A100(v53, type metadata accessor for FMAnnotationIdentifier);
      *(a4 + 16) = v318;
      swift_endAccess();
      (*v287)(v131, v130);
      (*v290)(v129, v306);
    }

    goto LABEL_4;
  }

  v126 = v261;
  FMIPDevice.itemGroup.getter();
  if (v125(v126, 1, v123) == 1)
  {
    sub_100012DF0(v126, &unk_1006BB1C0, &unk_1005534F0);
    v127 = _swiftEmptySetSingleton;
  }

  else
  {
    v127 = FMIPItemGroup.groupedItems.getter();
    (*(v124 + 8))(v126, v123);
  }

  v137 = v302;
  v138 = v285;
  a4 = 0;
  v139 = v127 + 7;
  v140 = 1 << *(v127 + 32);
  if (v140 < 64)
  {
    v141 = ~(-1 << v140);
  }

  else
  {
    v141 = -1;
  }

  v142 = v141 & v127[7];
  v143 = (v140 + 63) >> 6;
  v313 = v143;
  v314 = v127;
  while (v142)
  {
LABEL_56:
    v145 = __clz(__rbit64(v142));
    v142 &= v142 - 1;
    v146 = *(v127[6] + ((a4 << 9) | (8 * v145)));

    v147 = v299;
    static FMIPItemGroup.primaryPart(group:)();
    sub_100007204(v147, v138, &qword_1006B07D0, qword_100552820);
    if ((*v298)(v138, 1, v137) == 1)
    {
      sub_100012DF0(v147, &qword_1006B07D0, qword_100552820);

      sub_100012DF0(v138, &qword_1006B07D0, qword_100552820);
    }

    else
    {
      v289 = v146;
      v148 = v295;
      (*v279)(v295, v138, v137);
      v149 = v278;
      v150 = v148;
      FMIPItem.location.getter();
      v151 = v304;
      if ((*v300)(v149, 1, v304) == 1)
      {

        (*v280)(v150, v137);
        sub_100012DF0(v299, &qword_1006B07D0, qword_100552820);
        sub_100012DF0(v149, &unk_1006C0220, qword_100553770);
      }

      else
      {
        v152 = v277;
        (*v286)(v277, v149, v151);
        if (qword_1006AEBE0 != -1)
        {
          swift_once();
        }

        v153 = type metadata accessor for Logger();
        sub_100005B14(v153, qword_1006D4630);
        v272 = *v281;
        (v272)(v276, v295, v302);
        v154 = v262;
        (*v259)(v262, v152, v151);
        v155 = v303;

        v156 = Logger.logObject.getter();
        v157 = static os_log_type_t.default.getter();

        v158 = os_log_type_enabled(v156, v157);
        v159 = v287;
        v275 = (v287 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        if (v158)
        {
          v160 = swift_slowAlloc();
          v255 = v157;
          v161 = v160;
          v256 = swift_slowAlloc();
          v319 = v256;
          *v161 = v253.n128_u32[0];
          v162 = v276;
          v163 = FMIPItem.debugDescription.getter();
          v254 = v156;
          v165 = v164;
          v166 = *v280;
          v273 = (v280 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
          v274 = v166;
          v166(v162, v302);
          v167 = sub_100005B4C(v163, v165, &v319);

          *(v161 + 4) = v167;
          *(v161 + 12) = 2080;
          v168 = v155;
          v169 = v304;
          *(v161 + 14) = sub_100005B4C(v288, v168, &v319);
          *(v161 + 22) = 2081;
          v170 = FMIPLocation.debugDescription.getter();
          v172 = v171;
          v271 = *v287;
          v271(v154, v169);
          v173 = sub_100005B4C(v170, v172, &v319);

          *(v161 + 24) = v173;
          v174 = v254;
          _os_log_impl(&_mh_execute_header, v254, v255, "FMMapViewDataSource: Creating annotation for item %s, groupIdentifier: %s - %{private}s", v161, 0x20u);
          swift_arrayDestroy();
        }

        else
        {

          v271 = *v159;
          v271(v154, v151);
          v175 = *v280;
          v273 = (v280 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
          v274 = v175;
          v175(v276, v302);
        }

        v176 = v307;
        v177 = FMIPDevice.identifier.getter();
        v179 = v178;
        v180 = v295;
        v181 = FMIPItem.identifier.getter();
        *v53 = v177;
        v53[1] = v179;
        v53[2] = v181;
        v53[3] = v182;
        swift_storeEnumTagMultiPayload();
        v183 = v283;
        v184 = v302;
        (v272)(v283, v180, v302);
        (*v282)(v183, 0, 1, v184);
        v185 = *(v316 + 48);

        v186 = v277;
        v272 = sub_1004BB7DC(v176, v183, v289, v277, v185);

        sub_100012DF0(v183, &qword_1006B07D0, qword_100552820);
        v187 = v315;
        swift_beginAccess();
        v188 = swift_isUniquelyReferenced_nonNull_native();
        v318 = *(v187 + 16);
        *(v187 + 16) = 0x8000000000000000;
        sub_1001BCC70(v272, v53, v188);
        *(v187 + 16) = v318;
        swift_endAccess();
        sub_10002A100(v53, type metadata accessor for FMAnnotationIdentifier);
        v271(v186, v304);
        v274(v295, v184);
        sub_100012DF0(v299, &qword_1006B07D0, qword_100552820);
        v137 = v184;
      }

      v138 = v285;
    }

    v143 = v313;
    v127 = v314;
  }

  while (1)
  {
    v144 = a4 + 1;
    if (__OFADD__(a4, 1))
    {
      break;
    }

    if (v144 >= v143)
    {
      (*v290)(v307, v306);

      a4 = v315;
      goto LABEL_98;
    }

    v142 = v139[v144];
    ++a4;
    if (v142)
    {
      a4 = v144;
      goto LABEL_56;
    }
  }

  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  swift_once();
LABEL_101:
  v243 = type metadata accessor for Logger();
  sub_100005B14(v243, qword_1006D4630);

  v244 = Logger.logObject.getter();
  v245 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v244, v245))
  {
    v246 = swift_slowAlloc();
    *v246 = 134217984;
    swift_beginAccess();
    *(v246 + 4) = *(*(a4 + 16) + 16);

    _os_log_impl(&_mh_execute_header, v244, v245, "FMMapViewDataSource: result %ld", v246, 0xCu);
  }

  else
  {
  }

  swift_beginAccess();
  v247 = *(a4 + 16);
  v248 = v269;
  swift_beginAccess();
  v249 = *(v248 + 16);

  sub_100012E50(v247, v249);
}

char *sub_1004BB7DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v249 = a5;
  v250 = a4;
  v251 = a2;
  v265 = a1;
  v237 = type metadata accessor for FMIPConfigValue();
  v236 = *(v237 - 8);
  __chkstk_darwin(v237);
  v235 = &v213 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v242 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v241 = *(v242 - 8);
  __chkstk_darwin(v242);
  v240 = &v213 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v8 - 8);
  v239 = &v213 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = type metadata accessor for DispatchQoS();
  v223 = *(v224 - 8);
  __chkstk_darwin(v224);
  v252 = &v213 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = type metadata accessor for DispatchWorkItemFlags();
  v221 = *(v222 - 8);
  __chkstk_darwin(v222);
  v227 = &v213 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v258 = type metadata accessor for FMIPItem();
  v254 = *(v258 - 8);
  __chkstk_darwin(v258);
  v233 = &v213 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v229 = &v213 - v14;
  v248 = type metadata accessor for FMAnnotationIdentifier(0);
  __chkstk_darwin(v248);
  v262 = (&v213 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_10007EBC0(&qword_1006B07D0, qword_100552820);
  v219 = *(v16 - 8);
  __chkstk_darwin(v16 - 8);
  v238 = &v213 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v260 = &v213 - v19;
  __chkstk_darwin(v20);
  v244 = &v213 - v21;
  __chkstk_darwin(v22);
  v253 = &v213 - v23;
  v220 = v24;
  __chkstk_darwin(v25);
  v247 = &v213 - v26;
  v27 = sub_10007EBC0(&unk_1006C2470, &unk_1005642F0);
  __chkstk_darwin(v27 - 8);
  v255 = &v213 - v28;
  v29 = sub_10007EBC0(&unk_1006BB1C0, &unk_1005534F0);
  __chkstk_darwin(v29 - 8);
  v228 = &v213 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v259 = (&v213 - v32);
  v33 = type metadata accessor for FMIPItemGroup();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v226 = &v213 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for FMIPDevice();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v263 = &v213 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218 = v38;
  __chkstk_darwin(v39);
  v41 = &v213 - v40;
  v246 = type metadata accessor for FMIPDeviceImageCacheRequest();
  v245 = *(v246 - 8);
  __chkstk_darwin(v246);
  v43 = (&v213 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v44);
  v243 = &v213 - v45;
  __chkstk_darwin(v46);
  v48 = &v213 - v47;
  v49 = type metadata accessor for FMIPDeviceImageSize();
  __chkstk_darwin(v49);
  __chkstk_darwin(v50);
  __chkstk_darwin(v51);
  v53 = &v213 - v52;
  v59 = __chkstk_darwin(v54);
  v231 = v33;
  v230 = v34;
  v264 = v36;
  v257 = v37;
  v234 = v41;
  v256 = v56;
  if (a3)
  {
    v60 = &v213 - v55;
    v61 = v56;
    (*(v56 + 104))(&v213 - v55, enum case for FMIPDeviceImageSize.list(_:), v49, v59);
    v259 = *(v37 + 16);
    v259(v41, v265, v36);
    v62 = *(v61 + 16);
    v225 = v60;
    v217 = v62;
    v62(v53, v60, v49);
    v63 = objc_opt_self();

    v216 = v63;
    v64 = [v63 mainScreen];
    [v64 scale];

    FMIPDeviceImageCacheRequest.init(itemParts:device:size:scale:)();
    v226 = v48;
    v65 = v49;
    dispatch thunk of FMImageCache.cachedImage(for:completion:)();
    if (aBlock[0])
    {
      v243 = aBlock[0];

      v66 = v258;
      v67 = v254;
      v68 = v251;
      v69 = v225;
      (*(v245 + 8))(v226, v246);
    }

    else
    {
      v259(v41, v265, v264);
      v232 = v49;
      v80 = v225;
      v217(v53, v225, v49);
      v81 = [v216 mainScreen];
      [v81 scale];

      v82 = v243;
      FMIPDeviceImageCacheRequest.init(device:size:scale:)();
      dispatch thunk of FMImageCache.cachedImage(for:completion:)();
      v83 = *(v245 + 8);
      v84 = v246;
      v83(v82, v246);

      v243 = v268;
      v66 = v258;
      v67 = v254;
      v68 = v251;
      v69 = v80;
      v65 = v232;
      v83(v226, v84);
    }

    (*(v256 + 8))(v69, v65);
    v79 = v265;
  }

  else
  {
    v70 = v58;
    v71 = v57;
    v217 = v43;
    v225 = v53;
    v232 = v49;
    v72 = v259;
    FMIPDevice.itemGroup.getter();
    if ((*(v34 + 48))(v72, 1, v33) != 1)
    {
      (*(v34 + 32))(v226, v72, v33);

      v93 = FMIPItemGroup.items.getter();
      v215 = sub_10053840C(v93);

      v94 = v256;
      v95 = v232;
      (*(v256 + 104))(v71, enum case for FMIPDeviceImageSize.list(_:), v232);
      v96 = *(v37 + 16);
      v97 = v234;
      v96(v234, v265, v36);
      v98 = *(v94 + 16);
      v99 = v225;
      v216 = v71;
      v214 = v98;
      v98(v225, v71, v95);
      v100 = objc_opt_self();
      v101 = [v100 mainScreen];
      [v101 scale];

      FMIPDeviceImageCacheRequest.init(itemParts:device:size:scale:)();
      dispatch thunk of FMImageCache.cachedImage(for:completion:)();
      v259 = v96;
      if (aBlock[0])
      {
        v243 = aBlock[0];

        v66 = v258;
        v68 = v251;
        v86 = v247;
        (*(v245 + 8))(v217, v246);
      }

      else
      {
        v96(v97, v265, v36);
        v214(v99, v216, v232);
        v201 = [v100 mainScreen];
        [v201 scale];

        v202 = v243;
        FMIPDeviceImageCacheRequest.init(device:size:scale:)();
        dispatch thunk of FMImageCache.cachedImage(for:completion:)();
        v203 = *(v245 + 8);
        v204 = v202;
        v205 = v246;
        v203(v204, v246);

        v243 = v268;
        v66 = v258;
        v68 = v251;
        v86 = v247;
        v203(v217, v205);
      }

      (*(v256 + 8))(v216, v232);
      (*(v230 + 8))(v226, v231);
      v67 = v254;
      v79 = v265;
      v85 = v253;
      goto LABEL_9;
    }

    sub_100012DF0(v72, &unk_1006BB1C0, &unk_1005534F0);
    v73 = v256;
    v74 = v225;
    v75 = v232;
    (*(v256 + 104))(v225, enum case for FMIPDeviceImageSize.list(_:), v232);
    v259 = *(v37 + 16);
    v259(v234, v265, v36);
    (*(v73 + 16))(v70, v74, v75);
    v76 = objc_opt_self();

    v77 = [v76 mainScreen];
    [v77 scale];

    v78 = v243;
    FMIPDeviceImageCacheRequest.init(device:size:scale:)();
    dispatch thunk of FMImageCache.cachedImage(for:completion:)();
    (*(v245 + 8))(v78, v246);

    v243 = aBlock[0];
    (*(v73 + 8))(v74, v75);
    v66 = v258;
    v67 = v254;
    v68 = v251;
    v79 = v265;
  }

  v85 = v253;
  v86 = v247;
LABEL_9:
  sub_100007204(v68, v86, &qword_1006B07D0, qword_100552820);
  v261 = *(v67 + 48);
  if (v261(v86, 1, v66) == 1)
  {
    sub_100012DF0(v86, &qword_1006B07D0, qword_100552820);
    v255 = 0;
  }

  else
  {
    FMIPItem.partInfo.getter();
    v87 = v255;
    (*(v67 + 8))(v86, v66);
    v88 = type metadata accessor for FMIPPartInfo();
    v89 = *(v88 - 8);
    if ((*(v89 + 48))(v87, 1, v88) == 1)
    {
      sub_100012DF0(v87, &unk_1006C2470, &unk_1005642F0);
      v255 = 0;
      v79 = v265;
    }

    else
    {
      FMIPPartInfo.symbol.getter();
      v91 = v90;
      (*(v89 + 8))(v87, v88);
      if (v91)
      {
        v92 = String._bridgeToObjectiveC()();
        v255 = [objc_opt_self() systemImageNamed:v92];
      }

      else
      {
        v255 = 0;
      }

      v79 = v265;
      v85 = v253;
    }
  }

  sub_100007204(v68, v85, &qword_1006B07D0, qword_100552820);
  v102 = v261(v85, 1, v66);
  v256 = v67 + 48;
  if (v102 == 1)
  {
    sub_100012DF0(v85, &qword_1006B07D0, qword_100552820);
    v103 = FMIPDevice.identifier.getter();
    v104 = v262;
    *v262 = v103;
    v104[1] = v105;
    swift_storeEnumTagMultiPayload();
    v253 = sub_1004C4B28(v79);
    v265 = v106;
  }

  else
  {
    v107 = v229;
    (*(v67 + 32))(v229, v85, v66);
    v108 = FMIPDevice.identifier.getter();
    v110 = v109;
    v111 = FMIPItem.identifier.getter();
    v112 = v262;
    *v262 = v108;
    v112[1] = v110;
    v112[2] = v111;
    v112[3] = v113;
    swift_storeEnumTagMultiPayload();
    v253 = sub_1004C43F0(v107, v79);
    v265 = v114;
    (*(v67 + 8))(v107, v66);
  }

  v115 = v263;
  v116 = v249;
  if (*(v249 + 16))
  {
    v117 = sub_1001B4074(v262);
    if (v118)
    {
      v119 = *(*(v116 + 56) + 8 * v117);
      type metadata accessor for FMDeviceAnnotation();
      v120 = swift_dynamicCastClass();
      if (v120)
      {
        v121 = v120;
        v263 = v119;
        v122 = FMIPLocation.location.getter();
        [v122 coordinate];
        v124 = v123;
        v126 = v125;

        v127 = FMIPLocation.location.getter();
        [v127 horizontalAccuracy];
        v129 = v128;

        v261 = *&v121[OBJC_IVAR____TtC6FindMy18FMDeviceAnnotation_updateQueue];
        static DispatchWorkItemFlags.barrier.getter();
        v130 = v257;
        v259(v234, v79, v264);
        v131 = v244;
        sub_100007204(v68, v244, &qword_1006B07D0, qword_100552820);
        v132 = (*(v130 + 80) + 32) & ~*(v130 + 80);
        v133 = (v218 + *(v219 + 80) + v132) & ~*(v219 + 80);
        v134 = (v220 + v133 + 7) & 0xFFFFFFFFFFFFFFF8;
        v135 = (v134 + 15) & 0xFFFFFFFFFFFFFFF8;
        v136 = (v135 + 23) & 0xFFFFFFFFFFFFFFF8;
        v137 = swift_allocObject();
        *(v137 + 16) = v129;
        *(v137 + 24) = v121;
        (*(v130 + 32))(v137 + v132, v234, v264);
        sub_100035318(v131, v137 + v133, &qword_1006B07D0, qword_100552820);
        v138 = v243;
        *(v137 + v134) = v243;
        v139 = (v137 + v135);
        *v139 = v124;
        v139[1] = v126;
        v140 = (v137 + v136);
        v141 = v265;
        *v140 = v253;
        v140[1] = v141;
        v142 = v255;
        *(v137 + ((v136 + 23) & 0xFFFFFFFFFFFFFFF8)) = v255;
        aBlock[4] = sub_1004D1B9C;
        aBlock[5] = v137;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100004AE4;
        aBlock[3] = &unk_1006426E0;
        v143 = _Block_copy(aBlock);
        v144 = v142;
        v145 = v263;
        v146 = v138;
        v147 = v252;
        static DispatchQoS.unspecified.getter();
        v148 = v227;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v143);

        (*(v223 + 8))(v147, v224);
        (*(v221 + 8))(v148, v222);
        sub_10002A100(v262, type metadata accessor for FMAnnotationIdentifier);

        return v121;
      }
    }
  }

  v149 = FMIPLocation.location.getter();
  [v149 coordinate];
  v151 = v150;
  v153 = v152;

  v154 = FMIPLocation.location.getter();
  [v154 horizontalAccuracy];
  v156 = v155;
  v157 = v155;

  v259(v115, v79, v264);
  sub_100007204(v68, v260, &qword_1006B07D0, qword_100552820);
  v158 = objc_allocWithZone(type metadata accessor for FMDeviceAnnotation());
  v159 = OBJC_IVAR____TtC6FindMy18FMDeviceAnnotation_deviceImage;
  *&v158[OBJC_IVAR____TtC6FindMy18FMDeviceAnnotation_deviceImage] = 0;
  v160 = OBJC_IVAR____TtC6FindMy18FMDeviceAnnotation_updateQueue;
  sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
  static DispatchQoS.userInteractive.getter();
  static OS_dispatch_queue.Attributes.concurrent.getter();
  (*(v241 + 104))(v240, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v242);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v158[v160] = result;
  if ((*&v157 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_45;
  }

  if (v156 <= -9.22337204e18)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v156 >= 9.22337204e18)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v162 = v236;
  v163 = v235;
  v164 = v237;
  (*(v236 + 104))(v235, enum case for FMIPConfigValue.inaccuracyRadiusThreshold(_:), v237);
  v268 = 0x7FFFFFFFFFFFFFFFLL;
  FMIPGlobalConfig<A>(_:fallback:)();
  (*(v162 + 8))(v163, v164);
  v165 = aBlock[0] < v156;
  sub_10007EBC0(&unk_1006C2480, qword_10055D360);
  v166 = swift_allocObject();
  *(v166 + ((*(*v166 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  v259((v166 + *(*v166 + class metadata base offset for ManagedBuffer + 16)), v263, v264);
  *&v158[OBJC_IVAR____TtC6FindMy18FMDeviceAnnotation_deviceLock] = v166;
  v167 = v260;
  v168 = v244;
  sub_100007204(v260, v244, &qword_1006B07D0, qword_100552820);
  sub_10007EBC0(&unk_1006BB1D0, qword_100564000);
  v169 = swift_allocObject();
  *(v169 + ((*(*v169 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_100007204(v168, v169 + *(*v169 + class metadata base offset for ManagedBuffer + 16), &qword_1006B07D0, qword_100552820);
  sub_100012DF0(v168, &qword_1006B07D0, qword_100552820);
  *&v158[OBJC_IVAR____TtC6FindMy18FMDeviceAnnotation_partLock] = v169;
  v170 = *&v158[v159];
  v171 = v243;
  *&v158[v159] = v243;
  v172 = v171;

  v173 = &v158[OBJC_IVAR____TtC6FindMy18FMDeviceAnnotation_tempCoordinate];
  *v173 = v151;
  v173[1] = v153;
  v174 = &v158[OBJC_IVAR____TtC6FindMy12FMAnnotation_title];
  *v174 = 0;
  v174[1] = 0;
  *&v158[OBJC_IVAR____TtC6FindMy12FMAnnotation_badgeImage] = 0;
  *&v158[OBJC_IVAR____TtC6FindMy12FMAnnotation_stewieBadgeImage] = 0;
  v175 = &v158[OBJC_IVAR____TtC6FindMy12FMAnnotation_fmClusterIdentifier];
  v176 = v265;
  *v175 = v253;
  v175[1] = v176;
  v177 = &v158[OBJC_IVAR____TtC6FindMy12FMAnnotation_coordinate];
  *v177 = v151;
  v177[1] = v153;
  *&v158[OBJC_IVAR____TtC6FindMy12FMAnnotation_horizontalAccuracy] = v156;
  v158[OBJC_IVAR____TtC6FindMy12FMAnnotation_isWithYou] = v176 == 1;
  v158[OBJC_IVAR____TtC6FindMy12FMAnnotation_isInaccurate] = v165;
  v158[OBJC_IVAR____TtC6FindMy12FMAnnotation_isLive] = 0;
  v178 = type metadata accessor for FMAnnotation();
  v267.receiver = v158;
  v267.super_class = v178;
  v179 = objc_msgSendSuper2(&v267, "init");
  v180 = *&v179[OBJC_IVAR____TtC6FindMy12FMAnnotation_badgeImage];
  v181 = v255;
  *&v179[OBJC_IVAR____TtC6FindMy12FMAnnotation_badgeImage] = v255;
  v182 = v179;
  v183 = v181;
  v121 = v182;

  v184 = v238;
  sub_100007204(v167, v238, &qword_1006B07D0, qword_100552820);
  v185 = v258;
  if (v261(v184, 1, v258) == 1)
  {
    sub_100012DF0(v184, &qword_1006B07D0, qword_100552820);
    v186 = 0;
LABEL_42:
    v206 = v260;
    v207 = v261(v260, 1, v185) != 1;
    v208 = v263;
    v209 = sub_1002642B0(v263, v206, v186, v207);
    v211 = v210;

    (*(v257 + 8))(v208, v264);
    sub_10002A100(v262, type metadata accessor for FMAnnotationIdentifier);
    v212 = &v121[OBJC_IVAR____TtC6FindMy12FMAnnotation_title];
    *v212 = v209;
    v212[1] = v211;

    sub_100012DF0(v206, &qword_1006B07D0, qword_100552820);
    return v121;
  }

  v187 = v172;
  v188 = v254;
  v189 = v233;
  (*(v254 + 32))(v233, v184, v185);
  v190 = v228;
  FMIPDevice.itemGroup.getter();
  v191 = v230;
  v192 = v231;
  if ((*(v230 + 48))(v190, 1, v231) == 1)
  {
    sub_100012DF0(v190, &unk_1006BB1C0, &unk_1005534F0);
LABEL_37:
    (*(v188 + 8))(v189, v185);
    v186 = 0;
    v172 = v187;
    goto LABEL_42;
  }

  v193 = FMIPItemGroup.groupedItems.getter();
  v194 = (*(v191 + 8))(v190, v192);
  __chkstk_darwin(v194);
  *(&v213 - 2) = v189;
  v195 = sub_100110710(sub_1002F5958, (&v213 - 4), v193);
  v189 = v233;
  v196 = v195;

  if (!v196)
  {
    goto LABEL_37;
  }

  v197 = *(v196 + 16);
  v172 = v187;
  if (!v197)
  {

    v186 = _swiftEmptyArrayStorage;
    v200 = v233;
    goto LABEL_41;
  }

  v186 = sub_10008C8B4(*(v196 + 16), 0);
  sub_1004A2330(aBlock, &v186[(*(v188 + 80) + 32) & ~*(v188 + 80)], v197, v196);
  v199 = v198;
  result = sub_10000BEC8(aBlock[0]);
  if (v199 == v197)
  {
    v200 = v233;
LABEL_41:
    (*(v188 + 8))(v200, v185);
    goto LABEL_42;
  }

LABEL_47:
  __break(1u);
  return result;
}

double sub_1004BD720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v96 = a1;
  v90 = type metadata accessor for DispatchWorkItemFlags();
  v89 = *(v90 - 8);
  __chkstk_darwin(v90);
  v87 = v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for DispatchQoS();
  v86 = *(v88 - 8);
  __chkstk_darwin(v88);
  v85 = v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007EBC0(&qword_1006AF740, &unk_100552330);
  __chkstk_darwin(v6 - 8);
  v91 = v81 - v7;
  v8 = sub_10007EBC0(&qword_1006B0050, &unk_1005538A0);
  __chkstk_darwin(v8 - 8);
  v93 = (v81 - v9);
  v10 = type metadata accessor for FMFFriend();
  v95 = *(v10 - 8);
  v11 = v95[8];
  __chkstk_darwin(v10);
  v84 = v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v83 = v81 - v13;
  __chkstk_darwin(v14);
  v92 = v81 - v15;
  __chkstk_darwin(v16);
  v18 = v81 - v17;
  v19 = type metadata accessor for FMSelectedSection(0);
  __chkstk_darwin(v19);
  v94 = v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = v81 - v22;
  __chkstk_darwin(v24);
  v26 = v81 - v25;
  v99 = swift_allocObject();
  *(v99 + 16) = &_swiftEmptyDictionarySingleton;
  v97 = v3;
  v27 = *(*(v3 + 16) + 56);
  v28 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100027BE0(v27 + v28, v26, type metadata accessor for FMSelectedSection);
  v98 = v26;
  sub_100027BE0(v26, v23, type metadata accessor for FMSelectedSection);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v29 = v95;
    v30 = v95[4];
    v31 = v30(v18, v23, v10);
    __chkstk_darwin(v31);
    v81[-2] = v18;
    v32 = v93;
    v33 = v96;
    sub_1000341A8(sub_1004D1AB0, v96, v93);
    v34 = (v29[6])(v32, 1, v10);
    v35 = v10;
    v36 = v29;
    v37 = v18;
    if (v34 == 1)
    {
      sub_100012DF0(v32, &qword_1006B0050, &unk_1005538A0);
LABEL_15:
      *(v97 + 58) = 0;
      sub_100012488(v33, v38, v39);
      sub_10002A100(v98, type metadata accessor for FMSelectedSection);
      (v36[1])(v37, v35);
      goto LABEL_16;
    }

    v50 = v92;
    v93 = v30;
    v30(v92, v32, v35);
    v51 = v35;
    v52 = v91;
    FMFFriend.location.getter();
    v53 = v52;
    v54 = type metadata accessor for FMFLocation();
    v55 = *(v54 - 8);
    if ((*(v55 + 48))(v53, 1, v54) == 1)
    {
      (v36[1])(v50, v51);
      sub_100012DF0(v53, &qword_1006AF740, &unk_100552330);
      v35 = v51;
      goto LABEL_15;
    }

    v94 = v37;
    v56 = FMFLocation.location.getter();
    (*(v55 + 8))(v53, v54);
    v91 = v56;
    if (!v56)
    {
      v35 = v51;
      (v36[1])(v50, v51);
      v37 = v94;
      goto LABEL_15;
    }

    v81[1] = *(v97 + 88);
    v57 = v36[2];
    v58 = v83;
    v82 = v51;
    v57(v83, v50, v51);
    v59 = v84;
    v57(v84, v94, v51);
    v60 = *(v36 + 80);
    v61 = (v60 + 24) & ~v60;
    v62 = v11 + 7;
    v63 = (v11 + 7 + v61) & 0xFFFFFFFFFFFFFFF8;
    v64 = (v63 + 15) & 0xFFFFFFFFFFFFFFF8;
    v65 = (v60 + v64 + 8) & ~v60;
    v66 = (v62 + v65) & 0xFFFFFFFFFFFFFFF8;
    v67 = swift_allocObject();
    *(v67 + 16) = v97;
    v68 = v67 + v61;
    v69 = v58;
    v70 = v82;
    v71 = v93;
    v93(v68, v69, v82);
    v72 = v91;
    *(v67 + v63) = v91;
    *(v67 + v64) = v96;
    v71(v67 + v65, v59, v70);
    *(v67 + v66) = v99;
    v104 = sub_1004D1AE4;
    v105 = v67;
    aBlock = _NSConcreteStackBlock;
    v101 = 1107296256;
    v102 = sub_100004AE4;
    v103 = &unk_100642640;
    v73 = _Block_copy(&aBlock);

    v74 = v72;

    v75 = v85;
    static DispatchQoS.unspecified.getter();
    v106 = _swiftEmptyArrayStorage;
    sub_10000A738(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
    sub_100004098(&qword_1006AEDF0, &unk_1006B0640, &unk_100552B10, &protocol conformance descriptor for [A]);
    v76 = v87;
    v77 = v90;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v73);

    (*(v89 + 8))(v76, v77);
    (*(v86 + 8))(v75, v88);
    v78 = v95[1];
    v79 = v82;
    v78(v92, v82);
    sub_10002A100(v98, type metadata accessor for FMSelectedSection);

    v78(v94, v79);
  }

  else
  {
    sub_10002A100(v23, type metadata accessor for FMSelectedSection);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_100005B14(v40, qword_1006D4630);
    v41 = v98;
    v42 = v94;
    sub_100027BE0(v98, v94, type metadata accessor for FMSelectedSection);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v106 = v46;
      *v45 = 136315138;
      aBlock = 0;
      v101 = 0xE000000000000000;
      _print_unlocked<A, B>(_:_:)();
      v47 = aBlock;
      v48 = v101;
      sub_10002A100(v42, type metadata accessor for FMSelectedSection);
      v49 = sub_100005B4C(v47, v48, &v106);

      *(v45 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v43, v44, "FMMapViewDataSource: cannot fetch person value from selected section %s", v45, 0xCu);
      sub_100006060(v46);
    }

    else
    {

      sub_10002A100(v42, type metadata accessor for FMSelectedSection);
    }

    sub_10002A100(v41, type metadata accessor for FMSelectedSection);
  }

LABEL_16:

  return result;
}

void sub_1004BE264(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v103 = a4;
  v104 = a5;
  v100 = a3;
  v8 = type metadata accessor for FMFFriend();
  v105 = *(v8 - 8);
  v106 = v8;
  __chkstk_darwin(v8);
  v10 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FMFLocationSource();
  v96 = *(v11 - 8);
  __chkstk_darwin(v11);
  v92 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_10007EBC0(&qword_1006B14A8, &qword_10055EDC0);
  __chkstk_darwin(v95);
  v97 = &v88 - v13;
  v14 = sub_10007EBC0(&qword_1006AF740, &unk_100552330);
  __chkstk_darwin(v14 - 8);
  v99 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v94 = &v88 - v17;
  v18 = sub_10007EBC0(&unk_1006C2460, &unk_100553880);
  __chkstk_darwin(v18 - 8);
  v93 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v88 - v21;
  __chkstk_darwin(v23);
  v102 = &v88 - v24;
  v25 = type metadata accessor for FMAnnotationIdentifier(0);
  __chkstk_darwin(v25);
  v27 = (&v88 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v28);
  v30 = (&v88 - v29);
  *v30 = FMFFriend.identifier.getter();
  v30[1] = v31;
  v101 = v25;
  swift_storeEnumTagMultiPayload();
  v32 = *(a1 + 48);
  if (!*(v32 + 16))
  {
    goto LABEL_7;
  }

  v33 = sub_1001B4074(v30);
  if ((v34 & 1) == 0)
  {

LABEL_7:
    sub_10002A100(v30, type metadata accessor for FMAnnotationIdentifier);
LABEL_8:
    v51 = 0;
    v52 = v103;
    goto LABEL_9;
  }

  v91 = v11;
  v35 = *(*(v32 + 56) + 8 * v33);
  sub_10002A100(v30, type metadata accessor for FMAnnotationIdentifier);

  type metadata accessor for FMPersonAnnotation();
  v36 = swift_dynamicCastClass();
  if (!v36)
  {

    goto LABEL_8;
  }

  v37 = v36;
  v38 = v35;
  [v37 coordinate];
  v40 = v39;
  [v37 coordinate];
  v42 = v41;
  v90 = v38;

  v89 = [objc_allocWithZone(CLLocation) initWithLatitude:v40 longitude:v42];
  [v89 distanceFromLocation:v100];
  v44 = v43;
  v45 = v94;
  FMFFriend.location.getter();
  v46 = type metadata accessor for FMFLocation();
  v47 = *(v46 - 8);
  if ((*(v47 + 48))(v45, 1, v46) == 1)
  {
    sub_100012DF0(v45, &qword_1006AF740, &unk_100552330);
    v48 = 1;
    v49 = v91;
    v50 = v102;
  }

  else
  {
    v50 = v102;
    FMFLocation.locationSource.getter();
    (*(v47 + 8))(v45, v46);
    v48 = 0;
    v49 = v91;
  }

  v75 = v96;
  v76 = *(v96 + 56);
  v76(v50, v48, 1, v49);
  (*(v75 + 104))(v22, enum case for FMFLocationSource.secureLive(_:), v49);
  v76(v22, 0, 1, v49);
  v77 = *(v95 + 48);
  v78 = v50;
  v79 = v97;
  sub_100007204(v78, v97, &unk_1006C2460, &unk_100553880);
  v95 = v77;
  v80 = v79;
  sub_100007204(v22, &v79[v77], &unk_1006C2460, &unk_100553880);
  v81 = *(v75 + 48);
  if (v81(v80, 1, v49) != 1)
  {
    v94 = v22;
    v84 = v93;
    sub_100007204(v80, v93, &unk_1006C2460, &unk_100553880);
    if (v81(v80 + v95, 1, v49) != 1)
    {
      v85 = v96;
      v86 = v92;
      (*(v96 + 32))(v92, v80 + v95, v49);
      sub_10000A738(&qword_1006B14E0, &type metadata accessor for FMFLocationSource, &protocol conformance descriptor for FMFLocationSource);
      LODWORD(v95) = dispatch thunk of static Equatable.== infix(_:_:)();
      v87 = *(v85 + 8);
      v87(v86, v49);
      sub_100012DF0(v94, &unk_1006C2460, &unk_100553880);
      sub_100012DF0(v102, &unk_1006C2460, &unk_100553880);
      v87(v93, v49);
      sub_100012DF0(v80, &unk_1006C2460, &unk_100553880);

      v52 = v103;
      if ((v95 & 1) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_35;
    }

    sub_100012DF0(v94, &unk_1006C2460, &unk_100553880);
    v82 = v97;
    sub_100012DF0(v102, &unk_1006C2460, &unk_100553880);
    (*(v96 + 8))(v84, v49);
    v52 = v103;
LABEL_33:
    sub_100012DF0(v82, &qword_1006B14A8, &qword_10055EDC0);

    goto LABEL_37;
  }

  sub_100012DF0(v22, &unk_1006C2460, &unk_100553880);
  v82 = v97;
  sub_100012DF0(v102, &unk_1006C2460, &unk_100553880);
  v83 = v81(&v82[v95], 1, v49);
  v52 = v103;
  if (v83 != 1)
  {
    goto LABEL_33;
  }

  sub_100012DF0(v82, &unk_1006C2460, &unk_100553880);

LABEL_35:
  if (v44 < 50000.0)
  {
    v51 = 1;
    goto LABEL_9;
  }

LABEL_37:
  v51 = 0;
LABEL_9:
  *(a1 + 57) = v51;
  *(a1 + 58) = 1;
  v53 = v52[2];
  if (v53)
  {
    v54 = *(v105 + 16);
    v55 = v52 + ((*(v105 + 80) + 32) & ~*(v105 + 80));
    v102 = *(v105 + 72);
    v103 = v54;
    v105 += 16;
    v56 = (v105 - 8);
    v98 = a6;
    (v54)(v10, v55, v106);
    while (1)
    {
      v61 = FMFFriend.identifier.getter();
      v63 = v62;
      if (v61 == FMFFriend.identifier.getter() && v63 == v64)
      {
        break;
      }

      v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v65)
      {
        goto LABEL_12;
      }

      v66 = a1;
      v67 = v99;
      FMFFriend.location.getter();
      v68 = type metadata accessor for FMFLocation();
      v69 = *(v68 - 8);
      if ((*(v69 + 48))(v67, 1, v68) == 1)
      {
        (*v56)(v10, v106);
        sub_100012DF0(v67, &qword_1006AF740, &unk_100552330);
      }

      else
      {
        v70 = FMFLocation.location.getter();
        (*(v69 + 8))(v67, v68);
        if (v70)
        {
          *v27 = FMFFriend.identifier.getter();
          v27[1] = v71;
          swift_storeEnumTagMultiPayload();
          a1 = v66;
          v72 = *(v66 + 48);

          v97 = sub_1004BEE98(v10, v70, v72);

          a6 = v98;
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v107 = *(a6 + 16);
          *(a6 + 16) = 0x8000000000000000;
          sub_1001BCC70(v97, v27, isUniquelyReferenced_nonNull_native);
          sub_10002A100(v27, type metadata accessor for FMAnnotationIdentifier);
          *(a6 + 16) = v107;
          swift_endAccess();

          goto LABEL_13;
        }

        (*v56)(v10, v106);
      }

      a1 = v66;
      a6 = v98;
LABEL_14:
      v55 += v102;
      if (!--v53)
      {
        goto LABEL_25;
      }

      (v103)(v10, v55, v106);
    }

LABEL_12:
    *v27 = FMFFriend.identifier.getter();
    v27[1] = v57;
    swift_storeEnumTagMultiPayload();
    v58 = *(a1 + 48);

    v59 = sub_1004BEE98(v10, v100, v58);

    swift_beginAccess();
    v60 = swift_isUniquelyReferenced_nonNull_native();
    v107 = *(a6 + 16);
    *(a6 + 16) = 0x8000000000000000;
    sub_1001BCC70(v59, v27, v60);
    sub_10002A100(v27, type metadata accessor for FMAnnotationIdentifier);
    *(a6 + 16) = v107;
    swift_endAccess();
LABEL_13:
    (*v56)(v10, v106);
    goto LABEL_14;
  }

LABEL_25:
  swift_beginAccess();

  sub_100012E50(v74, _swiftEmptyArrayStorage);
}

char *sub_1004BEE98(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchQoS();
  v58 = *(v6 - 8);
  v59 = v6;
  __chkstk_darwin(v6);
  v56 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for DispatchWorkItemFlags();
  v55 = *(v57 - 8);
  __chkstk_darwin(v57);
  v60 = v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10007EBC0(&qword_1006B0050, &unk_1005538A0);
  v54 = *(v9 - 8);
  v10 = *(v54 + 64);
  __chkstk_darwin(v9 - 8);
  v11 = v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v53 - v13;
  v15 = type metadata accessor for FMAnnotationIdentifier(0);
  __chkstk_darwin(v15);
  v17 = (v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));

  v18 = sub_10002DCD8(a1, 0);

  *v17 = FMFFriend.identifier.getter();
  v17[1] = v19;
  swift_storeEnumTagMultiPayload();
  if (!*(a3 + 16) || (v20 = sub_1001B4074(v17), (v21 & 1) == 0))
  {
    sub_10002A100(v17, type metadata accessor for FMAnnotationIdentifier);
LABEL_6:
    [a2 coordinate];
    v44 = v43;
    v46 = v45;
    [a2 horizontalAccuracy];
    v48 = v47;
    v49 = type metadata accessor for FMFFriend();
    v50 = *(v49 - 8);
    (*(v50 + 16))(v14, a1, v49);
    (*(v50 + 56))(v14, 0, 1, v49);
    v51 = objc_allocWithZone(type metadata accessor for FMPersonAnnotation());
    v24 = sub_100339D48(v14, v18, 0, v44, v46, v48);

    return v24;
  }

  v22 = *(*(a3 + 56) + 8 * v20);
  sub_10002A100(v17, type metadata accessor for FMAnnotationIdentifier);
  type metadata accessor for FMPersonAnnotation();
  v23 = swift_dynamicCastClass();
  if (!v23)
  {

    goto LABEL_6;
  }

  v24 = v23;
  [a2 coordinate];
  v26 = v25;
  v28 = v27;
  [a2 horizontalAccuracy];
  v30 = v29;
  v31 = type metadata accessor for FMFFriend();
  v32 = *(v31 - 8);
  (*(v32 + 16))(v14, a1, v31);
  (*(v32 + 56))(v14, 0, 1, v31);
  v53[1] = *&v24[OBJC_IVAR____TtC6FindMy18FMPersonAnnotation_updateQueue];
  static DispatchWorkItemFlags.barrier.getter();
  v53[0] = v22;
  sub_100007204(v14, v11, &qword_1006B0050, &unk_1005538A0);
  v33 = (*(v54 + 80) + 25) & ~*(v54 + 80);
  v34 = (v10 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  *(v36 + 16) = v30;
  *(v36 + 24) = 0;
  sub_100035318(v11, v36 + v33, &qword_1006B0050, &unk_1005538A0);
  *(v36 + v34) = v24;
  *(v36 + v35) = v18;
  v37 = (v36 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v37 = v26;
  v37[1] = v28;
  aBlock[4] = sub_1004D19F4;
  aBlock[5] = v36;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_1006425F0;
  v38 = _Block_copy(aBlock);
  v39 = v18;
  v40 = v53[0];
  v41 = v56;
  static DispatchQoS.unspecified.getter();
  v42 = v60;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v38);

  (*(v58 + 8))(v41, v59);
  (*(v55 + 8))(v42, v57);
  sub_100012DF0(v14, &qword_1006B0050, &unk_1005538A0);

  return v24;
}

double sub_1004BF4C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v89 = type metadata accessor for DispatchWorkItemFlags();
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v85 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for DispatchQoS();
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v84 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v102 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_10007EBC0(&qword_1006B22E8, &unk_100555270);
  __chkstk_darwin(v115);
  v123 = &v82 - v11;
  v12 = sub_10007EBC0(&unk_1006B20C0, &unk_100552E10);
  __chkstk_darwin(v12 - 8);
  v14 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v112 = &v82 - v16;
  __chkstk_darwin(v17);
  v111 = &v82 - v18;
  v124 = type metadata accessor for FMIPBeaconShare();
  v122 = *(v124 - 8);
  __chkstk_darwin(v124);
  v20 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for FMIPItem();
  v21 = *(v105 - 8);
  __chkstk_darwin(v105);
  v98 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v119 = &v82 - v24;
  v25 = swift_allocObject();
  *(v25 + 16) = &_swiftEmptyDictionarySingleton;
  v96 = *(a1 + 16);
  v83 = v25;
  if (v96)
  {
    v109 = v14;
    v114 = v8;
    v26 = 0;
    v104 = 0;
    v28 = *(v21 + 16);
    v27 = v21 + 16;
    v95 = v28;
    v29 = (*(v27 + 64) + 32) & ~*(v27 + 64);
    v101 = *(v27 + 56);
    v92 = v29;
    v94 = a1 + v29;
    v120 = (v122 + 8);
    v121 = v122 + 16;
    v113 = (v9 + 56);
    v100 = (v9 + 32);
    v107 = (v9 + 8);
    v90 = (v27 - 8);
    v97 = (v27 + 16);
    v99 = _swiftEmptyArrayStorage;
    v91 = v4;
    v108 = v20;
    v93 = v27;
    v110 = (v9 + 48);
    while (1)
    {
      v103 = v26;
      v30 = v119;
      v31 = v95(v119, v94 + v101 * v26, v105);
      v32 = *(*(v4[2] + 3) + 64);
      __chkstk_darwin(v31);
      *(&v82 - 2) = v30;

      v33 = v104;
      sub_1001048C4(sub_100109D8C, (&v82 - 4), v32);
      v35 = v34;
      v104 = v33;

      v36 = *(v35 + 16);
      if (v36)
      {
        break;
      }

LABEL_21:
      v59 = *v97;
      (*v97)(v98, v119, v105);
      v60 = v99;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v62 = v60;
      aBlock = v60;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10016704C(0, v60[2] + 1, 1);
        v62 = aBlock;
      }

      v64 = v62[2];
      v63 = v62[3];
      if (v64 >= v63 >> 1)
      {
        sub_10016704C((v63 > 1), v64 + 1, 1);
        v62 = aBlock;
      }

      v62[2] = (v64 + 1);
      v99 = v62;
      v59(v62 + v92 + v64 * v101, v98, v105);
LABEL_4:
      v26 = v103 + 1;
      if (v103 + 1 == v96)
      {
        goto LABEL_27;
      }
    }

    v37 = 0;
    v38 = v35 + ((*(v122 + 80) + 32) & ~*(v122 + 80));
    v39 = v112;
    v40 = v111;
    v41 = v110;
    v4 = &unk_1006B20C0;
    v117 = *(v35 + 16);
    v118 = v35;
    v116 = v38;
    while (1)
    {
      if (v37 >= *(v35 + 16))
      {
        __break(1u);
LABEL_35:
        swift_once();
LABEL_30:
        v73 = type metadata accessor for Logger();
        sub_100005B14(v73, qword_1006D4630);
        v74 = Logger.logObject.getter();
        v75 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          *v76 = 0;
          _os_log_impl(&_mh_execute_header, v74, v75, "FMMapViewDataSource: devicesProvider is not initialized hidding items", v76, 2u);
        }

        v130 = sub_1004D1974;
        v131 = v4;
        aBlock = _NSConcreteStackBlock;
        v127 = 1107296256;
        v128 = sub_100004AE4;
        v129 = &unk_100642500;
        v77 = _Block_copy(&aBlock);

        v78 = v84;
        static DispatchQoS.unspecified.getter();
        v125 = _swiftEmptyArrayStorage;
        sub_10000A738(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
        sub_100004098(&qword_1006AEDF0, &unk_1006B0640, &unk_100552B10, &protocol conformance descriptor for [A]);
        v79 = v85;
        v80 = v89;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v77);
        (*(v88 + 8))(v79, v80);
        (*(v86 + 8))(v78, v87);
        goto LABEL_33;
      }

      (*(v122 + 16))(v20, v38 + *(v122 + 72) * v37, v124);
      if (FMIPBeaconShare.isSharedLostItem.getter())
      {
        FMIPBeaconShare.beaconIdentifier.getter();
        v42 = v114;
        (*v113)(v40, 0, 1, v114);
        FMIPItem.identifier.getter();
        UUID.init(uuidString:)();

        v43 = *(v115 + 48);
        v44 = v123;
        sub_100007204(v40, v123, &unk_1006B20C0, &unk_100552E10);
        sub_100007204(v39, v44 + v43, &unk_1006B20C0, &unk_100552E10);
        v45 = v20;
        v46 = *v41;
        if ((*v41)(v44, 1, v42) == 1)
        {
          sub_100012DF0(v39, &unk_1006B20C0, &unk_100552E10);
          sub_100012DF0(v40, &unk_1006B20C0, &unk_100552E10);
          (*v120)(v45, v124);
          v47 = v46(v123 + v43, 1, v42);
          v20 = v45;
          if (v47 == 1)
          {
            sub_100012DF0(v123, &unk_1006B20C0, &unk_100552E10);
LABEL_3:

            (*v90)(v119, v105);
            v4 = v91;
            goto LABEL_4;
          }
        }

        else
        {
          v48 = v123;
          v49 = v109;
          sub_100007204(v123, v109, &unk_1006B20C0, &unk_100552E10);
          if (v46(v48 + v43, 1, v42) != 1)
          {
            v52 = v102;
            (*v100)(v102, v48 + v43, v42);
            sub_10000A738(&qword_1006B22F0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v106 = dispatch thunk of static Equatable.== infix(_:_:)();
            v53 = *v107;
            (*v107)(v52, v42);
            v54 = v112;
            sub_100012DF0(v112, &unk_1006B20C0, &unk_100552E10);
            v55 = v111;
            sub_100012DF0(v111, &unk_1006B20C0, &unk_100552E10);
            v56 = v108;
            (*v120)(v108, v124);
            v57 = v49;
            v40 = v55;
            v53(v57, v42);
            v20 = v56;
            v4 = &unk_1006B20C0;
            v58 = v48;
            v39 = v54;
            sub_100012DF0(v58, &unk_1006B20C0, &unk_100552E10);
            v41 = v110;
            v36 = v117;
            v35 = v118;
            v38 = v116;
            if (v106)
            {
              goto LABEL_3;
            }

            goto LABEL_8;
          }

          v39 = v112;
          sub_100012DF0(v112, &unk_1006B20C0, &unk_100552E10);
          v50 = v111;
          sub_100012DF0(v111, &unk_1006B20C0, &unk_100552E10);
          v20 = v108;
          (*v120)(v108, v124);
          v51 = v49;
          v40 = v50;
          (*v107)(v51, v42);
          v41 = v110;
        }

        sub_100012DF0(v123, &qword_1006B22E8, &unk_100555270);
        v36 = v117;
        v35 = v118;
        v38 = v116;
      }

      else
      {
        (*v120)(v20, v124);
      }

LABEL_8:
      if (v36 == ++v37)
      {

        v4 = v91;
        goto LABEL_21;
      }
    }
  }

  v99 = _swiftEmptyArrayStorage;
LABEL_27:
  v65 = swift_allocObject();
  *(v65 + 16) = &_swiftEmptyDictionarySingleton;
  v66 = [v4[5] traitCollection];
  v67 = [v66 userInterfaceStyle];

  LOBYTE(v66) = FMIPManager.isInitialized.getter();

  if ((v66 & 1) == 0)
  {

    if (qword_1006AEBE0 != -1)
    {
      goto LABEL_35;
    }

    goto LABEL_30;
  }

  v68 = swift_allocObject();
  *(v68 + 16) = v99;
  *(v68 + 24) = v4;
  *(v68 + 32) = v67 == 2;
  *(v68 + 40) = v83;
  *(v68 + 48) = v65;
  v130 = sub_1004D1990;
  v131 = v68;
  aBlock = _NSConcreteStackBlock;
  v127 = 1107296256;
  v128 = sub_100004AE4;
  v129 = &unk_100642550;
  v69 = _Block_copy(&aBlock);

  v70 = v84;
  static DispatchQoS.unspecified.getter();
  v125 = _swiftEmptyArrayStorage;
  sub_10000A738(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640, &unk_100552B10, &protocol conformance descriptor for [A]);
  v71 = v85;
  v72 = v89;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v69);
  (*(v88 + 8))(v71, v72);
  (*(v86 + 8))(v70, v87);
LABEL_33:

  return result;
}

void sub_1004C0504(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void (**a5)(char *, uint64_t))
{
  v117 = a4;
  LODWORD(v112) = a3;
  v119 = a2;
  v101 = type metadata accessor for DispatchQoS();
  v103 = *(v101 - 8);
  __chkstk_darwin(v101);
  v100 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for DispatchWorkItemFlags();
  v102 = *(v99 - 8);
  __chkstk_darwin(v99);
  v98 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for FMAnnotationIdentifier(0);
  __chkstk_darwin(v120);
  v113 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v115 = (&v97 - v11);
  v12 = sub_10007EBC0(&unk_1006C0220, qword_100553770);
  __chkstk_darwin(v12 - 8);
  v14 = &v97 - v13;
  v15 = type metadata accessor for FMIPLocation();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v116 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = 0;
  v18 = type metadata accessor for FMIPItem();
  v20 = __chkstk_darwin(v18);
  v22 = &v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a1 + 16);
  if (v23)
  {
    v25 = *(v19 + 16);
    v24 = v19 + 16;
    v26 = a1 + ((*(v24 + 64) + 32) & ~*(v24 + 64));
    v121 = *(v24 + 56);
    v122 = v24;
    v27 = (v24 - 8);
    v118 = (v16 + 48);
    v107 = (v16 + 32);
    v106 = (v16 + 8);
    v28 = v25;
    v114 = a5;
    v110 = v14;
    v105 = v15;
    v109 = v18;
    v108 = v25;
    v25(v22, v26, v18, v20);
    while (1)
    {
      FMIPItem.groupIdentifier.getter();
      if (v30)
      {

        (*v27)(v22, v18);
      }

      else
      {
        FMIPItem.location.getter();
        if ((*v118)(v14, 1, v15) == 1)
        {
          (*v27)(v22, v18);
          sub_100012DF0(v14, &unk_1006C0220, qword_100553770);
        }

        else
        {
          v31 = v116;
          (*v107)(v116, v14, v15);
          v32 = *(v119 + 48);

          sub_1004C31E4(v22, v31, v32, v112 & 1);
          v34 = v33;

          v35 = v15;
          v36 = *&v34[OBJC_IVAR____TtC6FindMy12FMAnnotation_fmClusterIdentifier + 8];
          if (v36)
          {
            v37 = *&v34[OBJC_IVAR____TtC6FindMy12FMAnnotation_fmClusterIdentifier];
            swift_beginAccess();
            v38 = *(a5[2] + 2);
            v39 = v34;
            sub_10009186C(v37, v36);
            v111 = v39;
            if (v38 && (sub_1001B40E0(v37, v36), (v40 & 1) != 0))
            {
              swift_endAccess();
              a5 = v114;
            }

            else
            {
              swift_endAccess();
              a5 = v114;
              swift_beginAccess();
              sub_10009186C(v37, v36);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v126 = a5[2];
              a5[2] = 0x8000000000000000;
              sub_1001BCAF0(_swiftEmptyArrayStorage, v37, v36, isUniquelyReferenced_nonNull_native);
              sub_100091880(v37, v36);
              a5[2] = v126;
              swift_endAccess();
            }

            v18 = v109;
            swift_beginAccess();
            v43 = sub_1004B1F10(aBlock, v37, v36);
            if (*v42)
            {
              v44 = v42;
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((*v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              v45 = v111;
              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              (v43)(aBlock, 0);
              swift_endAccess();
              sub_100091880(v37, v36);

              v15 = v105;
              (*v106)(v116, v105);
              (*v27)(v22, v18);
              a5 = v114;
            }

            else
            {
              (v43)(aBlock, 0);
              swift_endAccess();
              v53 = v111;

              sub_100091880(v37, v36);
              v15 = v105;
              (*v106)(v116, v105);
              (*v27)(v22, v18);
            }

            v14 = v110;
          }

          else
          {
            v46 = v34;
            v47 = FMIPItem.identifier.getter();
            v48 = v115;
            *v115 = v47;
            *(v48 + 8) = v49;
            swift_storeEnumTagMultiPayload();
            v50 = v117;
            swift_beginAccess();
            v51 = swift_isUniquelyReferenced_nonNull_native();
            v126 = *(v50 + 16);
            *(v50 + 16) = 0x8000000000000000;
            sub_1001BCC70(v46, v48, v51);
            v52 = v48;
            a5 = v114;
            sub_10002A100(v52, type metadata accessor for FMAnnotationIdentifier);
            *(v50 + 16) = v126;
            swift_endAccess();

            (*v106)(v31, v35);
            v18 = v109;
            (*v27)(v22, v109);
            v14 = v110;
            v15 = v35;
          }

          v28 = v108;
        }
      }

      v26 += v121;
      if (!--v23)
      {
        break;
      }

      v28(v22, v26, v18, v29);
    }
  }

  swift_beginAccess();
  v54 = a5[2];
  v55 = v54 + 64;
  v56 = 1 << *(v54 + 32);
  v57 = -1;
  if (v56 < 64)
  {
    v57 = ~(-1 << v56);
  }

  v58 = v57 & *(v54 + 8);
  v59 = (v56 + 63) >> 6;
  v116 = v124;
  v114 = (v103 + 8);
  v112 = (v102 + 8);
  v122 = v54;

  v60 = 0;
  v61 = v104;
  v118 = v59;
  while (v58)
  {
LABEL_32:
    v68 = __clz(__rbit64(v58)) | (v60 << 6);
    v69 = (*(v122 + 6) + 16 * v68);
    v70 = *v69;
    v71 = v69[1];
    v72 = *(*(v122 + 7) + 8 * v68);
    if (!(v72 >> 62))
    {
      v73 = (v72 & 0xFFFFFFFFFFFFFF8);

LABEL_34:

      sub_10009186C(v70, v71);
      goto LABEL_35;
    }

    v92 = _CocoaArrayWrapper.endIndex.getter();
    if (!v92)
    {
      v73 = _swiftEmptyArrayStorage;
      goto LABEL_34;
    }

    v93 = v92;
    v73 = sub_10008FC98();
    swift_bridgeObjectRetain_n();
    sub_10009186C(v70, v71);
    sub_10043A9D8((v73 + 4), v93, v72);
    v95 = v94;

    if (v95 != v93)
    {
      goto LABEL_47;
    }

LABEL_35:
    aBlock[0] = v73;
    sub_1004CB9DC(aBlock);
    if (v61)
    {
      goto LABEL_48;
    }

    sub_100091880(v70, v71);

    v74 = aBlock[0];
    v75 = *(v119 + 48);
    v121 = type metadata accessor for FMClusterAnnotation();
    v76 = objc_allocWithZone(v121);

    sub_1003F4230(v77);
    v79 = v78;
    __chkstk_darwin(v78);
    *(&v97 - 2) = v80;
    v81 = v113;
    OS_dispatch_queue.sync<A>(execute:)();
    if (*(v75 + 16) && (v82 = sub_1001B4074(v81), (v83 & 1) != 0))
    {
      v84 = *(*(v75 + 56) + 8 * v82);
      sub_10002A100(v81, type metadata accessor for FMAnnotationIdentifier);
      v85 = swift_dynamicCastClass();
      if (v85)
      {
        v111 = *(v85 + OBJC_IVAR____TtC6FindMy19FMClusterAnnotation_updateQueue);
        v86 = v98;
        v87 = v85;
        v121 = v85;
        static DispatchWorkItemFlags.barrier.getter();
        v88 = swift_allocObject();
        *(v88 + 16) = v74;
        *(v88 + 24) = v87;
        v124[2] = sub_1003F4F2C;
        v124[3] = v88;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        v124[0] = sub_100004AE4;
        v124[1] = &unk_1006425A0;
        v89 = _Block_copy(aBlock);
        v90 = v84;
        v91 = v100;
        static DispatchQoS.unspecified.getter();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v89);

        (*v114)(v91, v101);
        (*v112)(v86, v99);

        v79 = v121;
      }

      else
      {
      }
    }

    else
    {

      v62 = sub_10002A100(v81, type metadata accessor for FMAnnotationIdentifier);
    }

    v58 &= v58 - 1;
    __chkstk_darwin(v62);
    *(&v97 - 2) = v79;
    v63 = v115;
    OS_dispatch_queue.sync<A>(execute:)();
    v64 = v117;
    swift_beginAccess();
    v65 = v79;
    v66 = swift_isUniquelyReferenced_nonNull_native();
    v125 = *(v64 + 16);
    *(v64 + 16) = 0x8000000000000000;
    sub_1001BCC70(v65, v63, v66);
    sub_10002A100(v63, type metadata accessor for FMAnnotationIdentifier);
    *(v64 + 16) = v125;
    swift_endAccess();

    v59 = v118;
  }

  while (1)
  {
    v67 = v60 + 1;
    if (__OFADD__(v60, 1))
    {
      break;
    }

    if (v67 >= v59)
    {

      swift_beginAccess();

      sub_100012E50(v96, _swiftEmptyArrayStorage);

      return;
    }

    v58 = *&v55[8 * v67];
    ++v60;
    if (v58)
    {
      v60 = v67;
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:

  __break(1u);
}

uint64_t sub_1004C12AC(void *a1, void *a2)
{
  v2 = (*a1 + OBJC_IVAR____TtC6FindMy12FMAnnotation_title);
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  v5 = (*a2 + OBJC_IVAR____TtC6FindMy12FMAnnotation_title);
  if (v5[1])
  {
    v6 = v5[1];
    if (v3 != *v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = 0xE000000000000000;
    if (v3)
    {
LABEL_10:
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_11;
    }
  }

  if (v4 != v6)
  {
    goto LABEL_10;
  }

  v7 = 0;
LABEL_11:

  return v7 & 1;
}

uint64_t sub_1004C138C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v82 = a1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v75 = *(v4 - 8);
  v76 = v4;
  __chkstk_darwin(v4);
  v73 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for DispatchQoS();
  v72 = *(v74 - 8);
  __chkstk_darwin(v74);
  v71 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10007EBC0(&unk_1006C0220, qword_100553770);
  __chkstk_darwin(v7 - 8);
  v77 = &v64 - v8;
  v9 = sub_10007EBC0(&qword_1006B07D0, qword_100552820);
  __chkstk_darwin(v9 - 8);
  v83 = &v64 - v10;
  v11 = type metadata accessor for FMIPItem();
  v81 = *(v11 - 8);
  v12 = v81[8];
  __chkstk_darwin(v11);
  v79 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v78 = &v64 - v14;
  __chkstk_darwin(v15);
  v80 = &v64 - v16;
  __chkstk_darwin(v17);
  v19 = &v64 - v18;
  v20 = type metadata accessor for FMSelectedSection(0);
  __chkstk_darwin(v20);
  v22 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v64 - v24;
  v69 = *(v3 + 16);
  v26 = *(v69 + 56);
  v27 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100027BE0(v26 + v27, v25, type metadata accessor for FMSelectedSection);
  v28 = v3;
  v29 = [*(v3 + 40) traitCollection];
  v30 = [v29 userInterfaceStyle];

  sub_100027BE0(v25, v22, type metadata accessor for FMSelectedSection);
  if (swift_getEnumCaseMultiPayload() - 3 >= 2)
  {
    sub_10002A100(v25, type metadata accessor for FMSelectedSection);
    return sub_10002A100(v22, type metadata accessor for FMSelectedSection);
  }

  v66 = v30;
  v68 = v25;
  v31 = v81;
  v67 = v81[4];
  v32 = v67(v19, v22, v11);
  __chkstk_darwin(v32);
  v70 = v19;
  *(&v64 - 2) = v19;
  v33 = v82;
  v34 = v83;
  sub_10011FB64(sub_1004D1888, v82, v83);
  v35 = v11;
  if ((v31[6])(v34, 1, v11) == 1)
  {
    v36 = &qword_1006B07D0;
    v37 = qword_100552820;
    v38 = v83;
LABEL_7:
    sub_100012DF0(v38, v36, v37);
    v43 = v70;
    *(v28 + 58) = 0;
    sub_1004BF4C8(v33, v44, v45);
    sub_10002A100(v68, type metadata accessor for FMSelectedSection);
    return (v31[1])(v43, v35);
  }

  v40 = v80;
  v67(v80, v83, v11);
  v41 = v77;
  FMIPItem.location.getter();
  v42 = type metadata accessor for FMIPLocation();
  if ((*(*(v42 - 8) + 48))(v41, 1, v42) == 1)
  {
    (v31[1])(v40, v35);
    v36 = &unk_1006C0220;
    v37 = qword_100553770;
    v38 = v41;
    goto LABEL_7;
  }

  LODWORD(v66) = v66 == 2;
  sub_100012DF0(v41, &unk_1006C0220, qword_100553770);
  *(v28 + 58) = 1;
  v46 = v28;
  v65 = v28;
  v47 = v69;

  v77 = sub_1000BE020(v40, v47);

  v83 = *(v46 + 88);
  v48 = v31[2];
  v48(v78, v40, v35);
  v48(v79, v70, v35);
  v49 = *(v31 + 80);
  v50 = (v49 + 16) & ~v49;
  v51 = (v12 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = v35;
  v53 = (v51 + 15) & 0xFFFFFFFFFFFFFFF8;
  v54 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
  v55 = (v49 + v54 + 8) & ~v49;
  v56 = v55 + v12;
  v57 = swift_allocObject();
  v58 = v67;
  v67((v57 + v50), v78, v52);
  *(v57 + v51) = v77;
  *(v57 + v53) = v65;
  *(v57 + v54) = v82;
  v58(v57 + v55, v79, v52);
  *(v57 + v56) = v66;
  aBlock[4] = sub_1004D18BC;
  aBlock[5] = v57;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_1006424B0;
  v59 = _Block_copy(aBlock);

  v60 = v71;
  static DispatchQoS.unspecified.getter();
  v84 = _swiftEmptyArrayStorage;
  sub_10000A738(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640, &unk_100552B10, &protocol conformance descriptor for [A]);
  v61 = v73;
  v62 = v76;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v59);
  (*(v75 + 8))(v61, v62);
  (*(v72 + 8))(v60, v74);
  v63 = v81[1];
  v63(v80, v52);
  sub_10002A100(v68, type metadata accessor for FMSelectedSection);

  return (v63)(v70, v52);
}

uint64_t sub_1004C1CE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3();
  v6 = v5;
  if (v4 == a3() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

void sub_1004C1D88(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v115 = a6;
  v126 = a5;
  v107 = a4;
  v131 = a3;
  v132 = a2;
  v6 = type metadata accessor for FMIPLocation();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v106 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v111 = &v103 - v10;
  v117 = type metadata accessor for FMIPItem();
  v11 = *(v117 - 8);
  __chkstk_darwin(v117);
  v13 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for FMAnnotationIdentifier(0);
  __chkstk_darwin(v122);
  v121 = (&v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_10007EBC0(&qword_1006B1AD8, &unk_1005642E0);
  __chkstk_darwin(v15 - 8);
  v120 = &v103 - v16;
  v113 = type metadata accessor for FMIPRangingParameters();
  v17 = *(v113 - 8);
  __chkstk_darwin(v113);
  v112 = &v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10007EBC0(&qword_1006AF740, &unk_100552330);
  __chkstk_darwin(v19 - 8);
  v21 = &v103 - v20;
  v114 = type metadata accessor for FMFFriend();
  v22 = *(v114 - 8);
  __chkstk_darwin(v114);
  v24 = &v103 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10007EBC0(&unk_1006C0220, qword_100553770);
  __chkstk_darwin(v25 - 8);
  v108 = &v103 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v116 = &v103 - v28;
  __chkstk_darwin(v29);
  v31 = &v103 - v30;
  FMIPItem.location.getter();
  v123 = *(v7 + 48);
  v124 = v7 + 48;
  v32 = v123(v31, 1, v6);
  v125 = v6;
  if (v32 == 1)
  {
    sub_100012DF0(v31, &unk_1006C0220, qword_100553770);
    v132 = &_swiftEmptyDictionarySingleton;
    v33 = v107;
    v34 = v7;
  }

  else
  {
    v127 = v11;
    v35 = FMIPLocation.location.getter();
    v104 = v7;
    (*(v7 + 8))(v31, v6);
    v36 = v132[2];
    if (v36)
    {
      v110 = v35;
      v38 = v22 + 16;
      v37 = *(v22 + 16);
      v39 = v132 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
      v129 = *(v38 + 56);
      v130 = v37;
      v118 = (v17 + 48);
      v105 = (v17 + 32);
      v109 = (v17 + 8);
      v132 = &_swiftEmptyDictionarySingleton;
      v128 = (v38 - 8);
      v40 = v114;
      v119 = v38;
      v37(v24, v39, v114);
      while (1)
      {
        FMFFriend.location.getter();
        v41 = type metadata accessor for FMFLocation();
        v42 = *(v41 - 8);
        if ((*(v42 + 48))(v21, 1, v41) == 1)
        {
          (*v128)(v24, v40);
          sub_100012DF0(v21, &qword_1006AF740, &unk_100552330);
        }

        else
        {
          v43 = FMFLocation.location.getter();
          (*(v42 + 8))(v21, v41);
          if (v43)
          {

            v44 = v120;
            FMIPManager.rangingParameters.getter();
            v45 = *v118;
            v46 = v113;
            if ((*v118)(v44, 1, v113) == 1)
            {
              v47 = v112;
              FMIPRangingParameters.init()();
              v48 = v47;
              v49 = v120;

              if (v45(v49, 1, v46) != 1)
              {
                sub_100012DF0(v49, &qword_1006B1AD8, &unk_1005642E0);
              }
            }

            else
            {

              v48 = v112;
              (*v105)(v112, v44, v46);
            }

            FMIPRangingParameters.inBTRangeDistanceInMeters.getter();
            v51 = v50;
            (*v109)(v48, v46);
            v52 = v110;
            [v43 distanceFromLocation:v110];
            v54 = v53;
            [v43 horizontalAccuracy];
            v56 = v55;
            [v52 horizontalAccuracy];
            if (v54 / sqrt(v51 * v51 + v56 * v56 + v57 * v57) >= 1.5)
            {
              v40 = v114;
              (*v128)(v24, v114);
            }

            else
            {
              v58 = FMFFriend.identifier.getter();
              v59 = v121;
              *v121 = v58;
              *(v59 + 8) = v60;
              swift_storeEnumTagMultiPayload();
              v61 = *(v131 + 48);

              v62 = sub_1004BEE98(v24, v43, v61);

              v63 = v132;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v133 = v63;
              sub_1001BCC70(v62, v59, isUniquelyReferenced_nonNull_native);
              sub_10002A100(v59, type metadata accessor for FMAnnotationIdentifier);

              v132 = v133;
              v40 = v114;
              (*v128)(v24, v114);
            }
          }

          else
          {
            (*v128)(v24, v40);
          }
        }

        v39 += v129;
        if (!--v36)
        {
          break;
        }

        v130(v24, v39, v40);
      }
    }

    else
    {

      v132 = &_swiftEmptyDictionarySingleton;
    }

    v11 = v127;
    v33 = v107;
    v34 = v104;
  }

  v65 = *(v33 + 16);
  v66 = v117;
  v67 = v116;
  if (v65)
  {
    v70 = *(v11 + 16);
    v69 = v11 + 16;
    v68 = v70;
    v71 = v33 + ((*(v69 + 64) + 32) & ~*(v69 + 64));
    v72 = *(v69 + 56);
    v73 = (v69 - 8);
    v127 = v69;
    v128 = (v34 + 32);
    v120 = (v34 + 8);
    v129 = v72;
    v130 = v70;
    v70(v13, v71, v117);
    while (1)
    {
      FMIPItem.groupIdentifier.getter();
      if (v74)
      {

        (*v73)(v13, v66);
        goto LABEL_24;
      }

      v75 = FMIPItem.identifier.getter();
      v77 = v76;
      if (v75 == FMIPItem.identifier.getter() && v77 == v78)
      {
        break;
      }

      v79 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v79)
      {
        goto LABEL_31;
      }

      v93 = v108;
      FMIPItem.location.getter();
      v94 = v125;
      if (v123(v93, 1, v125) != 1)
      {
        v95 = v106;
        (*v128)(v106, v93, v94);
        v96 = *(v131 + 48);

        sub_1004C31E4(v13, v95, v96, v115 & 1);
        v119 = v97;

        v98 = FMIPItem.identifier.getter();
        v99 = v121;
        *v121 = v98;
        *(v99 + 8) = v100;
        swift_storeEnumTagMultiPayload();
        v101 = v132;
        v102 = swift_isUniquelyReferenced_nonNull_native();
        v133 = v101;
        sub_1001BCC70(v119, v99, v102);
        sub_10002A100(v99, type metadata accessor for FMAnnotationIdentifier);
        v132 = v133;
        (*v120)(v95, v94);
        goto LABEL_38;
      }

      (*v73)(v13, v66);
      v81 = v93;
LABEL_36:
      sub_100012DF0(v81, &unk_1006C0220, qword_100553770);
LABEL_39:
      v72 = v129;
      v68 = v130;
LABEL_24:
      v71 += v72;
      if (!--v65)
      {
        goto LABEL_40;
      }

      v68(v13, v71, v66);
    }

LABEL_31:
    FMIPItem.location.getter();
    v80 = v125;
    if (v123(v67, 1, v125) != 1)
    {
      v82 = v111;
      (*v128)(v111, v67, v80);
      v83 = FMIPItem.identifier.getter();
      v84 = v121;
      *v121 = v83;
      *(v84 + 8) = v85;
      swift_storeEnumTagMultiPayload();
      v86 = *(v131 + 48);

      sub_1004C31E4(v13, v82, v86, v115 & 1);
      v88 = v87;

      v89 = v132;
      v90 = swift_isUniquelyReferenced_nonNull_native();
      v133 = v89;
      sub_1001BCC70(v88, v84, v90);
      v91 = v84;
      v67 = v116;
      sub_10002A100(v91, type metadata accessor for FMAnnotationIdentifier);
      v132 = v133;
      v92 = v82;
      v66 = v117;
      (*v120)(v92, v80);
LABEL_38:
      (*v73)(v13, v66);
      goto LABEL_39;
    }

    (*v73)(v13, v66);
    v81 = v67;
    goto LABEL_36;
  }

LABEL_40:
  sub_100012E50(v132, _swiftEmptyArrayStorage);
}

void sub_1004C2A2C(uint64_t a1, int a2)
{
  v42 = a2;
  v4 = type metadata accessor for FMIPItemImageSize();
  v43 = *(v4 - 8);
  __chkstk_darwin(v4);
  v41 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for UUID();
  v47 = *(v61 - 8);
  __chkstk_darwin(v61);
  v45 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_10007EBC0(&qword_1006B22E8, &unk_100555270);
  __chkstk_darwin(v51);
  v8 = &v38 - v7;
  v9 = sub_10007EBC0(&unk_1006B20C0, &unk_100552E10);
  __chkstk_darwin(v9 - 8);
  v54 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v58 = &v38 - v12;
  __chkstk_darwin(v13);
  v59 = &v38 - v14;
  v52 = type metadata accessor for FMIPBeaconShare();
  v60 = *(v52 - 8);
  __chkstk_darwin(v52);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *(v2 + 16);
  v17 = *(*(v40 + 24) + 64);
  v53 = a1;
  v63 = a1;

  sub_1001048C4(sub_1001098B0, v62, v17);
  v19 = v18;

  v57 = *(v19 + 16);
  if (v57)
  {
    v39 = v4;
    v20 = 0;
    v56 = v19 + ((*(v60 + 80) + 32) & ~*(v60 + 80));
    v55 = v60 + 16;
    v21 = (v60 + 8);
    v49 = (v47 + 6);
    v50 = (v47 + 7);
    v44 = (v47 + 4);
    ++v47;
    v48 = v19;
    v22 = v52;
    while (1)
    {
      if (v20 >= *(v19 + 16))
      {
        __break(1u);
        return;
      }

      (*(v60 + 16))(v16, v56 + *(v60 + 72) * v20, v22);
      if (FMIPBeaconShare.isSharedLostItem.getter())
      {
        v23 = v59;
        FMIPBeaconShare.beaconIdentifier.getter();
        v24 = v61;
        (*v50)(v23, 0, 1, v61);
        FMIPItem.identifier.getter();
        v25 = v58;
        UUID.init(uuidString:)();

        v26 = *(v51 + 48);
        sub_100007204(v23, v8, &unk_1006B20C0, &unk_100552E10);
        sub_100007204(v25, &v8[v26], &unk_1006B20C0, &unk_100552E10);
        v27 = *v49;
        if ((*v49)(v8, 1, v24) == 1)
        {
          sub_100012DF0(v58, &unk_1006B20C0, &unk_100552E10);
          sub_100012DF0(v59, &unk_1006B20C0, &unk_100552E10);
          v22 = v52;
          (*v21)(v16, v52);
          v28 = v27(&v8[v26], 1, v61);
          v19 = v48;
          if (v28 == 1)
          {
            sub_100012DF0(v8, &unk_1006B20C0, &unk_100552E10);
LABEL_18:

            sub_1001C91BC();
            return;
          }

          goto LABEL_12;
        }

        sub_100007204(v8, v54, &unk_1006B20C0, &unk_100552E10);
        if (v27(&v8[v26], 1, v61) == 1)
        {
          sub_100012DF0(v58, &unk_1006B20C0, &unk_100552E10);
          sub_100012DF0(v59, &unk_1006B20C0, &unk_100552E10);
          v22 = v52;
          (*v21)(v16, v52);
          (*v47)(v54, v61);
          v19 = v48;
LABEL_12:
          sub_100012DF0(v8, &qword_1006B22E8, &unk_100555270);
          goto LABEL_4;
        }

        v29 = &v8[v26];
        v30 = v61;
        v31 = v45;
        (*v44)(v45, v29, v61);
        sub_10000A738(&qword_1006B22F0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v46 = dispatch thunk of static Equatable.== infix(_:_:)();
        v32 = *v47;
        v33 = v31;
        v34 = v30;
        (*v47)(v33, v30);
        v35 = v32;
        sub_100012DF0(v58, &unk_1006B20C0, &unk_100552E10);
        sub_100012DF0(v59, &unk_1006B20C0, &unk_100552E10);
        v22 = v52;
        (*v21)(v16, v52);
        v35(v54, v34);
        sub_100012DF0(v8, &unk_1006B20C0, &unk_100552E10);
        v19 = v48;
        if (v46)
        {
          goto LABEL_18;
        }
      }

      else
      {
        (*v21)(v16, v22);
      }

LABEL_4:
      if (v57 == ++v20)
      {

        v4 = v39;
        goto LABEL_17;
      }
    }
  }

LABEL_17:
  v36 = v43;
  v37 = v41;
  (*(v43 + 104))(v41, enum case for FMIPItemImageSize.infobox(_:), v4);

  sub_1001C8A1C(v53, v37, v42 & 1);

  (*(v36 + 8))(v37, v4);
}

void sub_1004C31E4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v98 = a2;
  v7 = type metadata accessor for FMIPConfigValue();
  v93 = *(v7 - 8);
  __chkstk_darwin(v7);
  v92 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v96 = *(v9 - 1);
  v97 = v9;
  __chkstk_darwin(v9);
  v95 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v11 - 8);
  v94 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for DispatchQoS();
  v89 = *(v90 - 8);
  __chkstk_darwin(v90);
  v100 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FMIPItem();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v101 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for DispatchWorkItemFlags();
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v91 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for FMAnnotationIdentifier(0);
  __chkstk_darwin(v18);
  v20 = (&v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1004C2A2C(a1, a4);
  v99 = v21;
  *v20 = FMIPItem.identifier.getter();
  v20[1] = v22;
  swift_storeEnumTagMultiPayload();
  if (*(a3 + 16) && (v23 = sub_1001B4074(v20), (v24 & 1) != 0))
  {
    v25 = *(*(a3 + 56) + 8 * v23);
    sub_10002A100(v20, type metadata accessor for FMAnnotationIdentifier);
    type metadata accessor for FMItemAnnotation();
    v26 = swift_dynamicCastClass();
    if (v26)
    {
      v27 = v26;
      v97 = v25;
      v28 = FMIPLocation.location.getter();
      [v28 coordinate];
      v30 = v29;
      v32 = v31;

      v33 = FMIPLocation.location.getter();
      [v33 horizontalAccuracy];
      v35 = v34;

      v96 = sub_1004C3C84(a1);
      v37 = v36;
      v98 = *(v27 + OBJC_IVAR____TtC6FindMy16FMItemAnnotation_updateQueue);
      static DispatchWorkItemFlags.barrier.getter();
      v38 = v101;
      (*(v15 + 16))(v101, a1, v14);
      v39 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v40 = (v16 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
      v41 = (v40 + 15) & 0xFFFFFFFFFFFFFFF8;
      v42 = swift_allocObject();
      *(v42 + 16) = v35;
      *(v42 + 24) = v27;
      (*(v15 + 32))(v42 + v39, v38, v14);
      v43 = v99;
      *(v42 + v40) = v99;
      v44 = (v42 + v41);
      *v44 = v30;
      v44[1] = v32;
      v45 = (v42 + ((v41 + 23) & 0xFFFFFFFFFFFFFFF8));
      *v45 = v96;
      v45[1] = v37;
      aBlock[4] = sub_1004D17D4;
      aBlock[5] = v42;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100004AE4;
      aBlock[3] = &unk_100642460;
      v46 = _Block_copy(aBlock);
      v47 = v43;
      v48 = v97;
      v49 = v100;
      static DispatchQoS.unspecified.getter();
      v50 = v91;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v46);

      (*(v89 + 8))(v49, v90);
      (*(v87 + 8))(v50, v88);

      return;
    }

    v89 = v7;
  }

  else
  {
    v89 = v7;
    sub_10002A100(v20, type metadata accessor for FMAnnotationIdentifier);
  }

  v51 = FMIPLocation.location.getter();
  [v51 coordinate];
  v53 = v52;
  v55 = v54;

  v56 = FMIPLocation.location.getter();
  [v56 horizontalAccuracy];
  v58 = v57;
  v98 = *&v57;

  v90 = v15;
  v91 = *(v15 + 16);
  (v91)(v101, a1, v14);
  v87 = sub_1004C3C84(a1);
  v88 = v59;
  v60 = objc_allocWithZone(type metadata accessor for FMItemAnnotation());
  v61 = OBJC_IVAR____TtC6FindMy16FMItemAnnotation_itemImage;
  *&v60[OBJC_IVAR____TtC6FindMy16FMItemAnnotation_itemImage] = 0;
  v62 = v14;
  v63 = OBJC_IVAR____TtC6FindMy16FMItemAnnotation_updateQueue;
  sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
  static DispatchQoS.userInteractive.getter();
  static OS_dispatch_queue.Attributes.concurrent.getter();
  (*(v96 + 104))(v95, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v97);
  *&v60[v63] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v64 = v62;
  sub_10007EBC0(&unk_1006C2450, &qword_100554710);
  v65 = swift_allocObject();
  *(v65 + ((*(*v65 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  (v91)(v65 + *(*v65 + class metadata base offset for ManagedBuffer + 16), v101, v62);
  *&v60[OBJC_IVAR____TtC6FindMy16FMItemAnnotation_itemLock] = v65;
  v66 = *&v60[v61];
  v67 = v99;
  *&v60[v61] = v99;
  v68 = v67;

  v69 = &v60[OBJC_IVAR____TtC6FindMy16FMItemAnnotation_tempCoordinate];
  *v69 = v53;
  v69[1] = v55;
  if ((v98 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v58 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v58 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v70 = v93;
  v71 = v92;
  v72 = v89;
  (*(v93 + 104))(v92, enum case for FMIPConfigValue.inaccuracyRadiusThreshold(_:), v89);
  v104 = 0x7FFFFFFFFFFFFFFFLL;
  FMIPGlobalConfig<A>(_:fallback:)();
  (*(v70 + 8))(v71, v72);
  v73 = aBlock[0] < v58;
  v74 = &v60[OBJC_IVAR____TtC6FindMy12FMAnnotation_title];
  *v74 = 0;
  v74[1] = 0;
  *&v60[OBJC_IVAR____TtC6FindMy12FMAnnotation_badgeImage] = 0;
  v75 = v73;
  *&v60[OBJC_IVAR____TtC6FindMy12FMAnnotation_stewieBadgeImage] = 0;
  v76 = &v60[OBJC_IVAR____TtC6FindMy12FMAnnotation_fmClusterIdentifier];
  v77 = v88;
  *v76 = v87;
  v76[1] = v77;
  v78 = &v60[OBJC_IVAR____TtC6FindMy12FMAnnotation_coordinate];
  *v78 = v53;
  v78[1] = v55;
  *&v60[OBJC_IVAR____TtC6FindMy12FMAnnotation_horizontalAccuracy] = v58;
  v60[OBJC_IVAR____TtC6FindMy12FMAnnotation_isWithYou] = v77 == 1;
  v60[OBJC_IVAR____TtC6FindMy12FMAnnotation_isInaccurate] = v75;
  v60[OBJC_IVAR____TtC6FindMy12FMAnnotation_isLive] = 0;
  v79 = type metadata accessor for FMAnnotation();
  v103.receiver = v60;
  v103.super_class = v79;
  v80 = objc_msgSendSuper2(&v103, "init");
  v81 = v101;
  v82 = FMIPItem.name.getter();
  v84 = v83;

  (*(v90 + 8))(v81, v64);
  v85 = &v80[OBJC_IVAR____TtC6FindMy12FMAnnotation_title];
  *v85 = v82;
  v85[1] = v84;
}

uint64_t sub_1004C3C84(uint64_t a1)
{
  v63 = a1;
  v2 = type metadata accessor for FMIPItemState();
  v53 = *(v2 - 8);
  v54 = v2;
  __chkstk_darwin(v2);
  v52 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v51 = &v48 - v5;
  v6 = type metadata accessor for FMIPSafeLocationType();
  v61 = *(v6 - 8);
  v62 = v6;
  __chkstk_darwin(v6);
  v57 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10007EBC0(&unk_1006BB1B0, qword_10055C5C0);
  __chkstk_darwin(v8 - 8);
  v60 = &v48 - v9;
  v10 = type metadata accessor for FMIPSafeLocation();
  v58 = *(v10 - 8);
  v59 = v10;
  __chkstk_darwin(v10);
  v55 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10007EBC0(&unk_1006C0220, qword_100553770);
  __chkstk_darwin(v12 - 8);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v48 - v16;
  v18 = type metadata accessor for FMIPLocation();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for FMSelectedSection(0);
  __chkstk_darwin(v22);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = *(v1 + 56);
  v25 = *(v1 + 16);
  v26 = *(v25 + 56);
  v27 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100027BE0(v26 + v27, v24, type metadata accessor for FMSelectedSection);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    v28 = *v24;
    sub_100091880(*(v24 + 1), *(v24 + 2));
    v64[0] = FMIPItem.identifier.getter();
    v64[1] = v29;
    __chkstk_darwin(v64[0]);
    *(&v48 - 2) = v64;
    v30 = sub_10008A40C(sub_1001413D4, (&v48 - 4), v28);
  }

  else
  {
    sub_10002A100(v24, type metadata accessor for FMSelectedSection);
    v30 = 0;
  }

  v31 = *(v25 + 40);
  v32 = *(v31 + OBJC_IVAR____TtC6FindMy18FMLocationProvider_isLocationAuthorized);
  v33 = *(v31 + OBJC_IVAR____TtC6FindMy18FMLocationProvider_limitedPrecision);
  FMIPItem.location.getter();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_100012DF0(v17, &unk_1006C0220, qword_100553770);
    if (v30)
    {
      return 0;
    }
  }

  else
  {
    v49 = v33;
    v50 = v32;
    (*(v19 + 32))(v21, v17, v18);
    v35 = v61;
    v36 = v62;
    v37 = v57;
    (*(v61 + 104))(v57, enum case for FMIPSafeLocationType.home(_:), v62);
    (*(v19 + 16))(v14, v21, v18);
    (*(v19 + 56))(v14, 0, 1, v18);

    v38 = v60;
    sub_1000E698C(v37, v14, v60);

    sub_100012DF0(v14, &unk_1006C0220, qword_100553770);
    (*(v35 + 8))(v37, v36);
    v40 = v58;
    v39 = v59;
    if ((*(v58 + 48))(v38, 1, v59) != 1)
    {
      v46 = v55;
      (*(v40 + 32))(v55, v38, v39);
      v47 = FMIPSafeLocation.identifier.getter();
      (*(v40 + 8))(v46, v39);
      (*(v19 + 8))(v21, v18);
      return v47;
    }

    (*(v19 + 8))(v21, v18);
    sub_100012DF0(v38, &unk_1006BB1B0, qword_10055C5C0);
    LOBYTE(v33) = v49;
    LOBYTE(v32) = v50;
    if (v30)
    {
      return 0;
    }
  }

  if (v33 & 1 | ((v32 & 1) == 0))
  {
    return 0;
  }

  if (v56 == 1)
  {
    return 0;
  }

  v41 = v51;
  FMIPItem.state.getter();
  v42 = v52;
  static FMIPItemState.isBTConnected.getter();
  sub_10000A738(&qword_1006C0350, &type metadata accessor for FMIPItemState, &protocol conformance descriptor for FMIPItemState);
  v43 = v54;
  v44 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v45 = *(v53 + 8);
  v45(v42, v43);
  v45(v41, v43);
  if ((v44 & 1) == 0)
  {
    return 0;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004C43F0(uint64_t a1, uint64_t a2)
{
  v49 = a2;
  v3 = type metadata accessor for FMIPDeviceState();
  v52 = *(v3 - 8);
  v53 = v3;
  __chkstk_darwin(v3);
  v51 = v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v50 = v47 - v6;
  v7 = type metadata accessor for FMIPSafeLocationType();
  v58 = *(v7 - 8);
  v59 = v7;
  __chkstk_darwin(v7);
  v54 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10007EBC0(&unk_1006BB1B0, qword_10055C5C0);
  __chkstk_darwin(v9 - 8);
  v57 = v47 - v10;
  v11 = type metadata accessor for FMIPSafeLocation();
  v55 = *(v11 - 8);
  v56 = v11;
  __chkstk_darwin(v11);
  v48 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10007EBC0(&unk_1006C0220, qword_100553770);
  __chkstk_darwin(v13 - 8);
  v15 = v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v47 - v17;
  v19 = type metadata accessor for FMIPLocation();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v60 = v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for FMSelectedSection(0);
  __chkstk_darwin(v22);
  v24 = v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v2 + 16);
  v26 = *(v25 + 56);
  v27 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100027BE0(v26 + v27, v24, type metadata accessor for FMSelectedSection);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    v28 = *v24;
    sub_100091880(*(v24 + 1), *(v24 + 2));
    v61[0] = FMIPItem.identifier.getter();
    v61[1] = v29;
    __chkstk_darwin(v61[0]);
    *&v47[-4] = v61;
    v30 = sub_10008A40C(sub_1001413D4, &v47[-8], v28);
  }

  else
  {
    sub_10002A100(v24, type metadata accessor for FMSelectedSection);
    v30 = 0;
  }

  v31 = *(*(v25 + 40) + OBJC_IVAR____TtC6FindMy18FMLocationProvider_limitedPrecision);
  FMIPItem.location.getter();
  v32 = (*(v20 + 48))(v18, 1, v19);
  v33 = v60;
  if (v32 == 1)
  {
    sub_100012DF0(v18, &unk_1006C0220, qword_100553770);
    if (v30)
    {
      return 0;
    }

    goto LABEL_9;
  }

  v47[3] = v31;
  (*(v20 + 32))(v60, v18, v19);
  v36 = v58;
  v35 = v59;
  v37 = v54;
  (*(v58 + 104))(v54, enum case for FMIPSafeLocationType.home(_:), v59);
  (*(v20 + 16))(v15, v33, v19);
  (*(v20 + 56))(v15, 0, 1, v19);

  v38 = v57;
  sub_1000E698C(v37, v15, v57);

  sub_100012DF0(v15, &unk_1006C0220, qword_100553770);
  (*(v36 + 8))(v37, v35);
  v40 = v55;
  v39 = v56;
  if ((*(v55 + 48))(v38, 1, v56) == 1)
  {
    (*(v20 + 8))(v33, v19);
    sub_100012DF0(v38, &unk_1006BB1B0, qword_10055C5C0);
    if (v30)
    {
      return 0;
    }

LABEL_9:
    v41 = v50;
    FMIPDevice.state.getter();
    v42 = v51;
    static FMIPDeviceState.isThisDevice.getter();
    sub_10000A738(&qword_1006BBCF0, &type metadata accessor for FMIPDeviceState, &protocol conformance descriptor for FMIPDeviceState);
    v43 = v53;
    dispatch thunk of SetAlgebra.isSuperset(of:)();
    v44 = *(v52 + 8);
    v44(v42, v43);
    v44(v41, v43);
    return 0;
  }

  v45 = v48;
  (*(v40 + 32))(v48, v38, v39);
  v46 = FMIPSafeLocation.identifier.getter();
  (*(v40 + 8))(v45, v39);
  (*(v20 + 8))(v33, v19);
  return v46;
}

uint64_t sub_1004C4B28(uint64_t a1)
{
  v3 = type metadata accessor for FMIPDeviceState();
  v44 = *(v3 - 8);
  v45 = v3;
  __chkstk_darwin(v3);
  v43 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v42 = &v39 - v6;
  v7 = type metadata accessor for FMIPSafeLocationType();
  v48 = *(v7 - 8);
  v49 = v7;
  __chkstk_darwin(v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10007EBC0(&unk_1006BB1B0, qword_10055C5C0);
  __chkstk_darwin(v10 - 8);
  v12 = &v39 - v11;
  v13 = type metadata accessor for FMIPSafeLocation();
  v46 = *(v13 - 8);
  v47 = v13;
  __chkstk_darwin(v13);
  v39 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10007EBC0(&unk_1006C0220, qword_100553770);
  __chkstk_darwin(v15 - 8);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v39 - v19;
  v21 = type metadata accessor for FMIPLocation();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1004CB520();
  v40 = *(*(*(v1 + 16) + 40) + OBJC_IVAR____TtC6FindMy18FMLocationProvider_limitedPrecision);
  v41 = a1;
  FMIPDevice.bestLocation.getter();
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    v25 = &unk_1006C0220;
    v26 = qword_100553770;
    v27 = v20;
  }

  else
  {
    (*(v22 + 32))(v24, v20, v21);
    v29 = v48;
    v28 = v49;
    (*(v48 + 104))(v9, enum case for FMIPSafeLocationType.home(_:), v49);
    (*(v22 + 16))(v17, v24, v21);
    (*(v22 + 56))(v17, 0, 1, v21);

    sub_1000E698C(v9, v17, v12);

    sub_100012DF0(v17, &unk_1006C0220, qword_100553770);
    (*(v29 + 8))(v9, v28);
    v31 = v46;
    v30 = v47;
    if ((*(v46 + 48))(v12, 1, v47) != 1)
    {
      v37 = v39;
      (*(v31 + 32))(v39, v12, v30);
      v38 = FMIPSafeLocation.identifier.getter();
      (*(v31 + 8))(v37, v30);
      (*(v22 + 8))(v24, v21);
      return v38;
    }

    (*(v22 + 8))(v24, v21);
    v25 = &unk_1006BB1B0;
    v26 = qword_10055C5C0;
    v27 = v12;
  }

  sub_100012DF0(v27, v25, v26);
  if ((v50 & 1) == 0)
  {
    v33 = v42;
    FMIPDevice.state.getter();
    v34 = v43;
    static FMIPDeviceState.isThisDevice.getter();
    sub_10000A738(&qword_1006BBCF0, &type metadata accessor for FMIPDeviceState, &protocol conformance descriptor for FMIPDeviceState);
    v35 = v45;
    dispatch thunk of SetAlgebra.isSuperset(of:)();
    v36 = *(v44 + 8);
    v36(v34, v35);
    v36(v33, v35);
  }

  return 0;
}

double sub_1004C5110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v10 = *(v17 - 8);
  __chkstk_darwin(v17);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *(v4 + 88);
  v13 = swift_allocObject();
  *(v13 + 16) = v4;
  *(v13 + 24) = a1;
  aBlock[4] = sub_1004D1490;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100642398;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_10000A738(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640, &unk_100552B10, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v17);

  return result;
}

double sub_1004C53EC(uint64_t a1, unint64_t a2)
{
  v123 = a2;
  v102 = sub_10007EBC0(&qword_1006C23C0, &qword_100564298);
  v100 = *(v102 - 8);
  __chkstk_darwin(v102);
  v99 = &v95 - v3;
  v104 = sub_10007EBC0(&qword_1006C23C8, &qword_1005642A0);
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v101 = &v95 - v4;
  v117 = sub_10007EBC0(&unk_1006B77E0, &unk_100559AC0);
  v98 = *(v117 - 8);
  __chkstk_darwin(v117);
  v116 = &v95 - v5;
  v115 = sub_10007EBC0(&qword_1006C23B8, &qword_100564290);
  v97 = *(v115 - 8);
  __chkstk_darwin(v115);
  v114 = &v95 - v6;
  v113 = type metadata accessor for FMIPLocation();
  v118 = *(v113 - 8);
  __chkstk_darwin(v113);
  v112 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FMIPUnknownItem();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v107 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v130 = &v95 - v12;
  __chkstk_darwin(v13);
  v15 = &v95 - v14;
  v96 = v16;
  __chkstk_darwin(v17);
  v129 = &v95 - v18;
  v19 = type metadata accessor for UUID();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v95 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v134 = &v95 - v24;
  __chkstk_darwin(v25);
  v27 = &v95 - v26;
  v119 = a1;
  v111 = *(a1 + 16);
  v28 = *(*(v111 + 24) + OBJC_IVAR____TtC6FindMy17FMDevicesProvider_unknownItemsDetectedNearYou);
  v29 = *(v28 + 16);
  v30 = _swiftEmptyArrayStorage;
  v131 = v8;
  v109 = v15;
  v127 = v9;
  v128 = v20;
  if (v29)
  {
    v137 = _swiftEmptyArrayStorage;
    v31 = v28;

    sub_10016748C(0, v29, 0);
    v30 = v137;
    v32 = v9 + 16;
    v132 = *(v9 + 16);
    v133 = (v9 + 16);
    v33 = v31 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v126 = *(v32 + 56);
    v34 = v20;
    v35 = (v32 - 8);
    v124 = v31;
    v125 = v34 + 32;
    do
    {
      v36 = v129;
      v132(v129, v33, v8);
      FMIPUnknownItem.identifier.getter();
      (*v35)(v36, v8);
      v137 = v30;
      v38 = v30[2];
      v37 = v30[3];
      if (v38 >= v37 >> 1)
      {
        sub_10016748C((v37 > 1), v38 + 1, 1);
        v30 = v137;
      }

      v30[2] = v38 + 1;
      (*(v128 + 32))(v30 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v38, v27, v19);
      v33 += v126;
      --v29;
      v8 = v131;
    }

    while (v29);

    v9 = v127;
    v20 = v128;
    v15 = v109;
  }

  v39 = sub_100538878(v30);

  v40 = v123;
  v124 = *(v123 + 16);
  if (v124)
  {
    v41 = 0;
    v43 = *(v9 + 16);
    v42 = v9 + 16;
    v122 = v43;
    v105 = (*(v42 + 64) + 32) & ~*(v42 + 64);
    v121 = (v123 + v105);
    v125 = *(v42 + 56);
    v132 = (v20 + 16);
    v133 = (v39 + 56);
    v44 = (v20 + 8);
    v106 = (v42 + 16);
    v110 = _swiftEmptyArrayStorage;
    v123 = v42;
    v120 = (v42 - 8);
    v108 = v44 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v45 = v134;
    (v43)(v15, v40 + v105, v8);
    while (1)
    {
      FMIPUnknownItem.identifier.getter();
      if (*(v39 + 16))
      {
        v126 = v41;
        sub_10000A738(&unk_1006C2410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v46 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v47 = -1 << *(v39 + 32);
        v48 = v46 & ~v47;
        if ((*(v133 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48))
        {
          v49 = ~v47;
          v50 = *(v128 + 72);
          v51 = *(v128 + 16);
          while (1)
          {
            v51(v22, *(v39 + 48) + v50 * v48, v19);
            sub_10000A738(&qword_1006B22F0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v52 = dispatch thunk of static Equatable.== infix(_:_:)();
            v53 = *v44;
            (*v44)(v22, v19);
            if (v52)
            {
              break;
            }

            v48 = (v48 + 1) & v49;
            if (((*(v133 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48) & 1) == 0)
            {
              v8 = v131;
              v15 = v109;
              v45 = v134;
              goto LABEL_19;
            }
          }

          v45 = v134;
          v53(v134, v19);
          v54 = *v106;
          v15 = v109;
          v8 = v131;
          (*v106)(v107, v109, v131);
          v55 = v110;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v57 = v55;
          v137 = v55;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_100167118(0, v55[2] + 1, 1);
            v57 = v137;
          }

          v59 = v57[2];
          v58 = v57[3];
          v60 = (v59 + 1);
          if (v59 >= v58 >> 1)
          {
            v110 = (v59 + 1);
            sub_100167118((v58 > 1), v59 + 1, 1);
            v60 = v110;
            v57 = v137;
          }

          v57[2] = v60;
          v110 = v57;
          v54(v57 + v105 + v59 * v125, v107, v8);
        }

        else
        {
          v53 = *v44;
LABEL_19:
          v53(v45, v19);
          (*v120)(v15, v8);
        }

        v41 = v126;
      }

      else
      {
        (*v44)(v45, v19);
        (*v120)(v15, v8);
      }

      if (++v41 == v124)
      {
        break;
      }

      (v122)(v15, v121 + v125 * v41, v8);
    }
  }

  else
  {
    v110 = _swiftEmptyArrayStorage;
  }

  v137 = _swiftEmptyArrayStorage;
  v61 = v110[2];
  if (v61)
  {
    v62 = *(v127 + 16);
    v63 = *(v127 + 80);
    v64 = v110 + ((v63 + 32) & ~v63);
    v125 = v118 + 8;
    v126 = v118 + 16;
    v134 = *(v127 + 72);
    v128 = v63;
    v65 = (v63 + 24) & ~v63;
    v123 = (v96 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
    v124 = v65;
    v122 = (v127 + 32);
    v121 = (v98 + 8);
    v120 = (v97 + 8);
    v133 = (v127 + 8);
    v66 = _swiftEmptyArrayStorage;
    v67 = v130;
    v127 += 16;
    v132 = v62;
    v62(v130, v64, v8);
    while (1)
    {
      v68 = FMIPUnknownItem.locations.getter();
      v69 = *(v68 + 16);
      if (v69)
      {
        v70 = v118;
        v71 = v112;
        v72 = v62;
        v73 = v113;
        (*(v118 + 16))(v112, v68 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v118 + 72) * (v69 - 1), v113);

        v74 = FMIPLocation.location.getter();
        (*(v70 + 8))(v71, v73);
        v75 = *(v119 + 48);

        v76 = sub_1001AFD50(v130, 4u);

        v136 = v76;
        v77 = [objc_allocWithZone(UIImage) init];
        v135 = v77;
        sub_10007EBC0(&unk_1006B4D90, &unk_100555990);
        sub_100004098(&qword_1006B7800, &unk_1006B4D90, &unk_100555990, &protocol conformance descriptor for AnyPublisher<A, B>);
        v78 = v116;
        Publisher.replaceError(with:)();

        v79 = v129;
        v72(v129, v130, v131);
        v80 = v123;
        v81 = swift_allocObject();
        *(v81 + 16) = v75;
        (*v122)(v81 + v124, v79, v131);
        *(v81 + v80) = v74;
        type metadata accessor for FMUnknownItemAnnotation(0);
        sub_100004098(&qword_1006B7808, &unk_1006B77E0, &unk_100559AC0, &protocol conformance descriptor for Publishers.ReplaceError<A>);
        v82 = v74;
        v83 = v114;
        v84 = v117;
        Publisher.map<A>(_:)();

        v85 = v78;
        v67 = v130;
        (*v121)(v85, v84);
        sub_100004098(&unk_1006C2400, &qword_1006C23B8, &qword_100564290, &protocol conformance descriptor for Publishers.Map<A, B>);
        v86 = v115;
        Publisher.eraseToAnyPublisher()();

        v8 = v131;
        (*v120)(v83, v86);
        (*v133)(v67, v8);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (v137[2] >= v137[3] >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v66 = v137;
        v62 = v132;
      }

      else
      {

        (*v133)(v67, v8);
      }

      v64 = &v134[v64];
      if (!--v61)
      {
        break;
      }

      v62(v67, v64, v8);
    }

    if (v66[2])
    {
      goto LABEL_37;
    }
  }

  else
  {

    v66 = _swiftEmptyArrayStorage;
    if (_swiftEmptyArrayStorage[2])
    {
LABEL_37:
      v137 = v66;
      sub_10007EBC0(&qword_1006C23D0, &qword_1005642A8);
      sub_10007EBC0(&qword_1006C23D8, &unk_1005642B0);
      v87 = v119;
      sub_100004098(&qword_1006C23E0, &qword_1006C23D0, &qword_1005642A8, &protocol conformance descriptor for AnyPublisher<A, B>);
      sub_100004098(&qword_1006C23E8, &qword_1006C23D8, &unk_1005642B0, &protocol conformance descriptor for [A]);
      v88 = v99;
      Publishers.MergeMany.init<A>(_:)();
      sub_100004098(&qword_1006C23F0, &qword_1006C23C0, &qword_100564298, &protocol conformance descriptor for Publishers.MergeMany<A>);
      v89 = v101;
      v90 = v102;
      Publisher.collect()();
      (*(v100 + 8))(v88, v90);
      sub_100004098(&qword_1006C23F8, &qword_1006C23C8, &qword_1005642A0, &protocol conformance descriptor for Publishers.Collect<A>);

      v91 = v104;
      v92 = Publisher<>.sink(receiveValue:)();

      (*(v103 + 8))(v89, v91);
      *(v87 + 96) = v92;

      return result;
    }
  }

  v94 = sub_1001548DC(_swiftEmptyArrayStorage);
  sub_100012E50(v94, _swiftEmptyArrayStorage);

  return result;
}

uint64_t sub_1004C6468(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Date();
  v25 = *(v12 - 8);
  v26 = v12;
  __chkstk_darwin(v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  v31 = v14;

  aBlock[0] = sub_1004EC1A4(v15);
  sub_1004CBC40(sub_1004D1628, v30);
  v16 = aBlock[0];
  v28 = v8;
  v29 = v5;
  v27 = v9;
  if ((aBlock[0] & 0x8000000000000000) != 0 || (aBlock[0] & 0x4000000000000000) != 0)
  {
    type metadata accessor for FMAnnotation();

    v17 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for FMAnnotation();
    v17 = v16;
  }

  v18 = *(a2 + 48);

  v19 = sub_1004D1648(v17, v18);

  v24 = *(a2 + 88);
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = v19;
  aBlock[4] = sub_1004D17CC;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100642410;
  v21 = _Block_copy(aBlock);

  v22 = v19;
  static DispatchQoS.unspecified.getter();
  v32 = _swiftEmptyArrayStorage;
  sub_10000A738(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640, &unk_100552B10, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);

  (*(v29 + 8))(v7, v4);
  (*(v27 + 8))(v11, v28);

  return (*(v25 + 8))(v14, v26);
}

uint64_t sub_1004C68C0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v76 = a3;
  v5 = type metadata accessor for UUID();
  v90 = *(v5 - 8);
  v91 = v5;
  __chkstk_darwin(v5);
  v89 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v88 = &v73 - v8;
  v9 = type metadata accessor for FMIPUnknownItem();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v87 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v86 = &v73 - v13;
  __chkstk_darwin(v14);
  v82 = &v73 - v15;
  __chkstk_darwin(v16);
  v18 = &v73 - v17;
  v80 = type metadata accessor for FMIPLocation();
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v74 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v73 - v21;
  v23 = type metadata accessor for Date();
  v78 = *(v23 - 8);
  __chkstk_darwin(v23);
  v75 = &v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v85 = &v73 - v26;
  __chkstk_darwin(v27);
  v29 = &v73 - v28;
  __chkstk_darwin(v30);
  v32 = &v73 - v31;
  v33 = *a1;
  v95 = *a2;
  v34 = OBJC_IVAR____TtC6FindMy23FMUnknownItemAnnotation_item;
  swift_beginAccess();
  v35 = *(v10 + 16);
  v83 = v33;
  v81 = v34;
  v93 = v35;
  v94 = v10 + 16;
  v35(v18, v33 + v34, v9);
  v36 = FMIPUnknownItem.locations.getter();
  v37 = *(v10 + 8);
  v96 = v9;
  v97 = v10 + 8;
  v92 = v37;
  v37(v18, v9);
  v38 = *(v36 + 16);
  v84 = v32;
  if (v38)
  {
    v39 = v79;
    v40 = v80;
    (*(v79 + 16))(v22, v36 + ((*(v39 + 80) + 32) & ~*(v39 + 80)), v80);

    v41 = FMIPLocation.location.getter();
    (*(v39 + 8))(v22, v40);
    v42 = [v41 timestamp];

    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v78;
    (*(v78 + 32))(v32, v29, v23);
  }

  else
  {

    v43 = v78;
    (*(v78 + 16))(v32, v76, v23);
    v40 = v80;
    v39 = v79;
  }

  v44 = OBJC_IVAR____TtC6FindMy23FMUnknownItemAnnotation_item;
  v45 = v95;
  swift_beginAccess();
  v80 = v44;
  v46 = v45 + v44;
  v47 = v82;
  v48 = v96;
  v93(v82, v46, v96);
  v49 = FMIPUnknownItem.locations.getter();
  v92(v47, v48);
  v50 = *(v49 + 16);
  v77 = v23;
  if (v50)
  {
    v51 = v74;
    (*(v39 + 16))(v74, v49 + ((*(v39 + 80) + 32) & ~*(v39 + 80)), v40);

    v52 = FMIPLocation.location.getter();
    (*(v39 + 8))(v51, v40);
    v53 = [v52 timestamp];

    v54 = v75;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v55 = v85;
    (*(v43 + 32))(v85, v54, v23);
  }

  else
  {

    v55 = v85;
    (*(v43 + 16))(v85, v76, v23);
  }

  v56 = v43;
  v57 = v86;
  v58 = v96;
  v59 = v93;
  v93(v86, v83 + v81, v96);
  v60 = v88;
  FMIPUnknownItem.identifier.getter();
  v61 = v92;
  v92(v57, v58);
  v62 = v87;
  v59(v87, v95 + v80, v58);
  v63 = v89;
  FMIPUnknownItem.identifier.getter();
  v61(v62, v58);
  v64 = v84;
  v65 = v55;
  v66 = sub_1004B1FE4(v84, v60, v55, v63);
  v67 = *(v90 + 8);
  v68 = v63;
  v69 = v91;
  v67(v68, v91);
  v67(v60, v69);
  v70 = *(v56 + 8);
  v71 = v77;
  v70(v65, v77);
  v70(v64, v71);
  return v66 & 1;
}

double sub_1004C7074(uint64_t a1, void *a2)
{
  sub_10007EBC0(&unk_1006C2420, &unk_1005642C0);
  v3 = (sub_10007EBC0(&qword_1006B38E8, &qword_1005557A8) - 8);
  v4 = (*(*v3 + 80) + 32) & ~*(*v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100552220;
  v6 = v5 + v4;
  v7 = v3[14];
  type metadata accessor for FMAnnotationIdentifier(0);
  OS_dispatch_queue.sync<A>(execute:)();
  *(v6 + v7) = a2;
  v8 = a2;
  v9 = sub_1001548DC(v5);
  swift_setDeallocating();
  sub_100012DF0(v6, &qword_1006B38E8, &qword_1005557A8);
  swift_deallocClassInstance();
  sub_100012E50(v9, _swiftEmptyArrayStorage);

  return result;
}

double sub_1004C7204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v53 = *v3;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v58 = *(v4 - 8);
  v59 = v4;
  __chkstk_darwin(v4);
  v56 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for DispatchQoS();
  v55 = *(v57 - 8);
  __chkstk_darwin(v57);
  v54 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FMIPUnknownItem();
  v64 = *(v7 - 8);
  v65 = v7;
  v8 = *(v64 + 64);
  __chkstk_darwin(v7);
  v61 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v63 = &v49 - v10;
  v11 = type metadata accessor for FMSelectedSection(0);
  __chkstk_darwin(v11);
  v52 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v49 - v14;
  __chkstk_darwin(v16);
  v18 = &v49 - v17;
  v67 = swift_allocObject();
  *(v67 + 16) = _swiftEmptyArrayStorage;
  v19 = swift_allocObject();
  *(v19 + 16) = &_swiftEmptyDictionarySingleton;
  v60 = swift_allocObject();
  *(v60 + 16) = _swiftEmptyArrayStorage;
  v20 = *(v3[2] + 56);
  v21 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100027BE0(v20 + v21, v18, type metadata accessor for FMSelectedSection);
  v66 = v18;
  sub_100027BE0(v18, v15, type metadata accessor for FMSelectedSection);
  if (swift_getEnumCaseMultiPayload() == 8)
  {
    v22 = v64;
    v51 = *(v64 + 32);
    v23 = v63;
    v24 = v65;
    v51(v63, v15, v65);
    v50 = v3;
    v52 = v3[11];
    (*(v22 + 16))(v61, v23, v24);
    v25 = (*(v22 + 80) + 24) & ~*(v22 + 80);
    v26 = (v8 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
    v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF8;
    v28 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
    v29 = (v28 + 15) & 0xFFFFFFFFFFFFFFF8;
    v49 = v19;
    v30 = swift_allocObject();
    v31 = v50;
    v32 = v61;
    *(v30 + 16) = v62;
    v51((v30 + v25), v32, v24);
    *(v30 + v26) = v67;
    *(v30 + v27) = v49;
    *(v30 + v28) = v31;
    *(v30 + v29) = v60;
    *(v30 + ((v29 + 15) & 0xFFFFFFFFFFFFFFF8)) = v53;
    v72 = sub_1004D1300;
    v73 = v30;
    aBlock = _NSConcreteStackBlock;
    v69 = 1107296256;
    v70 = sub_100004AE4;
    v71 = &unk_100642258;
    v33 = _Block_copy(&aBlock);

    v34 = v54;
    static DispatchQoS.unspecified.getter();
    v74 = _swiftEmptyArrayStorage;
    sub_10000A738(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
    sub_100004098(&qword_1006AEDF0, &unk_1006B0640, &unk_100552B10, &protocol conformance descriptor for [A]);
    v35 = v56;
    v36 = v59;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v33);
    (*(v58 + 8))(v35, v36);
    (*(v55 + 8))(v34, v57);
    (*(v64 + 8))(v63, v65);
    sub_10002A100(v66, type metadata accessor for FMSelectedSection);
  }

  else
  {
    v37 = v66;
    sub_10002A100(v15, type metadata accessor for FMSelectedSection);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_100005B14(v38, qword_1006D4630);
    v39 = v52;
    sub_100027BE0(v37, v52, type metadata accessor for FMSelectedSection);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v74 = v43;
      *v42 = 136315138;
      aBlock = 0;
      v69 = 0xE000000000000000;
      _print_unlocked<A, B>(_:_:)();
      v44 = aBlock;
      v45 = v69;
      sub_10002A100(v39, type metadata accessor for FMSelectedSection);
      v46 = sub_100005B4C(v44, v45, &v74);

      *(v42 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v40, v41, "FMMapViewDataSource: cannot fetch unknown item value from selected section %s", v42, 0xCu);
      sub_100006060(v43);

      v47 = v66;
    }

    else
    {

      sub_10002A100(v39, type metadata accessor for FMSelectedSection);
      v47 = v37;
    }

    sub_10002A100(v47, type metadata accessor for FMSelectedSection);
  }

  return result;
}

void sub_1004C7A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v271 = a6;
  v300 = a5;
  v310 = a4;
  v254 = a3;
  v282 = a2;
  v296 = type metadata accessor for FMAnnotationIdentifier(0);
  v292 = *(v296 - 8);
  __chkstk_darwin(v296);
  v8 = &v245 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v301 = (&v245 - v10);
  v267 = sub_10007EBC0(&unk_1006B77E0, &unk_100559AC0);
  v11 = *(v267 - 8);
  __chkstk_darwin(v267);
  v266 = &v245 - v12;
  v265 = sub_10007EBC0(&qword_1006C23B8, &qword_100564290);
  v13 = *(v265 - 8);
  __chkstk_darwin(v265);
  v264 = &v245 - v14;
  v312 = type metadata accessor for Date();
  v15 = *(v312 - 8);
  __chkstk_darwin(v312);
  v311 = &v245 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FMIPLocation();
  v270 = *(v17 - 8);
  __chkstk_darwin(v17);
  v268 = &v245 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v285 = type metadata accessor for UUID();
  v19 = *(v285 - 8);
  __chkstk_darwin(v285);
  v281 = &v245 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v284 = &v245 - v22;
  v23 = type metadata accessor for FMIPUnknownItem();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v275 = &v245 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v263 = &v245 - v27;
  __chkstk_darwin(v28);
  v274 = &v245 - v29;
  __chkstk_darwin(v30);
  v289 = &v245 - v31;
  v247 = sub_10007EBC0(&qword_1006C23C0, &qword_100564298);
  v246 = *(v247 - 8);
  __chkstk_darwin(v247);
  v245 = &v245 - v32;
  v250 = sub_10007EBC0(&qword_1006C23C8, &qword_1005642A0);
  v249 = *(v250 - 8);
  v33 = __chkstk_darwin(v250);
  v248 = &v245 - v34;
  v280 = *(a1 + 16);
  if (!v280)
  {
LABEL_161:
    v237 = v271;
    swift_beginAccess();
    v318 = *(v237 + 16);

    sub_10007EBC0(&qword_1006C23D0, &qword_1005642A8);
    sub_10007EBC0(&qword_1006C23D8, &unk_1005642B0);
    sub_100004098(&qword_1006C23E0, &qword_1006C23D0, &qword_1005642A8, &protocol conformance descriptor for AnyPublisher<A, B>);
    sub_100004098(&qword_1006C23E8, &qword_1006C23D8, &unk_1005642B0, &protocol conformance descriptor for [A]);
    v238 = v245;
    Publishers.MergeMany.init<A>(_:)();
    sub_100004098(&qword_1006C23F0, &qword_1006C23C0, &qword_100564298, &protocol conformance descriptor for Publishers.MergeMany<A>);
    v239 = v248;
    v240 = v247;
    Publisher.collect()();
    (*(v246 + 8))(v238, v240);
    v241 = swift_allocObject();
    v242 = v300;
    v241[2] = v310;
    v241[3] = v242;
    v241[4] = v254;
    sub_100004098(&qword_1006C23F8, &qword_1006C23C8, &qword_1005642A0, &protocol conformance descriptor for Publishers.Collect<A>);

    v243 = v250;
    v244 = Publisher<>.sink(receiveValue:)();

    (*(v249 + 8))(v239, v243);
    *(v242 + 96) = v244;

    return;
  }

  v35 = 0;
  v277 = 0;
  v37 = *(v24 + 16);
  v36 = v24 + 16;
  v290 = v37;
  v38 = *(v36 + 64);
  v279 = a1 + ((v38 + 32) & ~v38);
  v283 = (v19 + 8);
  v288 = (v36 - 8);
  v304 = (v15 + 8);
  v294 = (v15 + 32);
  v260 = v38;
  v259 = (v38 + 24) & ~v38;
  v258 = (v25 + v259 + 7) & 0xFFFFFFFFFFFFFFF8;
  v257 = (v36 + 16);
  v256 = (v11 + 8);
  v255 = (v13 + 8);
  v291 = v36;
  v278 = *(v36 + 56);
  v33.n128_u64[0] = 136315138;
  v251 = v33;
  v33.n128_u64[0] = 134217984;
  v253 = v33;
  v252 = xmmword_100552220;
  v287 = vdupq_n_s64(0x400921FB54442D18uLL);
  v295 = xmmword_1005528C0;
  v286 = vdupq_n_s64(0x4066800000000000uLL);
  v306 = v8;
  v299 = v17;
  v273 = v23;
  v262 = v270 + 16;
  v261 = (v270 + 8);
  while (1)
  {
    v293 = v35;
    v39 = v289;
    v290(v289, v279 + v278 * v35, v23);
    v40 = v284;
    FMIPUnknownItem.identifier.getter();
    v41 = v281;
    FMIPUnknownItem.identifier.getter();
    v42 = static UUID.== infix(_:_:)();
    v43 = *v283;
    v44 = v41;
    v45 = v285;
    (*v283)(v44, v285);
    v43(v40, v45);
    if ((v42 & 1) == 0)
    {
      (*v288)(v39, v23);
      goto LABEL_4;
    }

    v46 = *(FMIPUnknownItem.locations.getter() + 16);

    v47 = v275;
    v48 = v274;
    if (!v46)
    {
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v56 = type metadata accessor for Logger();
      sub_100005B14(v56, qword_1006D4630);
      v290(v47, v39, v23);
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = v47;
        v60 = swift_slowAlloc();
        v314 = swift_slowAlloc();
        v319 = v314;
        *v60 = v251.n128_u32[0];
        v61 = v284;
        FMIPUnknownItem.identifier.getter();
        sub_10000A738(&qword_1006B7830, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v62 = v285;
        v63 = dispatch thunk of CustomStringConvertible.description.getter();
        v65 = v64;
        v66 = v61;
        v23 = v273;
        v43(v66, v62);
        v67 = *v288;
        v68 = v59;
        v8 = v306;
        (*v288)(v68, v23);
        v69 = sub_100005B4C(v63, v65, &v319);

        *(v60 + 4) = v69;
        _os_log_impl(&_mh_execute_header, v57, v58, "FMMapViewDataSource: No locations provided for %s", v60, 0xCu);
        sub_100006060(v314);

        v67(v289, v23);
      }

      else
      {

        v150 = *v288;
        (*v288)(v47, v23);
        v150(v39, v23);
      }

      goto LABEL_4;
    }

    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_100005B14(v49, qword_1006D4630);
    v290(v48, v39, v23);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = v48;
      v53 = swift_slowAlloc();
      *v53 = v253.n128_u32[0];
      v54 = *(FMIPUnknownItem.locations.getter() + 16);

      v55 = v52;
      v39 = v289;
      v276 = *v288;
      v276(v55, v23);
      *(v53 + 4) = v54;
      _os_log_impl(&_mh_execute_header, v50, v51, "FMMapViewDataSource: computing %ld location tracks", v53, 0xCu);
    }

    else
    {
      v276 = *v288;
      v276(v48, v23);
    }

    v70 = FMIPUnknownItem.locations.getter();
    v71 = v70[2];
    if (v71)
    {
      v319 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v72 = (*(v270 + 80) + 32) & ~*(v270 + 80);
      v313 = v70;
      v73 = v70 + v72;
      v314 = *(v270 + 72);
      v74 = v268;
      v75 = *(v270 + 16);
      v76 = v261;
      do
      {
        v75(v74, v73, v17);
        FMIPLocation.location.getter();
        (*v76)(v74, v17);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v73 += v314;
        --v71;
      }

      while (v71);

      v77 = v319;
      v23 = v273;
      v39 = v289;
      v8 = v306;
      if (!(v319 >> 62))
      {
LABEL_20:
        v78 = (v77 & 0xFFFFFFFFFFFFFF8);

        goto LABEL_21;
      }
    }

    else
    {

      v77 = _swiftEmptyArrayStorage;
      if (!(_swiftEmptyArrayStorage >> 62))
      {
        goto LABEL_20;
      }
    }

    v146 = _CocoaArrayWrapper.endIndex.getter();
    if (v146)
    {
      v147 = v146;
      v78 = sub_10008FC98();

      sub_10043ACF8((v78 + 4), v147, v77);
      v149 = v148;

      if (v149 != v147)
      {
        goto LABEL_175;
      }
    }

    else
    {
      v78 = _swiftEmptyArrayStorage;
    }

LABEL_21:
    v319 = v78;
    v79 = v277;
    sub_1004CBCD8(&v319);
    v277 = v79;
    if (v79)
    {
      goto LABEL_177;
    }

    v80 = v319;
    v318 = _swiftEmptyArrayStorage;
    if ((v319 & 0x8000000000000000) != 0 || (v319 & 0x4000000000000000) != 0)
    {
      v309 = _CocoaArrayWrapper.endIndex.getter();
      if (!v309)
      {
LABEL_157:

        v276(v39, v23);
        goto LABEL_4;
      }
    }

    else
    {
      v309 = *(v319 + 16);
      if (!v309)
      {
        goto LABEL_157;
      }
    }

    v308 = v80 & 0xC000000000000001;
    if ((v80 & 0xC000000000000001) != 0)
    {
      v314 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v81 = &selRef__enter3DMode;
      v82 = &selRef__enter3DMode;
    }

    else
    {
      v81 = &selRef__enter3DMode;
      v82 = &selRef__enter3DMode;
      if (!*(v80 + 16))
      {
        goto LABEL_171;
      }

      v314 = *(v80 + 32);
    }

    if (v309 < 1)
    {
      goto LABEL_170;
    }

    v272 = v309 - 1;
    v83 = 0;
    v307 = v80;
    v269 = v80 + 32;
    v84 = _swiftEmptyArrayStorage;
    v313 = _swiftEmptyArrayStorage;
    do
    {
      if (v308)
      {
        v87 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v87 = *(v307 + 8 * v83 + 32);
      }

      v88 = v87;
      [v87 v81[242]];
      if (v89 >= 25.0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v84 = sub_10008C75C(0, v84[2] + 1, 1, v84);
        }

        v92 = v84[2];
        v91 = v84[3];
        if (v92 >= v91 >> 1)
        {
          v84 = sub_10008C75C((v91 > 1), v92 + 1, 1, v84);
        }

        v84[2] = v92 + 1;
        v84[v92 + 4] = v313;
        sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
        v85 = swift_allocObject();
        *(v85 + 16) = v295;
        *(v85 + 32) = v88;
        v86 = v88;

        v313 = v85;
        v318 = v85;
        v314 = v86;
      }

      else
      {
        v90 = v88;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v318 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v318 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v82 = &selRef__enter3DMode;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v313 = v318;
      }

      ++v83;
    }

    while (v309 != v83);
    v317 = _swiftEmptyArrayStorage;
    v298 = v84[2];
    if (v298)
    {
      break;
    }

    *&v305.f64[0] = _swiftEmptyArrayStorage;
LABEL_107:
    v151 = v305.f64[0];
    if (*&v305.f64[0] >> 62)
    {
      v152 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v152 = *((*&v305.f64[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v153 = _swiftEmptyArrayStorage;
    if (v152)
    {
      v319 = _swiftEmptyArrayStorage;
      sub_100167684(0, v152 & ~(v152 >> 63), 0);
      if (v152 < 0)
      {
        goto LABEL_172;
      }

      v154 = 0;
      v153 = v319;
      do
      {
        if ((*&v151 & 0xC000000000000001) != 0)
        {
          v155 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v155 = *(*&v151 + 8 * v154 + 32);
        }

        v156 = v155;
        [v155 coordinate];
        v158 = v157;
        v160 = v159;

        v319 = v153;
        v162 = v153[2];
        v161 = v153[3];
        if (v162 >= v161 >> 1)
        {
          sub_100167684((v161 > 1), v162 + 1, 1);
          v153 = v319;
        }

        ++v154;
        v153[2] = v162 + 1;
        v163 = &v153[2 * v162];
        v163[4] = v158;
        v163[5] = v160;
        v8 = v306;
      }

      while (v152 != v154);
    }

    v164 = v301;
    if (v308)
    {
      v165 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v309 > *(v307 + 16))
      {
        goto LABEL_174;
      }

      v165 = *(v269 + 8 * v272);
    }

    v166 = v165;

    if (v153[2] < 2uLL)
    {
    }

    else
    {
      sub_10007EBC0(&qword_1006AF7F0, &qword_100555D90);
      inited = swift_initStackObject();
      *(inited + 16) = v252;
      [v166 coordinate];
      *(inited + 32) = v168;
      *(inited + 40) = v169;
      v319 = v153;
      sub_1004947C4(inited);
      v170 = [objc_opt_self() polylineWithCoordinates:v319 + 32 count:*(v319 + 16)];

      v171 = v254;
      swift_beginAccess();
      v172 = v170;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v171 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v171 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();

      v164 = v301;
    }

    v313 = v166;
    if (*&v151 >> 62)
    {
      v173 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v173 = *((*&v151 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v17 = v299;
    v174 = v8;
    if (v173)
    {
      if (v173 < 1)
      {
        goto LABEL_173;
      }

      v175 = 0;
      v176 = *&v305.f64[0] & 0xC000000000000001;
      while (2)
      {
        if (v176)
        {
          v179 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v179 = *(*&v305.f64[0] + 8 * v175 + 32);
        }

        v180 = v179;
        v319 = 0;
        v320 = 0xE000000000000000;
        [v179 coordinate];
        Double.write<A>(to:)();
        v181._countAndFlagsBits = 45;
        v181._object = 0xE100000000000000;
        String.append(_:)(v181);
        [v180 coordinate];
        Double.write<A>(to:)();
        v182._countAndFlagsBits = 45;
        v182._object = 0xE100000000000000;
        String.append(_:)(v182);
        v183 = [v180 timestamp];
        v184 = v311;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        Date.timeIntervalSinceReferenceDate.getter();
        (*v304)(v184, v312);
        Double.write<A>(to:)();
        v185 = v320;
        *v164 = v319;
        v164[1] = v185;
        swift_storeEnumTagMultiPayload();
        v186 = v174;
        sub_100027BE0(v164, v174, type metadata accessor for FMAnnotationIdentifier);
        v187 = *(v300 + 48);
        if (*(v187 + 16))
        {

          v188 = sub_1001B4074(v164);
          if (v189)
          {
            v190 = *(*(v187 + 56) + 8 * v188);

            goto LABEL_143;
          }
        }

        v191 = objc_allocWithZone(type metadata accessor for FMTrackAnnotation(0));
        v192 = OBJC_IVAR____TtC6FindMy17FMTrackAnnotation_noImage;
        v193 = objc_allocWithZone(UIImage);
        v194 = v180;
        *&v191[v192] = [v193 init];
        *&v191[OBJC_IVAR____TtC6FindMy17FMTrackAnnotation_location] = v194;
        v195 = v194;
        v196 = [v195 timestamp];
        v197 = v311;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        (*v294)(&v191[OBJC_IVAR____TtC6FindMy17FMTrackAnnotation_timestamp], v197, v312);
        [v195 coordinate];
        v199 = v198;
        v201 = v200;
        [v195 horizontalAccuracy];
        v202 = &v191[OBJC_IVAR____TtC6FindMy12FMAnnotation_title];
        *v202 = 0;
        v202[1] = 0;
        *&v191[OBJC_IVAR____TtC6FindMy12FMAnnotation_badgeImage] = 0;
        *&v191[OBJC_IVAR____TtC6FindMy12FMAnnotation_stewieBadgeImage] = 0;
        v203 = &v191[OBJC_IVAR____TtC6FindMy12FMAnnotation_fmClusterIdentifier];
        *v203 = 0;
        v203[1] = 0;
        v204 = &v191[OBJC_IVAR____TtC6FindMy12FMAnnotation_coordinate];
        *v204 = v199;
        v204[1] = v201;
        *&v191[OBJC_IVAR____TtC6FindMy12FMAnnotation_horizontalAccuracy] = v205;
        v191[OBJC_IVAR____TtC6FindMy12FMAnnotation_isWithYou] = 0;
        v191[OBJC_IVAR____TtC6FindMy12FMAnnotation_isInaccurate] = 0;
        v191[OBJC_IVAR____TtC6FindMy12FMAnnotation_isLive] = 0;
        v206 = type metadata accessor for FMAnnotation();
        v316.receiver = v191;
        v316.super_class = v206;
        v186 = v174;
        v190 = objc_msgSendSuper2(&v316, "init");

LABEL_143:
        v207 = v310;
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v315 = *(v207 + 16);
        v209 = v315;
        *(v207 + 16) = 0x8000000000000000;
        v210 = sub_1001B4074(v186);
        v212 = v209[2];
        v213 = (v211 & 1) == 0;
        v214 = __OFADD__(v212, v213);
        v215 = v212 + v213;
        if (v214)
        {
          goto LABEL_163;
        }

        v216 = v211;
        if (v209[3] >= v215)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_148;
          }

          v222 = v210;
          sub_1001C0050();
          v210 = v222;
          v218 = v315;
          if (v216)
          {
            goto LABEL_133;
          }

LABEL_149:
          v218[(v210 >> 6) + 8] |= 1 << v210;
          v219 = v210;
          sub_100027BE0(v186, v218[6] + *(v292 + 72) * v210, type metadata accessor for FMAnnotationIdentifier);
          *(v218[7] + 8 * v219) = v190;
          v220 = v218[2];
          v214 = __OFADD__(v220, 1);
          v221 = v220 + 1;
          if (v214)
          {
            goto LABEL_167;
          }

          v218[2] = v221;
        }

        else
        {
          sub_1001B9890(v215, isUniquelyReferenced_nonNull_native);
          v210 = sub_1001B4074(v186);
          if ((v216 & 1) != (v217 & 1))
          {
            goto LABEL_176;
          }

LABEL_148:
          v218 = v315;
          if ((v216 & 1) == 0)
          {
            goto LABEL_149;
          }

LABEL_133:
          v177 = v218[7];
          v178 = *(v177 + 8 * v210);
          *(v177 + 8 * v210) = v190;
        }

        ++v175;
        sub_10002A100(v186, type metadata accessor for FMAnnotationIdentifier);
        *(v310 + 16) = v218;
        swift_endAccess();

        v164 = v301;
        sub_10002A100(v301, type metadata accessor for FMAnnotationIdentifier);
        v17 = v299;
        if (v173 == v175)
        {
          break;
        }

        continue;
      }
    }

    v223 = *(v300 + 48);

    v224 = v289;
    v225 = sub_1001AFD50(v289, 4u);

    v319 = v225;
    v226 = [objc_allocWithZone(UIImage) init];
    v315 = v226;
    sub_10007EBC0(&unk_1006B4D90, &unk_100555990);
    sub_100004098(&qword_1006B7800, &unk_1006B4D90, &unk_100555990, &protocol conformance descriptor for AnyPublisher<A, B>);
    v227 = v266;
    Publisher.replaceError(with:)();

    v228 = v263;
    v229 = v273;
    v290(v263, v224, v273);
    v230 = v258;
    v231 = swift_allocObject();
    *(v231 + 16) = v223;
    (*v257)(v231 + v259, v228, v229);
    v232 = v313;
    *(v231 + v230) = v313;
    type metadata accessor for FMUnknownItemAnnotation(0);
    sub_100004098(&qword_1006B7808, &unk_1006B77E0, &unk_100559AC0, &protocol conformance descriptor for Publishers.ReplaceError<A>);
    v313 = v232;
    v233 = v264;
    v234 = v267;
    Publisher.map<A>(_:)();

    (*v256)(v227, v234);
    sub_100004098(&unk_1006C2400, &qword_1006C23B8, &qword_100564290, &protocol conformance descriptor for Publishers.Map<A, B>);
    v235 = v265;
    Publisher.eraseToAnyPublisher()();
    (*v255)(v233, v235);
    v236 = v271;
    swift_beginAccess();

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*(*(v236 + 16) + 16) >= *(*(v236 + 16) + 24) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();

    v276(v224, v229);
    v8 = v174;
    v23 = v229;
LABEL_4:
    v35 = v293 + 1;
    if (v293 + 1 == v280)
    {
      goto LABEL_161;
    }
  }

  v93 = 0;
  v297 = v84 + 4;
  *&v305.f64[0] = _swiftEmptyArrayStorage;
  while (v93 < v84[2])
  {
    v94 = v297[v93];
    if (v94 >> 62)
    {
      v95 = _CocoaArrayWrapper.endIndex.getter();
      if (!v95)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v95 = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v95)
      {
        goto LABEL_46;
      }
    }

    v96 = v95 - 1;
    if (__OFSUB__(v95, 1))
    {
      goto LABEL_164;
    }

    v97 = v94 & 0xC000000000000001;
    if ((v94 & 0xC000000000000001) != 0)
    {

      v99 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v96 & 0x8000000000000000) != 0)
      {
        goto LABEL_165;
      }

      if (v96 >= *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_166;
      }

      v98 = *(v94 + 8 * v96 + 32);

      v99 = v98;
    }

    v303 = v99;
    if (v94 >> 62)
    {
      v100 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v100 = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v302 = v100 & ~(v100 >> 63);
    if (v100)
    {
      v319 = _swiftEmptyArrayStorage;
      sub_100167684(0, v100 & ~(v100 >> 63), 0);
      if (v100 < 0)
      {
        goto LABEL_168;
      }

      v101 = 0;
      v102 = v319;
      do
      {
        if (v97)
        {
          v103 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v103 = *(v94 + 8 * v101 + 32);
        }

        v104 = v103;
        [v103 coordinate];
        v106 = v105;
        v108 = v107;

        v319 = v102;
        v110 = *&v102[1].f64[0];
        v109 = *&v102[1].f64[1];
        v111 = v110 + 1;
        if (v110 >= v109 >> 1)
        {
          sub_100167684((v109 > 1), v110 + 1, 1);
          v102 = v319;
        }

        ++v101;
        *&v102[1].f64[0] = v111;
        f64 = v102[v110].f64;
        f64[4] = v106;
        f64[5] = v108;
      }

      while (v100 != v101);
    }

    else
    {
      v102 = _swiftEmptyArrayStorage;
      v111 = _swiftEmptyArrayStorage[2];
    }

    if (v111 > 1)
    {
      v113 = &v102[2].f64[1];
      v114 = 0.0;
      v115 = v111;
      v116 = 0.0;
      v117 = 0.0;
      do
      {
        v118 = *v113 * 3.14159265 / 180.0;
        v119 = __sincos_stret(*(v113 - 1) * 3.14159265 / 180.0);
        v120 = __sincos_stret(v118);
        v117 = v117 + v119.__cosval * v120.__cosval;
        v116 = v116 + v119.__cosval * v120.__sinval;
        v114 = v114 + v119.__sinval;
        v113 += 2;
        --v115;
      }

      while (v115);

      v121.f64[0] = atan2(v116 / v111, v117 / v111);
      v305 = v121;
      v122.f64[0] = atan2(v114 / v111, sqrt(v117 / v111 * (v117 / v111) + v116 / v111 * (v116 / v111)));
      v122.f64[1] = v305.f64[0];
      v305 = vdivq_f64(vmulq_f64(v122, v286), v287);
      v82 = &selRef__enter3DMode;
LABEL_75:
      if (v100)
      {
        v319 = _swiftEmptyArrayStorage;
        sub_100167664(0, v302, 0);
        if (v100 < 0)
        {
          goto LABEL_169;
        }

        v123 = 0;
        v124 = v319;
        do
        {
          if (v97)
          {
            v125 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v125 = *(v94 + 8 * v123 + 32);
          }

          v126 = v125;
          [v125 v82[145]];
          v128 = v127;

          v319 = v124;
          v130 = v124[2];
          v129 = v124[3];
          if (v130 >= v129 >> 1)
          {
            sub_100167664((v129 > 1), v130 + 1, 1);
            v124 = v319;
          }

          ++v123;
          v124[2] = v130 + 1;
          v124[v130 + 4] = v128;
        }

        while (v100 != v123);
      }

      else
      {

        v124 = _swiftEmptyArrayStorage;
      }

      v131 = v124[2];
      v8 = v306;
      if (v131)
      {
        if (v131 <= 3)
        {
          v132 = 0;
          v133 = 0.0;
          goto LABEL_93;
        }

        v132 = v131 & 0x7FFFFFFFFFFFFFFCLL;
        v134 = (v124 + 6);
        v133 = 0.0;
        v135 = v131 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v133 = v133 + *(v134 - 2) + *(v134 - 1) + *v134 + v134[1];
          v134 += 4;
          v135 -= 4;
        }

        while (v135);
        if (v131 != v132)
        {
LABEL_93:
          v136 = v131 - v132;
          v137 = &v124[v132 + 4];
          do
          {
            v138 = *v137++;
            v133 = v133 + v138;
            --v136;
          }

          while (v136);
        }
      }

      else
      {
        v133 = 0.0;
      }

      v139 = v303;
      v140 = [v303 timestamp];
      v141 = v311;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v142 = objc_allocWithZone(CLLocation);
      isa = Date._bridgeToObjectiveC()().super.isa;
      v144 = [v142 initWithCoordinate:isa altitude:v305.f64[0] horizontalAccuracy:v305.f64[1] verticalAccuracy:v133 / v100 timestamp:{12.5, 12.5}];

      (*v304)(v141, v312);
      v145 = v144;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v317 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v317 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      *&v305.f64[0] = v317;
      goto LABEL_46;
    }

    if (v111)
    {
      v305 = v102[2];

      goto LABEL_75;
    }

    v8 = v306;
LABEL_46:
    if (++v93 == v298)
    {
      goto LABEL_107;
    }
  }

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
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_177:

  __break(1u);
}

void sub_1004C9ED4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a4;
  v41 = a3;
  v54 = a2;
  v53 = type metadata accessor for FMAnnotationIdentifier(0);
  v50 = *(v53 - 8);
  __chkstk_darwin(v53);
  v55 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v47 = *(v6 - 8);
  v48 = v6;
  __chkstk_darwin(v6);
  v45 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for DispatchQoS();
  v44 = *(v46 - 8);
  __chkstk_darwin(v46);
  v43 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  isUniquelyReferenced_nonNull_native = *a1;
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
LABEL_26:
    v10 = _CocoaArrayWrapper.endIndex.getter();
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_27:
    v34 = v41;
    v35 = swift_allocObject();
    v36 = v54;
    v35[2] = v34;
    v35[3] = v36;
    v35[4] = v42;
    aBlock[4] = sub_1004D1484;
    aBlock[5] = v35;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004AE4;
    aBlock[3] = &unk_100642348;
    v37 = _Block_copy(aBlock);

    v38 = v43;
    static DispatchQoS.unspecified.getter();
    v57 = _swiftEmptyArrayStorage;
    sub_10000A738(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
    sub_100004098(&qword_1006AEDF0, &unk_1006B0640, &unk_100552B10, &protocol conformance descriptor for [A]);
    v39 = v45;
    v40 = v48;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v37);
    (*(v47 + 8))(v39, v40);
    (*(v44 + 8))(v38, v46);

    return;
  }

  v10 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    goto LABEL_27;
  }

LABEL_3:
  v11 = 0;
  v51 = isUniquelyReferenced_nonNull_native;
  v52 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
  v49 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
  v12 = v54;
  while (1)
  {
    if (v52)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v11 >= *(v49 + 16))
      {
        goto LABEL_25;
      }

      v15 = *(isUniquelyReferenced_nonNull_native + 8 * v11 + 32);
    }

    v16 = v15;
    v17 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    __chkstk_darwin(v15);
    *(&v41 - 2) = v16;
    v18 = v55;
    OS_dispatch_queue.sync<A>(execute:)();
    swift_beginAccess();
    v19 = v16;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v57 = *(v12 + 16);
    v20 = v57;
    *(v12 + 16) = 0x8000000000000000;
    v22 = sub_1001B4074(v18);
    v23 = v20[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_23;
    }

    v26 = v21;
    if (v20[3] < v25)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v29 = v57;
      if (v21)
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_1001C0050();
      v29 = v57;
      if (v26)
      {
LABEL_4:
        v13 = v29[7];
        v14 = *(v13 + 8 * v22);
        *(v13 + 8 * v22) = v19;

        sub_10002A100(v55, type metadata accessor for FMAnnotationIdentifier);
        goto LABEL_5;
      }
    }

LABEL_18:
    v29[(v22 >> 6) + 8] |= 1 << v22;
    isUniquelyReferenced_nonNull_native = type metadata accessor for FMAnnotationIdentifier;
    v30 = v55;
    sub_100027BE0(v55, v29[6] + *(v50 + 72) * v22, type metadata accessor for FMAnnotationIdentifier);
    *(v29[7] + 8 * v22) = v19;
    sub_10002A100(v30, type metadata accessor for FMAnnotationIdentifier);
    v31 = v29[2];
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (v32)
    {
      goto LABEL_24;
    }

    v29[2] = v33;
LABEL_5:
    *(v54 + 16) = v29;

    swift_endAccess();

    ++v11;
    isUniquelyReferenced_nonNull_native = v51;
    if (v17 == v10)
    {
      goto LABEL_27;
    }
  }

  sub_1001B9890(v25, isUniquelyReferenced_nonNull_native);
  v27 = sub_1001B4074(v55);
  if ((v26 & 1) == (v28 & 1))
  {
    v22 = v27;
    v29 = v57;
    if (v26)
    {
      goto LABEL_4;
    }

    goto LABEL_18;
  }

  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

double sub_1004CA508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a2 + 16);
  swift_beginAccess();
  v6 = *(a3 + 16);

  sub_100012E50(v5, v6);

  return result;
}

void sub_1004CA5A0(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, id **a5@<X8>)
{
  v87 = a5;
  v88 = a4;
  v79 = type metadata accessor for DispatchWorkItemFlags();
  v78 = *(v79 - 1);
  __chkstk_darwin(v79);
  v80 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FMIPConfigValue();
  v82 = *(v9 - 8);
  __chkstk_darwin(v9);
  v81 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v85 = *(v11 - 8);
  v86 = v11;
  __chkstk_darwin(v11);
  v84 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v13 - 8);
  v83 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for DispatchQoS();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v91 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FMIPUnknownItem();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v19 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for FMAnnotationIdentifier(0);
  __chkstk_darwin(v20);
  v22 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = *a1;
  v90 = a3;
  FMIPUnknownItem.identifier.getter();
  swift_storeEnumTagMultiPayload();
  if (*(a2 + 16) && (v23 = sub_1001B4074(v22), (v24 & 1) != 0))
  {
    v25 = *(*(a2 + 56) + 8 * v23);
    sub_10002A100(v22, type metadata accessor for FMAnnotationIdentifier);
    type metadata accessor for FMUnknownItemAnnotation(0);
    v26 = swift_dynamicCastClass();
    if (v26)
    {
      v27 = v26;
      v28 = v88;
      [v88 coordinate];
      v30 = v29;
      v32 = v31;
      [v28 horizontalAccuracy];
      v34 = v33;
      v88 = *(v27 + OBJC_IVAR____TtC6FindMy23FMUnknownItemAnnotation_updateQueue);
      static DispatchWorkItemFlags.barrier.getter();
      (*(v17 + 16))(&v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v90, v16);
      v35 = (*(v17 + 80) + 32) & ~*(v17 + 80);
      v36 = v18 + v35 + 7;
      v37 = v17;
      v38 = v36 & 0xFFFFFFFFFFFFFFF8;
      v39 = ((v36 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
      v40 = swift_allocObject();
      *(v40 + 16) = v34;
      *(v40 + 24) = v27;
      v41 = v40 + v35;
      v42 = v87;
      (*(v37 + 32))(v41, v19, v16);
      v43 = (v40 + v38);
      *v43 = v30;
      v43[1] = v32;
      *(v40 + v39) = xmmword_10055DF60;
      v44 = v25;
      v45 = v89;
      *(v40 + ((v39 + 23) & 0xFFFFFFFFFFFFFFF8)) = v89;
      aBlock[4] = sub_1004D13D0;
      aBlock[5] = v40;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100004AE4;
      aBlock[3] = &unk_1006422F8;
      v46 = _Block_copy(aBlock);
      v47 = v44;
      v48 = v45;
      v49 = v91;
      static DispatchQoS.unspecified.getter();
      v50 = v80;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v46);
      (*(v76 + 8))(v49, v77);
      (*(v78 + 8))(v50, v79);

LABEL_10:
      *v42 = v27;
      return;
    }

    v76 = v9;
  }

  else
  {
    v76 = v9;
    sub_10002A100(v22, type metadata accessor for FMAnnotationIdentifier);
  }

  v51 = v88;
  [v88 coordinate];
  v53 = v52;
  v55 = v54;
  [v51 horizontalAccuracy];
  v57 = v56;
  v88 = *&v56;
  v77 = v17;
  v80 = *(v17 + 16);
  (v80)(&v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v90, v16);
  v58 = objc_allocWithZone(type metadata accessor for FMUnknownItemAnnotation(0));
  v59 = OBJC_IVAR____TtC6FindMy23FMUnknownItemAnnotation_itemImage;
  *&v58[OBJC_IVAR____TtC6FindMy23FMUnknownItemAnnotation_itemImage] = 0;
  v90 = OBJC_IVAR____TtC6FindMy23FMUnknownItemAnnotation_updateQueue;
  v78 = sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
  v60 = v89;
  v79 = v89;
  static DispatchQoS.userInteractive.getter();
  static OS_dispatch_queue.Attributes.concurrent.getter();
  (*(v85 + 104))(v84, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v86);
  *&v58[v90] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v61 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (v80)(&v58[OBJC_IVAR____TtC6FindMy23FMUnknownItemAnnotation_item], v61, v16);
  v62 = *&v58[v59];
  *&v58[v59] = v60;
  v63 = v79;

  v64 = &v58[OBJC_IVAR____TtC6FindMy23FMUnknownItemAnnotation_tempCoordinate];
  *v64 = v53;
  v64[1] = v55;
  if ((v88 & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v57 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v57 < 9.22337204e18)
  {
    v65 = v82;
    v66 = v81;
    v67 = v76;
    (*(v82 + 104))(v81, enum case for FMIPConfigValue.inaccuracyRadiusThreshold(_:), v76);
    v94 = 0x7FFFFFFFFFFFFFFFLL;
    FMIPGlobalConfig<A>(_:fallback:)();
    (*(v65 + 8))(v66, v67);
    v68 = aBlock[0];
    v69 = &v58[OBJC_IVAR____TtC6FindMy12FMAnnotation_title];
    *v69 = 0;
    v69[1] = 0;
    *&v58[OBJC_IVAR____TtC6FindMy12FMAnnotation_badgeImage] = 0;
    *&v58[OBJC_IVAR____TtC6FindMy12FMAnnotation_stewieBadgeImage] = 0;
    *&v58[OBJC_IVAR____TtC6FindMy12FMAnnotation_fmClusterIdentifier] = xmmword_10055DF60;
    v70 = &v58[OBJC_IVAR____TtC6FindMy12FMAnnotation_coordinate];
    *v70 = v53;
    v70[1] = v55;
    *&v58[OBJC_IVAR____TtC6FindMy12FMAnnotation_horizontalAccuracy] = v57;
    v58[OBJC_IVAR____TtC6FindMy12FMAnnotation_isWithYou] = 0;
    v58[OBJC_IVAR____TtC6FindMy12FMAnnotation_isInaccurate] = v68 < v57;
    v58[OBJC_IVAR____TtC6FindMy12FMAnnotation_isLive] = 0;
    v71 = type metadata accessor for FMAnnotation();
    v93.receiver = v58;
    v93.super_class = v71;
    v27 = objc_msgSendSuper2(&v93, "init");
    v72 = FMIPUnknownItem.name.getter();
    v74 = v73;

    (*(v77 + 8))(v61, v16);
    v75 = (v27 + OBJC_IVAR____TtC6FindMy12FMAnnotation_title);
    *v75 = v72;
    v75[1] = v74;

    v42 = v87;
    goto LABEL_10;
  }

LABEL_14:
  __break(1u);
}

void sub_1004CAF58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v8 = *(v18 - 8);
  __chkstk_darwin(v18);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FMSelectedSection(0);
  __chkstk_darwin(v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*(v3 + 16) + 56);
  v15 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100027BE0(v14 + v15, v13, type metadata accessor for FMSelectedSection);
  if (swift_getEnumCaseMultiPayload() - 13 >= 2)
  {
    sub_10002A100(v13, type metadata accessor for FMSelectedSection);
  }

  else
  {
    v17 = *(v3 + 88);
    aBlock[4] = sub_1004D1F9C;
    aBlock[5] = v3;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004AE4;
    aBlock[3] = &unk_100642190;
    v16 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v19 = _swiftEmptyArrayStorage;
    sub_10000A738(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
    sub_100004098(&qword_1006AEDF0, &unk_1006B0640, &unk_100552B10, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v16);
    (*(v5 + 8))(v7, v4);
    (*(v8 + 8))(v10, v18);
  }
}

double sub_1004CB2D8()
{
  v0 = sub_1001548DC(_swiftEmptyArrayStorage);
  sub_100012E50(v0, _swiftEmptyArrayStorage);

  return result;
}

void sub_1004CB330()
{
  v1 = v0;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005B14(v2, qword_1006D4630);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "FMMapViewDataSource: unsubscribing all providers", v5, 2u);
  }

  if (v1[8])
  {
    v6 = *(*(v1[2] + 24) + 16);

    os_unfair_lock_lock((v6 + 24));
    sub_10008FB6C((v6 + 16));
    os_unfair_lock_unlock((v6 + 24));

    v1[8] = 0;

    if (!v1[9])
    {
      return;
    }
  }

  else if (!v1[9])
  {
    return;
  }

  v7 = *(*(v1[2] + 48) + 32);

  os_unfair_lock_lock((v7 + 24));
  sub_10008FB88((v7 + 16));
  os_unfair_lock_unlock((v7 + 24));

  v1[9] = 0;
}

uint64_t sub_1004CB520()
{
  v1 = type metadata accessor for FMSelectedSection(0);
  __chkstk_darwin(v1);
  v3 = &v12[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*(v0 + 16) + 56);
  v5 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100027BE0(v4 + v5, v3, type metadata accessor for FMSelectedSection);
  if (swift_getEnumCaseMultiPayload() != 6)
  {
    sub_10002A100(v3, type metadata accessor for FMSelectedSection);
LABEL_6:
    v9 = 0;
    return v9 & 1;
  }

  v6 = *v3;
  sub_100091880(*(v3 + 1), *(v3 + 2));
  v7 = FMIPDevice.baIdentifier.getter();
  if (!v8)
  {

    goto LABEL_6;
  }

  v12[0] = v7;
  v12[1] = v8;
  __chkstk_darwin(v7);
  *(&v11 - 2) = v12;
  v9 = sub_10008A40C(sub_10011F7D4, (&v11 - 4), v6);

  return v9 & 1;
}

uint64_t sub_1004CB6BC()
{

  sub_10005CD20(v0 + 24);

  return v0;
}

uint64_t sub_1004CB71C()
{
  sub_1004CB6BC();

  return swift_deallocClassInstance();
}

unint64_t sub_1004CB774()
{
  result = qword_1006C2340;
  if (!qword_1006C2340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C2340);
  }

  return result;
}

unint64_t sub_1004CB7CC()
{
  result = qword_1006C2348;
  if (!qword_1006C2348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C2348);
  }

  return result;
}

void sub_1004CB91C(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  type metadata accessor for FMIPUnknownItem();
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_10025F3A4(v5);
  }

  sub_1004CBD54(a1, a2);
  *v2 = v5;
}

uint64_t sub_1004CB9DC(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1000573A8(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v26 = v2 + 32;
  v31[0] = v2 + 32;
  v31[1] = v4;
  v5 = _minimumMergeRunLength(_:)(v4);
  if (v5 >= v4)
  {
    if (v4 < 2)
    {
      return specialized ContiguousArray._endMutation()();
    }

    v8 = -1;
    v9 = 1;
    v10 = v2 + 32;
    v25 = v4;
LABEL_10:
    v28 = v9;
    v29 = v8;
    v13 = *(v26 + 8 * v9);
    v27 = v10;
    while (1)
    {
      if (*&v13[OBJC_IVAR____TtC6FindMy12FMAnnotation_title + 8])
      {
        v14 = *&v13[OBJC_IVAR____TtC6FindMy12FMAnnotation_title];
        v15 = *&v13[OBJC_IVAR____TtC6FindMy12FMAnnotation_title + 8];
      }

      else
      {
        v14 = 0;
        v15 = 0xE000000000000000;
      }

      v16 = *v10;
      v17 = (*v10 + OBJC_IVAR____TtC6FindMy12FMAnnotation_title);
      if (v17[1])
      {
        v18 = v17[1];
        if (v14 != *v17)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v18 = 0xE000000000000000;
        if (v14)
        {
          goto LABEL_19;
        }
      }

      if (v15 == v18)
      {

        v11 = v13;
        v12 = v16;

LABEL_9:
        v9 = v28 + 1;
        v10 = v27 + 8;
        v8 = v29 - 1;
        if (v28 + 1 == v25)
        {
          return specialized ContiguousArray._endMutation()();
        }

        goto LABEL_10;
      }

LABEL_19:
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v20 = v13;
      v21 = v16;

      if (v19)
      {
        v22 = *v10;
        v13 = *(v10 + 8);
        *v10 = v13;
        *(v10 + 8) = v22;
        v10 -= 8;
        if (!__CFADD__(v8++, 1))
        {
          continue;
        }
      }

      goto LABEL_9;
    }
  }

  v6 = v5;
  if (v4 >= 2)
  {
    type metadata accessor for FMAnnotation();
    v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4 >> 1;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v30[0] = ((v7 & 0xFFFFFFFFFFFFFF8) + 32);
  v30[1] = (v4 >> 1);
  sub_1004CD2D0(v30, v32, v31, v6);
  *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

  return specialized ContiguousArray._endMutation()();
}

uint64_t sub_1004CBC40(uint64_t (*a1)(void **, void **), uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    *v3 = sub_1000573A8(v6);
  }

  sub_1004CBE90(a1, a2);
  return specialized ContiguousArray._endMutation()();
}

uint64_t sub_1004CBCD8(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1000573A8(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1004CBFA4(v6);
  return specialized ContiguousArray._endMutation()();
}

void sub_1004CBD54(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v5 = v2[1];
  v6 = _minimumMergeRunLength(_:)(v5);
  if (v6 < v5)
  {
    if (v5 >= -1)
    {
      v7 = v6;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for FMIPUnknownItem();
        v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v9[2] = v8;
      }

      v10 = *(type metadata accessor for FMIPUnknownItem() - 8);
      v11[0] = v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v11[1] = v8;
      sub_1004CC6C4(v11, v12, v2, a1, a2, v7);
      v9[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    sub_1004CC0B8(0, v5, 1, a1, a2);
  }
}

void sub_1004CBE90(uint64_t (*a1)(void **, void **), uint64_t a2)
{
  v5 = *(v2 + 8);
  v6 = _minimumMergeRunLength(_:)(v5);
  if (v6 < v5)
  {
    if (v5 >= -1)
    {
      v7 = v6;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for FMUnknownItemAnnotation(0);
        v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFF8;
      v11[0] = ((v9 & 0xFFFFFFFFFFFFFF8) + 32);
      v11[1] = v8;
      sub_1004CDA90(v11, v12, v2, a1, a2, v7);
      *(v10 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    sub_1004CC3A4(0, v5, 1, a1);
  }
}

void sub_1004CBFA4(uint64_t *a1)
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
        sub_10000905C(0, &qword_1006BBCB0, CLLocation_ptr);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1004CE15C(v8, v9, a1, v4);
      *(v7 + 16) = 0;

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
    sub_1004CC4A4(0, v2, 1, a1);
  }
}

void sub_1004CC0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *), uint64_t a5)
{
  v7 = v6;
  v52 = a5;
  v53 = a4;
  v11 = type metadata accessor for FMIPUnknownItem();
  __chkstk_darwin(v11);
  v47 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v54 = &v38 - v14;
  v18 = __chkstk_darwin(v15);
  v39 = a2;
  if (a3 != a2)
  {
    v50 = &v38 - v16;
    v19 = *v5;
    v21 = *(v17 + 16);
    v20 = v17 + 16;
    v22 = *(v20 + 56);
    v48 = v21;
    v49 = (v20 - 8);
    v51 = v20;
    v45 = (v20 + 16);
    v46 = v19;
    v23 = (v19 + v22 * (a3 - 1));
    v44 = -v22;
    v24 = a1 - a3;
    v38 = v22;
    v25 = v19 + v22 * a3;
    v26 = v54;
    while (2)
    {
      v42 = v23;
      v43 = a3;
      v40 = v25;
      v41 = v24;
      v27 = v23;
      while (1)
      {
        v28 = v50;
        v29 = v48;
        (v48)(v50, v25, v11, v18);
        v29(v26, v27, v11);
        v30 = v53(v28, v26);
        if (v7)
        {
          v37 = *v49;
          (*v49)(v26, v11);
          v37(v28, v11);
          return;
        }

        v31 = v30;
        v32 = v26;
        v33 = *v49;
        (*v49)(v32, v11);
        v33(v28, v11);
        if ((v31 & 1) == 0)
        {
          break;
        }

        if (!v46)
        {
          __break(1u);
          return;
        }

        v34 = *v45;
        v35 = v47;
        (*v45)(v47, v25, v11);
        swift_arrayInitWithTakeFrontToBack();
        v34(v27, v35, v11);
        v27 += v44;
        v25 += v44;
        v36 = __CFADD__(v24++, 1);
        v26 = v54;
        v7 = 0;
        if (v36)
        {
          goto LABEL_11;
        }
      }

      v26 = v54;
      v7 = 0;
LABEL_11:
      a3 = v43 + 1;
      v23 = &v42[v38];
      v24 = v41 - 1;
      v25 = v40 + v38;
      if (v43 + 1 != v39)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1004CC3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void **, void **))
{
  if (a3 != a2)
  {
    v7 = *v4;
    v8 = (*v4 + 8 * a3 - 8);
    v9 = a1 - a3;
LABEL_4:
    v19 = v8;
    v20 = a3;
    v10 = *(v7 + 8 * a3);
    v18 = v9;
    while (1)
    {
      v22 = v10;
      v21 = *v8;
      v11 = v21;
      v12 = v10;
      v13 = v11;
      v14 = a4(&v22, &v21);

      if (v5)
      {
        break;
      }

      if (v14)
      {
        if (!v7)
        {
          __break(1u);
          return;
        }

        v15 = *v8;
        v10 = v8[1];
        *v8 = v10;
        v8[1] = v15;
        --v8;
        if (!__CFADD__(v9++, 1))
        {
          continue;
        }
      }

      a3 = v20 + 1;
      v8 = v19 + 1;
      v9 = v18 - 1;
      if (v20 + 1 != a2)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

void sub_1004CC4A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = type metadata accessor for Date();
  __chkstk_darwin(v35);
  v34 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v29 - v11;
  v30 = a2;
  if (a3 != a2)
  {
    v13 = (v10 + 8);
    v36 = *a4;
    v14 = v36 + 8 * a3 - 8;
    v15 = a1 - a3;
LABEL_5:
    v32 = v14;
    v33 = a3;
    v16 = *(v36 + 8 * a3);
    v31 = v15;
    v17 = v15;
    while (1)
    {
      v18 = *v14;
      v19 = v16;
      v20 = v18;
      v21 = [v19 timestamp];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v22 = [v20 timestamp];
      v23 = v34;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      LOBYTE(v22) = static Date.< infix(_:_:)();
      v24 = *v13;
      v25 = v23;
      v26 = v35;
      (*v13)(v25, v35);
      v24(v12, v26);

      if ((v22 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v14 = v32 + 8;
        v15 = v31 - 1;
        if (v33 + 1 == v30)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      v27 = *v14;
      v16 = *(v14 + 8);
      *v14 = v16;
      *(v14 + 8) = v27;
      v14 -= 8;
      if (__CFADD__(v17++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1004CC6C4(int64_t *a1, uint64_t a2, uint64_t *a3, int64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v142 = a1;
  v163 = type metadata accessor for FMIPUnknownItem();
  __chkstk_darwin(v163);
  v146 = &v134 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v149 = &v134 - v14;
  __chkstk_darwin(v15);
  __chkstk_darwin(v16);
  __chkstk_darwin(v17);
  v19 = &v134 - v18;
  __chkstk_darwin(v20);
  v140 = &v134 - v21;
  __chkstk_darwin(v22);
  v29 = __chkstk_darwin(&v134 - v23);
  v161 = v26;
  v162 = a3;
  v30 = a3[1];
  if (v30 < 1)
  {
    v32 = _swiftEmptyArrayStorage;
    v33 = a4;
LABEL_104:
    a4 = *v142;
    if (*v142)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_138;
      }

      goto LABEL_106;
    }

    goto LABEL_147;
  }

  v141 = &v134 - v25;
  v139 = v24;
  v151 = v19;
  v147 = v28;
  v148 = v27;
  v137 = a6;
  v31 = 0;
  v159 = (v26 + 8);
  v160 = v26 + 16;
  v155 = (v26 + 32);
  v32 = _swiftEmptyArrayStorage;
  v156 = a5;
  v33 = a4;
  v158 = a4;
  while (1)
  {
    v34 = v31;
    v143 = v32;
    if ((v31 + 1) < v30)
    {
      v144 = v31;
      v145 = v30;
      v35 = *v162;
      v36 = *(v161 + 72);
      a4 = *v162 + v36 * (v31 + 1);
      v37 = *(v161 + 16);
      v38 = v163;
      v37(v141, a4, v163, v29);
      v157 = v36;
      v138 = v35;
      v39 = v35 + v36 * v144;
      v40 = v139;
      v152 = v37;
      (v37)(v139, v39, v38);
      v41 = v141;
      LODWORD(v154) = v33(v141, v40);
      if (v7)
      {
        v133 = *v159;
        (*v159)(v40, v38);
        v133(v41, v38);
        goto LABEL_117;
      }

      v164 = 0;
      v42 = *v159;
      (*v159)(v40, v38);
      v150 = v42;
      (v42)(v41, v38);
      v136 = v145 - 1;
      v153 = v145 - 2;
      v43 = v144;
      a5 = v156;
      v44 = v157;
      v45 = v138 + v157 * (v144 + 2);
      v46 = v140;
      while (v153 != v43)
      {
        v47 = v163;
        v48 = v152;
        (v152)(v46, v45, v163);
        v49 = a5;
        v50 = v151;
        (v48)(v151, a4, v47);
        v51 = v49;
        v52 = v164;
        v53 = v158(v46, v50);
        v164 = v52;
        if (v52)
        {
          v131 = v150;
          (v150)(v50, v47);
          v131(v46, v47);
LABEL_117:

          return;
        }

        v54 = v53;
        v55 = v150;
        (v150)(v50, v47);
        v55(v46, v47);
        ++v43;
        v44 = v157;
        v45 += v157;
        a4 += v157;
        a5 = v51;
        if ((v154 ^ v54))
        {
          v56 = v43 + 1;
          goto LABEL_12;
        }
      }

      v43 = v136;
      v56 = v145;
LABEL_12:
      v34 = v144;
      if (v154)
      {
        if (v56 < v144)
        {
          goto LABEL_141;
        }

        v32 = v163;
        if (v144 <= v43)
        {
          a4 = v44 * (v56 - 1);
          v57 = v56;
          v58 = v56 * v44;
          v145 = v57;
          v59 = v57;
          v60 = v144;
          v61 = v144 * v44;
          do
          {
            if (v60 != --v59)
            {
              v63 = *v162;
              if (!*v162)
              {
                goto LABEL_145;
              }

              v64 = *v155;
              (*v155)(v146, v63 + v61, v163);
              if (v61 < a4 || v63 + v61 >= (v63 + v58))
              {
                v62 = v163;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v62 = v163;
                if (v61 != a4)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v64((v63 + a4), v146, v62);
              a5 = v156;
              v44 = v157;
              v32 = v62;
            }

            ++v60;
            a4 -= v44;
            v58 -= v44;
            v61 += v44;
          }

          while (v60 < v59);
          v7 = v164;
          v33 = v158;
          v34 = v144;
          v56 = v145;
        }

        else
        {
          v7 = v164;
          v33 = v158;
        }
      }

      else
      {
        v32 = v163;
        v7 = v164;
        v33 = v158;
      }
    }

    else
    {
      v56 = (v31 + 1);
      v32 = v163;
    }

    v65 = v162[1];
    if (v56 < v65)
    {
      if (__OFSUB__(v56, v34))
      {
        goto LABEL_137;
      }

      if (v56 - v34 < v137)
      {
        if (__OFADD__(v34, v137))
        {
          __break(1u);
        }

        else
        {
          v145 = v56;
          if (&v34[v137] >= v65)
          {
            v66 = v65;
          }

          else
          {
            v66 = &v34[v137];
          }

          if (v66 >= v34)
          {
            if (v145 == v66)
            {
              v56 = v145;
              goto LABEL_38;
            }

            v164 = v7;
            v113 = *v162;
            v114 = *(v161 + 72);
            v157 = *(v161 + 16);
            v115 = (v113 + v114 * (v145 - 1));
            v153 = -v114;
            v154 = v113;
            v144 = v34;
            v116 = &v34[-v145];
            v135 = v114;
            a4 = v113 + v145 * v114;
            v152 = v66;
            while (1)
            {
              v136 = a4;
              v138 = v116;
              v150 = v115;
              while (1)
              {
                v117 = v147;
                v118 = v157;
                (v157)(v147, a4, v32, v29);
                v119 = v148;
                v118(v148, v115, v32);
                v120 = v164;
                v121 = v158(v117, v119);
                v164 = v120;
                if (v120)
                {
                  v132 = *v159;
                  (*v159)(v119, v32);
                  v132(v117, v32);
                  goto LABEL_117;
                }

                v122 = v121;
                v123 = *v159;
                (*v159)(v119, v32);
                v123(v117, v32);
                if ((v122 & 1) == 0)
                {
                  break;
                }

                if (!v154)
                {
                  goto LABEL_143;
                }

                v124 = *v155;
                v125 = v149;
                v32 = v163;
                (*v155)(v149, a4, v163);
                swift_arrayInitWithTakeFrontToBack();
                v124(v115, v125, v32);
                v115 += v153;
                a4 += v153;
                v126 = __CFADD__(v116++, 1);
                a5 = v156;
                if (v126)
                {
                  goto LABEL_101;
                }
              }

              a5 = v156;
              v32 = v163;
LABEL_101:
              v115 = &v150[v135];
              v116 = (v138 - 1);
              a4 = v136 + v135;
              v56 = v152;
              if (++v145 == v152)
              {
                v33 = v158;
                v7 = v164;
                v34 = v144;
                goto LABEL_38;
              }
            }
          }
        }

        __break(1u);
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
        goto LABEL_144;
      }
    }

LABEL_38:
    v32 = v143;
    if (v56 < v34)
    {
      goto LABEL_136;
    }

    a4 = v33;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_10008B8B8(0, *(v32 + 2) + 1, 1, v32);
    }

    v68 = *(v32 + 2);
    v67 = *(v32 + 3);
    v69 = v68 + 1;
    if (v68 >= v67 >> 1)
    {
      v32 = sub_10008B8B8((v67 > 1), v68 + 1, 1, v32);
    }

    *(v32 + 2) = v69;
    v70 = &v32[16 * v68];
    *(v70 + 4) = v34;
    *(v70 + 5) = v56;
    v152 = v56;
    v71 = *v142;
    if (!*v142)
    {
      goto LABEL_146;
    }

    if (v68)
    {
      break;
    }

    a5 = v156;
    v33 = a4;
LABEL_90:
    v30 = v162[1];
    v31 = v152;
    if (v152 >= v30)
    {
      goto LABEL_104;
    }
  }

  a5 = v156;
  v33 = a4;
  while (1)
  {
    a4 = v69 - 1;
    if (v69 >= 4)
    {
      v76 = &v32[16 * v69 + 32];
      v77 = *(v76 - 64);
      v78 = *(v76 - 56);
      v82 = __OFSUB__(v78, v77);
      v79 = v78 - v77;
      if (v82)
      {
        goto LABEL_123;
      }

      v81 = *(v76 - 48);
      v80 = *(v76 - 40);
      v82 = __OFSUB__(v80, v81);
      v74 = v80 - v81;
      v75 = v82;
      if (v82)
      {
        goto LABEL_124;
      }

      v83 = &v32[16 * v69];
      v85 = *v83;
      v84 = *(v83 + 1);
      v82 = __OFSUB__(v84, v85);
      v86 = v84 - v85;
      if (v82)
      {
        goto LABEL_126;
      }

      v82 = __OFADD__(v74, v86);
      v87 = v74 + v86;
      if (v82)
      {
        goto LABEL_129;
      }

      if (v87 >= v79)
      {
        v105 = &v32[16 * a4 + 32];
        v107 = *v105;
        v106 = *(v105 + 1);
        v82 = __OFSUB__(v106, v107);
        v108 = v106 - v107;
        if (v82)
        {
          goto LABEL_135;
        }

        if (v74 < v108)
        {
          a4 = v69 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

    if (v69 == 3)
    {
      v72 = *(v32 + 4);
      v73 = *(v32 + 5);
      v82 = __OFSUB__(v73, v72);
      v74 = v73 - v72;
      v75 = v82;
LABEL_59:
      if (v75)
      {
        goto LABEL_125;
      }

      v88 = &v32[16 * v69];
      v90 = *v88;
      v89 = *(v88 + 1);
      v91 = __OFSUB__(v89, v90);
      v92 = v89 - v90;
      v93 = v91;
      if (v91)
      {
        goto LABEL_128;
      }

      v94 = &v32[16 * a4 + 32];
      v96 = *v94;
      v95 = *(v94 + 1);
      v82 = __OFSUB__(v95, v96);
      v97 = v95 - v96;
      if (v82)
      {
        goto LABEL_131;
      }

      if (__OFADD__(v92, v97))
      {
        goto LABEL_132;
      }

      if (v92 + v97 >= v74)
      {
        if (v74 < v97)
        {
          a4 = v69 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_73;
    }

    v98 = &v32[16 * v69];
    v100 = *v98;
    v99 = *(v98 + 1);
    v82 = __OFSUB__(v99, v100);
    v92 = v99 - v100;
    v93 = v82;
LABEL_73:
    if (v93)
    {
      goto LABEL_127;
    }

    v101 = &v32[16 * a4];
    v103 = *(v101 + 4);
    v102 = *(v101 + 5);
    v82 = __OFSUB__(v102, v103);
    v104 = v102 - v103;
    if (v82)
    {
      goto LABEL_130;
    }

    if (v104 < v92)
    {
      goto LABEL_90;
    }

LABEL_80:
    v109 = a4 - 1;
    if (a4 - 1 >= v69)
    {
      break;
    }

    if (!*v162)
    {
      goto LABEL_142;
    }

    v110 = *&v32[16 * v109 + 32];
    v111 = *&v32[16 * a4 + 40];
    sub_1004CE9CC((*v162 + *(v161 + 72) * v110), (*v162 + *(v161 + 72) * *&v32[16 * a4 + 32]), (*v162 + *(v161 + 72) * v111), v71, v33, a5);
    if (v7)
    {
      goto LABEL_117;
    }

    if (v111 < v110)
    {
      goto LABEL_121;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_10025EFD4(v32);
    }

    if (v109 >= *(v32 + 2))
    {
      goto LABEL_122;
    }

    v112 = &v32[16 * v109];
    *(v112 + 4) = v110;
    *(v112 + 5) = v111;
    v165 = v32;
    sub_10025EF48(a4);
    v32 = v165;
    v69 = *(v165 + 2);
    if (v69 <= 1)
    {
      goto LABEL_90;
    }
  }

  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
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
  v32 = sub_10025EFD4(v32);
LABEL_106:
  v165 = v32;
  v127 = *(v32 + 2);
  if (v127 < 2)
  {
    goto LABEL_117;
  }

  while (*v162)
  {
    v128 = *&v32[16 * v127];
    v129 = *&v32[16 * v127 + 24];
    sub_1004CE9CC((*v162 + *(v161 + 72) * v128), (*v162 + *(v161 + 72) * *&v32[16 * v127 + 16]), (*v162 + *(v161 + 72) * v129), a4, v33, a5);
    if (v7)
    {
      goto LABEL_117;
    }

    if (v129 < v128)
    {
      goto LABEL_133;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_10025EFD4(v32);
    }

    if (v127 - 2 >= *(v32 + 2))
    {
      goto LABEL_134;
    }

    v130 = &v32[16 * v127];
    *v130 = v128;
    *(v130 + 1) = v129;
    v165 = v32;
    sub_10025EF48(v127 - 1);
    v32 = v165;
    v127 = *(v165 + 2);
    if (v127 <= 1)
    {
      goto LABEL_117;
    }
  }

LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
}

void sub_1004CD2D0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_107:
    v4 = v7;
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_146;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_109:
      v113 = v4;
      v92 = *(v4 + 2);
      if (v92 >= 2)
      {
        while (*a3)
        {
          v93 = *&v4[16 * v92];
          v94 = *&v4[16 * v92 + 24];
          sub_1004CF0C4((*a3 + 8 * v93), (*a3 + 8 * *&v4[16 * v92 + 16]), (*a3 + 8 * v94), v7);
          if (v108)
          {
            goto LABEL_117;
          }

          if (v94 < v93)
          {
            goto LABEL_133;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = sub_10025EFD4(v4);
          }

          if (v92 - 2 >= *(v4 + 2))
          {
            goto LABEL_134;
          }

          v95 = &v4[16 * v92];
          *v95 = v93;
          *(v95 + 1) = v94;
          v113 = v4;
          sub_10025EF48(v92 - 1);
          v4 = v113;
          v92 = *(v113 + 2);
          if (v92 <= 1)
          {
            goto LABEL_117;
          }
        }

        goto LABEL_144;
      }

LABEL_117:

      return;
    }

LABEL_140:
    v4 = sub_10025EFD4(v4);
    goto LABEL_109;
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  while (2)
  {
    v8 = v6;
    v104 = v7;
    if (v6 + 1 >= v5)
    {
      ++v6;
      goto LABEL_29;
    }

    v106 = v5;
    v9 = *a3;
    v112 = *(*a3 + 8 * (v6 + 1));
    v10 = v6;
    v111 = *(v9 + 8 * v6);
    v11 = v111;
    v12 = v112;
    v13 = v11;
    v109 = sub_1004C12AC(&v112, &v111);
    if (v108)
    {

      return;
    }

    v14 = v10 + 2;
    v97 = v10;
    v102 = 8 * v10;
    v4 = (v9 + 8 * v10 + 16);
    while (1)
    {
      v6 = v106;
      v7 = v104;
      if (v106 == v14)
      {
        break;
      }

      v18 = *v4;
      v19 = (*v4 + OBJC_IVAR____TtC6FindMy12FMAnnotation_title);
      if (v19[1])
      {
        v20 = *v19;
        v21 = v19[1];
      }

      else
      {
        v20 = 0;
        v21 = 0xE000000000000000;
      }

      v22 = *(v4 - 1);
      v23 = &v22[OBJC_IVAR____TtC6FindMy12FMAnnotation_title];
      if (*&v22[OBJC_IVAR____TtC6FindMy12FMAnnotation_title + 8])
      {
        v24 = *(v23 + 1);
        if (v20 != *v23)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v24 = 0xE000000000000000;
        if (v20)
        {
          goto LABEL_7;
        }
      }

      if (v21 == v24)
      {
        v15 = 0;
        goto LABEL_8;
      }

LABEL_7:
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
LABEL_8:

      v16 = v18;
      v17 = v22;

      ++v14;
      v4 += 8;
      if ((v109 ^ v15))
      {
        v6 = v14 - 1;
        v7 = v104;
        break;
      }
    }

    v8 = v97;
    v25 = v102;
    if ((v109 & 1) == 0)
    {
      goto LABEL_29;
    }

    if (v6 < v97)
    {
LABEL_139:
      __break(1u);
      goto LABEL_140;
    }

    if (v97 < v6)
    {
      v26 = 8 * v6 - 8;
      v27 = v6;
      v28 = v97;
      do
      {
        if (v28 != --v27)
        {
          v29 = *a3;
          if (!*a3)
          {
            goto LABEL_143;
          }

          v30 = *(v29 + v25);
          *(v29 + v25) = *(v29 + v26);
          *(v29 + v26) = v30;
        }

        ++v28;
        v26 -= 8;
        v25 += 8;
      }

      while (v28 < v27);
    }

LABEL_29:
    v31 = a3[1];
    if (v6 >= v31)
    {
      goto LABEL_55;
    }

    if (__OFSUB__(v6, v8))
    {
      goto LABEL_136;
    }

    if (v6 - v8 >= a4)
    {
LABEL_55:
      if (v6 < v8)
      {
        goto LABEL_135;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_10008B8B8(0, *(v7 + 2) + 1, 1, v7);
      }

      v47 = *(v7 + 2);
      v46 = *(v7 + 3);
      v48 = v47 + 1;
      if (v47 >= v46 >> 1)
      {
        v7 = sub_10008B8B8((v46 > 1), v47 + 1, 1, v7);
      }

      *(v7 + 2) = v48;
      v49 = &v7[16 * v47];
      *(v49 + 4) = v8;
      *(v49 + 5) = v6;
      v4 = *a1;
      if (!*a1)
      {
        goto LABEL_145;
      }

      if (!v47)
      {
LABEL_3:
        v5 = a3[1];
        if (v6 >= v5)
        {
          goto LABEL_107;
        }

        continue;
      }

      while (1)
      {
        v50 = v48 - 1;
        if (v48 >= 4)
        {
          break;
        }

        if (v48 == 3)
        {
          v51 = *(v7 + 4);
          v52 = *(v7 + 5);
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_75:
          if (v54)
          {
            goto LABEL_124;
          }

          v67 = &v7[16 * v48];
          v69 = *v67;
          v68 = *(v67 + 1);
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_127;
          }

          v73 = &v7[16 * v50 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_130;
          }

          if (__OFADD__(v71, v76))
          {
            goto LABEL_131;
          }

          if (v71 + v76 >= v53)
          {
            if (v53 < v76)
            {
              v50 = v48 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v77 = &v7[16 * v48];
        v79 = *v77;
        v78 = *(v77 + 1);
        v61 = __OFSUB__(v78, v79);
        v71 = v78 - v79;
        v72 = v61;
LABEL_89:
        if (v72)
        {
          goto LABEL_126;
        }

        v80 = &v7[16 * v50];
        v82 = *(v80 + 4);
        v81 = *(v80 + 5);
        v61 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v61)
        {
          goto LABEL_129;
        }

        if (v83 < v71)
        {
          goto LABEL_3;
        }

LABEL_96:
        v88 = v50 - 1;
        if (v50 - 1 >= v48)
        {
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
          goto LABEL_138;
        }

        if (!*a3)
        {
          goto LABEL_142;
        }

        v89 = *&v7[16 * v88 + 32];
        v90 = *&v7[16 * v50 + 40];
        sub_1004CF0C4((*a3 + 8 * v89), (*a3 + 8 * *&v7[16 * v50 + 32]), (*a3 + 8 * v90), v4);
        if (v108)
        {
          goto LABEL_117;
        }

        if (v90 < v89)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_10025EFD4(v7);
        }

        if (v88 >= *(v7 + 2))
        {
          goto LABEL_121;
        }

        v91 = &v7[16 * v88];
        *(v91 + 4) = v89;
        *(v91 + 5) = v90;
        v113 = v7;
        sub_10025EF48(v50);
        v7 = v113;
        v48 = *(v113 + 2);
        if (v48 <= 1)
        {
          goto LABEL_3;
        }
      }

      v55 = &v7[16 * v48 + 32];
      v56 = *(v55 - 64);
      v57 = *(v55 - 56);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_122;
      }

      v60 = *(v55 - 48);
      v59 = *(v55 - 40);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_123;
      }

      v62 = &v7[16 * v48];
      v64 = *v62;
      v63 = *(v62 + 1);
      v61 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v61)
      {
        goto LABEL_125;
      }

      v61 = __OFADD__(v53, v65);
      v66 = v53 + v65;
      if (v61)
      {
        goto LABEL_128;
      }

      if (v66 >= v58)
      {
        v84 = &v7[16 * v50 + 32];
        v86 = *v84;
        v85 = *(v84 + 1);
        v61 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v61)
        {
          goto LABEL_132;
        }

        if (v53 < v87)
        {
          v50 = v48 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

    break;
  }

  if (__OFADD__(v8, a4))
  {
    goto LABEL_137;
  }

  if (v8 + a4 < v31)
  {
    v31 = v8 + a4;
  }

  if (v31 < v8)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  if (v6 == v31)
  {
    goto LABEL_55;
  }

  v100 = v31;
  v110 = *a3;
  v32 = *a3 + 8 * v6 - 8;
  v98 = v8;
  v33 = v8 - v6;
  while (2)
  {
    v107 = v6;
    v36 = *(v110 + 8 * v6);
    v101 = v33;
    v103 = v32;
LABEL_41:
    if (*&v36[OBJC_IVAR____TtC6FindMy12FMAnnotation_title + 8])
    {
      v37 = *&v36[OBJC_IVAR____TtC6FindMy12FMAnnotation_title];
      v4 = *&v36[OBJC_IVAR____TtC6FindMy12FMAnnotation_title + 8];
    }

    else
    {
      v37 = 0;
      v4 = 0xE000000000000000;
    }

    v38 = *v32;
    v39 = (*v32 + OBJC_IVAR____TtC6FindMy12FMAnnotation_title);
    if (v39[1])
    {
      v40 = v39[1];
      if (v37 != *v39)
      {
        break;
      }
    }

    else
    {
      v40 = 0xE000000000000000;
      if (v37)
      {
        break;
      }
    }

    if (v4 == v40)
    {

      v34 = v36;
      v35 = v38;

LABEL_39:
      v6 = v107 + 1;
      v32 = v103 + 8;
      v33 = v101 - 1;
      if (v107 + 1 == v100)
      {
        v7 = v104;
        v6 = v100;
        v8 = v98;
        goto LABEL_55;
      }

      continue;
    }

    break;
  }

  v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v42 = v36;
  v43 = v38;

  if ((v41 & 1) == 0)
  {
    goto LABEL_39;
  }

  if (v110)
  {
    v44 = *v32;
    v36 = *(v32 + 8);
    *v32 = v36;
    *(v32 + 8) = v44;
    v32 -= 8;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_39;
    }

    goto LABEL_41;
  }

  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
}