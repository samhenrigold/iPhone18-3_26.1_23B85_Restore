void sub_10004DBEC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = static os_log_type_t.default.getter();
  v9 = [objc_opt_self() attachHandle];
  if (v9)
  {
    v10 = v9;
    os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v9, "Did choose add device.", 22, 2, _swiftEmptyArrayStorage);

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      if ([Strong respondsToSelector:"attachmentsAlertDidSelectOption:"])
      {
        [v12 attachmentsAlertDidSelectOption:a2];
      }

      swift_unknownObjectRelease();
    }

    v13 = swift_unknownObjectWeakLoadStrong();
    if (v13)
    {
      v14 = v13;
      v15 = swift_allocObject();
      v15[2] = a1;
      v15[3] = a3;
      v15[4] = a4;
      v18[4] = sub_100053270;
      v18[5] = v15;
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 1107296256;
      v18[2] = sub_10004E610;
      v18[3] = &unk_1000E0B00;
      v16 = _Block_copy(v18);
      swift_unknownObjectRetain();
      v17 = a3;

      [v14 attachmentsAlert:a2 needsDeviceDiagnosticsController:v16];
      swift_unknownObjectRelease();
      _Block_release(v16);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10004DDB4(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = __chkstk_darwin(v9);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v47 = v6;
    v48 = a3;
    v45 = v11;
    v46 = v10;
    v14 = a1;
    v15 = [v14 additionalDeviceCandidates];
    sub_1000497E4(0, &qword_1001098C8, FBKGroupedDevice_ptr);
    sub_10005327C();
    static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    v17 = objc_allocWithZone(FBADevicePickingNavigationController);
    v18 = v14;
    isa = Set._bridgeToObjectiveC()().super.isa;

    v53 = sub_10005331C;
    v54 = v16;
    aBlock = _NSConcreteStackBlock;
    v50 = 1107296256;
    v51 = sub_100087F70;
    v52 = &unk_1000E0B50;
    v20 = _Block_copy(&aBlock);
    v21 = [v17 initWithDeviceChoices:isa allowsMultipleSelection:1 completion:v20];

    _Block_release(v20);

    if (v21)
    {
      v22 = v21;
      [v22 setModalPresentationStyle:2];
      type metadata accessor for FBAActionSheetController(0, v23);
      v24 = swift_dynamicCastClass();
      if (v24)
      {
        v25 = v24;
        swift_unknownObjectRetain();

        v26 = swift_allocObject();
        v27 = v48;
        *(v26 + 16) = v48;
        *(v26 + 24) = v22;
        v53 = sub_100053324;
        v54 = v26;
        aBlock = _NSConcreteStackBlock;
        v50 = 1107296256;
        v51 = sub_100088474;
        v52 = &unk_1000E0BF0;
        v28 = _Block_copy(&aBlock);
        v29 = v22;
        v30 = v27;

        [v25 dismissViewControllerAnimated:1 completion:v28];

        _Block_release(v28);
        swift_unknownObjectRelease();
      }

      else
      {
        sub_1000497E4(0, &qword_100109970, OS_dispatch_queue_ptr);
        v44 = static OS_dispatch_queue.main.getter();
        v37 = swift_allocObject();
        v38 = v48;
        *(v37 + 16) = v48;
        *(v37 + 24) = v22;
        v53 = sub_100053478;
        v54 = v37;
        aBlock = _NSConcreteStackBlock;
        v50 = 1107296256;
        v51 = sub_100088474;
        v52 = &unk_1000E0BA0;
        v39 = _Block_copy(&aBlock);
        v40 = v22;
        v41 = v38;

        static DispatchQoS.unspecified.getter();
        aBlock = _swiftEmptyArrayStorage;
        sub_100052C68(&qword_100108F80, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_100041AA0(&unk_100109980, &qword_1000C1B50);
        sub_1000456EC(&qword_100108F90, &unk_100109980, &qword_1000C1B50, &protocol conformance descriptor for [A]);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v42 = v44;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v39);

        (*(v47 + 8))(v8, v5);
        (*(v45 + 8))(v13, v46);
      }

      return;
    }

    v34 = static os_log_type_t.error.getter();
    v35 = [objc_opt_self() attachHandle];
    if (v35)
    {
      v36 = v35;
      os_log(_:dso:log:_:_:)(v34, &_mh_execute_header, v35, "Failed to create devices picker will not show devices pane", 58, 2, _swiftEmptyArrayStorage);

      return;
    }

LABEL_13:
    __break(1u);
    return;
  }

  v31 = static os_log_type_t.error.getter();
  v32 = [objc_opt_self() attachHandle];
  if (!v32)
  {
    __break(1u);
    goto LABEL_13;
  }

  v48 = v32;
  os_log(_:dso:log:_:_:)(v31, &_mh_execute_header, v32, "Failed to create devices controller will not show devices pane", 62, 2, _swiftEmptyArrayStorage);
  v33 = v48;
}

void sub_10004E41C(uint64_t a1, void *a2)
{
  v3 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000497E4(0, &qword_1001098C8, FBKGroupedDevice_ptr);
    sub_10005327C();
    Set.Iterator.init(_cocoa:)();
    v3 = v21;
    v4 = v22;
    v5 = v23;
    v6 = v24;
    v7 = v25;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 56);

    v6 = 0;
  }

  v18 = v5;
  v11 = (v5 + 64) >> 6;
  if (v3 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v12 = v6;
    v13 = v7;
    v14 = v6;
    if (!v7)
    {
      break;
    }

LABEL_12:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v3 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
LABEL_18:
      sub_100053364(v3);
      return;
    }

    while (1)
    {
      [a2 addDevice:{v16, v18, v19}];

      v6 = v14;
      v7 = v15;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v17 = __CocoaSet.Iterator.next()();
      if (v17)
      {
        v19 = v17;
        sub_1000497E4(0, &qword_1001098C8, FBKGroupedDevice_ptr);
        swift_dynamicCast();
        v16 = v20;
        v14 = v6;
        v15 = v7;
        if (v20)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      goto LABEL_18;
    }

    v13 = *(v4 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_10004E610(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

id sub_10004E67C(uint64_t a1, uint64_t a2, void *a3)
{
  v43 = a3;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v41 = *(v4 - 8);
  v42 = v4;
  __chkstk_darwin(v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v39 = *(v7 - 8);
  v40 = v7;
  __chkstk_darwin(v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PHPickerConfiguration();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v38 - v15;
  v17 = static os_log_type_t.default.getter();
  result = [objc_opt_self() attachHandle];
  if (result)
  {
    v19 = result;
    os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, result, "Did choose add photo or video.", 30, 2, _swiftEmptyArrayStorage);

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v21 = Strong;
      if ([Strong respondsToSelector:"attachmentsAlertDidSelectOption:"])
      {
        [v21 attachmentsAlertDidSelectOption:a2];
      }

      swift_unknownObjectRelease();
    }

    PHPickerConfiguration.init()();
    PHPickerConfiguration.selectionLimit.setter();
    sub_1000497E4(0, &qword_1001098B8, PHPickerViewController_ptr);
    (*(v11 + 16))(v14, v16, v10);
    v22 = PHPickerViewController.init(configuration:)();
    sub_100052C68(&qword_1001098C0, type metadata accessor for FBAAddAttachmentsController, &unk_1000C2C48);
    swift_unknownObjectRetain();
    PHPickerViewController.delegate.setter();
    (*(v11 + 8))(v16, v10);
    type metadata accessor for FBAActionSheetController(0, v23);
    v24 = swift_dynamicCastClass();
    if (v24)
    {
      v25 = v24;
      v26 = swift_allocObject();
      v27 = v43;
      *(v26 + 16) = v43;
      *(v26 + 24) = v22;
      v48 = sub_1000531C0;
      v49 = v26;
      aBlock = _NSConcreteStackBlock;
      v45 = 1107296256;
      v46 = sub_100088474;
      v47 = &unk_1000E0A60;
      v28 = _Block_copy(&aBlock);
      v29 = v27;
      v30 = v22;
      swift_unknownObjectRetain();

      [v25 dismissViewControllerAnimated:1 completion:v28];

      _Block_release(v28);
      return swift_unknownObjectRelease();
    }

    else
    {
      sub_1000497E4(0, &qword_100109970, OS_dispatch_queue_ptr);
      v31 = static OS_dispatch_queue.main.getter();
      v32 = swift_allocObject();
      v33 = v43;
      *(v32 + 16) = v43;
      *(v32 + 24) = v22;
      v48 = sub_1000531A8;
      v49 = v32;
      aBlock = _NSConcreteStackBlock;
      v45 = 1107296256;
      v46 = sub_100088474;
      v47 = &unk_1000E0A10;
      v34 = _Block_copy(&aBlock);
      v35 = v33;
      v36 = v22;

      static DispatchQoS.unspecified.getter();
      aBlock = _swiftEmptyArrayStorage;
      sub_100052C68(&qword_100108F80, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100041AA0(&unk_100109980, &qword_1000C1B50);
      sub_1000456EC(&qword_100108F90, &unk_100109980, &qword_1000C1B50, &protocol conformance descriptor for [A]);
      v37 = v42;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v34);

      (*(v41 + 8))(v6, v37);
      return (*(v39 + 8))(v9, v40);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10004EC70(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v34 = *(v9 - 8);
  v35 = v9;
  __chkstk_darwin(v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = static os_log_type_t.default.getter();
  result = [objc_opt_self() attachHandle];
  if (result)
  {
    v14 = result;
    os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, result, "Did choose add file.", 20, 2, _swiftEmptyArrayStorage);

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v16 = Strong;
      if ([Strong respondsToSelector:"attachmentsAlertDidSelectOption:"])
      {
        [v16 attachmentsAlertDidSelectOption:a2];
      }

      swift_unknownObjectRelease();
    }

    v33 = v6;
    sub_100041AA0(&qword_1001098B0, &unk_1000C2CB8);
    type metadata accessor for UTType();
    *(swift_allocObject() + 16) = xmmword_1000C29F0;
    static UTType.item.getter();
    v17 = objc_allocWithZone(UIDocumentPickerViewController);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v19 = [v17 initForOpeningContentTypes:isa asCopy:1];

    [v19 setDelegate:a2];
    [v19 setAllowsMultipleSelection:1];
    type metadata accessor for FBAActionSheetController(0, v20);
    v21 = swift_dynamicCastClass();
    if (v21)
    {
      v22 = v21;
      v23 = swift_allocObject();
      *(v23 + 16) = a3;
      *(v23 + 24) = v19;
      v40 = sub_100053168;
      v41 = v23;
      aBlock = _NSConcreteStackBlock;
      v37 = 1107296256;
      v38 = sub_100088474;
      v39 = &unk_1000E0970;
      v24 = _Block_copy(&aBlock);
      v25 = a3;
      v26 = v19;
      swift_unknownObjectRetain();

      [v22 dismissViewControllerAnimated:1 completion:v24];

      _Block_release(v24);
      return swift_unknownObjectRelease();
    }

    else
    {
      sub_1000497E4(0, &qword_100109970, OS_dispatch_queue_ptr);
      v27 = static OS_dispatch_queue.main.getter();
      v28 = swift_allocObject();
      *(v28 + 16) = a3;
      *(v28 + 24) = v19;
      v40 = sub_100053478;
      v41 = v28;
      aBlock = _NSConcreteStackBlock;
      v37 = 1107296256;
      v38 = sub_100088474;
      v39 = &unk_1000E0920;
      v29 = _Block_copy(&aBlock);
      v30 = a3;
      v31 = v19;

      static DispatchQoS.unspecified.getter();
      aBlock = _swiftEmptyArrayStorage;
      sub_100052C68(&qword_100108F80, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100041AA0(&unk_100109980, &qword_1000C1B50);
      sub_1000456EC(&qword_100108F90, &unk_100109980, &qword_1000C1B50, &protocol conformance descriptor for [A]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v29);

      (*(v33 + 8))(v8, v5);
      return (*(v34 + 8))(v11, v35);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10004F214(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a5;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v11 = *(v22 - 8);
  __chkstk_darwin(v22);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000497E4(0, &qword_100109970, OS_dispatch_queue_ptr);
  v14 = static OS_dispatch_queue.main.getter();
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  aBlock[4] = a4;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100088474;
  aBlock[3] = v21;
  v16 = _Block_copy(aBlock);
  v17 = a1;
  v18 = a2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100052C68(&qword_100108F80, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100041AA0(&unk_100109980, &qword_1000C1B50);
  sub_1000456EC(&qword_100108F90, &unk_100109980, &qword_1000C1B50, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v23 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v22);
}

char *sub_10004F504(void *a1, uint64_t a2, void *a3)
{
  v5 = static os_log_type_t.info.getter();
  result = [objc_opt_self() appHandle];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = result;
  os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, result, "Did tap Add Attachments. (using sheet)", 38, 2, _swiftEmptyArrayStorage);

  v8 = [objc_opt_self() mainBundle];
  v23._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0x415454415F444441;
  v9._object = 0xEE00544E454D4843;
  v10.value._countAndFlagsBits = 0x74536E6F6D6D6F43;
  v10.value._object = 0xED000073676E6972;
  v11._countAndFlagsBits = 0x6174744120646441;
  v11._object = 0xEE00746E656D6863;
  v23._countAndFlagsBits = 0;
  v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, v23);

  sub_10004D740(a1);
  v14 = v13;
  v16 = objc_allocWithZone(type metadata accessor for FBAActionSheetController(0, v15));
  v17 = sub_100069D74(v12._countAndFlagsBits, v12._object, 0, 0, v14);
  result = [a1 tableView];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v18 = result;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [v18 deselectRowAtIndexPath:isa animated:1];

  if (a3)
  {
    v20 = a3;
    v21 = [v17 popoverPresentationController];
    if (v21)
    {
      v22 = v21;
      [v20 bounds];
      [v22 setSourceRect:?];
      [v22 setSourceView:v20];
      [v22 setPermittedArrowDirections:2];
    }
  }

  return v17;
}

Class sub_10004F894(void *a1)
{
  sub_10004D740(a1);
  v2 = v1;
  v4 = type metadata accessor for FBAActionMenuController(0, v3);
  v5 = objc_allocWithZone(v4);
  v6 = OBJC_IVAR____TtC18Feedback_Assistant23FBAActionMenuController_actions;
  *&v5[OBJC_IVAR____TtC18Feedback_Assistant23FBAActionMenuController_actions] = _swiftEmptyArrayStorage;
  v7 = &v5[OBJC_IVAR____TtC18Feedback_Assistant23FBAActionMenuController_title];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &v5[OBJC_IVAR____TtC18Feedback_Assistant23FBAActionMenuController_subtitle];
  *v8 = 0;
  *(v8 + 1) = 0;
  swift_beginAccess();
  *&v5[v6] = v2;

  v12.receiver = v5;
  v12.super_class = v4;
  v9 = objc_msgSendSuper2(&v12, "init");
  v10 = sub_100069874();

  return v10;
}

id sub_10004F9F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FBAAddAttachmentsController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FBAAddAttachmentsController(uint64_t a1)
{
  result = qword_100109778;
  if (!qword_100109778)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10004FAD0(uint64_t a1)
{
  sub_10004FB6C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10004FB6C(uint64_t a1)
{
  if (!qword_100109788)
  {
    sub_100041B4C(&qword_100109790, &unk_1000C29E0);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100109788);
    }
  }
}

void sub_10004FBD0(void *a1, uint64_t a2)
{
  v5 = static os_log_type_t.default.getter();
  v6 = [objc_opt_self() attachHandle];
  if (v6)
  {
    v7 = v6;
    os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, v6, "Did pick media", 14, 2, _swiftEmptyArrayStorage);

    [a1 dismissViewControllerAnimated:1 completion:0];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      v10 = swift_allocObject();
      *(v10 + 16) = a2;
      v12[4] = sub_100052938;
      v12[5] = v10;
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 1107296256;
      v12[2] = sub_10004E610;
      v12[3] = &unk_1000E05D8;
      v11 = _Block_copy(v12);

      [v9 attachmentsAlert:v2 needsDeviceDiagnosticsController:v11];
      swift_unknownObjectRelease();
      _Block_release(v11);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10004FD58(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = *(a2 + 16);
    if (!v3)
    {
      return;
    }

    v5 = *(type metadata accessor for PHPickerResult() - 8);
    v6 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v7 = *(v5 + 72);
    v11 = a1;
    do
    {
      v8 = PHPickerResult.itemProvider.getter();
      [v11 addAttachmentWithItemProvider:v8];

      v6 += v7;
      --v3;
    }

    while (v3);
  }

  else
  {
    v9 = static os_log_type_t.error.getter();
    v10 = [objc_opt_self() attachHandle];
    if (!v10)
    {
      __break(1u);
      return;
    }

    v11 = v10;
    os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v10, "Failed to create devices controller. Cannot attach media", 56, 2, _swiftEmptyArrayStorage);
  }
}

void sub_10004FEC0(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    v21 = static os_log_type_t.error.getter();
    v22 = [objc_opt_self() attachHandle];
    if (v22)
    {
      v25 = v22;
      os_log(_:dso:log:_:_:)(v21, &_mh_execute_header, v22, "Failed to create devices controller. Cannot attach file.", 56, 2, _swiftEmptyArrayStorage);
      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
    return;
  }

  v25 = a1;
  v8 = static os_log_type_t.debug.getter();
  v9 = [objc_opt_self() attachHandle];
  if (!v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v9;
  sub_100041AA0(&unk_100109860, qword_1000C2DA0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1000C29F0;
  *(v11 + 56) = sub_100041AA0(&qword_100109898, &qword_1000C2CA8);
  *(v11 + 64) = sub_1000456EC(&unk_1001098A0, &qword_100109898, &qword_1000C2CA8, &protocol conformance descriptor for [A]);
  *(v11 + 32) = a2;

  os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v10, "Attaching files at %{public}@", 29, 2, v11);

  v12 = *(a2 + 16);
  if (v12)
  {
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v13 = v15;
    v16 = a2 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v17 = *(v14 + 56);
    do
    {
      v13(v7, v16, v4);
      URL._bridgeToObjectiveC()(v18);
      v20 = v19;
      [v25 moveFileFrom:v19];

      (*(v14 - 8))(v7, v4);
      v16 += v17;
      --v12;
    }

    while (v12);

    return;
  }

LABEL_9:
  v23 = v25;
}

void sub_100050218(void *a1, void *a2, void *a3, uint64_t a4)
{
  v61 = a4;
  v63 = a3;
  v64 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v60 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchTime();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v52 - v17;
  v62 = a2;
  v19 = [a2 presentedViewController];
  if (v19)
  {

    sub_1000497E4(0, &qword_100109970, OS_dispatch_queue_ptr);
    v57 = v6;
    v53 = v5;
    v58 = v9;
    v20 = v61;
    v54 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v21 = *(v13 + 8);
    v55 = v12;
    v56 = v21;
    v21(v16, v12);
    v22 = swift_allocObject();
    v23 = v59;
    v59 = v8;
    v24 = v63;
    v25 = v64;
    v22[2] = v23;
    v22[3] = v25;
    v26 = v62;
    v22[4] = v62;
    v22[5] = v24;
    v22[6] = v20;
    v69 = sub_1000529F8;
    v70 = v22;
    aBlock = _NSConcreteStackBlock;
    v66 = 1107296256;
    v67 = sub_100088474;
    v68 = &unk_1000E0678;
    v27 = _Block_copy(&aBlock);
    v28 = v25;
    v29 = v26;
    v30 = v24;
    swift_errorRetain();

    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_100052C68(&qword_100108F80, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100041AA0(&unk_100109980, &qword_1000C1B50);
    sub_1000456EC(&qword_100108F90, &unk_100109980, &qword_1000C1B50, &protocol conformance descriptor for [A]);
    v31 = v60;
    v32 = v53;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v33 = v54;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v27);

    (*(v57 + 8))(v31, v32);
    (*(v58 + 8))(v11, v59);
    v56(v18, v55);
  }

  else
  {
    v34 = objc_opt_self();
    v35 = v63;
    v36 = [v34 mainBundle];
    v71._object = 0x80000001000CAED0;
    v37._countAndFlagsBits = 0x545F44454C494146;
    v37._object = 0xEE0059504F435F4FLL;
    v38._object = 0x80000001000CAEB0;
    v71._countAndFlagsBits = 0xD000000000000044;
    v38._countAndFlagsBits = 0xD000000000000014;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v37, 0, v36, v38, v71);

    swift_getErrorValue();
    Error.localizedDescription.getter();
    v39 = String._bridgeToObjectiveC()();

    v40 = String._bridgeToObjectiveC()();

    v41 = [objc_opt_self() alertControllerWithTitle:v39 message:v40 preferredStyle:1];

    v42 = [v34 mainBundle];
    v72._object = 0xE000000000000000;
    v43._countAndFlagsBits = 19279;
    v43._object = 0xE200000000000000;
    v44._countAndFlagsBits = 0;
    v44._object = 0xE000000000000000;
    v72._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v43, 0, v42, v44, v72);

    v45 = swift_allocObject();
    v46 = v64;
    *(v45 + 16) = v35;
    *(v45 + 24) = v46;
    v47 = v46;
    v48 = v35;
    v49 = String._bridgeToObjectiveC()();

    v69 = sub_100052998;
    v70 = v45;
    aBlock = _NSConcreteStackBlock;
    v66 = 1107296256;
    v67 = sub_100040DDC;
    v68 = &unk_1000E0628;
    v50 = _Block_copy(&aBlock);

    v51 = [objc_opt_self() actionWithTitle:v49 style:0 handler:v50];
    _Block_release(v50);

    [v41 addAction:v51];
    [v62 presentViewController:v41 animated:1 completion:0];
  }
}

id sub_100050A18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100041AA0(&qword_100109880, &qword_1000C2C98);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - v8;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    sub_100045460(a3, v9, &qword_100109880, &qword_1000C2C98);
    v12 = type metadata accessor for IndexPath();
    v13 = *(v12 - 8);
    isa = 0;
    if ((*(v13 + 48))(v9, 1, v12) != 1)
    {
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      (*(v13 + 8))(v9, v12);
    }

    v15 = [v11 isReadyForDropSessionFromController:v3 tableView:a1 dropSessionDidUpdate:a2 withDestinationIndexPath:isa];

    if (v15)
    {
      v16 = [objc_allocWithZone(UITableViewDropProposal) initWithDropOperation:2 intent:0];
      swift_unknownObjectRelease();
      return v16;
    }

    swift_unknownObjectRelease();
  }

  return [objc_allocWithZone(UITableViewDropProposal) initWithDropOperation:1];
}

void sub_100050D74(void *a1)
{
  v2 = v1;
  v64 = type metadata accessor for DispatchWorkItemFlags();
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v61 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for DispatchQoS();
  v60 = *(v62 - 8);
  __chkstk_darwin(v62);
  v59 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100041AA0(&qword_100109790, &unk_1000C29E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v57 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v77 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v57 - v13;
  v15 = type metadata accessor for UTType();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UTType.item.getter();
  v76 = UTType.identifier.getter();
  v79 = v19;
  (*(v16 + 8))(v18, v15);
  v80 = dispatch_group_create();
  v58 = v2;
  sub_10004D470(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1000454C8(v8, &qword_100109790, &unk_1000C29E0);
    v20 = static os_log_type_t.error.getter();
    v21 = [objc_opt_self() attachHandle];
    if (v21)
    {
      v22 = v21;

      os_log(_:dso:log:_:_:)(v20, &_mh_execute_header, v22, "Failed to create temporary directory. Will not handle drop event", 64, 2, _swiftEmptyArrayStorage);

      return;
    }

    goto LABEL_17;
  }

  v71 = *(v10 + 32);
  v72 = v10 + 32;
  v71(v14, v8, v9);
  v73 = swift_allocObject();
  *(v73 + 16) = _swiftEmptyArrayStorage;
  v23 = [a1 items];
  sub_100041AA0(&qword_100109858, &unk_1000C2C80);
  v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v74 = v14;
  v75 = v9;
  v78 = v10;
  if (v24 >> 62)
  {
    v25 = _CocoaArrayWrapper.endIndex.getter();
    v26 = v80;
    if (!v25)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v26 = v80;
    if (!v25)
    {
      goto LABEL_13;
    }
  }

  if (v25 < 1)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  v27 = 0;
  v68 = v24 & 0xC000000000000001;
  v67 = v78 + 16;
  v66 = v11 + 7;
  v65 = &v84;
  v69 = v25;
  v70 = v24;
  do
  {
    if (v68)
    {
      v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v28 = *(v24 + 8 * v27 + 32);
      swift_unknownObjectRetain();
    }

    v29 = v78;
    v30 = v74;
    ++v27;
    dispatch_group_enter(v26);
    v31 = [v28 dragItem];
    v32 = [v31 itemProvider];

    v33 = String._bridgeToObjectiveC()();
    v34 = v77;
    v35 = v75;
    (*(v29 + 16))(v77, v30, v75);
    v36 = (*(v29 + 80) + 16) & ~*(v29 + 80);
    v37 = (v66 + v36) & 0xFFFFFFFFFFFFFFF8;
    v38 = swift_allocObject();
    v39 = v35;
    v26 = v80;
    v71((v38 + v36), v34, v39);
    *(v38 + v37) = v73;
    *(v38 + ((v37 + 15) & 0xFFFFFFFFFFFFFFF8)) = v26;
    v86 = sub_100052AD4;
    v87 = v38;
    aBlock = _NSConcreteStackBlock;
    v83 = 1107296256;
    v84 = sub_100052410;
    v85 = &unk_1000E06F0;
    v40 = _Block_copy(&aBlock);

    v41 = v26;

    v42 = [v32 loadFileRepresentationForTypeIdentifier:v33 completionHandler:v40];
    _Block_release(v40);
    swift_unknownObjectRelease();

    v24 = v70;
  }

  while (v69 != v27);
LABEL_13:

  dispatch_group_enter(v26);
  v43 = swift_allocObject();
  *(v43 + 16) = 0;
  v44 = v58;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v46 = Strong;
    v47 = swift_allocObject();
    *(v47 + 16) = v43;
    *(v47 + 24) = v26;
    v86 = sub_100052BA8;
    v87 = v47;
    aBlock = _NSConcreteStackBlock;
    v83 = 1107296256;
    v84 = sub_10004E610;
    v85 = &unk_1000E0768;
    v48 = _Block_copy(&aBlock);
    v49 = v26;

    [v46 attachmentsAlert:v44 needsDeviceDiagnosticsController:v48];
    swift_unknownObjectRelease();
    _Block_release(v48);
  }

  sub_1000497E4(0, &qword_100109970, OS_dispatch_queue_ptr);
  v80 = static OS_dispatch_queue.main.getter();
  v50 = swift_allocObject();
  v51 = v73;
  *(v50 + 16) = v43;
  *(v50 + 24) = v51;
  v86 = sub_100052BF0;
  v87 = v50;
  aBlock = _NSConcreteStackBlock;
  v83 = 1107296256;
  v84 = sub_100088474;
  v85 = &unk_1000E07B8;
  v52 = _Block_copy(&aBlock);

  v53 = v59;
  static DispatchQoS.unspecified.getter();
  v81 = _swiftEmptyArrayStorage;
  sub_100052C68(&qword_100108F80, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100041AA0(&unk_100109980, &qword_1000C1B50);
  sub_1000456EC(&qword_100108F90, &unk_100109980, &qword_1000C1B50, &protocol conformance descriptor for [A]);
  v54 = v61;
  v55 = v64;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v56 = v80;
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v52);

  (*(v63 + 8))(v54, v55);
  (*(v60 + 8))(v53, v62);
  (*(v78 + 8))(v74, v75);
}

void sub_100051768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, NSObject *a5)
{
  v96 = a4;
  v103 = a3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v101 = *(v8 - 8);
  v102 = v8;
  __chkstk_darwin(v8);
  v99 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for DispatchQoS();
  v98 = *(v100 - 8);
  __chkstk_darwin(v100);
  v97 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for URL();
  v113 = *(v11 - 8);
  v114 = v11;
  v12 = *(v113 + 64);
  v13 = __chkstk_darwin(v11);
  v95 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v105 = &v91 - v15;
  __chkstk_darwin(v14);
  v111 = &v91 - v16;
  v17 = sub_100041AA0(&qword_100109790, &unk_1000C29E0);
  v18 = __chkstk_darwin(v17);
  v104 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v94 = &v91 - v21;
  v22 = __chkstk_darwin(v20);
  v93 = &v91 - v23;
  v24 = __chkstk_darwin(v22);
  v106 = &v91 - v25;
  v26 = __chkstk_darwin(v24);
  v28 = &v91 - v27;
  __chkstk_darwin(v26);
  v30 = &v91 - v29;
  v31 = static os_log_type_t.default.getter();
  v112 = objc_opt_self();
  v32 = [v112 attachHandle];
  if (!v32)
  {
    __break(1u);
    goto LABEL_23;
  }

  v33 = v32;
  v109 = sub_100041AA0(&unk_100109860, qword_1000C2DA0);
  v34 = swift_allocObject();
  v107 = xmmword_1000C29F0;
  *(v34 + 16) = xmmword_1000C29F0;
  sub_100045460(a1, v30, &qword_100109790, &unk_1000C29E0);
  v35 = String.init<A>(describing:)();
  v37 = v36;
  *(v34 + 56) = &type metadata for String;
  v108 = sub_100047484();
  *(v34 + 64) = v108;
  *(v34 + 32) = v35;
  *(v34 + 40) = v37;
  os_log(_:dso:log:_:_:)(v31, &_mh_execute_header, v33, "Loaded file from drop event [%{public}@]", 40, 2, v34);

  if (!a2)
  {
    goto LABEL_5;
  }

  v38 = static os_log_type_t.default.getter();
  v39 = [v112 attachHandle];
  if (!v39)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  v40 = v39;
  v41 = swift_allocObject();
  *(v41 + 16) = v107;
  aBlock[0] = a2;
  swift_errorRetain();
  sub_100041AA0(&qword_100109878, &qword_1000C2C90);
  v42 = String.init<A>(describing:)();
  v43 = v108;
  *(v41 + 56) = &type metadata for String;
  *(v41 + 64) = v43;
  *(v41 + 32) = v42;
  *(v41 + 40) = v44;
  os_log(_:dso:log:_:_:)(v38, &_mh_execute_header, v40, "Error loading file from drop event: %{public}@", 46, 2, v41);

LABEL_5:
  v110 = a5;
  sub_100045460(a1, v28, &qword_100109790, &unk_1000C29E0);
  v46 = v113;
  v45 = v114;
  v47 = *(v113 + 48);
  if (v47(v28, 1, v114) == 1)
  {
    sub_1000454C8(v28, &qword_100109790, &unk_1000C29E0);
    v48 = static os_log_type_t.error.getter();
    v49 = [v112 attachHandle];
    if (v49)
    {
      v50 = v49;
      os_log(_:dso:log:_:_:)(v48, &_mh_execute_header, v49, "Loaded file from drop event is nil", 34, 2, _swiftEmptyArrayStorage);

      dispatch_group_leave(v110);
      return;
    }

    goto LABEL_24;
  }

  v92 = *(v46 + 32);
  v92(v111, v28, v45);
  v51 = URL.hasDirectoryPath.getter();
  v52 = objc_opt_self();
  URL._bridgeToObjectiveC()(v53);
  v55 = v54;
  URL._bridgeToObjectiveC()(v56);
  v58 = v57;
  if (v51)
  {
    v59 = [v52 copyAndReturn:v55 toDir:v57];

    v60 = v106;
    if (v59)
    {
      v61 = &v116;
LABEL_13:
      v62 = *(v61 - 32);
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v63 = 0;
      v65 = v113;
      v64 = v114;
      v66 = v104;
      goto LABEL_17;
    }

    v63 = 1;
    v65 = v113;
    v64 = v114;
    v66 = v104;
    v67 = &v116;
  }

  else
  {
    v59 = [v52 copyItem:v55 toDestinationDir:v57 zipped:0];

    v60 = v106;
    if (v59)
    {
      v61 = &v117;
      goto LABEL_13;
    }

    v63 = 1;
    v65 = v113;
    v64 = v114;
    v66 = v104;
    v67 = &v117;
  }

  v62 = *(v67 - 32);
LABEL_17:
  (*(v65 + 56))(v62, v63, 1, v64);
  sub_100052BF8(v62, v60);
  sub_100045460(v60, v66, &qword_100109790, &unk_1000C29E0);
  if (v47(v66, 1, v64) == 1)
  {
    sub_1000454C8(v66, &qword_100109790, &unk_1000C29E0);
    v68 = static os_log_type_t.error.getter();
    v69 = [v112 attachHandle];
    if (v69)
    {
      v70 = v69;
      v71 = swift_allocObject();
      *(v71 + 16) = v107;
      sub_100052C68(&qword_100109870, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v72 = v111;
      v73 = dispatch thunk of CustomStringConvertible.description.getter();
      v74 = v108;
      *(v71 + 56) = &type metadata for String;
      *(v71 + 64) = v74;
      *(v71 + 32) = v73;
      *(v71 + 40) = v75;
      os_log(_:dso:log:_:_:)(v68, &_mh_execute_header, v70, "Failed to copy drop event file [%{public}@]", 43, 2, v71);

      dispatch_group_leave(v110);
      sub_1000454C8(v60, &qword_100109790, &unk_1000C29E0);
      (*(v65 + 8))(v72, v64);
      return;
    }

    goto LABEL_25;
  }

  v76 = v105;
  v77 = v92;
  v92(v105, v66, v64);
  sub_1000497E4(0, &qword_100109970, OS_dispatch_queue_ptr);
  v114 = static OS_dispatch_queue.main.getter();
  v78 = v95;
  (*(v65 + 16))(v95, v76, v64);
  v79 = (*(v65 + 80) + 24) & ~*(v65 + 80);
  v80 = (v12 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = swift_allocObject();
  *(v81 + 16) = v96;
  v77(v81 + v79, v78, v64);
  v82 = v110;
  *(v81 + v80) = v110;
  aBlock[4] = sub_100052D88;
  aBlock[5] = v81;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100088474;
  aBlock[3] = &unk_1000E0808;
  v83 = _Block_copy(aBlock);

  v84 = v82;

  v85 = v97;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100052C68(&qword_100108F80, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  v86 = v64;
  sub_100041AA0(&unk_100109980, &qword_1000C1B50);
  sub_1000456EC(&qword_100108F90, &unk_100109980, &qword_1000C1B50, &protocol conformance descriptor for [A]);
  v87 = v99;
  v88 = v102;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v89 = v114;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v83);

  (*(v101 + 8))(v87, v88);
  (*(v98 + 8))(v85, v100);
  v90 = *(v65 + 8);
  v90(v105, v86);
  sub_1000454C8(v106, &qword_100109790, &unk_1000C29E0);
  v90(v111, v86);
}

void sub_100052274(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a2, v6);
  swift_beginAccess();
  v10 = *(a1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 16) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_1000775A0(0, v10[2] + 1, 1, v10);
    *(a1 + 16) = v10;
  }

  v13 = v10[2];
  v12 = v10[3];
  if (v13 >= v12 >> 1)
  {
    v10 = sub_1000775A0((v12 > 1), v13 + 1, 1, v10);
  }

  v10[2] = v13 + 1;
  (*(v7 + 32))(v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v13, v9, v6);
  *(a1 + 16) = v10;
  dispatch_group_leave(a3);
}

uint64_t sub_100052410(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_100041AA0(&qword_100109790, &unk_1000C29E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + 32);
  if (a2)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = type metadata accessor for URL();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  v12 = a3;
  v9(v8, a3);

  return sub_1000454C8(v8, &qword_100109790, &unk_1000C29E0);
}

void sub_100052564(void *a1, uint64_t a2, NSObject *a3)
{
  swift_beginAccess();
  v6 = *(a2 + 16);
  *(a2 + 16) = a1;
  v7 = a1;

  dispatch_group_leave(a3);
}

void sub_1000525C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v8 = *(a1 + 16);
  if (!v8)
  {
    v25 = static os_log_type_t.error.getter();
    v26 = [objc_opt_self() attachHandle];
    if (v26)
    {
      v27 = v26;
      os_log(_:dso:log:_:_:)(v25, &_mh_execute_header, v26, "Failed to lazy load attachment controller", 41, 2, _swiftEmptyArrayStorage);

      return;
    }

    goto LABEL_12;
  }

  v9 = v8;
  v10 = static os_log_type_t.info.getter();
  v11 = [objc_opt_self() attachHandle];
  if (!v11)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  v12 = v11;
  sub_100041AA0(&unk_100109860, qword_1000C2DA0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1000C29F0;
  swift_beginAccess();
  v14 = *(*(a2 + 16) + 16);
  *(v13 + 56) = &type metadata for Int;
  *(v13 + 64) = &protocol witness table for Int;
  *(v13 + 32) = v14;
  os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, v12, "Attaching [%lu] files from drop event", v28);

  swift_beginAccess();
  v15 = *(a2 + 16);
  v16 = *(v15 + 16);
  if (v16)
  {
    v19 = *(v5 + 16);
    v17 = v5 + 16;
    v18 = v19;
    v20 = v15 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
    v21 = *(v17 + 56);
    v28 = *(a2 + 16);

    do
    {
      v18(v7, v20, v4);
      URL._bridgeToObjectiveC()(v22);
      v24 = v23;
      (*(v17 - 8))(v7, v4);
      [v9 moveFileFrom:v24];

      v20 += v21;
      --v16;
    }

    while (v16);
  }

  else
  {
  }
}

uint64_t sub_100052900()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100052940(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100052958()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000529A8()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100052A28()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_100052AD4(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_100051768(a1, a2, v2 + v6, v8, v9);
}

uint64_t sub_100052BB0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100052BF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100041AA0(&qword_100109790, &unk_1000C29E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100052C68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100052CB0()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_100052D88()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_100052274(v3, v0 + v2, v4);
}

void sub_100052E18(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    v7[4] = sub_100053104;
    v7[5] = v5;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_10004E610;
    v7[3] = &unk_1000E0858;
    v6 = _Block_copy(v7);

    [v4 attachmentsAlert:v1 needsDeviceDiagnosticsController:v6];
    swift_unknownObjectRelease();
    _Block_release(v6);
  }
}

uint64_t sub_100052F20(void *a1)
{
  v2 = type metadata accessor for UTType();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v20 - v7;
  sub_1000497E4(0, &qword_100109888, UIImage_ptr);
  if ([a1 canLoadObjectsOfClass:swift_getObjCClassFromMetadata()])
  {
    return 1;
  }

  sub_100041AA0(&qword_100109890, &qword_1000C2CA0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1000C2530;
  static UTType.movie.getter();
  v11 = UTType.identifier.getter();
  v13 = v12;
  v14 = *(v3 + 8);
  v14(v8, v2);
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  static UTType.item.getter();
  v15 = UTType.identifier.getter();
  v17 = v16;
  v14(v6, v2);
  *(v10 + 48) = v15;
  *(v10 + 56) = v17;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v19 = [a1 hasItemsConformingToTypeIdentifiers:isa];

  return v19;
}

uint64_t sub_10005310C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10005321C(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 16));

  return _swift_deallocObject(v2, a2, 7);
}

unint64_t sub_10005327C()
{
  result = qword_1001098D0;
  if (!qword_1001098D0)
  {
    sub_1000497E4(255, &qword_1001098C8, FBKGroupedDevice_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001098D0);
  }

  return result;
}

uint64_t sub_1000532E4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005336C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100041AA0(&qword_1001098D8, qword_1000C2CC8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000534A8()
{
  v0 = type metadata accessor for Logger();
  sub_100046848(v0, qword_1001098F0);
  sub_1000466AC(v0, qword_1001098F0);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100053520@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URL();
  v16 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v6 + 16))
  {

    URL.init(fileURLWithPath:)();

    sub_100054080(0, v7);
    if ([swift_getObjCClassFromMetadata() platform] != 1)
    {
      v8._object = 0x80000001000CA0C0;
      v8._countAndFlagsBits = 0xD000000000000012;
      URL.appendPathComponent(_:)(v8);
    }

    (*(v16 + 32))(a1, v4, v2);
    return (*(v16 + 56))(a1, 0, 1, v2);
  }

  else
  {

    if (qword_100108DD0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000466AC(v10, qword_1001098F0);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Failed to find old library URL.", v13, 2u);
    }

    v14 = *(v16 + 56);

    return v14(a1, 1, 1, v2);
  }
}

