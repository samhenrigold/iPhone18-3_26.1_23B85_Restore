BOOL sub_100002504(id a1, NSString *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  if ([(NSString *)v4 hasPrefix:@"cups-missing-filter"])
  {
    v5 = 1;
  }

  else
  {
    v5 = [(NSString *)v4 hasPrefix:@"cups-insecure-filter"];
  }

  return v5;
}

uint64_t sub_100002E14()
{
  type metadata accessor for PrintMonitor(0);
  swift_allocObject();
  result = sub_100002EC8();
  qword_1000292F8 = result;
  return result;
}

uint64_t sub_100002E54()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100002EC8()
{
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v17 = *(v1 - 8);
  v18 = v1;
  __chkstk_darwin(v1);
  v16 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3);
  v15[1] = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  v6 = sub_100004A84(&qword_100028C78, &qword_10001BD08);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v15 - v8;
  v10 = OBJC_IVAR____TtC12Print_Center12PrintMonitor__completedJobs;
  v19 = _swiftEmptyArrayStorage;
  sub_100004A84(&unk_100028B40, &qword_10001BB80);
  Published.init(initialValue:)();
  v11 = *(v7 + 32);
  v11(v0 + v10, v9, v6);
  v12 = OBJC_IVAR____TtC12Print_Center12PrintMonitor__pendingJobs;
  v19 = _swiftEmptyArrayStorage;
  Published.init(initialValue:)();
  v11(v0 + v12, v9, v6);
  v13 = OBJC_IVAR____TtC12Print_Center12PrintMonitor_workQueue;
  sub_100005080(0, &qword_100028C80, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_100005150(&qword_100028C88, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100004A84(&qword_100028C90, &qword_10001BD10);
  sub_100005198(&qword_100028C98, &qword_100028C90, &qword_10001BD10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v17 + 104))(v16, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v18);
  *(v0 + v13) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  sub_1000036F4();
  return v0;
}

uint64_t sub_100003254()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  v2 = OBJC_IVAR____TtC12Print_Center12PrintMonitor__completedJobs;
  v3 = sub_100004A84(&qword_100028C78, &qword_10001BD08);
  v4 = *(*(v3 - 8) + 8);
  v4(v0 + v2, v3);
  v4(v0 + OBJC_IVAR____TtC12Print_Center12PrintMonitor__pendingJobs, v3);

  return v0;
}

uint64_t sub_100003388()
{
  sub_100003254();

  return swift_deallocClassInstance();
}

uint64_t sub_1000033E0(void **a1, void **a2)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v31 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = v30 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = v30 - v13;
  __chkstk_darwin(v12);
  v16 = v30 - v15;
  v17 = *a1;
  v18 = *a2;
  if (([v17 state] == 5 || objc_msgSend(v17, "state") == 10) && (objc_msgSend(v18, "state") == 5 || objc_msgSend(v18, "state") == 10))
  {
    v19 = [v17 timeAtProcessing];
    if (v19)
    {
      v30[1] = v2;
      v20 = v19;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v21 = v14;
      v22 = *(v6 + 32);
      v22(v16, v21, v5);
      v23 = [v18 timeAtProcessing];
      if (v23)
      {
        v24 = v31;
        v25 = v23;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v22(v11, v24, v5);
        v26 = static Date.< infix(_:_:)();
        v27 = *(v6 + 8);
        v27(v11, v5);
        v27(v16, v5);
        return v26 & 1;
      }

      (*(v6 + 8))(v16, v5);
    }
  }

  if ([v17 state] == 5 || objc_msgSend(v17, "state") == 10)
  {
    v26 = 1;
  }

  else if ([v18 state] == 5 || objc_msgSend(v18, "state") == 10)
  {
    v26 = 0;
  }

  else
  {
    v29 = [v17 localJobID];
    v26 = v29 < [v18 localJobID];
  }

  return v26 & 1;
}

void sub_1000036F4()
{
  sub_100003A3C();
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  v3 = objc_opt_self();
  v4 = [v3 mainQueue];
  v15 = sub_100005A40;
  v16 = v0;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_100003948;
  v14 = &unk_100025880;
  v5 = _Block_copy(&v11);

  v6 = [v2 addObserverForName:@"PKJobListNotification" object:0 queue:v4 usingBlock:v5];
  _Block_release(v5);
  swift_unknownObjectRelease();

  v7 = [v1 defaultCenter];
  v8 = [v3 mainQueue];
  v15 = sub_100005A44;
  v16 = v0;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_100003948;
  v14 = &unk_1000258A8;
  v9 = _Block_copy(&v11);

  v10 = [v7 addObserverForName:@"PKJobProgressNotification" object:0 queue:v8 usingBlock:v9];
  _Block_release(v9);
  swift_unknownObjectRelease();
}

uint64_t sub_100003948(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100003A3C()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v5 = *(v11 - 8);
  __chkstk_darwin(v11);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = *(v0 + OBJC_IVAR____TtC12Print_Center12PrintMonitor_workQueue);
  aBlock[4] = sub_100005130;
  v14 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100005A54;
  aBlock[3] = &unk_1000257E0;
  v8 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v12 = _swiftEmptyArrayStorage;
  sub_100005150(&qword_100028CB0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100004A84(&qword_100028CB8, &unk_10001BD60);
  sub_100005198(&qword_100028CC0, &qword_100028CB8, &unk_10001BD60);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v8);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v11);
}

uint64_t sub_100003CE4(uint64_t a1)
{
  v27 = a1;
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v31 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  base_props = v4[-1].base_props;
  __chkstk_darwin(v4);
  v29 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_allocObject();
  v7 = [objc_opt_self() jobs];
  sub_100005080(0, &qword_100028CA0, &off_100024940);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v28 = v6;
  *(v6 + 16) = v8;
  v33 = (v6 + 16);
  aBlock[0] = _swiftEmptyArrayStorage;
  if (v8 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    v10 = _swiftEmptyArrayStorage;
    v32 = v4;
    if (!i)
    {
      break;
    }

    v25 = v2;
    v26 = v1;
    v11 = 0;
    v1 = v8 & 0xC000000000000001;
    v2 = v8 & 0xFFFFFFFFFFFFFF8;
    v4 = &PCPrintJob__metaData;
    while (1)
    {
      if (v1)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v11 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v12 = *(v8 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if ([v12 state] == 7 || objc_msgSend(v13, "state") == 9 || objc_msgSend(v13, "state") == 10 || objc_msgSend(v13, "state") == 8)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v11;
      if (v14 == i)
      {
        v10 = aBlock[0];
        v2 = v25;
        v1 = v26;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

LABEL_18:

  v15 = v33;
  v16 = sub_1000054F0(v33, v10);

  if (*v15 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v18 = result;
    if (result >= v16)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v18 = *((*v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18 >= v16)
    {
LABEL_20:
      sub_10000589C(v16, v18);

      sub_100005080(0, &qword_100028C80, OS_dispatch_queue_ptr);
      v19 = static OS_dispatch_queue.main.getter();
      v20 = swift_allocObject();
      v21 = v27;
      *(v20 + 16) = v28;
      *(v20 + 24) = v21;
      aBlock[4] = sub_1000059B4;
      aBlock[5] = v20;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100005A54;
      aBlock[3] = &unk_100025858;
      v22 = _Block_copy(aBlock);

      v23 = v29;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_100005150(&qword_100028CB0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100004A84(&qword_100028CB8, &unk_10001BD60);
      sub_100005198(&qword_100028CC0, &qword_100028CB8, &unk_10001BD60);
      v24 = v31;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v22);

      (*(v2 + 8))(v24, v1);
      (base_props[1])(v23, v32);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100004218(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  type metadata accessor for PrintMonitor(0);
  sub_100005150(&qword_100028CC8, type metadata accessor for PrintMonitor, &unk_10001BC7C);
  ObservableObject<>.objectWillChange.getter();
  ObservableObjectPublisher.send()();
}

uint64_t sub_10000430C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_100004350()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v6 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v2 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v2 = *(v6 + 8 * j + 32);
      }

      v3 = v2;
      v4 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      [v2 update];
      sub_100005080(0, &qword_100028CA0, &off_100024940);
      sub_1000050C8();
      ObservableObject<>.objectWillChange.getter();
      ObservableObjectPublisher.send()();

      if (v4 == i)
      {
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

uint64_t sub_1000044C8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for PrintMonitor(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t sub_100004508@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for PrintMonitor(0);
  result = Identifiable<>.id.getter();
  *a2 = result;
  return result;
}

uint64_t variable initialization expression of CancelPrintJob._jobContextIdentifier()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v28 = *(v0 - 8);
  v29 = v0;
  __chkstk_darwin(v0);
  v27 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100004A84(&qword_100028AC8, &qword_10001BB48);
  __chkstk_darwin(v2 - 8);
  v26 = &v21 - v3;
  v4 = sub_100004A84(&qword_100028AD0, &qword_10001BB50);
  __chkstk_darwin(v4 - 8);
  v25 = &v21 - v5;
  v6 = sub_100004A84(&qword_100028AD8, &qword_10001C210);
  __chkstk_darwin(v6 - 8);
  v24 = &v21 - v7;
  v8 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v13 - 8);
  v22 = type metadata accessor for LocalizedStringResource();
  v14 = *(v22 - 8);
  __chkstk_darwin(v22);
  v23 = sub_100004A84(&qword_100028AE0, &qword_10001BB58);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v15 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v16 = *(v9 + 104);
  v16(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v16(v11, v15, v8);
  v17 = v24;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v14 + 56))(v17, 0, 1, v22);
  v18 = type metadata accessor for String.IntentInputOptions();
  v30 = 0;
  v31 = 0;
  (*(*(v18 - 8) + 56))(v25, 1, 1, v18);
  v19 = type metadata accessor for IntentDialog();
  (*(*(v19 - 8) + 56))(v26, 1, 1, v19);
  (*(v28 + 104))(v27, enum case for InputConnectionBehavior.default(_:), v29);
  return IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
}

uint64_t sub_100004A84(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t type metadata accessor for PrintMonitor(uint64_t a1)
{
  result = qword_100028B28;
  if (!qword_100028B28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100004B20(uint64_t a1)
{
  sub_100004BC0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100004BC0(uint64_t a1)
{
  if (!qword_100028B38)
  {
    sub_100004C24(&unk_100028B40, &qword_10001BB80);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_100028B38);
    }
  }
}

uint64_t sub_100004C24(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_100004C94(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_100004CE0@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v4;
  return result;
}

uint64_t sub_100004D60(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void *sub_100004DE8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100004E24(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
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

uint64_t sub_100004F4C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

void (*sub_100004FF8(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
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
    return sub_100005078;
  }

  __break(1u);
  return result;
}

uint64_t sub_100005080(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_1000050C8()
{
  result = qword_100028CA8;
  if (!qword_100028CA8)
  {
    sub_100005080(255, &qword_100028CA0, &off_100024940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028CA8);
  }

  return result;
}

uint64_t sub_100005138(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005150(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100005198(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100004C24(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000051EC()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100005224(uint64_t a1, char a2)
{
  v4 = *v2;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v4 & 0x8000000000000000) != 0) || (v4 & 0x4000000000000000) != 0 || a1 > *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v4 >> 62)
    {
      _CocoaArrayWrapper.endIndex.getter();
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    *v2 = result;
  }

  return result;
}

uint64_t sub_1000052E0(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

unint64_t sub_1000053A8(unint64_t a1, unint64_t a2)
{
  v12 = a2;
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a1 + 8 * v5 + 32);
    }

    v7 = v6;
    v13 = v6;
    __chkstk_darwin(v6);
    v11[2] = &v13;
    v8 = sub_100004E24(sub_100005A70, v11, v12);

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_1000054F0(unint64_t *a1, unint64_t a2)
{
  v6 = *a1;
  v7 = sub_1000053A8(*a1, a2);
  if (v3)
  {
    return v2;
  }

  if (v8)
  {
    if (v6 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2 = v7;
  v26 = a1;
  v10 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  while (1)
  {
    if (v6 >> 62)
    {
      if (v10 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v2;
      }
    }

    else if (v10 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v2;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_40;
      }

      if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v12 = *(v6 + 8 * v10 + 32);
    }

    v13 = v12;
    v27 = v12;
    __chkstk_darwin(v12);
    v25[2] = &v27;
    v14 = sub_100004E24(sub_1000059BC, v25, a2);

    if ((v14 & 1) == 0)
    {
      break;
    }

LABEL_10:
    v11 = __OFADD__(v10++, 1);
    if (v11)
    {
      goto LABEL_42;
    }
  }

  if (v2 == v10)
  {
LABEL_9:
    v11 = __OFADD__(v2++, 1);
    if (v11)
    {
      goto LABEL_43;
    }

    goto LABEL_10;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      goto LABEL_45;
    }

    v17 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2 >= v17)
    {
      goto LABEL_46;
    }

    if (v10 >= v17)
    {
      goto LABEL_47;
    }

    v18 = *(v6 + 32 + 8 * v10);
    v15 = *(v6 + 32 + 8 * v2);
    v16 = v18;
  }

  v19 = v16;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    v6 = sub_1000052E0(v6);
    v20 = (v6 >> 62) & 1;
  }

  else
  {
    LODWORD(v20) = 0;
  }

  v21 = v6 & 0xFFFFFFFFFFFFFF8;
  v22 = *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20);
  *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20) = v19;

  if ((v6 & 0x8000000000000000) == 0 && !v20)
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  v6 = sub_1000052E0(v6);
  v21 = v6 & 0xFFFFFFFFFFFFFF8;
  if ((v10 & 0x8000000000000000) == 0)
  {
LABEL_33:
    if (v10 >= *(v21 + 16))
    {
      goto LABEL_44;
    }

    v23 = v21 + 8 * v10;
    v24 = *(v23 + 32);
    *(v23 + 32) = v15;

    *v26 = v6;
    goto LABEL_9;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

uint64_t sub_10000578C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_100005080(0, &qword_100028CA0, &off_100024940);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_10000589C(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_100005224(result, 1);

  return sub_10000578C(v5, v3, 0);
}

uint64_t sub_100005974()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100005A90()
{
  result = qword_100028CD0;
  if (!qword_100028CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028CD0);
  }

  return result;
}

unint64_t sub_100005AE4()
{
  result = qword_100028CD8;
  if (!qword_100028CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028CD8);
  }

  return result;
}

uint64_t sub_100005B6C()
{
  v0 = type metadata accessor for IntentAuthenticationPolicy();
  sub_100007368(v0, qword_100029318);
  v1 = sub_100007330(v0, qword_100029318);
  v2 = enum case for IntentAuthenticationPolicy.alwaysAllowed(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t (*sub_100005C3C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_100005CB0;
}

void sub_100005CB0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_100005D00()
{
  result = qword_100028CE0;
  if (!qword_100028CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028CE0);
  }

  return result;
}

unint64_t sub_100005D58()
{
  result = qword_100028CE8;
  if (!qword_100028CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028CE8);
  }

  return result;
}

unint64_t sub_100005DB0()
{
  result = qword_100028CF0;
  if (!qword_100028CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028CF0);
  }

  return result;
}

unint64_t sub_100005E30()
{
  result = qword_100028CF8;
  if (!qword_100028CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028CF8);
  }

  return result;
}

uint64_t sub_100005EE8(uint64_t a1)
{
  v2 = sub_100005E30();

  return static OpenIntent.openAppWhenRun.getter(a1, v2);
}

uint64_t sub_100005F6C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100005E30();
  *v5 = v2;
  v5[1] = sub_100006020;

  return OpenIntent.perform()(a1, a2, v6);
}

uint64_t sub_100006020()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100006114@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100006D0C();
  *a1 = result;
  return result;
}

uint64_t sub_10000613C(uint64_t a1)
{
  v2 = sub_100005D00();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_1000061AC(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t (*a4)(unint64_t, unint64_t))
{
  v6 = a2(0);
  sub_100007368(v6, a3);
  sub_100007330(v6, a3);
  return a4(0xD000000000000011, 0x800000010001A420);
}

uint64_t sub_100006220()
{
  sub_100004A84(&qword_100028D68, &qword_10001C1F0);
  v0 = *(sub_100004A84(&qword_100028D70, &qword_10001C1F8) - 8);
  v1 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10001BD70;
  DisplayRepresentation.init(stringLiteral:)();
  v3 = sub_1000070A0(v2);
  swift_setDeallocating();
  sub_100007258(v2 + v1);
  result = swift_deallocClassInstance();
  qword_100029348 = v3;
  return result;
}

unint64_t sub_10000632C()
{
  result = qword_100028D00;
  if (!qword_100028D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028D00);
  }

  return result;
}

Swift::Int sub_100006380()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000063E4(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100006430@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100025628, *a1);

  *a2 = v3 != 0;
  return result;
}

unint64_t sub_1000064A4()
{
  result = qword_100028D08;
  if (!qword_100028D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028D08);
  }

  return result;
}

unint64_t sub_1000064FC()
{
  result = qword_100028D10;
  if (!qword_100028D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028D10);
  }

  return result;
}

unint64_t sub_100006560()
{
  result = qword_100028D18;
  if (!qword_100028D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028D18);
  }

  return result;
}

unint64_t sub_1000065B8()
{
  result = qword_100028D20;
  if (!qword_100028D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028D20);
  }

  return result;
}

unint64_t sub_100006610()
{
  result = qword_100028D28;
  if (!qword_100028D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028D28);
  }

  return result;
}

unint64_t sub_100006668()
{
  result = qword_100028D30;
  if (!qword_100028D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028D30);
  }

  return result;
}

uint64_t sub_1000066F8@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = sub_100007330(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

unint64_t sub_100006814()
{
  result = qword_100028D38;
  if (!qword_100028D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028D38);
  }

  return result;
}

uint64_t sub_100006868(uint64_t a1)
{
  v2 = sub_100006814();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000068B8()
{
  result = qword_100028D40;
  if (!qword_100028D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028D40);
  }

  return result;
}

unint64_t sub_100006910()
{
  result = qword_100028D48;
  if (!qword_100028D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028D48);
  }

  return result;
}

unint64_t sub_100006968()
{
  result = qword_100028D50;
  if (!qword_100028D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028D50);
  }

  return result;
}

uint64_t sub_1000069BC()
{
  if (qword_100028A20 != -1)
  {
    swift_once();
  }
}

