uint64_t sub_10003D448(uint64_t a1)
{
  v2 = type metadata accessor for UserInterfaceSizeClass();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v42 = &v38[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_10003AE84(&qword_100154940, &unk_10010BCB0);
  __chkstk_darwin(v5);
  v49 = &v38[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v38[-v8];
  v10 = sub_10003AE84(&qword_100154948, qword_1001130B0);
  __chkstk_darwin(v10 - 8);
  v48 = &v38[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v47 = &v38[-v13];
  __chkstk_darwin(v14);
  v16 = &v38[-v15];
  v18 = __chkstk_darwin(v17);
  v20 = &v38[-v19];
  v44 = *(v3 + 104);
  v44(&v38[-v19], enum case for UserInterfaceSizeClass.compact(_:), v2, v18);
  v43 = *(v3 + 56);
  v43(v20, 0, 1, v2);
  v45 = v5;
  v46 = a1;
  v21 = *(v5 + 48);
  sub_10002F074(a1, v9);
  sub_10002F074(v20, &v9[v21]);
  v22 = *(v3 + 48);
  if (v22(v9, 1, v2) == 1)
  {
    sub_1000035CC(v20, &qword_100154948, qword_1001130B0);
    if (v22(&v9[v21], 1, v2) == 1)
    {
      v40 = v3;
      sub_1000035CC(v9, &qword_100154948, qword_1001130B0);
      goto LABEL_8;
    }

LABEL_6:
    v23 = v9;
LABEL_14:
    sub_1000035CC(v23, &qword_100154940, &unk_10010BCB0);
    goto LABEL_15;
  }

  sub_10002F074(v9, v16);
  v41 = v22;
  if (v22(&v9[v21], 1, v2) == 1)
  {
    sub_1000035CC(v20, &qword_100154948, qword_1001130B0);
    (*(v3 + 8))(v16, v2);
    goto LABEL_6;
  }

  v24 = &v9[v21];
  v25 = v42;
  (*(v3 + 32))(v42, v24, v2);
  sub_10000D064(&qword_100154950, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
  v39 = dispatch thunk of static Equatable.== infix(_:_:)();
  v40 = v3;
  v26 = *(v3 + 8);
  v26(v25, v2);
  sub_1000035CC(v20, &qword_100154948, qword_1001130B0);
  v26(v16, v2);
  sub_1000035CC(v9, &qword_100154948, qword_1001130B0);
  v22 = v41;
  if ((v39 & 1) == 0)
  {
LABEL_15:
    v32 = 0;
    return v32 & 1;
  }

LABEL_8:
  v27 = *(type metadata accessor for CalculatorSizeClass(0) + 20);
  v28 = v47;
  (v44)(v47, enum case for UserInterfaceSizeClass.regular(_:), v2);
  v43(v28, 0, 1, v2);
  v29 = *(v45 + 48);
  v30 = v46 + v27;
  v31 = v49;
  sub_10002F074(v30, v49);
  sub_10002F074(v28, &v31[v29]);
  if (v22(v31, 1, v2) != 1)
  {
    sub_10002F074(v31, v48);
    if (v22(&v31[v29], 1, v2) != 1)
    {
      v34 = v40;
      v35 = v42;
      (*(v40 + 32))(v42, &v31[v29], v2);
      sub_10000D064(&qword_100154950, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
      v36 = v48;
      v32 = dispatch thunk of static Equatable.== infix(_:_:)();
      v37 = *(v34 + 8);
      v37(v35, v2);
      sub_1000035CC(v28, &qword_100154948, qword_1001130B0);
      v37(v36, v2);
      sub_1000035CC(v31, &qword_100154948, qword_1001130B0);
      return v32 & 1;
    }

    sub_1000035CC(v28, &qword_100154948, qword_1001130B0);
    (*(v40 + 8))(v48, v2);
    goto LABEL_13;
  }

  sub_1000035CC(v28, &qword_100154948, qword_1001130B0);
  if (v22(&v31[v29], 1, v2) != 1)
  {
LABEL_13:
    v23 = v31;
    goto LABEL_14;
  }

  sub_1000035CC(v31, &qword_100154948, qword_1001130B0);
  v32 = 1;
  return v32 & 1;
}

void sub_10003DAD4()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1)
  {
    v2 = objc_opt_self();
    v3 = [v2 mainScreen];
    [v3 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v22.origin.x = v5;
    v22.origin.y = v7;
    v22.size.width = v9;
    v22.size.height = v11;
    CGRectGetWidth(v22);
    v12 = [v2 mainScreen];
    [v12 bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v23.origin.x = v14;
    v23.origin.y = v16;
    v23.size.width = v18;
    v23.size.height = v20;
    CGRectGetHeight(v23);
    v21 = [v2 mainScreen];
    [v21 bounds];
  }
}

uint64_t sub_10003DC4C(uint64_t a1)
{
  v2 = type metadata accessor for UserInterfaceSizeClass();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10003AE84(&qword_100154940, &unk_10010BCB0);
  __chkstk_darwin(v6);
  v8 = &v22 - v7;
  v9 = sub_10003AE84(&qword_100154948, qword_1001130B0);
  __chkstk_darwin(v9 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v22 - v13;
  v15 = [objc_opt_self() currentDevice];
  v16 = [v15 userInterfaceIdiom];

  if (!v16)
  {
    goto LABEL_5;
  }

  (*(v3 + 104))(v14, enum case for UserInterfaceSizeClass.compact(_:), v2);
  (*(v3 + 56))(v14, 0, 1, v2);
  v17 = *(v6 + 48);
  sub_10002F074(a1, v8);
  sub_10002F074(v14, &v8[v17]);
  v18 = *(v3 + 48);
  if (v18(v8, 1, v2) != 1)
  {
    sub_10002F074(v8, v11);
    if (v18(&v8[v17], 1, v2) != 1)
    {
      (*(v3 + 32))(v5, &v8[v17], v2);
      sub_10000D064(&qword_100154950, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      v20 = *(v3 + 8);
      v20(v5, v2);
      sub_1000035CC(v14, &qword_100154948, qword_1001130B0);
      v20(v11, v2);
      sub_1000035CC(v8, &qword_100154948, qword_1001130B0);
      return v19 & 1;
    }

    sub_1000035CC(v14, &qword_100154948, qword_1001130B0);
    (*(v3 + 8))(v11, v2);
    goto LABEL_8;
  }

  sub_1000035CC(v14, &qword_100154948, qword_1001130B0);
  if (v18(&v8[v17], 1, v2) != 1)
  {
LABEL_8:
    sub_1000035CC(v8, &qword_100154940, &unk_10010BCB0);
    v19 = 0;
    return v19 & 1;
  }

  sub_1000035CC(v8, &qword_100154948, qword_1001130B0);
LABEL_5:
  v19 = 1;
  return v19 & 1;
}

void sub_10003E0B0(uint64_t a1)
{
  sub_10003E11C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_10003E11C(uint64_t a1)
{
  if (!qword_1001549C8)
  {
    type metadata accessor for UserInterfaceSizeClass();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1001549C8);
    }
  }
}

void *sub_10003E1CC()
{
  type metadata accessor for CalculatorHistoryRecordManager(0);
  swift_allocObject();
  result = sub_10003FBC8();
  qword_100160878 = result;
  return result;
}

uint64_t sub_10003E20C()
{
  swift_getKeyPath();
  sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager, &protocol conformance descriptor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
}

uint64_t sub_10003E2C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager, &protocol conformance descriptor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  *a2 = *(v3 + 32);
}

uint64_t sub_10003E384(unint64_t a1)
{
  swift_beginAccess();

  v4 = sub_1000ABD3C(v3, a1);

  if (v4)
  {
    *(v1 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager, &protocol conformance descriptor for CalculatorHistoryRecordManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10003E4CC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 32) = a2;
}

uint64_t sub_10003E534()
{
  swift_getKeyPath();
  sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager, &protocol conformance descriptor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 40);
}

void sub_10003E5D4(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager, &protocol conformance descriptor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 40);
}

void sub_10003E67C(char a1)
{
  if (*(v1 + 40) == (a1 & 1))
  {
    *(v1 + 40) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager, &protocol conformance descriptor for CalculatorHistoryRecordManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10003E78C()
{
  swift_getKeyPath();
  sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager, &protocol conformance descriptor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 56);
}

void sub_10003E82C(char a1)
{
  if (*(v1 + 56) == (a1 & 1))
  {
    *(v1 + 56) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager, &protocol conformance descriptor for CalculatorHistoryRecordManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

double sub_10003E93C(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  *(v2 + 48) = a1;

  swift_getKeyPath();
  sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager, &protocol conformance descriptor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((*(v2 + 56) & 1) == 0)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_10003EAA0()
{
  swift_getKeyPath();
  sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager, &protocol conformance descriptor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
}

uint64_t sub_10003EB58@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager, &protocol conformance descriptor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  *a2 = *(v3 + 48);
}

void sub_10003EC38(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager, &protocol conformance descriptor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 56);
}

id sub_10003ED08()
{
  swift_getKeyPath();
  sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager, &protocol conformance descriptor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 64);

  return v1;
}

id sub_10003EDB8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager, &protocol conformance descriptor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 64);
  *a2 = v4;

  return v4;
}

void sub_10003EE70(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 64);
  sub_10003AE84(&qword_100154C10, &qword_10010C0F0);
  v5 = v4;
  v6 = static NSObject.== infix(_:_:)();

  if (v6)
  {
    v7 = *(v2 + 64);
    *(v2 + 64) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager, &protocol conformance descriptor for CalculatorHistoryRecordManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

id sub_10003EFD8()
{
  swift_getKeyPath();
  sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager, &protocol conformance descriptor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 72);

  return v1;
}

id sub_10003F088@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager, &protocol conformance descriptor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 72);
  *a2 = v4;

  return v4;
}

void sub_10003F140(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 72);
  sub_10003AE84(&qword_100154C10, &qword_10010C0F0);
  v5 = v4;
  v6 = static NSObject.== infix(_:_:)();

  if (v6)
  {
    v7 = *(v2 + 72);
    *(v2 + 72) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager, &protocol conformance descriptor for CalculatorHistoryRecordManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10003F2A8()
{
  swift_getKeyPath();
  sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager, &protocol conformance descriptor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
}

uint64_t sub_10003F360@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager, &protocol conformance descriptor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  *a2 = *(v3 + 80);
}

uint64_t sub_10003F420(uint64_t a1)
{
  swift_beginAccess();

  sub_10004AA70(v3, a1);
  v5 = v4;

  if (v5)
  {
    *(v1 + 80) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager, &protocol conformance descriptor for CalculatorHistoryRecordManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10003F568(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 80) = a2;
}

uint64_t sub_10003F5D0()
{
  swift_getKeyPath();
  sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager, &protocol conformance descriptor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return swift_unknownObjectRetain();
}

uint64_t sub_10003F674@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager, &protocol conformance descriptor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 88);
  return swift_unknownObjectRetain();
}

double sub_10003F720(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager, &protocol conformance descriptor for CalculatorHistoryRecordManager);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

id sub_10003F89C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CalculatorHistoryRecordManager.NSCacheObserver();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_10003F8E8()
{
  swift_getKeyPath();
  sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager, &protocol conformance descriptor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 96);
  v2 = v1;
  return v1;
}

id sub_10003F990@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager, &protocol conformance descriptor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 96);
  *a2 = v4;

  return v4;
}

void sub_10003FA48(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 96);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager, &protocol conformance descriptor for CalculatorHistoryRecordManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  type metadata accessor for CalculatorHistoryRecordManager.NSCacheObserver();
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 96);
LABEL_8:
  *(v2 + 96) = a1;
}

void *sub_10003FBC8()
{
  v1 = v0;
  v2 = sub_10003AE84(&qword_100154BB0, &qword_10010FAE0);
  __chkstk_darwin(v2 - 8);
  v4 = aBlock - v3;
  *(v0 + 32) = _swiftEmptyArrayStorage;
  *(v0 + 40) = 0;
  *(v0 + 48) = _swiftEmptyArrayStorage;
  *(v0 + 56) = 0;
  *(v0 + 64) = [objc_allocWithZone(NSCache) init];
  *(v0 + 72) = [objc_allocWithZone(NSCache) init];
  *(v0 + 80) = &_swiftEmptySetSingleton;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  ObservationRegistrar.init()();
  v5 = sub_1000403E4(0);
  *(v0 + 16) = v5;
  type metadata accessor for StoreContext();
  v6 = swift_allocObject();
  type metadata accessor for ModelContext();
  swift_allocObject();
  swift_retain_n();
  ModelContext.init(_:)();
  type metadata accessor for DefaultSerialModelExecutor();
  swift_allocObject();
  v7 = DefaultSerialModelExecutor.init(modelContext:)();
  v8 = sub_100026874(&qword_100154BF0, &type metadata accessor for DefaultSerialModelExecutor, &protocol conformance descriptor for DefaultSerialModelExecutor);
  v6[2] = v7;
  v6[3] = v8;
  v6[4] = v5;
  v1[3] = v6;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v10;
  swift_retain_n();
  sub_1000502A0(0, 0, v4, &unk_10010C020, v11);

  sub_1000035CC(v4, &qword_100154BB0, &qword_10010FAE0);
  if (qword_1001546E8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000048C8(v12, qword_100160D38);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Successfully initialized record manager.", v15, 2u);
  }

  v16 = swift_allocObject();
  swift_weakInit();

  v17 = type metadata accessor for CalculatorHistoryRecordManager.NSCacheObserver();
  v18 = objc_allocWithZone(v17);
  v19 = &v18[OBJC_IVAR____TtCC10Calculator30CalculatorHistoryRecordManagerP33_4DA60216990E372C1AC9732F1D785D1D15NSCacheObserver_callback];
  *v19 = sub_10004B118;
  v19[1] = v16;
  v33.receiver = v18;
  v33.super_class = v17;
  v20 = objc_msgSendSuper2(&v33, "init");
  sub_10003FA48(v20);
  swift_getKeyPath();
  aBlock[0] = v1;
  sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager, &protocol conformance descriptor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v21 = v1[8];
  swift_getKeyPath();
  aBlock[0] = v1;
  v22 = v21;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  [v22 setDelegate:v1[12]];

  swift_getKeyPath();
  aBlock[0] = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v23 = v1[9];
  swift_getKeyPath();
  aBlock[0] = v1;
  v24 = v23;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  [v24 setDelegate:v1[12]];

  v25 = [objc_opt_self() defaultCenter];
  if (qword_1001544F8 != -1)
  {
    swift_once();
  }

  v26 = qword_100160B20;
  v27 = [objc_opt_self() mainQueue];
  v28 = swift_allocObject();
  swift_weakInit();

  aBlock[4] = sub_10004B120;
  aBlock[5] = v28;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10005628C;
  aBlock[3] = &unk_100149CE0;
  v29 = _Block_copy(aBlock);

  v30 = [v25 addObserverForName:v26 object:0 queue:v27 usingBlock:v29];
  _Block_release(v29);
  swift_unknownObjectRelease();

  return v1;
}

uint64_t sub_1000403E4(int a1)
{
  v75 = a1;
  v1 = type metadata accessor for ModelConfiguration.GroupContainer();
  __chkstk_darwin(v1 - 8);
  v73[1] = v73 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ModelConfiguration.CloudKitDatabase();
  __chkstk_darwin(v3 - 8);
  v78 = type metadata accessor for ModelConfiguration();
  v81 = *(v78 - 8);
  __chkstk_darwin(v78);
  v73[0] = v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v73 - v6;
  __chkstk_darwin(v8);
  v80 = v73 - v9;
  v10 = type metadata accessor for Schema.Version();
  __chkstk_darwin(v10 - 8);
  sub_10003AE84(&qword_100154C20, &qword_10010C110);
  v11 = swift_allocObject();
  v74 = xmmword_10010BDE0;
  *(v11 + 16) = xmmword_10010BDE0;
  v12 = type metadata accessor for SchemaV1.HistoryRecord(0);
  v13 = sub_100026874(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EBBC);
  *(v11 + 32) = v12;
  *(v11 + 40) = v13;
  Schema.Version.init(_:_:_:)();
  type metadata accessor for Schema();
  swift_allocObject();
  v14 = Schema.init(_:version:)();
  if (qword_1001546E8 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  v16 = sub_1000048C8(v15, qword_100160D38);

  v79 = v16;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();

  v19 = os_log_type_enabled(v17, v18);
  v77 = v14;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v83 = v21;
    *v20 = 136315138;
    v82 = v14;

    v22 = String.init<A>(describing:)();
    v24 = sub_100006E5C(v22, v23, &v83);

    *(v20 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v17, v18, "setup - schema: %s", v20, 0xCu);
    sub_100003F80(v21);
  }

  v25 = objc_opt_self();
  v26 = [v25 processInfo];
  v27 = [v26 environment];

  v28 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v28 + 16))
  {
    sub_10007519C(0xD00000000000001BLL, 0x8000000100105920);
    v30 = v29;

    if (v30)
    {
      goto LABEL_14;
    }
  }

  else
  {
  }

  v31 = [v25 processInfo];
  v32 = [v31 environment];

  v33 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v33 + 16))
  {
    v34 = sub_10007519C(0xD00000000000001ALL, 0x8000000100105940);
    if (v35)
    {
      v36 = (*(v33 + 56) + 16 * v34);
      v38 = *v36;
      v37 = v36[1];

      if (v38 != 49 || v37 != 0xE100000000000000)
      {
        _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }
  }

LABEL_14:
  static ModelConfiguration.CloudKitDatabase.none.getter();
  static ModelConfiguration.GroupContainer.automatic.getter();
  v39 = v80;
  ModelConfiguration.init(_:schema:isStoredInMemoryOnly:allowsSave:groupContainer:cloudKitDatabase:)();
  v40 = v81;
  v41 = *(v81 + 16);
  v42 = v78;
  v41(v7, v39, v78);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v83 = v46;
    *v45 = 136315138;
    v41(v73[0], v7, v42);
    v47 = String.init<A>(describing:)();
    v49 = v48;
    v50 = v7;
    v51 = *(v81 + 8);
    v51(v50, v78);
    v52 = sub_100006E5C(v47, v49, &v83);
    v42 = v78;

    *(v45 + 4) = v52;
    _os_log_impl(&_mh_execute_header, v43, v44, "setup - configuration: %s", v45, 0xCu);
    sub_100003F80(v46);

    v40 = v81;

    if ((v75 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {

    v53 = v7;
    v51 = *(v40 + 8);
    v51(v53, v42);
    if ((v75 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&_mh_execute_header, v54, v55, "setup - performing migration", v56, 2u);
  }

LABEL_21:
  type metadata accessor for ModelContainer();
  sub_10003AE84(&qword_100154C28, &qword_10010C118);
  v57 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v58 = swift_allocObject();
  *(v58 + 16) = v74;
  v41((v58 + v57), v80, v42);

  v59 = v76;
  v60 = ModelContainer.__allocating_init(for:migrationPlan:configurations:)();
  if (v59)
  {
    v51(v80, v42);

    sub_10004B2F0();
    swift_allocError();
    *v61 = v59;
    swift_willThrow();
  }

  else
  {
    v40 = v60;
    swift_retain_n();
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v83 = v76;
      *v64 = 136315138;
      v82 = v40;
      type metadata accessor for ModelContainer();
      v65 = String.init<A>(describing:)();
      v67 = v51;
      v68 = sub_100006E5C(v65, v66, &v83);
      v42 = v78;

      *(v64 + 4) = v68;
      v51 = v67;
      _os_log_impl(&_mh_execute_header, v62, v63, "setup - container: %s", v64, 0xCu);
      sub_100003F80(v76);
    }

    else
    {
    }

    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&_mh_execute_header, v69, v70, "Successfully initialized data store", v71, 2u);
    }

    else
    {
    }

    v51(v80, v42);
  }

  return v40;
}