void sub_1000537B8()
{
  v0 = sub_100041AA0(&qword_100109790, &unk_1000C29E0);
  __chkstk_darwin(v0 - 8);
  v2 = &v57 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v57 - v8;
  v10 = objc_opt_self();
  v11 = [v10 standardUserDefaults];
  v61 = "ssistant19FBAAppGroupMigrator";
  v12 = String._bridgeToObjectiveC()();
  v13 = [v11 BOOLForKey:v12];

  if (v13)
  {
    if (qword_100108DD0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000466AC(v14, qword_1001098F0);
    v61 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v61, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v61, v15, "App Group migration already done.", v16, 2u);
    }

    v17 = v61;

    return;
  }

  sub_100053520(v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_1000467E0(v2);
    if (qword_100108DD0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000466AC(v18, qword_1001098F0);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Old library directory could not be derived, stopping migration", v21, 2u);
    }

    return;
  }

  (*(v4 + 32))(v9, v2, v3);
  if (qword_100108DD0 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  v23 = sub_1000466AC(v22, qword_1001098F0);
  (*(v4 + 16))(v7, v9, v3);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.info.getter();
  v26 = os_log_type_enabled(v24, v25);
  v59 = v23;
  v60 = v10;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v62 = v28;
    *v27 = 136315138;
    v29 = URL.absoluteString.getter();
    v31 = v30;
    v58 = v4;
    v32 = *(v4 + 8);
    v32(v7, v3);
    v33 = sub_10008D954(v29, v31, &v62);
    v10 = v60;

    *(v27 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v24, v25, "Old Library directory: %s", v27, 0xCu);
    sub_1000466E4(v28);
    v34 = v32;
  }

  else
  {

    v34 = *(v4 + 8);
    v34(v7, v3);
  }

  v35 = URL.checkResourceIsReachable()();
  if (v36)
  {
    goto LABEL_21;
  }

  if (v35)
  {
    v45 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v46);
    v48 = v47;
    v62 = 0;
    v49 = [v45 removeItemAtURL:v47 error:&v62];

    if (!v49)
    {
      v56 = v62;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v10 = v60;
LABEL_21:
      swift_errorRetain();
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v58 = v34;
        v41 = v40;
        v62 = v40;
        *v39 = 136315138;
        swift_getErrorValue();
        v42 = Error.localizedDescription.getter();
        v44 = sub_10008D954(v42, v43, &v62);

        *(v39 + 4) = v44;
        v10 = v60;
        _os_log_impl(&_mh_execute_header, v37, v38, "Failed to remove old library directory. %s", v39, 0xCu);
        sub_1000466E4(v41);
        v34 = v58;
      }

      else
      {
      }

      goto LABEL_27;
    }

    v50 = v62;
    v10 = v60;
  }

LABEL_27:
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&_mh_execute_header, v51, v52, "Removed old library directory.", v53, 2u);
    v10 = v60;
  }

  v54 = [v10 standardUserDefaults];
  v55 = String._bridgeToObjectiveC()();
  [v54 setBool:1 forKey:v55];

  v34(v9, v3);
}

id sub_100054024(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for FBAAppGroupMigrator(a1, a2);
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_100054080(uint64_t a1, uint64_t a2)
{
  result = qword_100109930;
  if (!qword_100109930)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100109930);
  }

  return result;
}

void *sub_1000540CC(void *(*a1)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3)
{
  result = _swiftEmptyArrayStorage;
  v15 = _swiftEmptyArrayStorage;
  v6 = *(a3 + 16);
  if (v6)
  {
    v8 = 0;
    do
    {
      v13 = result;
      for (i = v8; ; ++i)
      {
        if (i >= v6)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return result;
        }

        v10 = type metadata accessor for FBKFeedbackUpload.BugSession();
        v12 = *(v10 - 8);
        result = (v10 - 8);
        v11 = v12;
        v8 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_17;
        }

        result = a1(&v14, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i);
        if (v3)
        {

          return v13;
        }

        if (v14)
        {
          break;
        }

        if (v8 == v6)
        {
          return v13;
        }
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = v15;
    }

    while (v8 != v6);
  }

  return result;
}

uint64_t sub_10005424C()
{
  v0 = type metadata accessor for Logger();
  sub_100046848(v0, qword_100109940);
  sub_1000466AC(v0, qword_100109940);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  return Logger.init(subsystem:category:)();
}

void sub_1000542C0()
{
  v1 = v0;
  if (qword_100108DD8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000466AC(v2, qword_100109940);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Looking up uploads for tracking", v5, 2u);
  }

  v6 = [v0 currentUser];
  if (v6)
  {
    v7 = v6;
    v8 = swift_allocObject();
    *(v8 + 16) = v0;
    aBlock[4] = sub_100057F84;
    aBlock[5] = v8;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100054930;
    aBlock[3] = &unk_1000E0DA8;
    v9 = _Block_copy(aBlock);
    v10 = v1;

    [v10 allUploadTasksWithUser:v7 completion:v9];
    _Block_release(v9);
  }

  else
  {
    oslog = Logger.logObject.getter();
    v11 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      aBlock[0] = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_10008D954(0xD00000000000001ELL, 0x80000001000CB3A0, aBlock);
      _os_log_impl(&_mh_execute_header, oslog, v11, "No user in %s", v12, 0xCu);
      sub_1000466E4(v13);
    }

    else
    {
    }
  }
}

void sub_100054578(uint64_t a1, void *a2)
{
  v3 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000497E4(0, &qword_100109958, FBKUploadTask_ptr);
    sub_100057CFC(&qword_100109960, &qword_100109958, FBKUploadTask_ptr);
    Set.Iterator.init(_cocoa:)();
    v3 = v31;
    v4 = v32;
    v5 = v33;
    v6 = v34;
    v7 = v35;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 56);

    v6 = 0;
  }

  v11 = (v5 + 64) >> 6;
  v12 = &selRef_boldSystemFontOfSize_;
  v28 = v3;
  while (v3 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (sub_1000497E4(0, &qword_100109958, FBKUploadTask_ptr), swift_dynamicCast(), v16 = v30, v29 = v7, !v30))
    {
LABEL_29:
      sub_100053364(v3);
      return;
    }

LABEL_19:
    v20 = [v16 v12[344]];
    if (v20 || (v20 = [v16 feedbackFollowup]) != 0)
    {
      v17 = v20;
      v21 = swift_dynamicCastObjCProtocolConditional();
      if (v21)
      {
        v22 = v21;
        v23 = [a2 uploadManager];
        if (v23)
        {
          v24 = v23;
          [v23 trackUploadIfNeeded:v22];
        }

        goto LABEL_9;
      }
    }

    if (qword_100108DD8 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_1000466AC(v25, qword_100109940);
    v17 = v16;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v13 = swift_slowAlloc();
      v14 = a2;
      v15 = swift_slowAlloc();
      *v13 = 138543362;
      *(v13 + 4) = v17;
      *v15 = v16;
      v16 = v17;
      _os_log_impl(&_mh_execute_header, v26, v27, "No filer form found in task %{public}@", v13, 0xCu);
      sub_10004BAB8(v15);
      a2 = v14;
      v3 = v28;

      v12 = &selRef_boldSystemFontOfSize_;

      v17 = v26;
    }

    else
    {
      v16 = v26;
    }