uint64_t sub_100006A18(uint64_t a1)
{
  v2 = sub_100006668();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100006A68()
{
  result = qword_100028D58;
  if (!qword_100028D58)
  {
    sub_100004C24(&qword_100028D60, &qword_10001C138);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028D58);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LaunchPrintCenterEnum(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for LaunchPrintCenterEnum(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_100006BDC(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100006C54(a1, a2, v4);
}

unint64_t sub_100006C54(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_100006D0C()
{
  v17 = type metadata accessor for InputConnectionBehavior();
  v0 = *(v17 - 8);
  __chkstk_darwin(v17);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100004A84(&qword_100028AC8, &qword_10001BB48);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  v9 = sub_100004A84(&qword_100028AD8, &qword_10001C210);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = type metadata accessor for LocalizedStringResource();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_100004A84(&qword_100028D80, &unk_10001C218);
  LocalizedStringResource.init(stringLiteral:)();
  (*(v13 + 56))(v11, 1, 1, v12);
  v18 = 1;
  v14 = type metadata accessor for IntentDialog();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v6, 1, 1, v14);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v17);
  sub_100006814();
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
}

uint64_t sub_10000703C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return sub_100007010(v0);
}

unint64_t sub_1000070A0(uint64_t a1)
{
  v2 = sub_100004A84(&qword_100028D70, &qword_10001C1F8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100004A84(&qword_100028D78, &unk_10001C200);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);

    while (1)
    {
      sub_1000072C0(v8, v5);
      result = sub_10000703C();
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v13 = *(v7 + 56);
      v14 = type metadata accessor for DisplayRepresentation();
      result = (*(*(v14 - 8) + 32))(v13 + *(*(v14 - 8) + 72) * v12, v5, v14);
      v15 = *(v7 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      *(v7 + 16) = v17;
      v8 += v9;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100007258(uint64_t a1)
{
  v2 = sub_100004A84(&qword_100028D70, &qword_10001C1F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000072C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004A84(&qword_100028D70, &qword_10001C1F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100007330(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100007368(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

__n128 sub_1000073D8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000073E4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100007440(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_1000074BC(uint64_t a1@<X8>)
{
  v2 = static HorizontalAlignment.center.getter();
  v21 = 1;
  v3 = static VerticalAlignment.center.getter();
  v20 = 1;
  sub_1000075F0(&v14);
  v24 = v16;
  v25 = v17;
  v22 = v14;
  v23 = v15;
  v27[2] = v16;
  v27[3] = v17;
  v27[4] = v18;
  v27[1] = v15;
  v26 = v18;
  v27[0] = v14;
  sub_100007824(&v22, &v13);
  sub_10000793C(v27, &qword_100028D88, &qword_10001C2B8);
  *&v19[23] = v23;
  *&v19[39] = v24;
  *&v19[55] = v25;
  *&v19[71] = v26;
  *&v19[7] = v22;
  v4 = v20;
  v5 = v21;
  v6 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v7 = *&v19[48];
  *(a1 + 73) = *&v19[32];
  *(a1 + 89) = v7;
  *(a1 + 105) = *&v19[64];
  v8 = *&v19[16];
  *(a1 + 41) = *v19;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  *(a1 + 24) = v3;
  *(a1 + 32) = 0;
  *(a1 + 40) = v4;
  *(a1 + 120) = *&v19[79];
  *(a1 + 57) = v8;
  *(a1 + 128) = v6;
  *(a1 + 136) = v9;
  *(a1 + 144) = v10;
  *(a1 + 152) = v11;
  *(a1 + 160) = v12;
  *(a1 + 168) = 0;
}

uint64_t sub_1000075F0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100004A84(&qword_100028D90, &qword_10001C2C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  v5 = [objc_opt_self() mainBundle];
  v23._object = 0x800000010001A460;
  v6._object = 0x800000010001A440;
  v23._countAndFlagsBits = 0xD000000000000023;
  v6._countAndFlagsBits = 0xD000000000000012;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v23);

  v22 = v8;
  sub_100007894();
  v9 = Text.init<A>(_:)();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  KeyPath = swift_getKeyPath();
  v17 = type metadata accessor for Font.Design();
  (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
  v18 = static Font.system(size:weight:design:)();
  sub_10000793C(v4, &qword_100028D90, &qword_10001C2C0);
  v19 = swift_getKeyPath();
  LOBYTE(v22._countAndFlagsBits) = v13 & 1;
  v20 = static Color.secondary.getter();
  result = swift_getKeyPath();
  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 16) = v13 & 1;
  *(a1 + 24) = v15;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 1;
  *(a1 + 48) = v19;
  *(a1 + 56) = v18;
  *(a1 + 64) = result;
  *(a1 + 72) = v20;
  return result;
}

uint64_t sub_100007824(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004A84(&qword_100028D88, &qword_10001C2B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100007894()
{
  result = qword_100028D98;
  if (!qword_100028D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028D98);
  }

  return result;
}

uint64_t sub_1000078E8@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10000793C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100004A84(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000799C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000079C8@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100007A4C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

unint64_t sub_100007AA8()
{
  result = qword_100028DA0;
  if (!qword_100028DA0)
  {
    sub_100004C24(&qword_100028DA8, &qword_10001C358);
    sub_100007B34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028DA0);
  }

  return result;
}

unint64_t sub_100007B34()
{
  result = qword_100028DB0;
  if (!qword_100028DB0)
  {
    sub_100004C24(&qword_100028DB8, &qword_10001C360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028DB0);
  }

  return result;
}

__n128 sub_100007B98(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100007BAC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100007BF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100007C60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, _OWORD *a4@<X8>)
{
  v35 = a3;
  v34 = a1;
  v6 = sub_100004A84(&qword_100028DC8, &qword_10001C400);
  v7 = __chkstk_darwin(v6 - 8);
  v33 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v32 - v9;
  v11 = type metadata accessor for Image.ResizingMode();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000F684();
  (*(v12 + 104))(v14, enum case for Image.ResizingMode.stretch(_:), v11);
  v15 = Image.resizable(capInsets:resizingMode:)();

  (*(v12 + 8))(v14, v11);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v49 = 1;
  *&v48[6] = v50;
  *&v48[22] = v51;
  *&v48[38] = v52;
  v16 = sub_10000F794();
  v17 = 1.0;
  v53[0] = v15;
  v53[1] = 0;
  if ((v16 & 1) == 0)
  {
    v17 = 0.0;
  }

  v54 = 1;
  v55 = *v48;
  v56 = *&v48[16];
  *v57 = *&v48[32];
  *&v57[14] = *&v48[46];
  v58 = v17;
  v18 = static Color.secondary.getter();
  sub_100008034(v18, &v36);

  sub_10000793C(v53, &qword_100028DD0, &qword_10001C408);
  *v10 = static HorizontalAlignment.leading.getter();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v19 = sub_100004A84(&qword_100028DD8, &qword_10001C410);
  sub_100008200(v34, a2, v35, &v10[*(v19 + 44)]);
  v20 = v33;
  sub_100009EF0(v10, v33, &qword_100028DC8, &qword_10001C400);
  v21 = v43;
  v46[6] = v42;
  v46[7] = v43;
  v22 = v44;
  v23 = v45;
  v46[8] = v44;
  v46[9] = v45;
  v24 = v38;
  v25 = v39;
  v46[2] = v38;
  v46[3] = v39;
  v26 = v40;
  v27 = v41;
  v46[4] = v40;
  v46[5] = v41;
  v28 = v36;
  v29 = v37;
  v46[0] = v36;
  v46[1] = v37;
  a4[6] = v42;
  a4[7] = v21;
  a4[8] = v22;
  a4[9] = v23;
  a4[2] = v24;
  a4[3] = v25;
  a4[4] = v26;
  a4[5] = v27;
  *a4 = v28;
  a4[1] = v29;
  v30 = a4 + *(sub_100004A84(&qword_100028DE0, &qword_10001C418) + 48);
  sub_100009EF0(v20, v30, &qword_100028DC8, &qword_10001C400);
  sub_100009EF0(v46, v47, &qword_100028DE8, &qword_10001C420);
  sub_10000793C(v10, &qword_100028DC8, &qword_10001C400);
  sub_10000793C(v20, &qword_100028DC8, &qword_10001C400);
  v47[6] = v42;
  v47[7] = v43;
  v47[8] = v44;
  v47[9] = v45;
  v47[2] = v38;
  v47[3] = v39;
  v47[4] = v40;
  v47[5] = v41;
  v47[0] = v36;
  v47[1] = v37;
  return sub_10000793C(v47, &qword_100028DE8, &qword_10001C420);
}

uint64_t sub_100008034@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v6 = v35;
  v7 = v35 * 0.5;
  v8 = v36;
  v9 = DWORD1(v36);
  v10 = *(&v36 + 1);
  v11 = v37;

  v12 = static Alignment.center.getter();
  *v38 = v35 * 0.5;
  *(v38 + 1) = v35;
  v38[1] = v36;
  *v39 = v37;
  *&v39[16] = a1;
  *&v39[24] = 256;
  v33 = v36;
  *v34 = v37;
  *&v34[10] = *&v39[10];
  v32 = v38[0];
  v13 = *v34;
  v14 = *&v34[16];
  v42 = *v34;
  v43 = *&v34[16];
  v40 = v38[0];
  v41 = v36;
  *&v44 = v12;
  *(&v44 + 1) = v15;
  v16 = *v3;
  v17 = v3[1];
  v18 = v3[3];
  v19 = v3[4];
  a2[2] = v3[2];
  a2[3] = v18;
  *a2 = v16;
  a2[1] = v17;
  v20 = v40;
  v21 = v41;
  a2[4] = v19;
  a2[5] = v20;
  v22 = v42;
  v23 = v44;
  a2[8] = v43;
  a2[9] = v23;
  a2[6] = v21;
  a2[7] = v22;
  v45[2] = v13;
  v45[3] = v14;
  v45[0] = v32;
  v45[1] = v33;
  v46 = v12;
  v47 = v15;
  sub_100009EF0(v38, v25, &qword_100028F00, &qword_10001C550);
  sub_100009EF0(v3, v25, &qword_100028DD0, &qword_10001C408);
  sub_100009EF0(&v40, v25, &qword_100028F08, &qword_10001C558);
  sub_10000793C(v45, &qword_100028F08, &qword_10001C558);
  *v25 = v7;
  *&v25[1] = v6;
  v26 = v8;
  v27 = v9;
  v28 = v10;
  v29 = v11;
  v30 = a1;
  v31 = 256;
  return sub_10000793C(v25, &qword_100028F00, &qword_10001C550);
}

uint64_t sub_100008200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, char *a4@<X8>)
{
  v87 = a3;
  v77 = a2;
  v86 = a1;
  v92 = a4;
  v4 = sub_100004A84(&qword_100028DF0, &qword_10001C428);
  v5 = __chkstk_darwin(v4 - 8);
  v91 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v95 = (&v77 - v7);
  v93 = sub_100004A84(&qword_100028DF8, &qword_10001C430);
  v8 = __chkstk_darwin(v93);
  v90 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v77 - v10;
  v89 = sub_100004A84(&qword_100028E00, &qword_10001C438);
  v94 = *(v89 - 8);
  v12 = __chkstk_darwin(v89);
  v88 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v96 = &v77 - v14;
  v100 = sub_10000FA3C();
  v101 = v15;
  v83 = sub_100007894();
  v16 = Text.init<A>(_:)();
  v18 = v17;
  v20 = v19;
  static Font.subheadline.getter();
  v21 = Text.font(_:)();
  v23 = v22;
  v25 = v24;
  v27 = v26;

  sub_100009990(v16, v18, v20 & 1);

  v85 = sub_100004A84(&qword_100028E08, &qword_10001C440);
  v28 = &v11[*(v85 + 36)];
  v84 = sub_100004A84(&qword_100028E10, &qword_10001C870);
  v29 = *(v84 + 28);
  v30 = enum case for Text.TruncationMode.middle(_:);
  v81 = enum case for Text.TruncationMode.middle(_:);
  v80 = type metadata accessor for Text.TruncationMode();
  v31 = *(v80 - 8);
  v79 = *(v31 + 104);
  v82 = v31 + 104;
  v79(v28 + v29, v30, v80);
  *v28 = swift_getKeyPath();
  *v11 = v21;
  *(v11 + 1) = v23;
  v11[16] = v25 & 1;
  *(v11 + 3) = v27;
  KeyPath = swift_getKeyPath();
  v78 = sub_100004A84(&qword_100028E18, &qword_10001C4A8);
  v33 = &v11[*(v78 + 36)];
  *v33 = KeyPath;
  *(v33 + 1) = 0;
  v33[16] = 1;
  LOBYTE(KeyPath) = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v34 = &v11[*(v93 + 36)];
  *v34 = KeyPath;
  *(v34 + 1) = v35;
  *(v34 + 2) = v36;
  *(v34 + 3) = v37;
  *(v34 + 4) = v38;
  v34[40] = 0;
  v39 = v86;
  v40 = v77;
  v97 = v86;
  v98 = v77;
  LODWORD(v29) = v87;
  v99 = v87;
  sub_100004A84(&qword_100028E20, &qword_10001C4B0);
  sub_100009B24();
  sub_100009D20();
  View.swipeActions<A>(edge:allowsFullSwipe:content:)();
  sub_10000793C(v11, &qword_100028DF8, &qword_10001C430);
  v41 = static VerticalAlignment.center.getter();
  v42 = v95;
  *v95 = v41;
  v42[1] = 0;
  *(v42 + 16) = 1;
  v43 = v42;
  v44 = sub_100004A84(&qword_100028E80, &qword_10001C4D0);
  sub_100008B14(v39, v40, v29, v43 + *(v44 + 44));
  v100 = sub_10000FC44(v29);
  v101 = v45;
  v46 = Text.init<A>(_:)();
  v48 = v47;
  LOBYTE(v29) = v49;
  static Font.subheadline.getter();
  v50 = Text.font(_:)();
  v52 = v51;
  LOBYTE(v39) = v53;

  sub_100009990(v46, v48, v29 & 1);

  v54 = Text.monospacedDigit()();
  v56 = v55;
  LOBYTE(v29) = v57;
  v59 = v58;
  sub_100009990(v50, v52, v39 & 1);

  v60 = &v11[*(v85 + 36)];
  v79(v60 + *(v84 + 28), v81, v80);
  *v60 = swift_getKeyPath();
  *v11 = v54;
  *(v11 + 1) = v56;
  v11[16] = v29 & 1;
  *(v11 + 3) = v59;
  v61 = swift_getKeyPath();
  v62 = &v11[*(v78 + 36)];
  *v62 = v61;
  *(v62 + 1) = 0;
  v62[16] = 1;
  LOBYTE(v54) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v63 = &v11[*(v93 + 36)];
  *v63 = v54;
  *(v63 + 1) = v64;
  *(v63 + 2) = v65;
  *(v63 + 3) = v66;
  *(v63 + 4) = v67;
  v63[40] = 0;
  v68 = *(v94 + 16);
  v70 = v88;
  v69 = v89;
  v68(v88, v96, v89);
  v71 = v91;
  sub_100009EF0(v95, v91, &qword_100028DF0, &qword_10001C428);
  v72 = v90;
  sub_100009EF0(v11, v90, &qword_100028DF8, &qword_10001C430);
  v73 = v92;
  v68(v92, v70, v69);
  v74 = sub_100004A84(&qword_100028E88, &qword_10001C4D8);
  sub_100009EF0(v71, &v73[*(v74 + 48)], &qword_100028DF0, &qword_10001C428);
  sub_100009EF0(v72, &v73[*(v74 + 64)], &qword_100028DF8, &qword_10001C430);
  sub_10000793C(v11, &qword_100028DF8, &qword_10001C430);
  sub_10000793C(v95, &qword_100028DF0, &qword_10001C428);
  v75 = *(v94 + 8);
  v75(v96, v69);
  sub_10000793C(v72, &qword_100028DF8, &qword_10001C430);
  sub_10000793C(v71, &qword_100028DF0, &qword_10001C428);
  return (v75)(v70, v69);
}

uint64_t sub_100008968@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  v9 = a2;
  sub_100004A84(&qword_100028EF0, &qword_10001C518);
  sub_10000A0B0(&qword_100028EF8, &qword_100028EF0, &qword_10001C518, &protocol conformance descriptor for Label<A, B>);
  Button.init(action:label:)();
  static Color.red.getter();
  KeyPath = swift_getKeyPath();
  v11 = AnyShapeStyle.init<A>(_:)();
  result = sub_100004A84(&qword_100028E20, &qword_10001C4B0);
  v13 = (a4 + *(result + 36));
  *v13 = KeyPath;
  v13[1] = v11;
  return result;
}

uint64_t sub_100008AB0()
{
  v0 = LocalizedStringKey.init(stringLiteral:)();

  return Label<>.init(_:systemImage:)(v0);
}

uint64_t sub_100008B14@<X0>(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v62 = a3;
  v61 = a1;
  v70 = a4;
  v5 = sub_100004A84(&qword_100028E90, &qword_10001C4E0);
  v65 = *(v5 - 8);
  v66 = v5;
  __chkstk_darwin(v5);
  v63 = &v54 - v6;
  v7 = sub_100004A84(&qword_100028E98, &qword_10001C4E8);
  v68 = *(v7 - 8);
  v69 = v7;
  v8 = __chkstk_darwin(v7);
  v67 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v64 = &v54 - v10;
  v58 = sub_100004A84(&qword_100028EA0, &qword_10001C4F0);
  __chkstk_darwin(v58);
  v59 = &v54 - v11;
  v12 = type metadata accessor for LinearProgressViewStyle();
  v56 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100004A84(&qword_100028EA8, &qword_10001C4F8);
  v55 = *(v15 - 8);
  v16 = __chkstk_darwin(v15);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v54 - v19;
  v21 = sub_100004A84(&qword_100028EB0, &qword_10001C500);
  v57 = *(v21 - 8);
  v22 = __chkstk_darwin(v21);
  v24 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v54 - v25;
  v27 = sub_100004A84(&qword_100028EB8, &qword_10001C508);
  v28 = __chkstk_darwin(v27 - 8);
  v60 = &v54 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v71 = &v54 - v30;
  if (sub_10000FB80() == 0.0 && ([a2 state] == 5 || objc_msgSend(a2, "state") == 10))
  {
    ProgressView<>.init<>()();
    LinearProgressViewStyle.init()();
    v31 = sub_10000A0B0(&qword_100028EC8, &qword_100028EA8, &qword_10001C4F8, &protocol conformance descriptor for ProgressView<A, B>);
    v32 = sub_100009FBC(&qword_100028ED0, &type metadata accessor for LinearProgressViewStyle, &protocol conformance descriptor for LinearProgressViewStyle);
    View.progressViewStyle<A>(_:)();
    (*(v56 + 8))(v14, v12);
    (*(v55 + 8))(v20, v15);
    v33 = v57;
    (*(v57 + 16))(v59, v26, v21);
    swift_storeEnumTagMultiPayload();
    v72 = *&v15;
    v73 = v12;
    v74 = v31;
    v75 = v32;
    swift_getOpaqueTypeConformance2();
    v34 = v71;
    _ConditionalContent<>.init(storage:)();
    v24 = v26;
  }

  else
  {
    v35 = 0.0;
    if ([a2 state] == 5 && sub_10000FB80() != 0.0)
    {
      v35 = sub_10000FB80() * 100.0;
    }

    v72 = v35;
    LOBYTE(v73) = 0;
    v76 = 0x4059000000000000;
    sub_100009E04();
    ProgressView.init<A>(value:total:)();
    LinearProgressViewStyle.init()();
    v36 = sub_10000A0B0(&qword_100028EC8, &qword_100028EA8, &qword_10001C4F8, &protocol conformance descriptor for ProgressView<A, B>);
    v37 = sub_100009FBC(&qword_100028ED0, &type metadata accessor for LinearProgressViewStyle, &protocol conformance descriptor for LinearProgressViewStyle);
    View.progressViewStyle<A>(_:)();
    (*(v56 + 8))(v14, v12);
    (*(v55 + 8))(v18, v15);
    v33 = v57;
    (*(v57 + 16))(v59, v24, v21);
    swift_storeEnumTagMultiPayload();
    v72 = *&v15;
    v73 = v12;
    v74 = v36;
    v75 = v37;
    swift_getOpaqueTypeConformance2();
    v34 = v71;
    _ConditionalContent<>.init(storage:)();
  }

  (*(v33 + 8))(v24, v21);
  v38 = swift_allocObject();
  *(v38 + 16) = v61;
  *(v38 + 24) = a2;
  *(v38 + 32) = v62 & 1;
  v39 = a2;
  v40 = v63;
  Button.init(action:label:)();
  v41 = static Color.secondary.getter();
  v42 = static Color.white.getter();
  v72 = *&v41;
  v73 = v42;
  sub_10000A0B0(&qword_100028ED8, &qword_100028E90, &qword_10001C4E0, &protocol conformance descriptor for Button<A>);
  sub_100009E9C();
  v43 = v64;
  v44 = v66;
  View.buttonStyle<A>(_:)();

  (*(v65 + 8))(v40, v44);
  v45 = v60;
  sub_100009EF0(v34, v60, &qword_100028EB8, &qword_10001C508);
  v47 = v67;
  v46 = v68;
  v48 = *(v68 + 16);
  v49 = v69;
  v48(v67, v43, v69);
  v50 = v70;
  sub_100009EF0(v45, v70, &qword_100028EB8, &qword_10001C508);
  v51 = sub_100004A84(&qword_100028EE8, &qword_10001C510);
  v48((v50 + *(v51 + 48)), v47, v49);
  v52 = *(v46 + 8);
  v52(v43, v49);
  sub_10000793C(v71, &qword_100028EB8, &qword_10001C508);
  v52(v47, v49);
  return sub_10000793C(v45, &qword_100028EB8, &qword_10001C508);
}

uint64_t sub_1000094C4(uint64_t a1, void *a2)
{
  v21 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v21 - 8);
  __chkstk_darwin(v21);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v22 = *(v5 - 8);
  v23 = v5;
  __chkstk_darwin(v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchTime();
  v20 = v8;
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v19 - v13;
  [a2 cancel];
  sub_100009F58();
  v15 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v19 = *(v9 + 8);
  v19(v12, v8);
  aBlock[4] = sub_100009874;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100005A54;
  aBlock[3] = &unk_100025AB0;
  v16 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100009FBC(&qword_100028CB0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100004A84(&qword_100028CB8, &unk_10001BD60);
  sub_10000A0B0(&qword_100028CC0, &qword_100028CB8, &unk_10001BD60, &protocol conformance descriptor for [A]);
  v17 = v21;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v16);

  (*(v24 + 8))(v4, v17);
  (*(v22 + 8))(v7, v23);
  return (v19)(v14, v20);
}

void sub_100009874()
{
  v0 = [objc_opt_self() defaultCenter];
  [v0 postNotificationName:@"PKJobListNotification" object:0];
}

uint64_t sub_1000098E4@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_100009924@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  *a1 = static VerticalAlignment.top.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v6 = sub_100004A84(&qword_100028DC0, &qword_10001C3F8);
  return sub_100007C60(v3, v4, v5, (a1 + *(v6 + 44)));
}

uint64_t sub_100009990(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1000099E8(uint64_t a1)
{
  v2 = type metadata accessor for Text.TruncationMode();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.truncationMode.setter();
}

uint64_t sub_100009AB4@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_100009B24()
{
  result = qword_100028E28;
  if (!qword_100028E28)
  {
    sub_100004C24(&qword_100028DF8, &qword_10001C430);
    sub_100009BB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028E28);
  }

  return result;
}

unint64_t sub_100009BB0()
{
  result = qword_100028E30;
  if (!qword_100028E30)
  {
    sub_100004C24(&qword_100028E18, &qword_10001C4A8);
    sub_100009C68();
    sub_10000A0B0(&qword_100028E48, &qword_100028E50, &qword_10001C4B8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028E30);
  }

  return result;
}

unint64_t sub_100009C68()
{
  result = qword_100028E38;
  if (!qword_100028E38)
  {
    sub_100004C24(&qword_100028E08, &qword_10001C440);
    sub_10000A0B0(&qword_100028E40, &qword_100028E10, &qword_10001C870, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028E38);
  }

  return result;
}

unint64_t sub_100009D20()
{
  result = qword_100028E58;
  if (!qword_100028E58)
  {
    sub_100004C24(&qword_100028E20, &qword_10001C4B0);
    sub_10000A0B0(&qword_100028E60, &qword_100028E68, &qword_10001C4C0, &protocol conformance descriptor for Button<A>);
    sub_10000A0B0(&qword_100028E70, &qword_100028E78, &qword_10001C4C8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028E58);
  }

  return result;
}

unint64_t sub_100009E04()
{
  result = qword_100028EC0;
  if (!qword_100028EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028EC0);
  }

  return result;
}

uint64_t sub_100009E58()
{

  return _swift_deallocObject(v0, 33, 7);
}

unint64_t sub_100009E9C()
{
  result = qword_100028EE0;
  if (!qword_100028EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028EE0);
  }

  return result;
}

uint64_t sub_100009EF0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100004A84(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_100009F58()
{
  result = qword_100028C80;
  if (!qword_100028C80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100028C80);
  }

  return result;
}

uint64_t sub_100009FA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009FBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000A014@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tint.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10000A0B0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100004C24(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000A224(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::Int sub_10000A26C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10000A2B4(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_10000A328(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100004C24(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000A398()
{
  result = static Font.headline.getter();
  qword_100029350 = result;
  return result;
}

void sub_10000A3B8()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x800000010001A540;
  v1._object = 0x800000010001A5F0;
  v4._countAndFlagsBits = 0xD00000000000002ELL;
  v1._countAndFlagsBits = 0xD000000000000010;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100029358 = v3;
}

void sub_10000A470()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x800000010001A590;
  v1._object = 0x800000010001A570;
  v4._countAndFlagsBits = 0xD000000000000035;
  v1._countAndFlagsBits = 0xD000000000000015;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100029368 = v3;
}

void sub_10000A528()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x800000010001A4B0;
  v1._countAndFlagsBits = 0x676E6974696157;
  v1._object = 0xE700000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000018;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100029378 = v3;
}

void sub_10000A5D8()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x800000010001A520;
  v1._countAndFlagsBits = 0x646573756150;
  v1._object = 0xE600000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000015;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100029388 = v3;
}

void sub_10000A684()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x800000010001A540;
  v1._countAndFlagsBits = 0x676E69746E697250;
  v1._object = 0xE800000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD00000000000002ELL;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100029398 = v3;
}

void sub_10000A734()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x800000010001A5D0;
  v1._countAndFlagsBits = 0x646570706F7453;
  v1._object = 0xE700000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000018;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_1000293A8 = v3;
}

void sub_10000A7E4()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x800000010001A610;
  v1._countAndFlagsBits = 0x64656C65636E6143;
  v1._object = 0xE800000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000019;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_1000293B8 = v3;
}

void sub_10000A894()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x800000010001A630;
  v1._countAndFlagsBits = 0x64656C696146;
  v1._object = 0xE600000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000017;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_1000293C8 = v3;
}

void sub_10000A940()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x800000010001A650;
  v1._countAndFlagsBits = 0x6574656C706D6F43;
  v1._object = 0xE900000000000064;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000019;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_1000293D8 = v3;
}

void sub_10000A9F4()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x800000010001A710;
  v1._countAndFlagsBits = 0x6E776F6E6B6E55;
  v1._object = 0xE700000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000018;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_1000293E8 = v3;
}