double sub_100040DE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_100007314(a2, v8);
    type metadata accessor for CalculateExpression();
    if (swift_dynamicCast())
    {
      swift_getKeyPath();
      v8[0] = v6;
      sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager, &protocol conformance descriptor for CalculatorHistoryRecordManager);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v8[0] = v6;
      swift_getKeyPath();
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();

      swift_beginAccess();
      sub_100048F9C(v7);
      swift_endAccess();

      v8[0] = v6;
      swift_getKeyPath();
      ObservationRegistrar.didSet<A, B>(_:keyPath:)();
    }
  }

  return result;
}

void sub_100040FA4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_getKeyPath();
    sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager, &protocol conformance descriptor for CalculatorHistoryRecordManager);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    v4 = *(v3 + 80);
    if ((v4 & 0xC000000000000001) != 0)
    {

      __CocoaSet.makeIterator()();
      type metadata accessor for CalculateExpression();
      sub_100026874(&qword_100154BF8, &type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
      Set.Iterator.init(_cocoa:)();
      v4 = v3;
      v5 = v19;
      v6 = v20;
      v7 = v21;
      v8 = v22;
    }

    else
    {
      v9 = -1 << *(v4 + 32);
      v5 = v4 + 56;
      v6 = ~v9;
      v10 = -v9;
      if (v10 < 64)
      {
        v11 = ~(-1 << v10);
      }

      else
      {
        v11 = -1;
      }

      v8 = v11 & *(v4 + 56);

      v7 = 0;
    }

    if (v4 < 0)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v12 = v7;
      v13 = v8;
      v14 = v7;
      if (!v8)
      {
        break;
      }

LABEL_13:
      v15 = (v13 - 1) & v13;
      v16 = *(*(v4 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));

      if (!v16)
      {
LABEL_21:
        sub_10004B164(v4);

        return;
      }

      while (1)
      {
        if (qword_100154728 != -1)
        {
          swift_once();
        }

        v17 = qword_100160D98;
        swift_getKeyPath();
        v18 = v17;
        sub_100026874(&qword_100154C00, type metadata accessor for AppSettings, &unk_100115710);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        CalculateExpression.allowsArabicMath.setter();

        v7 = v14;
        v8 = v15;
        if ((v4 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_15:
        if (__CocoaSet.Iterator.next()())
        {
          type metadata accessor for CalculateExpression();
          swift_dynamicCast();
          v14 = v7;
          v15 = v8;
          if (v18)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= ((v6 + 64) >> 6))
      {
        goto LABEL_21;
      }

      v13 = *(v5 + 8 * v14);
      ++v12;
      if (v13)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

double sub_1000412FC()
{
  swift_getKeyPath();
  sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager, &protocol conformance descriptor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  [*(v0 + 64) removeAllObjects];
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  [*(v0 + 72) removeAllObjects];
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  *(v0 + 80) = &_swiftEmptySetSingleton;

  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  return result;
}

void sub_1000414A4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtCO10Calculator8SchemaV113HistoryRecord___observationRegistrar;
  v44 = a1;
  swift_getKeyPath();
  v9 = sub_100026874(&qword_100154BC0, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EB38);
  v40[3] = v8;
  v40[1] = v9;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  v10 = sub_100026874(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EBBC);
  sub_100026874(&qword_100154BD0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v40[2] = v10;
  PersistentModel.getValue<A>(forKey:)();

  v11 = sub_10006C894();
  v13 = v12;
  (*(v5 + 8))(v7, v4);
  swift_getKeyPath();
  v44 = v2;
  sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager, &protocol conformance descriptor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v14 = *(v2 + 48);
  v15 = *(v14 + 16);
  if (!v15)
  {
LABEL_34:
    sub_10003AE84(&qword_100154BD8, &qword_10010BFB0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_10010BDF0;
    *(v31 + 32) = a1;
    swift_getKeyPath();
    v42 = v2;

    sub_100048EE4(v11, v13);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v42 = v2;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    swift_beginAccess();
    sub_1000AC814(0, 0, v11, v13, v31);
    swift_endAccess();
    swift_getKeyPath();
    v42 = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if ((*(v2 + 56) & 1) == 0)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v40[-2] = v2;
      LOBYTE(v40[-1]) = 1;
      v42 = v2;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    v42 = v2;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    if (qword_1001546E8 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_1000048C8(v33, qword_100160D38);

    sub_100048EE4(v11, v13);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();

    sub_10004AA5C(v11, v13);
    if (!os_log_type_enabled(v26, v27))
    {

      v36 = v11;
LABEL_48:
      sub_10004AA5C(v36, v13);
      return;
    }

    v28 = swift_slowAlloc();
    v41[0] = swift_slowAlloc();
    *v28 = 136315394;
    v42 = a1;
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    PersistentModel.getValue<A>(forKey:)();

    v34 = sub_100006E5C(v42, v43, v41);

    *(v28 + 4) = v34;
    *(v28 + 12) = 2080;
    if (v13 > 1)
    {
      if (v13 == 2)
      {
        v35 = 0x73756F6976657250;
        v13 = 0xEF73796144203720;
        goto LABEL_55;
      }

      if (v13 == 3)
      {
        v35 = 0xD000000000000010;
        v13 = 0x8000000100105860;
        goto LABEL_55;
      }
    }

    else
    {
      if (!v13)
      {
        v35 = 0x7961646F54;
        v13 = 0xE500000000000000;
        goto LABEL_55;
      }

      if (v13 == 1)
      {
        v35 = 0x6164726574736559;
        v13 = 0xE900000000000079;
LABEL_55:
        v37 = sub_100006E5C(v35, v13, v41);

        *(v28 + 14) = v37;
        v38 = "Added record: %s to history in new section for: %s";
        goto LABEL_60;
      }
    }

    v35 = v11;
    goto LABEL_55;
  }

  v16 = 0;
  v17 = 0;
  while (1)
  {
    v18 = *(v14 + v16 + 40);
    if (v18 > 1)
    {
      break;
    }

    if (v18)
    {
      if (v18 != 1)
      {
        goto LABEL_14;
      }

      if (v13 == 1)
      {
        goto LABEL_22;
      }
    }

    else if (!v13)
    {
      goto LABEL_22;
    }

LABEL_4:
    ++v17;
    v16 += 24;
    if (v15 == v17)
    {
      goto LABEL_34;
    }
  }

  if (v18 == 2)
  {
    if (v13 == 2)
    {
      goto LABEL_22;
    }

    goto LABEL_4;
  }

  if (v18 == 3)
  {
    if (v13 == 3)
    {
      goto LABEL_22;
    }

    goto LABEL_4;
  }

LABEL_14:
  if (v13 < 4)
  {
    goto LABEL_4;
  }

  v19 = *(v14 + v16 + 32) == v11 && v18 == v13;
  if (!v19 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_4;
  }

LABEL_22:
  v40[0] = v11;
  swift_getKeyPath();
  v42 = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v42 = v2;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  v20 = *(v2 + 48);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 48) = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v20 = sub_1000ACA4C(v20);
    *(v2 + 48) = v20;
  }

  v22 = v17 >= *(v20 + 2);
  v23 = v40[0];
  if (v22)
  {
    __break(1u);
  }

  else if (!(*&v20[v16 + 48] >> 62))
  {
    goto LABEL_26;
  }

  if (_CocoaArrayWrapper.endIndex.getter() < 0)
  {
    __break(1u);
    goto LABEL_64;
  }

LABEL_26:

  sub_1000AE180(0, 0, a1);
  *(v2 + 48) = v20;
  swift_endAccess();

  swift_getKeyPath();
  v42 = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((*(v2 + 56) & 1) == 0)
  {
    v24 = swift_getKeyPath();
    __chkstk_darwin(v24);
    v40[-2] = v2;
    LOBYTE(v40[-1]) = 1;
    v42 = v2;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    v23 = v40[0];
  }

  v42 = v2;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  if (qword_1001546E8 != -1)
  {
LABEL_64:
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_1000048C8(v25, qword_100160D38);

  sub_100048EE4(v23, v13);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();

  sub_10004AA5C(v23, v13);
  if (!os_log_type_enabled(v26, v27))
  {

    v36 = v23;
    goto LABEL_48;
  }

  v28 = swift_slowAlloc();
  v41[0] = swift_slowAlloc();
  *v28 = 136315394;
  v42 = a1;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  PersistentModel.getValue<A>(forKey:)();

  v29 = sub_100006E5C(v42, v43, v41);

  *(v28 + 4) = v29;
  *(v28 + 12) = 2080;
  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v30 = 0x73756F6976657250;
      v13 = 0xEF73796144203720;
    }

    else
    {
      if (v13 != 3)
      {
        goto LABEL_56;
      }

      v30 = 0xD000000000000010;
      v13 = 0x8000000100105860;
    }
  }

  else if (v13)
  {
    if (v13 == 1)
    {
      v30 = 0x6164726574736559;
      v13 = 0xE900000000000079;
      goto LABEL_59;
    }

LABEL_56:
    v30 = v40[0];
  }

  else
  {
    v30 = 0x7961646F54;
    v13 = 0xE500000000000000;
  }

LABEL_59:
  v39 = sub_100006E5C(v30, v13, v41);

  *(v28 + 14) = v39;
  v38 = "Added record: %s to history in existing section: %s";
LABEL_60:
  _os_log_impl(&_mh_execute_header, v26, v27, v38, v28, 0x16u);
  swift_arrayDestroy();
}

uint64_t sub_100042024(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10003AE84(&qword_100154BB0, &qword_10010FAE0);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for GenericRecord(0);
  v17 = *(v7 - 8);
  v8 = *(v17 + 64);
  __chkstk_darwin(v7 - 8);
  sub_100045810(a1, &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for SchemaV1.HistoryRecord(0);
  swift_allocObject();
  v9 = sub_10007A434(&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getKeyPath();
  v18 = v1;
  sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager, &protocol conformance descriptor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + 40))
  {
    sub_1000414A4(v9);
    v10 = [objc_opt_self() defaultCenter];
    if (qword_1001544C8 != -1)
    {
      swift_once();
    }

    [v10 postNotificationName:qword_100160AF0 object:0];
  }

  else
  {
    v16 = a1;
    swift_getKeyPath();
    v18 = v1;

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v18 = v1;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    swift_beginAccess();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v1 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    v18 = v1;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    a1 = v16;
  }

  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  sub_100045810(a1, &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v17 + 80) + 40) & ~*(v17 + 80);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v2;
  sub_100048D28(&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);

  sub_1000502A0(0, 0, v6, &unk_10010BF58, v13);

  return sub_1000035CC(v6, &qword_100154BB0, &qword_10010FAE0);
}

uint64_t sub_100042448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_100042468, 0, 0);
}

uint64_t sub_100042468()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_10004C394;
  v2 = *(v0 + 24);

  return sub_100095308(v2);
}