LABEL_9:
    v7 = v29;
  }

  v18 = v6;
  v19 = v7;
  if (v7)
  {
LABEL_15:
    v29 = (v19 - 1) & v19;
    v16 = *(*(v3 + 48) + ((v6 << 9) | (8 * __clz(__rbit64(v19)))));
    if (!v16)
    {
      goto LABEL_29;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v6 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_29;
    }

    v19 = *(v4 + 8 * v6);
    ++v18;
    if (v19)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_100054930(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_1000497E4(0, &qword_100109958, FBKUploadTask_ptr);
  sub_100057CFC(&qword_100109960, &qword_100109958, FBKUploadTask_ptr);
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v2(v3);
}

void sub_100054A28(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4, uint64_t a5, void *a6, uint64_t a7)
{
  v95 = a7;
  v98 = a6;
  v100 = a5;
  v101 = a4;
  v102 = a3;
  v105 = type metadata accessor for FBKFeedbackUpload();
  v104 = *(v105 - 8);
  v9 = __chkstk_darwin(v105);
  v97 = v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = v10;
  __chkstk_darwin(v9);
  v99 = v94 - v11;
  v103 = a1;
  v107 = FBKFeedbackUpload.feedbackID.getter();
  if ((a2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000497E4(0, &qword_100109990, FBKContentItem_ptr);
    sub_100057CFC(&qword_100109998, &qword_100109990, FBKContentItem_ptr);
    Set.Iterator.init(_cocoa:)();
    a2 = aBlock[9];
    v12 = aBlock[10];
    v13 = aBlock[11];
    v14 = aBlock[12];
    v15 = aBlock[13];
  }

  else
  {
    v16 = -1 << *(a2 + 32);
    v12 = a2 + 56;
    v13 = ~v16;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v15 = v18 & *(a2 + 56);

    v14 = 0;
  }

  v106 = v13;
  if (a2 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v19 = v14;
  v20 = v15;
  v21 = v14;
  if (!v15)
  {
    while (1)
    {
      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_59;
      }

      if (v21 >= ((v13 + 64) >> 6))
      {
        break;
      }

      v20 = *(v12 + 8 * v21);
      ++v19;
      if (v20)
      {
        goto LABEL_12;
      }
    }

LABEL_20:
    sub_100053364(a2);
    if (qword_100108DD8 != -1)
    {
      goto LABEL_60;
    }

    goto LABEL_21;
  }

LABEL_12:
  v22 = (v20 - 1) & v20;
  v23 = *(*(a2 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20)))));
  if (!v23)
  {
    goto LABEL_20;
  }

  while (1)
  {
    isa = v23;
    v25 = [(objc_class *)v23 remoteID];
    if (!v25)
    {
      __break(1u);
LABEL_62:
      __break(1u);
      return;
    }

    v26 = v25;
    v27 = [v25 integerValue];

    if (v27 == v107)
    {
      break;
    }

    v14 = v21;
    v15 = v22;
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_14:
    v24 = __CocoaSet.Iterator.next()();
    if (v24)
    {
      v109 = v24;
      sub_1000497E4(0, &qword_100109990, FBKContentItem_ptr);
      swift_dynamicCast();
      v23 = aBlock[0];
      v21 = v14;
      v22 = v15;
      if (aBlock[0])
      {
        continue;
      }
    }

    goto LABEL_20;
  }

  sub_100053364(a2);
  v32 = v102;
  if ((v102 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000497E4(0, &qword_100109958, FBKUploadTask_ptr);
    sub_100057CFC(&qword_100109960, &qword_100109958, FBKUploadTask_ptr);
    Set.Iterator.init(_cocoa:)();
    v32 = v109;
    v33 = v110;
    v34 = v111;
    v35 = v112;
    v36 = v113;
  }

  else
  {
    v37 = -1 << *(v102 + 32);
    v33 = (v102 + 56);
    v34 = ~v37;
    v38 = -v37;
    if (v38 < 64)
    {
      v39 = ~(-1 << v38);
    }

    else
    {
      v39 = -1;
    }

    v36 = v39 & *(v102 + 56);

    v35 = 0;
  }

  v94[1] = v34;
  v40 = &selRef_boldSystemFontOfSize_;
  v106 = v33;
  while (1)
  {
    v41 = v36;
    if (v32 < 0)
    {
      v45 = __CocoaSet.Iterator.next()();
      if (!v45 || (aBlock[6] = v45, sub_1000497E4(0, &qword_100109958, FBKUploadTask_ptr), swift_dynamicCast(), (v44 = aBlock[0]) == 0))
      {
LABEL_50:
        sub_100053364(v32);
        if (qword_100108DD8 != -1)
        {
          swift_once();
        }

        v58 = type metadata accessor for Logger();
        sub_1000466AC(v58, qword_100109940);
        v59 = v104;
        v60 = *(v104 + 16);
        v61 = v99;
        v62 = v105;
        v60(v99, v103, v105);
        v63 = Logger.logObject.getter();
        v64 = static os_log_type_t.default.getter();
        v65 = os_log_type_enabled(v63, v64);
        v107 = v60;
        if (v65)
        {
          v66 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          aBlock[0] = v67;
          *v66 = 136315138;
          sub_100057CB4(&qword_1001099A8, &type metadata accessor for FBKFeedbackUpload, &protocol conformance descriptor for FBKFeedbackUpload);
          v68 = dispatch thunk of CustomStringConvertible.description.getter();
          v69 = v61;
          v71 = v70;
          (*(v59 + 8))(v69, v62);
          v72 = sub_10008D954(v68, v71, aBlock);

          *(v66 + 4) = v72;
          _os_log_impl(&_mh_execute_header, v63, v64, "Will create upload task for framework upload %s", v66, 0xCu);
          sub_1000466E4(v67);
        }

        else
        {

          (*(v59 + 8))(v61, v62);
        }

        v29 = isa;
        v73 = v101;
        dispatch_group_enter(v101);
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v102 = Strong;
          v75 = swift_allocObject();
          *(v75 + 2) = v73;
          *(v75 + 3) = v29;
          *(v75 + 4) = v95;
          sub_1000497E4(0, &qword_1001099A0, NSNumber_ptr);
          v76 = v73;
          v106 = v29;

          v77 = v103;
          v78 = FBKFeedbackUpload.formResponseID.getter();
          isa = NSNumber.init(integerLiteral:)(v78).super.super.isa;
          v79 = v97;
          v80 = v105;
          v107(v97, v77, v105);
          v81 = v104;
          v82 = (*(v104 + 80) + 16) & ~*(v104 + 80);
          v83 = (v96 + v82 + 7) & 0xFFFFFFFFFFFFFFF8;
          v84 = (v83 + 23) & 0xFFFFFFFFFFFFFFF8;
          v85 = swift_allocObject();
          (*(v81 + 32))(v85 + v82, v79, v80);
          v86 = (v85 + v83);
          *v86 = sub_100057D94;
          v86[1] = v75;
          v87 = v102;
          *(v85 + v84) = v102;
          v88 = v98;
          *(v85 + ((v84 + 15) & 0xFFFFFFFFFFFFFFF8)) = v98;
          aBlock[4] = sub_100057E68;
          aBlock[5] = v85;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1000565DC;
          aBlock[3] = &unk_1000E0D58;
          v89 = _Block_copy(aBlock);

          v90 = v87;
          v91 = v88;

          v92 = isa;
          [v90 refreshFormResponseOnlyWithID:isa completion:v89];
          v93 = v89;
          v29 = v92;
          _Block_release(v93);
        }

        goto LABEL_23;
      }

      goto LABEL_41;
    }

    v42 = v35;
    v43 = v36;
    if (!v36)
    {
      break;
    }

LABEL_37:
    v36 = (v43 - 1) & v43;
    v44 = *(*(v32 + 48) + ((v35 << 9) | (8 * __clz(__rbit64(v43)))));
    if (!v44)
    {
      goto LABEL_50;
    }

LABEL_41:
    v46 = [v44 v40[342]];
    if (v46)
    {
      v47 = v36;
      v102 = v41;
      v48 = v32;

      v49 = v40;
      v50 = [v44 v40[342]];
      if (!v50)
      {
        goto LABEL_62;
      }

      v51 = v50;
      v52 = [v50 integerValue];

      v33 = v106;
      v53 = v52 == v107;
      v40 = v49;
      v32 = v48;
      v36 = v47;
      if (v53)
      {
        sub_100053364(v48);
        if (qword_100108DD8 != -1)
        {
          swift_once();
        }

        v54 = type metadata accessor for Logger();
        sub_1000466AC(v54, qword_100109940);
        v55 = Logger.logObject.getter();
        v56 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          *v57 = 134349056;
          *(v57 + 4) = v107;
          _os_log_impl(&_mh_execute_header, v55, v56, "Feedback ID %{public}ld already tracked locally", v57, 0xCu);
        }

        v29 = isa;
        goto LABEL_23;
      }
    }

    else
    {

      v33 = v106;
    }
  }

  while (1)
  {
    v35 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      break;
    }

    if (v35 >= ((v34 + 64) >> 6))
    {
      goto LABEL_50;
    }

    v43 = v33[v35].isa;
    ++v42;
    if (v43)
    {
      goto LABEL_37;
    }
  }

LABEL_59:
  __break(1u);
LABEL_60:
  swift_once();
LABEL_21:
  v28 = type metadata accessor for Logger();
  sub_1000466AC(v28, qword_100109940);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 134349056;
    *(v31 + 4) = v107;
    _os_log_impl(&_mh_execute_header, v29, v30, "Feedback ID %{public}ld does not belong to this user. Will not track upload", v31, 0xCu);
  }

LABEL_23:
}

void sub_1000555A0(void *a1, dispatch_group_t group, void *a3, uint64_t a4)
{
  if (a1)
  {
    v6 = a1;
    v7 = [v6 formResponse];
    [a3 setFormResponse:v7];

    swift_beginAccess();
    v8 = v6;
    sub_100078CDC(&v9, v8);
    swift_endAccess();

    dispatch_group_leave(group);
  }

  else
  {

    dispatch_group_leave(group);
  }
}

uint64_t sub_100055690(uint64_t a1, void *a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  v7 = *(a1 + 16);
  if ((v7 & 0xC000000000000001) != 0)
  {

    v8 = __CocoaSet.count.getter();

    if (!v8)
    {
      goto LABEL_14;
    }
  }

  else if (!*(v7 + 16))
  {
    goto LABEL_14;
  }

  v9 = [a2 mainQueueContext];
  if (v9)
  {
    v25[0] = 0;
    v10 = v9;
    v11 = [v9 save:v25];

    if (v11)
    {
      v12 = v25[0];
    }

    else
    {
      v13 = v25[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_100108DD8 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_1000466AC(v14, qword_100109940);
      swift_errorRetain();
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v25[0] = v24;
        *v17 = 136446210;
        swift_errorRetain();
        sub_100041AA0(&qword_100109968, &unk_1000C3080);
        v18 = String.init<A>(describing:)();
        v20 = sub_10008D954(v18, v19, v25);

        *(v17 + 4) = v20;
        _os_log_impl(&_mh_execute_header, v15, v16, "Failed to save after creating FBK upload tasks %{public}s", v17, 0xCu);
        sub_1000466E4(v24);
      }

      else
      {
      }
    }
  }

  swift_beginAccess();
  swift_beginAccess();

  sub_1000559AC(v21);
  swift_endAccess();
LABEL_14:
  swift_beginAccess();

  a4(v22);
}

void sub_1000559AC(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    sub_1000497E4(0, &qword_100109958, FBKUploadTask_ptr);
    sub_100057CFC(&qword_100109960, &qword_100109958, FBKUploadTask_ptr);
    Set.Iterator.init(_cocoa:)();
    v1 = v14[1];
    v2 = v14[2];
    v3 = v14[3];
    v4 = v14[4];
    v5 = v14[5];
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(a1 + 32);
    v2 = (a1 + 56);
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = (v8 & *(a1 + 56));
  }

  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