void sub_10000AAA4()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x800000010001A670;
  v1._countAndFlagsBits = 8236;
  v1._object = 0xE200000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000027;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_1000293F8 = v3;
}

void sub_10000AB48()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0xE400000000000000;
  v1._countAndFlagsBits = 9666786;
  v1._object = 0xA300000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 1752392036;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100029408 = v3;
}

void sub_10000ABE4()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0xE000000000000000;
  v1._countAndFlagsBits = 0x676E696D6F636E49;
  v1._object = 0xE800000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100029418 = v3;
}

void sub_10000AC84()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x800000010001A4F0;
  v1._object = 0x800000010001A4D0;
  v4._countAndFlagsBits = 0xD000000000000026;
  v1._countAndFlagsBits = 0xD000000000000017;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100029428 = v3;
}

void sub_10000AD3C()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x800000010001A6E0;
  v1._object = 0x800000010001A6C0;
  v1._countAndFlagsBits = 0x1000000000000016;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD00000000000002ALL;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100029438 = v3;
}

void sub_10000ADF0()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x800000010001A6A0;
  v1._countAndFlagsBits = 541074806;
  v1._object = 0xE400000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000019;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100029448 = v3;
}

__n128 sub_10000AE98@<Q0>(uint64_t a3@<X8>)
{
  sub_100004A84(&qword_100028F88, &qword_10001C7A8);
  State.projectedValue.getter();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = AppStorage.init<A>(wrappedValue:_:store:)();
  if (qword_100028A00 != -1)
  {
    swift_once();
  }

  type metadata accessor for PrintMonitor(0);
  sub_10000B41C();

  v5 = ObservedObject.init(wrappedValue:)();
  *a3 = v8;
  result = v9;
  *(a3 + 8) = v9;
  *(a3 + 24) = v4;
  *(a3 + 32) = v5;
  *(a3 + 40) = v7;
  return result;
}

uint64_t sub_10000AFAC()
{
  v1 = sub_100004A84(&qword_100028F60, &qword_10001C798);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - v3;
  v6 = *v0;
  v5 = v0[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;

  sub_100004A84(&qword_100028F68, &qword_10001C7A0);
  sub_10000A0B0(&qword_100028F70, &qword_100028F68, &qword_10001C7A0, &protocol conformance descriptor for NavigationStack<A, B>);
  WindowGroup.init(id:title:lazyContent:)();
  sub_10000A0B0(&qword_100028F78, &qword_100028F60, &qword_10001C798, &protocol conformance descriptor for WindowGroup<A>);
  static SceneBuilder.buildBlock<A>(_:)();
  return (*(v2 + 8))(v4, v1);
}

void *sub_10000B184@<X0>(void *a1@<X8>)
{
  sub_100004A84(&qword_100028F58, &qword_10001C790);
  result = State.init(wrappedValue:)();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10000B21C();
  static App.main()();
  return 0;
}

unint64_t sub_10000B21C()
{
  result = qword_100028F50;
  if (!qword_100028F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028F50);
  }

  return result;
}

uint64_t sub_10000B270(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000B2B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10000B320()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10000B3C8()
{
  result = qword_100028F80;
  if (!qword_100028F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028F80);
  }

  return result;
}

unint64_t sub_10000B41C()
{
  result = qword_100028CC8;
  if (!qword_100028CC8)
  {
    type metadata accessor for PrintMonitor(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028CC8);
  }

  return result;
}

__n128 sub_10000B4B8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000B4C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000B50C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10000B578@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v39 = a3;
  v37 = sub_100004A84(&qword_100028F98, &unk_10001C860) - 8;
  v5 = __chkstk_darwin(v37);
  v38 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v36 - v7;
  v40 = a1;
  v41 = a2;
  sub_100007894();

  v9 = Text.init<A>(_:)();
  v11 = v10;
  v13 = v12;
  static Font.headline.getter();
  v14 = Text.font(_:)();
  v16 = v15;
  v18 = v17;

  sub_100009990(v9, v11, v13 & 1);

  static Font.Weight.medium.getter();
  v19 = Text.fontWeight(_:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_100009990(v14, v16, v18 & 1);

  v26 = &v8[*(sub_100004A84(&qword_100028E08, &qword_10001C440) + 36)];
  v27 = *(sub_100004A84(&qword_100028E10, &qword_10001C870) + 28);
  v28 = enum case for Text.TruncationMode.middle(_:);
  v29 = type metadata accessor for Text.TruncationMode();
  (*(*(v29 - 8) + 104))(v26 + v27, v28, v29);
  *v26 = swift_getKeyPath();
  *v8 = v19;
  *(v8 + 1) = v21;
  v8[16] = v23 & 1;
  *(v8 + 3) = v25;
  v30 = static Edge.Set.leading.getter();
  v31 = v38;
  v32 = &v8[*(v37 + 44)];
  *v32 = v30;
  *(v32 + 8) = 0u;
  *(v32 + 24) = 0u;
  v32[40] = 1;
  sub_10000B8BC(v8, v31);
  v33 = v39;
  sub_10000B8BC(v31, v39);
  v34 = v33 + *(sub_100004A84(&qword_100028FA0, &qword_10001C8A8) + 48);
  *v34 = 0;
  *(v34 + 8) = 1;
  sub_10000B92C(v8);
  return sub_10000B92C(v31);
}

uint64_t sub_10000B820@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];

  sub_100016F40(v3, v4);

  *a1 = static VerticalAlignment.firstTextBaseline.getter();
  *(a1 + 8) = 0x4000000000000000;
  *(a1 + 16) = 0;
  v7 = sub_100004A84(&qword_100028F90, &qword_10001C858);
  return sub_10000B578(v6, v5, a1 + *(v7 + 44));
}

uint64_t sub_10000B8BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004A84(&qword_100028F98, &unk_10001C860);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000B92C(uint64_t a1)
{
  v2 = sub_100004A84(&qword_100028F98, &unk_10001C860);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10000B998()
{
  result = qword_100028FA8;
  if (!qword_100028FA8)
  {
    sub_100004C24(&qword_100028FB0, &qword_10001C8B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028FA8);
  }

  return result;
}

__n128 sub_10000B9FC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_10000BA10(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000BA58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10000BAD0()
{
  v1 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100004A84(&qword_100028FB8, &qword_10001C968);
  __chkstk_darwin(v5 - 8);
  v7 = &v35 - v6;
  v37 = sub_100004A84(&qword_100028FC0, &qword_10001C970);
  __chkstk_darwin(v37);
  v38 = &v35 - v8;
  v36 = v0;
  v9 = sub_10000BE70();
  v10 = sub_10000EEFC(v9);
  v11 = v10;
  v13 = v12;
  v14 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v14 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {

    v15 = sub_100016F40(v11, v13);
    v18 = sub_100015410(v15, v16, v17);
    v35 = v4;
    v19 = v2;
    v20 = v1;
    v22 = v21;

    if (v22)
    {
      v23 = v18;
    }

    else
    {
      v23 = 0;
    }

    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = 0xE000000000000000;
    }

    v1 = v20;
    v2 = v19;
    v4 = v35;
  }

  else
  {
    v23 = 0;
    v24 = 0xE000000000000000;
  }

  *v7 = static HorizontalAlignment.center.getter();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v25 = sub_100004A84(&qword_100028FC8, &qword_10001C978);
  sub_10000C014(v9, v23, v24, v11, v13, v36, &v7[*(v25 + 44)]);

  v26 = static Edge.Set.leading.getter();
  v27 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v26)
  {
    v27 = Edge.Set.init(rawValue:)();
  }

  v28 = v7;
  v29 = v38;
  sub_10000F008(v28, v38);
  *(v29 + *(v37 + 36)) = v27;
  v30 = [objc_opt_self() mainBundle];
  v31._object = 0xEB00000000726564;
  v40._object = 0xEB00000000726564;
  v31._countAndFlagsBits = 0x724F20746E697250;
  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  v40._countAndFlagsBits = 0x724F20746E697250;
  v33 = NSLocalizedString(_:tableName:bundle:value:comment:)(v31, 0, v30, v32, v40);

  v39 = v33;
  (*(v2 + 104))(v4, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v1);
  sub_10000F078();
  sub_100007894();
  View.navigationBarTitle<A>(_:displayMode:)();
  (*(v2 + 8))(v4, v1);

  return sub_10000F130(v29);
}

unint64_t sub_10000BE70()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v10 = sub_10000E608(v1);
  sub_10000CB40(&v10);

  v2 = v10;
  v4 = *v0;
  v3 = v0[1];
  v5 = v0[2];
  v13 = v5;
  v14 = v4;
  v10 = v4;
  v11 = v3;
  v12 = v5;
  sub_10000F32C(&v14, &v9);

  sub_100009EF0(&v13, &v9, &qword_100028F58, &qword_10001C790);
  sub_100004A84(&qword_100029060, &qword_10001CA30);
  Binding.wrappedValue.getter();
  v6 = v9;

  v7 = sub_10000ECA8(v6, v2);

  v10 = v4;
  v11 = v3;
  v12 = v5;
  v9 = v7;
  Binding.wrappedValue.setter();
  sub_10000F420(&v14);

  sub_10000793C(&v13, &qword_100028F58, &qword_10001C790);
  return v2;
}