void sub_100042504(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10003AE84(&qword_100154BB0, &qword_10010FAE0);
  __chkstk_darwin(v4 - 8);
  v6 = &v75 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v11 = OBJC_IVAR____TtC10Calculator30CalculatorHistoryRecordManager___observationRegistrar;
  v95 = v1;
  v81 = sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager, &protocol conformance descriptor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  if (*(*(v1 + 48) + 16))
  {
    v87 = v7;
    v79 = v11;
    if (qword_1001546E8 != -1)
    {
LABEL_88:
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    v13 = sub_1000048C8(v12, qword_100160D38);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();

    v16 = os_log_type_enabled(v14, v15);
    v91 = a1;
    v80 = v2;
    v78 = v6;
    v77 = v13;
    if (v16)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v94 = v18;
      *v17 = 136315138;
      v92 = v91;
      swift_getKeyPath();
      sub_100026874(&qword_100154BC0, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EB38);
      ObservationRegistrar.access<A, B>(_:keyPath:)();
      v2 = v80;

      swift_getKeyPath();
      sub_100026874(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EBBC);
      PersistentModel.getValue<A>(forKey:)();

      v19 = sub_100006E5C(v92, v93, &v94);

      *(v17 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v14, v15, "Deleting record: %s", v17, 0xCu);
      sub_100003F80(v18);

      a1 = v91;
    }

    v20 = OBJC_IVAR____TtCO10Calculator8SchemaV113HistoryRecord___observationRegistrar;
    v92 = a1;
    swift_getKeyPath();
    v89 = sub_100026874(&qword_100154BC0, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EB38);
    v90 = v20;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    v21 = sub_100026874(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EBBC);
    sub_100026874(&qword_100154BD0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v88 = v21;
    PersistentModel.getValue<A>(forKey:)();

    v6 = sub_10006C894();
    v23 = v22;
    (*(v8 + 8))(v10, v87);
    swift_getKeyPath();
    v92 = v2;
    v24 = v79;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v25 = *(v2 + 48);
    v26 = *(v25 + 16);
    if (v26)
    {
      v2 = 0;
      for (i = 0; v26 != i; ++i)
      {
        v28 = *(v25 + v2 + 40);
        if (v28 > 1)
        {
          if (v28 == 2)
          {
            if (v23 == 2)
            {
              goto LABEL_26;
            }

            goto LABEL_8;
          }

          if (v28 == 3)
          {
            if (v23 == 3)
            {
              goto LABEL_26;
            }

            goto LABEL_8;
          }
        }

        else
        {
          if (!v28)
          {
            if (!v23)
            {
              goto LABEL_26;
            }

            goto LABEL_8;
          }

          if (v28 == 1)
          {
            if (v23 == 1)
            {
              goto LABEL_26;
            }

            goto LABEL_8;
          }
        }

        if (v23 >= 4)
        {
          v29 = *(v25 + v2 + 32) == v6 && v28 == v23;
          if (v29 || (v30 = i, v31 = _stringCompareWithSmolCheck(_:_:expecting:)(), i = v30, (v31 & 1) != 0))
          {
LABEL_26:
            v76 = i;
            swift_getKeyPath();
            v32 = v24;
            v33 = v80;
            v92 = v80;
            v34 = v80 + v32;
            ObservationRegistrar.access<A, B>(_:keyPath:)();

            v35 = *(v33 + 48);
            if (v76 >= *(v35 + 16))
            {
              __break(1u);
            }

            else
            {
              v34 = *(v35 + v2 + 48);
              if (!(v34 >> 62))
              {
                v82 = v34 & 0xFFFFFFFFFFFFFF8;
                v87 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_29:
                v86 = v34 & 0xC000000000000001;

                v10 = 0;
                v84 = v23;
                v85 = v6;
                v83 = v34;
                v8 = v88;
                while (v87 != v10)
                {
                  if (v86)
                  {
                    v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  }

                  else
                  {
                    if (v10 >= *(v82 + 16))
                    {
                      __break(1u);
LABEL_87:
                      __break(1u);
                      goto LABEL_88;
                    }

                    v36 = *(v34 + 8 * v10 + 32);
                  }

                  v92 = v36;
                  swift_getKeyPath();
                  a1 = v89;
                  ObservationRegistrar.access<A, B>(_:keyPath:)();

                  swift_getKeyPath();
                  PersistentModel.getValue<A>(forKey:)();

                  v38 = v92;
                  v37 = v93;
                  v92 = v91;
                  swift_getKeyPath();
                  ObservationRegistrar.access<A, B>(_:keyPath:)();

                  swift_getKeyPath();
                  PersistentModel.getValue<A>(forKey:)();

                  if (v38 == v92 && v37 == v93)
                  {

                    v23 = v84;
                    v51 = v85;
                    goto LABEL_62;
                  }

                  v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  v23 = v84;
                  if (v39)
                  {
                    v51 = v85;
LABEL_62:

                    sub_10004AA5C(v51, v23);
                    swift_getKeyPath();
                    v52 = v80;
                    v92 = v80;
                    ObservationRegistrar.access<A, B>(_:keyPath:)();

                    v92 = v52;
                    swift_getKeyPath();
                    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

                    swift_beginAccess();
                    v53 = *(v52 + 48);
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    *(v52 + 48) = v53;
                    a1 = v91;
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      v53 = sub_1000ACA4C(v53);
                      *(v80 + 48) = v53;
                    }

                    if (v76 >= *(v53 + 2))
                    {
                      __break(1u);
                    }

                    else
                    {
                      sub_1000A86AC(v10);
                      v55 = v80;
                      *(v80 + 48) = v53;
                      swift_endAccess();

                      swift_getKeyPath();
                      v92 = v55;
                      ObservationRegistrar.access<A, B>(_:keyPath:)();

                      if ((*(v55 + 56) & 1) == 0)
                      {
                        KeyPath = swift_getKeyPath();
                        __chkstk_darwin(KeyPath);
                        *(&v75 - 2) = v55;
                        *(&v75 - 8) = 1;
                        v92 = v55;
                        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
                      }

                      v92 = v55;
                      swift_getKeyPath();
                      ObservationRegistrar.didSet<A, B>(_:keyPath:)();

                      swift_getKeyPath();
                      v92 = v55;
                      ObservationRegistrar.access<A, B>(_:keyPath:)();

                      v57 = *(v55 + 48);
                      v58 = v76;
                      if (v76 < *(v57 + 16))
                      {
                        v59 = *(v57 + v2 + 48);
                        if (!(v59 >> 62))
                        {
                          v60 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
                          goto LABEL_70;
                        }

LABEL_93:
                        v60 = _CocoaArrayWrapper.endIndex.getter();
                        v58 = v76;
LABEL_70:
                        v61 = v78;
                        v62 = v80;
                        if (!v60)
                        {
                          swift_getKeyPath();
                          v92 = v62;
                          ObservationRegistrar.access<A, B>(_:keyPath:)();

                          v92 = v62;
                          swift_getKeyPath();
                          ObservationRegistrar.willSet<A, B>(_:keyPath:)();

                          swift_beginAccess();
                          v63 = sub_1000A86B0(v58);
                          v65 = v64;
                          swift_endAccess();
                          sub_10004AA5C(v63, v65);

                          swift_getKeyPath();
                          v92 = v62;
                          ObservationRegistrar.access<A, B>(_:keyPath:)();

                          if ((*(v62 + 56) & 1) == 0)
                          {
                            v66 = swift_getKeyPath();
                            __chkstk_darwin(v66);
                            *(&v75 - 2) = v62;
                            *(&v75 - 8) = 1;
                            v92 = v62;
                            ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
                          }

                          v92 = v62;
                          swift_getKeyPath();
                          ObservationRegistrar.didSet<A, B>(_:keyPath:)();
                        }

                        goto LABEL_79;
                      }
                    }

                    __break(1u);
                    goto LABEL_93;
                  }

                  v40 = __OFADD__(v10++, 1);
                  v6 = v85;
                  v34 = v83;
                  if (v40)
                  {
                    goto LABEL_87;
                  }
                }

                a1 = v91;

                sub_100048EE4(v6, v23);
                v41 = Logger.logObject.getter();
                v42 = static os_log_type_t.error.getter();

                sub_10004AA5C(v6, v23);
                if (!os_log_type_enabled(v41, v42))
                {
                  goto LABEL_59;
                }

                v43 = swift_slowAlloc();
                v94 = swift_slowAlloc();
                *v43 = 136315394;
                v92 = a1;
                swift_getKeyPath();
                ObservationRegistrar.access<A, B>(_:keyPath:)();

                swift_getKeyPath();
                PersistentModel.getValue<A>(forKey:)();

                v50 = sub_100006E5C(v92, v93, &v94);

                *(v43 + 4) = v50;
                *(v43 + 12) = 2080;
                if (v23 > 1)
                {
                  if (v23 == 2)
                  {
                    v6 = 0x73756F6976657250;
                    v23 = 0xEF73796144203720;
                  }

                  else if (v23 == 3)
                  {
                    v6 = 0xD000000000000010;
                    v23 = 0x8000000100105860;
                  }
                }

                else if (v23)
                {
                  if (v23 == 1)
                  {
                    v6 = 0x6164726574736559;
                    v23 = 0xE900000000000079;
                  }
                }

                else
                {
                  v6 = 0x7961646F54;
                  v23 = 0xE500000000000000;
                }

                v74 = sub_100006E5C(v6, v23, &v94);

                *(v43 + 14) = v74;
                v69 = "Failed to find and delete record: %s from section: %s list.";
LABEL_77:
                _os_log_impl(&_mh_execute_header, v41, v42, v69, v43, 0x16u);
                swift_arrayDestroy();

                goto LABEL_78;
              }
            }

            v82 = v34 & 0xFFFFFFFFFFFFFF8;
            v87 = _CocoaArrayWrapper.endIndex.getter();
            goto LABEL_29;
          }
        }

LABEL_8:
        v2 += 24;
      }
    }

    sub_100048EE4(v6, v23);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    sub_10004AA5C(v6, v23);

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      *v43 = 136315394;
      if (v23 > 1)
      {
        if (v23 == 2)
        {
          v6 = 0x73756F6976657250;
          v23 = 0xEF73796144203720;
        }

        else if (v23 == 3)
        {
          v6 = 0xD000000000000010;
          v23 = 0x8000000100105860;
        }
      }

      else if (v23)
      {
        if (v23 == 1)
        {
          v6 = 0x6164726574736559;
          v23 = 0xE900000000000079;
        }
      }

      else
      {
        v6 = 0x7961646F54;
        v23 = 0xE500000000000000;
      }

      v67 = sub_100006E5C(v6, v23, &v94);

      *(v43 + 4) = v67;
      *(v43 + 12) = 2080;
      v92 = a1;
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      swift_getKeyPath();
      PersistentModel.getValue<A>(forKey:)();

      v68 = sub_100006E5C(v92, v93, &v94);

      *(v43 + 14) = v68;
      v69 = "Failed to find section: %s and delete record: %s";
      goto LABEL_77;
    }

LABEL_59:

    sub_10004AA5C(v6, v23);
LABEL_78:
    v61 = v78;
    v62 = v80;
LABEL_79:
    v92 = a1;
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    PersistentModel.getValue<A>(forKey:)();

    v70 = v92;
    v71 = v93;
    v72 = type metadata accessor for TaskPriority();
    (*(*(v72 - 8) + 56))(v61, 1, 1, v72);
    v73 = swift_allocObject();
    v73[2] = 0;
    v73[3] = 0;
    v73[4] = v62;
    v73[5] = v70;
    v73[6] = v71;

    sub_100043A2C(0, 0, v61, &unk_10010C3B8, v73);

    sub_1000035CC(v61, &qword_100154BB0, &qword_10010FAE0);
  }

  else
  {
    if (qword_1001546E8 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_1000048C8(v44, qword_100160D38);

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v94 = v48;
      *v47 = 136315138;
      v92 = a1;
      swift_getKeyPath();
      sub_100026874(&qword_100154BC0, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EB38);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      swift_getKeyPath();
      sub_100026874(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EBBC);
      PersistentModel.getValue<A>(forKey:)();

      v49 = sub_100006E5C(v92, v93, &v94);

      *(v47 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v45, v46, "Failed to delete record: %s from empty list.", v47, 0xCu);
      sub_100003F80(v48);
    }
  }
}

uint64_t sub_100043874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_100043898, 0, 0);
}

uint64_t sub_100043898()
{
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_100043938;
  v3 = v0[3];
  v2 = v0[4];

  return sub_10009597C(v3, v2, 0);
}

uint64_t sub_100043938()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100043A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10003AE84(&qword_100154BB0, &qword_10010FAE0);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_10004BD1C(a3, v22 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1000035CC(v10, &qword_100154BB0, &qword_10010FAE0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_100043C88(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10003AE84(&qword_100154BB0, &qword_10010FAE0);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    result = __CocoaSet.count.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *(a1 + 16);
    if (!result)
    {
      return result;
    }
  }

  if (qword_1001546E8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000048C8(v8, qword_100160D38);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Deleting multiple records.", v11, 2u);
  }

  swift_getKeyPath();

  sub_10004B914(a1, sub_10004B6CC);
  v13 = v12;

  v14 = type metadata accessor for TaskPriority();
  v15 = *(*(v14 - 8) + 56);
  v15(v6, 1, 1, v14);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v2;
  v16[5] = v13;

  sub_1000502A0(0, 0, v6, &unk_10010C378, v16);

  sub_1000035CC(v6, &qword_100154BB0, &qword_10010FAE0);
  v15(v6, 1, 1, v14);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v2;
  v17[5] = v13;

  sub_100043A2C(0, 0, v6, &unk_10010C388, v17);

  return sub_1000035CC(v6, &qword_100154BB0, &qword_10010FAE0);
}

uint64_t sub_100043F7C(uint64_t a1, uint64_t a2)
{

  swift_getAtKeyPath();

  return v3;
}

uint64_t sub_100043FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  sub_10003AE84(&qword_100154BB0, &qword_10010FAE0);
  v5[8] = swift_task_alloc();

  return _swift_task_switch(sub_100044068, 0, 0);
}

void sub_100044068()
{
  v97 = v0;
  v1 = v0[6];
  swift_getKeyPath();
  v90 = v0;
  v0[5] = v1;
  sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager, &protocol conformance descriptor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v2 = *(v1 + 48);
  v3 = *(v2 + 2);

  v88 = v3;
  if (!v3)
  {
    goto LABEL_133;
  }

  v4 = 0;
  v5 = 0;
  v6 = 48;
  do
  {
    if (v5 >= *(v2 + 2))
    {
      goto LABEL_139;
    }

    v7 = v90[7];
    v96[0] = *&v2[v6];

    v8 = sub_10004BD8C(v96, v7);
    v9 = v4;

    v10 = v96[0];
    v11 = v96[0] >> 62;
    if (v96[0] >> 62)
    {
      v12 = _CocoaArrayWrapper.endIndex.getter();
      v13 = v12 - v8;
      if (v12 < v8)
      {
        goto LABEL_140;
      }
    }

    else
    {
      v12 = *((v96[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      v13 = v12 - v8;
      if (v12 < v8)
      {
        goto LABEL_140;
      }
    }

    if (v8 < 0)
    {
LABEL_141:
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
      goto LABEL_154;
    }

    if (v11)
    {
      v15 = v12;
      v14 = _CocoaArrayWrapper.endIndex.getter();
      v12 = v15;
    }

    else
    {
      v14 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v14 < v12)
    {
      goto LABEL_142;
    }

    v16 = -v13;
    if (__OFSUB__(0, v13))
    {
      goto LABEL_143;
    }

    v17 = v8;
    v91 = v12;
    if (v11)
    {
      v18 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v18 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v19 = v18 - v13;
    if (__OFADD__(v18, v16))
    {
      goto LABEL_144;
    }

    v94 = v2;
    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v11)
      {
        v20 = v10 & 0xFFFFFFFFFFFFFF8;
        if (v19 <= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

LABEL_23:
      _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_24;
    }

    if (v11)
    {
      goto LABEL_23;
    }

LABEL_24:
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v20 = v10 & 0xFFFFFFFFFFFFFF8;
LABEL_25:
    type metadata accessor for SchemaV1.HistoryRecord(0);
    swift_arrayDestroy();
    if (!v13)
    {
      goto LABEL_37;
    }

    v21 = v10 >> 62;
    if (v10 >> 62)
    {
      v22 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v22 = *(v20 + 16);
    }

    v23 = v22 - v91;
    if (__OFSUB__(v22, v91))
    {
      goto LABEL_146;
    }

    v24 = (v20 + 32 + 8 * v91);
    if (v91 == v17 && v20 + 32 + 8 * v17 < v24 + 8 * v23)
    {
      if (v21)
      {
        goto LABEL_34;
      }
    }

    else
    {
      memmove((v20 + 32 + 8 * v17), v24, 8 * v23);
      if (v21)
      {
LABEL_34:
        v25 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_35;
      }
    }

    v25 = *(v20 + 16);
LABEL_35:
    if (__OFADD__(v25, v16))
    {
      goto LABEL_147;
    }

    *(v20 + 16) = v25 - v13;
LABEL_37:
    v2 = v94;
    if (v5 >= *(v94 + 16))
    {
      goto LABEL_145;
    }

    v27 = sub_1000ABD3C(v26, v10);

    if (v27)
    {
      v4 = v9;
    }

    else
    {
      v4 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_1000ACA4C(v94);
      }

      if (v5 >= *(v2 + 2))
      {
        goto LABEL_148;
      }

      *&v2[v6] = v10;
    }

    ++v5;

    v6 += 24;
  }

  while (v88 != v5);
  v28 = *(v2 + 2);
  if (!v28)
  {
LABEL_133:
    v31 = v2;
LABEL_135:
    v79 = v90[8];
    v80 = v90[6];
    v81 = type metadata accessor for TaskPriority();
    (*(*(v81 - 8) + 56))(v79, 1, 1, v81);
    type metadata accessor for MainActor();

    v82 = static MainActor.shared.getter();
    v83 = swift_allocObject();
    v83[2] = v82;
    v83[3] = &protocol witness table for MainActor;
    v83[4] = v80;
    v83[5] = v31;
    sub_100050560(0, 0, v79, &unk_10010C398, v83);

    v84 = v90[1];

    v84();
    return;
  }

  v29 = v2 + 32;

  v30 = 0;
  v31 = v2;
  v85 = v2 + 32;
  v86 = v28;
  while (1)
  {
    v32 = &v29[24 * v30];
    v34 = *v32;
    v33 = v32[1];
    v35 = v32[2];
    v93 = v33;
    if (v35 >> 62)
    {
      break;
    }

    if (!*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_52;
    }

LABEL_49:
    if (++v30 == v28)
    {

      goto LABEL_135;
    }
  }

  v78 = _CocoaArrayWrapper.endIndex.getter();
  v33 = v93;
  if (v78)
  {
    goto LABEL_49;
  }

LABEL_52:
  v36 = v33;
  sub_100048EE4(v34, v33);
  v37 = qword_1001546E8;

  if (v37 != -1)
  {
    swift_once();
  }

  v87 = v30;
  v38 = type metadata accessor for Logger();
  sub_1000048C8(v38, qword_100160D38);
  sub_100048EE4(v34, v36);

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.info.getter();
  sub_10004AA5C(v34, v36);

  v92 = v34;
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v96[0] = v42;
    *v41 = 136315138;
    v43 = v36;
    if (v36 > 1)
    {
      if (v36 == 2)
      {
        v44 = v42;
        v34 = 0x73756F6976657250;
        v45 = 0xEF73796144203720;
      }

      else
      {
        if (v36 != 3)
        {
          goto LABEL_62;
        }

        v44 = v42;
        v34 = 0xD000000000000010;
        v45 = 0x8000000100105860;
      }
    }

    else if (v36)
    {
      if (v36 == 1)
      {
        v44 = v42;
        v45 = 0xE900000000000079;
        v34 = 0x6164726574736559;
        goto LABEL_65;
      }

LABEL_62:
      v44 = v42;
      v45 = v43;
    }

    else
    {
      v44 = v42;
      v45 = 0xE500000000000000;
      v34 = 0x7961646F54;
    }

LABEL_65:
    sub_100048EE4(v92, v43);
    v46 = sub_100006E5C(v34, v45, v96);

    *(v41 + 4) = v46;
    v34 = v92;
    _os_log_impl(&_mh_execute_header, v39, v40, "Empty section found for %s deleting multiple records, removing section from list", v41, 0xCu);
    sub_100003F80(v44);
  }

  v95 = v2;
  v47 = *(v31 + 2);
  if (!v47)
  {
    v49 = 0;
    goto LABEL_93;
  }

  v48 = 0;
  v49 = 0;
  v50 = (v31 + 40);
  v51 = v93;
  while (2)
  {
    v52 = *v50;
    if (*v50 > 1)
    {
      if (v52 == 2)
      {
        if (v51 == 2)
        {
          break;
        }

        goto LABEL_69;
      }

      if (v52 == 3)
      {
        if (v51 == 3)
        {
          break;
        }

        goto LABEL_69;
      }

      goto LABEL_79;
    }

    if (!v52)
    {
      if (!v51)
      {
        break;
      }

      goto LABEL_69;
    }

    if (v52 == 1)
    {
      if (v51 == 1)
      {
        break;
      }

      goto LABEL_69;
    }

LABEL_79:
    if (v51 < 4 || (*(v50 - 1) != v34 || v52 != v51) && (v53 = _stringCompareWithSmolCheck(_:_:expecting:)(), v51 = v93, (v53 & 1) == 0))
    {
LABEL_69:
      v50 += 3;
      ++v49;
      v48 += 24;
      if (v47 == v49)
      {
        v49 = v47;
        goto LABEL_91;
      }

      continue;
    }

    break;
  }

  v54 = v49 + 1;
  if (__OFADD__(v49, 1))
  {
    goto LABEL_155;
  }

  sub_100048EE4(v34, v51);
  v55 = *(v31 + 2);

  if (v54 != v55)
  {
    v56 = v93;
    while (1)
    {
      if (v54 >= v55)
      {
        __break(1u);
LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
        goto LABEL_141;
      }

      v68 = *&v31[v48 + 56];
      v69 = *&v31[v48 + 64];
      if (v69 > 1)
      {
        if (v69 == 2)
        {
          if (v56 == 2)
          {
            goto LABEL_106;
          }

          goto LABEL_125;
        }

        if (v69 == 3)
        {
          if (v56 == 3)
          {
            goto LABEL_106;
          }

          goto LABEL_125;
        }
      }

      else
      {
        if (!v69)
        {
          if (!v56)
          {
            goto LABEL_106;
          }

          goto LABEL_125;
        }

        if (v69 == 1)
        {
          if (v56 == 1)
          {
            goto LABEL_106;
          }

          goto LABEL_125;
        }
      }

      if (v56 >= 4)
      {
        if (v68 == v34 && v69 == v56)
        {
          goto LABEL_106;
        }

        v70 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v56 = v93;
        if (v70)
        {
          goto LABEL_106;
        }
      }

LABEL_125:
      if (v54 != v49)
      {
        if (v49 >= v55)
        {
          goto LABEL_149;
        }

        v71 = &v31[24 * v49 + 32];
        v72 = v71[1];
        v73 = v71[2];
        v74 = *&v31[v48 + 72];
        v89 = *v71;
        sub_100048EE4(*v71, v72);

        sub_100048EE4(v68, v69);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = sub_1000ACA4C(v31);
        }

        v75 = &v31[24 * v49];
        v76 = *(v75 + 4);
        v77 = *(v75 + 5);
        *(v75 + 4) = v68;
        *(v75 + 5) = v69;
        *(v75 + 6) = v74;
        sub_10004AA5C(v76, v77);

        if (v54 >= *(v31 + 2))
        {
          goto LABEL_150;
        }

        v65 = &v31[v48];
        v66 = *&v31[v48 + 56];
        v67 = *&v31[v48 + 64];
        *(v65 + 7) = v89;
        *(v65 + 8) = v72;
        *(v65 + 9) = v73;
        sub_10004AA5C(v66, v67);

        v34 = v92;
        v56 = v93;
      }

      ++v49;
LABEL_106:
      ++v54;
      v55 = *(v31 + 2);
      v48 += 24;
      if (v54 == v55)
      {
        goto LABEL_88;
      }
    }
  }

  v56 = v93;
LABEL_88:
  sub_10004AA5C(v34, v56);

LABEL_91:
  v47 = *(v31 + 2);
  if (v47 < v49)
  {
    goto LABEL_151;
  }

  if (v49 < 0)
  {
    goto LABEL_152;
  }

LABEL_93:
  v57 = v49 - v47;
  if (__OFADD__(v47, v49 - v47))
  {
    goto LABEL_153;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v49 > *(v31 + 3) >> 1)
  {
    if (v47 <= v49)
    {
      v59 = v49;
    }

    else
    {
      v59 = v47;
    }

    v31 = sub_1000ABF50(isUniquelyReferenced_nonNull_native, v59, 1, v31);
  }

  v60 = &v31[24 * v49 + 32];
  swift_arrayDestroy();
  v61 = v47 == v49;
  v2 = v95;
  if (v61)
  {
LABEL_48:
    sub_10004AA5C(v34, v93);

    v29 = v85;
    v28 = v86;
    v30 = v87;
    goto LABEL_49;
  }

  memmove(v60, &v31[24 * v47 + 32], 24 * (*(v31 + 2) - v47));
  v62 = *(v31 + 2);
  v63 = __OFADD__(v62, v57);
  v64 = v62 + v57;
  if (!v63)
  {
    *(v31 + 2) = v64;
    goto LABEL_48;
  }

LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
}

uint64_t sub_100044B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100044BC4, v7, v6);
}