LABEL_18:
      sub_100053364(v1);
      return;
    }

    while (1)
    {
      sub_100078CDC(v14, v13);

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        sub_1000497E4(0, &qword_100109958, FBKUploadTask_ptr);
        swift_dynamicCast();
        v13 = v14[0];
        v11 = v4;
        v12 = v5;
        if (v14[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v11 = (v9 + 1);
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v10 = v2[v11];
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_100055C30(uint64_t a1, uint64_t a2)
{
  sub_1000497E4(0, &qword_100109958, FBKUploadTask_ptr);
  sub_100057CFC(&qword_100109960, &qword_100109958, FBKUploadTask_ptr);
  isa = Set._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

void sub_100055D94(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5, void *a6, uint64_t a7)
{
  v12 = type metadata accessor for FBKFeedbackUpload();
  v13 = *(v12 - 1);
  __chkstk_darwin(v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_6;
  }

  v12 = a1;
  [a6 prepareFilerFormForSubmission:v12];
  v16 = [v12 uploadTask];
  if (!v16)
  {
    __break(1u);
    return;
  }

  v15 = v16;
  v17 = [v12 ID];
  [v15 setTaskIdentifier:v17];

  [v15 setLocalSubmissionStage:2];
  v18 = FBKFeedbackUpload.bugSessions.getter();
  v19 = v18;
  v20 = *(v18 + 16);
  if (!v20)
  {

    v21 = _swiftEmptyArrayStorage;
    goto LABEL_11;
  }

  v21 = sub_100077A98(*(v18 + 16), 0);
  v22 = *(type metadata accessor for FBKFeedbackUpload.BugSession() - 8);
  v23 = sub_10007B800(&v39, &v21[(*(v22 + 80) + 32) & ~*(v22 + 80)], v20, v19);
  v24 = sub_100053364(v39);
  if (v23 == v20)
  {
LABEL_11:
    __chkstk_darwin(v24);
    *(&v37 - 2) = a7;
    *(&v37 - 1) = a3;
    v34 = sub_1000540CC(sub_100057F30, (&v37 - 4), v21);

    sub_10007BC58(v34);

    sub_1000497E4(0, &qword_1001099B0, FBKBugSession_ptr);
    sub_100057CFC(&qword_1001099B8, &qword_1001099B0, FBKBugSession_ptr);
    isa = Set._bridgeToObjectiveC()().super.isa;

    [v15 setBugSessions:isa];

    v36 = v15;
    a4(v15);

    return;
  }

  __break(1u);
LABEL_6:
  if (qword_100108DD8 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_1000466AC(v25, qword_100109940);
  (*(v13 + 16))(v15, a3, v12);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = v38;
    *v28 = 136446210;
    sub_100057CB4(&qword_1001099A8, &type metadata accessor for FBKFeedbackUpload, &protocol conformance descriptor for FBKFeedbackUpload);
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = a4;
    v32 = v31;
    (*(v13 + 8))(v15, v12);
    v33 = sub_10008D954(v29, v32, &v39);

    *(v28 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v26, v27, "FR fetch failed. Cannot track upload on %{public}s", v28, 0xCu);
    sub_1000466E4(v38);

    v30(0);
  }

  else
  {

    (*(v13 + 8))(v15, v12);
    a4(0);
  }
}

void sub_100056264(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v24 = a3;
  v5 = type metadata accessor for FBKFeedbackUpload();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() entityName];
  if (!v9)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = String._bridgeToObjectiveC()();
  }

  v10 = [objc_opt_self() insertNewObjectForEntityForName:v9 inManagedObjectContext:a1];

  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    v12 = v11;
    FBKFeedbackUpload.BugSession.sessionIdentifier.getter();
    v13 = String._bridgeToObjectiveC()();

    [v12 setIdentifier:v13];

    FBKFeedbackUpload.BugSession.deviceIdentifier.getter();
    v14 = String._bridgeToObjectiveC()();

    [v12 setDeviceIdentifier:v14];
  }

  else
  {

    if (qword_100108DD8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000466AC(v15, qword_100109940);
    (*(v6 + 16))(v8, a2, v5);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v25 = v19;
      *v18 = 136315138;
      sub_100057CB4(&qword_1001099A8, &type metadata accessor for FBKFeedbackUpload, &protocol conformance descriptor for FBKFeedbackUpload);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      (*(v6 + 8))(v8, v5);
      v23 = sub_10008D954(v20, v22, &v25);

      *(v18 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v16, v17, "Could not create FBA bug session for feedback upload %s", v18, 0xCu);
      sub_1000466E4(v19);
    }

    else
    {

      (*(v6 + 8))(v8, v5);
    }

    v12 = 0;
  }

  *v24 = v12;
}

void sub_1000565DC(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_100056668(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
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

void sub_1000566DC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v24 = 0;
  v4 = 0;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_12:
    v13 = v10 | (v4 << 6);
    v14 = *(*(a3 + 48) + 8 * v13);
    v15 = [v14 filerForm];
    if (v15)
    {
      v16 = [v15 filerFormType];

      swift_unknownObjectRelease();
      if (!v16)
      {
        *(a1 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        if (__OFADD__(v24++, 1))
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
      if (qword_100108DD8 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_1000466AC(v18, qword_100109940);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "Found upload task without a valid filer form, skipping.", v21, 2u);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {

      sub_1000788C4(a1, a2, v24, a3);
      return;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

void *sub_100056914(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    sub_1000566DC(result, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

void sub_10005698C(void *a1, void *a2, void *a3)
{
  v122 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v116 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FBKFeedbackUpload();
  v124 = *(v12 - 8);
  __chkstk_darwin(v12);
  isa = (v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  _Block_copy(a3);
  v15 = [a2 mainQueueContext];
  if (!v15)
  {
    if (qword_100108DD8 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_1000466AC(v43, qword_100109940);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "No main queue managed object context found", v46, 2u);
    }

    sub_1000497E4(0, &qword_100109958, FBKUploadTask_ptr);
    sub_100057CFC(&qword_100109960, &qword_100109958, FBKUploadTask_ptr);
    v47.super.isa = Set._bridgeToObjectiveC()().super.isa;
    v48 = a3[2];
    isa = v47.super.isa;
    v48(a3);

    v49 = isa;

    return;
  }

  v119 = v12;
  v108[1] = a3;
  v110 = v11;
  v111 = v9;
  v112 = v7;
  v16 = v15;
  v17 = swift_allocObject();
  v117 = a2;
  v123 = v16;
  v18 = [a2 uploadTasksFromDatabaseWithContext:v16];
  v19 = sub_1000497E4(0, &qword_100109958, FBKUploadTask_ptr);
  sub_100057CFC(&qword_100109960, &qword_100109958, FBKUploadTask_ptr);
  v20 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v109 = v17;
  *(v17 + 16) = v20;
  v115 = v14;
  v114 = v5;
  v113 = v8;
  if ((v20 & 0xC000000000000001) != 0)
  {
    v14 = &_swiftEmptySetSingleton;
    aBlock[0] = &_swiftEmptySetSingleton;

    __CocoaSet.makeIterator()();
    v21 = __CocoaSet.Iterator.next()();
    p_cache = (_TtC18Feedback_Assistant26FBADevicePickerCoordinator + 16);
    if (v21)
    {
      p_ivar_lyt = &FBADirectoriesMigrator.ivar_lyt;
      while (1)
      {
        v126 = v21;
        swift_dynamicCast();
        v24 = [v127 filerForm];
        if (!v24)
        {
          break;
        }

        v25 = [v24 p_ivar_lyt[173]];
        swift_unknownObjectRelease();
        if (v25)
        {
          goto LABEL_6;
        }

        v26 = p_ivar_lyt;
        v27 = v127;
        v28 = *(v14 + 16);
        if (*(v14 + 24) <= v28)
        {
          sub_100077F28(v28 + 1);
        }

        v14 = aBlock[0];
        v29 = NSObject._rawHashValue(seed:)(*(aBlock[0] + 40));
        v30 = v14 + 56;
        v31 = -1 << *(v14 + 32);
        v32 = v29 & ~v31;
        v33 = v32 >> 6;
        if (((-1 << v32) & ~*(v14 + 56 + 8 * (v32 >> 6))) == 0)
        {
          v39 = 0;
          v40 = (63 - v31) >> 6;
          while (++v33 != v40 || (v39 & 1) == 0)
          {
            v41 = v33 == v40;
            if (v33 == v40)
            {
              v33 = 0;
            }

            v39 |= v41;
            v42 = *(v30 + 8 * v33);
            if (v42 != -1)
            {
              v34 = __clz(__rbit64(~v42)) + (v33 << 6);
              goto LABEL_26;
            }
          }

LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          swift_once();
LABEL_63:
          v73 = type metadata accessor for Logger();
          sub_1000466AC(v73, qword_100109940);

          v74 = Logger.logObject.getter();
          v75 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v74, v75))
          {
            v76 = swift_slowAlloc();
            *v76 = 134217984;
            *(v76 + 4) = *(v19 + 16);

            v77 = "Found %ld FBK uploads to track";
            v78 = v75;
            v79 = v74;
            v80 = v76;
            v81 = 12;
            goto LABEL_69;
          }

          goto LABEL_72;
        }

        v34 = __clz(__rbit64((-1 << v32) & ~*(v14 + 56 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
        *(v30 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
        *(*(v14 + 48) + 8 * v34) = v27;
        ++*(v14 + 16);
        p_ivar_lyt = v26;
LABEL_7:
        v21 = __CocoaSet.Iterator.next()();
        if (!v21)
        {
          goto LABEL_27;
        }
      }

      if (p_cache[443] != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      sub_1000466AC(v35, qword_100109940);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&_mh_execute_header, v36, v37, "Found upload task without a valid filer form, skipping.", v38, 2u);
        p_cache = _TtC18Feedback_Assistant26FBADevicePickerCoordinator.cache;
      }

LABEL_6:
      goto LABEL_7;
    }

LABEL_27:

    goto LABEL_58;
  }

  v50 = *(v20 + 32);
  v51 = v50 & 0x3F;
  v52 = ((1 << v50) + 63) >> 6;
  v53 = 8 * v52;

  if (v51 <= 0xD)
  {
    goto LABEL_36;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_36:
    v118 = v52;
    v108[0] = v108;
    __chkstk_darwin(v54);
    v120 = v108 - ((v53 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v120, v53);
    v121 = 0;
    v55 = 0;
    v56 = 1 << *(v20 + 32);
    v57 = -1;
    if (v56 < 64)
    {
      v57 = ~(-1 << v56);
    }

    v19 = v57 & *(v20 + 56);
    v58 = (v56 + 63) >> 6;
    while (v19)
    {
      v59 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_47:
      v14 = v59 | (v55 << 6);
      v62 = *(*(v20 + 48) + 8 * v14);
      v63 = [v62 filerForm];
      if (v63)
      {
        v64 = [v63 filerFormType];

        swift_unknownObjectRelease();
        if (!v64)
        {
          *&v120[(v14 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v14;
          v65 = __OFADD__(v121, 1);
          v121 = (v121 + 1);
          if (v65)
          {
            __break(1u);
          }
        }
      }

      else
      {
        if (qword_100108DD8 != -1)
        {
          swift_once();
        }

        v66 = type metadata accessor for Logger();
        sub_1000466AC(v66, qword_100109940);
        v67 = Logger.logObject.getter();
        v68 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v67, v68))
        {
          v14 = swift_slowAlloc();
          *v14 = 0;
          _os_log_impl(&_mh_execute_header, v67, v68, "Found upload task without a valid filer form, skipping.", v14, 2u);
        }
      }
    }

    v60 = v55;
    while (1)
    {
      v55 = v60 + 1;
      if (__OFADD__(v60, 1))
      {
        goto LABEL_85;
      }

      if (v55 >= v58)
      {
        break;
      }

      v61 = *(v20 + 56 + 8 * v55);
      ++v60;
      if (v61)
      {
        v59 = __clz(__rbit64(v61));
        v19 = (v61 - 1) & v61;
        goto LABEL_47;
      }
    }

    v14 = sub_1000788C4(v120, v118, v121, v20);
    goto LABEL_57;
  }

  v107 = swift_slowAlloc();

  v14 = sub_100056914(v107, v52, v20);
  swift_bridgeObjectRelease_n();

LABEL_57:
  p_cache = _TtC18Feedback_Assistant26FBADevicePickerCoordinator.cache;
LABEL_58:
  v69 = [v122 feedbackContentItems];
  if (v69)
  {
    v70 = v69;
    sub_1000497E4(0, &qword_100109990, FBKContentItem_ptr);
    sub_100057CFC(&qword_100109998, &qword_100109990, FBKContentItem_ptr);
    v120 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v120 = &_swiftEmptySetSingleton;
  }

  v122 = swift_allocObject();
  *(v122 + 2) = &_swiftEmptySetSingleton;
  v121 = dispatch_group_create();
  v71 = [objc_opt_self() sharedUserDefaults];
  v19 = static FBKFeedbackUpload.allFeedbackUploads(_:)();

  v72 = p_cache[443];
  if (*(v19 + 16))
  {
    if (v72 != -1)
    {
      goto LABEL_86;
    }

    goto LABEL_63;
  }

  if (v72 != -1)
  {
    swift_once();
  }

  v82 = type metadata accessor for Logger();
  sub_1000466AC(v82, qword_100109940);
  v74 = Logger.logObject.getter();
  v83 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v74, v83))
  {
    v84 = swift_slowAlloc();
    *v84 = 0;
    v77 = "No FBK uploads found.";
    v78 = v83;
    v79 = v74;
    v80 = v84;
    v81 = 2;
LABEL_69:
    _os_log_impl(&_mh_execute_header, v79, v78, v77, v80, v81);
  }

LABEL_72:
  swift_unknownObjectWeakInit();
  v85 = v19 + 56;
  v86 = 1 << *(v19 + 32);
  v87 = -1;
  if (v86 < 64)
  {
    v87 = ~(-1 << v86);
  }

  v88 = v87 & *(v19 + 56);
  v89 = (v86 + 63) >> 6;
  v118 = v124 + 16;
  v90 = (v124 + 8);

  v91 = 0;
  for (i = v14; v88; v14 = i)
  {
    v93 = v91;
    v94 = isa;
LABEL_80:
    v95 = v19;
    v96 = *(v19 + 48) + *(v124 + 72) * (__clz(__rbit64(v88)) | (v93 << 6));
    v97 = v119;
    (*(v124 + 16))(v94, v96, v119);
    sub_100054A28(v94, v120, i, v121, aBlock, v123, v122);
    v88 &= v88 - 1;
    (*v90)(v94, v97);
    v91 = v93;
    v19 = v95;
  }

  v94 = isa;
  while (1)
  {
    v93 = v91 + 1;
    if (__OFADD__(v91, 1))
    {
      __break(1u);
      goto LABEL_84;
    }

    if (v93 >= v89)
    {
      break;
    }

    v88 = *(v85 + 8 * v93);
    ++v91;
    if (v88)
    {
      goto LABEL_80;
    }
  }

  swift_unknownObjectWeakDestroy();

  sub_1000497E4(0, &qword_100109970, OS_dispatch_queue_ptr);
  v98 = static OS_dispatch_queue.main.getter();
  v99 = swift_allocObject();
  v100 = v117;
  v99[2] = v122;
  v99[3] = v100;
  v99[4] = v109;
  v99[5] = sub_100057BFC;
  v99[6] = v115;
  aBlock[4] = sub_100057C8C;
  aBlock[5] = v99;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100088474;
  aBlock[3] = &unk_1000E0CE0;
  v101 = _Block_copy(aBlock);

  v102 = v100;

  v103 = v110;
  static DispatchQoS.unspecified.getter();
  v127 = _swiftEmptyArrayStorage;
  sub_100057CB4(&qword_100108F80, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100041AA0(&unk_100109980, &qword_1000C1B50);
  sub_100041AE8();
  v104 = v112;
  v105 = v114;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v106 = v121;
  OS_dispatch_group.notify(qos:flags:queue:execute:)();

  _Block_release(v101);
  (*(v116 + 8))(v104, v105);
  (*(v111 + 8))(v103, v113);
}

id sub_100057988(uint64_t a1, uint64_t a2)
{
  result = [objc_opt_self() entityName];
  if (result)
  {
    v3 = result;
    v4 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:result];

    sub_1000497E4(0, &qword_100109958, FBKUploadTask_ptr);
    v5 = NSManagedObjectContext.fetch<A>(_:)();
    v6 = sub_10007BAB8(v5);

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100057BC4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100057C04()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100057C3C()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100057C9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100057CB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100057CFC(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000497E4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100057D4C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100057DA0()
{
  v1 = type metadata accessor for FBKFeedbackUpload();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

void sub_100057E68(void *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for FBKFeedbackUpload() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = v2 + v7;
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v2 + v8);
  v13 = *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_100055D94(a1, a2, v2 + v6, v10, v11, v12, v13);
}

uint64_t sub_100057F4C()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100057FE4()
{
  v1 = [*&v0[OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_searchController] searchBar];
  v2 = [v1 text];

  if (v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = sub_1000597B0(v3);

    *&v0[OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_displayedParticipants] = v4;

    v5 = [v0 tableView];
    if (v5)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  *&v0[OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_displayedParticipants] = *&v0[OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_participants];

  v5 = [v0 tableView];
  if (!v5)
  {
    __break(1u);
    return;
  }

LABEL_5:
  v6 = v5;
  [v5 reloadData];
}

void sub_10005813C(uint64_t a1, uint64_t a2)
{
  v8.receiver = v2;
  v8.super_class = type metadata accessor for FBAParticipantTableViewController(a1, a2);
  objc_msgSendSuper2(&v8, "viewDidLoad");
  v3 = [v2 navigationItem];
  v4 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:24 target:v2 action:"dismissSelf"];
  [v3 setRightBarButtonItem:v4];

  v5 = OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_searchController;
  [*&v2[OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_searchController] setSearchResultsUpdater:v2];
  [*&v2[v5] setDelegate:v2];
  [*&v2[v5] setObscuresBackgroundDuringPresentation:0];
  v6 = [*&v2[v5] searchBar];
  [v6 setDelegate:v2];

  [*&v2[v5] setHidesNavigationBarDuringPresentation:0];
  [v2 setDefinesPresentationContext:1];
  v7 = [v2 navigationItem];
  [v7 setSearchController:*&v2[v5]];
}

void sub_1000582FC(void *a1)
{
  v3 = [a1 singleTeam];
  if (v3)
  {
    v4 = v3;
    if ([v3 teamType])
    {
      v5 = [a1 assignee];
      v6 = *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_assignee];
      *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_assignee] = v5;

      v7 = [a1 originator];
      v8 = *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_originator];
      *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_originator] = v7;

      sub_100058714(v4);
      v9 = [objc_opt_self() sharedInstance];
      v10 = swift_allocObject();
      *(v10 + 16) = v4;
      *(v10 + 24) = v1;
      v17[4] = sub_100059BA0;
      v17[5] = v10;
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 1107296256;
      v17[2] = sub_10005B208;
      v17[3] = &unk_1000E0DF8;
      v11 = _Block_copy(v17);
      v12 = v4;
      v13 = v1;

      [v9 refreshParticipantsWithTeam:v12 completion:v11];
      _Block_release(v11);

      return;
    }
  }

  v14 = static os_log_type_t.error.getter();
  v15 = [objc_opt_self() appHandle];
  if (v15)
  {
    v16 = v15;
    os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v15, "Attempted to show teams for a personal team, abort.", 51, 2, _swiftEmptyArrayStorage);

    [v1 dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    __break(1u);
  }
}

void sub_100058544(uint64_t a1, id a2)
{
  if (a1)
  {
    swift_errorRetain();
    v2 = static os_log_type_t.error.getter();
    v3 = [objc_opt_self() appHandle];
    if (v3)
    {
      v4 = v3;
      sub_100041AA0(&unk_100109860, qword_1000C2DA0);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_1000C29F0;
      swift_getErrorValue();
      v6 = Error.localizedDescription.getter();
      v8 = v7;
      *(v5 + 56) = &type metadata for String;
      *(v5 + 64) = sub_100047484();
      *(v5 + 32) = v6;
      *(v5 + 40) = v8;
      os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, v4, "Error refreshing participants: [%{public}@]", 43, 2, v5);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v10 = [a2 managedObjectContext];
    if (v10)
    {
      v11 = v10;
      [v10 refreshObject:a2 mergeChanges:1];
    }

    sub_100058714(a2);
  }
}

void sub_100058714(void *a1)
{
  v2 = [a1 participants];
  if (v2)
  {
    v3 = v2;
    sub_1000497E4(0, &qword_100109C18, FBKParticipant_ptr);
    sub_100059AF8();
    static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_1000497E4(0, &qword_100109C18, FBKParticipant_ptr);
  sub_100059AF8();
  v4.super.isa = Set._bridgeToObjectiveC()().super.isa;

  isa = [objc_opt_self() sortDescriptors];
  if (!isa)
  {
    sub_1000497E4(0, &qword_100109620, NSSortDescriptor_ptr);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  v6 = [(objc_class *)v4.super.isa sortedArrayUsingDescriptors:isa];

  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = sub_100076C18(v7);

  *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_participants] = v8;

  sub_100057FE4();
  v9 = [v1 tableView];
  if (v9)
  {
    v10 = v9;
    [v9 reloadData];
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_100058940(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UIListContentConfiguration();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v36[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v10 = [a1 dequeueReusableCellWithIdentifier:v8 forIndexPath:isa];

  result = IndexPath.row.getter();
  v12 = *(v1 + OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_displayedParticipants);
  if ((v12 & 0xC000000000000001) != 0)
  {

    v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_5:
    static UIListContentConfiguration.valueCell()();
    v14 = [v13 contactImage];
    UIListContentConfiguration.image.setter();
    v15 = UIListContentConfiguration.imageProperties.modify();
    UIListContentConfiguration.ImageProperties.maximumSize.setter();
    v15(v36, 0);
    v16 = UIListContentConfiguration.imageProperties.modify();
    UIListContentConfiguration.ImageProperties.cornerRadius.setter();
    v16(v36, 0);
    v17 = [v13 fullName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    UIListContentConfiguration.text.setter();
    v18 = *(v2 + OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_originator);
    if (v18)
    {
      sub_1000497E4(0, &qword_100109C18, FBKParticipant_ptr);
      v19 = v13;
      v20 = v18;
      v21 = static NSObject.== infix(_:_:)();

      if (v21)
      {
        v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = v23;
        v25 = [objc_opt_self() mainBundle];
        v37._object = 0xE000000000000000;
        v26._countAndFlagsBits = 0x54414E494749524FLL;
        v26._object = 0xEA0000000000524FLL;
        v27.value._countAndFlagsBits = v22;
        v27.value._object = v24;
        v28._countAndFlagsBits = 0;
        v28._object = 0xE000000000000000;
        v37._countAndFlagsBits = 0;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v26, v27, v25, v28, v37);
      }
    }

    else
    {
      v29 = v13;
    }

    UIListContentConfiguration.secondaryText.setter();
    v36[3] = v4;
    v36[4] = &protocol witness table for UIListContentConfiguration;
    v30 = sub_100049974(v36);
    (*(v5 + 16))(v30, v7, v4);
    UITableViewCell.contentConfiguration.setter();
    v31 = *(v2 + OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_assignee);
    if (v31)
    {
      sub_1000497E4(0, &qword_100109C18, FBKParticipant_ptr);
      v32 = v31;
      v33 = static NSObject.== infix(_:_:)();

      if (v33)
      {
        v34 = 3;
LABEL_14:
        [v10 setAccessoryType:v34];

        (*(v5 + 8))(v7, v4);
        return v10;
      }
    }

    else
    {
    }

    v34 = 0;
    goto LABEL_14;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(v12 + 8 * result + 32);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

unint64_t sub_100058E74(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v3 = result;
  result = IndexPath.row.getter();
  v4 = *(a1 + OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_displayedParticipants);
  if ((v4 & 0xC000000000000001) != 0)
  {

    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    goto LABEL_6;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (result >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v5 = *(v4 + 8 * result + 32);
LABEL_6:
  [v3 participantController:a1 didSelectParticipant:v5];

  return swift_unknownObjectRelease();
}

id sub_10005916C(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  v3 = &v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_cellReuseIdentifier];
  *v3 = 0xD000000000000015;
  *(v3 + 1) = 0x80000001000CB5B0;
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_participants] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_displayedParticipants] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_assignee] = 0;
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_originator] = 0;
  v4 = OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_searchController;
  v5 = [objc_allocWithZone(UISearchController) initWithSearchResultsController:0];
  *&v1[v4] = v5;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for FBAParticipantTableViewController(v5, v6);
  return objc_msgSendSuper2(&v8, "initWithStyle:", a1);
}

id sub_10005927C(uint64_t a1, uint64_t a2, void *a3)
{
  swift_unknownObjectWeakInit();
  v6 = &v3[OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_cellReuseIdentifier];
  *v6 = 0xD000000000000015;
  *(v6 + 1) = 0x80000001000CB5B0;
  *&v3[OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_participants] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_displayedParticipants] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_assignee] = 0;
  *&v3[OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_originator] = 0;
  v7 = OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_searchController;
  v8 = [objc_allocWithZone(UISearchController) initWithSearchResultsController:0];
  *&v3[v7] = v8;
  if (a2)
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v3;
  v13.super_class = type metadata accessor for FBAParticipantTableViewController(v8, v9);
  v11 = objc_msgSendSuper2(&v13, "initWithNibName:bundle:", v10, a3);

  return v11;
}

id sub_10005940C(void *a1)
{
  swift_unknownObjectWeakInit();
  v3 = &v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_cellReuseIdentifier];
  *v3 = 0xD000000000000015;
  *(v3 + 1) = 0x80000001000CB5B0;
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_participants] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_displayedParticipants] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_assignee] = 0;
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_originator] = 0;
  v4 = OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_searchController;
  v5 = [objc_allocWithZone(UISearchController) initWithSearchResultsController:0];
  *&v1[v4] = v5;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for FBAParticipantTableViewController(v5, v6);
  v7 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);

  if (v7)
  {
  }

  return v7;
}

id sub_100059538(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for FBAParticipantTableViewController(a1, a2);
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_100059630(void *a1)
{
  v2 = [a1 searchBar];
  v3 = [v2 text];

  if (v3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = sub_1000597B0(v4);

    *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAParticipantTableViewController_displayedParticipants] = v5;

    v6 = [v1 tableView];
    if (v6)
    {
      v7 = v6;
      [v6 reloadData];
    }

    else
    {
      __break(1u);
    }
  }
}

void *sub_1000597B0(unint64_t a1)
{
  v2 = type metadata accessor for CharacterSet();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = String.lowercased()();
  static CharacterSet.whitespacesAndNewlines.getter();
  sub_100045528();
  v6 = StringProtocol.trimmingCharacters(in:)();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v9 = v6;

  if (String.count.getter())
  {
    v30 = _swiftEmptyArrayStorage;
    v10 = a1;
    if (a1 >> 62)
    {
      goto LABEL_19;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v12 = 0;
      v26 = v10 & 0xFFFFFFFFFFFFFF8;
      v27 = v10 & 0xC000000000000001;
      v24 = v10;
      v25 = i;
      while (1)
      {
        if (v27)
        {
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v12 >= *(v26 + 16))
          {
            goto LABEL_18;
          }

          v13 = *(v10 + 8 * v12 + 32);
        }

        v14 = v13;
        v15 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        v16 = [v13 fullName];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v17 = String.lowercased()();

        v31 = v17;
        v28 = v9;
        v29 = v8;
        v18 = StringProtocol.contains<A>(_:)();

        if (v18 & 1) != 0 || (v19 = [v14 emailAddress]) != 0 && (v20 = v19, static String._unconditionallyBridgeFromObjectiveC(_:)(), v20, v21 = String.lowercased()(), , v31 = v21, v28 = v9, v29 = v8, LOBYTE(v20) = StringProtocol.contains<A>(_:)(), v10 = v24, , (v20))
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v12;
        if (v15 == v25)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }

LABEL_20:

    return v30;
  }

  else
  {

    return a1;
  }
}

unint64_t sub_100059AF8()
{
  result = qword_100109C20;
  if (!qword_100109C20)
  {
    sub_1000497E4(255, &qword_100109C18, FBKParticipant_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100109C20);
  }

  return result;
}

uint64_t sub_100059B60()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100059BA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100059BC0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 24) & ~v5;
  v7 = *(v4 + 64);

  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

unint64_t sub_100059C84(uint64_t a1, uint64_t a2)
{
  type metadata accessor for IndexPath();
  v3 = *(v2 + 16);

  return sub_100058E74(v3);
}

void *sub_100059EA0()
{
  v1 = *(v0 + OBJC_IVAR____TtC18Feedback_Assistant14FBAFilterGroup_filters);
  if (v1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if ([v4 active])
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v3;
      if (v6 == i)
      {
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

  return _swiftEmptyArrayStorage;
}

char *sub_100059FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_unknownObjectWeakInit();
  v8 = &v3[OBJC_IVAR____TtC18Feedback_Assistant14FBAFilterGroup_title];
  *v8 = 0;
  *(v8 + 1) = 0;
  *&v3[OBJC_IVAR____TtC18Feedback_Assistant14FBAFilterGroup_compoundType] = 1;
  *&v3[OBJC_IVAR____TtC18Feedback_Assistant14FBAFilterGroup_filters] = a3;
  *v8 = a1;
  *(v8 + 1) = a2;
  v19.receiver = v3;
  v19.super_class = type metadata accessor for FBAFilterGroup(v7, v9);
  v10 = objc_msgSendSuper2(&v19, "init");
  v11 = *&v10[OBJC_IVAR____TtC18Feedback_Assistant14FBAFilterGroup_filters];
  if (v11 >> 62)
  {
    goto LABEL_15;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v13 = v10;

    if (!v12)
    {
      break;
    }

    v14 = 0;
    while (1)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v14 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v10 = *(v11 + 8 * v14 + 32);
      }

      v15 = v10;
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      swift_unknownObjectWeakAssign();

      ++v14;
      if (v16 == v12)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    v18 = v10;
    v12 = _CocoaArrayWrapper.endIndex.getter();
    v10 = v18;
  }

LABEL_12:

  return v13;
}

id sub_10005A21C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for FBAFilterGroup(a1, a2);
  return objc_msgSendSuper2(&v4, "dealloc");
}

void (*sub_10005A2D4(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_10005A354;
  }

  __break(1u);
  return result;
}

id FBATargetedSurvey.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FBATargetedSurvey.init()(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for FBATargetedSurvey(a1, a2);
  return objc_msgSendSuper2(&v4, "init");
}

id FBATargetedSurvey.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for FBATargetedSurvey(a1, a2);
  return objc_msgSendSuper2(&v4, "dealloc");
}

void *sub_10005A4F4()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = NSClassFromString(v1);

  if (v2)
  {
    v3 = [v0 subviews];
    sub_10005A6CC(0, v4);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v5 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_15;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if ([v8 isKindOfClass:v2])
        {

          return v9;
        }

        ++v7;
        if (v10 == i)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }

LABEL_17:
  }

  return 0;
}

unint64_t sub_10005A6CC(uint64_t a1, uint64_t a2)
{
  result = qword_100109D00;
  if (!qword_100109D00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100109D00);
  }

  return result;
}

uint64_t sub_10005A718(uint64_t a1, uint64_t a2)
{
  result = FBKIsSolariumEnabled();
  byte_10010CEB8 = result;
  return result;
}

id sub_10005A93C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UIListContentConfiguration();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v11 = &v62[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = &v3[OBJC_IVAR____TtC18Feedback_Assistant21FBAAddAttachmentsCell_itemIdentifier];
  *v12 = 0;
  *(v12 + 1) = 0xE000000000000000;
  *&v3[OBJC_IVAR____TtC18Feedback_Assistant21FBAAddAttachmentsCell_button] = 0;
  if (a3)
  {
    v8 = String._bridgeToObjectiveC()();
    v13 = v8;
  }

  else
  {
    v13 = 0;
  }

  v14 = type metadata accessor for FBAAddAttachmentsCell(v8, v9);
  v63.receiver = v3;
  v63.super_class = v14;
  v15 = objc_msgSendSuper2(&v63, "initWithStyle:reuseIdentifier:", a1, v13);

  if (qword_100108DE0 != -1)
  {
    swift_once();
  }

  if (byte_10010CEB8 == 1)
  {

    v16 = [objc_allocWithZone(UIButton) init];
    v17 = [v16 titleLabel];
    if (v17)
    {
      v18 = v17;
      v19 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
      [v18 setFont:v19];
    }

    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;
    v23 = [objc_opt_self() mainBundle];
    v64._object = 0xE000000000000000;
    v24._countAndFlagsBits = 0x415454415F444441;
    v24._object = 0xEE00544E454D4843;
    v25.value._countAndFlagsBits = v20;
    v25.value._object = v22;
    v26._countAndFlagsBits = 0;
    v26._object = 0xE000000000000000;
    v64._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v24, v25, v23, v26, v64);

    v27 = String._bridgeToObjectiveC()();

    [v16 setTitle:v27 forState:0];

    v28 = [objc_opt_self() tintColor];
    [v16 setTitleColor:v28 forState:0];

    v29 = [objc_opt_self() systemImageNamed:FBKSystemImageNamePaperclip];
    [v16 setImage:v29 forState:0];

    v30 = v16;
    [v30 setShowsMenuAsPrimaryAction:1];
    v31 = v30;
    [v31 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v31 setContentEdgeInsets:{10.0, 0.0, 10.0, 0.0}];
    [v31 setContentHorizontalAlignment:4];

    v32 = v15;
    [v32 separatorInset];
    [v31 setImageEdgeInsets:0.0];
    [v32 separatorInset];
    [v31 setTitleEdgeInsets:{0.0, v33 + 20.0, 0.0, 0.0}];
    v34 = *&v32[OBJC_IVAR____TtC18Feedback_Assistant21FBAAddAttachmentsCell_button];
    *&v32[OBJC_IVAR____TtC18Feedback_Assistant21FBAAddAttachmentsCell_button] = v31;
    v35 = v31;

    v36 = [v32 contentView];
    [v36 addSubview:v35];

    v37 = objc_opt_self();
    sub_100041AA0(&qword_10010A0D0, &qword_1000C2CB0);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1000C2E20;
    v39 = [v35 widthAnchor];
    v40 = [v32 contentView];
    v41 = [v40 widthAnchor];

    v42 = [v39 constraintEqualToAnchor:v41];
    *(v38 + 32) = v42;
    v43 = [v35 heightAnchor];

    v44 = [v32 contentView];
    v45 = [v44 heightAnchor];

    v46 = [v43 constraintEqualToAnchor:v45];
    *(v38 + 40) = v46;
    sub_10005B1BC(0, v47);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v37 activateConstraints:isa];

    return v15;
  }

  static UIListContentConfiguration.cell()();
  v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v51 = v50;
  v52 = [objc_opt_self() mainBundle];
  v65._object = 0xE000000000000000;
  v53._countAndFlagsBits = 0x415454415F444441;
  v53._object = 0xEE00544E454D4843;
  v54.value._countAndFlagsBits = v49;
  v54.value._object = v51;
  v55._countAndFlagsBits = 0;
  v55._object = 0xE000000000000000;
  v65._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v53, v54, v52, v55, v65);

  UIListContentConfiguration.text.setter();
  v56 = [objc_opt_self() systemImageNamed:FBKSystemImageNamePaperclip];
  UIListContentConfiguration.image.setter();
  result = [objc_opt_self() tintColor];
  if (result)
  {

    v58 = UIListContentConfiguration.textProperties.modify();
    UIListContentConfiguration.TextProperties.color.setter();
    v58(v62, 0);
    v62[3] = v6;
    v62[4] = &protocol witness table for UIListContentConfiguration;
    v59 = sub_100049974(v62);
    (*(v7 + 16))(v59, v11, v6);
    v60 = v15;
    UITableViewCell.contentConfiguration.setter();

    (*(v7 + 8))(v11, v6);
    return v15;
  }

  __break(1u);
  return result;
}