uint64_t sub_10000C014@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v57 = a6;
  *&v69 = a5;
  v64 = a7;
  v59 = type metadata accessor for PlainListStyle();
  v58 = *(v59 - 8);
  __chkstk_darwin(v59);
  v53 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100004A84(&qword_100028FE0, &qword_10001C980);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v50 - v14;
  v63 = sub_100004A84(&qword_100028FE8, &qword_10001C988);
  v60 = *(v63 - 8);
  v16 = __chkstk_darwin(v63);
  v71 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v65 = &v50 - v18;
  v61 = type metadata accessor for Divider();
  v62 = *(v61 - 8);
  v19 = __chkstk_darwin(v61);
  v70 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v50 - v21;
  Divider.init()();
  if (!(a1 >> 62))
  {
    v23 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v23)
    {
      goto LABEL_3;
    }

LABEL_9:
    *&v72 = 0;
    sub_100004A84(&qword_100029038, &unk_10001C9B0);
    State.init(wrappedValue:)();
    v83 = 0;
    v72 = v76;
    v75[24] = 0;
    sub_100004A84(&qword_100028FF0, &qword_10001C990);
    sub_10000F198();
    sub_10000A0B0(&qword_100029000, &qword_100028FF0, &qword_10001C990, &protocol conformance descriptor for TupleView<A>);
    v23 = _ConditionalContent<>.init(storage:)();
    goto LABEL_10;
  }

  v23 = _CocoaArrayWrapper.endIndex.getter();
  if (!v23)
  {
    goto LABEL_9;
  }

LABEL_3:
  v24 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v24 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v24)
  {
    v25 = v69;

    v26 = static Animation.easeInOut(duration:)();
    v51 = a1;
    v27 = v26;
    v52 = v12;
    v82 = 1;
    swift_bridgeObjectRetain_n();

    v83 = 1;
    *&v72 = 0;
    BYTE8(v72) = 1;
    *&v73 = a4;
    *(&v73 + 1) = v25;
    *&v74 = a2;
    *(&v74 + 1) = a3;
    *v75 = v27;
    *&v75[8] = a2;
    *&v75[16] = a3;
    v75[24] = 1;
    sub_100004A84(&qword_100028FF0, &qword_10001C990);
    sub_10000F198();
    sub_10000A0B0(&qword_100029000, &qword_100028FF0, &qword_10001C990, &protocol conformance descriptor for TupleView<A>);
    v12 = v52;
    _ConditionalContent<>.init(storage:)();
    a1 = v51;

    swift_bridgeObjectRelease_n();

LABEL_10:
    v68 = v77;
    v69 = v76;
    v67 = v79;
    v66 = v78;
    v56 = v80;
    v55 = v81;
    goto LABEL_11;
  }

  v56 = 0;
  v69 = 0u;
  v55 = 255;
  v68 = 0u;
  v66 = 0u;
  v67 = 0u;
LABEL_11:
  v54 = v22;
  __chkstk_darwin(v23);
  v28 = v57;
  *(&v50 - 2) = a1;
  *(&v50 - 1) = v28;
  sub_100004A84(&qword_100029008, &qword_10001C998);
  sub_10000F1F4();
  List<>.init(content:)();
  v29 = v53;
  PlainListStyle.init()();
  sub_10000A0B0(&qword_100029020, &qword_100028FE0, &qword_10001C980, &protocol conformance descriptor for List<A, B>);
  v30 = v65;
  v31 = v59;
  View.listStyle<A>(_:)();
  (*(v58 + 8))(v29, v31);
  (*(v13 + 8))(v15, v12);
  v32 = v62;
  v33 = *(v62 + 16);
  v34 = v70;
  v35 = v61;
  v33(v70, v22, v61);
  v36 = v60;
  v37 = *(v60 + 16);
  v38 = v63;
  v37(v71, v30, v63);
  v39 = v64;
  v33(v64, v34, v35);
  v40 = sub_100004A84(&qword_100029028, &qword_10001C9A0);
  v41 = &v39[*(v40 + 48)];
  v72 = v69;
  v73 = v68;
  v74 = v66;
  *v75 = v67;
  v42 = v56;
  *&v75[16] = v56;
  LOBYTE(v33) = v55;
  v75[24] = v55;
  v44 = v68;
  v43 = v66;
  *v41 = v69;
  *(v41 + 1) = v44;
  v45 = *v75;
  *(v41 + 2) = v43;
  *(v41 + 3) = v45;
  *(v41 + 57) = *&v75[9];
  v46 = v71;
  v37(&v39[*(v40 + 64)], v71, v38);
  sub_100009EF0(&v72, &v76, &qword_100029030, &qword_10001C9A8);
  v47 = *(v36 + 8);
  v47(v65, v38);
  v48 = *(v32 + 8);
  v48(v54, v35);
  v47(v46, v38);
  v76 = v69;
  v77 = v68;
  v78 = v66;
  v79 = v67;
  v80 = v42;
  v81 = v33;
  sub_10000793C(&v76, &qword_100029030, &qword_10001C9A8);
  return (v48)(v70, v35);
}

uint64_t sub_10000C8D4(uint64_t a1, uint64_t *a2)
{
  v8 = a1;
  swift_getKeyPath();
  v12 = *a2;
  v3 = a2[2];
  v10 = a2[3];
  v11 = v3;
  v9 = *(a2 + 2);
  v4 = swift_allocObject();
  v5 = *(a2 + 1);
  v4[1] = *a2;
  v4[2] = v5;
  v4[3] = *(a2 + 2);

  sub_10000F32C(&v12, v7);

  sub_100009EF0(&v11, v7, &qword_100028F58, &qword_10001C790);
  sub_100009EF0(&v10, v7, &qword_100029040, &qword_10001C9D8);
  sub_100009EF0(&v9, v7, &qword_100029048, &qword_10001C9E0);
  sub_100004A84(&unk_100028B40, &qword_10001BB80);
  sub_10000A0B0(&qword_100029050, &unk_100028B40, &qword_10001BB80, &protocol conformance descriptor for [A]);
  sub_10000F3D4(&qword_100029058, &protocol conformance descriptor for NSObject);
  sub_10000F278();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_10000CA8C@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_10000F388();
  sub_10000F3D4(&qword_100028CA8, &protocol conformance descriptor for PCPrintJob);
  v4 = v3;
  result = ObservedObject.init(wrappedValue:)();
  *a2 = result;
  *(a2 + 8) = v6;
  *(a2 + 16) = 1;
  return result;
}

uint64_t sub_10000CB40(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_100016868(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_10000CC44(v6);
  return specialized ContiguousArray._endMutation()();
}

void *sub_10000CBBC(uint64_t a1, uint64_t a2)
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

  sub_100004A84(&qword_100029078, qword_10001CA40);
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

void sub_10000CC44(uint64_t *a1)
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
        sub_10000F388();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_10000D124(v8, v9, a1, v4);
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
    sub_10000CD48(0, v2, 1, a1);
  }
}

void sub_10000CD48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v51 = type metadata accessor for Date();
  v8 = __chkstk_darwin(v51);
  v46 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v45 = &v40 - v11;
  v12 = __chkstk_darwin(v10);
  v49 = &v40 - v13;
  __chkstk_darwin(v12);
  v16 = &v40 - v15;
  v41 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v47 = (v14 + 8);
    v48 = (v14 + 32);
    v52 = v17;
    v18 = v17 + 8 * a3 - 8;
    v19 = a1 - a3;
    v20 = &PCPrintJob__metaData;
LABEL_6:
    v43 = v18;
    v44 = a3;
    v21 = *(v52 + 8 * a3);
    v42 = v19;
    while (1)
    {
      v22 = *v18;
      v23 = v21;
      v24 = v22;
      if (([v23 *&v20[19].ivar_base_size] == 5 || objc_msgSend(v23, *&v20[19].ivar_base_size) == 10) && (objc_msgSend(v24, *&v20[19].ivar_base_size) == 5 || objc_msgSend(v24, *&v20[19].ivar_base_size) == 10))
      {
        v25 = [v23 timeAtProcessing];
        if (v25)
        {
          v26 = v49;
          v27 = v25;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v50 = *v48;
          v50(v16, v26, v51);
          v28 = [v24 timeAtProcessing];
          if (v28)
          {
            v29 = v28;
            v30 = v46;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v31 = v16;
            v32 = v45;
            v33 = v51;
            v50(v45, v30, v51);
            LODWORD(v50) = static Date.< infix(_:_:)();
            v34 = *v47;
            v35 = v32;
            v16 = v31;
            (*v47)(v35, v33);
            v34(v31, v33);
            v20 = &PCPrintJob__metaData;

            if ((v50 & 1) == 0)
            {
              goto LABEL_5;
            }

            goto LABEL_22;
          }

          (*v47)(v16, v51);
        }
      }

      if ([v23 *&v20[19].ivar_base_size] == 5 || objc_msgSend(v23, *&v20[19].ivar_base_size) == 10)
      {
      }

      else
      {
        if ([v24 *&v20[19].ivar_base_size] == 5 || objc_msgSend(v24, *&v20[19].ivar_base_size) == 10)
        {

LABEL_5:
          a3 = v44 + 1;
          v18 = v43 + 8;
          v19 = v42 - 1;
          if (v44 + 1 == v41)
          {
            return;
          }

          goto LABEL_6;
        }

        v36 = [v23 localJobID];
        v37 = [v24 localJobID];

        if (v36 >= v37)
        {
          goto LABEL_5;
        }
      }

LABEL_22:
      if (!v52)
      {
        __break(1u);
        return;
      }

      v38 = *v18;
      v21 = *(v18 + 8);
      *v18 = v21;
      *(v18 + 8) = v38;
      v18 -= 8;
      if (__CFADD__(v19++, 1))
      {
        goto LABEL_5;
      }
    }
  }
}

void sub_10000D124(void **a1, uint64_t a2, void *a3, unint64_t a4)
{
  v145 = a1;
  v6 = type metadata accessor for Date();
  v7 = __chkstk_darwin(v6);
  v153 = &v140 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v152 = &v140 - v10;
  v11 = __chkstk_darwin(v9);
  v157 = &v140 - v12;
  v13 = __chkstk_darwin(v11);
  v162 = &v140 - v14;
  v15 = __chkstk_darwin(v13);
  v144 = &v140 - v16;
  v17 = __chkstk_darwin(v15);
  v143 = &v140 - v18;
  v19 = __chkstk_darwin(v17);
  v148 = &v140 - v20;
  v21 = __chkstk_darwin(v19);
  v24 = a3[1];
  if (v24 >= 1)
  {
    v146 = &v140 - v23;
    v159 = v21;
    v141 = a4;
    v25 = 0;
    v161 = (v22 + 32);
    v158 = (v22 + 8);
    v26 = _swiftEmptyArrayStorage;
    v27 = &PCPrintJob__metaData;
    v28 = 0x100028000;
    v147 = a3;
    while (1)
    {
      v29 = v25;
      if (v25 + 1 >= v24)
      {
        v155 = v25 + 1;
        goto LABEL_44;
      }

      v142 = v26;
      v30 = *a3;
      v31 = *(*a3 + 8 * (v25 + 1));
      v163 = *(*a3 + 8 * v25);
      v32 = v163;
      v164 = v31;
      v33 = v31;
      v34 = v32;
      v35 = v154;
      LODWORD(v160) = sub_1000033E0(&v164, &v163);
      v154 = v35;
      if (v35)
      {

        return;
      }

      v155 = v29 + 2;
      if (v29 + 2 >= v24)
      {
        v28 = 0x100028000;
        goto LABEL_34;
      }

      v140 = v29;
      v36 = (v30 + 8 * v29 + 16);
      v156 = v24;
      v37 = v160;
      do
      {
        v38 = *(v36 - 1);
        v39 = *v36;
        v40 = v38;
        if (([v39 *&v27[19].ivar_base_size] == 5 || objc_msgSend(v39, *&v27[19].ivar_base_size) == 10) && (objc_msgSend(v40, *&v27[19].ivar_base_size, v140) == 5 || objc_msgSend(v40, *&v27[19].ivar_base_size) == 10))
        {
          v41 = [v39 timeAtProcessing];
          if (v41)
          {
            v42 = v148;
            v43 = v41;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v44 = *v161;
            v45 = v146;
            v46 = v42;
            a4 = v159;
            (*v161)(v146, v46, v159);
            v47 = [v40 timeAtProcessing];
            if (v47)
            {
              v48 = v144;
              v49 = v47;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v50 = v143;
              v44(v143, v48, a4);
              LOBYTE(v48) = static Date.< infix(_:_:)();
              v51 = *v158;
              (*v158)(v50, a4);
              v51(v45, a4);
              v27 = &PCPrintJob__metaData;

              v52 = v160 ^ v48;
              v37 = v160;
              a3 = v147;
              v24 = v156;
              if (v52)
              {
                goto LABEL_33;
              }

              goto LABEL_9;
            }

            (*v158)(v45, a4);
            a3 = v147;
            v24 = v156;
          }
        }

        if ([v39 *&v27[19].ivar:v140 base:?size] == 5 || objc_msgSend(v39, *&v27[19].ivar_base_size) == 10)
        {

          if ((v37 & 1) == 0)
          {
            v26 = v142;
            v28 = 0x100028000;
            v29 = v140;
            goto LABEL_44;
          }
        }

        else if ([v40 *&v27[19].ivar_base_size] == 5 || objc_msgSend(v40, *&v27[19].ivar_base_size) == 10)
        {

          if (v37)
          {
            v26 = v142;
            v28 = 0x100028000;
            v29 = v140;
            goto LABEL_35;
          }
        }

        else
        {
          a4 = &PCPrintJob__metaData;
          v53 = [v39 localJobID];
          v54 = [v40 localJobID];

          v55 = v53 < v54;
          v24 = v156;
          v56 = !v55;
          if ((v37 & 1) == v56)
          {
            goto LABEL_33;
          }
        }

LABEL_9:
        ++v36;
        ++v155;
      }

      while (v24 != v155);
      v155 = v24;
LABEL_33:
      v28 = 0x100028000;
      v29 = v140;
LABEL_34:
      v26 = v142;
      if (v160)
      {
LABEL_35:
        v57 = v155;
        if (v155 >= v29)
        {
          if (v29 < v155)
          {
            v58 = 8 * v155 - 8;
            v59 = 8 * v29;
            v60 = v29;
            while (1)
            {
              if (v60 != --v57)
              {
                v62 = *a3;
                if (!*a3)
                {
                  goto LABEL_167;
                }

                v61 = *(v62 + v59);
                *(v62 + v59) = *(v62 + v58);
                *(v62 + v58) = v61;
              }

              ++v60;
              v58 -= 8;
              v59 += 8;
              if (v60 >= v57)
              {
                goto LABEL_44;
              }
            }
          }

          goto LABEL_44;
        }

LABEL_163:
        __break(1u);
LABEL_164:
        v135 = sub_100016504(a4);
        goto LABEL_133;
      }

LABEL_44:
      v63 = a3[1];
      if (v155 >= v63)
      {
        goto LABEL_77;
      }

      if (__OFSUB__(v155, v29))
      {
        goto LABEL_160;
      }

      if (v155 - v29 >= v141)
      {
        goto LABEL_77;
      }

      if (__OFADD__(v29, v141))
      {
        goto LABEL_161;
      }

      if (v29 + v141 >= v63)
      {
        v64 = a3[1];
      }

      else
      {
        v64 = v29 + v141;
      }

      if (v64 < v29)
      {
LABEL_162:
        __break(1u);
        goto LABEL_163;
      }

      if (v155 == v64)
      {
        goto LABEL_77;
      }

      v142 = v26;
      v65 = *a3;
      v66 = (*a3 + 8 * v155 - 8);
      v140 = v29;
      v67 = v29 - v155;
      v68 = v65;
      v69 = v155;
      v149 = v64;
      v156 = v65;
      while (2)
      {
        v155 = v69;
        v70 = *(v68 + 8 * v69);
        v150 = v67;
        v151 = v66;
        while (2)
        {
          a4 = *v66;
          v71 = v70;
          v24 = a4;
          if (([v71 *&v27[19].ivar_base_size] == 5 || objc_msgSend(v71, *&v27[19].ivar_base_size) == 10) && (objc_msgSend(v24, *&v27[19].ivar_base_size, v140) == 5 || objc_msgSend(v24, *&v27[19].ivar_base_size) == 10))
          {
            v72 = [v71 *(v28 + 1416)];
            if (v72)
            {
              v73 = v157;
              v74 = v24;
              v75 = v72;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v24 = v74;
              a4 = *v161;
              v76 = v73;
              v77 = v159;
              (*v161)(v162, v76, v159);
              v78 = [v24 *(v28 + 1416)];
              if (v78)
              {
                v79 = v153;
                v160 = v24;
                v80 = v78;
                static Date._unconditionallyBridgeFromObjectiveC(_:)();

                v81 = v152;
                v82 = v79;
                v83 = v162;
                (a4)(v152, v82, v77);
                v24 = static Date.< infix(_:_:)();
                a4 = *v158;
                (*v158)(v81, v77);
                v84 = v83;
                v27 = &PCPrintJob__metaData;
                (a4)(v84, v77);
                v28 = &PCPrintJob__metaData;

                v68 = v156;
                if ((v24 & 1) == 0)
                {
                  goto LABEL_55;
                }

                goto LABEL_72;
              }

              (*v158)(v162, v77);
              v68 = v156;
            }
          }

          if ([v71 *&v27[19].ivar:v140 base:?size] == 5 || objc_msgSend(v71, *&v27[19].ivar_base_size) == 10)
          {

            goto LABEL_72;
          }

          if ([v24 *&v27[19].ivar_base_size] != 5 && objc_msgSend(v24, *&v27[19].ivar_base_size) != 10)
          {
            v85 = [v71 localJobID];
            a4 = [v24 localJobID];

            if (v85 >= a4)
            {
              goto LABEL_55;
            }

LABEL_72:
            if (v68)
            {
              v86 = *v66;
              v70 = v66[1];
              *v66 = v70;
              v66[1] = v86;
              --v66;
              if (__CFADD__(v67++, 1))
              {
                goto LABEL_55;
              }

              continue;
            }

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
            return;
          }

          break;
        }

LABEL_55:
        v69 = v155 + 1;
        v66 = v151 + 1;
        v67 = v150 - 1;
        if (v155 + 1 != v149)
        {
          continue;
        }

        break;
      }

      v155 = v149;
      a3 = v147;
      v26 = v142;
      v29 = v140;
LABEL_77:
      if (v155 < v29)
      {
        goto LABEL_159;
      }

      v88 = v26;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v26 = v88;
      }

      else
      {
        v26 = sub_100016518(0, *(v88 + 2) + 1, 1, v88);
      }

      a4 = *(v26 + 2);
      v89 = *(v26 + 3);
      v24 = a4 + 1;
      if (a4 >= v89 >> 1)
      {
        v26 = sub_100016518((v89 > 1), a4 + 1, 1, v26);
      }

      *(v26 + 2) = v24;
      v90 = &v26[16 * a4];
      v91 = v155;
      *(v90 + 4) = v29;
      *(v90 + 5) = v91;
      v92 = *v145;
      if (!*v145)
      {
        goto LABEL_169;
      }

      if (a4)
      {
        while (2)
        {
          v28 = v24 - 1;
          if (v24 >= 4)
          {
            v97 = &v26[16 * v24 + 32];
            v98 = *(v97 - 64);
            v99 = *(v97 - 56);
            v103 = __OFSUB__(v99, v98);
            v100 = v99 - v98;
            if (v103)
            {
              goto LABEL_146;
            }

            v102 = *(v97 - 48);
            v101 = *(v97 - 40);
            v103 = __OFSUB__(v101, v102);
            v95 = v101 - v102;
            v96 = v103;
            if (v103)
            {
              goto LABEL_147;
            }

            v104 = &v26[16 * v24];
            v106 = *v104;
            v105 = *(v104 + 1);
            v103 = __OFSUB__(v105, v106);
            v107 = v105 - v106;
            if (v103)
            {
              goto LABEL_149;
            }

            v103 = __OFADD__(v95, v107);
            v108 = v95 + v107;
            if (v103)
            {
              goto LABEL_152;
            }

            if (v108 >= v100)
            {
              v126 = &v26[16 * v28 + 32];
              v128 = *v126;
              v127 = *(v126 + 1);
              v103 = __OFSUB__(v127, v128);
              v129 = v127 - v128;
              if (v103)
              {
                goto LABEL_156;
              }

              if (v95 < v129)
              {
                v28 = v24 - 2;
              }
            }

            else
            {
LABEL_97:
              if (v96)
              {
                goto LABEL_148;
              }

              v109 = &v26[16 * v24];
              v111 = *v109;
              v110 = *(v109 + 1);
              v112 = __OFSUB__(v110, v111);
              v113 = v110 - v111;
              v114 = v112;
              if (v112)
              {
                goto LABEL_151;
              }

              v115 = &v26[16 * v28 + 32];
              v117 = *v115;
              v116 = *(v115 + 1);
              v103 = __OFSUB__(v116, v117);
              v118 = v116 - v117;
              if (v103)
              {
                goto LABEL_154;
              }

              if (__OFADD__(v113, v118))
              {
                goto LABEL_155;
              }

              if (v113 + v118 < v95)
              {
                goto LABEL_111;
              }

              if (v95 < v118)
              {
                v28 = v24 - 2;
              }
            }
          }

          else
          {
            if (v24 == 3)
            {
              v93 = *(v26 + 4);
              v94 = *(v26 + 5);
              v103 = __OFSUB__(v94, v93);
              v95 = v94 - v93;
              v96 = v103;
              goto LABEL_97;
            }

            v119 = &v26[16 * v24];
            v121 = *v119;
            v120 = *(v119 + 1);
            v103 = __OFSUB__(v120, v121);
            v113 = v120 - v121;
            v114 = v103;
LABEL_111:
            if (v114)
            {
              goto LABEL_150;
            }

            v122 = &v26[16 * v28];
            v124 = *(v122 + 4);
            v123 = *(v122 + 5);
            v103 = __OFSUB__(v123, v124);
            v125 = v123 - v124;
            if (v103)
            {
              goto LABEL_153;
            }

            if (v125 < v113)
            {
              break;
            }
          }

          a4 = v28 - 1;
          if (v28 - 1 >= v24)
          {
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
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
            goto LABEL_162;
          }

          if (!*a3)
          {
            goto LABEL_166;
          }

          v130 = v26;
          v131 = *&v26[16 * a4 + 32];
          v24 = *&v26[16 * v28 + 40];
          v132 = v154;
          sub_10000DDB4((*a3 + 8 * v131), (*a3 + 8 * *&v26[16 * v28 + 32]), (*a3 + 8 * v24), v92);
          v154 = v132;
          if (v132)
          {
            goto LABEL_141;
          }

          if (v24 < v131)
          {
            goto LABEL_144;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v130 = sub_100016504(v130);
          }

          if (a4 >= *(v130 + 2))
          {
            goto LABEL_145;
          }

          v133 = &v130[16 * a4];
          *(v133 + 4) = v131;
          *(v133 + 5) = v24;
          v165 = v130;
          sub_100016478(v28);
          v26 = v165;
          v24 = *(v165 + 2);
          if (v24 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v24 = a3[1];
      v25 = v155;
      v28 = 0x100028000;
      if (v155 >= v24)
      {
        goto LABEL_130;
      }
    }
  }

  v26 = _swiftEmptyArrayStorage;
LABEL_130:
  v28 = *v145;
  if (!*v145)
  {
    goto LABEL_170;
  }

  a4 = v26;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = v154;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_164;
  }

  v135 = a4;
LABEL_133:
  v165 = v135;
  a4 = *(v135 + 2);
  if (a4 >= 2)
  {
    while (*a3)
    {
      v136 = *&v135[16 * a4];
      v137 = v135;
      v138 = *&v135[16 * a4 + 24];
      sub_10000DDB4((*a3 + 8 * v136), (*a3 + 8 * *&v135[16 * a4 + 16]), (*a3 + 8 * v138), v28);
      if (v24)
      {
        goto LABEL_141;
      }

      if (v138 < v136)
      {
        goto LABEL_157;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v137 = sub_100016504(v137);
      }

      if (a4 - 2 >= *(v137 + 2))
      {
        goto LABEL_158;
      }

      v139 = &v137[16 * a4];
      *v139 = v136;
      *(v139 + 1) = v138;
      v165 = v137;
      sub_100016478(a4 - 1);
      v135 = v165;
      a4 = *(v165 + 2);
      if (a4 <= 1)
      {
        goto LABEL_141;
      }
    }

    goto LABEL_168;
  }

LABEL_141:
}

uint64_t sub_10000DDB4(void **__dst, void **__src, void **a3, unint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = __src;
  v8 = __dst;
  v9 = __src - __dst;
  v10 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v10 = __src - __dst;
  }

  v11 = v10 >> 3;
  v12 = a3 - __src;
  v13 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v13 = a3 - __src;
  }

  v14 = v13 >> 3;
  if (v11 < v13 >> 3)
  {
    if (a4 != __dst || &__dst[v11] <= a4)
    {
      v15 = a4;
      memmove(a4, __dst, 8 * v11);
      a4 = v15;
      v5 = v4;
    }

    v16 = (a4 + 8 * v11);
    if (v9 < 8)
    {
LABEL_10:
      v7 = v8;
      goto LABEL_50;
    }

    while (1)
    {
      if (v7 >= v6)
      {
        goto LABEL_10;
      }

      v18 = v16;
      v19 = v7;
      v53 = *v7;
      v20 = v5;
      v21 = a4;
      v52 = *a4;
      v22 = v52;
      v23 = v53;
      v24 = v22;
      v25 = sub_1000033E0(&v53, &v52);
      if (v20)
      {

        v42 = v21;
        v44 = v18 - v21 + 7;
        if ((v18 - v21) >= 0)
        {
          v44 = v18 - v21;
        }

        v45 = v44 >> 3;
        if (v8 < v21 || v8 >= (v21 + (v44 & 0xFFFFFFFFFFFFFFF8)))
        {
          memmove(v8, v21, 8 * v45);
          return 1;
        }

        if (v8 == v21)
        {
          return 1;
        }

        v43 = 8 * v45;
        v41 = v8;
        goto LABEL_56;
      }

      v26 = v25;

      if (v26)
      {
        break;
      }

      v17 = v21;
      a4 = (v21 + 1);
      v7 = v19;
      if (v8 != v21)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v8;
      v16 = v18;
      v5 = 0;
      if (a4 >= v18)
      {
        goto LABEL_10;
      }
    }

    v17 = v19;
    v7 = v19 + 1;
    a4 = v21;
    if (v8 == v19)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v8 = *v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v14] <= a4)
  {
    v27 = a4;
    memmove(a4, __src, 8 * v14);
    a4 = v27;
    v5 = v4;
  }

  v16 = (a4 + 8 * v14);
  if (v12 < 8 || v7 <= v8)
  {
LABEL_50:
    v46 = v16 - a4 + 7;
    if ((v16 - a4) >= 0)
    {
      v46 = v16 - a4;
    }

    if (v7 < a4 || v7 >= a4 + (v46 & 0xFFFFFFFFFFFFFFF8) || v7 != a4)
    {
      v43 = 8 * (v46 >> 3);
      v41 = v7;
      v42 = a4;
LABEL_56:
      memmove(v41, v42, v43);
    }

    return 1;
  }

  v28 = -a4;
  v51 = a4;
  v48 = -a4;
  v49 = v8;