uint64_t sub_100044BC4()
{
  v3 = *(v0 + 24);

  swift_getKeyPath();
  *(swift_task_alloc() + 16) = v3;
  *(v0 + 16) = v3;
  sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager, &protocol conformance descriptor for CalculatorHistoryRecordManager);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100044CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_100044D14, 0, 0);
}

uint64_t sub_100044D14()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_100044DB0;
  v2 = *(v0 + 24);

  return sub_1000964C4(v2);
}

uint64_t sub_100044DB0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100044EA4()
{
  v1 = v0;
  v2 = sub_10003AE84(&qword_100154BB0, &qword_10010FAE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v13[-v3];
  swift_getKeyPath();
  v15 = v0;
  sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager, &protocol conformance descriptor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_beginAccess();
  if (*(*(v0 + 48) + 16))
  {
    if (qword_1001546E8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000048C8(v6, qword_100160D38);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Deleting all records from memory.", v9, 2u);
    }

    swift_getKeyPath();
    v14 = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v14 = v1;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    *(v1 + 48) = _swiftEmptyArrayStorage;

    swift_getKeyPath();
    v14 = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if ((*(v1 + 56) & 1) == 0)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *&v13[-16] = v1;
      v13[-8] = 1;
      v14 = v1;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    v14 = v1;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v1;

    sub_1000502A0(0, 0, v4, &unk_10010C368, v12);

    return sub_1000035CC(v4, &qword_100154BB0, &qword_10010FAE0);
  }

  return result;
}

uint64_t sub_1000452A4()
{
  v1 = type metadata accessor for SchemaV1.HistoryRecord(0);
  v2 = sub_100026874(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EBBC);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_10004538C;

  return sub_1000971B8(v1, v2);
}

uint64_t sub_10004538C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100045480()
{
  swift_getKeyPath();
  sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager, &protocol conformance descriptor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v1 = *(v0 + 48);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = *(v1 + 48);
  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

    return 0;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    return 0;
  }

LABEL_4:
  if ((v2 & 0xC000000000000001) != 0)
  {

    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    return v4;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v2 + 32);

    return v4;
  }

  __break(1u);
  return result;
}

id *CalculatorHistoryRecordManager.deinit()
{

  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC10Calculator30CalculatorHistoryRecordManager___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t CalculatorHistoryRecordManager.__deallocating_deinit()
{
  CalculatorHistoryRecordManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CalculatorHistoryRecordManager(uint64_t a1)
{
  result = qword_100154A40;
  if (!qword_100154A40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100045710(uint64_t a1)
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

uint64_t sub_100045810(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenericRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100045874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = type metadata accessor for Date();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  sub_10003AE84(&qword_100154BB0, &qword_10010FAE0);
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_10004596C, 0, 0);
}

uint64_t sub_10004596C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v0[12] = *(Strong + 24);

    v2 = swift_task_alloc();
    v0[13] = v2;
    *v2 = v0;
    v2[1] = sub_100045A74;

    return sub_1000945D8();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_100045A74(uint64_t a1)
{
  *(*v1 + 112) = a1;

  return _swift_task_switch(sub_100045B94, 0, 0);
}

uint64_t sub_100045B94()
{
  result = v0[14];
  v28 = *(result + 16);
  if (!v28)
  {

    v3 = _swiftEmptyArrayStorage;
    goto LABEL_41;
  }

  v2 = 0;
  v27 = (v0[8] + 8);
  v3 = _swiftEmptyArrayStorage;
  v26 = v0[14];
  while (1)
  {
    if (v2 >= *(result + 16))
    {
      __break(1u);
      goto LABEL_45;
    }

    v5 = v0[9];
    v6 = v0[7];
    type metadata accessor for SchemaV1.HistoryRecord(0);
    swift_allocObject();

    sub_100079954(v7);
    v9 = v8;
    v0[5] = v8;
    swift_getKeyPath();
    sub_100026874(&qword_100154BC0, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EB38);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    sub_100026874(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EBBC);
    sub_100026874(&qword_100154BD0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    PersistentModel.getValue<A>(forKey:)();

    v10 = sub_10006C894();
    v12 = v11;
    (*v27)(v5, v6);
    v13 = *(v3 + 2);
    if (v13)
    {
      break;
    }

LABEL_28:
    sub_10003AE84(&qword_100154BD8, &qword_10010BFB0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_10010BDF0;
    *(v17 + 32) = v9;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1000ABF50(0, *(v3 + 2) + 1, 1, v3);
    }

    v19 = *(v3 + 2);
    v18 = *(v3 + 3);
    if (v19 >= v18 >> 1)
    {
      v3 = sub_1000ABF50((v18 > 1), v19 + 1, 1, v3);
    }

    *(v3 + 2) = v19 + 1;
    v4 = &v3[24 * v19];
    *(v4 + 4) = v10;
    *(v4 + 5) = v12;
    *(v4 + 6) = v17;
LABEL_4:
    ++v2;
    result = v26;
    if (v2 == v28)
    {

LABEL_41:
      v21 = v0[10];
      v20 = v0[11];
      v22 = type metadata accessor for TaskPriority();
      (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
      type metadata accessor for MainActor();

      v23 = static MainActor.shared.getter();
      v24 = swift_allocObject();
      v24[2] = v23;
      v24[3] = &protocol witness table for MainActor;
      v24[4] = v20;
      v24[5] = v3;
      sub_100050560(0, 0, v21, &unk_10010C108, v24);

      v25 = v0[1];

      return v25();
    }
  }

  v14 = 24 * v13 + 24;
  while (1)
  {
    v15 = *&v3[v14 - 8];
    if (v15 > 1)
    {
      break;
    }

    if (v15)
    {
      if (v15 != 1)
      {
        goto LABEL_19;
      }

      if (v12 == 1)
      {
        goto LABEL_33;
      }
    }

    else if (!v12)
    {
      goto LABEL_33;
    }

LABEL_9:
    v14 -= 24;
    if (!--v13)
    {
      goto LABEL_28;
    }
  }

  if (v15 == 2)
  {
    if (v12 == 2)
    {
      goto LABEL_33;
    }

    goto LABEL_9;
  }

  if (v15 == 3)
  {
    if (v12 == 3)
    {
      goto LABEL_33;
    }

    goto LABEL_9;
  }

LABEL_19:
  if (v12 < 4)
  {
    goto LABEL_9;
  }

  v16 = *&v3[v14 - 16] == v10 && v15 == v12;
  if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_10004AA5C(v10, v12);
LABEL_33:

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000ACA4C(v3);
    v3 = result;
  }

  if (v13 <= *(v3 + 2))
  {
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*&v3[v14] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v3[v14] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    goto LABEL_4;
  }

LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_1000460A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  type metadata accessor for MainActor();
  v5[11] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10004613C, v7, v6);
}

uint64_t sub_10004613C()
{
  v19 = *(v0 + 72);
  swift_getKeyPath();
  *(swift_task_alloc() + 16) = v19;
  v1 = v19;
  *(v0 + 16) = v19;
  v2 = OBJC_IVAR____TtC10Calculator30CalculatorHistoryRecordManager___observationRegistrar;
  sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager, &protocol conformance descriptor for CalculatorHistoryRecordManager);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_getKeyPath();
  *(v0 + 16) = v19;
  v20 = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v3 = *(v1 + 32);
  if (v3 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_6;
    }
  }

  else if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_6;
  }

  sub_10004667C();
  v4 = [objc_opt_self() defaultCenter];
  if (qword_1001544C8 != -1)
  {
    swift_once();
  }

  [v4 postNotificationName:qword_100160AF0 object:{0, v2}];

LABEL_6:
  v5 = *(v0 + 72);
  if (*(v5 + 40) == 1)
  {

    *(v5 + 40) = 1;
  }

  else
  {
    swift_getKeyPath();
    v6 = swift_task_alloc();
    *(v6 + 16) = v5;
    *(v6 + 24) = 1;
    *(v0 + 40) = v5;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (qword_1001546F8 != -1)
  {
    swift_once();
  }

  v7 = qword_100160D68;
  v8 = String._bridgeToObjectiveC()();
  LODWORD(v7) = [v7 BOOLForKey:v8];

  if (v7)
  {
    v9 = *(v0 + 72);
    swift_getKeyPath();
    *(v0 + 40) = v9;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    if (*(*(v9 + 48) + 16))
    {
      if (qword_1001546E8 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      sub_1000048C8(v10, qword_100160D38);

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.debug.getter();
      v13 = os_log_type_enabled(v11, v12);
      v14 = *(v0 + 72);
      if (v13)
      {
        v15 = swift_slowAlloc();
        *v15 = 134217984;
        swift_getKeyPath();
        *(v0 + 64) = v14;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        *(v15 + 4) = *(*(v9 + 48) + 16);

        _os_log_impl(&_mh_execute_header, v11, v12, "loadRecords - filteredRecords: %ld", v15, 0xCu);
      }

      else
      {
      }

      v16 = [objc_opt_self() defaultCenter];
      if (qword_1001544D0 != -1)
      {
        swift_once();
      }

      [v16 postNotificationName:qword_100160AF8 object:{0, v20}];
    }
  }

  v17 = *(v0 + 8);

  return v17();
}

double sub_10004667C()
{
  v1 = v0;
  if (qword_1001546E8 != -1)
  {
    goto LABEL_33;
  }

LABEL_2:
  v2 = type metadata accessor for Logger();
  sub_1000048C8(v2, qword_100160D38);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v30 = v4;
    log = v3;
    v5 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v35 = v28;
    buf = v5;
    *v5 = 136315138;
    swift_getKeyPath();
    v36 = v1;
    sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager, &protocol conformance descriptor for CalculatorHistoryRecordManager);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    v6 = v1[4];
    if (!(v6 >> 62))
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_5;
    }

    goto LABEL_37;
  }

  while (1)
  {
    swift_getKeyPath();
    v21 = OBJC_IVAR____TtC10Calculator30CalculatorHistoryRecordManager___observationRegistrar;
    v36 = v1;
    sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager, &protocol conformance descriptor for CalculatorHistoryRecordManager);
    v6 = v1 + v21;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    v22 = v1[4];
    if (v22 >> 62)
    {
      v23 = _CocoaArrayWrapper.endIndex.getter();
      if (!v23)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v23)
      {
        goto LABEL_30;
      }
    }

    if (v23 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_37:
    v7 = _CocoaArrayWrapper.endIndex.getter();
LABEL_5:
    v27 = v1;

    if (v7)
    {
      v8 = 0;
      v33 = v6 & 0xFFFFFFFFFFFFFF8;
      v34 = v6 & 0xC000000000000001;
      v9 = _swiftEmptyArrayStorage;
      v32 = v6;
      do
      {
        if (v34)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v11 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            goto LABEL_31;
          }
        }

        else
        {
          if (v8 >= *(v33 + 16))
          {
            goto LABEL_32;
          }

          v10 = *(v6 + 8 * v8 + 32);

          v11 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
LABEL_33:
            swift_once();
            goto LABEL_2;
          }
        }

        v36 = v10;
        v1 = &unk_10010BFE0;
        swift_getKeyPath();
        sub_100026874(&qword_100154BC0, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EB38);

        ObservationRegistrar.access<A, B>(_:keyPath:)();

        swift_getKeyPath();
        sub_100026874(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EBBC);
        PersistentModel.getValue<A>(forKey:)();

        v12 = v36;
        v13 = v37;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1000AC070(0, *(v9 + 2) + 1, 1, v9);
        }

        v15 = *(v9 + 2);
        v14 = *(v9 + 3);
        if (v15 >= v14 >> 1)
        {
          v9 = sub_1000AC070((v14 > 1), v15 + 1, 1, v9);
        }

        *(v9 + 2) = v15 + 1;
        v16 = &v9[16 * v15];
        *(v16 + 4) = v12;
        *(v16 + 5) = v13;
        ++v8;
        v6 = v32;
      }

      while (v11 != v7);
    }

    v17 = Array.description.getter();
    v19 = v18;

    v20 = sub_100006E5C(v17, v19, &v35);

    *(buf + 4) = v20;
    _os_log_impl(&_mh_execute_header, log, v30, "Adding pending records performed before record manager initialization: %s", buf, 0xCu);
    sub_100003F80(v28);

    v1 = v27;
  }

  for (i = 0; i != v23; ++i)
  {
    if ((v22 & 0xC000000000000001) != 0)
    {
      v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v25 = *(v22 + 8 * i + 32);
    }

    sub_1000414A4(v25);
  }

LABEL_30:
  swift_getKeyPath();
  v35 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v35 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v1[4] = _swiftEmptyArrayStorage;

  v35 = v1;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  return result;
}

id sub_100046CA8(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager, &protocol conformance descriptor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v1 + 64);
  swift_getKeyPath();
  sub_100026874(&qword_100154BC0, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EB38);
  v5 = v4;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100026874(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EBBC);
  PersistentModel.getValue<A>(forKey:)();

  v6 = String._bridgeToObjectiveC()();

  v7 = [v5 objectForKey:v6];

  if (!v7)
  {
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    PersistentModel.getValue<A>(forKey:)();

    v8 = sub_100008E44(_swiftEmptyArrayStorage);
    v7 = sub_100080868(a1, v13, v8);

    if (qword_100154728 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    sub_100026874(&qword_100154C00, type metadata accessor for AppSettings, &unk_100115710);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    CalculateExpression.allowsArabicMath.setter();
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v9 = *(v2 + 64);
    swift_getKeyPath();
    v10 = v9;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    PersistentModel.getValue<A>(forKey:)();

    v11 = String._bridgeToObjectiveC()();

    [v10 setObject:v7 forKey:v11];

    swift_getKeyPath();

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    swift_beginAccess();
    sub_10004F4C4(&v14, v7);
    swift_endAccess();

    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();
  }

  return v7;
}