id sub_10005B114(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for FBAAddAttachmentsCell(a1, a2);
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_10005B1BC(uint64_t a1, uint64_t a2)
{
  result = qword_100109D60[0];
  if (!qword_100109D60[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_100109D60);
  }

  return result;
}

void sub_10005B208(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void NSNotification.keyboardAttributes.getter(uint64_t a1@<X8>)
{
  v3 = [v1 userInfo];
  if (v3)
  {
    v4 = v3;
    v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    AnyHashable.init<A>(_:)();
    if (*(v5 + 16) && (v6 = sub_100065FB4(v27), (v7 & 1) != 0))
    {
      sub_100046784(*(v5 + 56) + 32 * v6, v28);
      sub_100065FF8(v27);
      sub_1000497E4(0, &qword_1001099A0, NSNumber_ptr);
      if (swift_dynamicCast())
      {
        v8 = v22;
        v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        AnyHashable.init<A>(_:)();
        if (*(v5 + 16) && (v9 = sub_100065FB4(v27), (v10 & 1) != 0))
        {
          sub_100046784(*(v5 + 56) + 32 * v9, v28);
          sub_100065FF8(v27);
          if (swift_dynamicCast())
          {
            v11 = v23;
            *&v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            *(&v24 + 1) = v12;
            AnyHashable.init<A>(_:)();
            if (*(v5 + 16) && (v13 = sub_100065FB4(v27), (v14 & 1) != 0))
            {
              sub_100046784(*(v5 + 56) + 32 * v13, v28);
              sub_100065FF8(v27);
              type metadata accessor for CGRect(0);
              if (swift_dynamicCast())
              {
                v21 = v24;
                *&v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                *(&v25 + 1) = v15;
                AnyHashable.init<A>(_:)();
                if (*(v5 + 16) && (v16 = sub_100065FB4(v27), (v17 & 1) != 0))
                {
                  sub_100046784(*(v5 + 56) + 32 * v16, v28);
                  sub_100065FF8(v27);
                  if (swift_dynamicCast())
                  {

                    v18 = [v8 unsignedIntegerValue];
                    [v11 doubleValue];
                    v20 = v19;

                    *a1 = v18;
                    *(a1 + 8) = v20;
                    *(a1 + 16) = v21;
                    *(a1 + 32) = v26;
                    *(a1 + 48) = v25;
                    *(a1 + 64) = v26;
                    return;
                  }
                }

                else
                {
                  sub_100065FF8(v27);
                }
              }
            }

            else
            {
              sub_100065FF8(v27);
            }
          }
        }

        else
        {
          sub_100065FF8(v27);
        }
      }
    }

    else
    {
      sub_100065FF8(v27);
    }
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10005B6A0()
{
  sub_1000497E4(0, &qword_10010A0C0, OS_os_log_ptr);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  result = OS_os_log.init(subsystem:category:)();
  qword_10010CEC0 = result;
  return result;
}

id sub_10005BA28(uint64_t a1, uint64_t a2, void *a3)
{

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

uint64_t sub_10005BA90(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = (a1 + *a4);
  *v7 = v6;
  v7[1] = v8;
}

id sub_10005BAE0()
{
  v0 = [objc_allocWithZone(UITextView) init];
  v1 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle1];
  sub_100041AA0(&qword_10010A0F0, &unk_1000C3090);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000C29F0;
  *(inited + 32) = UIFontDescriptorTraitsAttribute;
  sub_100041AA0(&qword_10010A0F8, &qword_1000C3520);
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_1000C29F0;
  *(v3 + 32) = UIFontWeightTrait;
  *(v3 + 40) = UIFontWeightBold;
  v4 = UIFontDescriptorTraitsAttribute;
  v5 = UIFontWeightTrait;
  v6 = sub_100076028(v3);
  swift_setDeallocating();
  sub_1000454C8(v3 + 32, &qword_10010A100, &qword_1000C30A0);
  *(inited + 64) = sub_100041AA0(&qword_10010A108, &qword_1000C30A8);
  *(inited + 40) = v6;
  sub_100076118(inited);
  swift_setDeallocating();
  sub_1000454C8(inited + 32, &qword_10010A110, qword_1000C30B0);
  type metadata accessor for AttributeName(0);
  sub_100068EF4(&qword_100109068, type metadata accessor for AttributeName, &unk_1000C232C);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v8 = [v1 fontDescriptorByAddingAttributes:isa];

  v9 = [objc_opt_self() fontWithDescriptor:v8 size:0.0];
  [v0 setFont:v9];

  [v0 setAdjustsFontForContentSizeCategory:1];
  v10 = objc_opt_self();
  v11 = [v10 labelColor];
  [v0 setTextColor:v11];

  v12 = v0;
  v13 = [v10 clearColor];
  [v12 setBackgroundColor:v13];

  [v12 setEditable:0];
  [v12 setScrollEnabled:0];
  v14 = [v12 textContainer];
  [v14 setLineFragmentPadding:0.0];

  [v12 setTextContainerInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  v15 = [v12 textContainer];
  [v15 setMaximumNumberOfLines:2];

  v16 = [v12 textContainer];
  [v16 setLineBreakMode:0];

  v17 = [v12 textContainer];
  [v17 setWidthTracksTextView:1];

  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  return v12;
}

id sub_10005BEF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = &v3[OBJC_IVAR____TtC18Feedback_Assistant20FBAFeedbackTitleCell_itemIdentifier];
  *v6 = 0;
  *(v6 + 1) = 0xE000000000000000;
  v7 = OBJC_IVAR____TtC18Feedback_Assistant20FBAFeedbackTitleCell_titleTextView;
  v8 = sub_10005BAE0();
  *&v3[v7] = v8;
  if (a3)
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  v14.receiver = v3;
  v14.super_class = type metadata accessor for FBAFeedbackTitleCell(v8, v9);
  v11 = objc_msgSendSuper2(&v14, "initWithStyle:reuseIdentifier:", a1, v10);

  v12 = v11;
  sub_10005C0BC();

  return v12;
}

id sub_10005C004(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC18Feedback_Assistant20FBAFeedbackTitleCell_itemIdentifier];
  *v3 = 0;
  *(v3 + 1) = 0xE000000000000000;
  v4 = OBJC_IVAR____TtC18Feedback_Assistant20FBAFeedbackTitleCell_titleTextView;
  v5 = sub_10005BAE0();
  *&v1[v4] = v5;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for FBAFeedbackTitleCell(v5, v6);
  v7 = objc_msgSendSuper2(&v11, "initWithCoder:", a1);
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    sub_10005C0BC();
  }

  return v8;
}

void sub_10005C0BC()
{
  [v0 setSelectionStyle:0];
  v1 = [v0 contentView];
  v2 = *&v0[OBJC_IVAR____TtC18Feedback_Assistant20FBAFeedbackTitleCell_titleTextView];
  [v1 addSubview:v2];

  [v0 setSeparatorInset:{0.0, 0.0, 0.0, 1.79769313e308}];
  v23 = objc_opt_self();
  sub_100041AA0(&qword_10010A0D0, &qword_1000C2CB0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1000C2E70;
  v4 = [v2 topAnchor];
  v5 = [v0 contentView];
  v6 = [v5 layoutMarginsGuide];

  v7 = [v6 topAnchor];
  v8 = [v4 constraintEqualToAnchor:v7];

  *(v3 + 32) = v8;
  v9 = [v2 leadingAnchor];
  v10 = [v0 contentView];
  v11 = [v10 layoutMarginsGuide];

  v12 = [v11 leadingAnchor];
  v13 = [v9 constraintEqualToAnchor:v12];

  *(v3 + 40) = v13;
  v14 = [v2 trailingAnchor];
  v15 = [v0 contentView];
  v16 = [v15 layoutMarginsGuide];

  v17 = [v16 trailingAnchor];
  v18 = [v14 constraintEqualToAnchor:v17];

  *(v3 + 48) = v18;
  v19 = [v2 bottomAnchor];
  v20 = [v0 contentView];
  v21 = [v20 bottomAnchor];

  v22 = [v19 constraintEqualToAnchor:v21 constant:0.0];
  *(v3 + 56) = v22;
  sub_1000497E4(0, qword_100109D60, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v23 activateConstraints:isa];
}

uint64_t sub_10005C4AC(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1000605EC(a2);
    v6 = v5;

    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_10005C514(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = a1;
    sub_1000605EC(v8);
    v13 = v12;

    (*(v6 + 8))(v8, v5);
    swift_unknownObjectRelease();
  }

  else
  {
    (*(v6 + 8))(v8, v5);
    v13 = 0;
  }

  return v13 & 1;
}

id sub_10005C684(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_10005C6CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = objc_allocWithZone(type metadata accessor for FollowupDataSource(0));
  v3[qword_100109DE8] = 0;
  swift_unknownObjectWeakInit();
  return UITableViewDiffableDataSource.init(tableView:cellProvider:)();
}

uint64_t sub_10005C754()
{
  v1 = *v0;
  v2 = 0x74655320746F4ELL;
  v3 = 0x676E69736F6C43;
  v4 = 0x6F74207964616552;
  if (v1 != 4)
  {
    v4 = 0x697474696D627553;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E61656C43;
  if (v1 != 1)
  {
    v5 = 0x7974726944;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void sub_10005C818(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_readinessState;
  if (v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_readinessState] == a1)
  {
    return;
  }

  v3 = static os_log_type_t.default.getter();
  v4 = *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log];
  sub_100041AA0(&unk_100109860, qword_1000C2DA0);
  v5 = swift_allocObject();
  v6 = v5;
  *(v5 + 16) = xmmword_1000C29F0;
  v7 = v1[v2];
  if (v7 > 2)
  {
    if (v7 == 3)
    {
      v8 = 0xE700000000000000;
      v9 = 0x676E69736F6C43;
    }

    else if (v7 == 4)
    {
      v8 = 0xEF74696D62755320;
      v9 = 0x6F74207964616552;
    }

    else
    {
      v8 = 0xEA0000000000676ELL;
      v9 = 0x697474696D627553;
    }
  }

  else if (v1[v2])
  {
    v8 = 0xE500000000000000;
    if (v7 == 1)
    {
      v9 = 0x6E61656C43;
    }

    else
    {
      v9 = 0x7974726944;
    }
  }

  else
  {
    v8 = 0xE700000000000000;
    v9 = 0x74655320746F4ELL;
  }

  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_100047484();
  *(v6 + 32) = v9;
  *(v6 + 40) = v8;
  os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v4, "New state [%{public}@]", 22, 2, v6);

  v10 = v1[v2];
  if (v10 > 2)
  {
    if (v10 == 3)
    {
      [v1 setModalInPresentation:1];
      v17 = *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_sendButton];
      if (!v17)
      {
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      [v17 setEnabled:0];
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;
      v21 = [objc_opt_self() mainBundle];
      v39._object = 0xE000000000000000;
      v22._object = 0x80000001000CBF60;
      v22._countAndFlagsBits = 0xD000000000000010;
      v23.value._countAndFlagsBits = v18;
      v23.value._object = v20;
      v24._countAndFlagsBits = 0;
      v24._object = 0xE000000000000000;
      v39._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v22, v23, v21, v24, v39);

      v25 = String._bridgeToObjectiveC()();

      [v1 fbkShowSpinnerWithStatus:v25 userInteractionEnabled:0];

      v26 = [v1 navigationItem];
      v27 = [v26 leftBarButtonItem];
    }

    else
    {
      if (v10 == 4)
      {
        [v1 setModalInPresentation:1];
        v13 = *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_sendButton];
        if (!v13)
        {
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

        [v13 setEnabled:1];
        v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isSubmitting] = 0;
        sub_10005CDE4();
        [v1 fbkHideSpinner];
        v14 = [v1 navigationItem];
        v15 = [v14 leftBarButtonItem];
        goto LABEL_24;
      }

      [v1 setModalInPresentation:1];
      v28 = *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_sendButton];
      if (!v28)
      {
LABEL_38:
        __break(1u);
        return;
      }

      [v28 setEnabled:0];
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;
      v32 = [objc_opt_self() mainBundle];
      v40._object = 0xE000000000000000;
      v33._countAndFlagsBits = 0x495454494D425553;
      v33._object = 0xEA0000000000474ELL;
      v34.value._countAndFlagsBits = v29;
      v34.value._object = v31;
      v35._countAndFlagsBits = 0;
      v35._object = 0xE000000000000000;
      v40._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v33, v34, v32, v35, v40);

      v36 = String._bridgeToObjectiveC()();

      [v1 fbkShowSpinnerWithStatus:v36 userInteractionEnabled:0];

      v26 = [v1 navigationItem];
      v27 = [v26 leftBarButtonItem];
    }

    v37 = v27;

    [v37 setEnabled:0];
    goto LABEL_31;
  }

  if (v10 < 2)
  {
    [v1 setModalInPresentation:0];
    v11 = *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_sendButton];
    if (v11)
    {
      [v11 setEnabled:0];
      v12 = [v1 navigationItem];
      v37 = [v12 leftBarButtonItem];

      if (!v37)
      {
        return;
      }

      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_35;
  }

  [v1 setModalInPresentation:1];
  v16 = *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_sendButton];
  if (!v16)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  [v16 setEnabled:0];
  v14 = [v1 navigationItem];
  v15 = [v14 leftBarButtonItem];
LABEL_24:
  v37 = v15;

LABEL_25:
  [v37 setEnabled:1];
LABEL_31:
}

void sub_10005CDE4()
{
  v1 = type metadata accessor for CharacterSet();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_readinessState;
  v7 = *(v0 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_readinessState);
  if (v7 != 3)
  {
    if (*(v0 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isSubmitting))
    {
      *(v0 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_readinessState) = 5;

      sub_10005C818(v7);
    }

    else
    {
      v8 = v0;
      v9 = v3;
      v10 = sub_100063AC4();
      sub_100081380();
      v12 = v11;
      v14 = v13;

      v20[0] = v12;
      v20[1] = v14;
      v15 = [objc_opt_self() whitespaceAndNewlineCharacterSet];
      static CharacterSet._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100045528();
      StringProtocol.trimmingCharacters(in:)();
      (*(v2 + 8))(v5, v9);

      v16 = String.count.getter();

      if (sub_100065E38(v16 != 0))
      {
        v17 = *(v8 + v6);
        *(v8 + v6) = 4;
      }

      else
      {
        if (v16 || (v19 = *(v8 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_devicesController)) != 0 && ([v19 hasFilePromises] & 1) != 0 || *(v8 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_validationChoice) != 2)
        {
          v17 = *(v8 + v6);
          v18 = 2;
        }

        else
        {
          v17 = *(v8 + v6);
          v18 = 1;
        }

        *(v8 + v6) = v18;
      }

      sub_10005C818(v17);
    }
  }
}

void sub_10005D090(void *a1)
{
  v3 = OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_followup;
  v4 = *(v1 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_followup);
  if (v4 && a1)
  {
    v17 = *(v1 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_followup);
    v16 = a1;
    v5 = v17;
    v15 = static os_log_type_t.fault.getter();
    v13 = *(v1 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log);
    sub_100041AA0(&unk_100109860, qword_1000C2DA0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1000C2530;
    v7 = [v5 ID];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 integerValue];

      *(v6 + 56) = &type metadata for Int;
      *(v6 + 64) = &protocol witness table for Int;
      *(v6 + 32) = v9;
      v10 = [v16 ID];
      if (v10)
      {
        v11 = v10;
        v12 = [v10 integerValue];

        *(v6 + 96) = &type metadata for Int;
        *(v6 + 104) = &protocol witness table for Int;
        *(v6 + 72) = v12;
        os_log(_:dso:log:_:_:)(v15, &_mh_execute_header, v13, "Duplicate Feedback Followup generated. first one: [%i] second one: [%i]", v13, v14);

        v4 = *(v1 + v3);
        goto LABEL_6;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

LABEL_6:
  *(v1 + v3) = a1;
}

id sub_10005D2A8()
{
  v1 = OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___addAttachmentsController;
  v2 = *(v0 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___addAttachmentsController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___addAttachmentsController);
  }

  else
  {
    v4 = type metadata accessor for FBAAddAttachmentsController(0);
    v5 = objc_allocWithZone(v4);
    swift_unknownObjectWeakInit();
    v6 = OBJC_IVAR____TtC18Feedback_Assistant27FBAAddAttachmentsController____lazy_storage___temporaryDirectory;
    v7 = sub_100041AA0(&qword_100109790, &unk_1000C29E0);
    (*(*(v7 - 8) + 56))(&v5[v6], 1, 1, v7);
    swift_unknownObjectWeakAssign();
    v12.receiver = v5;
    v12.super_class = v4;
    v8 = objc_msgSendSuper2(&v12, "init");
    v9 = *(v0 + v1);
    *(v0 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id sub_10005D3B4(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___displayText);
  if (*(v2 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___displayText + 8))
  {
    v4 = *v3;
  }

  else
  {
    v4 = sub_10005D430(v2, a2);
    *v3 = v4;
    v3[1] = v5;
  }

  return v4;
}

id sub_10005D430(uint64_t a1, uint64_t a2)
{
  if (*(a1 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isUnsolicited) == 1)
  {
    v2 = [objc_opt_self() mainBundle];
    v12._object = 0xE000000000000000;
    v3._object = 0x80000001000CC820;
    v3._countAndFlagsBits = 0xD00000000000001BLL;
    v4._countAndFlagsBits = 0;
    v4._object = 0xE000000000000000;
    v12._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v12)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  v6 = *(a1 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_followup);
  if (!v6)
  {
    v11 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, *(a1 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log), "Followup is nil but not unsolicited", 35, 2, _swiftEmptyArrayStorage);
    return 0;
  }

  v7 = v6;
  result = [v7 displayText];
  if (result)
  {
    v9 = result;
    countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return countAndFlagsBits;
  }

  __break(1u);
  return result;
}

unint64_t sub_10005D578()
{
  v1 = *(v0 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_validationChoice);
  if (v1 == 2)
  {
    v2._countAndFlagsBits = 63;
    v2._object = 0xE100000000000000;
    String.append(_:)(v2);
  }

  else
  {
    if (v1)
    {
      v3 = 1702195828;
    }

    else
    {
      v3 = 0x65736C6166;
    }

    if (v1)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE500000000000000;
    }

    v5 = v4;
    String.append(_:)(*&v3);
  }

  return 0xD000000000000015;
}

void sub_10005D634(uint64_t a1, uint64_t a2)
{
  v8.receiver = v2;
  v8.super_class = type metadata accessor for FBAFollowupResponseViewController(a1, a2);
  objc_msgSendSuper2(&v8, "awakeFromNib");
  v3 = [v2 navigationController];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 presentationController];
    if (v5)
    {
      v6 = v5;
      [v5 setDelegate:v2];
    }
  }

  else
  {
    v7 = [v2 presentationController];
    if (!v7)
    {
      return;
    }

    v4 = v7;
    [v7 setDelegate:v2];
  }
}

void sub_10005D740(uint64_t a1, uint64_t a2)
{
  v16.receiver = v2;
  v16.super_class = type metadata accessor for FBAFollowupResponseViewController(a1, a2);
  objc_msgSendSuper2(&v16, "viewDidLoad");
  v3 = *&v2[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_followup];
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = *&v2[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_contentItem];
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = v4;
  v6 = v3;
  v7 = static os_log_type_t.info.getter();
  v8 = *&v2[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log];
  sub_100041AA0(&unk_100109860, qword_1000C2DA0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000C2530;
  v10 = [v6 ID];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 unsignedLongLongValue];

    *(v9 + 56) = &type metadata for UInt64;
    *(v9 + 64) = &protocol witness table for UInt64;
    *(v9 + 32) = v12;
    v13 = [v5 ID];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 unsignedIntegerValue];

      *(v9 + 96) = &type metadata for UInt;
      *(v9 + 104) = &protocol witness table for UInt;
      *(v9 + 72) = v15;
      os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, v8, "FFU view launched for FFU [%lu] item [%lu]", v16.receiver, v16.super_class);

LABEL_6:
      sub_100063FF8();
      sub_100062F74();
      sub_100064778();
      sub_10005CDE4();
      sub_10006256C(0, 0, 0, 0, 0, 0);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_10005D9EC()
{
  v1 = static os_log_type_t.info.getter();
  os_log(_:dso:log:_:_:)(v1, &_mh_execute_header, *&v0[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log], "Removing observers", 18, 2, _swiftEmptyArrayStorage);
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver:v0];

  v6.receiver = v0;
  v6.super_class = type metadata accessor for FBAFollowupResponseViewController(v3, v4);
  return objc_msgSendSuper2(&v6, "dealloc");
}