LABEL_25:
  v50 = v7;
  v29 = v7 - 1;
  v30 = v16 + v28;
  --v6;
  v31 = v16;
  while (1)
  {
    v32 = *--v31;
    v53 = v32;
    v33 = v29;
    v52 = *v29;
    v34 = v52;
    v35 = v32;
    v36 = v34;
    v37 = sub_1000033E0(&v53, &v52);
    if (v5)
    {
      break;
    }

    v38 = v37;

    v39 = v6 + 1;
    if (v38)
    {
      if (v39 != v50)
      {
        *v6 = *v33;
      }

      a4 = v51;
      if (v16 <= v51 || (v7 = v33, v28 = v48, v33 <= v49))
      {
        v7 = v33;
        goto LABEL_50;
      }

      goto LABEL_25;
    }

    if (v39 != v16)
    {
      *v6 = *v31;
    }

    v30 -= 8;
    --v6;
    v16 = v31;
    v29 = v33;
    if (v31 <= v51)
    {
      v16 = v31;
      v7 = v50;
      a4 = v51;
      goto LABEL_50;
    }
  }

  if (v30 >= 0)
  {
    v40 = v30;
  }

  else
  {
    v40 = v30 + 7;
  }

  v41 = v50;
  v42 = v51;
  if (v50 < v51 || v50 >= v51 + (v40 & 0xFFFFFFFFFFFFFFF8) || v50 != v51)
  {
    v43 = 8 * (v40 >> 3);
    goto LABEL_56;
  }

  return 1;
}