id sub_100047188(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager, &protocol conformance descriptor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v1 + 72);
  swift_getKeyPath();
  sub_100026874(&qword_100154BC0, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EB38);
  v5 = v4;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100026874(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EBBC);
  PersistentModel.getValue<A>(forKey:)();

  v6 = String._bridgeToObjectiveC()();

  v7 = [v5 objectForKey:v6];

  if (!v7)
  {
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    PersistentModel.getValue<A>(forKey:)();

    v8 = sub_100008E44(_swiftEmptyArrayStorage);
    v7 = sub_100080868(a1, v13, v8);

    if (qword_100154728 != -1)
    {
      swift_once();
    }

    sub_1000F5FFC();
    CalculateExpression.numberFormatter.setter();
    swift_getKeyPath();
    sub_100026874(&qword_100154C00, type metadata accessor for AppSettings, &unk_100115710);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    CalculateExpression.allowsArabicMath.setter();
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v9 = *(v2 + 72);
    swift_getKeyPath();
    v10 = v9;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    PersistentModel.getValue<A>(forKey:)();

    v11 = String._bridgeToObjectiveC()();

    [v10 setObject:v7 forKey:v11];

    swift_getKeyPath();

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    swift_beginAccess();
    sub_10004F4C4(&v14, v7);
    swift_endAccess();

    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();
  }

  return v7;
}

void sub_100047678(uint64_t a1, char a2)
{
  v4 = 0;
  v5 = sub_10003AE84(&qword_100154BB0, &qword_10010FAE0);
  __chkstk_darwin(v5 - 8);
  v94 = &v83 - v6;
  v93 = type metadata accessor for GenericRecord(0);
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v90 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = v7;
  __chkstk_darwin(v8);
  v89 = &v83 - v9;
  v10 = (a1 >> 62);
  if ((a2 & 1) == 0)
  {
    goto LABEL_5;
  }

  j = swift_allocObject();
  *(j + 16) = 0;
  if (v10)
  {
    goto LABEL_168;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v13 = [objc_opt_self() defaultCenter];
    type metadata accessor for ModelContext();
    v14 = static ModelContext.didSave.getter();
    v15 = [objc_opt_self() mainQueue];
    v16 = swift_allocObject();
    v17 = v95;
    swift_weakInit();
    v18 = swift_allocObject();
    v18[2] = v16;
    v18[3] = j;
    v18[4] = i;
    v115 = sub_10004B5B8;
    v116 = v18;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v113 = sub_10005628C;
    v114 = &unk_100149E38;
    v19 = _Block_copy(&aBlock);

    v20 = [v13 addObserverForName:v14 object:0 queue:v15 usingBlock:v19];
    _Block_release(v19);

    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v83 - 2) = v17;
    *(&v83 - 1) = v20;
    *&aBlock = v17;
    sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager, &protocol conformance descriptor for CalculatorHistoryRecordManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    swift_unknownObjectRelease();
LABEL_5:
    if (v10)
    {
      goto LABEL_14;
    }

    for (j = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); j >= 1; j = _CocoaArrayWrapper.endIndex.getter())
    {
      v22 = 0;
      v23 = 0;
      while (1)
      {
        v24 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        v25 = __OFADD__(v23, 1000);
        v23 += 1000;
        if (v25)
        {
          v23 = 0x7FFFFFFFFFFFFFFFLL;
        }

        ++v22;
        if (v23 >= j)
        {
          v84 = v4;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_14:
      ;
    }

    v84 = v4;
    v24 = 0;
LABEL_16:
    *&aBlock = _swiftEmptyArrayStorage;
    sub_1000ACC50(0, v24 & ~(v24 >> 63), 0);
    if (v24 < 0)
    {
      goto LABEL_167;
    }

    v26 = aBlock;
    v111 = v10;
    v109 = j;
    if (!v24)
    {
      v4 = 0;
LABEL_21:
      v28 = v109;
      if (v4 < v109)
      {
        if (a1 < 0)
        {
          v29 = a1;
        }

        else
        {
          v29 = a1 & 0xFFFFFFFFFFFFFF8;
        }

        v107 = v4;
        v108 = a1 & 0xC000000000000001;
        v110 = a1 & 0xFFFFFFFFFFFFFF8;
        v105 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
        v106 = v29;
        v30 = v4;
        while (1)
        {
          v31 = v30 + 1000;
          if (__OFADD__(v30, 1000))
          {
            __break(1u);
            goto LABEL_170;
          }

          v88 = v26;
          if (v10)
          {
            v34 = _CocoaArrayWrapper.endIndex.getter();
            if (v34 >= v31)
            {
              v33 = v30 + 1000;
            }

            else
            {
              v33 = v34;
            }

            if (v33 < v30)
            {
              goto LABEL_156;
            }

            v32 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v32 = *(v110 + 16);
            if (v32 >= v31)
            {
              v33 = v30 + 1000;
            }

            else
            {
              v33 = *(v110 + 16);
            }

            if (v33 < v30)
            {
              goto LABEL_156;
            }
          }

          if (v32 < v30)
          {
            goto LABEL_157;
          }

          if (v4 < 0)
          {
            goto LABEL_158;
          }

          if (v10)
          {
            v35 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v35 = *(v110 + 16);
          }

          if (v35 < v33)
          {
            goto LABEL_159;
          }

          if (v33 < 0)
          {
            goto LABEL_160;
          }

          if (!v108 || v30 == v33)
          {

            if (!v10)
            {
              goto LABEL_51;
            }
          }

          else
          {
            if (v30 >= v33)
            {
              goto LABEL_165;
            }

            v4 = type metadata accessor for SchemaV1.HistoryRecord(0);

            v36 = v30;
            do
            {
              v37 = v36 + 1;
              _ArrayBuffer._typeCheckSlowPath(_:)(v36);
              v36 = v37;
            }

            while (v33 != v37);
            if (!v10)
            {
LABEL_51:
              v38 = (2 * v33) | 1;
              j = v105;
              goto LABEL_52;
            }
          }

          _CocoaArrayWrapper.subscript.getter();
          j = v45;
          v30 = v43;
          v38 = v44;
          if ((v44 & 1) == 0)
          {
            v10 = (v44 >> 1);
            v41 = (v44 >> 1) - v43;
            if (__OFSUB__(v44 >> 1, v43))
            {
              goto LABEL_164;
            }

            if (v41)
            {
              goto LABEL_62;
            }

LABEL_70:
            v42 = _swiftEmptyArrayStorage;
LABEL_71:
            v10 = v111;
LABEL_72:
            swift_unknownObjectRelease();
            goto LABEL_73;
          }

LABEL_52:
          v4 = type metadata accessor for __ContiguousArrayStorageBase();
          swift_unknownObjectRetain_n();
          v39 = swift_dynamicCastClass();
          if (!v39)
          {
            swift_unknownObjectRelease();
            v39 = _swiftEmptyArrayStorage;
          }

          v40 = v39[2];

          v10 = (v38 >> 1);
          v41 = (v38 >> 1) - v30;
          if (__OFSUB__(v38 >> 1, v30))
          {
            goto LABEL_166;
          }

          if (v40 != v41)
          {
            swift_unknownObjectRelease();
            v28 = v109;
            if (!v41)
            {
              goto LABEL_70;
            }

LABEL_62:
            if (v41 < 1)
            {
              v42 = _swiftEmptyArrayStorage;
              if (v30 == v10)
              {
                goto LABEL_171;
              }
            }

            else
            {
              sub_10003AE84(&qword_100154BD8, &qword_10010BFB0);
              v42 = swift_allocObject();
              v46 = j__malloc_size(v42);
              v47 = v46 - 32;
              if (v46 < 32)
              {
                v47 = v46 - 25;
              }

              v42[2] = v41;
              v42[3] = (2 * (v47 >> 3)) | 1;
              if (v30 == v10)
              {
                goto LABEL_171;
              }
            }

            type metadata accessor for SchemaV1.HistoryRecord(0);
            swift_arrayInitWithCopy();
            goto LABEL_71;
          }

          v42 = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          v10 = v111;
          v28 = v109;
          if (!v42)
          {
            v42 = _swiftEmptyArrayStorage;
            goto LABEL_72;
          }

LABEL_73:
          v26 = v88;
          *&aBlock = v88;
          v49 = *(v88 + 16);
          v48 = *(v88 + 24);
          j = v49 + 1;
          if (v49 >= v48 >> 1)
          {
            sub_1000ACC50((v48 > 1), v49 + 1, 1);
            v26 = aBlock;
          }

          *(v26 + 16) = j;
          *(v26 + 8 * v49 + 32) = v42;
          v30 = v31;
          v4 = v107;
          if (v31 >= v28)
          {
            goto LABEL_78;
          }
        }
      }

      j = *(v26 + 16);
      if (!j)
      {
LABEL_92:

        return;
      }

LABEL_78:
      v50 = 0;
      v86 = v26 + 32;
      v88 = v26;
      v85 = j;
      while (1)
      {
        if (v50 >= *(v26 + 16))
        {
          __break(1u);
LABEL_149:
          __break(1u);
          goto LABEL_150;
        }

        v51 = *(v86 + 8 * v50);
        if (v51 >> 62)
        {
          v63 = _CocoaArrayWrapper.endIndex.getter();
          v26 = v88;
          v52 = v63;
          if (!v63)
          {
            goto LABEL_80;
          }
        }

        else
        {
          v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v52)
          {
            goto LABEL_80;
          }
        }

        if (v52 < 1)
        {
          goto LABEL_155;
        }

        v87 = v50;
        v96 = v51 & 0xC000000000000001;

        v4 = 0;
        v98 = v51;
        v97 = v52;
        do
        {
          if (v96)
          {
            v53 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v53 = *(v51 + 8 * v4 + 32);
          }

          ++v4;
          *&aBlock = v53;
          swift_getKeyPath();
          sub_100026874(&qword_100154BC0, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EB38);
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          swift_getKeyPath();
          sub_100026874(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EBBC);
          PersistentModel.getValue<A>(forKey:)();

          v110 = *(&aBlock + 1);
          v111 = aBlock;
          *&aBlock = v53;
          swift_getKeyPath();
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          swift_getKeyPath();
          PersistentModel.getValue<A>(forKey:)();

          v108 = *(&aBlock + 1);
          v109 = aBlock;
          *&aBlock = v53;
          swift_getKeyPath();
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          swift_getKeyPath();
          PersistentModel.getValue<A>(forKey:)();

          LODWORD(v107) = aBlock;
          *&aBlock = v53;
          swift_getKeyPath();
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          swift_getKeyPath();
          PersistentModel.getValue<A>(forKey:)();

          LODWORD(v106) = aBlock;
          *&aBlock = v53;
          swift_getKeyPath();
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          swift_getKeyPath();
          PersistentModel.getValue<A>(forKey:)();

          LODWORD(v105) = aBlock;
          *&aBlock = v53;
          swift_getKeyPath();
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          swift_getKeyPath();
          PersistentModel.getValue<A>(forKey:)();

          v103 = *(&aBlock + 1);
          v104 = aBlock;
          *&aBlock = v53;
          swift_getKeyPath();
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          swift_getKeyPath();
          PersistentModel.getValue<A>(forKey:)();

          v101 = *(&aBlock + 1);
          v102 = aBlock;
          *&aBlock = v53;
          swift_getKeyPath();
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          swift_getKeyPath();
          sub_10004B3E8();
          PersistentModel.getValue<A>(forKey:)();

          v100 = aBlock;
          *&aBlock = v53;
          v10 = &unk_10010C300;
          swift_getKeyPath();
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          swift_getKeyPath();
          PersistentModel.getValue<A>(forKey:)();

          v99 = aBlock;
          *&aBlock = v53;
          swift_getKeyPath();
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          swift_getKeyPath();
          sub_100026874(&qword_100154BD0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
          a1 = v89;
          PersistentModel.getValue<A>(forKey:)();

          v54 = v110;
          *a1 = v111;
          *(a1 + 8) = v54;
          v55 = v108;
          *(a1 + 16) = v109;
          *(a1 + 24) = v55;
          *(a1 + 32) = v107;
          *(a1 + 33) = v106;
          *(a1 + 34) = v105;
          v56 = v103;
          *(a1 + 40) = v104;
          *(a1 + 48) = v56;
          v57 = v101;
          *(a1 + 56) = v102;
          *(a1 + 64) = v57;
          *(a1 + 88) = v99;
          *(a1 + 72) = v100;
          v58 = type metadata accessor for TaskPriority();
          v59 = v94;
          (*(*(v58 - 8) + 56))(v94, 1, 1, v58);
          v60 = v90;
          sub_100045810(a1, v90);
          v61 = (*(v92 + 80) + 40) & ~*(v92 + 80);
          v62 = swift_allocObject();
          v62[2] = 0;
          v62[3] = 0;
          v62[4] = v95;
          sub_100048D28(v60, v62 + v61);

          sub_1000502A0(0, 0, v59, &unk_10010C328, v62);

          sub_1000035CC(v59, &qword_100154BB0, &qword_10010FAE0);
          sub_10004B55C(a1);
          v51 = v98;
        }

        while (v97 != v4);

        v26 = v88;
        j = v85;
        v50 = v87;
LABEL_80:
        if (++v50 == j)
        {
          goto LABEL_92;
        }
      }
    }

    v27 = a1 & 0xFFFFFFFFFFFFFF8;
    if (v10)
    {
      j = aBlock;
      v64 = _CocoaArrayWrapper.endIndex.getter();
      v26 = j;
      v108 = v64;
    }

    else
    {
      v108 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v65 = 0;
    v66 = 0;
    v106 = a1 & 0xFFFFFFFFFFFFFF8;
    v107 = a1 & 0xC000000000000001;
    v67 = a1 < 0 ? a1 : a1 & 0xFFFFFFFFFFFFFF8;
    v110 = v67;
    v105 = v27 + 32;
LABEL_98:
    if (v66 >= v109)
    {
      goto LABEL_149;
    }

    v4 = __OFADD__(v66, 1000) ? 0x7FFFFFFFFFFFFFFFLL : v66 + 1000;
    if (!__OFADD__(v66, 1000))
    {
      break;
    }

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
LABEL_167:
    __break(1u);
LABEL_168:
    ;
  }

  if (v108 >= v66 + 1000)
  {
    v68 = v66 + 1000;
  }

  else
  {
    v68 = v108;
  }

  if (v68 < v66)
  {
    goto LABEL_151;
  }

  v88 = v26;
  if (v10)
  {
    v69 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v69 = *(v27 + 16);
  }

  if (v69 < v66)
  {
    goto LABEL_152;
  }

  if (v66 < 0)
  {
    goto LABEL_153;
  }

  if (v10)
  {
    v70 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v70 = *(v27 + 16);
  }

  if (v70 < v68)
  {
    goto LABEL_154;
  }

  if (!v107 || v66 == v68)
  {

    if (!v10)
    {
      goto LABEL_122;
    }
  }

  else
  {
    if (v66 >= v68)
    {
      goto LABEL_162;
    }

    type metadata accessor for SchemaV1.HistoryRecord(0);

    v71 = v66;
    do
    {
      v72 = v71 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v71);
      v71 = v72;
    }

    while (v68 != v72);
    if (!v10)
    {
LABEL_122:
      j = v105;
      v10 = (((2 * v68) | 1uLL) >> 1);
      goto LABEL_123;
    }
  }

  _CocoaArrayWrapper.subscript.getter();
  j = v77;
  v66 = v76;
  v10 = (v78 >> 1);
  if ((v78 & 1) == 0)
  {
    v74 = v10 - v76;
    if (__OFSUB__(v10, v76))
    {
      goto LABEL_161;
    }

    if (v74)
    {
      goto LABEL_133;
    }

LABEL_141:
    v75 = _swiftEmptyArrayStorage;
    goto LABEL_142;
  }

LABEL_123:
  v104 = j;
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v73 = swift_dynamicCastClass();
  if (!v73)
  {
    swift_unknownObjectRelease();
    v73 = _swiftEmptyArrayStorage;
  }

  j = v73[2];

  v74 = v10 - v66;
  if (__OFSUB__(v10, v66))
  {
    goto LABEL_163;
  }

  if (j == v74)
  {
    v75 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    v10 = v111;
    if (!v75)
    {
      v75 = _swiftEmptyArrayStorage;
      goto LABEL_143;
    }

LABEL_144:
    v26 = v88;
    *&aBlock = v88;
    v82 = *(v88 + 16);
    v81 = *(v88 + 24);
    if (v82 >= v81 >> 1)
    {
      sub_1000ACC50((v81 > 1), v82 + 1, 1);
      v26 = aBlock;
    }

    ++v65;
    *(v26 + 16) = v82 + 1;
    *(v26 + 8 * v82 + 32) = v75;
    v66 = v4;
    v27 = v106;
    if (v65 == v24)
    {
      goto LABEL_21;
    }

    goto LABEL_98;
  }

  swift_unknownObjectRelease();
  j = v104;
  if (!v74)
  {
    goto LABEL_141;
  }

LABEL_133:
  if (v74 >= 1)
  {
    sub_10003AE84(&qword_100154BD8, &qword_10010BFB0);
    v75 = swift_allocObject();
    v79 = j__malloc_size(v75);
    v80 = v79 - 32;
    if (v79 < 32)
    {
      v80 = v79 - 25;
    }

    v75[2] = v74;
    v75[3] = (2 * (v80 >> 3)) | 1;
    if (v66 == v10)
    {
      goto LABEL_170;
    }

LABEL_139:
    type metadata accessor for SchemaV1.HistoryRecord(0);
    swift_arrayInitWithCopy();
LABEL_142:
    v10 = v111;
LABEL_143:
    swift_unknownObjectRelease();
    goto LABEL_144;
  }

  v75 = _swiftEmptyArrayStorage;
  if (v66 != v10)
  {
    goto LABEL_139;
  }

LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
}