uint64_t sub_10005DD18(void *a1)
{
  v3 = [a1 identifier];
  if (!v3)
  {
LABEL_7:
    v10 = static os_log_type_t.error.getter();
    v11 = *(v1 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log);
    sub_100041AA0(&unk_100109860, qword_1000C2DA0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1000C29F0;
    v13 = [a1 identifier];
    if (v13)
    {
      v14 = v13;
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;
    }

    else
    {
      v15 = 0;
      v17 = 0;
    }

    *(v12 + 56) = &type metadata for String;
    *(v12 + 64) = sub_100047484();
    if (v17)
    {
      v30 = v15;
    }

    else
    {
      v30 = 0;
    }

    v31 = 0xE000000000000000;
    if (v17)
    {
      v31 = v17;
    }

    *(v12 + 32) = v30;
    *(v12 + 40) = v31;
    os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, v11, "Unknown segue [%{public}@]", 26, 2, v12);
    goto LABEL_21;
  }

  v4 = v3;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  if (v5 == 0xD000000000000024 && 0x80000001000CC980 == v7)
  {
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v18 = [a1 destinationViewController];
  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (v19 && (v20 = [v19 topViewController]) != 0)
  {
    v22 = v20;
    type metadata accessor for FBAFFUDisplayTextViewController(0, v21);
    v23 = swift_dynamicCastClass();
    if (v23)
    {
      v25 = v23;
      v26 = sub_10005D3B4(v23, v24);
      v28 = v27;

      v29 = (v25 + OBJC_IVAR____TtC18Feedback_Assistant31FBAFFUDisplayTextViewController_displayText);
      *v29 = v26;
      v29[1] = v28;

LABEL_21:
    }
  }

  else
  {
    v22 = v18;
  }

  v33 = 0xE000000000000000;
  _StringGuts.grow(_:)(47);
  v34 = [a1 identifier];
  if (v34)
  {
    v35 = v34;
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v37;
  }

  else
  {
    v36 = 0;
  }

  v38._countAndFlagsBits = v36;
  v38._object = v33;
  String.append(_:)(v38);

  v39._countAndFlagsBits = 0xD00000000000002DLL;
  v39._object = 0x80000001000CCA10;
  String.append(_:)(v39);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_10005E0C0()
{
  v1 = sub_100063AC4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = Strong;

  v4 = v3[OBJC_IVAR____TtC18Feedback_Assistant20FBAExpandingTextView_isEditing];
  if (v4 != 1)
  {
LABEL_11:
    v19 = static os_log_type_t.default.getter();
    v20 = *&v0[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log];
    sub_100041AA0(&unk_100109860, qword_1000C2DA0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1000C2530;
    v22 = *&v0[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_followup];
    if (v22)
    {
      v23 = [v22 ID];
      if (!v23)
      {
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v24 = v23;
      v25 = [v23 unsignedIntegerValue];

      v34 = &protocol witness table for UInt;
      v33 = &type metadata for UInt;
      *&v32 = v25;
      sub_100068C00(&v32, v21 + 32);
    }

    else
    {
      *(v21 + 56) = &type metadata for Int;
      *(v21 + 64) = &protocol witness table for Int;
      *(v21 + 32) = 0;
    }

    v26 = *&v0[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_contentItem];
    if (v26)
    {
      v27 = [v26 ID];
      if (v27)
      {
        v28 = v27;
        v29 = [v27 unsignedIntegerValue];

        *(v21 + 96) = &type metadata for UInt;
        *(v21 + 104) = &protocol witness table for UInt;
        *(v21 + 72) = v29;
        os_log(_:dso:log:_:_:)(v19, &_mh_execute_header, v20, "User did tap send for FFU [%lu] Item: [%lu]. Will submit", v31, v32);

        v30 = v0;
        sub_1000670DC(v30, v30);

        return;
      }

      goto LABEL_20;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v5 = *&v0[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___cachedCommentsCell];
  v6 = swift_unknownObjectWeakLoadStrong();
  if (!v6)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v7 = v6;
  v8 = v5;
  [v7 resignFirstResponder];

  HIDWORD(v31) = static os_log_type_t.default.getter();
  v9 = *&v0[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log];
  sub_100041AA0(&unk_100109860, qword_1000C2DA0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1000C2530;
  v11 = *&v0[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_followup];
  if (!v11)
  {
    *(v10 + 56) = &type metadata for Int;
    *(v10 + 64) = &protocol witness table for Int;
    *(v10 + 32) = 0;
    goto LABEL_8;
  }

  v12 = [v11 ID];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 unsignedIntegerValue];

    v34 = &protocol witness table for UInt;
    v33 = &type metadata for UInt;
    *&v32 = v14;
    sub_100068C00(&v32, v10 + 32);
LABEL_8:
    v15 = *&v0[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_contentItem];
    if (!v15)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v16 = [v15 ID];
    if (!v16)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v17 = v16;
    v18 = [v16 unsignedIntegerValue];

    *(v10 + 96) = &type metadata for UInt;
    *(v10 + 104) = &protocol witness table for UInt;
    *(v10 + 72) = v18;
    os_log(_:dso:log:_:_:)(HIDWORD(v31), &_mh_execute_header, v9, "User did tap send for FFU [%lu] Item: [%lu] while editing text", v31, v32);

    goto LABEL_11;
  }

LABEL_25:
  __break(1u);
}

void sub_10005E458(char a1, _BYTE *a2)
{
  a2[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isSubmitting] = 1;
  sub_10005CDE4();
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;
  if (*&a2[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_followup])
  {
    v5 = a2;
    sub_1000644F8(v5);
    v20 = v5;
    sub_100066DCC(v20, v20, a1 & 1);
  }

  else if (a2[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isCreatingFollowup] == 1)
  {
    v6 = a2;
    v7 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, *&v6[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log], "Potential followup creation race condition detected.", 52, 2, _swiftEmptyArrayStorage);
    v8 = &v6[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_createFollowupSavedHandler];
    v9 = *&v6[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_createFollowupSavedHandler];
    v10 = *&v6[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_createFollowupSavedHandler + 8];
    *v8 = sub_100068E5C;
    v8[1] = v4;

    sub_10004BA44(v9, v10);
  }

  else
  {
    if (a2[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isUnsolicited] == 1)
    {
      a2[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isCreatingFollowup] = 1;
      v11 = objc_opt_self();
      v12 = a2;
      v13 = [v11 sharedInstance];
      v14 = *&v12[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_contentItem];
      if (v14)
      {
        v15 = v13;
        v16 = swift_allocObject();
        v16[2] = v12;
        v16[3] = sub_100068E5C;
        v16[4] = v4;
        aBlock[4] = sub_100069020;
        aBlock[5] = v16;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000565DC;
        aBlock[3] = &unk_1000E1538;
        v17 = _Block_copy(aBlock);
        v18 = v12;
        v19 = v14;

        [v15 createUnsolicitedFeedbackFollowupForItem:v19 completion:v17];

        _Block_release(v17);

        return;
      }

      __break(1u);
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void sub_10005E754(void *a1, uint64_t a2)
{
  v2 = a2;
  sub_1000644F8(a1);
  v4 = a1;
  sub_100066DCC(v4, v4, v2);
}

void sub_10005E7F4(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  *(a3 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isCreatingFollowup) = 0;
  if (!a1 || a2)
  {
    v14 = static os_log_type_t.error.getter();
    v15 = os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, *(a3 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log), "Failed to created unsolicited FFU", 33, 2, _swiftEmptyArrayStorage);
    if (*(a3 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isSubmitting) == 1)
    {
      sub_10005F390(v15, v16);
    }
  }

  else
  {
    v7 = a1;
    sub_10005D090(a1);
    a4();
    v8 = (a3 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_createFollowupSavedHandler);
    v9 = *(a3 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_createFollowupSavedHandler);
    if (v9)
    {
      v10 = v8[1];

      v9(v11);
      sub_10004BA44(v9, v10);
      v12 = *v8;
      v13 = v8[1];
      *v8 = 0;
      v8[1] = 0;

      sub_10004BA44(v12, v13);
    }
  }
}

uint64_t sub_10005E904(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, *(a2 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log), "User tried to submit FFU without files, then tapped gather&submit", 65, 2, _swiftEmptyArrayStorage);
  v6 = *(a2 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_devicesController);
  if (v6)
  {
    [v6 gatherAllMissingRequirementsWithAnswers:0];
  }

  return a3(0);
}

void sub_10005E994(int a1)
{
  v2 = v1;
  HIDWORD(v50) = a1;
  v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isSubmitting] = 1;
  sub_10005CDE4();
  v3 = static os_log_type_t.default.getter();
  v4 = *&v2[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log];
  sub_100041AA0(&unk_100109860, qword_1000C2DA0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000C2520;
  v52 = OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_followup;
  v6 = *&v2[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_followup];
  if (!v6)
  {
    *(v5 + 56) = &type metadata for Int;
    *(v5 + 64) = &protocol witness table for Int;
    *(v5 + 32) = 0;
LABEL_5:
    v10 = OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_contentItem;
    v11 = *&v2[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_contentItem];
    if (v11)
    {
      v12 = [v11 ID];
      if (v12)
      {
        v13 = v12;
        v14 = [v12 unsignedIntegerValue];

        *(v5 + 96) = &type metadata for UInt;
        *(v5 + 104) = &protocol witness table for UInt;
        *(v5 + 72) = v14;
        *(v5 + 136) = &type metadata for Bool;
        *(v5 + 144) = &protocol witness table for Bool;
        *(v5 + 112) = BYTE4(v50) & 1;
        os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v4, "Submitting FFU [%lu] Item: [%lu] opt out? [%i]. Will submit", v49, v50, v52);

        v15 = [objc_opt_self() sharedApplication];
        *&aBlock = 0;
        *(&aBlock + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(31);

        strcpy(&aBlock, "FFU-sub:item");
        BYTE13(aBlock) = 0;
        HIWORD(aBlock) = -5120;
        v16 = *&v2[v10];
        if (v16)
        {
          [v16 ID];
          sub_100041AA0(&unk_10010A0B0, &qword_1000C3078);
          v17._countAndFlagsBits = String.init<A>(describing:)();
          String.append(_:)(v17);

          v18._countAndFlagsBits = 45;
          v18._object = 0xE100000000000000;
          String.append(_:)(v18);
          v19 = *&v2[v53];
          if (!v19 || (isa = [v19 ID]) == 0)
          {
            sub_1000497E4(0, &qword_1001099A0, NSNumber_ptr);
            isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
          }

          v21 = [(objc_class *)isa description];
          v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v24 = v23;

          v25._countAndFlagsBits = v22;
          v25._object = v24;
          String.append(_:)(v25);

          v26._countAndFlagsBits = 0x63696C6F736E752DLL;
          v26._object = 0xEC00000064657469;
          String.append(_:)(v26);
          if (v2[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isUnsolicited])
          {
            v27 = 1702195828;
          }

          else
          {
            v27 = 0x65736C6166;
          }

          if (v2[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isUnsolicited])
          {
            v28 = 0xE400000000000000;
          }

          else
          {
            v28 = 0xE500000000000000;
          }

          v29 = v28;
          String.append(_:)(*&v27);

          v30 = aBlock;
          v31 = swift_allocObject();
          *(v31 + 16) = 0;
          *(v31 + 24) = 1;
          v32 = String._bridgeToObjectiveC()();
          v33 = swift_allocObject();
          *(v33 + 16) = v2;
          *(v33 + 24) = v30;
          *(v33 + 40) = v15;
          *(v33 + 48) = v31;
          v57 = sub_100068D2C;
          v58 = v33;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          v55 = sub_100088474;
          v56 = &unk_1000E1358;
          v34 = _Block_copy(&aBlock);
          v35 = v2;

          v36 = v15;

          v37 = [v36 beginBackgroundTaskWithName:v32 expirationHandler:v34];
          _Block_release(v34);

          swift_beginAccess();
          *(v31 + 16) = v37;
          *(v31 + 24) = 0;
          v38 = sub_10005F750();
          v39 = [objc_opt_self() sharedInstance];
          v40 = *&v2[v53];
          if (v40)
          {
            v41 = v39;
            v42 = v40;
            sub_100072C74(v38);
            v43.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

            v44 = *&v35[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_devicesController];
            if (v44)
            {
              v45 = v44;

              v46 = swift_allocObject();
              *(v46 + 16) = v35;
              v57 = sub_100068D3C;
              v58 = v46;
              *&aBlock = _NSConcreteStackBlock;
              *(&aBlock + 1) = 1107296256;
              v55 = sub_10005B208;
              v56 = &unk_1000E13A8;
              v47 = _Block_copy(&aBlock);
              v48 = v35;

              [v41 beginSubmissionForFollowup:v42 withResponses:v43.super.isa didOptOut:v51 & 1 withCollector:v45 completion:v47];
              _Block_release(v47);

              return;
            }

            goto LABEL_24;
          }

LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

LABEL_22:
        __break(1u);
        goto LABEL_23;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_22;
  }

  v7 = [v6 ID];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 unsignedIntegerValue];

    v56 = &type metadata for UInt;
    v57 = &protocol witness table for UInt;
    *&aBlock = v9;
    sub_100068C00(&aBlock, v5 + 32);
    goto LABEL_5;
  }

LABEL_25:
  __break(1u);
}

uint64_t sub_10005EFDC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = static os_log_type_t.error.getter();
  v11 = *(a1 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log);
  sub_100041AA0(&unk_100109860, qword_1000C2DA0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1000C29F0;
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = sub_100047484();
  *(v12 + 32) = a2;
  *(v12 + 40) = a3;

  os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, v11, "background task expired for followup submission [%{public}@]", 60, 2, v12);

  result = swift_beginAccess();
  if (*(a5 + 24))
  {
    __break(1u);
  }

  else
  {
    [a4 endBackgroundTask:*(a5 + 16)];
    result = swift_beginAccess();
    *(a5 + 16) = UIBackgroundTaskInvalid;
    *(a5 + 24) = 0;
  }

  return result;
}

id sub_10005F11C(uint64_t a1, char *a2)
{
  if (a1)
  {
    swift_errorRetain();
    v3 = static os_log_type_t.error.getter();
    v4 = *&a2[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log];
    sub_100041AA0(&unk_100109860, qword_1000C2DA0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1000C29F0;
    swift_errorRetain();
    sub_100041AA0(&qword_100109968, &unk_1000C3080);
    v6 = String.init<A>(describing:)();
    v8 = v7;
    *(v5 + 56) = &type metadata for String;
    *(v5 + 64) = sub_100047484();
    *(v5 + 32) = v6;
    *(v5 + 40) = v8;
    os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v4, "Submission Error: [%{public}@]", 30, 2, v5);

    sub_10005F390(v9, v10);
  }

  v12 = static os_log_type_t.default.getter();
  v13 = *&a2[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log];
  sub_100041AA0(&unk_100109860, qword_1000C2DA0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1000C29F0;
  result = *&a2[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_followup];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  result = [result ID];
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v15 = result;
  v16 = [result integerValue];

  *(v14 + 56) = &type metadata for Int;
  *(v14 + 64) = &protocol witness table for Int;
  *(v14 + 32) = v16;
  os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, v13, "FFU Submission Success: [%li]", v22);

  v19 = sub_1000642E4(v17, v18);
  if (v19)
  {
    v20 = v19;
    v21 = [objc_opt_self() sharedInstance];
    [v21 deleteSession:v20];
  }

  return [a2 dismissViewControllerAnimated:1 completion:0];
}

void sub_10005F390(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_self();
  v4 = [v3 mainBundle];
  v21._object = 0xE000000000000000;
  v5._object = 0x80000001000CC520;
  v5._countAndFlagsBits = 0xD000000000000015;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v21._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v21);

  v7 = [v3 mainBundle];
  v22._object = 0xE000000000000000;
  v8._countAndFlagsBits = 0xD000000000000017;
  v8._object = 0x80000001000CC540;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v22._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, v7, v9, v22);

  v10 = String._bridgeToObjectiveC()();

  v11 = String._bridgeToObjectiveC()();

  v12 = [objc_opt_self() alertControllerWithTitle:v10 message:v11 preferredStyle:1];

  v13 = [v3 mainBundle];
  v23._object = 0xE000000000000000;
  v14._countAndFlagsBits = 19279;
  v14._object = 0xE200000000000000;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  v23._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, v13, v15, v23);

  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v17 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_100068CC4;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100040DDC;
  aBlock[3] = &unk_1000E12E0;
  v18 = _Block_copy(aBlock);

  v19 = [objc_opt_self() actionWithTitle:v17 style:0 handler:v18];
  _Block_release(v18);

  [v12 addAction:v19];
  [v2 presentViewController:v12 animated:1 completion:0];
}

void sub_10005F684(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = static os_log_type_t.default.getter();
    v5 = *&v3[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log];
    os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, v5, "Submission failed. Will not dismiss the view", 44, 2, _swiftEmptyArrayStorage);

    v3[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_submissionFailed] = 1;
    v6 = v3[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_readinessState];
    v3[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_readinessState] = 4;
    sub_10005C818(v6);
  }
}

void *sub_10005F750()
{
  v1 = v0;
  sub_1000612D0();
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  v5 = sub_100063AC4();
  sub_100081380();
  v7 = v6;
  v9 = v8;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100066A28(v7, v9, v2, v4, isUniquelyReferenced_nonNull_native);

  result = &_swiftEmptyDictionarySingleton;
  v12 = *(v1 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_validationChoice);
  if (v12 != 2 && (*(v1 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isUnsolicited) & 1) == 0 && *(v1 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_followup))
  {
    v13 = [*(v1 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_followup) type];
    if (v13 == 7 || v13 == 4)
    {
      if (v12)
      {
        v15 = 1702195828;
      }

      else
      {
        v15 = 0x65736C6166;
      }

      if (v12)
      {
        v16 = 0xE400000000000000;
      }

      else
      {
        v16 = 0xE500000000000000;
      }

      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;
      v20 = swift_isUniquelyReferenced_nonNull_native();
      sub_100066A28(v15, v16, v17, v19, v20);

      return &_swiftEmptyDictionarySingleton;
    }

    else
    {
      return &_swiftEmptyDictionarySingleton;
    }
  }

  return result;
}

void sub_10005F8DC(uint64_t a1)
{
  v2 = static os_log_type_t.default.getter();
  v3 = *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log];
  sub_100041AA0(&unk_100109860, qword_1000C2DA0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000C2530;
  v5 = *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_followup];
  if (v5)
  {
    v6 = [v5 ID];
    if (!v6)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v7 = v6;
    v8 = [v6 unsignedIntegerValue];

    v26 = &type metadata for UInt;
    v27 = &protocol witness table for UInt;
    *&v25 = v8;
    sub_100068C00(&v25, v4 + 32);
  }

  else
  {
    *(v4 + 56) = &type metadata for Int;
    *(v4 + 64) = &protocol witness table for Int;
    *(v4 + 32) = 0;
  }

  v9 = *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_contentItem];
  if (!v9)
  {
    __break(1u);
    goto LABEL_17;
  }

  v10 = [v9 ID];
  if (!v10)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = v10;
  v12 = [v10 unsignedIntegerValue];

  *(v4 + 96) = &type metadata for UInt;
  *(v4 + 104) = &protocol witness table for UInt;
  *(v4 + 72) = v12;
  os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, v3, "User did tap cancel for FFU [%lu] Item: [%lu]", v24, v25);

  if (v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_readinessState] == 5)
  {
    return;
  }

  v13 = sub_100063AC4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  v15 = Strong;

  v16 = v15[OBJC_IVAR____TtC18Feedback_Assistant20FBAExpandingTextView_isEditing];
  if (v16 == 1)
  {
    v17 = *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___cachedCommentsCell];
    v18 = swift_unknownObjectWeakLoadStrong();
    if (v18)
    {
      v19 = v18;
      v20 = v17;
      [v19 resignFirstResponder];

      return;
    }

    goto LABEL_20;
  }

  v21 = [v1 isModalInPresentation];
  if (v21)
  {
    v23 = sub_1000600B8(v21, v22);
    [v1 presentViewController:v23 animated:1 completion:0];
  }

  else
  {
    sub_10005FB8C(v21);
  }
}

void sub_10005FB8C(uint64_t a1)
{
  HIDWORD(v33) = static os_log_type_t.default.getter();
  v2 = *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log];
  sub_100041AA0(&unk_100109860, qword_1000C2DA0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1000C2530;
  v31 = OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_followup;
  v4 = *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_followup];
  if (v4)
  {
    v5 = [v4 ID];
    if (!v5)
    {
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      return;
    }

    v6 = v5;
    v7 = [v5 unsignedIntegerValue];

    v36 = &type metadata for UInt;
    v37 = &protocol witness table for UInt;
    *&aBlock = v7;
    sub_100068C00(&aBlock, v3 + 32);
  }

  else
  {
    *(v3 + 56) = &type metadata for Int;
    *(v3 + 64) = &protocol witness table for Int;
    *(v3 + 32) = 0;
  }

  v8 = OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_contentItem;
  v9 = *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_contentItem];
  if (!v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  v10 = [v9 ID];
  if (!v10)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v11 = v10;
  v12 = [v10 unsignedIntegerValue];

  *(v3 + 96) = &type metadata for UInt;
  *(v3 + 104) = &protocol witness table for UInt;
  *(v3 + 72) = v12;
  os_log(_:dso:log:_:_:)(HIDWORD(v33), &_mh_execute_header, v2, "Closing view for FFU [%lu] Item: [%lu]", v31, v33);

  v13 = v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_readinessState];
  v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_readinessState] = 3;
  sub_10005C818(v13);
  [*&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_devicesController] abortAllSessions];
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  *(v14 + 24) = v2;
  if (v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isUnsolicited] == 1)
  {
    v15 = *&v1[v32];
    if (v15)
    {
      v16 = objc_opt_self();
      v17 = v2;
      v18 = v1;
      v19 = v15;
      v20 = [v16 sharedInstance];
      v21 = *&v1[v8];
      if (v21)
      {
        v22 = v20;
        v23 = swift_allocObject();
        v23[2] = v18;
        v23[3] = sub_100068C58;
        v23[4] = v14;
        v37 = sub_100068CB8;
        v38 = v23;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        v35 = sub_10005B208;
        v36 = &unk_1000E1268;
        v24 = _Block_copy(&aBlock);
        v25 = v18;
        v26 = v21;

        [v22 deleteUnsolicitedFollowup:v19 withFeedbackItem:v26 completion:v24];

        _Block_release(v24);

        return;
      }

      goto LABEL_16;
    }
  }

  v27 = swift_allocObject();
  *(v27 + 16) = v2;
  v37 = sub_100068C60;
  v38 = v27;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v35 = sub_100088474;
  v36 = &unk_1000E1218;
  v28 = _Block_copy(&aBlock);
  v29 = v2;
  v30 = v1;

  [v30 dismissViewControllerAnimated:1 completion:v28];
  _Block_release(v28);
}

void sub_10005FF90(void *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v7[4] = sub_100068FEC;
  v7[5] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_100088474;
  v7[3] = &unk_1000E12B8;
  v5 = _Block_copy(v7);
  v6 = a2;

  [a1 dismissViewControllerAnimated:1 completion:v5];
  _Block_release(v5);
}

id sub_1000600B8(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_self();
  v4 = [v3 mainBundle];
  v39._object = 0x80000001000CC390;
  v5._countAndFlagsBits = 0xD000000000000017;
  v5._object = 0x80000001000CC330;
  v6._countAndFlagsBits = 0xD000000000000034;
  v6._object = 0x80000001000CC350;
  v39._countAndFlagsBits = 0xD000000000000045;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v39);

  v7 = String._bridgeToObjectiveC()();

  v8 = [objc_opt_self() alertControllerWithTitle:0 message:v7 preferredStyle:0];

  v9 = [v3 mainBundle];
  v40._object = 0x80000001000CC400;
  v10._countAndFlagsBits = 0x6574656C6544;
  v11._object = 0x80000001000CC3E0;
  v40._countAndFlagsBits = 0xD00000000000004ELL;
  v11._countAndFlagsBits = 0xD000000000000011;
  v10._object = 0xE600000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v9, v10, v40);

  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  v13 = v2;
  v14 = String._bridgeToObjectiveC()();

  v37 = sub_100068BDC;
  v38 = v12;
  aBlock = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_100040DDC;
  v36 = &unk_1000E1178;
  v15 = _Block_copy(&aBlock);

  v16 = objc_opt_self();
  v17 = [v16 actionWithTitle:v14 style:2 handler:v15];
  _Block_release(v15);

  [v8 addAction:v17];
  v18 = [v3 mainBundle];
  v41._object = 0xED00006E6F747475;
  v19._countAndFlagsBits = 0x4C45434E4143;
  v20._countAndFlagsBits = 0x6C65636E6143;
  v41._countAndFlagsBits = 0x62206C65636E6143;
  v19._object = 0xE600000000000000;
  v20._object = 0xE600000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v19, 0, v18, v20, v41);

  v21 = String._bridgeToObjectiveC()();

  v37 = FBAMailboxesViewController.controller(_:didFinishLoadingDraft:devicesController:draftingController:);
  v38 = 0;
  aBlock = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_100040DDC;
  v36 = &unk_1000E11A0;
  v22 = _Block_copy(&aBlock);

  v23 = [v16 actionWithTitle:v21 style:1 handler:v22];
  _Block_release(v22);

  [v8 addAction:v23];
  v24 = v8;
  v25 = [v24 presentationController];
  if (v25)
  {
    v26 = v25;
    v27 = [v13 navigationItem];
    v28 = [v27 leftBarButtonItem];

    [v26 setBarButtonItem:v28];
  }

  v29 = [v24 popoverPresentationController];

  if (v29)
  {
    v30 = [v13 navigationItem];
    v31 = [v30 leftBarButtonItem];

    [v29 setSourceItem:v31];
  }

  return v24;
}

uint64_t sub_10006057C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (a1)
  {
    v5 = static os_log_type_t.error.getter();
    a1 = os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, *(a2 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log), "Failed to delete unsolicited FFU while closing. Will proceed anyways", 68, 2, _swiftEmptyArrayStorage);
  }

  return a3(a1, a2);
}

void sub_1000605EC(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_devicesController);
  if (v2)
  {
    v3 = *(v1 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_dataSource);
    if (v3)
    {
      v4 = v3;
      v5 = v2;
      dispatch thunk of UITableViewDiffableDataSource.itemIdentifier(for:)();

      if (!v11)
      {
        goto LABEL_6;
      }

      v6 = String._bridgeToObjectiveC()();
      v7 = [v5 maybeAttachmentWithIdentifier:v6];

      if (v7)
      {

        if ([v5 canDeleteAttachment:v7])
        {
LABEL_6:

          return;
        }

        v9 = [v5 canCancelAttachmentCollection:v7];
      }

      else
      {
        v8 = String._bridgeToObjectiveC()();

        v7 = [v5 maybeDeviceWithIdentifier:v8];

        if (!v7)
        {
          goto LABEL_6;
        }

        v9 = [v5 canRemoveDevice:v7];
      }

      v10 = v9;

      if ((v10 & 1) == 0)
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10006087C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = static os_log_type_t.default.getter();
    v6 = OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log;
    v7 = *&v4[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log];
    sub_100041AA0(&unk_100109860, qword_1000C2DA0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1000C29F0;
    *(v8 + 56) = &type metadata for Int;
    *(v8 + 64) = &protocol witness table for Int;
    *(v8 + 32) = a1;
    v9 = v7;
    os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, v9, "Validation choice picked [%i]", v14);

    if (a1)
    {
      if (a1 == 2)
      {
        v10 = v4[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_validationChoice];
        v4[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_validationChoice] = 1;
        if (v10 != 2 && (v10 & 1) != 0)
        {
          goto LABEL_12;
        }
      }

      else
      {
        if (a1 != 1)
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
          return;
        }

        v13 = v4[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_validationChoice];
        v4[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_validationChoice] = 0;
        if (v13 != 2 && (v13 & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      sub_10006256C(0, 0, 0, 0, 0, 0);
      sub_10005CDE4();
    }

    else
    {
      v11 = static os_log_type_t.debug.getter();
      v12 = *&v4[v6];
      os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "No choice picked", 16, 2, _swiftEmptyArrayStorage);

      v4 = v12;
    }

LABEL_12:
  }
}

uint64_t sub_100060A74(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_100060BC0(char *a1)
{
  v2 = sub_100041AA0(&qword_10010A018, &unk_1000C3058);
  v3 = __chkstk_darwin(v2 - 8);
  v40 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v7 = &v39 - v6;
  __chkstk_darwin(v5);
  v9 = &v39 - v8;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v41 = *(v14 - 8);
  v42 = v14;
  __chkstk_darwin(v14);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v18 = [a1 view];
  if (!v18)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v18;
  v20 = [v18 window];

  if (!v20)
  {
    v23 = v11;
    v22 = *&a1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_dataSource];
    if (v22)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

  v21 = OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_dataSource;
  v22 = *&a1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_dataSource];
  if (!v22)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v22[qword_100109DE8])
  {
    v23 = v11;
LABEL_7:
    v24 = v22[qword_100109DE8];
    v25 = static os_log_type_t.debug.getter();
    v26 = *&a1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log];
    if (v24)
    {
      os_log(_:dso:log:_:_:)(v25, &_mh_execute_header, v26, "updateTableView called before finishing first update. Will perform async", 72, 2, _swiftEmptyArrayStorage);
    }

    else
    {
      os_log(_:dso:log:_:_:)(v25, &_mh_execute_header, v26, "updateTableView called but view is not in window yet. Will perform async", 72, 2, _swiftEmptyArrayStorage);
    }

    sub_1000497E4(0, &qword_100109970, OS_dispatch_queue_ptr);
    v27 = static OS_dispatch_queue.main.getter();
    v28 = swift_allocObject();
    *(v28 + 16) = 0;
    *(v28 + 24) = a1;
    *(v28 + 32) = 1;
    *(v28 + 40) = sub_100066348;
    *(v28 + 48) = v17;
    aBlock[4] = sub_100066354;
    aBlock[5] = v28;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100088474;
    aBlock[3] = &unk_1000E0F98;
    v29 = _Block_copy(aBlock);
    v30 = a1;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100068EF4(&qword_100108F80, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100041AA0(&unk_100109980, &qword_1000C1B50);
    sub_100041AE8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v29);

    (*(v23 + 8))(v13, v10);
    (*(v41 + 8))(v16, v42);
    goto LABEL_15;
  }

  v22[qword_100109DE8] = 1;
  v31 = sub_100041AA0(&unk_10010A020, &qword_1000C3068);
  v32 = *(v31 - 8);
  v33 = *(v32 + 56);
  v33(v9, 1, 1, v31);
  v34 = v22;
  dispatch thunk of UITableViewDiffableDataSource.snapshot()();

  v33(v7, 0, 1, v31);
  sub_100066370(v7, v9);
  v35 = *&a1[v21];
  if (!v35)
  {
    goto LABEL_19;
  }

  v36 = v40;
  sub_1000663E0(v9, v40);
  if ((*(v32 + 48))(v36, 1, v31) == 1)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v37 = v35;
  dispatch thunk of UITableViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

  (*(v32 + 8))(v36, v31);
  v38 = *&a1[v21];
  if (v38)
  {
    *(v38 + qword_100109DE8) = 0;
    sub_1000454C8(v9, &qword_10010A018, &unk_1000C3058);
LABEL_15:

    return;
  }