Swift::Int sub_10000E150(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100004A84(&qword_100029068, &qword_10001CA38);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v5 + 40));
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t *sub_10000E378(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_10000E840(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

Swift::Int sub_10000E414(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100004A84(&qword_100029068, &qword_10001CA38);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = v9[5];
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = NSObject._rawHashValue(seed:)(v16);
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(v9[6] + 8 * v21) = v17;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_10000E608(unint64_t a1)
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
  v5 = sub_10000CBBC(v3, 0);
  sub_10000E69C((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_10000E69C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10000A0B0(&qword_100029070, &unk_100028B40, &qword_10001BB80, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_100004A84(&unk_100028B40, &qword_10001BB80);
            v9 = sub_100004FF8(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_10000F388();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_10000E840(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v22 = 0;
  v23 = a4;
  v20 = a2;
  v21 = a1;
  v4 = 0;
  v24 = a3;
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
LABEL_11:
    v13 = v10 | (v4 << 6);
    v25 = *(*(v24 + 48) + 8 * v13);
    __chkstk_darwin(a1);
    v19[2] = &v25;
    v15 = v14;
    v16 = sub_100004E24(sub_10000F510, v19, v23);

    if (v16)
    {
      *(v21 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_15:
        v18 = v24;

        sub_10000E414(v21, v20, v22, v18);
        return;
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
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

Swift::Int sub_10000E9E8(uint64_t a1, unint64_t a2)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = v3 & 0x3F;
  v5 = ((1 << v3) + 63) >> 6;
  v6 = 8 * v5;
  v31 = a2;

  if (v4 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v26 = &v26;
    v27 = v5;
    __chkstk_darwin(v7);
    v28 = &v26 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v28, v6);
    v29 = 0;
    v30 = v2;
    v5 = 0;
    v10 = *(v2 + 56);
    v2 += 56;
    v9 = v10;
    v11 = 1 << *(v2 - 24);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & v9;
    v6 = (v11 + 63) >> 6;
    while (v13)
    {
      v14 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_12:
      v17 = v14 | (v5 << 6);
      v32 = *(*(v30 + 48) + 8 * v17);
      __chkstk_darwin(v8);
      *(&v26 - 2) = &v32;
      v19 = v18;
      v20 = sub_100004E24(sub_10000F510, (&v26 - 4), v31);

      if (v20)
      {
        *&v28[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
        if (__OFADD__(v29++, 1))
        {
          __break(1u);
LABEL_16:
          v22 = sub_10000E414(v28, v27, v29, v30);
          goto LABEL_17;
        }
      }
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v5 >= v6)
      {
        goto LABEL_16;
      }

      v16 = *(v2 + 8 * v5);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v13 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v24 = swift_slowAlloc();
  v25 = v31;

  v22 = sub_10000E378(v24, v5, v2, v25);

LABEL_17:

  return v22;
}

Swift::Int sub_10000ECA8(uint64_t a1, unint64_t a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_10000E9E8(a1, a2);
  }

  v3 = &_swiftEmptySetSingleton;
  v24 = &_swiftEmptySetSingleton;

  __CocoaSet.makeIterator()();
  v4 = __CocoaSet.Iterator.next()();
  if (v4)
  {
    v5 = v4;
    sub_10000F388();
    v6 = v5;
    do
    {
      v22 = v6;
      v7 = swift_dynamicCast();
      v22 = v23;
      __chkstk_darwin(v7);
      v21[2] = &v22;
      v8 = sub_100004E24(sub_10000F474, v21, a2);
      v9 = v23;
      if (v8)
      {
        v10 = v3[2];
        if (v3[3] <= v10)
        {
          sub_10000E150(v10 + 1);
        }

        v3 = v24;
        result = NSObject._rawHashValue(seed:)(v24[5]);
        v12 = (v3 + 7);
        v13 = -1 << *(v3 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~v3[(v14 >> 6) + 7]) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~v3[(v14 >> 6) + 7])) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v17 = 0;
          v18 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v18 && (v17 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v19 = v15 == v18;
            if (v15 == v18)
            {
              v15 = 0;
            }

            v17 |= v19;
            v20 = *&v12[8 * v15];
          }

          while (v20 == -1);
          v16 = __clz(__rbit64(~v20)) + (v15 << 6);
        }

        *&v12[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
        *(v3[6] + 8 * v16) = v9;
        ++v3[2];
      }

      else
      {
      }

      v6 = __CocoaSet.Iterator.next()();
    }

    while (v6);
  }

  return v3;
}

uint64_t sub_10000EEFC(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

    return 0;
  }

LABEL_17:
  v2 = _CocoaArrayWrapper.endIndex.getter();
  if (!v2)
  {
    return 0;
  }

LABEL_3:
  for (i = 0; ; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    v6 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    if ([v4 state] == 5)
    {
      break;
    }

    if (v6 == v2)
    {
      return 0;
    }
  }

  sub_100010DC4();
  v8 = v7;
  v10 = v9;

  if (v10)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000F008(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004A84(&qword_100028FB8, &qword_10001C968);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10000F078()
{
  result = qword_100028FD0;
  if (!qword_100028FD0)
  {
    sub_100004C24(&qword_100028FC0, &qword_10001C970);
    sub_10000A0B0(&qword_100028FD8, &qword_100028FB8, &qword_10001C968, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028FD0);
  }

  return result;
}

uint64_t sub_10000F130(uint64_t a1)
{
  v2 = sub_100004A84(&qword_100028FC0, &qword_10001C970);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10000F198()
{
  result = qword_100028FF8;
  if (!qword_100028FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028FF8);
  }

  return result;
}

unint64_t sub_10000F1F4()
{
  result = qword_100029010;
  if (!qword_100029010)
  {
    sub_100004C24(&qword_100029008, &qword_10001C998);
    sub_10000F278();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029010);
  }

  return result;
}

unint64_t sub_10000F278()
{
  result = qword_100029018;
  if (!qword_100029018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029018);
  }

  return result;
}

uint64_t sub_10000F2CC()
{

  return _swift_deallocObject(v0, 64, 7);
}

unint64_t sub_10000F388()
{
  result = qword_100028CA0;
  if (!qword_100028CA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100028CA0);
  }

  return result;
}

uint64_t sub_10000F3D4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_10000F388();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000F498()
{
  sub_100004C24(&qword_100028FC0, &qword_10001C970);
  sub_10000F078();
  sub_100007894();
  return swift_getOpaqueTypeConformance2();
}

uint64_t PCPrinter.id.getter()
{
  v1 = [v0 name];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t sub_10000F584@<X0>(uint64_t *a2@<X8>)
{
  sub_10000F628();
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

void sub_10000F5D0(uint64_t *a1@<X8>)
{
  v3 = [*v1 name];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

unint64_t sub_10000F628()
{
  result = qword_100029080;
  if (!qword_100029080)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100029080);
  }

  return result;
}

uint64_t sub_10000F684()
{
  v1 = [v0 thumbnailImage];
  if (v1)
  {
    v2 = v1;
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v6 = objc_allocWithZone(UIImage);
    sub_100012488(v3, v5);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v8 = [v6 initWithData:isa];

    sub_1000124DC(v3, v5);
    if (v8)
    {
      v9 = Image.init(uiImage:)();
      sub_1000124DC(v3, v5);
      return v9;
    }

    sub_1000124DC(v3, v5);
  }

  return Image.init(_:bundle:)(0xD000000000000010, 0x800000010001AC20, 0);
}

uint64_t sub_10000F794()
{
  v1 = [v0 settings];
  v2 = [v1 objectForKey:PKOutputModeKey];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14 = v12;
  v15 = v13;
  if (!*(&v13 + 1))
  {
    sub_10000793C(&v14, &qword_1000290A0, &qword_10001CBA0);
LABEL_10:
    v6 = [v0 settings];
    v7 = [v6 objectForKey:@"ColorModel"];

    if (v7)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v12 = 0u;
      v13 = 0u;
    }

    v14 = v12;
    v15 = v13;
    if (*(&v13 + 1))
    {
      if (swift_dynamicCast())
      {
        if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && *(&v11 + 1) == v8)
        {

          v5 = 1;
        }

        else
        {
          v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        return v5 & 1;
      }
    }

    else
    {
      sub_10000793C(&v14, &qword_1000290A0, &qword_10001CBA0);
    }

    v5 = 0;
    return v5 & 1;
  }

  v3 = swift_dynamicCast();
  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

  if (qword_100028AB0 != -1)
  {
    v3 = swift_once();
  }

  v14 = v11;
  __chkstk_darwin(v3);
  v10[2] = &v14;
  v5 = sub_100004F4C(sub_100012530, v10, v4);

  return v5 & 1;
}

uint64_t sub_10000FA3C()
{
  v1 = v0;
  if (qword_100028A88 != -1)
  {
    swift_once();
  }

  v2 = xmmword_100029408;

  v3 = [v1 settings];
  v4 = [v3 objectForKey:@"job-name"];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    if (swift_dynamicCast())
    {

      return v6;
    }
  }

  else
  {
    sub_10000793C(v9, &qword_1000290A0, &qword_10001CBA0);
  }

  return v2;
}

double sub_10000FB80()
{
  v1 = 0.0;
  if ([v0 mediaSheets] >= 1)
  {
    v2 = 1.0 / [v0 mediaSheets];
    v3 = [v0 mediaSheetsCompleted];
    v4 = v3 / [v0 mediaSheets];
    v5 = [v0 mediaProgress];
    v6 = v4 + v2 * v5 / 100.0;
    if (v6 >= 0.0)
    {
      if (v6 <= 1.0)
      {
        return v4 + v2 * v5 / 100.0;
      }

      else
      {
        return 1.0;
      }
    }
  }

  return v1;
}

uint64_t sub_10000FC44(char a1)
{
  v2 = v1;
  v4 = [v1 jobStateReasons];
  if (v4)
  {
    v5 = v4;
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

  v7 = [v2 jobStateMessage];
  if (v7)
  {
    v8 = v7;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xE000000000000000;
  }

  v12 = [v2 state];
  if (v12 > 6)
  {
    if (v12 <= 8)
    {
      if (v12 == 7)
      {

        if (qword_100028A60 != -1)
        {
          swift_once();
        }

        v14 = &xmmword_1000293B8;
      }

      else
      {

        if (qword_100028A68 != -1)
        {
          swift_once();
        }

        v14 = &xmmword_1000293C8;
      }

      goto LABEL_75;
    }

    if (v12 == 9)
    {

      if (qword_100028A70 != -1)
      {
        swift_once();
      }

      v14 = &xmmword_1000293D8;
      goto LABEL_75;
    }

    if (v12 != 10)
    {
      goto LABEL_49;
    }

    if (qword_100028A30 != -1)
    {
      swift_once();
    }

    sub_100004A84(&qword_100029090, &qword_10001CB98);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_10001BD70;
    v16 = [v2 mediaSheetsCompleted];
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_130;
    }

    if (v16 + 1 <= 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = v16 + 1;
    }

    if ([v2 mediaSheets] >= 1)
    {
      v18 = [v2 mediaSheets];
      if (v18 < v17)
      {
        v17 = v18;
      }
    }

    v19 = objc_opt_self();
    v20 = [objc_allocWithZone(NSNumber) initWithInteger:v17];
    v21 = [v19 localizedStringFromNumber:v20 numberStyle:1];

    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    *(v15 + 56) = &type metadata for String;
    *(v15 + 64) = sub_100012300();
    *(v15 + 32) = v22;
    *(v15 + 40) = v24;
    goto LABEL_37;
  }

  if (v12 <= 4)
  {
    if (v12 == 3)
    {

      if (qword_100028A40 != -1)
      {
        swift_once();
      }

      v14 = &xmmword_100029378;
      goto LABEL_75;
    }

    if (v12 == 4)
    {
      strcpy(&v97, "job-incoming");
      BYTE5(v97._object) = 0;
      HIWORD(v97._object) = -5120;
      __chkstk_darwin(4);
      v93 = &v97;
      v13 = sub_100004F4C(sub_100012530, v92, v6);
      if (v13)
      {

LABEL_13:
        if (qword_100028A90 != -1)
        {
          swift_once();
        }

        v14 = &xmmword_100029418;
        goto LABEL_75;
      }

      v97._countAndFlagsBits = 0xD000000000000018;
      v97._object = 0x800000010001AA00;
      __chkstk_darwin(v13);
      v93 = &v97;
      if (sub_100004F4C(sub_100012530, v92, v6))
      {

        if (_stringCompareWithSmolCheck(_:_:expecting:)())
        {

LABEL_64:
          if (qword_100028A98 != -1)
          {
            swift_once();
          }

          v14 = &xmmword_100029428;
          goto LABEL_75;
        }

        v97._countAndFlagsBits = v9;
        v97._object = v11;
        *&v96 = 0x676E696D6F636E69;
        *(&v96 + 1) = 0xE800000000000000;
        sub_100007894();
        v47 = StringProtocol.caseInsensitiveCompare<A>(_:)();

        if (!v47)
        {
          goto LABEL_13;
        }
      }

      else
      {

        v97._countAndFlagsBits = 0xD00000000000001CLL;
        v97._object = 0x800000010001AA20;
        __chkstk_darwin(v39);
        v93 = &v97;
        v40 = sub_100004F4C(sub_100012530, v92, v6);

        if (v40 & 1) != 0 && (_stringCompareWithSmolCheck(_:_:expecting:)())
        {
          goto LABEL_64;
        }
      }

      if (qword_100028A48 != -1)
      {
        swift_once();
      }

      v14 = &xmmword_100029388;
      goto LABEL_75;
    }

LABEL_49:

    if (qword_100028A78 == -1)
    {
LABEL_50:
      v14 = &xmmword_1000293E8;
LABEL_75:
      v48 = *(v14 + 1);
      v97._countAndFlagsBits = *v14;
      v97._object = v48;

      goto LABEL_76;
    }

LABEL_130:
    swift_once();
    goto LABEL_50;
  }

  if (v12 != 5)
  {

    if (qword_100028A58 != -1)
    {
      swift_once();
    }

    v14 = &xmmword_1000293A8;
    goto LABEL_75;
  }

  v26 = [v2 jobPrinterStateReasons];
  if (v26)
  {
    v27 = v26;
    v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v28 = _swiftEmptyArrayStorage;
  }

  v97._countAndFlagsBits = 0xD000000000000013;
  v97._object = 0x800000010001A730;
  __chkstk_darwin(v26);
  v93 = &v97;
  v29 = sub_100004F4C(sub_100012354, v92, v28);
  if (v29)
  {

    v30 = [objc_opt_self() mainBundle];
    v93 = 0x800000010001A9E0;
    v31 = 0x6E6F207964616552;
    v32 = 0xEF72657672657320;
    v33 = 0xD00000000000001ELL;
LABEL_70:
    v45._countAndFlagsBits = 0;
    v45._object = 0xE000000000000000;
    v46 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v31, 0, v30, v45, *&v33);

    v97 = v46;
    goto LABEL_76;
  }

  v97._countAndFlagsBits = 0xD000000000000018;
  v97._object = 0x800000010001A750;
  __chkstk_darwin(v29);
  v93 = &v97;
  v34 = sub_100004F4C(sub_100012530, v92, v28);
  if (v34)
  {

    v30 = [objc_opt_self() mainBundle];
    v31 = 0xD000000000000010;
    v93 = 0x800000010001A9C0;
    v32 = 0x800000010001A9A0;
    v33 = 0xD00000000000001FLL;
    goto LABEL_70;
  }

  v97._countAndFlagsBits = 0xD000000000000016;
  v97._object = 0x800000010001A770;
  __chkstk_darwin(v34);
  v93 = &v97;
  v35 = sub_100004F4C(sub_100012530, v92, v28);
  if (v35)
  {

    v36 = "or job on server";
    v37 = 0x800000010001A970;
    v38 = [objc_opt_self() mainBundle];
LABEL_61:
    v30 = v38;
    v93 = v37;
    v32 = v36 | 0x8000000000000000;
    v33 = 0xD000000000000021;
    v31 = 0xD000000000000012;
    goto LABEL_70;
  }

  v97._countAndFlagsBits = 0xD000000000000013;
  v97._object = 0x800000010001A790;
  __chkstk_darwin(v35);
  v93 = &v97;
  v41 = sub_100004F4C(sub_100012530, v92, v28);
  if (v41)
  {

    v42 = "for job on server";
    v43 = 0x800000010001A920;
    v44 = [objc_opt_self() mainBundle];
LABEL_69:
    v30 = v44;
    v31 = 0xD000000000000011;
    v93 = v43;
    v32 = v42 | 0x8000000000000000;
    v33 = 0xD000000000000020;
    goto LABEL_70;
  }

  v97._countAndFlagsBits = 0xD000000000000014;
  v97._object = 0x800000010001A7B0;
  __chkstk_darwin(v41);
  v93 = &v97;
  v67 = sub_100004F4C(sub_100012530, v92, v28);
  if (v67)
  {

    v36 = "or job on server";
    v37 = 0x800000010001A8D0;
    v38 = [objc_opt_self() mainBundle];
    goto LABEL_61;
  }

  v97._countAndFlagsBits = 0xD000000000000013;
  v97._object = 0x800000010001A7D0;
  __chkstk_darwin(v67);
  v93 = &v97;
  v68 = sub_100004F4C(sub_100012530, v92, v28);
  if (v68)
  {

    v42 = " for job on server";
    v43 = 0x800000010001A880;
    v44 = [objc_opt_self() mainBundle];
    goto LABEL_69;
  }

  v97._countAndFlagsBits = 0xD000000000000015;
  v97._object = 0x800000010001A7F0;
  __chkstk_darwin(v68);
  v93 = &v97;
  v69 = sub_100004F4C(sub_100012530, v92, v28);

  if (v69)
  {
    v30 = [objc_opt_self() mainBundle];
    v93 = 0x800000010001A830;
    v31 = 0xD000000000000013;
    v32 = 0x800000010001A810;
    v33 = 0xD000000000000022;
    goto LABEL_70;
  }

  v70 = [v2 mediaSheets];
  v71 = sub_10001149C();
  if (!v71)
  {
    __break(1u);
    goto LABEL_132;
  }

  v72 = v71;
  if (v70 == 0x8000000000000000 && v71 == -1)
  {
    goto LABEL_133;
  }

  v73 = [v2 mediaSheetsCompleted];
  if (__OFADD__(v73, 1))
  {
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  if (v73 + 1 <= 1)
  {
    v74 = 1;
  }

  else
  {
    v74 = v73 + 1;
  }

  if ([v2 mediaSheets] >= 1)
  {
    v75 = [v2 mediaSheets];
    if (v75 < v74)
    {
      v74 = v75;
    }
  }

  if (v70 / v72 < v74)
  {
    if (qword_100028A50 == -1)
    {
LABEL_115:
      v14 = &xmmword_100029398;
      goto LABEL_75;
    }

LABEL_134:
    swift_once();
    goto LABEL_115;
  }

  if (qword_100028A38 != -1)
  {
    swift_once();
  }

  v94 = *(&xmmword_100029368 + 1);
  v95 = xmmword_100029368;
  sub_100004A84(&qword_100029090, &qword_10001CB98);
  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_10001CAE0;
  result = [v2 mediaSheetsCompleted];
  if (__OFADD__(result, 1))
  {
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
    return result;
  }

  if (result + 1 <= 1)
  {
    v77 = 1;
  }

  else
  {
    v77 = result + 1;
  }

  if ([v2 mediaSheets] >= 1)
  {
    v78 = [v2 mediaSheets];
    if (v78 < v77)
    {
      v77 = v78;
    }
  }

  v79 = objc_opt_self();
  v80 = [objc_allocWithZone(NSNumber) initWithInteger:v77];
  v81 = [v79 localizedStringFromNumber:v80 numberStyle:1];

  v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v84 = v83;

  *(v76 + 56) = &type metadata for String;
  v85 = sub_100012300();
  *(v76 + 64) = v85;
  *(v76 + 32) = v82;
  *(v76 + 40) = v84;
  v86 = [v2 mediaSheets];
  result = sub_10001149C();
  if (!result)
  {
    goto LABEL_136;
  }

  if (v86 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_137;
  }

  v87 = [objc_allocWithZone(NSNumber) initWithInteger:v86 / result];
  v88 = [v79 localizedStringFromNumber:v87 numberStyle:1];

  v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v91 = v90;

  *(v76 + 96) = &type metadata for String;
  *(v76 + 104) = v85;
  *(v76 + 72) = v89;
  *(v76 + 80) = v91;
LABEL_37:
  v97._countAndFlagsBits = String.init(format:_:)();
  v97._object = v25;
LABEL_76:
  if (a1)
  {
    v49 = [v2 printerDisplayName];
    if (v49)
    {
      v50 = v49;
      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v52;
    }

    else
    {
      if (qword_100028A88 != -1)
      {
        swift_once();
      }

      v53 = *(&xmmword_100029408 + 1);
      v51 = xmmword_100029408;
    }

    v54 = HIBYTE(v53) & 0xF;
    if ((v53 & 0x2000000000000000) == 0)
    {
      v54 = v51 & 0xFFFFFFFFFFFFLL;
    }

    if (v54)
    {
      if (qword_100028A80 != -1)
      {
        swift_once();
      }

      v55 = xmmword_1000293F8;
      v56 = sub_1000110F0();
      v58 = v57;

      v96 = v55;

      v59._countAndFlagsBits = v56;
      v59._object = v58;
      String.append(_:)(v59);

      String.append(_:)(v96);
    }
  }

  v60 = sub_1000115B4();
  if (v61)
  {
    v62 = v61;
    v63 = HIBYTE(v61) & 0xF;
    if ((v61 & 0x2000000000000000) == 0)
    {
      v63 = v60 & 0xFFFFFFFFFFFFLL;
    }

    if (v63)
    {
      v64 = v60;
      if (qword_100028A80 != -1)
      {
        swift_once();
      }

      v96 = xmmword_1000293F8;

      v65._countAndFlagsBits = v64;
      v65._object = v62;
      String.append(_:)(v65);

      String.append(_:)(v96);
    }
  }

  return v97._countAndFlagsBits;
}

uint64_t sub_100010DC4()
{
  v1 = [v0 jobPrinterStateReasons];
  if (v1)
  {
    v2 = v1;
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v3 + 16))
    {
      v4 = sub_1000170C0(v3);
    }

    else
    {
      v4 = _swiftEmptyArrayStorage;
    }

    if (*(v4 + 2))
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
    if (_swiftEmptyArrayStorage[2])
    {
LABEL_8:
      v5 = *(v4 + 16);

      goto LABEL_9;
    }
  }

  v5 = 0;
LABEL_9:

  return v5;
}

uint64_t sub_100010E90()
{
  v1 = [v0 jobStateReasons];
  if (v1)
  {
    v2 = v1;
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  strcpy(v11, "account-closed");
  HIBYTE(v11[1]) = -18;
  __chkstk_darwin(v1);
  v10 = v11;
  v4 = sub_100004F4C(sub_100012530, v9, v3);
  if (v4)
  {

    return 2;
  }

  else
  {
    v11[0] = 0xD000000000000013;
    v11[1] = 0x800000010001ABC0;
    __chkstk_darwin(v4);
    v10 = v11;
    v6 = sub_100004F4C(sub_100012530, v9, v3);
    if (v6)
    {

      return 1;
    }

    else
    {
      v11[0] = 0xD000000000000015;
      v11[1] = 0x800000010001ABE0;
      __chkstk_darwin(v6);
      v10 = v11;
      v7 = sub_100004F4C(sub_100012530, v9, v3);
      if (v7)
      {

        return 3;
      }

      else
      {
        v11[0] = 0xD00000000000001CLL;
        v11[1] = 0x800000010001AC00;
        __chkstk_darwin(v7);
        v10 = v11;
        v8 = sub_100004F4C(sub_100012530, v9, v3);

        if (v8)
        {
          return 4;
        }

        else
        {
          return 0;
        }
      }
    }
  }
}

id sub_1000110F0()
{
  v1 = v0;
  v2 = sub_100004A84(&qword_1000290B0, &qword_10001CBA8);
  __chkstk_darwin(v2 - 8);
  v4 = v28 - v3;
  v5 = [v0 printerDisplayName];
  if (v5)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    if (qword_100028A88 != -1)
    {
      swift_once();
    }
  }

  else
  {
    if (qword_100028A88 != -1)
    {
      swift_once();
    }

    v9 = *(&xmmword_100029408 + 1);
    v7 = xmmword_100029408;
  }

  if ([v1 printerKind] == 3)
  {
    goto LABEL_15;
  }

  v10 = [v1 printerLocation];
  if (!v10)
  {
    goto LABEL_15;
  }

  result = [v1 printerLocation];
  if (!result)
  {
    goto LABEL_26;
  }

  v12 = result;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v16 && (v17 = [v1 printerLocation]) != 0)
  {
    v18 = v17;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;
  }

  else
  {
LABEL_15:
    v20 = 0;
  }

  v28[2] = v7;
  v28[3] = v9;
  v28[0] = 2113568;
  v28[1] = 0xE300000000000000;
  v21 = type metadata accessor for Locale();
  (*(*(v21 - 8) + 56))(v4, 1, 1, v21);
  sub_100007894();
  StringProtocol.range<A>(of:options:range:locale:)();
  v23 = v22;
  v25 = v24;
  sub_10000793C(v4, &qword_1000290B0, &qword_10001CBA8);
  if (v25)
  {
    return v7;
  }

  String.subscript.getter();
  v26 = static String._fromSubstring(_:)();

  if (v20)
  {
    goto LABEL_24;
  }

  result = [v1 printerKind];
  if (result == 3)
  {
    goto LABEL_24;
  }

  v27 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v27 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v27 >= v23 >> 14)
  {
    String.subscript.getter();

    static String._fromSubstring(_:)();
LABEL_24:

    return v26;
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_10001149C()
{
  v1 = [v0 settings];
  v2 = [v1 objectForKey:PKCopiesKey];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    sub_100005080(0, &qword_1000290A8, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v3 = [v5 integerValue];

      return v3;
    }
  }

  else
  {
    sub_10000793C(v8, &qword_1000290A0, &qword_10001CBA0);
  }

  return 1;
}

uint64_t sub_1000115B4()
{
  v1 = v0;
  v2 = type metadata accessor for URL.DirectoryHint();
  v84 = *(v2 - 8);
  v85 = v2;
  __chkstk_darwin(v2);
  v83 = &v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100004A84(&qword_1000290B8, &qword_10001CBB0);
  __chkstk_darwin(v4 - 8);
  v82 = &v81 - v5;
  v87 = type metadata accessor for URL();
  v6 = *(v87 - 8);
  v7 = __chkstk_darwin(v87);
  v9 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v81 - v10;
  v12 = sub_100004A84(&qword_1000290B0, &qword_10001CBA8);
  __chkstk_darwin(v12 - 8);
  v14 = &v81 - v13;
  if ([v0 state] == 4)
  {
    v15 = [v0 jobStateReasons];
    if (v15)
    {
      v16 = v15;
      v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v17 = _swiftEmptyArrayStorage;
    }

    strcpy(v88, "job-incoming");
    BYTE5(v88[1]) = 0;
    HIWORD(v88[1]) = -5120;
    __chkstk_darwin(v15);
    v79 = v88;
    v18 = sub_100004F4C(sub_100012530, (&v81 - 4), v17);

    if (v18)
    {
      return 0;
    }
  }

  v19 = sub_100010E90();
  v20 = _swiftEmptyArrayStorage;
  v86 = v6;
  if (v19 <= 2)
  {
    if (v19 != 1)
    {
      if (v19 == 2)
      {
        v21 = "account balance error";
        v22 = [objc_opt_self() mainBundle];
        v23 = 0xD000000000000014;
        v24 = 0xD000000000000017;
        v79 = 0x800000010001AB50;
LABEL_16:
        v26 = v21 | 0x8000000000000000;
        v27.super.isa = v22;
        v28 = 0;
        v29 = 0xE000000000000000;
        goto LABEL_17;
      }

      goto LABEL_20;
    }

    v25 = "account closed error";
    v22 = [objc_opt_self() mainBundle];
    v79 = 0x800000010001ABA0;
    v24 = 0xD000000000000024;
LABEL_14:
    v26 = v25 | 0x8000000000000000;
    v27.super.isa = v22;
    v28 = 0;
    v29 = 0xE000000000000000;
    v23 = 0xD00000000000001ALL;
LABEL_17:
    v30 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v24, 0, v27, *&v28, *&v23);

    v20 = sub_10001661C(0, 1, 1, _swiftEmptyArrayStorage);
    v32 = *(v20 + 2);
    v31 = *(v20 + 3);
    if (v32 >= v31 >> 1)
    {
      v20 = sub_10001661C((v31 > 1), v32 + 1, 1, v20);
    }

    *(v20 + 2) = v32 + 1;
    *&v20[16 * v32 + 32] = v30;
    v6 = v86;
    goto LABEL_20;
  }

  if (v19 == 3)
  {
    v21 = "authorization failed error";
    v22 = [objc_opt_self() mainBundle];
    v23 = 0xD000000000000015;
    v79 = 0x800000010001AB10;
    v24 = 0xD00000000000001ELL;
    goto LABEL_16;
  }

  if (v19 == 4)
  {
    v25 = "CFBundleDisplayName";
    v22 = [objc_opt_self() mainBundle];
    v79 = 0x800000010001AAD0;
    v24 = 0xD000000000000025;
    goto LABEL_14;
  }

LABEL_20:
  if ([v1 state] == 5)
  {
    goto LABEL_23;
  }

  v88[0] = 0;
  v88[1] = 0xE000000000000000;
  v89 = 0x64656C69616620;
  v90 = 0xE700000000000000;
  v33 = type metadata accessor for Locale();
  (*(*(v33 - 8) + 56))(v14, 1, 1, v33);
  v79 = sub_100007894();
  v80 = v79;
  StringProtocol.range<A>(of:options:range:locale:)();
  v35 = v34;
  sub_10000793C(v14, &qword_1000290B0, &qword_10001CBA8);
  if (v35)
  {
    [v1 state];
LABEL_23:
    if (!*(v20 + 2))
    {
      goto LABEL_70;
    }

    goto LABEL_24;
  }

  v38 = 0xE000000000000000;
  String.subscript.getter();
  static String._fromSubstring(_:)();

  (*(v6 + 56))(v82, 1, 1, v87);
  (*(v84 + 104))(v83, enum case for URL.DirectoryHint.inferFromPath(_:), v85);
  URL.init(filePath:directoryHint:relativeTo:)();
  v39 = URL.lastPathComponent.getter();
  v85 = v40;
  v41 = *(URL.pathComponents.getter() + 16);

  if (v41 < 2)
  {
    v57 = 0;
    goto LABEL_63;
  }

  v84 = v39;
  while (1)
  {
    v44 = objc_allocWithZone(NSBundle);
    URL._bridgeToObjectiveC()(v45);
    v47 = v46;
    v48 = [v44 initWithURL:v46];

    if (!v48)
    {
      goto LABEL_30;
    }

    v49 = [v48 infoDictionary];
    if (v49)
    {
      break;
    }

LABEL_30:
    URL.deletingLastPathComponent()();
    v42 = v87;
    (*(v6 + 8))(v11, v87);
    (*(v6 + 32))(v11, v9, v42);
    v43 = *(URL.pathComponents.getter() + 16);

    if (v43 <= 1)
    {
      v57 = 0;
      v38 = 0xE000000000000000;
      v6 = v86;
      v39 = v84;
      goto LABEL_63;
    }
  }

  v50 = v49;

  v51 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v51 + 16))
  {
    v52 = sub_100006BDC(0xD00000000000001ALL, 0x800000010001AA60);
    v6 = v86;
    if (v53)
    {
      sub_1000123D4(*(v51 + 56) + 32 * v52, v88);
      v54 = swift_dynamicCast();
      if (v54)
      {
        v55 = v89;
      }

      else
      {
        v55 = 0;
      }

      if (v54)
      {
        v56 = v90;
      }

      else
      {
        v56 = 0;
      }

      v84 = v56;
    }

    else
    {
      v55 = 0;
      v84 = 0;
    }
  }

  else
  {
    v55 = 0;
    v84 = 0;
    v6 = v86;
  }

  v58 = [v48 localizedInfoDictionary];
  if (v58)
  {
    v59 = v58;
    v60 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v60 + 16) && (v61 = sub_100006BDC(0xD000000000000013, 0x800000010001AA80), (v62 & 1) != 0))
    {
      sub_1000123D4(*(v60 + 56) + 32 * v61, v88);

      v63 = swift_dynamicCast();
      v6 = v86;
      if (v63)
      {

        goto LABEL_55;
      }
    }

    else
    {

      v6 = v86;
    }
  }

  if (!*(v51 + 16) || (v64 = sub_100006BDC(0x656C646E75424643, 0xEC000000656D614ELL), (v65 & 1) == 0))
  {

    goto LABEL_57;
  }

  sub_1000123D4(*(v51 + 56) + 32 * v64, v88);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_57:
    v39 = URL.lastPathComponent.getter();
    v85 = v66;

    goto LABEL_58;
  }