double sub_100048890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_10003AE84(&qword_100154BB0, &qword_10010FAE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v26[-v7];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return result;
  }

  v11 = Strong;
  swift_beginAccess();
  v12 = *(a3 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  *(a3 + 16) = v14;
  if (qword_1001546E8 != -1)
  {
LABEL_13:
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_1000048C8(v15, qword_100160D38);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134218240;
    swift_beginAccess();
    *(v18 + 4) = *(a3 + 16);

    *(v18 + 12) = 2048;
    *(v18 + 14) = a4;
    _os_log_impl(&_mh_execute_header, v16, v17, "Saved %ld of %ld records", v18, 0x16u);
  }

  else
  {
  }

  swift_beginAccess();
  if (*(a3 + 16) == a4)
  {
    swift_beginAccess();
    *(a3 + 16) = 0;
    v19 = type metadata accessor for TaskPriority();
    (*(*(v19 - 8) + 56))(v8, 1, 1, v19);
    v20 = swift_allocObject();
    swift_weakInit();
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = v20;
    sub_1000502A0(0, 0, v8, &unk_10010C358, v21);

    sub_1000035CC(v8, &qword_100154BB0, &qword_10010FAE0);
    swift_getKeyPath();
    v27 = v11;
    sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager, &protocol conformance descriptor for CalculatorHistoryRecordManager);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v22 = *(v11 + 88);
    if (v22)
    {
      v23 = objc_opt_self();
      swift_unknownObjectRetain();
      v24 = [v23 defaultCenter];
      type metadata accessor for ModelContext();
      swift_unknownObjectRetain();
      v25 = static ModelContext.didSave.getter();
      [v24 removeObserver:v22 name:v25 object:0];

      swift_unknownObjectRelease_n();
    }
  }

  return result;
}

uint64_t sub_100048C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_100048C8C, 0, 0);
}

uint64_t sub_100048C8C()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_100044DB0;
  v2 = *(v0 + 24);

  return sub_100095308(v2);
}