LABEL_21:
  __break(1u);
}

void sub_1000611B8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_100063AC4();
    v4 = *&v2[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_keyboardHeight];
    v5 = [v2 tableView];
    if (v5)
    {
      v6 = v5;
      v7 = swift_unknownObjectWeakLoadStrong();
      if (v7)
      {
        v8 = v7;
        v9 = swift_unknownObjectWeakLoadStrong();
        if (v9)
        {
          v10 = v9;
          [v9 frame];
          v12 = v11;

          [v8 fbkScrollTableToAvoidKeyboardInTableView:v6 keyboardHeight:v4 withPadding:v12];
          return;
        }

LABEL_9:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t sub_1000612D0()
{
  v1 = OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___requiresComments;
  LODWORD(v2) = *(v0 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___requiresComments);
  if (v2 == 2)
  {
    if (*(v0 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isUnsolicited))
    {
      LOBYTE(v2) = 1;
    }

    else
    {
      v2 = *(v0 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_followup);
      if (v2)
      {
        LOBYTE(v2) = [v2 requiresComments];
      }
    }

    *(v0 + v1) = v2;
  }

  return v2 & 1;
}

char *sub_10006133C(void *a1, uint64_t a2, uint64_t a3, id a4)
{
  v8 = static os_log_type_t.debug.getter();
  v9 = *&v4[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log];
  sub_100041AA0(&unk_100109860, qword_1000C2DA0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1000C29F0;
  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = sub_100047484();
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;

  os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v9, "cellForRow with identifier %@", 29, 2, v10);

  if (a3 == 0xD000000000000014 && 0x80000001000C2EC0 == a4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return sub_100063C40();
  }

  if (qword_100109D10 == a3 && off_100109D18 == a4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v12 = String._bridgeToObjectiveC()();
    v13 = v4;
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v15 = [a1 dequeueReusableCellWithIdentifier:v12 forIndexPath:isa];

    v16 = v15;
    v17 = v13;
    a4 = sub_10006395C();
    [a4 separatorInset];
    v19 = v18;

    if (v16)
    {
      [v16 setSeparatorInset:{0.0, v19, 0.0, 0.0}];

      if (qword_100108DE0 != -1)
      {
        swift_once();
      }

      if (byte_10010CEB8 != 1)
      {
        return v16;
      }

      type metadata accessor for FBAAddAttachmentsCell(0, v20);
      v21 = swift_dynamicCastClass();
      if (!v21)
      {
        return v16;
      }

      v22 = v21;
      v16 = v16;
      v23 = v17;
      v24 = sub_10005D2A8();
      a4 = sub_10004F894(v23);

      v25 = *(v22 + OBJC_IVAR____TtC18Feedback_Assistant21FBAAddAttachmentsCell_button);
      if (v25)
      {
        [v25 setMenu:a4];

        return v16;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_64;
  }

  v26 = v4;
  v27 = sub_100063AC4();
  v29 = *&v27[OBJC_IVAR____TtC18Feedback_Assistant25FBAExpandingTextInputCell_itemIdentifier];
  v28 = *&v27[OBJC_IVAR____TtC18Feedback_Assistant25FBAExpandingTextInputCell_itemIdentifier + 8];

  if (v29 == a3 && v28 == a4)
  {

    goto LABEL_29;
  }

  v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v31)
  {
LABEL_29:
    v32 = *&v26[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___cachedCommentsCell];
    v33 = *&v26[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_followup];
    v34 = v33;
    v16 = v32;
    sub_100081234(v33, v35);

    return v16;
  }

  if ((a3 != 0xD00000000000001ALL || 0x80000001000C2EA0 != a4) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v36._countAndFlagsBits = 0xD000000000000015;
    v36._object = 0x80000001000CC2E0;
    if (String.hasPrefix(_:)(v36))
    {
      v37 = [v26 tableView];
      if (v37)
      {
        v38 = v37;
        v39 = String._bridgeToObjectiveC()();
        v40 = IndexPath._bridgeToObjectiveC()().super.isa;
        a4 = [v38 dequeueReusableCellWithIdentifier:v39 forIndexPath:v40];

        type metadata accessor for FBAFFUValidationCell(0, v41);
        v42 = swift_dynamicCastClass();
        if (!v42)
        {
LABEL_66:

LABEL_71:
          result = _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
          return result;
        }

        v16 = v42;
        v43 = v26[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_validationChoice];
        *(v42 + OBJC_IVAR____TtC18Feedback_Assistant20FBAFFUValidationCell_choice) = v43;
        a4 = a4;
        sub_100086BEC(v43, v44);
        v45 = *&v26[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_followup];
        if (v45)
        {
          v46 = v45;
          v47 = [v46 choiceText];
          if (!v47)
          {
LABEL_65:
            __break(1u);
            goto LABEL_66;
          }

          v48 = v47;
          v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v51 = v50;

          v52 = &v16[OBJC_IVAR____TtC18Feedback_Assistant20FBAFFUValidationCell_validationQuery];
          *v52 = v49;
          v52[1] = v51;

          v53 = [v16 textLabel];
          if (v53)
          {
            v54 = v53;

            v55 = String._bridgeToObjectiveC()();

            [v54 setText:v55];
          }
        }

        return v16;
      }

LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    v56 = *&v26[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_devicesController];
    if (v56)
    {
      v57 = v56;
      v58 = String._bridgeToObjectiveC()();
      v59 = [v57 maybeDeviceWithIdentifier:v58];

      v60 = String._bridgeToObjectiveC()();
      v61 = [v57 maybeAttachmentWithIdentifier:v60];

      if (v59)
      {
        v62 = [objc_opt_self() reuseIdentifier];
        if (!v62)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v62 = String._bridgeToObjectiveC()();
        }

        v63 = IndexPath._bridgeToObjectiveC()().super.isa;
        v64 = [a1 dequeueReusableCellWithIdentifier:v62 forIndexPath:v63];

        objc_opt_self();
        v65 = swift_dynamicCastObjCClass();
        if (v65)
        {
          v16 = v65;
          v66 = v64;
          [v16 updateWithDevice:v59];
          if (sub_100061CBC(a3, a4, 1852399949, 0xE400000000000000))
          {
            sub_100063F88();
          }

          else
          {
            sub_100063E10();
          }

          UITableViewCell.updateWithSeparatorSpacing(_:)();

LABEL_61:
          return v16;
        }

        goto LABEL_70;
      }

      if (v61)
      {
        v67 = [objc_opt_self() reuseIdentifier];
        if (!v67)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v67 = String._bridgeToObjectiveC()();
        }

        v68 = IndexPath._bridgeToObjectiveC()().super.isa;
        v64 = [a1 dequeueReusableCellWithIdentifier:v67 forIndexPath:v68];

        objc_opt_self();
        v69 = swift_dynamicCastObjCClass();
        if (v69)
        {
          v16 = v69;
          v66 = v64;
          [v16 setShowsIcon:0];
          v70 = [v16 setAttachment:v61];
          v72 = sub_1000642E4(v70, v71);
          if (v72)
          {
            v73 = v72;
            if ([v61 state] == 8)
            {
              [v16 updateDeferredStateWith:v73];
            }
          }

          if (sub_100061CBC(a3, a4, 1852399949, 0xE400000000000000))
          {
            sub_100063F88();
          }

          else
          {
            sub_100063E10();
          }

          UITableViewCell.updateWithSeparatorSpacing(_:)();
          [v16 updateSuperviewToAttachmentLabelSpacing:sub_100063E10()];

          goto LABEL_61;
        }

LABEL_70:

        goto LABEL_71;
      }
    }

    _StringGuts.grow(_:)(41);

    v74._countAndFlagsBits = a3;
    v74._object = a4;
    String.append(_:)(v74);
    goto LABEL_71;
  }

  return sub_10006395C();
}

uint64_t sub_100061CBC(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v9 = sub_100041AA0(&unk_10010A020, &qword_1000C3068);
  v10 = *(v9 - 8);
  result = __chkstk_darwin(v9);
  v13 = &v26[-v12];
  v14 = *(v4 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_dataSource);
  if (v14)
  {
    v15 = v14;
    dispatch thunk of UITableViewDiffableDataSource.snapshot()();

    v27 = a3;
    v28 = a4;
    v16 = NSDiffableDataSourceSnapshot.itemIdentifiers(inSection:)();
    (*(v10 + 8))(v13, v9);
    v17 = *(v16 + 16);
    if (v17)
    {
      a4 = 0;
      v18 = (v16 + 40);
      while (1)
      {
        v19 = *(v18 - 1);
        if (v19 == a1 && *v18 == a2)
        {
          break;
        }

        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
        if (v19)
        {
          break;
        }

        ++a4;
        v18 += 2;
        if (v17 == a4)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v25 = 0;
      v24 = 914;
      v19 = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    v27 = qword_100109D10;
    v28 = off_100109D18;
    __chkstk_darwin(v19);
    v24 = &v27;

    v21 = sub_100066D28(sub_100068B4C, &v26[-32], v16);
    v23 = v22;

    if (v23)
    {
      goto LABEL_16;
    }

    if (!__OFSUB__(v21, 1))
    {
      return v21 - 1 == a4;
    }

    __break(1u);
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

void *sub_100061F1C()
{
  v1 = objc_allocWithZone(FBKSectionIdentifierGroup);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 initWithSectionIdentifier:v2];

  v4 = [v3 givenRowIdentifiers];
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_100077778(0, *(v5 + 16) + 1, 1, v5);
  }

  v7 = *(v5 + 16);
  v6 = *(v5 + 24);
  if (v7 >= v6 >> 1)
  {
    v5 = sub_100077778((v6 > 1), v7 + 1, 1, v5);
  }

  *(v5 + 16) = v7 + 1;
  v8 = v5 + 16 * v7;
  *(v8 + 32) = 0xD000000000000014;
  *(v8 + 40) = 0x80000001000C2EC0;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 setGivenRowIdentifiers:isa];

  sub_10005D3B4(v10, v11);
  v12 = String.count.getter();

  if (v12 >= 1)
  {
    v13 = [v3 givenRowIdentifiers];
    v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_100077778(0, *(v14 + 16) + 1, 1, v14);
    }

    v16 = *(v14 + 16);
    v15 = *(v14 + 24);
    if (v16 >= v15 >> 1)
    {
      v14 = sub_100077778((v15 > 1), v16 + 1, 1, v14);
    }

    *(v14 + 16) = v16 + 1;
    v17 = v14 + 16 * v16;
    *(v17 + 32) = 0xD00000000000001ALL;
    *(v17 + 40) = 0x80000001000C2EA0;
    v18 = Array._bridgeToObjectiveC()().super.isa;

    [v3 setGivenRowIdentifiers:v18];
  }

  if ((*(v0 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isUnsolicited) & 1) == 0)
  {
    v19 = *(v0 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_followup);
    if (v19)
    {
      v20 = [v19 type];
      if (v20 == 7 || v20 == 4)
      {
        v21 = sub_10005D578();
        v23 = v22;
        v24 = [v3 givenRowIdentifiers];
        v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_100077778(0, *(v25 + 16) + 1, 1, v25);
        }

        v27 = *(v25 + 16);
        v26 = *(v25 + 24);
        v28 = v27 + 1;
        if (v27 >= v26 >> 1)
        {
          v55 = sub_100077778((v26 > 1), v27 + 1, 1, v25);
          v28 = v27 + 1;
          v25 = v55;
        }

        *(v25 + 16) = v28;
        v29 = v25 + 16 * v27;
        *(v29 + 32) = v21;
        *(v29 + 40) = v23;
        v30 = Array._bridgeToObjectiveC()().super.isa;

        [v3 setGivenRowIdentifiers:v30];
      }
    }
  }

  v31 = sub_100063AC4();
  v33 = *&v31[OBJC_IVAR____TtC18Feedback_Assistant25FBAExpandingTextInputCell_itemIdentifier];
  v32 = *&v31[OBJC_IVAR____TtC18Feedback_Assistant25FBAExpandingTextInputCell_itemIdentifier + 8];

  v34 = [v3 givenRowIdentifiers];
  v35 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v35 = sub_100077778(0, *(v35 + 16) + 1, 1, v35);
  }

  v37 = *(v35 + 16);
  v36 = *(v35 + 24);
  if (v37 >= v36 >> 1)
  {
    v35 = sub_100077778((v36 > 1), v37 + 1, 1, v35);
  }

  *(v35 + 16) = v37 + 1;
  v38 = v35 + 16 * v37;
  *(v38 + 32) = v33;
  *(v38 + 40) = v32;
  v39 = Array._bridgeToObjectiveC()().super.isa;

  [v3 setGivenRowIdentifiers:v39];

  v40 = *(v0 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_devicesController);
  if (v40)
  {
    v41 = [v40 generateSnapshotIdentifiersTrackingLastDevice:1];
    v42 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v43 = [v3 givenRowIdentifiers];
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100074870(v42);
    v44 = Array._bridgeToObjectiveC()().super.isa;

    [v3 setGivenRowIdentifiers:v44];
  }

  v46 = qword_100109D10;
  v45 = off_100109D18;

  v47 = [v3 givenRowIdentifiers];
  v48 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v48 = sub_100077778(0, *(v48 + 16) + 1, 1, v48);
  }

  v50 = *(v48 + 16);
  v49 = *(v48 + 24);
  if (v50 >= v49 >> 1)
  {
    v48 = sub_100077778((v49 > 1), v50 + 1, 1, v48);
  }

  *(v48 + 16) = v50 + 1;
  v51 = v48 + 16 * v50;
  *(v51 + 32) = v46;
  *(v51 + 40) = v45;
  v52 = Array._bridgeToObjectiveC()().super.isa;

  [v3 setGivenRowIdentifiers:v52];

  v53 = v3;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  return _swiftEmptyArrayStorage;
}