LABEL_55:

  v39 = v89;
  v85 = v90;
LABEL_58:
  if (v84)
  {
    if (qword_100028AA8 != -1)
    {
      swift_once();
    }

    sub_100004A84(&qword_100029090, &qword_10001CB98);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_10001BD70;
    *(v67 + 56) = &type metadata for String;
    *(v67 + 64) = sub_100012300();
    v68 = v84;
    *(v67 + 32) = v55;
    *(v67 + 40) = v68;
    v57 = String.init(format:_:)();
    v38 = v69;
  }

  else
  {
    v57 = 0;
    v38 = 0xE000000000000000;
  }

LABEL_63:
  if (qword_100028AA0 != -1)
  {
    swift_once();
  }

  sub_100004A84(&qword_100029090, &qword_10001CB98);
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_10001CAE0;
  *(v70 + 56) = &type metadata for String;
  v71 = sub_100012300();
  v72 = v85;
  *(v70 + 32) = v39;
  *(v70 + 40) = v72;
  *(v70 + 96) = &type metadata for String;
  *(v70 + 104) = v71;
  *(v70 + 64) = v71;
  *(v70 + 72) = v57;
  *(v70 + 80) = v38;
  v73 = String.init(format:_:)();
  v75 = v74;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v20 = sub_10001661C(0, *(v20 + 2) + 1, 1, v20);
  }

  v77 = *(v20 + 2);
  v76 = *(v20 + 3);
  if (v77 >= v76 >> 1)
  {
    v20 = sub_10001661C((v76 > 1), v77 + 1, 1, v20);
  }

  (*(v6 + 8))(v11, v87);
  *(v20 + 2) = v77 + 1;
  v78 = &v20[16 * v77];
  *(v78 + 4) = v73;
  *(v78 + 5) = v75;
  if (!*(v20 + 2))
  {
LABEL_70:

    return 0;
  }

LABEL_24:
  v88[0] = v20;
  if (qword_100028A80 != -1)
  {
    swift_once();
  }

  sub_100004A84(&qword_1000290C0, &qword_10001CBB8);
  sub_100012370();
  v36 = BidirectionalCollection<>.joined(separator:)();

  return v36;
}

uint64_t sub_1000121EC()
{
  sub_100004A84(&qword_1000290D0, &qword_10001CBC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10001CAF0;
  *(v0 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 40) = v1;
  *(v0 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 56) = v2;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 64) = result;
  *(v0 + 72) = v4;
  qword_100029088 = v0;
  return result;
}

uint64_t sub_10001227C@<X0>(uint64_t *a2@<X8>)
{
  sub_100005080(0, &qword_100028CA0, &off_100024940);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

id sub_1000122CC@<X0>(void *a1@<X8>)
{
  result = [*v1 localJobID];
  *a1 = result;
  return result;
}

unint64_t sub_100012300()
{
  result = qword_100029098;
  if (!qword_100029098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029098);
  }

  return result;
}

unint64_t sub_100012370()
{
  result = qword_1000290C8;
  if (!qword_1000290C8)
  {
    sub_100004C24(&qword_1000290C0, &qword_10001CBB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000290C8);
  }

  return result;
}

uint64_t sub_1000123D4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100012430(uint64_t *a1)
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

uint64_t sub_100012488(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1000124DC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t CancelPrintJob.init(jobContextIdentifier:)(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  v34 = a2;
  v2 = type metadata accessor for InputConnectionBehavior();
  v31 = *(v2 - 8);
  v32 = v2;
  __chkstk_darwin(v2);
  v30 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100004A84(&qword_100028AC8, &qword_10001BB48);
  __chkstk_darwin(v4 - 8);
  v29 = &v24 - v5;
  v6 = sub_100004A84(&qword_100028AD0, &qword_10001BB50);
  __chkstk_darwin(v6 - 8);
  v28 = &v24 - v7;
  v8 = sub_100004A84(&qword_100028AD8, &qword_10001C210);
  __chkstk_darwin(v8 - 8);
  v27 = &v24 - v9;
  v10 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Locale();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v15 - 8);
  v25 = type metadata accessor for LocalizedStringResource();
  v16 = *(v25 - 8);
  __chkstk_darwin(v25);
  v26 = sub_100004A84(&qword_100028AE0, &qword_10001BB58);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v17 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v18 = *(v11 + 104);
  v18(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v18(v13, v17, v10);
  v19 = v27;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v16 + 56))(v19, 0, 1, v25);
  v20 = type metadata accessor for String.IntentInputOptions();
  v35 = 0;
  v36 = 0;
  (*(*(v20 - 8) + 56))(v28, 1, 1, v20);
  v21 = type metadata accessor for IntentDialog();
  (*(*(v21 - 8) + 56))(v29, 1, 1, v21);
  (*(v31 + 104))(v30, enum case for InputConnectionBehavior.default(_:), v32);
  v22 = IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  v35 = v33;
  v36 = v34;

  IntentParameter.wrappedValue.setter();

  return v22;
}

uint64_t sub_100012B80(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t (*a4)(unint64_t, unint64_t))
{
  v6 = a2(0);
  sub_100007368(v6, a3);
  sub_100007330(v6, a3);
  return a4(0xD000000000000010, 0x800000010001AC40);
}

uint64_t sub_100012C2C(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  if (*a1 == -1)
  {
    v5 = a2(0);
  }

  else
  {
    swift_once();
    v5 = a2(0);
  }

  return sub_100007330(v5, a3);
}

uint64_t sub_100012CC4@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = sub_100007330(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t CancelPrintJob.perform()(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for MainActor();
  *(v1 + 24) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100012E00, v3, v2);
}

uint64_t sub_100012E00()
{

  static IntentResult.result<>()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100012E6C@<X0>(uint64_t a1@<X8>)
{
  if (qword_100028AB8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_100007330(v2, static CancelPrintJob.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100012F18@<X0>(uint64_t *a1@<X8>)
{
  result = _s12Print_Center06CancelA3JobVACycfC_0();
  *a1 = result;
  return result;
}

uint64_t sub_100012F40(uint64_t a1)
{
  v2 = sub_1000135E8();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t _s12Print_Center06CancelA3JobVACycfC_0()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v29 = *(v0 - 8);
  v30 = v0;
  __chkstk_darwin(v0);
  v28 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100004A84(&qword_100028AC8, &qword_10001BB48);
  __chkstk_darwin(v2 - 8);
  v27 = &v22 - v3;
  v4 = sub_100004A84(&qword_100028AD0, &qword_10001BB50);
  __chkstk_darwin(v4 - 8);
  v26 = &v22 - v5;
  v6 = sub_100004A84(&qword_100028AD8, &qword_10001C210);
  __chkstk_darwin(v6 - 8);
  v25 = &v22 - v7;
  v8 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v13 - 8);
  v23 = type metadata accessor for LocalizedStringResource();
  v14 = *(v23 - 8);
  __chkstk_darwin(v23);
  v24 = sub_100004A84(&qword_100028AE0, &qword_10001BB58);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v15 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v16 = *(v9 + 104);
  v16(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v16(v11, v15, v8);
  v17 = v25;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v14 + 56))(v17, 0, 1, v23);
  v18 = type metadata accessor for String.IntentInputOptions();
  v31 = 0;
  v32 = 0;
  (*(*(v18 - 8) + 56))(v26, 1, 1, v18);
  v19 = type metadata accessor for IntentDialog();
  (*(*(v19 - 8) + 56))(v27, 1, 1, v19);
  (*(v29 + 104))(v28, enum case for InputConnectionBehavior.default(_:), v30);
  v20 = IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  v31 = 0;
  v32 = 0;

  IntentParameter.wrappedValue.setter();

  return v20;
}

unint64_t sub_1000134D0()
{
  result = qword_1000290D8;
  if (!qword_1000290D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000290D8);
  }

  return result;
}

unint64_t sub_100013528()
{
  result = qword_1000290E0;
  if (!qword_1000290E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000290E0);
  }

  return result;
}

unint64_t sub_1000135E8()
{
  result = qword_1000290E8;
  if (!qword_1000290E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000290E8);
  }

  return result;
}

unint64_t sub_100013650()
{
  result = qword_1000290F0;
  if (!qword_1000290F0)
  {
    sub_100004C24(&qword_1000290F8, " \x1B");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000290F0);
  }

  return result;
}