uint64_t sub_100048D28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenericRecord(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100048D8C(uint64_t a1)
{
  v4 = *(type metadata accessor for GenericRecord(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100030DE0;

  return sub_100042448(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100048E84(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

double sub_100048EE4(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

void sub_100048EF8(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
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

uint64_t sub_100048F6C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_100048F9C(uint64_t a1)
{
  v2 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v2 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = __CocoaSet.contains(_:)();

    if (v5)
    {
      v6 = sub_1000492E8(v4, a1);

      return v6;
    }

    return 0;
  }

  type metadata accessor for CalculateExpression();
  sub_100026874(&qword_100154BF8, &type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  v8 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v9 = -1 << *(v2 + 32);
  v10 = v8 & ~v9;
  if (((*(v2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  sub_100026874(&qword_100154C08, &type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v10 = (v10 + 1) & v11;
    if (((*(v2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v1;
  v15 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100049648(&qword_100154C18, &qword_10010C0F8);
    v13 = v15;
  }

  v14 = *(*(v13 + 48) + 8 * v10);
  sub_10004A04C(v10);
  result = v14;
  *v1 = v15;
  return result;
}

uint64_t sub_1000491AC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1000494D8();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_10004A238(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_1000492E8(uint64_t a1, uint64_t a2)
{

  v3 = __CocoaSet.count.getter();
  v4 = swift_unknownObjectRetain();
  v5 = sub_10004A3FC(v4, v3);
  v12 = v5;
  type metadata accessor for CalculateExpression();
  sub_100026874(&qword_100154BF8, &type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);

  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    sub_100026874(&qword_100154C08, &type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
    while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v10 = *(*(v5 + 48) + 8 * v8);
  sub_10004A04C(v8);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    *v2 = v12;
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000494D8()
{
  v1 = v0;
  sub_10003AE84(&qword_100154C58, &qword_100113970);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_100049648(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_10003AE84(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 56 + 8 * v8)
    {
      memmove(v7, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        *(*(v6 + 48) + 8 * (v16 | (v10 << 6))) = *(*(v4 + 48) + 8 * (v16 | (v10 << 6)));
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_100049788()
{
  v1 = v0;
  sub_10003AE84(&qword_100154C60, &unk_10010C3C0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1000498C8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10003AE84(&qword_100154C18, &qword_10010C0F8);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v27 = v3;
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      type metadata accessor for CalculateExpression();
      sub_100026874(&qword_100154BF8, &type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
      v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v27;
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

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero(v7, ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_100049B5C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10003AE84(&qword_100154C50, &unk_10010C3A0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      type metadata accessor for SchemaV1.HistoryRecord(0);
      sub_100026874(&qword_100154C48, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EB7C);
      dispatch thunk of Hashable.hash(into:)();
      v18 = Hasher._finalize()();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
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

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_100049DFC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10003AE84(&qword_100154C60, &unk_10010C3C0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v17);
      v18 = Hasher._finalize()();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
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

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_10004A04C(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      type metadata accessor for CalculateExpression();
      sub_100026874(&qword_100154BF8, &type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
      do
      {
        v10 = dispatch thunk of Hashable._rawHashValue(seed:)() & v7;
        if (v2 >= v9)
        {
          if (v10 >= v9 && v2 >= v10)
          {
LABEL_16:
            v13 = *(v3 + 48);
            v14 = (v13 + 8 * v2);
            v15 = (v13 + 8 * v6);
            if (v2 != v6 || v14 >= v15 + 1)
            {
              *v14 = *v15;
              v2 = v6;
            }
          }
        }

        else if (v10 >= v9 || v2 >= v10)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }
}

void sub_10004A238(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v10 = Hasher._finalize()();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }
}

uint64_t sub_10004A3FC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10003AE84(&qword_100154C18, &qword_10010C0F8);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for CalculateExpression();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1000498C8(v9 + 1);
        }

        v2 = v15;
        sub_100026874(&qword_100154BF8, &type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_10004A630(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10003AE84(&qword_100154C50, &unk_10010C3A0);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for SchemaV1.HistoryRecord(0);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_100049B5C(v9 + 1);
        }

        v2 = v15;
        Hasher.init(_seed:)();
        sub_100026874(&qword_100154C48, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EB7C);
        dispatch thunk of Hashable.hash(into:)();
        result = Hasher._finalize()();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

unint64_t sub_10004A874(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CalculateExpression();
  sub_100026874(&qword_100154BF8, &type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  dispatch thunk of Hashable._rawHashValue(seed:)();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_10004A95C(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for SchemaV1.HistoryRecord(0);
  sub_100026874(&qword_100154C48, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EB7C);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._finalize()();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_10004AA5C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

void sub_10004AA70(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = (a2 & 0xFFFFFFFFFFFFFF8);
      }

_$ss10__CocoaSetV7isEqual2toSbAB_tF:
      __CocoaSet.isEqual(to:)(v5, v4);
      return;
    }

    v8 = v4;
    v7 = a2;
    goto LABEL_17;
  }

  if (v3)
  {
    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
LABEL_17:

    sub_10004AF1C(v8, v7);
    return;
  }

  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v9 = a1 + 56;
    v10 = 1 << *(a1 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(a1 + 56);
    type metadata accessor for CalculateExpression();
    v13 = 0;
    v14 = (v10 + 63) >> 6;
    v15 = a2 + 56;
    v5 = &qword_100154BF8;
    if (!v12)
    {
LABEL_27:
      v16 = v13;
      while (1)
      {
        v13 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v13 >= v14)
        {
          return;
        }

        v17 = *(v9 + 8 * v13);
        ++v16;
        if (v17)
        {
          v22 = (v17 - 1) & v17;
          goto LABEL_32;
        }
      }

      __break(1u);
      goto _$ss10__CocoaSetV7isEqual2toSbAB_tF;
    }

    while (1)
    {
      v22 = (v12 - 1) & v12;
LABEL_32:
      sub_100026874(&qword_100154BF8, &type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);

      v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v19 = -1 << *(a2 + 32);
      v20 = v18 & ~v19;
      if (((*(v15 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        break;
      }

      v21 = ~v19;
      sub_100026874(&qword_100154C08, &type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
      while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
      {
        v20 = (v20 + 1) & v21;
        if (((*(v15 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      v14 = (v10 + 63) >> 6;
      v12 = v22;
      v5 = &qword_100154BF8;
      if (!v22)
      {
        goto LABEL_27;
      }
    }

LABEL_40:
  }
}

uint64_t sub_10004AD64(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v16 = Hasher._finalize()();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

void sub_10004AF1C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == __CocoaSet.count.getter())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v7 &= v7 - 1;
LABEL_12:

      v11 = __CocoaSet.contains(_:)();

      if ((v11 & 1) == 0)
      {
        return;
      }
    }

    v9 = v4;
    while (1)
    {
      v4 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v10 = *(a2 + 56 + 8 * v4);
      ++v9;
      if (v10)
      {
        v7 = (v10 - 1) & v10;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_10004B064(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100030DE0;

  return sub_100045874(a1, v4, v5, v6);
}

void sub_10004B188()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 72);
  *(v1 + 72) = v2;
  v4 = v2;
}

void sub_10004B1C0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 64);
  *(v1 + 64) = v2;
  v4 = v2;
}

void sub_10004B1F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 96);
  *(v1 + 96) = v2;
  v4 = v2;
}

uint64_t sub_10004B230(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100030DE0;

  return sub_1000460A4(a1, v4, v5, v7, v6);
}

unint64_t sub_10004B2F0()
{
  result = qword_100154C30;
  if (!qword_100154C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100154C30);
  }

  return result;
}

uint64_t sub_10004B350(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_10004B398(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10004B3E8()
{
  result = qword_100154C38;
  if (!qword_100154C38)
  {
    sub_10003AECC(&qword_100154C40, &qword_10010CFA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100154C38);
  }

  return result;
}

uint64_t sub_10004B464(uint64_t a1)
{
  v4 = *(type metadata accessor for GenericRecord(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100030CEC;

  return sub_100048C6C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_10004B55C(uint64_t a1)
{
  v2 = type metadata accessor for GenericRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004B5DC(uint64_t a1, uint64_t a2)
{
  *(*(v2 + 16) + 88) = *(v2 + 24);
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_10004B618(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100030DE0;

  return sub_100045284(a1, v4, v5, v6);
}

unint64_t sub_10004B6D4(unint64_t a1, uint64_t a2)
{
  v11 = a2;
  if (a1 >> 62)
  {
LABEL_17:
    v10 = a1 & 0xFFFFFFFFFFFFFF8;
    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = a1 & 0xFFFFFFFFFFFFFF8;
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  while (1)
  {
    if (v13 == v3)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v3 >= *(v10 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v4 = *(a1 + 8 * v3 + 32);
    }

    v12 = v4;
    swift_getKeyPath();
    sub_100026874(&qword_100154BC0, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EB38);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    sub_100026874(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EBBC);
    PersistentModel.getValue<A>(forKey:)();

    __chkstk_darwin(v5);
    v9[2] = &v12;
    v6 = sub_1000ACAD8(sub_10004C3FC, v9, v11);

    if (v6)
    {
      return v3;
    }

    if (__OFADD__(v3++, 1))
    {
      goto LABEL_16;
    }
  }
}

void sub_10004B914(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for SchemaV1.HistoryRecord(0);
    sub_100026874(&qword_100154C48, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EB7C);
    Set.Iterator.init(_cocoa:)();
    v2 = v24;
    v3 = v25;
    v4 = v26;
    v5 = v27;
    v6 = v28;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v10 = _swiftEmptyArrayStorage;
  v23 = v2;
  if (v2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v11 = v5;
    v12 = v6;
    v13 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));

    if (!v15)
    {
LABEL_22:
      sub_10004B164(v23);
      return;
    }

    while (1)
    {
      v16 = a2(v15);
      v18 = v17;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_1000AC070(0, *(v10 + 2) + 1, 1, v10);
      }

      v20 = *(v10 + 2);
      v19 = *(v10 + 3);
      if (v20 >= v19 >> 1)
      {
        v10 = sub_1000AC070((v19 > 1), v20 + 1, 1, v10);
      }

      *(v10 + 2) = v20 + 1;
      v21 = &v10[16 * v20];
      *(v21 + 4) = v16;
      *(v21 + 5) = v18;
      v5 = v13;
      v6 = v14;
      v2 = v23;
      if ((v23 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for SchemaV1.HistoryRecord(0);
        swift_dynamicCast();
        v15 = v29;
        v13 = v5;
        v14 = v6;
        if (v29)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v4 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_10004BB9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100030DE0;

  return sub_100043FCC(a1, v4, v5, v7, v6);
}

uint64_t sub_10004BC5C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100030CEC;

  return sub_100044CF4(a1, v4, v5, v7, v6);
}

uint64_t sub_10004BD1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003AE84(&qword_100154BB0, &qword_10010FAE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004BD8C(unint64_t *a1, uint64_t a2)
{
  v6 = *a1;
  v7 = sub_10004B6D4(*a1, a2);
  v9 = v2;
  if (v2)
  {
    return v3;
  }

  if (v8)
  {
    if (v6 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = v7;
  v23 = a1;
  v24 = a2;
  v11 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  while (1)
  {
    if (v6 >> 62)
    {
      if (v11 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v3;
      }
    }

    else if (v11 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v3;
    }

    v26 = v6 & 0xC000000000000001;
    if ((v6 & 0xC000000000000001) != 0)
    {
      v13 = v9;
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_40;
      }

      if (v11 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v13 = v9;
      v14 = *(v6 + 8 * v11 + 32);
    }

    v25 = v14;
    swift_getKeyPath();
    sub_100026874(&qword_100154BC0, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EB38);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    sub_100026874(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EBBC);
    PersistentModel.getValue<A>(forKey:)();

    __chkstk_darwin(v15);
    v22[2] = &v25;
    v16 = sub_1000ACAD8(sub_10004C254, v22, v24);
    v9 = v13;

    if ((v16 & 1) == 0)
    {
      break;
    }

LABEL_10:
    v12 = __OFADD__(v11++, 1);
    if (v12)
    {
      goto LABEL_42;
    }
  }

  if (v3 == v11)
  {
LABEL_9:
    v12 = __OFADD__(v3++, 1);
    if (v12)
    {
      goto LABEL_43;
    }

    goto LABEL_10;
  }

  if (v26)
  {
    v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if ((v3 & 0x8000000000000000) != 0)
    {
      goto LABEL_45;
    }

    v19 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3 >= v19)
    {
      goto LABEL_46;
    }

    if (v11 >= v19)
    {
      goto LABEL_47;
    }

    v17 = *(v6 + 32 + 8 * v3);
    v18 = *(v6 + 32 + 8 * v11);
  }

  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    v6 = sub_1000AE630();
    v20 = (v6 >> 62) & 1;
  }

  else
  {
    LODWORD(v20) = 0;
  }

  v21 = v6 & 0xFFFFFFFFFFFFFF8;
  *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v3 + 0x20) = v18;

  if ((v6 & 0x8000000000000000) == 0 && !v20)
  {
    if ((v11 & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  v6 = sub_1000AE630();
  v21 = v6 & 0xFFFFFFFFFFFFFF8;
  if ((v11 & 0x8000000000000000) == 0)
  {
LABEL_33:
    if (v11 >= *(v21 + 16))
    {
      goto LABEL_44;
    }

    *(v21 + 8 * v11 + 32) = v17;

    *v23 = v6;
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

uint64_t sub_10004C118()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10004C160(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100030DE0;

  return sub_100044B2C(a1, v4, v5, v7, v6);
}

uint64_t sub_10004C270(uint64_t *a1)
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

uint64_t sub_10004C2C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100030DE0;

  return sub_100043874(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10004C418()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v2 = v0;
    type metadata accessor for CalculatorHistoryViewModel(0);
    v1 = swift_allocObject();
    sub_10004D670();
    *(v2 + 16) = v1;
  }

  return v1;
}

uint64_t sub_10004C48C()
{

  v1 = OBJC_IVAR____TtC10Calculator33CalculatorHistoryViewModelWrapper___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

double sub_10004C538()
{
  swift_getKeyPath();
  sub_10004EC38(&qword_100154E18, type metadata accessor for CalculatorHistoryViewModel, &unk_10010C4A4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  if (*(*(v0 + 24) + 16))
  {
    if (sub_10004C930())
    {

      sub_10004C788(v1);
    }
  }

  else
  {
    sub_10004C788(0);
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  *(v0 + 32) = (*(v0 + 32) & 1) == 0;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  return result;
}

double sub_10004C6D0()
{
  swift_getKeyPath();
  sub_10004EC38(&qword_100154E18, type metadata accessor for CalculatorHistoryViewModel, &unk_10010C4A4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();

  return result;
}

double sub_10004C788(uint64_t a1)
{
  v2 = v1;
  if (*(v1 + 40))
  {
    if (a1)
    {
      type metadata accessor for SchemaV1.HistoryRecord(0);
      sub_10004EC38(&qword_100154E20, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EB54);

      v4 = dispatch thunk of static Equatable.== infix(_:_:)();

      if (v4)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10004EC38(&qword_100154E18, type metadata accessor for CalculatorHistoryViewModel, &unk_10010C4A4);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return result;
  }

  if (a1)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v2 + 40) = a1;

  return result;
}

uint64_t sub_10004C930()
{
  v1 = v0;
  swift_getKeyPath();
  sub_10004EC38(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager, &protocol conformance descriptor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();

  v3 = sub_10004D3B4(v2);

  if (v3 >> 62)
  {
LABEL_26:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  swift_beginAccess();
  if (v4)
  {
    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v7 = __OFADD__(v5++, 1);
        if (v7)
        {
LABEL_21:
          __break(1u);
LABEL_22:

          return v6;
        }
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_26;
        }

        v6 = *(v3 + 32 + 8 * v5);

        v7 = __OFADD__(v5++, 1);
        if (v7)
        {
          goto LABEL_21;
        }
      }

      swift_getKeyPath();
      sub_10004EC38(&qword_100154E18, type metadata accessor for CalculatorHistoryViewModel, &unk_10010C4A4);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v8 = *(v1 + 24);
      swift_getKeyPath();
      sub_10004EC38(&qword_100154BC0, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EB38);

      ObservationRegistrar.access<A, B>(_:keyPath:)();

      swift_getKeyPath();
      sub_10004EC38(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EBBC);
      PersistentModel.getValue<A>(forKey:)();

      if (*(v8 + 16))
      {
        Hasher.init(_seed:)();
        String.hash(into:)();
        v9 = Hasher._finalize()();
        v10 = -1 << *(v8 + 32);
        v11 = v9 & ~v10;
        if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
        {
          v12 = ~v10;
          do
          {
            v13 = (*(v8 + 48) + 16 * v11);
            v14 = *v13 == v6 && v13[1] == v16;
            if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              goto LABEL_22;
            }

            v11 = (v11 + 1) & v12;
          }

          while (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
        }
      }
    }

    while (v5 != v4);
  }

  return 0;
}

double sub_10004CD10@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10004EC38(&qword_100154E18, type metadata accessor for CalculatorHistoryViewModel, &unk_10010C4A4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  *a2 = *(v3 + 24);

  return result;
}

void sub_10004CDFC(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_10004AD64(v3, a1);

  if (v4)
  {
    *(v1 + 24) = a1;

    sub_10004C538();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10004EC38(&qword_100154E18, type metadata accessor for CalculatorHistoryViewModel, &unk_10010C4A4);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void sub_10004CF48(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 24) = a2;

  sub_10004C538();
}

uint64_t sub_10004CFB8()
{
  swift_getKeyPath();
  sub_10004EC38(&qword_100154E18, type metadata accessor for CalculatorHistoryViewModel, &unk_10010C4A4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 32);
}

void sub_10004D058(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10004EC38(&qword_100154E18, type metadata accessor for CalculatorHistoryViewModel, &unk_10010C4A4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 32);
}

void sub_10004D128(char a1)
{
  if (*(v1 + 32) == (a1 & 1))
  {
    *(v1 + 32) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10004EC38(&qword_100154E18, type metadata accessor for CalculatorHistoryViewModel, &unk_10010C4A4);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

double sub_10004D238()
{
  swift_getKeyPath();
  sub_10004EC38(&qword_100154E18, type metadata accessor for CalculatorHistoryViewModel, &unk_10010C4A4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return result;
}

double sub_10004D2DC@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10004EC38(&qword_100154E18, type metadata accessor for CalculatorHistoryViewModel, &unk_10010C4A4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 40);

  return result;
}

uint64_t sub_10004D3B4(uint64_t a1)
{
  v27 = *(a1 + 16);
  if (!v27)
  {
    return _swiftEmptyArrayStorage;
  }

  v1 = 0;
  v26 = a1 + 32;
  v2 = _swiftEmptyArrayStorage;
  while (1)
  {
    v4 = *(v26 + 24 * v1 + 16);
    v5 = v4 >> 62;
    if (v4 >> 62)
    {
      v6 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = v2 >> 62;
    if (v2 >> 62)
    {
      v24 = _CocoaArrayWrapper.endIndex.getter();
      v9 = v24 + v6;
      if (__OFADD__(v24, v6))
      {
LABEL_33:
        __break(1u);
        return _swiftEmptyArrayStorage;
      }
    }

    else
    {
      v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v8 + v6;
      if (__OFADD__(v8, v6))
      {
        goto LABEL_33;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (!v7)
      {
        goto LABEL_16;
      }

LABEL_15:
      _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_16;
    }

    if (v7)
    {
      goto LABEL_15;
    }

    v10 = v2 & 0xFFFFFFFFFFFFFF8;
    if (v9 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v11 = v6;
      goto LABEL_17;
    }

LABEL_16:
    v11 = v6;
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v2 = result;
    v10 = result & 0xFFFFFFFFFFFFFF8;
LABEL_17:
    v12 = *(v10 + 16);
    v13 = *(v10 + 24);
    if (v5)
    {
      break;
    }

    v14 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_3;
    }

LABEL_21:
    if (((v13 >> 1) - v12) < v11)
    {
      goto LABEL_37;
    }

    v29 = v11;
    v16 = v10 + 8 * v12 + 32;
    v25 = v10;
    if (v5)
    {
      if (v14 < 1)
      {
        goto LABEL_39;
      }

      sub_100050040();
      for (i = 0; i != v14; ++i)
      {
        sub_10003AE84(&qword_100154E28, &unk_10010C590);
        v18 = sub_1000ADEB4(v28, i, v4);
        v20 = *v19;

        (v18)(v28, 0);
        *(v16 + 8 * i) = v20;
      }
    }

    else
    {
      type metadata accessor for SchemaV1.HistoryRecord(0);
      swift_arrayInitWithCopy();
    }

    if (v29 >= 1)
    {
      v21 = *(v25 + 16);
      v22 = __OFADD__(v21, v29);
      v23 = v21 + v29;
      if (v22)
      {
        goto LABEL_38;
      }

      *(v25 + 16) = v23;
    }

LABEL_4:
    if (++v1 == v27)
    {
      return v2;
    }
  }

  v15 = v10;
  result = _CocoaArrayWrapper.endIndex.getter();
  v10 = v15;
  v14 = result;
  if (result)
  {
    goto LABEL_21;
  }

LABEL_3:

  if (v11 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_10004D670()
{
  if (qword_100154370 != -1)
  {
    swift_once();
  }

  *(v0 + 16) = qword_100160878;
  *(v0 + 24) = &_swiftEmptySetSingleton;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  v1 = OBJC_IVAR____TtC10Calculator26CalculatorHistoryViewModel_historyViewOpenedAt;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);

  ObservationRegistrar.init()();
  v3 = objc_opt_self();
  v4 = [v3 defaultCenter];
  if (qword_1001544C8 != -1)
  {
    swift_once();
  }

  v5 = qword_100160AF0;
  v6 = objc_opt_self();
  v7 = [v6 mainQueue];
  v8 = swift_allocObject();
  swift_weakInit();
  v22 = sub_1000500C0;
  v23 = v8;
  v18 = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_10005628C;
  v21 = &unk_100149F78;
  v9 = _Block_copy(&v18);

  v10 = [v4 addObserverForName:v5 object:0 queue:v7 usingBlock:v9];
  _Block_release(v9);
  swift_unknownObjectRelease();

  v11 = [v3 defaultCenter];
  if (qword_1001544C0 != -1)
  {
    swift_once();
  }

  v12 = qword_100160AE8;
  v13 = [v6 mainQueue];
  v14 = swift_allocObject();
  swift_weakInit();

  v22 = sub_1000500D0;
  v23 = v14;
  v18 = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_10005628C;
  v21 = &unk_100149FA0;
  v15 = _Block_copy(&v18);

  v16 = [v11 addObserverForName:v12 object:0 queue:v13 usingBlock:v15];
  _Block_release(v15);
  swift_unknownObjectRelease();

  return v0;
}

void sub_10004DA0C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + 16);
    swift_getKeyPath();
    sub_10004EC38(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager, &protocol conformance descriptor for CalculatorHistoryRecordManager);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    v5 = *(v4 + 48);
    if (*(v5 + 16))
    {
      v6 = *(v5 + 48);
      if (v6 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_5;
        }
      }

      else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_5:
        if ((v6 & 0xC000000000000001) != 0)
        {

          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v7 = *(v6 + 32);
        }

        swift_getKeyPath();
        sub_10004EC38(&qword_100154BC0, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EB38);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        swift_getKeyPath();
        sub_10004EC38(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EBBC);
        PersistentModel.getValue<A>(forKey:)();

        sub_10003AE84(&qword_100154E38, &qword_100112400);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10010BDE0;
        *(inited + 32) = v7;
        v9 = inited + 32;
        *(inited + 40) = v11;
        v10 = sub_1000CF204(inited);
        swift_setDeallocating();
        sub_1000500D8(v9);
        sub_10004CDFC(v10);
        goto LABEL_11;
      }
    }

    swift_getKeyPath();
    sub_10004EC38(&qword_100154E18, type metadata accessor for CalculatorHistoryViewModel, &unk_10010C4A4);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    swift_beginAccess();
    *(v3 + 24) = &_swiftEmptySetSingleton;

    sub_10004C538();
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

LABEL_11:
  }
}

double sub_10004DDA8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_getKeyPath();
    sub_10004EC38(&qword_100154E18, type metadata accessor for CalculatorHistoryViewModel, &unk_10010C4A4);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    if (*(*(v4 + 24) + 16))
    {
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      swift_getKeyPath();
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();

      *(v4 + 24) = &_swiftEmptySetSingleton;

      sub_10004C538();
      swift_getKeyPath();
      ObservationRegistrar.didSet<A, B>(_:keyPath:)();
    }
  }

  return result;
}

uint64_t sub_10004DF4C()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  sub_10004E1C0(v0 + OBJC_IVAR____TtC10Calculator26CalculatorHistoryViewModel_historyViewOpenedAt);
  v2 = OBJC_IVAR____TtC10Calculator26CalculatorHistoryViewModel___observationRegistrar;
  v3 = type metadata accessor for ObservationRegistrar();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocClassInstance();
}

void sub_10004E070(uint64_t a1)
{
  sub_10004E168(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ObservationRegistrar();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10004E168(uint64_t a1)
{
  if (!qword_100154D68)
  {
    type metadata accessor for Date();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100154D68);
    }
  }
}

uint64_t sub_10004E1C0(uint64_t a1)
{
  v2 = sub_10003AE84(&qword_100154E10, &qword_10010C4C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004E228()
{
  swift_getKeyPath();
  sub_10004EC38(&qword_100154E18, type metadata accessor for CalculatorHistoryViewModel, &unk_10010C4A4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  if (*(*(v0 + 24) + 16) == 1)
  {
    return 0;
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v0 + 16);
  v3 = *(*(v0 + 24) + 16);
  swift_getKeyPath();
  sub_10004EC38(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager, &protocol conformance descriptor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_beginAccess();
  v4 = 0;
  v5 = *(v2 + 48);
  v6 = (v5 + 48);
  v7 = -*(v5 + 16);
  v8 = -1;
  while (1)
  {
    if (v7 + v8 == -1)
    {
      return v3 == v4;
    }

    if (++v8 >= *(v5 + 16))
    {
      break;
    }

    if (*v6 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      result = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 += 3;
    v9 = __OFADD__(v4, result);
    v4 += result;
    if (v9)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

double sub_10004E430(uint64_t a1)
{
  sub_100042504(a1);
  swift_getKeyPath();
  sub_10004EC38(&qword_100154BC0, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EB38);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10004EC38(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EBBC);
  PersistentModel.getValue<A>(forKey:)();

  swift_getKeyPath();
  sub_10004EC38(&qword_100154E18, type metadata accessor for CalculatorHistoryViewModel, &unk_10010C4A4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  sub_1000491AC(a1, v3);
  swift_endAccess();

  sub_10004C538();
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  return result;
}

double sub_10004E65C()
{
  swift_getKeyPath();
  sub_10004EC38(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager, &protocol conformance descriptor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();

  KeyPath = sub_10004D3B4(v1);

  if (KeyPath >> 62)
  {
LABEL_26:
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((KeyPath & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  swift_beginAccess();
  if (v3)
  {
    v4 = 0;
    v17 = KeyPath & 0xFFFFFFFFFFFFFF8;
    v18 = KeyPath & 0xC000000000000001;
    v16 = KeyPath + 32;
    do
    {
      if (v18)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v6 = __OFADD__(v4++, 1);
        if (v6)
        {
LABEL_23:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *(v17 + 16))
        {
          __break(1u);
          goto LABEL_26;
        }

        v5 = *(v16 + 8 * v4);

        v6 = __OFADD__(v4++, 1);
        if (v6)
        {
          goto LABEL_23;
        }
      }

      swift_getKeyPath();
      sub_10004EC38(&qword_100154E18, type metadata accessor for CalculatorHistoryViewModel, &unk_10010C4A4);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v7 = *(v0 + 24);
      swift_getKeyPath();
      sub_10004EC38(&qword_100154BC0, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EB38);

      ObservationRegistrar.access<A, B>(_:keyPath:)();

      KeyPath = swift_getKeyPath();
      sub_10004EC38(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EBBC);
      PersistentModel.getValue<A>(forKey:)();

      if (*(v7 + 16))
      {
        v8 = v3;
        Hasher.init(_seed:)();
        String.hash(into:)();
        v9 = Hasher._finalize()();
        v10 = -1 << *(v7 + 32);
        KeyPath = v9 & ~v10;
        if ((*(v7 + 56 + ((KeyPath >> 3) & 0xFFFFFFFFFFFFFF8)) >> KeyPath))
        {
          v11 = ~v10;
          while (1)
          {
            v12 = (*(v7 + 48) + 16 * KeyPath);
            v13 = *v12 == v5 && v12[1] == v19;
            if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            KeyPath = (KeyPath + 1) & v11;
            if (((*(v7 + 56 + ((KeyPath >> 3) & 0xFFFFFFFFFFFFFF8)) >> KeyPath) & 1) == 0)
            {
              goto LABEL_19;
            }
          }

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          KeyPath = _swiftEmptyArrayStorage[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v3 = v8;
        }

        else
        {
LABEL_19:

          v3 = v8;
        }
      }

      else
      {
      }
    }

    while (v4 != v3);
  }

  v14 = sub_10005012C(_swiftEmptyArrayStorage);

  sub_100043C88(v14);

  return sub_10004EAC8();
}

double sub_10004EAC8()
{
  swift_getKeyPath();
  sub_10004EC38(&qword_100154E18, type metadata accessor for CalculatorHistoryViewModel, &unk_10010C4A4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  *(v0 + 24) = &_swiftEmptySetSingleton;

  sub_10004C538();
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  return result;
}

void sub_10004EBFC()
{
  *(*(v0 + 16) + 40) = *(v0 + 24);
}

uint64_t sub_10004EC38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10004EC90()
{
  swift_getKeyPath();
  sub_10004EC38(&qword_100154E18, type metadata accessor for CalculatorHistoryViewModel, &unk_10010C4A4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  if (*(*(v0 + 24) + 16) > 1uLL)
  {
    return 10;
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(*(v0 + 24) + 16) == 1)
  {
    return 9;
  }

  else
  {
    return 11;
  }
}

void sub_10004EDAC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10003AE84(&qword_100154C18, &qword_10010C0F8);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v26 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v27 = (v10 - 1) & v10;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      type metadata accessor for CalculateExpression();
      sub_10004EC38(&qword_100154BF8, &type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);

      v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v26;
      v10 = v27;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v27 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_10004F024(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10003AE84(&qword_100154C50, &unk_10010C3A0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v26 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      type metadata accessor for SchemaV1.HistoryRecord(0);
      sub_10004EC38(&qword_100154C48, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EB7C);

      dispatch thunk of Hashable.hash(into:)();
      v18 = Hasher._finalize()();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v26;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_10004F2A4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10003AE84(&qword_100154C60, &unk_10010C3C0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v16);
      v17 = Hasher._finalize()();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

uint64_t sub_10004F4C4(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      type metadata accessor for CalculateExpression();
      swift_dynamicCast();
      result = 0;
      *a1 = v19;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_10004A3FC(v7, result + 1);
    v17 = *(v16 + 16);
    if (*(v16 + 24) <= v17)
    {
      sub_1000498C8(v17 + 1);
    }

    sub_10004A874(v18, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  type metadata accessor for CalculateExpression();
  sub_10004EC38(&qword_100154BF8, &type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;

    sub_10004FB10(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v20;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  sub_10004EC38(&qword_100154C08, &type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

uint64_t sub_10004F764(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      type metadata accessor for SchemaV1.HistoryRecord(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v19;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_10004A630(v7, result + 1);
    v17 = *(v16 + 16);
    if (*(v16 + 24) <= v17)
    {
      sub_100049B5C(v17 + 1);
    }

    sub_10004A95C(v18, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  type metadata accessor for SchemaV1.HistoryRecord(0);
  Hasher.init(_seed:)();
  sub_10004EC38(&qword_100154C48, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EB7C);
  dispatch thunk of Hashable.hash(into:)();
  v10 = Hasher._finalize()();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;

    sub_10004FCF8(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v20;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  sub_10004EC38(&qword_100154E20, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EB54);
  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

uint64_t sub_10004FA18(unsigned __int8 *a1, uint64_t a2)
{
  v3 = a2;
  v5 = *v2;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != v3)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_10004FEF4(v3, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = v3;
  return result;
}

void sub_10004FB10(uint64_t result, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1000498C8(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1000494C4();
      goto LABEL_12;
    }

    sub_10004EDAC(v6 + 1);
  }

  v8 = *v3;
  type metadata accessor for CalculateExpression();
  sub_10004EC38(&qword_100154BF8, &type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  v9 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_10004EC38(&qword_100154C08, &type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
    while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = result;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_10004FCF8(uint64_t result, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100049B5C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_100049634();
      goto LABEL_12;
    }

    sub_10004F024(v6 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  type metadata accessor for SchemaV1.HistoryRecord(0);
  sub_10004EC38(&qword_100154C48, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EB7C);
  dispatch thunk of Hashable.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_10004EC38(&qword_100154E20, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EB54);
    while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = result;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_10004FEF4(unsigned __int8 a1, unint64_t a2, char a3)
{
  v4 = a1;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100049DFC(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_100049788();
      a2 = v7;
      goto LABEL_12;
    }

    sub_10004F2A4(v5 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v4);
  v9 = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

unint64_t sub_100050040()
{
  result = qword_100154E30;
  if (!qword_100154E30)
  {
    sub_10003AECC(&qword_100154E28, &unk_10010C590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100154E30);
  }

  return result;
}

uint64_t sub_10005012C(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_18:
    _CocoaArrayWrapper.endIndex.getter();
  }

  type metadata accessor for SchemaV1.HistoryRecord(0);
  sub_10004EC38(&qword_100154C48, type metadata accessor for SchemaV1.HistoryRecord, &unk_10010EB7C);
  result = Set.init(minimumCapacity:)();
  v9 = result;
  if (!i)
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }

LABEL_6:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_14:
          __break(1u);
          return v9;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_18;
        }

        v6 = *(a1 + 8 * i + 32);

        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_14;
        }
      }

      sub_10004F764(&v8, v6);

      if (v7 == v4)
      {
        return v9;
      }
    }
  }

  v5 = result;
  v4 = _CocoaArrayWrapper.endIndex.getter();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_1000502A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10003AE84(&qword_100154BB0, &qword_10010FAE0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100008E68(a3, v25 - v10, &qword_100154BB0, &qword_10010FAE0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000035CC(v11, &qword_100154BB0, &qword_10010FAE0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100050560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10003AE84(&qword_100154BB0, &qword_10010FAE0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100008E68(a3, v25 - v10, &qword_100154BB0, &qword_10010FAE0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000035CC(v11, &qword_100154BB0, &qword_10010FAE0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1000035CC(a3, &qword_100154BB0, &qword_10010FAE0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000035CC(a3, &qword_100154BB0, &qword_10010FAE0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100050860()
{
  type metadata accessor for CalculatorCurrencyCacheProvider(0);
  v0 = swift_allocObject();
  result = sub_100051EA8();
  qword_100160888 = v0;
  return result;
}

uint64_t sub_1000508C4(uint64_t a1, uint64_t *a2)
{
  v4 = sub_10003AE84(&qword_100154F60, &qword_10010C620);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-v5];
  sub_100008E68(a1, &v9[-v5], &qword_100154F60, &qword_10010C620);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_100054468(&qword_100154F68, type metadata accessor for CalculatorCurrencyCacheProvider, &unk_10010C5F8);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_1000035CC(v6, &qword_100154F60, &qword_10010C620);
}

uint64_t sub_100050A28@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10003AE84(&qword_100154BB0, &qword_10010FAE0);
  __chkstk_darwin(v4 - 8);
  v6 = &v20[-v5];
  v7 = sub_10003AE84(&qword_100154F60, &qword_10010C620);
  __chkstk_darwin(v7 - 8);
  v9 = &v20[-v8];
  type metadata accessor for StocksKitCurrencyCache();
  if (static StocksKitCurrencyCache.isEnabled.getter())
  {
    swift_getKeyPath();
    v22 = v1;
    sub_100054468(&qword_100154F68, type metadata accessor for CalculatorCurrencyCacheProvider, &unk_10010C5F8);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v10 = OBJC_IVAR____TtC10Calculator31CalculatorCurrencyCacheProvider___provider;
    swift_beginAccess();
    sub_100008E68(v2 + v10, v9, &qword_100154F60, &qword_10010C620);
    v11 = type metadata accessor for StocksKitCurrencyCache.Provider();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v9, 1, v11) == 1)
    {
      sub_1000035CC(v9, &qword_100154F60, &qword_10010C620);
      swift_getKeyPath();
      v21 = v2;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if ((*(v2 + OBJC_IVAR____TtC10Calculator31CalculatorCurrencyCacheProvider__loadingProvider) & 1) == 0)
      {
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        *&v20[-16] = v2;
        v20[-8] = 1;
        v21 = v2;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

        v14 = type metadata accessor for TaskPriority();
        (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
        v15 = swift_allocObject();
        swift_weakInit();
        v16 = swift_allocObject();
        v16[2] = 0;
        v16[3] = 0;
        v16[4] = v15;
        sub_1000502A0(0, 0, v6, &unk_10010C680, v16);

        sub_1000035CC(v6, &qword_100154BB0, &qword_10010FAE0);
      }

      return (*(v12 + 56))(a1, 1, 1, v11);
    }

    else
    {
      (*(v12 + 32))(a1, v9, v11);
      return (*(v12 + 56))(a1, 0, 1, v11);
    }
  }

  else
  {
    v18 = type metadata accessor for StocksKitCurrencyCache.Provider();
    v19 = *(*(v18 - 8) + 56);

    return v19(a1, 1, 1, v18);
  }
}

uint64_t sub_100050E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_10003AE84(&qword_100154BB0, &qword_10010FAE0);
  v4[6] = swift_task_alloc();
  v5 = *(sub_10003AE84(&qword_100154F60, &qword_10010C620) - 8);
  v4[7] = v5;
  v4[8] = *(v5 + 64);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_100050F98, 0, 0);
}

uint64_t sub_100050F98()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_1000510A8;
    v3 = v0[10];

    return StocksKitCurrencyCache.provider.getter(v3);
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1000510A8()
{

  return _swift_task_switch(sub_1000511A4, 0, 0);
}

uint64_t sub_1000511A4()
{
  v1 = v0[10];
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = swift_allocObject();
  swift_weakInit();
  sub_100008E68(v1, v2, &qword_100154F60, &qword_10010C620);
  type metadata accessor for MainActor();

  v7 = static MainActor.shared.getter();
  v8 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v6;
  sub_10000D5B8(v2, v9 + v8, &qword_100154F60, &qword_10010C620);

  sub_100050560(0, 0, v3, &unk_10010C6A8, v9);

  sub_1000035CC(v1, &qword_100154F60, &qword_10010C620);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100051380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  sub_10003AE84(&qword_100154F60, &qword_10010C620);
  v5[9] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[10] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100051450, v7, v6);
}

uint64_t sub_100051450()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = v0[9];
    sub_100008E68(v0[8], v3, &qword_100154F60, &qword_10010C620);
    swift_getKeyPath();
    v4 = swift_task_alloc();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v0[5] = v2;
    sub_100054468(&qword_100154F68, type metadata accessor for CalculatorCurrencyCacheProvider, &unk_10010C5F8);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    sub_1000035CC(v3, &qword_100154F60, &qword_10010C620);
    if (*(v2 + OBJC_IVAR____TtC10Calculator31CalculatorCurrencyCacheProvider__loadingProvider))
    {
      swift_getKeyPath();
      v5 = swift_task_alloc();
      *(v5 + 16) = v2;
      *(v5 + 24) = 0;
      v0[6] = v2;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {
      *(v2 + OBJC_IVAR____TtC10Calculator31CalculatorCurrencyCacheProvider__loadingProvider) = 0;
    }
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000516A4@<X0>(uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  swift_getKeyPath();
  v12 = v5;
  sub_100054468(&qword_100154F68, type metadata accessor for CalculatorCurrencyCacheProvider, &unk_10010C5F8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = *a2;
  swift_beginAccess();
  return sub_100008E68(v12 + v10, a5, a3, a4);
}

uint64_t sub_1000517A8@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, uint64_t *a4@<X5>, uint64_t *a5@<X6>, uint64_t a6@<X8>)
{
  v10 = *a1;
  swift_getKeyPath();
  sub_100054468(&qword_100154F68, type metadata accessor for CalculatorCurrencyCacheProvider, &unk_10010C5F8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = *a3;
  swift_beginAccess();
  return sub_100008E68(v10 + v11, a6, a4, a5);
}

uint64_t sub_10005188C(uint64_t a1)
{
  v2 = sub_10003AE84(&qword_100154E10, &qword_10010C4C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  sub_100008E68(a1, &v6 - v3, &qword_100154E10, &qword_10010C4C0);
  return sub_100051938(v4);
}

uint64_t sub_100051938(uint64_t a1)
{
  v3 = sub_10003AE84(&qword_100154E10, &qword_10010C4C0);
  __chkstk_darwin(v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC10Calculator31CalculatorCurrencyCacheProvider__currencyCacheLastRefreshDate;
  swift_beginAccess();
  sub_100008E68(v1 + v6, v5, &qword_100154E10, &qword_10010C4C0);
  v7 = sub_1000540AC(v5, a1);
  sub_1000035CC(v5, &qword_100154E10, &qword_10010C4C0);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_100054468(&qword_100154F68, type metadata accessor for CalculatorCurrencyCacheProvider, &unk_10010C5F8);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    swift_beginAccess();
    sub_1000543CC(a1, v1 + v6, &qword_100154E10, &qword_10010C4C0);
    swift_endAccess();
  }

  return sub_1000035CC(a1, &qword_100154E10, &qword_10010C4C0);
}

uint64_t sub_100051B34(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *a3;
  swift_beginAccess();
  sub_1000543CC(a2, a1 + v9, a4, a5);
  return swift_endAccess();
}

uint64_t sub_100051BC8(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_100054468(&qword_100154F68, type metadata accessor for CalculatorCurrencyCacheProvider, &unk_10010C5F8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + *a2);
}

void sub_100051C7C(uint64_t *a1@<X0>, void *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_100054468(&qword_100154F68, type metadata accessor for CalculatorCurrencyCacheProvider, &unk_10010C5F8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a4 = *(v6 + *a3);
}

void sub_100051DA4(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *a2) == (a1 & 1))
  {
    *(v4 + *a2) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100054468(&qword_100154F68, type metadata accessor for CalculatorCurrencyCacheProvider, &unk_10010C5F8);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100051EA8()
{
  v1 = v0;
  *(v0 + 16) = [objc_opt_self() shared];
  type metadata accessor for StocksKitCurrencyCache();
  *(v0 + 24) = static StocksKitCurrencyCache.shared.getter();
  v2 = OBJC_IVAR____TtC10Calculator31CalculatorCurrencyCacheProvider___provider;
  v3 = type metadata accessor for StocksKitCurrencyCache.Provider();
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  *(v1 + OBJC_IVAR____TtC10Calculator31CalculatorCurrencyCacheProvider__loadingProvider) = 0;
  v4 = OBJC_IVAR____TtC10Calculator31CalculatorCurrencyCacheProvider__currencyCacheLastRefreshDate;
  v5 = type metadata accessor for Date();
  (*(*(v5 - 8) + 56))(v1 + v4, 1, 1, v5);
  *(v1 + OBJC_IVAR____TtC10Calculator31CalculatorCurrencyCacheProvider__isCurrencyCacheLoaded) = 0;
  *(v1 + OBJC_IVAR____TtC10Calculator31CalculatorCurrencyCacheProvider__updatingLastRefreshDate) = 0;
  ObservationRegistrar.init()();
  sub_100051FD4();
  sub_1000521F4();
  return v1;
}

void sub_100051FD4()
{
  v1 = v0;
  swift_getKeyPath();
  sub_100054468(&qword_100154F68, type metadata accessor for CalculatorCurrencyCacheProvider, &unk_10010C5F8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = OBJC_IVAR____TtC10Calculator31CalculatorCurrencyCacheProvider__isCurrencyCacheLoaded;
  if ((*(v0 + OBJC_IVAR____TtC10Calculator31CalculatorCurrencyCacheProvider__isCurrencyCacheLoaded) & 1) == 0)
  {
    type metadata accessor for StocksKitCurrencyCache();
    if (static StocksKitCurrencyCache.isEnabled.getter())
    {
      LOBYTE(v3) = 1;
      if ((*(v1 + v2) & 1) == 0)
      {
LABEL_4:
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

        return;
      }
    }

    else
    {
      if (qword_1001546C8 != -1)
      {
        swift_once();
      }

      v5 = qword_100160D28;
      swift_getKeyPath();
      sub_100054468(&qword_100154F80, type metadata accessor for CalculatorNetworkManager, &protocol conformance descriptor for CalculatorNetworkManager);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v3 = *(v5 + 16);
      if (v3 != *(v1 + v2))
      {
        goto LABEL_4;
      }
    }

    *(v1 + v2) = v3;
  }
}

void sub_1000521F4()
{
  v1 = v0;
  v2 = sub_10003AE84(&qword_100154F70, &unk_10010C6C0);
  __chkstk_darwin(v2);
  v4 = &v42 - v3;
  v5 = sub_10003AE84(&qword_100154E10, &qword_10010C4C0);
  __chkstk_darwin(v5 - 8);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v50 = &v42 - v9;
  __chkstk_darwin(v10);
  v12 = &v42 - v11;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v49 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v42 - v17;
  __chkstk_darwin(v19);
  v51 = &v42 - v20;
  v21 = sub_10003AE84(&qword_100154BB0, &qword_10010FAE0);
  __chkstk_darwin(v21 - 8);
  v23 = &v42 - v22;
  type metadata accessor for StocksKitCurrencyCache();
  if ((static StocksKitCurrencyCache.isEnabled.getter() & 1) == 0)
  {
    v28 = [*(v0 + 16) lastRefreshDate];
    if (!v28)
    {
      return;
    }

    v48 = v7;
    v29 = v28;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v30 = v51;
    v43 = *(v14 + 32);
    v43(v51, v18, v13);
    v31 = *(v14 + 16);
    v47 = v14 + 16;
    v45 = v31;
    v31(v12, v30, v13);
    v32 = *(v14 + 56);
    v46 = v14 + 56;
    v44 = v32;
    v32(v12, 0, 1, v13);
    swift_getKeyPath();
    v52 = v1;
    sub_100054468(&qword_100154F68, type metadata accessor for CalculatorCurrencyCacheProvider, &unk_10010C5F8);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v33 = OBJC_IVAR____TtC10Calculator31CalculatorCurrencyCacheProvider__currencyCacheLastRefreshDate;
    swift_beginAccess();
    v34 = *(v2 + 48);
    sub_100008E68(v12, v4, &qword_100154E10, &qword_10010C4C0);
    sub_100008E68(v1 + v33, &v4[v34], &qword_100154E10, &qword_10010C4C0);
    v35 = *(v14 + 48);
    if (v35(v4, 1, v13) == 1)
    {
      sub_1000035CC(v12, &qword_100154E10, &qword_10010C4C0);
      if (v35(&v4[v34], 1, v13) == 1)
      {
        sub_1000035CC(v4, &qword_100154E10, &qword_10010C4C0);
        (*(v14 + 8))(v51, v13);
        return;
      }
    }

    else
    {
      v36 = v50;
      sub_100008E68(v4, v50, &qword_100154E10, &qword_10010C4C0);
      if (v35(&v4[v34], 1, v13) != 1)
      {
        v39 = v49;
        v43(v49, &v4[v34], v13);
        sub_100054468(&qword_100154F78, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v40 = dispatch thunk of static Equatable.== infix(_:_:)();
        v41 = *(v14 + 8);
        v41(v39, v13);
        sub_1000035CC(v12, &qword_100154E10, &qword_10010C4C0);
        v41(v36, v13);
        sub_1000035CC(v4, &qword_100154E10, &qword_10010C4C0);
        if (v40)
        {
          v41(v51, v13);
          return;
        }

LABEL_11:
        v37 = v48;
        v38 = v51;
        v45(v48, v51, v13);
        v44(v37, 0, 1, v13);
        sub_100051938(v37);
        (*(v14 + 8))(v38, v13);
        return;
      }

      sub_1000035CC(v12, &qword_100154E10, &qword_10010C4C0);
      (*(v14 + 8))(v36, v13);
    }

    sub_1000035CC(v4, &qword_100154F70, &unk_10010C6C0);
    goto LABEL_11;
  }

  swift_getKeyPath();
  v52 = v0;
  sub_100054468(&qword_100154F68, type metadata accessor for CalculatorCurrencyCacheProvider, &unk_10010C5F8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((*(v0 + OBJC_IVAR____TtC10Calculator31CalculatorCurrencyCacheProvider__updatingLastRefreshDate) & 1) == 0)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v42 - 2) = v0;
    *(&v42 - 8) = 1;
    v52 = v0;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    static TaskPriority.userInitiated.getter();
    v25 = type metadata accessor for TaskPriority();
    (*(*(v25 - 8) + 56))(v23, 0, 1, v25);
    v26 = swift_allocObject();
    swift_weakInit();
    v27 = swift_allocObject();
    v27[2] = 0;
    v27[3] = 0;
    v27[4] = v26;
    sub_1000502A0(0, 0, v23, &unk_10010C728, v27);

    sub_1000035CC(v23, &qword_100154BB0, &qword_10010FAE0);
  }
}

uint64_t sub_100052A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_10003AE84(&qword_100154BB0, &qword_10010FAE0);
  v4[6] = swift_task_alloc();
  v5 = *(sub_10003AE84(&qword_100154E10, &qword_10010C4C0) - 8);
  v4[7] = v5;
  v4[8] = *(v5 + 64);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_100052B1C, 0, 0);
}

uint64_t sub_100052B1C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v6 = (&async function pointer to dispatch thunk of StocksKitCurrencyCache.lastRefreshDate.getter + async function pointer to dispatch thunk of StocksKitCurrencyCache.lastRefreshDate.getter);
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_100052C44;
    v3 = v0[10];

    return v6(v3);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_100052C44()
{

  return _swift_task_switch(sub_100052D40, 0, 0);
}

uint64_t sub_100052D40()
{
  v1 = v0[10];
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = swift_allocObject();
  swift_weakInit();
  sub_100008E68(v1, v2, &qword_100154E10, &qword_10010C4C0);
  type metadata accessor for MainActor();

  v7 = static MainActor.shared.getter();
  v8 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v6;
  sub_10000D5B8(v2, v9 + v8, &qword_100154E10, &qword_10010C4C0);

  sub_100050560(0, 0, v3, &unk_10010C738, v9);

  sub_1000035CC(v1, &qword_100154E10, &qword_10010C4C0);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100052F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[12] = sub_10003AE84(&qword_100154F70, &unk_10010C6C0);
  v5[13] = swift_task_alloc();
  sub_10003AE84(&qword_100154E10, &qword_10010C4C0);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v5[18] = v6;
  v5[19] = *(v6 - 8);
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[22] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000530B4, v8, v7);
}