void sub_10006256C(int a1, char a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v78 = a5;
  v79 = a6;
  v80 = a1;
  v11 = sub_100041AA0(&qword_10010A018, &unk_1000C3058);
  v12 = __chkstk_darwin(v11 - 8);
  v77 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v75 - v15;
  __chkstk_darwin(v14);
  v88 = &v75 - v17;
  v18 = type metadata accessor for DispatchWorkItemFlags();
  v89 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v87 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = v7;
  v24 = [v7 view];
  if (!v24)
  {
    goto LABEL_53;
  }

  v25 = v24;
  v26 = [v24 window];

  if (!v26)
  {
    v28 = v81;
    v27 = *&v81[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_dataSource];
    if (!v27)
    {
      goto LABEL_55;
    }

    goto LABEL_7;
  }

  v76 = OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_dataSource;
  v27 = *&v81[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_dataSource];
  if (!v27)
  {
    goto LABEL_54;
  }

  if (v27[qword_100109DE8])
  {
    v28 = v81;
LABEL_7:
    v29 = v27[qword_100109DE8];
    v30 = static os_log_type_t.debug.getter();
    v31 = *&v28[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log];
    if (v29)
    {
      os_log(_:dso:log:_:_:)(v30, &_mh_execute_header, v31, "updateTableView called before finishing first update. Will perform async", 72, 2, _swiftEmptyArrayStorage);
    }

    else
    {
      os_log(_:dso:log:_:_:)(v30, &_mh_execute_header, v31, "updateTableView called but view is not in window yet. Will perform async", 72, 2, _swiftEmptyArrayStorage);
    }

    if (a4 <= 2)
    {
      sub_1000497E4(0, &qword_100109970, OS_dispatch_queue_ptr);
      v88 = static OS_dispatch_queue.main.getter();
      v32 = swift_allocObject();
      *(v32 + 16) = a4;
      *(v32 + 24) = v28;
      *(v32 + 32) = v80 & 1;
      v33 = v78;
      v34 = v79;
      *(v32 + 40) = v78;
      *(v32 + 48) = v34;
      v94 = sub_100069004;
      v95 = v32;
      aBlock = _NSConcreteStackBlock;
      v91 = 1107296256;
      v92 = sub_100088474;
      v93 = &unk_1000E1128;
      v35 = _Block_copy(&aBlock);
      v36 = v28;
      sub_10004374C(v33, v34);

      static DispatchQoS.unspecified.getter();
      aBlock = _swiftEmptyArrayStorage;
      sub_100068EF4(&qword_100108F80, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100041AA0(&unk_100109980, &qword_1000C1B50);
      sub_100041AE8();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v37 = v88;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v35);

      (*(v89 + 8))(v20, v18);
      (*(v87 + 8))(v23, v21);
    }

    return;
  }

  if ((a2 & 1) == 0)
  {
    v38 = static os_log_type_t.info.getter();
    v39 = v81;
    v40 = *&v81[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log];
    sub_100041AA0(&unk_100109860, qword_1000C2DA0);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1000C2530;
    *(v41 + 56) = &type metadata for Bool;
    *(v41 + 64) = &protocol witness table for Bool;
    *(v41 + 32) = v80 & 1;
    *(v41 + 96) = &type metadata for Bool;
    *(v41 + 104) = &protocol witness table for Bool;
    *(v41 + 72) = a3 & 1;
    os_log(_:dso:log:_:_:)(v38, &_mh_execute_header, v40, "updateTableView animated? [%i] reuse? [%i]", v75, v76);

    v27 = *&v39[v76];
    if (!v27)
    {
      goto LABEL_59;
    }
  }

  v27[qword_100109DE8] = 1;
  v42 = sub_100041AA0(&unk_10010A020, &qword_1000C3068);
  v43 = *(v42 - 8);
  v44 = *(v43 + 56);
  v45 = v88;
  v44(v88, 1, 1, v42);
  if (a3)
  {
    v46 = v27;
    dispatch thunk of UITableViewDiffableDataSource.snapshot()();

    v44(v16, 0, 1, v42);
    sub_100066370(v16, v45);
LABEL_42:
    v69 = v81;
    v71 = v76;
    v70 = v77;
    v72 = *&v81[v76];
    if (!v72)
    {
      goto LABEL_56;
    }

    sub_1000663E0(v45, v77);
    if ((*(v43 + 48))(v70, 1, v42) == 1)
    {
      goto LABEL_57;
    }

    v73 = v72;
    dispatch thunk of UITableViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

    (*(v43 + 8))(v70, v42);
    v74 = *&v69[v71];
    if (!v74)
    {
      goto LABEL_58;
    }

    *(v74 + qword_100109DE8) = 0;
    sub_1000454C8(v45, &qword_10010A018, &unk_1000C3058);
    return;
  }

  NSDiffableDataSourceSnapshot.init()();
  v44(v16, 0, 1, v42);
  sub_100066370(v16, v45);
  v47 = v81;
  v48 = sub_100061F1C();
  v49 = OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_modelSnapshot;
  *(v47 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_modelSnapshot) = v48;

  v50 = *(v47 + v49);
  v75 = v43;
  if (v50 >> 62)
  {
    goto LABEL_49;
  }

  for (i = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v52 = _swiftEmptyArrayStorage;
    v87 = v42;
    if (!i)
    {
      goto LABEL_28;
    }

    v89 = v49;
    aBlock = _swiftEmptyArrayStorage;

    sub_100077CEC(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v53 = 0;
    v52 = aBlock;
    do
    {
      if ((v50 & 0xC000000000000001) != 0)
      {
        v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v54 = *(v50 + 8 * v53 + 32);
      }

      v55 = v54;
      v56 = [v54 sectionIdentifier];
      v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v59 = v58;

      aBlock = v52;
      v61 = v52[2];
      v60 = v52[3];
      if (v61 >= v60 >> 1)
      {
        sub_100077CEC((v60 > 1), v61 + 1, 1);
        v52 = aBlock;
      }

      ++v53;
      v52[2] = (v61 + 1);
      v62 = &v52[2 * v61];
      v62[4] = v57;
      v62[5] = v59;
    }

    while (i != v53);

    v47 = v81;
    v42 = v87;
    v45 = v88;
    v49 = v89;
LABEL_28:
    v85 = *(v75 + 48);
    v86 = v75 + 48;
    if (v85(v45, 1, v42) == 1)
    {
      goto LABEL_60;
    }

    NSDiffableDataSourceSnapshot.appendSections(_:)(v52);
    v47 = *(v47 + v49);
    if (v47 >> 62)
    {
      v63 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v63 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v63)
    {
LABEL_41:

      v42 = v87;
      v45 = v88;
      v43 = v75;
      goto LABEL_42;
    }

    v49 = 0;
    v83 = v47 & 0xFFFFFFFFFFFFFF8;
    v84 = v47 & 0xC000000000000001;
    v82 = v52;
    while (1)
    {
      if (v84)
      {
        v64 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v49 >= *(v83 + 16))
        {
          goto LABEL_48;
        }

        v64 = *(v47 + 8 * v49 + 32);
      }

      v65 = v64;
      if (__OFADD__(v49, 1))
      {
        break;
      }

      v89 = v49 + 1;
      v66 = [v64 rowIdentifiers];
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = [v65 sectionIdentifier];
      v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v68;
      aBlock = v67;
      v91 = v68;
      v50 = v87;
      if (v85(v88, 1, v87) == 1)
      {
        goto LABEL_52;
      }

      NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

      ++v49;
      if (v89 == v63)
      {
        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    ;
  }

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
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
}

void sub_100062F74()
{
  v2 = v0;
  v3 = [v0 tableView];
  if (!v3)
  {
    __break(1u);
    goto LABEL_21;
  }

  v0 = v3;
  [v3 setEditing:0];

  v4 = [v2 tableView];
  if (!v4)
  {
LABEL_21:
    __break(1u);
LABEL_22:

    __break(1u);
    goto LABEL_23;
  }

  v5 = v4;
  v6 = sub_10005D2A8();
  [v5 setDropDelegate:v6];

  v7 = [objc_opt_self() reuseIdentifier];
  v8 = v7;
  v0 = v7;
  if (!v7)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v0 = String._bridgeToObjectiveC()();

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = String._bridgeToObjectiveC()();
  }

  v9 = objc_opt_self();
  v10 = v7;
  v11 = [v9 mainBundle];
  v12 = objc_opt_self();
  v13 = [v12 nibWithNibName:v8 bundle:v11];

  v1 = v13;
  v14 = [v2 tableView];
  if (!v14)
  {
    goto LABEL_22;
  }

  v15 = v14;
  [v14 registerNib:v1 forCellReuseIdentifier:v0];

  v16 = [v9 mainBundle];
  v17 = String._bridgeToObjectiveC()();
  v18 = [v12 nibWithNibName:v17 bundle:v16];

  v19 = v18;
  v20 = [v2 tableView];
  if (!v20)
  {
LABEL_23:
    __break(1u);
LABEL_24:

    __break(1u);
    goto LABEL_25;
  }

  v21 = v20;
  v22 = String._bridgeToObjectiveC()();
  [v21 registerNib:v19 forCellReuseIdentifier:v22];

  v23 = [objc_opt_self() reuseIdentifier];
  v24 = v23;
  v1 = v23;
  if (!v23)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1 = String._bridgeToObjectiveC()();

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = String._bridgeToObjectiveC()();
  }

  sub_1000497E4(0, &qword_10010A038, NSBundle_ptr);
  v25 = v23;
  v26 = static NSBundle.feedbackCoreFramework.getter();
  v27 = [v12 nibWithNibName:v24 bundle:v26];

  sub_100041AA0(&qword_10010A040, &unk_1000C37D0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1000C29F0;
  v29 = v27;
  v30 = [v29 description];
  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  v34._countAndFlagsBits = v31;
  v34._object = v33;
  String.append(_:)(v34);

  *(v28 + 56) = &type metadata for String;
  *(v28 + 32) = 0x62696E206C6C6543;
  *(v28 + 40) = 0xE900000000000020;
  print(_:separator:terminator:)();

  v35 = [v2 tableView];
  if (!v35)
  {
    goto LABEL_24;
  }

  v36 = v35;
  [v35 registerNib:v29 forCellReuseIdentifier:v1];

  v37 = [v9 mainBundle];
  v38 = String._bridgeToObjectiveC()();
  v39 = [v12 nibWithNibName:v38 bundle:v37];

  v64 = v39;
  v40 = [v2 tableView];
  if (!v40)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v41 = v40;
  v42 = String._bridgeToObjectiveC()();
  [v41 registerNib:v64 forCellReuseIdentifier:v42];

  v43 = [v2 tableView];
  if (!v43)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v45 = v43;
  type metadata accessor for FBAAddAttachmentsCell(0, v44);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  v47 = String._bridgeToObjectiveC()();

  [v45 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v47];

  v48 = [v2 tableView];
  if (!v48)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v50 = v48;
  type metadata accessor for FBAFeedbackTitleCell(v48, v49);
  v51 = swift_getObjCClassFromMetadata();
  v52 = String._bridgeToObjectiveC()();
  [v50 registerClass:v51 forCellReuseIdentifier:v52];

  v53 = [v2 tableView];
  if (!v53)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v54 = v53;
  [v53 setRowHeight:UITableViewAutomaticDimension];

  v55 = [v2 tableView];
  if (!v55)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v56 = v55;
  [v55 setEstimatedRowHeight:80.0];

  if (![v2 tableView])
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v57 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  *(objc_allocWithZone(type metadata accessor for FollowupDataSource(0)) + qword_100109DE8) = 0;
  swift_unknownObjectWeakInit();
  v58 = swift_allocObject();
  *(v58 + 16) = sub_100068A50;
  *(v58 + 24) = v57;
  v59 = UITableViewDiffableDataSource.init(tableView:cellProvider:)();
  v60 = *&v2[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_dataSource];
  *&v2[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_dataSource] = v59;
  v61 = v59;

  swift_unknownObjectWeakAssign();
  v62 = [v2 tableView];
  if (!v62)
  {
LABEL_31:
    __break(1u);
    return;
  }

  v63 = v62;
  [v62 setDelegate:v2];
}

char *sub_100063754(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v10 = sub_10006133C(a1, a2, a3, a4);

  v11 = swift_dynamicCastObjCProtocolConditional();
  if (v11 || (v11 = swift_dynamicCastObjCProtocolConditional()) != 0)
  {
    v12 = v11;
    v13 = v10;
    v14 = String._bridgeToObjectiveC()();
    [v12 setItemIdentifier:v14];

    return v13;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10006397C(void *a1)
{
  v2 = [a1 tableView];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  v4 = String._bridgeToObjectiveC()();
  v1 = [v3 dequeueReusableCellWithIdentifier:v4];

  if (v1)
  {
    type metadata accessor for FBAFollowupDisplayTextCell(v5, v6);
    v7 = swift_dynamicCastClass();
    if (!v7)
    {
LABEL_8:

      goto LABEL_9;
    }

    v8 = v7;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      sub_10005D3B4(Strong, v10);
      v12 = String._bridgeToObjectiveC()();

      [v11 setText:v12];

      return v8;
    }

LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100063AE4(void *a1)
{
  v2 = [a1 tableView];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  v4 = String._bridgeToObjectiveC()();
  v1 = [v3 dequeueReusableCellWithIdentifier:v4];

  if (v1)
  {
    type metadata accessor for FBAExpandingTextInputCell(0, v5);
    v6 = swift_dynamicCastClass();
    if (!v6)
    {
LABEL_8:

      goto LABEL_9;
    }

    v7 = v6;
    *(v6 + OBJC_IVAR____TtC18Feedback_Assistant25FBAExpandingTextInputCell_delegate + 8) = &off_1000E0F00;
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      [Strong setConstant:150.0];

      return v7;
    }

LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id sub_100063C60(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

uint64_t sub_100063CC4(char *a1)
{
  v3 = [a1 tableView];
  if (!v3)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = v3;
  v5 = String._bridgeToObjectiveC()();
  v1 = [v4 dequeueReusableCellWithIdentifier:v5];

  if (v1)
  {
    type metadata accessor for FBAFeedbackTitleCell(v6, v7);
    v8 = swift_dynamicCastClass();
    if (!v8)
    {
LABEL_10:

      goto LABEL_11;
    }

    v9 = v8;
    v10 = *&a1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_contentItem];
    if (v10)
    {
      v11 = [v10 itemTitle];
      if (v11)
      {
        v12 = v11;
        [*(v9 + OBJC_IVAR____TtC18Feedback_Assistant20FBAFeedbackTitleCell_titleTextView) setText:v11];

        return v9;
      }

      goto LABEL_9;
    }

LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

LABEL_11:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

double sub_100063E10()
{
  v1 = &v0[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___deviceAttachmentsCellSeparatorInset];
  if ((v0[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___deviceAttachmentsCellSeparatorInset + 8] & 1) == 0)
  {
    return *v1;
  }

  sub_100063E58(v0);
  *v1 = result;
  v1[8] = 0;
  return result;
}

void sub_100063E58(void *a1)
{
  v2 = [a1 tableView];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() reuseIdentifier];
    if (!v4)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v4 = String._bridgeToObjectiveC()();
    }

    v1 = [v3 dequeueReusableCellWithIdentifier:v4];

    if (!v1)
    {
      goto LABEL_9;
    }

    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      [v5 spaceFromSuperViewToLabel];

      return;
    }
  }

  else
  {
    __break(1u);
  }

LABEL_9:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100063F88()
{
  v1 = v0 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___deviceAttachmentsLastCellSeparatorInset;
  if (*(v0 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___deviceAttachmentsLastCellSeparatorInset + 8))
  {
    v2 = sub_100063AC4();
    [v2 separatorInset];
    v4 = v3;

    *v1 = v4;
    *(v1 + 8) = 0;
  }
}

void sub_100063FF8()
{
  v1 = [v0 navigationItem];
  [v1 setLargeTitleDisplayMode:2];

  v2 = [v0 navigationController];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 navigationBar];

    [v4 setPrefersLargeTitles:0];
  }

  v5 = [v0 navigationItem];
  v6 = objc_allocWithZone(UIBarButtonItem);
  v7 = v0;
  v8 = [v6 initWithBarButtonSystemItem:1 target:v7 action:"userDidCancel"];
  [v5 setLeftBarButtonItem:v8];

  v9 = [v7 navigationItem];
  [v9 setTitle:0];

  v10 = [objc_opt_self() mainBundle];
  v23._object = 0xE000000000000000;
  v11._countAndFlagsBits = 0x425F54494D425553;
  v11._object = 0xED00004E4F545455;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v23._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v23);

  v13 = [objc_opt_self() systemImageNamed:FBKSystemImageNameSendArrowUp];
  v14 = [objc_allocWithZone(UIBarButtonItem) initWithImage:v13 style:0 target:v7 action:"beginSubmission"];

  v15 = v14;
  v16 = String._bridgeToObjectiveC()();

  [v15 setAccessibilityLabel:v16];

  v17 = OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_sendButton;
  v18 = *&v7[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_sendButton];
  *&v7[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_sendButton] = v15;
  v19 = v15;

  v21 = [v7 navigationItem];
  v20 = *&v7[v17];
  [v21 setRightBarButtonItem:v20];
}

void *sub_1000642E4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_followup);
  if (v3)
  {
    v4 = objc_opt_self();
    v18 = v3;
    v5 = [v4 sharedInstance];
    v6 = [v5 sessions];

    sub_1000497E4(0, &qword_10010A030, FBKEnhancedLoggingSessionInformation_ptr);
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v7 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v9 = 0;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v10 = *(v7 + 8 * v9 + 32);
        }

        v11 = v10;
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v13 = [v10 followupID];
        v14 = [v18 ID];
        v15 = v14;
        if (!v13)
        {
          if (!v14)
          {
            goto LABEL_18;
          }

          goto LABEL_6;
        }

        if (!v14)
        {
          v15 = v13;
LABEL_6:

          goto LABEL_7;
        }

        sub_1000497E4(0, &qword_1001099A0, NSNumber_ptr);
        v16 = static NSObject.== infix(_:_:)();

        if (v16)
        {
LABEL_18:

          return v11;
        }

LABEL_7:

        ++v9;
        if (v12 == i)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

LABEL_22:
  }

  return 0;
}

void sub_1000644F8(uint64_t a1)
{
  v2 = *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_followup];
  if (v2)
  {
    v3 = OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_devicesController;
    v4 = *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_devicesController];
    v5 = v2;
    v24 = v5;
    if (v4)
    {
      v7 = static os_log_type_t.info.getter();
      os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log], "Devices controller already configured", 37, 2, _swiftEmptyArrayStorage);
    }

    else
    {
      v10 = sub_1000642E4(v5, v6);
      if (v10)
      {
        v11 = v10;
        v12 = [v10 deviceIdentifiers];

        v13 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = sub_1000821A0(v13);
        v16 = v15;

        if (v16)
        {
          sub_100041AA0(&qword_100109890, &qword_1000C2CA0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1000C29F0;
          *(inited + 32) = v14;
          v18 = inited + 32;
          *(inited + 40) = v16;
          v16 = sub_10007BDF8(inited);
          swift_setDeallocating();
          sub_1000689C4(v18);
        }
      }

      else
      {
        v16 = 0;
      }

      v19 = [objc_opt_self() sharedInstance];
      v20 = v1;
      if (v16)
      {
        v21.super.isa = Set._bridgeToObjectiveC()().super.isa;
      }

      else
      {
        v21.super.isa = 0;
      }

      v22 = [objc_allocWithZone(FBKDeviceDiagnosticsController) initWithDeviceManager:v19 delegate:v1 filerForm:v24 pendingFileUrls:0 pendingURLExtensions:0 draftDeviceIds:v21.super.isa];

      v23 = *&v1[v3];
      *&v1[v3] = v22;
    }
  }

  else
  {
    v8 = static os_log_type_t.default.getter();
    v9 = *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log];

    os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v9, "No followup, not starting devices controller", 44, 2, _swiftEmptyArrayStorage);
  }
}

void sub_100064778()
{
  v1 = static os_log_type_t.info.getter();
  os_log(_:dso:log:_:_:)(v1, &_mh_execute_header, *(v0 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log), "Configuring observers", 21, 2, _swiftEmptyArrayStorage);
  v2 = objc_opt_self();
  v3 = [v2 defaultCenter];
  [v3 addObserver:v0 selector:"keyboardWillShowWithNotification:" name:UIKeyboardWillShowNotification object:0];

  v4 = [v2 defaultCenter];
  [v4 addObserver:v0 selector:"keyboardWillHideWithNotification:" name:UIKeyboardWillHideNotification object:0];
}

id sub_100064A94(uint64_t a1)
{
  v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_readinessState] = 0;
  v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isSubmitting] = 0;
  v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_submissionFailed] = 0;
  v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isCopyingFiles] = 0;
  v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isStartingSessions] = 0;
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_followup] = 0;
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_contentItem] = 0;
  v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isUnsolicited] = 0;
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_devicesController] = 0;
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___addAttachmentsController] = 0;
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_dataSource] = 0;
  v3 = OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_modelSnapshot;
  sub_100041AA0(&qword_10010A0D0, &qword_1000C2CB0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000C2E80;
  v5 = objc_allocWithZone(FBKSectionIdentifierGroup);
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 initWithSectionIdentifier:v6];

  *&v1[v3] = v4;
  *(v4 + 32) = v7;
  v10 = OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log;
  if (qword_100108DE8 != -1)
  {
    v8 = swift_once();
  }

  v11 = qword_10010CEC0;
  *&v1[v10] = qword_10010CEC0;
  v12 = &v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___displayText];
  *v12 = 0;
  v12[1] = 0;
  v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_validationChoice] = 2;
  v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_didAppear] = 0;
  v13 = &v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_createFollowupSavedHandler];
  *v13 = 0;
  v13[1] = 0;
  v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isCreatingFollowup] = 0;
  v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___requiresComments] = 2;
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_sendButton] = 0;
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___cachedFollowupDisplayTextCell] = 0;
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___cachedCommentsCell] = 0;
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___cachedFeedbackTitleCell] = 0;
  v14 = &v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___deviceAttachmentsCellSeparatorInset];
  *v14 = 0;
  v14[8] = 1;
  v15 = &v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___deviceAttachmentsLastCellSeparatorInset];
  *v15 = 0;
  v15[8] = 1;
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_keyboardHeight] = 0;
  v18.receiver = v1;
  v18.super_class = type metadata accessor for FBAFollowupResponseViewController(v8, v9);
  v16 = v11;
  return objc_msgSendSuper2(&v18, "initWithStyle:", a1);
}

id sub_100064D18(uint64_t a1, uint64_t a2, void *a3)
{
  v3[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_readinessState] = 0;
  v3[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isSubmitting] = 0;
  v3[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_submissionFailed] = 0;
  v3[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isCopyingFiles] = 0;
  v3[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isStartingSessions] = 0;
  *&v3[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_followup] = 0;
  *&v3[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_contentItem] = 0;
  v3[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isUnsolicited] = 0;
  *&v3[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_devicesController] = 0;
  *&v3[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___addAttachmentsController] = 0;
  *&v3[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_dataSource] = 0;
  v6 = OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_modelSnapshot;
  sub_100041AA0(&qword_10010A0D0, &qword_1000C2CB0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1000C2E80;
  v8 = objc_allocWithZone(FBKSectionIdentifierGroup);
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 initWithSectionIdentifier:v9];

  *&v3[v6] = v7;
  *(v7 + 32) = v10;
  v11 = OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log;
  if (qword_100108DE8 != -1)
  {
    swift_once();
  }

  v12 = qword_10010CEC0;
  *&v3[v11] = qword_10010CEC0;
  v13 = &v3[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___displayText];
  *v13 = 0;
  v13[1] = 0;
  v3[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_validationChoice] = 2;
  v3[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_didAppear] = 0;
  v14 = &v3[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_createFollowupSavedHandler];
  *v14 = 0;
  v14[1] = 0;
  v3[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isCreatingFollowup] = 0;
  v3[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___requiresComments] = 2;
  *&v3[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_sendButton] = 0;
  *&v3[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___cachedFollowupDisplayTextCell] = 0;
  *&v3[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___cachedCommentsCell] = 0;
  *&v3[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___cachedFeedbackTitleCell] = 0;
  v15 = &v3[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___deviceAttachmentsCellSeparatorInset];
  *v15 = 0;
  v15[8] = 1;
  v16 = &v3[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___deviceAttachmentsLastCellSeparatorInset];
  *v16 = 0;
  v16[8] = 1;
  *&v3[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_keyboardHeight] = 0;
  v17 = v12;
  if (a2)
  {
    v19 = String._bridgeToObjectiveC()();
  }

  else
  {
    v19 = 0;
  }

  v22.receiver = v3;
  v22.super_class = type metadata accessor for FBAFollowupResponseViewController(v17, v18);
  v20 = objc_msgSendSuper2(&v22, "initWithNibName:bundle:", v19, a3);

  return v20;
}

id sub_10006501C(void *a1)
{
  v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_readinessState] = 0;
  v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isSubmitting] = 0;
  v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_submissionFailed] = 0;
  v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isCopyingFiles] = 0;
  v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isStartingSessions] = 0;
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_followup] = 0;
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_contentItem] = 0;
  v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isUnsolicited] = 0;
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_devicesController] = 0;
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___addAttachmentsController] = 0;
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_dataSource] = 0;
  v3 = OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_modelSnapshot;
  sub_100041AA0(&qword_10010A0D0, &qword_1000C2CB0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000C2E80;
  v5 = objc_allocWithZone(FBKSectionIdentifierGroup);
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 initWithSectionIdentifier:v6];

  *&v1[v3] = v4;
  *(v4 + 32) = v7;
  v10 = OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log;
  if (qword_100108DE8 != -1)
  {
    v8 = swift_once();
  }

  v11 = qword_10010CEC0;
  *&v1[v10] = qword_10010CEC0;
  v12 = &v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___displayText];
  *v12 = 0;
  v12[1] = 0;
  v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_validationChoice] = 2;
  v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_didAppear] = 0;
  v13 = &v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_createFollowupSavedHandler];
  *v13 = 0;
  v13[1] = 0;
  v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isCreatingFollowup] = 0;
  v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___requiresComments] = 2;
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_sendButton] = 0;
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___cachedFollowupDisplayTextCell] = 0;
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___cachedCommentsCell] = 0;
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___cachedFeedbackTitleCell] = 0;
  v14 = &v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___deviceAttachmentsCellSeparatorInset];
  *v14 = 0;
  v14[8] = 1;
  v15 = &v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___deviceAttachmentsLastCellSeparatorInset];
  *v15 = 0;
  v15[8] = 1;
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_keyboardHeight] = 0;
  v19.receiver = v1;
  v19.super_class = type metadata accessor for FBAFollowupResponseViewController(v8, v9);
  v16 = v11;
  v17 = objc_msgSendSuper2(&v19, "initWithCoder:", a1);

  if (v17)
  {
  }

  return v17;
}

void sub_1000655D8(void *a1, uint64_t a2)
{
  if (a2 > 1)
  {
    if (a2 == 3)
    {
      v13 = static os_log_type_t.info.getter();
      os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, *&v2[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log], "Copying files", 13, 2, _swiftEmptyArrayStorage);
      v2[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isCopyingFiles] = 1;
      sub_10005CDE4();
      v14 = [a1 filesBeingAttachedCount];
      sub_1000658D4(v14, v15);
      v19 = String._bridgeToObjectiveC()();
LABEL_8:

      [v2 fbkShowSpinnerWithStatus:v19 userInteractionEnabled:1];

      return;
    }

    if (a2 == 2)
    {
      v17 = static os_log_type_t.info.getter();
      os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, *&v2[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log], "No devices", 10, 2, _swiftEmptyArrayStorage);
      goto LABEL_15;
    }

LABEL_22:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  if (!a2)
  {
    v3 = static os_log_type_t.info.getter();
    os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, *&v2[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log], "Starting session", 16, 2, _swiftEmptyArrayStorage);
    v4 = v2[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isStartingSessions];
    v2[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isStartingSessions] = 1;
    if ((v4 & 1) == 0)
    {
      sub_10005CDE4();
    }

    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
    v8 = [objc_opt_self() mainBundle];
    v21._object = 0xE000000000000000;
    v9._object = 0x80000001000CC100;
    v9._countAndFlagsBits = 0xD000000000000015;
    v10.value._countAndFlagsBits = v5;
    v10.value._object = v7;
    v11._countAndFlagsBits = 0;
    v11._object = 0xE000000000000000;
    v21._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, v21);

    v19 = String._bridgeToObjectiveC()();
    goto LABEL_8;
  }

  if (a2 != 1)
  {
    goto LABEL_22;
  }

  v16 = static os_log_type_t.info.getter();
  os_log(_:dso:log:_:_:)(v16, &_mh_execute_header, *&v2[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log], "Ready", 5, 2, _swiftEmptyArrayStorage);
LABEL_15:
  if ((v2[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isSubmitting] & 1) == 0)
  {
    [v2 fbkHideSpinner];
  }

  v18 = v2[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isStartingSessions];
  v2[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isStartingSessions] = 0;
  if (v18 == 1)
  {
    sub_10005CDE4();
  }

  v2[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isCopyingFiles] = 0;

  sub_10005CDE4();
}

uint64_t sub_1000658D4(uint64_t a1, uint64_t a2)
{
  if (a1 < 1)
  {
    v13 = [objc_opt_self() mainBundle];
    v18._object = 0x80000001000CC130;
    v14._countAndFlagsBits = 0x5F474E4959504F43;
    v14._object = 0xED000053454C4946;
    v15._countAndFlagsBits = 0x6E69686361747441;
    v15._object = 0xEF73656C69662067;
    v18._countAndFlagsBits = 0xD000000000000053;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, v13, v15, v18)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  else
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
    v6 = [objc_opt_self() mainBundle];
    v17._object = 0xE000000000000000;
    v7._object = 0x80000001000CC190;
    v7._countAndFlagsBits = 0xD000000000000012;
    v8.value._countAndFlagsBits = v3;
    v8.value._object = v5;
    v9._countAndFlagsBits = 0;
    v9._object = 0xE000000000000000;
    v17._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, v6, v9, v17);

    sub_100041AA0(&unk_100109860, qword_1000C2DA0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1000C29F0;
    *(v10 + 56) = &type metadata for Int;
    *(v10 + 64) = &protocol witness table for Int;
    *(v10 + 32) = a1;
    v11 = String.init(format:_:)();

    return v11;
  }
}

void sub_100065C60(uint64_t a1, void (*a2)(void *))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (!*(Strong + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_followup))
    {
      v5 = static os_log_type_t.error.getter();
      v6 = *&v4[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log];
      os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, v6, "Failed to create followup. Cannot create device devices controller", 66, 2, _swiftEmptyArrayStorage);
    }

    sub_1000644F8(Strong);
    v7 = *&v4[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_devicesController];
    v8 = v7;
    a2(v7);
  }
}

BOOL sub_100065E38(char a1)
{
  result = 0;
  if (*(v1 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isStartingSessions) & 1) == 0 && (*(v1 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isCopyingFiles) & 1) == 0 && ((sub_1000612D0() & 1) == 0 || (a1))
  {
    if (*(v1 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isUnsolicited))
    {
      return 1;
    }

    v4 = *(v1 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_followup);
    if (!v4)
    {
      return 1;
    }

    v5 = [v4 type];
    v6 = v5 == 7 || v5 == 4;
    if (!v6 || *(v1 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_validationChoice) != 2)
    {
      return 1;
    }
  }

  return result;
}

unint64_t sub_100065F3C(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_1000664E4(a1, a2, v4);
}

unint64_t sub_100065FB4(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10006659C(a1, v4);
}

uint64_t type metadata accessor for FollowupDataSource(uint64_t a1)
{
  result = qword_100109E08;
  if (!qword_100109E08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FBAFollowupResponseViewController.ReadinessState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FBAFollowupResponseViewController.ReadinessState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000662BC()
{
  result = qword_10010A010;
  if (!qword_10010A010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10010A010);
  }

  return result;
}

uint64_t sub_100066310()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100066358(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100066370(uint64_t a1, uint64_t a2)
{
  v4 = sub_100041AA0(&qword_10010A018, &unk_1000C3058);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000663E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100041AA0(&qword_10010A018, &unk_1000C3058);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100066454(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_100066664(a1, v2);
}

unint64_t sub_1000664E4(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_10006659C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100068F44(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100065FF8(v8);
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

unint64_t sub_100066664(uint64_t a1, uint64_t a2)
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

Swift::Int sub_100066768(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100041AA0(&qword_10010A0A8, &qword_1000C3070);
  v37 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}