uint64_t sub_1000136D0@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_100013718(uint64_t a1)
{
  v2 = sub_100014FA8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100013754(uint64_t a1)
{
  v2 = sub_100014FA8();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100013790(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x537265746E697270;
    v6 = 0x617453726F727265;
    if (a1 != 8)
    {
      v6 = 0x6567616D49626F6ALL;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x50746E6572727563;
    if (a1 != 5)
    {
      v7 = 0x72676F7250626F6ALL;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x4449626F6ALL;
    v2 = 0x656C746954626F6ALL;
    v3 = 0x73656761506D756ELL;
    if (a1 != 3)
    {
      v3 = 0x4E7265746E697270;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000014;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_100013904(void *a1)
{
  v3 = sub_100004A84(&qword_100029140, &qword_10001CE90);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100014E5C(a1, a1[3]);
  sub_100014EA0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[12] = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[11] = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[10] = 5;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[9] = 6;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[8] = 7;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[7] = 8;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[6] = 9;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100013B84(uint64_t a1)
{
  Hasher._combine(_:)(*v1);
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(*(v1 + 40));
  String.hash(into:)();
  Hasher._combine(_:)(*(v1 + 64));
  v2 = *(v1 + 72);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  Hasher._combine(_:)(*&v2);
  Hasher._combine(_:)(*(v1 + 80));
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int sub_100013C28()
{
  v1 = *v0;
  v2 = *(v0 + 40);
  v7 = *(v0 + 64);
  v3 = *(v0 + 72);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(v2);
  String.hash(into:)();
  Hasher._combine(_:)(v7);
  v4 = 0.0;
  if (v3 != 0.0)
  {
    v4 = v3;
  }

  v5 = *(v0 + 80);
  Hasher._combine(_:)(*&v4);
  Hasher._combine(_:)(v5);
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100013D74(void *a1)
{
  v2 = sub_100004A84(&qword_100029148, &qword_10001CE98);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_100014E5C(a1, a1[3]);
  sub_100014FA8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_100013E8C()
{
  result = qword_100029100;
  if (!qword_100029100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029100);
  }

  return result;
}

unint64_t sub_100013EE4()
{
  result = qword_100029108;
  if (!qword_100029108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029108);
  }

  return result;
}

unint64_t sub_100013F3C()
{
  result = qword_100029110;
  if (!qword_100029110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029110);
  }

  return result;
}

unint64_t sub_100013F94()
{
  result = qword_100029118;
  if (!qword_100029118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029118);
  }

  return result;
}

unint64_t sub_100013FEC()
{
  result = qword_100029120;
  if (!qword_100029120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029120);
  }

  return result;
}

unint64_t sub_100014044()
{
  result = qword_100029128;
  if (!qword_100029128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029128);
  }

  return result;
}

Swift::Int sub_1000140AC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100014120(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_10001416C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100014584(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000141A0(uint64_t a1)
{
  v2 = sub_100014EA0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000141DC(uint64_t a1)
{
  v2 = sub_100014EA0();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100014218@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1000148CC(a2, v8);
  if (!v2)
  {
    v5 = v12;
    *(a1 + 64) = v11;
    *(a1 + 80) = v5;
    *(a1 + 96) = v13;
    *(a1 + 112) = v14;
    v6 = v8[1];
    *a1 = v8[0];
    *(a1 + 16) = v6;
    result = *&v9;
    v7 = v10;
    *(a1 + 32) = v9;
    *(a1 + 48) = v7;
  }

  return result;
}

Swift::Int sub_1000142A0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 40);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  v8 = *(v1 + 80);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(v3);
  String.hash(into:)();
  Hasher._combine(_:)(v4);
  v6 = 0.0;
  if (v5 != 0.0)
  {
    v6 = v5;
  }

  Hasher._combine(_:)(*&v6);
  Hasher._combine(_:)(v8);
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000143BC(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 80);
  v12[4] = *(a1 + 64);
  v12[5] = v2;
  v12[6] = *(a1 + 96);
  v13 = *(a1 + 112);
  v3 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v3;
  v4 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v4;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[3];
  v14[2] = a2[2];
  v14[3] = v7;
  v14[0] = v5;
  v14[1] = v6;
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  v15 = *(a2 + 14);
  v14[5] = v9;
  v14[6] = v10;
  v14[4] = v8;
  return sub_100014440(v12, v14) & 1;
}

uint64_t sub_100014440(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32);
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + 40) != *(a2 + 40) || (*(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 64) != *(a2 + 64) || *(a1 + 72) != *(a2 + 72) || *(a1 + 80) != *(a2 + 80) || (*(a1 + 88) != *(a2 + 88) || *(a1 + 96) != *(a2 + 96)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 104) == *(a2 + 104) && *(a1 + 112) == *(a2 + 112))
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100014584(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449626F6ALL && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x800000010001AC60 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746954626F6ALL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73656761506D756ELL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4E7265746E697270 && a2 == 0xEB00000000656D61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x50746E6572727563 && a2 == 0xEB00000000656761 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x72676F7250626F6ALL && a2 == 0xEB00000000737365 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x537265746E697270 && a2 == 0xEC00000065746174 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x617453726F727265 && a2 == 0xEB00000000737574 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6567616D49626F6ALL && a2 == 0xEC00000068746150)
  {

    return 9;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_1000148CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100004A84(&qword_100029130, &qword_10001CE88);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - v7;
  sub_100014E5C(a1, a1[3]);
  sub_100014EA0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100014EF4(a1);
  }

  LOBYTE(v47[0]) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v47[0]) = 1;
  v36 = KeyedDecodingContainer.decode(_:forKey:)();
  v38 = v10;
  LOBYTE(v47[0]) = 2;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v37 = v12;
  v34 = v11;
  LOBYTE(v47[0]) = 3;
  v33 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v47[0]) = 4;
  v32 = KeyedDecodingContainer.decode(_:forKey:)();
  v35 = v13;
  LOBYTE(v47[0]) = 5;
  v31 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v47[0]) = 6;
  KeyedDecodingContainer.decode(_:forKey:)();
  v15 = v14;
  LOBYTE(v47[0]) = 7;
  v29 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v47[0]) = 8;
  v28 = KeyedDecodingContainer.decode(_:forKey:)();
  v30 = v16;
  v48 = 9;
  v17 = KeyedDecodingContainer.decode(_:forKey:)();
  v19 = v18;
  (*(v6 + 8))(v8, v5);
  *&v39 = v9;
  *(&v39 + 1) = v36;
  v20 = v38;
  *&v40 = v38;
  *(&v40 + 1) = v34;
  v21 = v37;
  *&v41 = v37;
  *(&v41 + 1) = v33;
  *&v42 = v32;
  v22 = v35;
  *(&v42 + 1) = v35;
  *&v43 = v31;
  *(&v43 + 1) = v15;
  *&v44 = v29;
  *(&v44 + 1) = v28;
  *&v45 = v30;
  *(&v45 + 1) = v17;
  v46 = v19;
  sub_100014F40(&v39, v47);
  sub_100014EF4(a1);
  v47[0] = v9;
  v47[1] = v36;
  v47[2] = v20;
  v47[3] = v34;
  v47[4] = v21;
  v47[5] = v33;
  v47[6] = v32;
  v47[7] = v22;
  v47[8] = v31;
  v47[9] = v15;
  v47[10] = v29;
  v47[11] = v28;
  v47[12] = v30;
  v47[13] = v17;
  v47[14] = v19;
  result = sub_100014F78(v47);
  v24 = v44;
  *(a2 + 64) = v43;
  *(a2 + 80) = v24;
  *(a2 + 96) = v45;
  *(a2 + 112) = v46;
  v25 = v40;
  *a2 = v39;
  *(a2 + 16) = v25;
  v26 = v42;
  *(a2 + 32) = v41;
  *(a2 + 48) = v26;
  return result;
}

void *sub_100014E5C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100014EA0()
{
  result = qword_100029138;
  if (!qword_100029138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029138);
  }

  return result;
}

uint64_t sub_100014EF4(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_100014FA8()
{
  result = qword_100029150;
  if (!qword_100029150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029150);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PrintJobState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PrintJobState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_100015178(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1000151A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000151EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10001525C()
{
  result = qword_100029158;
  if (!qword_100029158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029158);
  }

  return result;
}

unint64_t sub_1000152B4()
{
  result = qword_100029160;
  if (!qword_100029160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029160);
  }

  return result;
}

unint64_t sub_10001530C()
{
  result = qword_100029168;
  if (!qword_100029168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029168);
  }

  return result;
}

unint64_t sub_100015364()
{
  result = qword_100029170;
  if (!qword_100029170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029170);
  }

  return result;
}

unint64_t sub_1000153BC()
{
  result = qword_100029178;
  if (!qword_100029178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029178);
  }

  return result;
}

uint64_t sub_100015410(unsigned __int16 a1, uint64_t a2, unint64_t a3)
{
  v4 = a2 == 0x646573756170 && a3 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 0;
  }

  v7 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v7 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
    return 0;
  }

  result = 0;
  switch(a1)
  {
    case 4:
    case 18:
    case 20:
    case 21:
    case 22:
    case 24:
    case 25:
      if (a1 < 0x100u)
      {
        return 0;
      }

      goto LABEL_12;
    case 5:
    case 6:
    case 7:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 19:
    case 23:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
LABEL_12:
      v9 = [objc_opt_self() mainBundle];
      v10 = String._bridgeToObjectiveC()();
      v11 = String._bridgeToObjectiveC()();

      v12 = String._bridgeToObjectiveC()();
      v13 = [v9 localizedStringForKey:v10 value:v11 table:v12];

      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      result = v14;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100015754@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100017430();
  *a1 = result;
  a1[1] = v3;
  return result;
}

Swift::Int sub_100015784()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100015800(uint64_t a1)
{
  v2 = v1[1];
  Hasher._combine(_:)(*v1);
  Hasher._combine(_:)(v2);

  return String.hash(into:)();
}

Swift::Int sub_100015868(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000158E0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  if (*(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

unint64_t *sub_10001593C@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_100015960@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100017884(*a1);
  *a2 = result;
  return result;
}

Swift::Int sub_10001599C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10001687C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_100015A08(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_100015A08(uint64_t *a1)
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
      sub_100015BB8(v7, v8, a1, v4);
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
    return sub_100015B00(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100015B00(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 24 * a3 - 24;
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + 24 * a3);
    v8 = v6;
    v9 = v5;
    while (1)
    {
      if (v7 != 26)
      {
        v10 = v9[1];
        v11 = v9[25];
        result = v10 < v11;
        if (!(v11 == v10 ? *v9 < v7 : v10 < v11))
        {
LABEL_4:
          ++a3;
          v5 += 24;
          --v6;
          if (a3 == a2)
          {
            return result;
          }

          goto LABEL_5;
        }
      }

      if (!v4)
      {
        break;
      }

      v13 = v9[25];
      v14 = *(v9 + 4);
      v15 = *(v9 + 5);
      *(v9 + 24) = *v9;
      result = *(v9 + 2);
      *(v9 + 5) = result;
      *v9 = v7;
      v9[1] = v13;
      *(v9 + 1) = v14;
      *(v9 + 2) = v15;
      v9 -= 24;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100015BB8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v103 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_101:
    v103 = *v103;
    if (!v103)
    {
      goto LABEL_139;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_133;
    }

    goto LABEL_103;
  }

  v6 = a4;
  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v5)
    {
      v10 = *a3;
      v11 = (*a3 + 24 * v7);
      v12 = *v11;
      if (v12 == 26)
      {
        v13 = 1;
      }

      else
      {
        v14 = (v10 + 24 * v9);
        v15 = *v14;
        v16 = v14[1];
        v17 = v11[1];
        v18 = v15 < v12;
        if (v17 == v16)
        {
          v13 = v18;
        }

        else
        {
          v13 = v16 < v17;
        }
      }

      v7 = v9 + 2;
      if (v9 + 2 < v5)
      {
        v19 = (v10 + 24 * v9 + 49);
        do
        {
          v23 = *(v19 - 1);
          if (v23 == 26)
          {
            if ((v13 & 1) == 0)
            {
              goto LABEL_29;
            }
          }

          else
          {
            v20 = *(v19 - 24);
            v21 = *v19;
            v22 = *(v19 - 25) >= v23;
            if (v21 != v20)
            {
              v22 = v20 >= v21;
            }

            if (v13 == v22)
            {
              goto LABEL_20;
            }
          }

          ++v7;
          v19 += 24;
        }

        while (v5 != v7);
        v7 = v5;
      }

LABEL_20:
      if (v13)
      {
        if (v7 < v9)
        {
          goto LABEL_132;
        }

        if (v9 < v7)
        {
          v24 = 24 * v7 - 8;
          v25 = 24 * v9 + 16;
          v26 = v7;
          v27 = v9;
          do
          {
            if (v27 != --v26)
            {
              v28 = *a3;
              if (!*a3)
              {
                goto LABEL_136;
              }

              v29 = (v28 + v25);
              v30 = (v28 + v24);
              v31 = *(v29 - 8);
              v32 = *(v29 - 1);
              v33 = *v29;
              v34 = *v30;
              *(v29 - 1) = *(v30 - 1);
              *v29 = v34;
              *(v30 - 8) = v31;
              *(v30 - 1) = v32;
              *v30 = v33;
            }

            ++v27;
            v24 -= 24;
            v25 += 24;
          }

          while (v27 < v26);
          v5 = a3[1];
        }
      }
    }

LABEL_29:
    if (v7 < v5)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_129;
      }

      if (v7 - v9 < v6)
      {
        if (__OFADD__(v9, v6))
        {
          goto LABEL_130;
        }

        if (v9 + v6 < v5)
        {
          v5 = v9 + v6;
        }

        if (v5 < v9)
        {
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          result = sub_100016504(v8);
          v8 = result;
LABEL_103:
          v95 = v8 + 16;
          v96 = *(v8 + 2);
          if (v96 >= 2)
          {
            while (*a3)
            {
              v97 = &v8[16 * v96];
              v98 = *v97;
              v99 = &v95[2 * v96];
              v100 = v99[1];
              sub_1000161EC((*a3 + 24 * *v97), (*a3 + 24 * *v99), *a3 + 24 * v100, v103);
              if (v4)
              {
              }

              if (v100 < v98)
              {
                goto LABEL_125;
              }

              if (v96 - 2 >= *v95)
              {
                goto LABEL_126;
              }

              *v97 = v98;
              *(v97 + 1) = v100;
              v101 = *v95 - v96;
              if (*v95 < v96)
              {
                goto LABEL_127;
              }

              v96 = *v95 - 1;
              result = memmove(v99, v99 + 2, 16 * v101);
              *v95 = v96;
              if (v96 <= 1)
              {
              }
            }

            goto LABEL_137;
          }
        }

        if (v7 != v5)
        {
          break;
        }
      }
    }

LABEL_50:
    if (v7 < v9)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100016518(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v49 = *(v8 + 2);
    v48 = *(v8 + 3);
    v50 = v49 + 1;
    if (v49 >= v48 >> 1)
    {
      result = sub_100016518((v48 > 1), v49 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v50;
    v51 = &v8[16 * v49];
    *(v51 + 4) = v9;
    *(v51 + 5) = v7;
    v52 = *v103;
    if (!*v103)
    {
      goto LABEL_138;
    }

    if (v49)
    {
      while (1)
      {
        v53 = v50 - 1;
        if (v50 >= 4)
        {
          break;
        }

        if (v50 == 3)
        {
          v54 = *(v8 + 4);
          v55 = *(v8 + 5);
          v64 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          v57 = v64;
LABEL_70:
          if (v57)
          {
            goto LABEL_116;
          }

          v70 = &v8[16 * v50];
          v72 = *v70;
          v71 = *(v70 + 1);
          v73 = __OFSUB__(v71, v72);
          v74 = v71 - v72;
          v75 = v73;
          if (v73)
          {
            goto LABEL_119;
          }

          v76 = &v8[16 * v53 + 32];
          v78 = *v76;
          v77 = *(v76 + 1);
          v64 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v64)
          {
            goto LABEL_122;
          }

          if (__OFADD__(v74, v79))
          {
            goto LABEL_123;
          }

          if (v74 + v79 >= v56)
          {
            if (v56 < v79)
            {
              v53 = v50 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        v80 = &v8[16 * v50];
        v82 = *v80;
        v81 = *(v80 + 1);
        v64 = __OFSUB__(v81, v82);
        v74 = v81 - v82;
        v75 = v64;
LABEL_84:
        if (v75)
        {
          goto LABEL_118;
        }

        v83 = &v8[16 * v53];
        v85 = *(v83 + 4);
        v84 = *(v83 + 5);
        v64 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v64)
        {
          goto LABEL_121;
        }

        if (v86 < v74)
        {
          goto LABEL_3;
        }

LABEL_91:
        v91 = v53 - 1;
        if (v53 - 1 >= v50)
        {
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
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
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
          goto LABEL_131;
        }

        if (!*a3)
        {
          goto LABEL_135;
        }

        v92 = *&v8[16 * v91 + 32];
        v93 = *&v8[16 * v53 + 40];
        sub_1000161EC((*a3 + 24 * v92), (*a3 + 24 * *&v8[16 * v53 + 32]), *a3 + 24 * v93, v52);
        if (v4)
        {
        }

        if (v93 < v92)
        {
          goto LABEL_112;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_100016504(v8);
        }

        if (v91 >= *(v8 + 2))
        {
          goto LABEL_113;
        }

        v94 = &v8[16 * v91];
        *(v94 + 4) = v92;
        *(v94 + 5) = v93;
        result = sub_100016478(v53);
        v50 = *(v8 + 2);
        if (v50 <= 1)
        {
          goto LABEL_3;
        }
      }

      v58 = &v8[16 * v50 + 32];
      v59 = *(v58 - 64);
      v60 = *(v58 - 56);
      v64 = __OFSUB__(v60, v59);
      v61 = v60 - v59;
      if (v64)
      {
        goto LABEL_114;
      }

      v63 = *(v58 - 48);
      v62 = *(v58 - 40);
      v64 = __OFSUB__(v62, v63);
      v56 = v62 - v63;
      v57 = v64;
      if (v64)
      {
        goto LABEL_115;
      }

      v65 = &v8[16 * v50];
      v67 = *v65;
      v66 = *(v65 + 1);
      v64 = __OFSUB__(v66, v67);
      v68 = v66 - v67;
      if (v64)
      {
        goto LABEL_117;
      }

      v64 = __OFADD__(v56, v68);
      v69 = v56 + v68;
      if (v64)
      {
        goto LABEL_120;
      }

      if (v69 >= v61)
      {
        v87 = &v8[16 * v53 + 32];
        v89 = *v87;
        v88 = *(v87 + 1);
        v64 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v64)
        {
          goto LABEL_124;
        }

        if (v56 < v90)
        {
          v53 = v50 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_70;
    }

LABEL_3:
    v5 = a3[1];
    v6 = a4;
    if (v7 >= v5)
    {
      goto LABEL_101;
    }
  }

  v35 = *a3;
  v36 = *a3 + 24 * v7 - 24;
  v37 = v9 - v7;
LABEL_39:
  v38 = *(v35 + 24 * v7);
  v39 = v37;
  v40 = v36;
  while (1)
  {
    if (v38 != 26)
    {
      v41 = v40[1];
      v42 = v40[25];
      if (!(v42 == v41 ? *v40 < v38 : v41 < v42))
      {
LABEL_38:
        ++v7;
        v36 += 24;
        --v37;
        if (v7 != v5)
        {
          goto LABEL_39;
        }

        v7 = v5;
        goto LABEL_50;
      }
    }

    if (!v35)
    {
      break;
    }

    v44 = v40[25];
    v45 = *(v40 + 4);
    v46 = *(v40 + 5);
    *(v40 + 24) = *v40;
    *(v40 + 5) = *(v40 + 2);
    *v40 = v38;
    v40[1] = v44;
    *(v40 + 1) = v45;
    *(v40 + 2) = v46;
    v40 -= 24;
    if (__CFADD__(v39++, 1))
    {
      goto LABEL_38;
    }
  }

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
  return result;
}

uint64_t sub_1000161EC(unsigned __int8 *__dst, unsigned __int8 *__src, unint64_t a3, unsigned __int8 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_37;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v16 = *v6;
      if (v16 != 26)
      {
        v17 = v4[1];
        v18 = v6[1];
        v19 = *v4 < v16;
        if (v18 != v17)
        {
          v19 = v17 < v18;
        }

        if (!v19)
        {
          break;
        }
      }

      v13 = v6;
      v14 = v7 == v6;
      v6 += 24;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v4;
    v14 = v7 == v4;
    v4 += 24;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_23:
    v20 = v6 - 24;
    v5 -= 24;
    v21 = v12;
    do
    {
      v22 = (v5 + 24);
      v24 = *(v21 - 24);
      v21 -= 24;
      v23 = v24;
      if (v24 == 26)
      {
        goto LABEL_31;
      }

      v25 = *(v6 - 23);
      v26 = *(v12 - 23);
      v27 = *(v6 - 24) < v23;
      if (v26 != v25)
      {
        v27 = v25 < v26;
      }

      if (v27)
      {
LABEL_31:
        if (v22 != v6)
        {
          v29 = *v20;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v29;
        }

        if (v12 <= v4 || (v6 -= 24, v20 <= v7))
        {
          v6 = v20;
          goto LABEL_37;
        }

        goto LABEL_23;
      }

      if (v22 != v12)
      {
        v28 = *v21;
        *(v5 + 16) = *(v21 + 16);
        *v5 = v28;
      }

      v5 -= 24;
      v12 = v21;
    }

    while (v21 > v4);
    v12 = v21;
  }

LABEL_37:
  v30 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v31 = (v30 >> 2) + (v30 >> 63);
  if (v6 != v4 || v6 >= &v4[24 * v31])
  {
    memmove(v6, v4, 24 * v31);
  }

  return 1;
}

uint64_t sub_100016478(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100016504(v3);
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

char *sub_100016518(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004A84(&qword_100029180, &qword_10001D0B0);
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

char *sub_10001661C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004A84(&qword_1000290D0, &qword_10001CBC0);
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