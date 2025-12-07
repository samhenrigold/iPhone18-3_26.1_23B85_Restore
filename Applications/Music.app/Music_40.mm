uint64_t sub_10047D7CC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LibraryImport.ViewModel(0);
  __chkstk_darwin();
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_10010FC20(&qword_101191950, &unk_100ED58E0);
  __chkstk_darwin();
  v7 = &v37 - v6;
  v8 = type metadata accessor for SidebarActivityView.Activity(0);
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  v10 = &v37 - v9;
  __chkstk_darwin();
  v16 = &v37 - v13;
  v17 = *(a1 + 16);
  if (v17 != *(a2 + 16))
  {
    return 0;
  }

  if (!v17 || a1 == a2)
  {
    return 1;
  }

  v40 = v11;
  v41 = v15;
  v38 = v5;
  v39 = &v37 - v13;
  v18 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v19 = a1 + v18;
  v20 = a2 + v18;
  v21 = *(v12 + 72);
  v42 = v14;
  v43 = v21;
  while (1)
  {
    sub_100482098(v19, v16, type metadata accessor for SidebarActivityView.Activity);
    sub_100482098(v20, v10, type metadata accessor for SidebarActivityView.Activity);
    v26 = *(v44 + 48);
    sub_100482098(v16, v7, type metadata accessor for SidebarActivityView.Activity);
    sub_100482098(v10, &v7[v26], type metadata accessor for SidebarActivityView.Activity);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      break;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v28 = v41;
      sub_100482098(v7, v41, type metadata accessor for SidebarActivityView.Activity);
      v23 = *v28;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
LABEL_17:

        goto LABEL_20;
      }
    }

    else
    {
      v22 = v42;
      sub_100482098(v7, v42, type metadata accessor for SidebarActivityView.Activity);
      v23 = *v22;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_17;
      }
    }

    v24 = *&v7[v26];
    sub_100009F78(0, &qword_101197A30, NSObject_ptr);
    v25 = static NSObject.== infix(_:_:)();

    if ((v25 & 1) == 0)
    {
      sub_100482100(v7, type metadata accessor for SidebarActivityView.Activity);
      goto LABEL_21;
    }

    sub_100482100(v7, type metadata accessor for SidebarActivityView.Activity);
LABEL_8:
    sub_100482100(v10, type metadata accessor for SidebarActivityView.Activity);
    sub_100482100(v16, type metadata accessor for SidebarActivityView.Activity);
    v20 += v43;
    v19 += v43;
    if (!--v17)
    {
      return 1;
    }
  }

  v29 = v10;
  v30 = v8;
  v31 = v40;
  sub_100482098(v7, v40, type metadata accessor for SidebarActivityView.Activity);
  v32 = v30;
  if (!swift_getEnumCaseMultiPayload())
  {
    v33 = &v7[v26];
    v34 = v38;
    sub_100481D28(v33, v38, type metadata accessor for LibraryImport.ViewModel);
    v35 = sub_10054EB74(v31, v34);
    sub_100482100(v34, type metadata accessor for LibraryImport.ViewModel);
    sub_100482100(v31, type metadata accessor for LibraryImport.ViewModel);
    sub_100482100(v7, type metadata accessor for SidebarActivityView.Activity);
    v8 = v32;
    v10 = v29;
    v16 = v39;
    if ((v35 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_8;
  }

  sub_100482100(v31, type metadata accessor for LibraryImport.ViewModel);
  v10 = v29;
  v16 = v39;
LABEL_20:
  sub_1000095E8(v7, &qword_101191950, &unk_100ED58E0);
LABEL_21:
  sub_100482100(v10, type metadata accessor for SidebarActivityView.Activity);
  sub_100482100(v16, type metadata accessor for SidebarActivityView.Activity);
  return 0;
}

void *sub_10047DCF8(uint64_t a1)
{
  v2 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = a1 + 32;
  type metadata accessor for ImpressionTracker();
  while (swift_dynamicCastClass())
  {
    swift_unknownObjectRetain();
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v3 += 16;
    if (!--v2)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return 0;
}

double sub_10047DDD0(uint64_t a1)
{
  v2 = v1;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return result;
  }

  type metadata accessor for ImpressionTracker();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = v5;
    if (v5 != a1)
    {
      v7 = *(v5 + 48);
      if ((v7 & 0xC000000000000001) != 0)
      {

        v8 = __CocoaSet.contains(_:)();

        if (v8)
        {
          goto LABEL_6;
        }
      }

      else if (*(v7 + 16))
      {
        Hasher.init(_seed:)();
        v9 = sub_10047E418();
        Hasher._combine(_:)(v9);
        v10 = Hasher._finalize()();
        v11 = -1 << *(v7 + 32);
        v12 = v10 & ~v11;
        if ((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
        {
          v13 = ~v11;
          while (sub_10047E418() != *(v2 + 56))
          {
            v12 = (v12 + 1) & v13;
            if (((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
            {
              goto LABEL_14;
            }
          }

          goto LABEL_6;
        }
      }

LABEL_14:
      v16 = *(v6 + 48);

      sub_1003B4580(v15, v2);

      v14 = *(v6 + 48);
      *(v6 + 48) = v16;
      sub_10047E058(v14);
      swift_unknownObjectRelease();

      return result;
    }
  }

LABEL_6:

  swift_unknownObjectRelease();
  return result;
}

double sub_10047DFA0(uint64_t a1)
{

  v4 = sub_10047DCF8(v3);

  if (v4)
  {
    v6 = sub_10047DCF8(a1);
    if (v6)
    {
      v7 = sub_10047D28C(v6, v4);

      if ((v7 & 1) == 0)
      {
        v8 = sub_100670590(v4);

        v9 = *(v1 + 48);
        *(v1 + 48) = v8;
        sub_10047E058(v9);
      }
    }
  }

  return result;
}

void sub_10047E058(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 48);
  v5 = v4 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v6 = a1;
    }

    else
    {
      v6 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v5)
    {

      v7 = __CocoaSet.isEqual(to:)();
    }

    else
    {

      sub_100481C24(v6, v4);
    }

    v11 = v7;

    if (v11)
    {
      v12 = __CocoaSet.count.getter();
      goto LABEL_36;
    }

LABEL_37:
    v27 = *(v2 + 32);
    v28 = *(v27 + 16);
    if (v28)
    {

      v29 = (v27 + 40);
      do
      {
        v30 = *v29;
        ObjectType = swift_getObjectType();
        v32 = *(v30 + 32);
        swift_unknownObjectRetain();
        v33 = v32(ObjectType, v30);
        if (!v33 || (v34 = v33, swift_unknownObjectRelease(), v34 != v2))
        {
          if (swift_conformsToProtocol2())
          {
          }

          (*(v30 + 40))();
        }

        swift_unknownObjectRelease();
        v29 += 2;
        --v28;
      }

      while (v28);
    }

    v36 = sub_1003AE22C(v35);

    v37 = sub_10018DE70(v36);

    v38 = *(v2 + 32);
    *(v2 + 32) = v37;
    sub_10047DFA0(v38);

    return;
  }

  if (v5)
  {
    if (v4 < 0)
    {
      v8 = *(v1 + 48);
    }

    else
    {
      v8 = v4 & 0xFFFFFFFFFFFFFF8;
    }

    sub_100481C24(v8, a1);
    v10 = v9;

    if ((v10 & 1) == 0)
    {
      goto LABEL_37;
    }

LABEL_35:
    v12 = *(a1 + 16);
LABEL_36:
    if (v12 == *(*(v2 + 32) + 16))
    {
      return;
    }

    goto LABEL_37;
  }

  if (v4 == a1)
  {
    goto LABEL_35;
  }

  if (*(a1 + 16) != *(v4 + 16))
  {
    goto LABEL_37;
  }

  v13 = 0;
  v14 = 1 << *(a1 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a1 + 56);
  v40 = (v14 + 63) >> 6;
  v17 = v4 + 56;
  if (v16)
  {
    do
    {
      v18 = __clz(__rbit64(v16));
      v39 = (v16 - 1) & v16;
LABEL_28:
      v21 = *(*(a1 + 48) + 8 * (v18 | (v13 << 6)));
      Hasher.init(_seed:)();
      v22 = sub_10047E418();
      Hasher._combine(_:)(v22);
      v23 = Hasher._finalize()();
      v24 = -1 << *(v4 + 32);
      v25 = v23 & ~v24;
      if (((*(v17 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
      {
        goto LABEL_37;
      }

      v26 = ~v24;
      while (sub_10047E418() != *(v21 + 56))
      {
        v25 = (v25 + 1) & v26;
        if (((*(v17 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
        {
          goto LABEL_37;
        }
      }

      v16 = v39;
    }

    while (v39);
  }

  v19 = v13;
  while (1)
  {
    v13 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v13 >= v40)
    {
      goto LABEL_35;
    }

    v20 = *(a1 + 56 + 8 * v13);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v39 = (v20 - 1) & v20;
      goto LABEL_28;
    }
  }

  __break(1u);
}

uint64_t sub_10047E418()
{
  if (*(v0 + 56))
  {
    return *(v0 + 56);
  }

  result = v0;
  *(v0 + 56) = v0;
  return result;
}

uint64_t sub_10047E448()
{
  sub_1000D8F2C(v0 + 16);

  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_10047E560()
{
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 32) = _swiftEmptyArrayStorage;
  *(v0 + 40) = 0;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_10010F2AC(_swiftEmptyArrayStorage);
  }

  else
  {
    v1 = &_swiftEmptySetSingleton;
  }

  *(v0 + 48) = v1;
  *(v0 + 56) = 0;
  if (qword_10117F810 != -1)
  {
    swift_once();
  }

  UnfairLock.locked<A>(_:)(sub_1003BE72C);
  *(v0 + 64) = qword_101193E90;
  swift_unknownObjectWeakInit();
  return v0;
}

Swift::Int sub_10047E664()
{
  Hasher.init(_seed:)();
  v0 = sub_10047E418();
  Hasher._combine(_:)(v0);
  return Hasher._finalize()();
}

Swift::Int sub_10047E6DC(uint64_t a1)
{
  Hasher.init(_seed:)();
  v1 = sub_10047E418();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_10047E764()
{
  if (qword_10117F808 != -1)
  {
    swift_once();
  }

  if (byte_101218F00)
  {
    return 0;
  }

  else
  {
    return *(v0 + 145);
  }
}

Swift::Int LaunchURL.Resolver.PerformOption.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

Swift::Int sub_10047E860(uint64_t a1)
{
  Hasher.init(_seed:)();
  LaunchURL.Resolver.PerformOption.hash(into:)(v3, *v1);
  return Hasher._finalize()();
}

double sub_10047E8A0(uint64_t a1, uint64_t a2)
{
  Date.timeIntervalSince1970.getter();
  v4 = v3;
  v5 = type metadata accessor for Date();
  (*(*(v5 - 8) + 8))(a2, v5);
  return v4;
}

uint64_t sub_10047E914(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_10047E964(a1, a2, v5, v6);
  return v4;
}

uint64_t *sub_10047E964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v4[4] = 0;
  *(v4 + 20) = 513;
  v4[2] = a1;
  type metadata accessor for CollectionViewImpressionTracker.History.Event(0, *(v6 + 80), *(v6 + 88), a4);
  v4[6] = static Array._allocateUninitialized(_:)();
  v4[3] = a2;
  return v4;
}

uint64_t sub_10047E9E0()
{
  v1 = *v0;
  swift_beginAccess();
  type metadata accessor for CollectionViewImpressionTracker.History.Event(255, *(v1 + 80), *(v1 + 88), v2);
  type metadata accessor for Array();
  swift_getWitnessTable();
  BidirectionalCollection.last.getter();
  if (v4 == 2)
  {
    return 2;
  }

  else
  {
    return v4 & 1;
  }
}

uint64_t sub_10047EAA4(char a1, uint64_t a2)
{
  v5 = *v2;
  type metadata accessor for Date();
  v6 = __chkstk_darwin();
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a2, v6);
  v10 = *(v5 + 80);
  v11 = *(v5 + 88);
  v15[4] = sub_10047E8A0(a1 & 1, v8);
  v16 = v12 & 1;
  swift_beginAccess();
  type metadata accessor for CollectionViewImpressionTracker.History.Event(255, v10, v11, v13);
  type metadata accessor for Array();
  Array.append(_:)();
  return swift_endAccess();
}

uint64_t sub_10047EC00()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10047EC40()
{
  _StringGuts.grow(_:)(72);
  v0._object = 0x8000000100E4D470;
  v0._countAndFlagsBits = 0xD000000000000032;
  String.append(_:)(v0);
  _print_unlocked<A, B>(_:_:)();
  v1._countAndFlagsBits = 0x3A656D6172462027;
  v1._object = 0xEA00000000002720;
  String.append(_:)(v1);
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = Strong;
  if (Strong)
  {
    [Strong frame];
  }

  sub_10010FC20(qword_101191978, &qword_100ECEA60);
  v4._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 0x203A44492027;
  v5._object = 0xE600000000000000;
  String.append(_:)(v5);
  sub_10010FC20(&qword_101184A70, &qword_100EC0680);
  v6._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v6);

  return 0;
}

uint64_t sub_10047EDDC()
{

  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

void sub_10047EE40()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);

  if (v2)
  {
    v3 = 0;
    while (v3 < *(v1 + 16))
    {
      v4 = v3 + 1;
      v5 = *(v1 + 32 + 16 * v3);
      swift_unknownObjectRetain();
      sub_10047EF60(&v5, v0);
      swift_unknownObjectRelease();
      v3 = v4;
      if (v2 == v4)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

LABEL_5:

  if (qword_10117F808 != -1)
  {
LABEL_13:
    swift_once();
  }

  if ((byte_101218F00 & 1) == 0 && *(v0 + 145) == 1)
  {

    sub_10047F654();
  }
}

uint64_t sub_10047EF60(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  if (qword_10117F808 != -1)
  {
    swift_once();
  }

  if (byte_101218F00)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(a2 + 145);
  }

  return (*(v3 + 16))(v5, ObjectType, v3);
}

void sub_10047F01C()
{
  v1 = v0;
  v2 = *v0;
  swift_beginAccess();
  type metadata accessor for CollectionViewImpressionTracker.History(255, *(v2 + 312), *(v2 + 320), v3);
  type metadata accessor for Dictionary();
  Dictionary.removeAll(keepingCapacity:)(0);
  swift_endAccess();
  v4 = v1[4];
  v5 = *(v4 + 16);

  if (v5)
  {
    v6 = 0;
    v7 = (v4 + 40);
    while (v6 < *(v4 + 16))
    {
      ++v6;
      v8 = *v7;
      ObjectType = swift_getObjectType();
      v10 = *(v8 + 104);
      swift_unknownObjectRetain();
      v10(ObjectType, v8);
      swift_unknownObjectRelease();
      v7 += 2;
      if (v5 == v6)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
  }
}

void sub_10047F160(uint64_t a1, double a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = (v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
  *v10 = static OS_dispatch_queue.main.getter();
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v11 = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v10, v7);
  if (v11)
  {
    swift_beginAccess();
    v21[2] = v3[14];
    v12 = swift_allocObject();
    swift_weakInit();
    __chkstk_darwin();
    v21[-4] = v12;
    v21[-3] = a1;
    *&v21[-2] = a2;
    __chkstk_darwin();
    v13 = *(v6 + 312);
    v14 = *(v6 + 320);
    v21[-4] = v13;
    v21[-3] = v14;
    v21[-2] = sub_100481D90;
    v21[-1] = v15;
    type metadata accessor for IndexPath();
    type metadata accessor for CollectionViewImpressionTracker.TrackedItem(255, v13, v14, v16);
    sub_100481DBC(&qword_10118EB38, 255, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
    type metadata accessor for Dictionary();

    swift_getWitnessTable();
    Sequence.forEach(_:)();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v18 = Strong;
      v19 = UIScrollView.isScrolling.getter();

      if ((v19 & 1) == 0)
      {
        v20 = v3[6];
        __chkstk_darwin();
        v21[-2] = a1;
        *&v21[-1] = a2;

        sub_100377034(sub_100481E04, &v21[-4], v20);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10047F4D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10047FA44(a2, a1, a4, a5);
  }
}

uint64_t sub_10047F55C(uint64_t a1, uint64_t (*a2)(uint64_t, void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for IndexPath();
  type metadata accessor for CollectionViewImpressionTracker.TrackedItem(255, a4, a5, v9);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, *(a1 + *(TupleTypeMetadata2 + 48)));
}

void sub_10047F654()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v22 - v7;
  v9 = *(type metadata accessor for DispatchPredicate() - 8);
  __chkstk_darwin();
  v12 = (&v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_10117F808 != -1)
  {
    v21 = v10;
    swift_once();
    v10 = v21;
  }

  if ((byte_101218F00 & 1) == 0 && *(v1 + 145) == 1)
  {
    v23 = v2;
    v13 = v10;
    sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
    *v12 = static OS_dispatch_queue.main.getter();
    (*(v9 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v13);
    v14 = _dispatchPreconditionTest(_:)();
    (*(v9 + 8))(v12, v13);
    if (v14)
    {
      v15 = [objc_opt_self() sharedApplication];
      v16 = [v15 applicationState];

      v17 = v23;
      if (!v16)
      {
        Date.init()();
        v18 = swift_allocObject();
        swift_weakInit();
        (*(v4 + 16))(v6, v8, v3);
        v19 = (*(v4 + 80) + 40) & ~*(v4 + 80);
        v20 = swift_allocObject();
        *(v20 + 2) = *(v17 + 312);
        *(v20 + 3) = *(v17 + 320);
        *(v20 + 4) = v18;
        (*(v4 + 32))(&v20[v19], v6, v3);

        sub_100534EE4(sub_100481FD4, v20);

        (*(v4 + 8))(v8, v3);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10047F9D4(uint64_t a1, uint64_t a2, double a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10047F160(a2, a3);
  }
}

void sub_10047FA44(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  v37 = a2;
  v38 = a3;
  v39 = *v4;
  v40 = a1;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = (&v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
  *v10 = static OS_dispatch_queue.main.getter();
  v11 = enum case for DispatchPredicate.onQueue(_:);
  v12 = *(v8 + 104);
  v12(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v13 = _dispatchPreconditionTest(_:)();
  v14 = *(v8 + 8);
  v14(v10, v7);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_34;
  }

  if (qword_10117F808 != -1)
  {
LABEL_34:
    swift_once();
  }

  if ((byte_101218F00 & 1) != 0 || *(v4 + 145) != 1)
  {
    return;
  }

  *v10 = static OS_dispatch_queue.main.getter();
  v12(v10, v11, v7);
  v15 = _dispatchPreconditionTest(_:)();
  v14(v10, v7);
  if (v15)
  {
    v16 = [objc_opt_self() sharedApplication];
    v17 = [v16 applicationState];

    if (v17)
    {
      return;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v19 = Strong;
      v20 = v40;
      v21 = swift_unknownObjectWeakLoadStrong();
      if (!v21)
      {

        return;
      }

      sub_100480118();
      v22 = v19;
      v23 = sub_1004802F0(v20, v19, a4);

      v24 = sub_100431E88(*(v20 + 16));
      v26 = v25;
      swift_beginAccess();
      v41 = v24;
      v42 = v26;
      type metadata accessor for CollectionViewImpressionTracker.History(0, *(v39 + 312), *(v39 + 320), v27);

      Dictionary.subscript.getter();

      v28 = v43;
      if (v43)
      {

        v29 = sub_10047E9E0();

        if (v23)
        {
          if (v29 == 2 || (v29 & 1) != 0)
          {
LABEL_21:
            v34 = 0;
LABEL_22:
            sub_10047FEF4(v20);
            sub_10047EAA4(v34, v38);
          }
        }

        else if (v29 != 2 && (v29 & 1) == 0)
        {
          v34 = 1;
          goto LABEL_22;
        }

        v35 = v5[19];
        if (v35)
        {
          if (v28)
          {

            v36 = sub_10048C5C4(v37, v35);

            *(v28 + 41) = v36 & 1;
LABEL_31:

            return;
          }

LABEL_29:

          return;
        }

LABEL_30:

        goto LABEL_31;
      }

      if ((v23 & 1) == 0)
      {
        if (v5[19])
        {
          goto LABEL_29;
        }

        goto LABEL_30;
      }

      goto LABEL_21;
    }

    if (qword_10117F790 == -1)
    {
      goto LABEL_16;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_16:
  v30 = type metadata accessor for Logger();
  sub_1000060E4(v30, qword_101218DD0);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&_mh_execute_header, v31, v32, "Paused tracking.  Container view was deallocated", v33, 2u);
  }
}

uint64_t sub_10047FEF4(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(a1 + 16);
  sub_100431E88(v5);
  swift_beginAccess();
  type metadata accessor for CollectionViewImpressionTracker.History(0, *(v4 + 312), *(v4 + 320), v6);

  Dictionary.subscript.getter();

  v7 = v13;
  if (!v13)
  {
    if (*(a1 + 32))
    {
      v8 = qword_10117F810;

      if (v8 != -1)
      {
        swift_once();
      }

      UnfairLock.locked<A>(_:)(sub_1003C18BC);
      v9 = qword_101193E90;
    }

    else
    {
      v9 = *(a1 + 24);
    }

    v7 = swift_allocObject();
    sub_10047E964(v5, v9, v10, v11);

    sub_100431E88(v5);
    swift_beginAccess();
    type metadata accessor for Dictionary();
    Dictionary.subscript.setter();
    swift_endAccess();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    *(v7 + 32) = v2[8];
    *(v7 + 40) = 0;
  }

  return v7;
}

void sub_100480118()
{
  if (!swift_unknownObjectWeakLoadStrong())
  {
    if (!swift_unknownObjectWeakLoadStrong())
    {
      return;
    }

    objc_opt_self();
    v1 = swift_dynamicCastObjCClass();
    if (v1)
    {
      v2 = [v1 parentViewController];
      if (v2)
      {
        v3 = v2;
        swift_getObjectType();
        v4 = swift_conformsToProtocol2();
        if (v4)
        {
          v5 = v4;
          v6 = v0;
          v7 = v3;
LABEL_16:

          ObjectType = swift_getObjectType();
          (*(v5 + 8))(ObjectType, v5);
          v12 = v11;
          v13 = v6;
          Strong = swift_unknownObjectWeakLoadStrong();
          *(v13 + 24) = v12;
          swift_unknownObjectWeakAssign();
          sub_10047DDD0(Strong);
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
        }

        else
        {
          v7 = v3;
          while (1)
          {
            v8 = v7;

            v7 = [v7 parentViewController];
            if (!v7)
            {
              break;
            }

            swift_getObjectType();
            v9 = swift_conformsToProtocol2();
            if (v9)
            {
              v5 = v9;
              v6 = v0;
              goto LABEL_16;
            }
          }
        }
      }
    }
  }

  swift_unknownObjectRelease();
}

uint64_t sub_1004802F0(uint64_t a1, void *a2, double a3)
{
  if (a2)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      v8 = a2;
      if ([v7 isHidden] & 1) == 0 && objc_msgSend(v7, "_isInAWindow") && (v9 = swift_unknownObjectWeakLoadStrong(), v10 = sub_1004806C4(v8, v9, *(v3 + 24)), swift_unknownObjectRelease(), (v10))
      {
        [v8 visibleBounds];
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v18 = v17;
        [v8 adjustedContentInset];
        sub_100058728(v12, v14, v16, v18, v19, v20);
        [v7 frame];
        v43 = v21;
        v22 = CGRect.isContained(in:percentage:)();
        if (*(a1 + 48) > 1u)
        {
          if (*(a1 + 48) != 2)
          {
            [v7 frame];
            [v7 convertRect:v8 toCoordinateSpace:?];
            [v8 visibleBounds];
            v23 = CGRect.isContained(in:percentage:)();
            goto LABEL_17;
          }

          v41 = [v7 superview];
          if (!v41)
          {
            goto LABEL_22;
          }

          v42 = v41;
          [v7 frame];
          [v42 convertRect:v8 toCoordinateSpace:?];
          v23 = CGRect.isContained(in:percentage:)();

          v8 = v7;
          v7 = v42;
        }

        else
        {
          v23 = v22;
          if (*(a1 + 48))
          {
            if (v22)
            {
              if (swift_unknownObjectWeakLoadStrong())
              {
                v24 = *(v3 + 24);
                ObjectType = swift_getObjectType();
                v26 = (*(v24 + 88))(ObjectType, v24);
                swift_unknownObjectRelease();
                if (v26)
                {
                  if (v26 != a2 && (v27 = swift_unknownObjectWeakLoadStrong()) != 0 && (v28 = v27, v29 = [v27 superview], v28, v29))
                  {
                    [v26 visibleBounds];
                    v31 = v30;
                    v33 = v32;
                    v35 = v34;
                    v37 = v36;
                    [v26 adjustedContentInset];
                    sub_100058728(v31, v33, v35, v37, v38, v39);
                    [v7 frame];
                    [v29 convertRect:v26 toCoordinateSpace:?];
                    v23 = CGRect.isContained(in:percentage:)();

                    v8 = v26;
                    v7 = v29;
                  }

                  else
                  {

                    v23 = 1;
                    v8 = v26;
                  }

                  goto LABEL_17;
                }
              }
            }

LABEL_22:
            v23 = 1;
          }
        }
      }

      else
      {
        v23 = 0;
      }

LABEL_17:

      return v23 & 1;
    }
  }

  v23 = 0;
  return v23 & 1;
}

uint64_t sub_1004806C4(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return 1;
  }

  ObjectType = swift_getObjectType();
  v6 = (*(a3 + 88))(ObjectType, a3);
  if (!v6)
  {
    return 1;
  }

  v7 = v6;
  v8 = a1;
  v9 = [v8 superview];
  if (v9)
  {
    while (1)
    {

      if (v8)
      {
        v11 = [v8 superview];
        if (v11)
        {
          v12 = v11;

          if (v12 == v7)
          {
            break;
          }
        }
      }

      v10 = [v8 superview];

      v9 = [v10 superview];
      v8 = v10;
      if (!v9)
      {
        goto LABEL_10;
      }
    }
  }

  v10 = v8;
LABEL_10:
  [v7 visibleBounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  result = [v7 adjustedContentInset];
  if (v10)
  {
    v24 = sub_100058728(v14, v16, v18, v20, v22, v23);
    v26 = v25;
    v28 = v27;
    v30 = v29;
    [v10 frame];
    v40.origin.x = v31;
    v40.origin.y = v32;
    v40.size.width = v33;
    v40.size.height = v34;
    v39.origin.x = v24;
    v39.origin.y = v26;
    v39.size.width = v28;
    v39.size.height = v30;
    if (CGRectIntersectsRect(v39, v40))
    {
      v35 = swift_getObjectType();
      v36 = (*(a3 + 32))(v35, a3);
      v38 = sub_1004806C4(v7, v36, v37);

      swift_unknownObjectRelease();
      return v38 & 1;
    }

    else
    {

      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004808E0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v7 = &v34 - v6;
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089F8(a1, v7, &unk_10118BCE0, &qword_100EC6450);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000095E8(v7, &unk_10118BCE0, &qword_100EC6450);
  }

  (*(v9 + 32))(v11, v7, v8);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v15 = v5 + 312;
    v13 = *(v5 + 312);
    v14 = *(v15 + 8);
    v16 = *(v14 + 8);
    v36 = v2;
    v17 = v16(v11, v13, v14);
    swift_unknownObjectRelease();
    if (v17)
    {
      v35 = a2;
      v18 = sub_100431E88(v17);
      v20 = v19;
      swift_beginAccess();
      v41 = v18;
      v42 = v20;
      type metadata accessor for CollectionViewImpressionTracker.History(0, v13, v14, v21);

      Dictionary.subscript.getter();

      if (v37)
      {
      }

      else
      {
        swift_beginAccess();
        type metadata accessor for CollectionViewImpressionTracker.TrackedItem(0, v13, v14, v22);
        sub_100481DBC(&qword_10118EB38, 255, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);

        Dictionary.subscript.getter();

        v23 = v37;
        if (v37)
        {

          sub_10047FEF4(v23);
          sub_10047EAA4(0, v35);
        }

        else
        {
          v24 = qword_10117F810;

          v25 = v35;
          if (v24 != -1)
          {
            swift_once();
          }

          UnfairLock.locked<A>(_:)(sub_1003C18BC);
          v26 = qword_101193E90;
          v27 = swift_allocObject();
          sub_10047E964(v17, v26, v28, v29);
          v30 = v36;
          if (swift_unknownObjectWeakLoadStrong())
          {
            swift_unknownObjectRelease();
            *(v27 + 32) = v30[8];
            *(v27 + 40) = 0;
          }

          sub_10047EAA4(0, v25);
          v31 = sub_100431E88(v17);
          v33 = v32;

          v39 = v33;
          v40 = v27;
          v38 = v31;
          swift_beginAccess();
          type metadata accessor for Dictionary();

          Dictionary.subscript.setter();
          swift_endAccess();
        }
      }
    }
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_100480DB4(unsigned __int16 a1, uint64_t a2, char *a3, __n128 a4)
{
  v39 = a3;
  v41 = a2;
  v6 = *v4;
  v7 = type metadata accessor for DispatchTime();
  v42 = *(v7 - 8);
  v43 = v7;
  __chkstk_darwin();
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for Date();
  v10 = *(v40 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v13 = *(v6 + 312);
  v14 = *(v6 + 320);
  type metadata accessor for CollectionViewImpressionTracker.History(0, v13, v14, v15);

  v16 = Dictionary.isEmpty.getter();

  if ((v16 & 1) == 0 || (v17 = 0, (a1 & 4) == 0))
  {
    v38 = a1;
    v18 = v41;
    sub_1004808E0(v39, v41);
    v36 = dispatch_semaphore_create(1);
    v19 = swift_allocObject();
    v39 = v9;
    v20 = v19;
    *(v19 + 16) = _swiftEmptyArrayStorage;
    v35[1] = v19 + 16;
    v37 = v4[11];
    v21 = swift_allocObject();
    swift_weakInit();
    v22 = v40;
    (*(v10 + 16))(v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v18, v40);
    v23 = (*(v10 + 80) + 56) & ~*(v10 + 80);
    v24 = (v11 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
    v25 = swift_allocObject();
    *(v25 + 16) = v13;
    *(v25 + 24) = v14;
    *(v25 + 32) = v38;
    *(v25 + 40) = v20;
    *(v25 + 48) = v21;
    (*(v10 + 32))(v25 + v23, v12, v22);
    v26 = v36;
    *(v25 + v24) = v36;

    v27 = v26;
    sub_100535104(sub_100481F14, v25);

    sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
    v28 = v39;
    static OS_dispatch_queue.UIFeedbackDeadline.getter(v29);
    OS_dispatch_semaphore.wait(timeout:)();
    (*(v42 + 8))(v28, v43);
    if (static DispatchTimeoutResult.== infix(_:_:)())
    {

      swift_beginAccess();
      v17 = *(v20 + 16);
    }

    else
    {
      if (qword_10117F790 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_1000060E4(v30, qword_101218DD0);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v31, v32, "Semaphore returned a non-success code.  No impressions were generated", v33, 2u);
      }

      return 0;
    }
  }

  return v17;
}

void sub_100481228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v7 = a1;
  if ((a1 & 4) != 0)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v18 = sub_1004815D8(v7, a4, a5);
    }

    else
    {
      v18 = 0;
    }

    swift_beginAccess();
    *(a2 + 16) = v18;

    goto LABEL_13;
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
LABEL_13:
    OS_dispatch_semaphore.signal()();
    return;
  }

  v9 = Strong;
  swift_retain_n();
  swift_getObjectType();
  v10 = &off_1010ADC50;
  v11 = sub_100481AB4();
  v13 = v12;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (v11)
  {
    do
    {
      v10 = v13;
      v14 = v11;
      swift_unknownObjectRelease();
      ObjectType = swift_getObjectType();
      v11 = (*(v13 + 32))(ObjectType, v13);
      v13 = v16;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
    }

    while (v11);
  }

  else
  {
    v14 = v9;
  }

  swift_beginAccess();
  if (*(a2 + 16))
  {
    sub_100481418(v14, v10, v7 | 4u, a4, a2 + 16);
    swift_endAccess();
    swift_unknownObjectRelease();

    goto LABEL_13;
  }

  __break(1u);
}

double sub_100481418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v10 = v16 - v9;
  ObjectType = swift_getObjectType();
  v12 = type metadata accessor for IndexPath();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  v13 = sub_100431F44(a3, a4, v10, ObjectType, a2);
  sub_1000095E8(v10, &unk_10118BCE0, &qword_100EC6450);
  if (v13)
  {
    sub_1001254E4(v13);
  }

  v14 = (*(a2 + 56))(ObjectType, a2);
  __chkstk_darwin();
  v16[-4] = v16[0];
  LOWORD(v16[-3]) = a3;
  v16[-2] = a4;
  v16[-1] = a5;
  sub_100376F9C(sub_100481ED4, &v16[-6], v14);

  return result;
}

uint64_t sub_1004815D8(char a1, uint64_t a2, double a3)
{
  v4 = v3;
  v8 = *v4;
  swift_beginAccess();
  v9 = v4[13];
  if (a1)
  {
    __chkstk_darwin();
    v10 = *(v8 + 312);
    v11 = *(v8 + 320);
    type metadata accessor for CollectionViewImpressionTracker.History(0, v10, v11, v12);

    v9 = Dictionary.filter(_:)();
  }

  else
  {
    v10 = *(v8 + 312);
    v11 = *(v8 + 320);
  }

  v13 = sub_1005368D0(v9, a2, a1 & 1, v10, v11, a3);

  return v13;
}

double sub_100481748()
{

  swift_unknownObjectWeakDestroy();

  return result;
}

uint64_t sub_1004817A8()
{
  sub_1000D8F2C(v0 + 16);

  swift_unknownObjectWeakDestroy();

  swift_unknownObjectWeakDestroy();

  return v0;
}

uint64_t sub_100481820()
{
  sub_1004817A8();

  return swift_deallocClassInstance();
}

uint64_t sub_10048196C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1004819A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1004819EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_100481A5C()
{
  result = qword_1011918F0;
  if (!qword_1011918F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011918F0);
  }

  return result;
}

double sub_100481AD4(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  sub_10047DDD0(Strong);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_100481BB8()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_101218DD0);
  sub_1000060E4(v0, qword_101218DD0);
  return static Logger.music(_:)(0x6973736572706D49, 0xEB00000000736E6FLL);
}

void sub_100481C24(uint64_t a1, uint64_t a2)
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

uint64_t sub_100481D28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100481DBC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_100481F14(double a1)
{
  v3 = *(type metadata accessor for Date() - 8);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 32);
  v7 = v1 + ((*(v3 + 80) + 56) & ~*(v3 + 80));

  sub_100481228(v6, v4, v5, v7, a1);
}

void sub_100481FD4(double a1)
{
  v3 = *(type metadata accessor for Date() - 8);
  v4 = *(v1 + 32);
  v5 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  sub_10047F9D4(v4, v5, a1);
}

uint64_t sub_100482098(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100482100(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100482160(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x657469726F766166;
  }

  else
  {
    v3 = 7105633;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE900000000000064;
  }

  if (*a2)
  {
    v5 = 0x657469726F766166;
  }

  else
  {
    v5 = 7105633;
  }

  if (*a2)
  {
    v6 = 0xE900000000000064;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100482204()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_100482284(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_1004822F0(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_10048236C(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_101098DD8, *a1);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1004823CC(uint64_t *a1@<X8>)
{
  v2 = 7105633;
  if (*v1)
  {
    v2 = 0x657469726F766166;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000064;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100482418(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x646956636973756DLL;
    v6 = 0x7473696C79616C70;
    if (a1 != 8)
    {
      v6 = 0x73676E6F73;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x7365726E6567;
    if (a1 != 5)
    {
      v7 = 0x59726F466564616DLL;
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
    v1 = 0x736D75626C61;
    v2 = 0x73747369747261;
    v3 = 0x74616C69706D6F63;
    if (a1 != 3)
    {
      v3 = 0x7265736F706D6F63;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6544747369747261;
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

uint64_t sub_10048256C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_100482418(*a1);
  v5 = v4;
  if (v3 == sub_100482418(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1004825F4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100482418(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_100482658(uint64_t a1)
{
  sub_100482418(*v1);
  String.hash(into:)();

  return result;
}

Swift::Int sub_1004826AC(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_100482418(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10048270C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100482A18(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10048273C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100482418(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100482904()
{
  result = qword_101191A50;
  if (!qword_101191A50)
  {
    sub_1001109D0(&qword_101191A58, qword_100ECEB28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101191A50);
  }

  return result;
}

unint64_t sub_10048296C()
{
  result = qword_101191A60;
  if (!qword_101191A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101191A60);
  }

  return result;
}

unint64_t sub_1004829C4()
{
  result = qword_101191A68;
  if (!qword_101191A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101191A68);
  }

  return result;
}

unint64_t sub_100482A18(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10109B660, v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

Swift::Int sub_100482A64(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_self();
  v3 = [v2 standardUserDefaults];
  v4 = sub_10010FC20(&unk_10118CD70, &qword_100EBE248);
  sub_100178DD8(&unk_101182910, sub_100178D84, &protocol conformance descriptor for <> Set<A>);
  sub_100178DD8(&unk_101182920, sub_100178E50, &protocol conformance descriptor for <> Set<A>);
  NSUserDefaults.decodeValue<A>(_:forKey:)(v4, v19);

  v5 = v19[0];
  if (v19[0])
  {
    if (*(v19[0] + 16) && (Hasher.init(_seed:)(), String.hash(into:)(), v6 = Hasher._finalize()(), v7 = -1 << *(v5 + 32), v8 = v6 & ~v7, ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0))
    {
      v9 = ~v7;
      while (!*(*(v5 + 48) + v8) || *(*(v5 + 48) + v8) == 2)
      {
        LOBYTE(v10) = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v10 & 1) == 0)
        {
          v8 = (v8 + 1) & v9;
          if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
          {
            continue;
          }
        }

        goto LABEL_11;
      }

      LOBYTE(v10) = 1;
    }

    else
    {
      LOBYTE(v10) = 0;
    }

    goto LABEL_11;
  }

  v11 = [v2 standardUserDefaults];
  v12 = String._bridgeToObjectiveC()();
  v13 = [v11 stringForKey:v12];

  if (!v13)
  {
    goto LABEL_16;
  }

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17._countAndFlagsBits = v14;
  v17._object = v16;
  v10 = _findStringSwitchCase(cases:string:)(&off_101098DD8, v17);

  if (v10 != 1)
  {
    if (!v10)
    {
      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_11;
    }

LABEL_16:
    LOBYTE(v10) = 0;
    return v10 & 1;
  }

LABEL_11:

  return v10 & 1;
}

uint64_t sub_100482D8C(char a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_self();
  v7 = &selRef_objectAtIndexedSubscript_;
  v8 = [v6 standardUserDefaults];
  v9 = sub_10010FC20(&unk_10118CD70, &qword_100EBE248);
  v10 = sub_100178DD8(&unk_101182910, sub_100178D84, &protocol conformance descriptor for <> Set<A>);
  v11 = sub_100178DD8(&unk_101182920, sub_100178E50, &protocol conformance descriptor for <> Set<A>);
  NSUserDefaults.decodeValue<A>(_:forKey:)(v9, v25);

  if (v25[0])
  {
    v12 = v25[0];
  }

  else
  {
    v12 = &_swiftEmptySetSingleton;
  }

  v26 = v12;
  if (a1)
  {
    v21 = v10;
    v22 = v6;
    v23 = a2;
    v24 = a3;
    Hasher.init(_seed:)();
    String.hash(into:)();
    v13 = Hasher._finalize()();
    v14 = -1 << v12[32];
    v15 = v13 & ~v14;
    if ((*&v12[((v15 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v15))
    {
      v16 = ~v14;
      while (!*(*(v12 + 6) + v15) || *(*(v12 + 6) + v15) == 2)
      {
        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v17)
        {
          goto LABEL_12;
        }

        v15 = (v15 + 1) & v16;
        if (((*&v12[((v15 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v15) & 1) == 0)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25[0] = v12;
      sub_1003B54E8(1u, v15, isUniquelyReferenced_nonNull_native);
      v12 = v25[0];
    }

LABEL_12:
    v10 = v21;
    v6 = v22;
    v7 = &selRef_objectAtIndexedSubscript_;
  }

  else
  {
    sub_100194E54(1u);
    v12 = v26;
  }

  v19 = [v6 v7[462]];
  v25[4] = v10;
  v25[5] = v11;
  v25[3] = v9;
  v25[0] = v12;
  NSUserDefaults.encodeValue(_:forKey:)(v25);

  return sub_10000959C(v25);
}

void (*sub_100483050(void *a1, id a2, void *a3))()
{
  v6 = [a2 album];
  v7 = v6;
  if (v6 && (v8 = [v6 artist]) != 0)
  {
    v9 = v8;
    v10 = MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
    v11 = MPModelObject.bestIdentifier(for:)(*v10, 0);
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = [a2 artist];
  if (v14)
  {
    v15 = v14;
    v16 = MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
    v17 = MPModelObject.bestIdentifier(for:)(*v16, 0);
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  static ApplicationCapabilities.shared.getter(v71);
  sub_100014984(v71);
  if (v71[1])
  {
    if (v13 | v19)
    {
      v69 = a3;
      v20 = MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
      v21 = MPModelObject.bestIdentifier(for:)(*v20, 0);
      if (!v22)
      {

        return 0;
      }

      v23 = v21;
      v24 = v22;
      if (v7)
      {
        if (v13)
        {
          v68 = v21;
          if (v11 == v21 && v13 == v22)
          {
            v25 = v7;
          }

          else
          {
            v52 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v51 = v7;

            if ((v52 & 1) == 0)
            {
              goto LABEL_44;
            }
          }

          v53 = *v20;
          v51 = v7;
          MPModelObject.bestIdentifier(for:)(v53, 0);
          v55 = v54;

          if (v55)
          {

            goto LABEL_42;
          }

LABEL_44:

          v23 = v68;
          if (!v19)
          {
            goto LABEL_45;
          }

          goto LABEL_33;
        }
      }

      else
      {
      }

      if (!v19)
      {
LABEL_45:

        goto LABEL_46;
      }

LABEL_33:
      if (v17 == v23 && v19 == v24)
      {
      }

      else
      {
        v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v49 & 1) == 0)
        {
LABEL_46:
          if (qword_10117F798 != -1)
          {
            swift_once();
          }

          v60 = type metadata accessor for Logger();
          sub_1000060E4(v60, qword_101218DE8);
          v61 = a2;
          v37 = Logger.logObject.getter();
          v38 = static os_log_type_t.error.getter();

          if (!os_log_type_enabled(v37, v38))
          {
            goto LABEL_29;
          }

          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v70 = v40;
          *v39 = 136446210;
          v62 = [v61 identifiers];
          v63 = [v62 description];
          v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v66 = v65;

          v67 = sub_1000105AC(v64, v66, &v70);

          *(v39 + 4) = v67;
          v47 = "Failed to create navigation handler to Catalog Artist for Song=%{public}s (No Sidepacked Object)";
LABEL_28:
          _os_log_impl(&_mh_execute_header, v37, v38, v47, v39, 0xCu);
          sub_10000959C(v40);

LABEL_29:

          return 0;
        }
      }

      MPModelObject.bestIdentifier(for:)(*v20, 0);
      if (v50)
      {

        v51 = a2;
LABEL_42:

        v56 = swift_allocObject();
        v56[2] = a2;
        v56[3] = a1;
        v56[4] = v69;
        v57 = a2;
        v58 = a1;
        v59 = v69;
        return sub_1004892A4;
      }

      goto LABEL_46;
    }
  }

  else
  {
  }

  v26 = sub_1004843F8();
  if (!v7 || (v26 & 1) != 0 || (v27 = [v7 artist]) == 0)
  {
LABEL_24:
    if (qword_10117F798 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_1000060E4(v35, qword_101218DE8);
    v36 = a2;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v37, v38))
    {
      goto LABEL_29;
    }

    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v70 = v40;
    *v39 = 136446210;
    v41 = [v36 identifiers];
    v42 = [v41 description];
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    v46 = sub_1000105AC(v43, v45, &v70);

    *(v39 + 4) = v46;
    v47 = "Failed to create navigation handler to Library Artist for Song=%{public}s (No Artist Found)";
    goto LABEL_28;
  }

  v28 = v27;
  v29 = MPIdentifierSet.Purpose.Options.local.unsafeMutableAddressor();
  MPModelObject.bestIdentifier(for:)(*v29, 0);
  if (!v30)
  {

    goto LABEL_24;
  }

  v31 = swift_allocObject();
  v31[2] = a3;
  v31[3] = a2;
  v31[4] = v28;
  v32 = a2;
  v33 = a3;
  return sub_100489250;
}

void (*sub_100483660(void *a1, void *a2, void *a3, void *a4))()
{
  v97 = a4;
  sub_10010FC20(&unk_101191A70, &unk_100EBF360);
  __chkstk_darwin();
  v8 = &v89 - v7;
  v92 = type metadata accessor for MusicLibrary.AddStatus.UnaddableReason();
  v94 = *(v92 - 8);
  __chkstk_darwin();
  v10 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v93 = &v89 - v11;
  sub_10010FC20(&unk_101189DA0, &unk_100EBF370);
  __chkstk_darwin();
  v13 = &v89 - v12;
  v14 = type metadata accessor for GenericMusicItem();
  v95 = *(v14 - 8);
  v96 = v14;
  *&v15 = __chkstk_darwin().n128_u64[0];
  v17 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 trackCount] <= 1)
  {
    if (a2)
    {
      v18 = a2;
    }

    else
    {
      v19 = [a1 representativeSong];
      if (!v19)
      {
LABEL_10:
        v22 = 0;
        goto LABEL_11;
      }

      v18 = v19;
    }

    v20 = a2;
    v21 = [v18 hasVideo];

    if (v21)
    {
      return 0;
    }
  }

  if (!a2)
  {
    goto LABEL_10;
  }

  v22 = [a2 isLibraryAdded];
  if (sub_1004843F8())
  {
    goto LABEL_14;
  }

LABEL_11:
  v23 = MPIdentifierSet.Purpose.Options.local.unsafeMutableAddressor();
  MPModelObject.bestIdentifier(for:)(*v23, 0);
  if (!v24 || (, !((a2 == 0) | v22 & 1)))
  {
LABEL_14:
    static ApplicationCapabilities.shared.getter(v100);
    sub_100014984(v100);
    if (v100[1])
    {
      v31 = objc_allocWithZone(type metadata accessor for ModelObjectBackedStoreItemMetadata());
      v32 = a1;
      v33 = ModelObjectBackedStoreItemMetadata.init(modelObject:)(v32);
      if (v33)
      {

        v34 = swift_allocObject();
        v35 = v97;
        v34[2] = v97;
        v34[3] = a2;
        v34[4] = v32;
        v36 = a2;
        v37 = v35;
        v38 = v32;
        return sub_100489030;
      }
    }

    static ApplicationCapabilities.shared.getter(v101);
    sub_100014984(v101);
    if ((v101[1] & 1) != 0 && a2)
    {
      v39 = a2;
      v40 = MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
      v41 = MPModelObject.bestIdentifier(for:)(*v40, 0);
      if (v42)
      {
        v43 = v41;
        v44 = v42;
        if (a3)
        {
          v45 = [a3 innermostModelObject];
          objc_opt_self();
          v46 = swift_dynamicCastObjCClass();
          if (!v46)
          {
            v47 = v43;

LABEL_39:
            v64 = v97;
LABEL_40:
            v65 = swift_allocObject();
            v65[2] = v64;
            v65[3] = v39;
            v65[4] = v47;
            v65[5] = v44;
            v66 = v64;
            return sub_100488FCC;
          }

          v47 = v43;
          if ([v46 type] == 4)
          {
            v90 = v44;
            v91 = v39;
            GenericMusicItem.init(_:)();
            v49 = v95;
            v48 = v96;
            if ((*(v95 + 48))(v13, 1, v96) == 1)
            {

              v50 = &unk_101189DA0;
              v51 = &unk_100EBF370;
              v52 = v13;
LABEL_44:
              sub_1000095E8(v52, v50, v51);
LABEL_45:
              v64 = v97;
              v44 = v90;
              v39 = v91;
              goto LABEL_40;
            }

            v89 = v45;
            (*(v49 + 32))(v17, v13, v48);
            type metadata accessor for MusicLibrary();
            static MusicLibrary.shared.getter();
            MusicLibrary.state(for:)();

            dispatch thunk of MusicLibrary.GenericItemState.addStatus.getter();

            v67 = type metadata accessor for MusicLibrary.AddStatus();
            v68 = *(v67 - 8);
            if ((*(v68 + 48))(v8, 1, v67) == 1)
            {
              (*(v49 + 8))(v17, v48);

              v50 = &unk_101191A70;
              v51 = &unk_100EBF360;
              v52 = v8;
              goto LABEL_44;
            }

            if ((*(v68 + 88))(v8, v67) != enum case for MusicLibrary.AddStatus.unaddable(_:))
            {
              (*(v49 + 8))(v17, v48);

              (*(v68 + 8))(v8, v67);
              goto LABEL_45;
            }

            (*(v68 + 96))(v8, v67);
            v69 = v93;
            v70 = v94;
            v71 = v92;
            (*(v94 + 32))(v93, v8, v92);
            (*(v70 + 104))(v10, enum case for MusicLibrary.AddStatus.UnaddableReason.subscriptionRequired(_:), v71);
            sub_100488FD8();
            v72 = dispatch thunk of static Equatable.== infix(_:_:)();
            v75 = *(v70 + 8);
            v73 = v70 + 8;
            v74 = v75;
            v75(v10, v71);
            if (v72)
            {

              v74(v69, v71);
              (*(v95 + 8))(v17, v96);
              goto LABEL_45;
            }

            if (qword_10117F798 != -1)
            {
              swift_once();
            }

            v76 = type metadata accessor for Logger();
            sub_1000060E4(v76, qword_101218DE8);
            v77 = v91;
            v78 = Logger.logObject.getter();
            v79 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v78, v79))
            {
              v80 = swift_slowAlloc();
              v91 = v80;
              v97 = swift_slowAlloc();
              v99 = v97;
              *v80 = 136446210;
              v81 = [v77 identifiers];
              v94 = v73;
              v82 = v81;
              v83 = [v81 description];
              v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v86 = v85;

              v87 = sub_1000105AC(v84, v86, &v99);

              v88 = v91;
              *(v91 + 4) = v87;
              _os_log_impl(&_mh_execute_header, v78, v79, "Failed to create navigation handler to Album for Song=%{public}s because a radio station is playing an unaddable song or speaking.", v88, 0xCu);
              sub_10000959C(v97);

              v74(v93, v92);
            }

            else
            {

              v74(v93, v71);
            }

            (*(v95 + 8))(v17, v96);
            return 0;
          }
        }

        else
        {
          v47 = v41;
        }

        goto LABEL_39;
      }
    }

    if (qword_10117F798 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    sub_1000060E4(v53, qword_101218DE8);
    v54 = a2;
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v99 = v58;
      *v57 = 136446210;
      if (a2)
      {
        v59 = [v54 identifiers];
      }

      else
      {
        v59 = 0;
      }

      v98 = v59;
      sub_10010FC20(&qword_101191A80, &qword_100ECECA8);
      v60 = String.init<A>(describing:)();
      v62 = sub_1000105AC(v60, v61, &v99);

      *(v57 + 4) = v62;
      _os_log_impl(&_mh_execute_header, v55, v56, "Failed to create navigation handler to Album for Song=%{public}s", v57, 0xCu);
      sub_10000959C(v58);
    }

    return 0;
  }

  v25 = swift_allocObject();
  v26 = v97;
  v25[2] = v97;
  v25[3] = a2;
  v25[4] = a1;
  v27 = a2;
  v28 = v26;
  v29 = a1;
  return sub_10048903C;
}

void (*sub_1004840C8(void *a1, void *a2, void *a3))()
{
  v6 = [a1 type];
  if (a2 && (sub_1004843F8() & 1) != 0 || ![a1 isLibraryAdded] || (v7 = MPIdentifierSet.Purpose.Options.local.unsafeMutableAddressor(), MPModelObject.bestIdentifier(for:)(*v7, 0), !v8))
  {
    static ApplicationCapabilities.shared.getter(v33);
    sub_100014984(v33);
    if ((v33[1] & 1) != 0 && (v14 = objc_allocWithZone(type metadata accessor for ModelObjectBackedStoreItemMetadata()), v15 = a1, (v16 = ModelObjectBackedStoreItemMetadata.init(modelObject:)(v15)) != 0))
    {

      v17 = swift_allocObject();
      v17[2] = a3;
      v17[3] = a2;
      v17[4] = v15;
      v18 = a2;
      v19 = v15;
      v20 = a3;
      return sub_100489160;
    }

    else
    {
      if (qword_10117F798 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_1000060E4(v21, qword_101218DE8);
      v22 = a2;
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        *v25 = 136315394;
        if (v6 == 3)
        {
          v26 = 0xEF7265646C6F4620;
        }

        else
        {
          v26 = 0xE800000000000000;
        }

        v27 = sub_1000105AC(0x7473696C79616C50, v26, &v32);

        *(v25 + 4) = v27;
        *(v25 + 12) = 2082;
        if (a2)
        {
          v28 = [v22 identifiers];
        }

        sub_10010FC20(&qword_101191A80, &qword_100ECECA8);
        v29 = String.init<A>(describing:)();
        v31 = sub_1000105AC(v29, v30, &v32);

        *(v25 + 14) = v31;
        _os_log_impl(&_mh_execute_header, v23, v24, "Failed to create navigation handler to %s for Song=%{public}s", v25, 0x16u);
        swift_arrayDestroy();
      }

      return 0;
    }
  }

  else
  {

    v9 = swift_allocObject();
    *(v9 + 16) = a3;
    *(v9 + 24) = v6 == 3;
    *(v9 + 32) = a2;
    *(v9 + 40) = a1;
    v10 = a2;
    v11 = a1;
    v12 = a3;
    return sub_10048916C;
  }
}

uint64_t sub_1004843F8()
{
  v1 = [v0 identifiers];
  v2 = [v1 library];

  if (v2)
  {
    v3 = [v2 databaseID];
    swift_unknownObjectRelease();
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v7 = [objc_opt_self() deviceMediaLibrary];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 uniqueIdentifier];

      if (v9)
      {
        v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = v11;

        if (v4 != v10 || v6 != v12)
        {
          v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v13 = v15 ^ 1;
          return v13 & 1;
        }
      }
    }
  }

  v13 = 0;
  return v13 & 1;
}

void sub_100484558(void *a1, void *a2, void *a3)
{
  v68 = a3;
  v69 = a2;
  v4 = type metadata accessor for UITraitOverrides();
  v67 = *(v4 - 8);
  __chkstk_darwin();
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for AppInterfaceContext.Activity(0);
  v7 = *(v66 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  __chkstk_darwin();
  v10 = &v56 - v9;
  __chkstk_darwin();
  v12 = &v56 - v11;
  type metadata accessor for ContainerDetail.Source(0);
  *&v13 = __chkstk_darwin().n128_u64[0];
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a1 delegate];
  if (!v16 || (v65 = v7, v74 = v16, sub_10010FC20(&unk_101184050, &unk_100EBFA30), sub_10010FC20(&unk_101184EB0, &qword_100ED56D0), (swift_dynamicCast() & 1) == 0))
  {
    v72 = 0;
    aBlock = 0u;
    v71 = 0u;
    goto LABEL_11;
  }

  if (!*(&v71 + 1))
  {
LABEL_11:
    sub_1000095E8(&aBlock, &unk_101184EA0, &unk_100EBFA20);
    return;
  }

  v17 = *(*sub_10000954C(&aBlock, *(&v71 + 1)) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

  sub_10000959C(&aBlock);
  v64 = v17;
  if (v17)
  {
    v61 = v12;
    v62 = v4;
    if (qword_10117F798 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000060E4(v18, qword_101218DE8);
    v19 = v69;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    v63 = v19;

    v22 = v21;
    v23 = os_log_type_enabled(v20, v21);
    v59 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v60 = v10;
    if (v23)
    {
      v24 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *&aBlock = v57;
      v58 = v24;
      *v24 = 136446210;
      v25 = v20;
      if (v69)
      {
        v26 = [v63 identifiers];
      }

      else
      {
        v26 = 0;
      }

      v74 = v26;
      sub_10010FC20(&qword_101191A80, &qword_100ECECA8);
      v27 = String.init<A>(describing:)();
      v29 = sub_1000105AC(v27, v28, &aBlock);

      v30 = v58;
      *(v58 + 1) = v29;
      _os_log_impl(&_mh_execute_header, v25, v22, "Pushing to Library Album for Song=%{public}s", v30, 0xCu);
      sub_10000959C(v57);
    }

    else
    {
    }

    v31 = v61;
    v32 = v62;
    v33 = sub_10010FC20(&qword_10118A430, &qword_100EC8F70);
    v34 = *(v33 + 48);
    v35 = *(v33 + 64);
    v36 = _s6AlbumsV5ScopeOMa(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v36 - 8) + 56))(v15, 0, 1, v36);
    v15[v34] = 0;
    v15[v35] = 0;
    swift_storeEnumTagMultiPayload();
    v37 = v63;
    v38 = v68;
    v39 = sub_1006A9254(v38, v15, v69);
    if (v39)
    {
      v40 = v39;
      v41 = swift_allocObject();
      *(v41 + 16) = v64;
      *(v41 + 24) = v40;

      v42 = v40;
      v43 = UIWindowScene.rootViewController.getter();
      if (v43)
      {
        v44 = v43;
        v45 = [v43 presentedViewController];
        if (v45)
        {

          v46 = swift_allocObject();
          *(v46 + 16) = sub_100489048;
          *(v46 + 24) = v41;
          v72 = sub_100029B6C;
          v73 = v46;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          *&v71 = sub_10002BC98;
          *(&v71 + 1) = &unk_1010AE018;
          v47 = _Block_copy(&aBlock);

          [v44 dismissViewControllerAnimated:1 completion:v47];

          _Block_release(v47);

          return;
        }
      }

      v48 = &v31[*(sub_10010FC20(&unk_1011841E0, &unk_100ECDA60) + 48)];
      v49 = *(sub_10010FC20(&unk_10118CE00, L"F\n.") + 48);
      *v31 = v42;
      v50 = v42;
      UIViewController.traitOverrides.getter();
      type metadata accessor for MusicLibrary();
      *&aBlock = static MusicLibrary.shared.getter();
      sub_100137E8C();
      dispatch thunk of UIMutableTraits.subscript.setter();
      v51 = v67;
      (*(v67 + 16))(&v31[v49], v6, v32);
      UIViewController.traitOverrides.setter();
      (*(v51 + 56))(&v31[v49], 0, 1, v32);
      type metadata accessor for AppInterfaceContext.Activity.Destination(0);
      swift_storeEnumTagMultiPayload();
      *v48 = 0;
      *(v48 + 1) = 0;
      swift_storeEnumTagMultiPayload();
      v52 = v60;
      sub_100137EE0(v31, v60, type metadata accessor for AppInterfaceContext.Activity);
      v53 = v59;
      sub_100137EE0(v52, v59, type metadata accessor for AppInterfaceContext.Activity);
      v54 = (*(v65 + 80) + 32) & ~*(v65 + 80);
      v55 = swift_allocObject();
      *(v55 + 16) = 0;
      *(v55 + 24) = 0;
      sub_100115BB4(v53, v55 + v54);
      sub_100706900(v52, sub_100137E88, v55);

      sub_1001385B8(v52, type metadata accessor for AppInterfaceContext.Activity);
      sub_1001385B8(v31, type metadata accessor for AppInterfaceContext.Activity);
    }

    else
    {
    }
  }
}

void sub_100484D44(void *a1, void *a2, void *a3)
{
  v79 = a2;
  v5 = type metadata accessor for UITraitOverrides();
  v76 = *(v5 - 8);
  __chkstk_darwin();
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AppInterfaceContext.Activity(0);
  v77 = *(v8 - 8);
  v9 = *(v77 + 64);
  __chkstk_darwin();
  v78 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v66 - v10;
  __chkstk_darwin();
  v13 = &v66 - v12;
  type metadata accessor for ContainerDetail.Source(0);
  *&v14 = __chkstk_darwin().n128_u64[0];
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a1 delegate];
  if (!v17 || (v75 = v13, v84 = v17, sub_10010FC20(&unk_101184050, &unk_100EBFA30), sub_10010FC20(&unk_101184EB0, &qword_100ED56D0), (swift_dynamicCast() & 1) == 0))
  {
    v82 = 0;
    aBlock = 0u;
    v81 = 0u;
    goto LABEL_11;
  }

  if (!*(&v81 + 1))
  {
LABEL_11:
    sub_1000095E8(&aBlock, &unk_101184EA0, &unk_100EBFA20);
    return;
  }

  v18 = *(*sub_10000954C(&aBlock, *(&v81 + 1)) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

  sub_10000959C(&aBlock);
  if (v18)
  {
    v71 = v7;
    v72 = v5;
    v73 = v8;
    v74 = v18;
    if (qword_10117F798 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000060E4(v19, qword_101218DE8);
    v20 = v79;
    v21 = v79;
    v22 = a3;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    v70 = v22;

    v69 = v21;
    v25 = os_log_type_enabled(v23, v24);
    v68 = v11;
    if (v25)
    {
      v26 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *&aBlock = v67;
      v27 = v26;
      *v26 = 136446466;
      v28 = v24;
      if (v20)
      {
        v29 = v23;
        v30 = [v69 identifiers];
      }

      else
      {
        v29 = v23;
        v30 = 0;
      }

      v84 = v30;
      sub_10010FC20(&qword_101191A80, &qword_100ECECA8);
      v31 = String.init<A>(describing:)();
      v33 = sub_1000105AC(v31, v32, &aBlock);

      *(v26 + 4) = v33;
      *(v26 + 12) = 2082;
      v34 = [v70 identifiers];
      v35 = [v34 description];
      v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      v38 = sub_1000105AC(v66, v37, &aBlock);

      *(v27 + 14) = v38;
      v23 = v29;
      _os_log_impl(&_mh_execute_header, v29, v28, "Pushing to Catalog Album for Song=%{public}s using Album =%{public}s", v27, 0x16u);
      swift_arrayDestroy();
    }

    v39 = v75;
    v40 = v72;
    v41 = v71;
    v42 = UIWindowScene.rootViewController.getter();
    if (v42 && (v43 = v42, v44 = [v42 traitCollection], v43, LOBYTE(v43) = UITraitCollection.isMediaPicker.getter(), v44, (v43 & 1) == 0) && (*v16 = 1, swift_storeEnumTagMultiPayload(), v45 = v69, v46 = v70, (v47 = sub_1006A9254(v46, v16, v79)) != 0))
    {
      v48 = v47;
      v49 = swift_allocObject();
      v49[2] = v74;
      v49[3] = v48;

      v50 = v48;
      v51 = UIWindowScene.rootViewController.getter();
      if (v51)
      {
        v52 = v51;
        v53 = [v51 presentedViewController];
        if (v53)
        {

          v54 = swift_allocObject();
          *(v54 + 16) = sub_100489080;
          *(v54 + 24) = v49;
          v82 = sub_1001D3174;
          v83 = v54;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          *&v81 = sub_10002BC98;
          *(&v81 + 1) = &unk_1010AE0E0;
          v55 = _Block_copy(&aBlock);

          [v52 dismissViewControllerAnimated:1 completion:v55];

          _Block_release(v55);

          return;
        }
      }

      v56 = &v39[*(sub_10010FC20(&unk_1011841E0, &unk_100ECDA60) + 48)];
      v57 = sub_10010FC20(&unk_10118CE00, L"F\n.");
      v79 = v49;
      v58 = v39;
      v59 = *(v57 + 48);
      *v58 = v50;
      v60 = v50;
      UIViewController.traitOverrides.getter();
      type metadata accessor for MusicLibrary();
      *&aBlock = static MusicLibrary.shared.getter();
      sub_100137E8C();
      dispatch thunk of UIMutableTraits.subscript.setter();
      v61 = v76;
      (*(v76 + 16))(&v58[v59], v41, v40);
      UIViewController.traitOverrides.setter();
      (*(v61 + 56))(&v58[v59], 0, 1, v40);
      type metadata accessor for AppInterfaceContext.Activity.Destination(0);
      swift_storeEnumTagMultiPayload();
      *v56 = 0;
      *(v56 + 1) = 0;
      swift_storeEnumTagMultiPayload();
      v62 = v68;
      sub_100137EE0(v58, v68, type metadata accessor for AppInterfaceContext.Activity);
      v63 = v78;
      sub_100137EE0(v62, v78, type metadata accessor for AppInterfaceContext.Activity);
      v64 = (*(v77 + 80) + 32) & ~*(v77 + 80);
      v65 = swift_allocObject();
      *(v65 + 16) = 0;
      *(v65 + 24) = 0;
      sub_100115BB4(v63, v65 + v64);
      sub_100706900(v62, sub_100139B24, v65);

      sub_1001385B8(v62, type metadata accessor for AppInterfaceContext.Activity);
      sub_1001385B8(v58, type metadata accessor for AppInterfaceContext.Activity);
    }

    else
    {
    }
  }
}

uint64_t sub_10048559C(uint64_t a1, void *a2, uint64_t a3, void (*a4)(uint64_t))
{
  v28 = a1;
  v29 = a4;
  v27 = a3;
  v5 = type metadata accessor for UITraitOverrides();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AppInterfaceContext.Activity(0);
  v10 = *(v9 - 8);
  v25 = v9;
  v26 = v10;
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v24 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v23 - v12;
  __chkstk_darwin();
  v15 = &v23 - v14;
  v16 = (&v23 + *(sub_10010FC20(&unk_1011841E0, &unk_100ECDA60) + 48) - v14);
  v17 = *(sub_10010FC20(&unk_10118CE00, L"F\n.") + 48);
  *v15 = a2;
  v18 = a2;
  UIViewController.traitOverrides.getter();
  type metadata accessor for MusicLibrary();
  v30 = static MusicLibrary.shared.getter();
  sub_100137E8C();
  dispatch thunk of UIMutableTraits.subscript.setter();
  (*(v6 + 16))(&v15[v17], v8, v5);
  UIViewController.traitOverrides.setter();
  (*(v6 + 56))(&v15[v17], 0, 1, v5);
  type metadata accessor for AppInterfaceContext.Activity.Destination(0);
  swift_storeEnumTagMultiPayload();
  *v16 = 0;
  v16[1] = 0;
  swift_storeEnumTagMultiPayload();
  sub_100137EE0(v15, v13, type metadata accessor for AppInterfaceContext.Activity);
  v19 = v24;
  sub_100137EE0(v13, v24, type metadata accessor for AppInterfaceContext.Activity);
  v20 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  sub_100115BB4(v19, v21 + v20);
  sub_100706900(v13, v29, v21);

  sub_1001385B8(v13, type metadata accessor for AppInterfaceContext.Activity);
  return sub_1001385B8(v15, type metadata accessor for AppInterfaceContext.Activity);
}

void sub_1004858B8(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v78 = a3;
  v79 = a4;
  v6 = type metadata accessor for UITraitOverrides();
  v74 = *(v6 - 8);
  v75 = v6;
  __chkstk_darwin();
  v72 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for AppInterfaceContext.Activity(0);
  v76 = *(v73 - 8);
  v8 = *(v76 + 64);
  __chkstk_darwin();
  v77 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v64 - v9;
  __chkstk_darwin();
  v12 = &v64 - v11;
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v64 - v15;
  type metadata accessor for ContainerDetail.Source(0);
  __chkstk_darwin();
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v19 = __chkstk_darwin().n128_u64[0];
  v21 = &v64 - v20;
  v22 = [a1 delegate];
  if (!v22 || (v71 = v12, v84[0] = v22, sub_10010FC20(&unk_101184050, &unk_100EBFA30), sub_10010FC20(&unk_101184EB0, &qword_100ED56D0), (swift_dynamicCast() & 1) == 0))
  {
    v82 = 0;
    aBlock = 0u;
    v81 = 0u;
    goto LABEL_10;
  }

  if (!*(&v81 + 1))
  {
LABEL_10:
    sub_1000095E8(&aBlock, &unk_101184EA0, &unk_100EBFA20);
    return;
  }

  v23 = *(*sub_10000954C(&aBlock, *(&v81 + 1)) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

  sub_10000959C(&aBlock);
  v70 = v23;
  if (v23)
  {
    v68 = v10;
    if (qword_10117F798 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_1000060E4(v24, qword_101218DE8);
    v25 = a2;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    v69 = v27;
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v66 = v28;
      v67 = swift_slowAlloc();
      *&aBlock = v67;
      *v28 = 136446210;
      v29 = [v25 identifiers];
      v30 = [v29 description];
      v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v65 = v26;
      v32 = v31;

      v33 = sub_1000105AC(v64, v32, &aBlock);

      v34 = v66;
      *(v66 + 1) = v33;
      v35 = v65;
      _os_log_impl(&_mh_execute_header, v65, v69, "Pushing to Catalog Album using Song=%{public}s", v34, 0xCu);
      sub_10000959C(v67);
    }

    else
    {
    }

    v36 = UIWindowScene.rootViewController.getter();
    if (!v36 || (v37 = v36, v38 = [v36 traitCollection], v37, LOBYTE(v37) = UITraitCollection.isMediaPicker.getter(), v38, (v37 & 1) != 0))
    {

      return;
    }

    v39 = MusicItemID.init(_:)();
    v41 = v40;
    *v21 = 1;
    swift_storeEnumTagMultiPayload();
    v42 = type metadata accessor for URL();
    (*(*(v42 - 8) + 56))(v16, 1, 1, v42);
    sub_100137EE0(v21, v18, type metadata accessor for ContainerDetail.Source);
    sub_1004890B8(v16, v14);
    v43 = sub_1004E5248(v39, v41, v18, v14);
    v44 = objc_allocWithZone(type metadata accessor for ContainerDetail.ViewController(0));
    v45 = sub_100137F64(v43, v44);
    sub_1000095E8(v16, &qword_101183A20, &unk_100EBCF80);
    sub_1001385B8(v21, type metadata accessor for ContainerDetail.Source);
    v46 = swift_allocObject();
    *(v46 + 16) = v70;
    *(v46 + 24) = v45;

    v47 = v45;
    v48 = UIWindowScene.rootViewController.getter();
    v49 = v71;
    if (v48)
    {
      v50 = v48;
      v51 = [v48 presentedViewController];
      if (v51)
      {

        v52 = swift_allocObject();
        *(v52 + 16) = sub_100489128;
        *(v52 + 24) = v46;
        v82 = sub_1001D3174;
        v83 = v52;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v81 = sub_10002BC98;
        *(&v81 + 1) = &unk_1010AE1A8;
        v53 = _Block_copy(&aBlock);

        [v50 dismissViewControllerAnimated:1 completion:v53];

        _Block_release(v53);

        return;
      }
    }

    v54 = &v49[*(sub_10010FC20(&unk_1011841E0, &unk_100ECDA60) + 48)];
    v55 = *(sub_10010FC20(&unk_10118CE00, L"F\n.") + 48);
    *v49 = v47;
    v56 = v47;
    v57 = v72;
    UIViewController.traitOverrides.getter();
    type metadata accessor for MusicLibrary();
    *&aBlock = static MusicLibrary.shared.getter();
    sub_100137E8C();
    v58 = v75;
    dispatch thunk of UIMutableTraits.subscript.setter();
    v59 = v74;
    (*(v74 + 16))(&v49[v55], v57, v58);
    UIViewController.traitOverrides.setter();
    (*(v59 + 56))(&v49[v55], 0, 1, v58);
    type metadata accessor for AppInterfaceContext.Activity.Destination(0);
    swift_storeEnumTagMultiPayload();
    *v54 = 0;
    *(v54 + 1) = 0;
    swift_storeEnumTagMultiPayload();
    v60 = v68;
    sub_100137EE0(v49, v68, type metadata accessor for AppInterfaceContext.Activity);
    v61 = v77;
    sub_100137EE0(v60, v77, type metadata accessor for AppInterfaceContext.Activity);
    v62 = (*(v76 + 80) + 32) & ~*(v76 + 80);
    v63 = swift_allocObject();
    *(v63 + 16) = 0;
    *(v63 + 24) = 0;
    sub_100115BB4(v61, v63 + v62);
    sub_100706900(v60, sub_100139B24, v63);

    sub_1001385B8(v60, type metadata accessor for AppInterfaceContext.Activity);
    sub_1001385B8(v49, type metadata accessor for AppInterfaceContext.Activity);
  }
}

void sub_1004861E0(void *a1, int a2, void (*a3)(char *, char *, uint64_t), void *a4)
{
  v134 = a4;
  v136 = a3;
  LODWORD(v135) = a2;
  type metadata accessor for ContainerDetail.Source(0);
  __chkstk_darwin();
  v6 = &v111 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UITraitOverrides();
  v126 = *(v7 - 8);
  v127 = v7;
  __chkstk_darwin();
  v125 = &v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s9PlaylistsV5ScopeVMa(0);
  __chkstk_darwin();
  v123 = (&v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for AppInterfaceContext.Activity(0);
  v12 = *(v11 - 8);
  v128 = v11;
  v129 = v12;
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v124 = &v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v111 - v14;
  __chkstk_darwin();
  v17 = &v111 - v16;
  __chkstk_darwin();
  v122 = (&v111 - v18);
  sub_10010FC20(&unk_10118F670, &unk_100EC89B0);
  __chkstk_darwin();
  v20 = &v111 - v19;
  v21 = type metadata accessor for Playlist.Folder();
  v132 = *(v21 - 8);
  v133 = v21;
  v22 = *(v132 + 64);
  __chkstk_darwin();
  v131 = &v111 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v24 = &v111 - v23;
  *&v25 = __chkstk_darwin().n128_u64[0];
  v130 = &v111 - v26;
  v27 = [a1 delegate];
  if (!v27 || (v121 = v15, v141 = v27, sub_10010FC20(&unk_101184050, &unk_100EBFA30), sub_10010FC20(&unk_101184EB0, &qword_100ED56D0), (swift_dynamicCast() & 1) == 0))
  {
    v139 = 0;
    aBlock = 0u;
    v138 = 0u;
    goto LABEL_14;
  }

  if (!*(&v138 + 1))
  {
LABEL_14:
    sub_1000095E8(&aBlock, &unk_101184EA0, &unk_100EBFA20);
    return;
  }

  v28 = *(*sub_10000954C(&aBlock, *(&v138 + 1)) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

  sub_10000959C(&aBlock);
  if (!v28)
  {
    return;
  }

  v115 = v9;
  v119 = a1;
  v120 = v28;
  if (qword_10117F798 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_1000060E4(v29, qword_101218DE8);
  v30 = v136;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  v118 = v30;

  v117 = v32;
  v33 = os_log_type_enabled(v31, v32);
  v116 = v17;
  if (v33)
  {
    v114 = v31;
    v34 = swift_slowAlloc();
    v112 = swift_slowAlloc();
    *&aBlock = v112;
    *v34 = 136315394;
    if (v135)
    {
      v35 = 0xEF7265646C6F4620;
    }

    else
    {
      v35 = 0xE800000000000000;
    }

    v36 = sub_1000105AC(0x7473696C79616C50, v35, &aBlock);

    *(v34 + 4) = v36;
    v113 = v34;
    *(v34 + 12) = 2082;
    if (v136)
    {
      v37 = [v118 identifiers];
    }

    else
    {
      v37 = 0;
    }

    v141 = v37;
    sub_10010FC20(&qword_101191A80, &qword_100ECECA8);
    v38 = String.init<A>(describing:)();
    v40 = sub_1000105AC(v38, v39, &aBlock);

    v41 = v113;
    *(v113 + 14) = v40;
    v31 = v114;
    _os_log_impl(&_mh_execute_header, v114, v117, "Pushing to Library %s for Song=%{public}s", v41, 0x16u);
    swift_arrayDestroy();
  }

  v42 = UIWindowScene.rootViewController.getter();
  if (!v42)
  {
    goto LABEL_27;
  }

  v43 = v42;
  v44 = [v42 traitCollection];

  LOBYTE(v43) = UITraitCollection.isMediaPicker.getter();
  if (v43)
  {
    goto LABEL_27;
  }

  v45 = v116;
  if ((v135 & 1) == 0)
  {
LABEL_23:
    v49 = sub_10010FC20(&qword_10118A430, &qword_100EC8F70);
    v50 = *(v49 + 48);
    v51 = *(v49 + 64);
    v52 = _s6AlbumsV5ScopeOMa(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v52 - 8) + 56))(v6, 0, 1, v52);
    v6[v50] = 0;
    v6[v51] = 0;
    swift_storeEnumTagMultiPayload();
    v53 = v118;
    v54 = v134;
    v55 = sub_1006A99C4(v54, v6, v136, 1);
    if (v55)
    {
      v56 = v55;
      v57 = swift_allocObject();
      *(v57 + 16) = v120;
      *(v57 + 24) = v56;

      v58 = v56;
      v59 = UIWindowScene.rootViewController.getter();
      if (v59)
      {
        v60 = v59;
        v61 = [v59 presentedViewController];
        if (v61)
        {

          v62 = swift_allocObject();
          *(v62 + 16) = sub_10048917C;
          *(v62 + 24) = v57;
          v139 = sub_1001D3174;
          v140 = v62;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          *&v138 = sub_10002BC98;
          *(&v138 + 1) = &unk_1010AE2C0;
          v63 = _Block_copy(&aBlock);

          [v60 dismissViewControllerAnimated:1 completion:v63];

          _Block_release(v63);

          return;
        }
      }

      v78 = &v45[*(sub_10010FC20(&unk_1011841E0, &unk_100ECDA60) + 48)];
      v79 = *(sub_10010FC20(&unk_10118CE00, L"F\n.") + 48);
      *v45 = v58;
      v80 = v58;
      v81 = v125;
      UIViewController.traitOverrides.getter();
      type metadata accessor for MusicLibrary();
      *&aBlock = static MusicLibrary.shared.getter();
      sub_100137E8C();
      v82 = v127;
      dispatch thunk of UIMutableTraits.subscript.setter();
      v83 = v126;
      (*(v126 + 16))(&v45[v79], v81, v82);
      UIViewController.traitOverrides.setter();
      (*(v83 + 56))(&v45[v79], 0, 1, v82);
      type metadata accessor for AppInterfaceContext.Activity.Destination(0);
      swift_storeEnumTagMultiPayload();
      *v78 = 0;
      *(v78 + 1) = 0;
      swift_storeEnumTagMultiPayload();
      v84 = v121;
      sub_100137EE0(v45, v121, type metadata accessor for AppInterfaceContext.Activity);
      v85 = v124;
      sub_100137EE0(v84, v124, type metadata accessor for AppInterfaceContext.Activity);
      v86 = (*(v129 + 80) + 32) & ~*(v129 + 80);
      v87 = swift_allocObject();
      *(v87 + 16) = 0;
      *(v87 + 24) = 0;
      sub_100115BB4(v85, v87 + v86);
      sub_100706900(v84, sub_100139B24, v87);

      sub_1001385B8(v84, type metadata accessor for AppInterfaceContext.Activity);
      sub_1001385B8(v45, type metadata accessor for AppInterfaceContext.Activity);
      return;
    }

LABEL_27:

    return;
  }

  v46 = v134;
  v47 = v133;
  dispatch thunk of LegacyModelObjectConvertible.init(_:)();
  v48 = v132;
  if ((*(v132 + 48))(v20, 1, v47) == 1)
  {
    sub_1000095E8(v20, &unk_10118F670, &unk_100EC89B0);
    v45 = v116;
    goto LABEL_23;
  }

  v64 = *(v48 + 32);
  v65 = v130;
  v64(v130, v20, v47);
  v66 = *(v48 + 16);
  v66(v24, v65, v47);
  v136 = v66;
  v66(v131, v24, v47);
  v67 = (*(v48 + 80) + 24) & ~*(v48 + 80);
  v68 = swift_allocObject();
  *(v68 + 16) = v120;
  v64((v68 + v67), v24, v47);
  v69 = v115;

  v70 = UIWindowScene.rootViewController.getter();
  v71 = v123;
  if (v70)
  {
    v72 = v70;
    v73 = [v70 presentedViewController];
    if (v73)
    {

      v74 = swift_allocObject();
      *(v74 + 16) = sub_1004891B4;
      *(v74 + 24) = v68;
      v139 = sub_1001D3174;
      v140 = v74;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v138 = sub_10002BC98;
      *(&v138 + 1) = &unk_1010AE388;
      v75 = _Block_copy(&aBlock);

      [v72 dismissViewControllerAnimated:1 completion:v75];
      _Block_release(v75);

      v76 = *(v132 + 8);
      v77 = v133;
      v76(v131, v133);
      v76(v130, v77);
      return;
    }
  }

  v135 = v68;
  v88 = *(v69 + 20);
  v89 = v133;
  v136(v71 + v88, v131, v133);
  v90 = v132;
  (*(v132 + 56))(v71 + v88, 0, 1, v89);
  if (qword_10117F5D8 != -1)
  {
    swift_once();
  }

  *v71 = qword_101218AB8;
  *(v71 + *(v69 + 24)) = 0;
  v91 = objc_opt_self();

  v92 = [v91 currentTraitCollection];
  v93 = [v92 horizontalSizeClass];

  v94 = objc_allocWithZone(type metadata accessor for LibraryPlaylistsViewController(0));
  v95 = sub_10037E11C(v71, 0, v93 != 2);
  v96 = sub_10010FC20(&unk_1011841E0, &unk_100ECDA60);
  v97 = v122;
  v98 = (v122 + *(v96 + 48));
  v99 = *(sub_10010FC20(&unk_10118CE00, L"F\n.") + 48);
  *v97 = v95;
  v100 = v95;
  v101 = v125;
  UIViewController.traitOverrides.getter();
  type metadata accessor for MusicLibrary();
  *&aBlock = static MusicLibrary.shared.getter();
  sub_100137E8C();
  v102 = v127;
  dispatch thunk of UIMutableTraits.subscript.setter();
  v103 = v126;
  (*(v126 + 16))(v97 + v99, v101, v102);
  UIViewController.traitOverrides.setter();

  (*(v103 + 56))(v97 + v99, 0, 1, v102);
  type metadata accessor for AppInterfaceContext.Activity.Destination(0);
  swift_storeEnumTagMultiPayload();
  v104 = swift_allocObject();
  *(v104 + 16) = v100;
  *v98 = sub_100137E80;
  v98[1] = v104;
  swift_storeEnumTagMultiPayload();
  v105 = v116;
  sub_100137EE0(v97, v116, type metadata accessor for AppInterfaceContext.Activity);
  v106 = v121;
  sub_100137EE0(v105, v121, type metadata accessor for AppInterfaceContext.Activity);
  v107 = (*(v129 + 80) + 32) & ~*(v129 + 80);
  v108 = swift_allocObject();
  *(v108 + 16) = 0;
  *(v108 + 24) = 0;
  sub_100115BB4(v106, v108 + v107);
  sub_100706900(v105, sub_100139B24, v108);

  sub_1001385B8(v105, type metadata accessor for AppInterfaceContext.Activity);
  sub_1001385B8(v97, type metadata accessor for AppInterfaceContext.Activity);
  v109 = *(v90 + 8);
  v110 = v133;
  v109(v131, v133);
  v109(v130, v110);
}

uint64_t sub_10048722C(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v38 = a1;
  v36 = type metadata accessor for UITraitOverrides();
  v2 = *(v36 - 8);
  __chkstk_darwin();
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s9PlaylistsV5ScopeVMa(0);
  __chkstk_darwin();
  v7 = (&v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for AppInterfaceContext.Activity(0);
  v9 = *(v8 - 8);
  v34 = v8;
  v35 = v9;
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v37 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v32 - v11;
  __chkstk_darwin();
  v14 = (&v32 - v13);
  v15 = *(v5 + 20);
  v16 = type metadata accessor for Playlist.Folder();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v7 + v15, v33, v16);
  (*(v17 + 56))(v7 + v15, 0, 1, v16);
  if (qword_10117F5D8 != -1)
  {
    swift_once();
  }

  *v7 = qword_101218AB8;
  *(v7 + *(v5 + 24)) = 0;
  v18 = objc_opt_self();

  v19 = [v18 currentTraitCollection];
  v20 = [v19 horizontalSizeClass];

  v21 = objc_allocWithZone(type metadata accessor for LibraryPlaylistsViewController(0));
  v22 = sub_10037E11C(v7, 0, v20 != 2);
  v23 = (v14 + *(sub_10010FC20(&unk_1011841E0, &unk_100ECDA60) + 48));
  v24 = *(sub_10010FC20(&unk_10118CE00, L"F\n.") + 48);
  *v14 = v22;
  v25 = v22;
  UIViewController.traitOverrides.getter();
  type metadata accessor for MusicLibrary();
  v39 = static MusicLibrary.shared.getter();
  sub_100137E8C();
  v26 = v36;
  dispatch thunk of UIMutableTraits.subscript.setter();
  (*(v2 + 16))(v14 + v24, v4, v26);
  UIViewController.traitOverrides.setter();

  (*(v2 + 56))(v14 + v24, 0, 1, v26);
  type metadata accessor for AppInterfaceContext.Activity.Destination(0);
  swift_storeEnumTagMultiPayload();
  v27 = swift_allocObject();
  *(v27 + 16) = v25;
  *v23 = sub_100489408;
  v23[1] = v27;
  swift_storeEnumTagMultiPayload();
  sub_100137EE0(v14, v12, type metadata accessor for AppInterfaceContext.Activity);
  v28 = v37;
  sub_100137EE0(v12, v37, type metadata accessor for AppInterfaceContext.Activity);
  v29 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  sub_100115BB4(v28, v30 + v29);
  sub_100706900(v12, sub_100139B24, v30);

  sub_1001385B8(v12, type metadata accessor for AppInterfaceContext.Activity);
  return sub_1001385B8(v14, type metadata accessor for AppInterfaceContext.Activity);
}

void sub_100487714(void *a1, void *a2, void *a3)
{
  v69 = a3;
  v70 = a2;
  v4 = type metadata accessor for UITraitOverrides();
  v67 = *(v4 - 8);
  __chkstk_darwin();
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AppInterfaceContext.Activity(0);
  v68 = *(v7 - 8);
  v8 = *(v68 + 64);
  __chkstk_darwin();
  __chkstk_darwin();
  v10 = &v57 - v9;
  __chkstk_darwin();
  v12 = &v57 - v11;
  type metadata accessor for ContainerDetail.Source(0);
  *&v13 = __chkstk_darwin().n128_u64[0];
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a1 delegate];
  if (!v16 || (v66 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v75 = v16, sub_10010FC20(&unk_101184050, &unk_100EBFA30), sub_10010FC20(&unk_101184EB0, &qword_100ED56D0), (swift_dynamicCast() & 1) == 0))
  {
    v73 = 0;
    aBlock = 0u;
    v72 = 0u;
    goto LABEL_11;
  }

  if (!*(&v72 + 1))
  {
LABEL_11:
    sub_1000095E8(&aBlock, &unk_101184EA0, &unk_100EBFA20);
    return;
  }

  v17 = *(*sub_10000954C(&aBlock, *(&v72 + 1)) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

  sub_10000959C(&aBlock);
  if (v17)
  {
    v60 = v4;
    v63 = v7;
    v64 = v12;
    v65 = v17;
    if (qword_10117F798 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000060E4(v18, qword_101218DE8);
    v19 = v70;
    v20 = v70;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    v62 = v20;

    v23 = v22;
    v24 = os_log_type_enabled(v21, v22);
    v61 = v10;
    if (v24)
    {
      v25 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *&aBlock = v58;
      v59 = v25;
      *v25 = 136446210;
      if (v19)
      {
        v26 = v21;
        v27 = [v62 identifiers];
      }

      else
      {
        v26 = v21;
        v27 = 0;
      }

      v75 = v27;
      sub_10010FC20(&qword_101191A80, &qword_100ECECA8);
      v28 = String.init<A>(describing:)();
      v30 = sub_1000105AC(v28, v29, &aBlock);

      v31 = v59;
      *(v59 + 1) = v30;
      v21 = v26;
      _os_log_impl(&_mh_execute_header, v26, v23, "Pushing to Catalog Playlist for Song=%{public}s", v31, 0xCu);
      sub_10000959C(v58);
    }

    v32 = v64;
    v33 = UIWindowScene.rootViewController.getter();
    if (v33 && (v34 = v33, v35 = [v33 traitCollection], v34, LOBYTE(v34) = UITraitCollection.isMediaPicker.getter(), v35, (v34 & 1) == 0) && (*v15 = 1, swift_storeEnumTagMultiPayload(), v36 = v62, v37 = v69, (v38 = sub_1006A99C4(v37, v15, v70, 1)) != 0))
    {
      v39 = v38;
      v40 = swift_allocObject();
      v40[2] = v65;
      v40[3] = v39;

      v41 = v39;
      v42 = UIWindowScene.rootViewController.getter();
      if (v42)
      {
        v43 = v42;
        v44 = [v42 presentedViewController];
        if (v44)
        {

          v45 = swift_allocObject();
          *(v45 + 16) = sub_100489218;
          *(v45 + 24) = v40;
          v73 = sub_1001D3174;
          v74 = v45;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          *&v72 = sub_10002BC98;
          *(&v72 + 1) = &unk_1010AE4A0;
          v46 = _Block_copy(&aBlock);

          [v43 dismissViewControllerAnimated:1 completion:v46];

          _Block_release(v46);

          return;
        }
      }

      v47 = &v32[*(sub_10010FC20(&unk_1011841E0, &unk_100ECDA60) + 48)];
      v48 = *(sub_10010FC20(&unk_10118CE00, L"F\n.") + 48);
      *v32 = v41;
      v49 = v41;
      v70 = v40;
      v50 = v49;
      UIViewController.traitOverrides.getter();
      type metadata accessor for MusicLibrary();
      *&aBlock = static MusicLibrary.shared.getter();
      sub_100137E8C();
      v51 = v60;
      dispatch thunk of UIMutableTraits.subscript.setter();
      v52 = v67;
      (*(v67 + 16))(&v32[v48], v6, v51);
      UIViewController.traitOverrides.setter();
      (*(v52 + 56))(&v32[v48], 0, 1, v51);
      type metadata accessor for AppInterfaceContext.Activity.Destination(0);
      swift_storeEnumTagMultiPayload();
      *v47 = 0;
      *(v47 + 1) = 0;
      swift_storeEnumTagMultiPayload();
      v53 = v61;
      sub_100137EE0(v32, v61, type metadata accessor for AppInterfaceContext.Activity);
      v54 = v66;
      sub_100137EE0(v53, v66, type metadata accessor for AppInterfaceContext.Activity);
      v55 = (*(v68 + 80) + 32) & ~*(v68 + 80);
      v56 = swift_allocObject();
      *(v56 + 16) = 0;
      *(v56 + 24) = 0;
      sub_100115BB4(v54, v56 + v55);
      sub_100706900(v53, sub_100139B24, v56);

      sub_1001385B8(v53, type metadata accessor for AppInterfaceContext.Activity);
      sub_1001385B8(v32, type metadata accessor for AppInterfaceContext.Activity);
    }

    else
    {
    }
  }
}

void sub_100487ED8(void *a1, void *a2, void *a3)
{
  v70 = a3;
  v68 = *(type metadata accessor for AppInterfaceContext.Activity(0) - 8);
  v5 = *(v68 + 64);
  __chkstk_darwin();
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v69 = &v60 - v7;
  __chkstk_darwin();
  v9 = (&v60 - v8);
  sub_10010FC20(&unk_101184930, &unk_100EC05C0);
  __chkstk_darwin();
  v11 = &v60 - v10;
  v12 = type metadata accessor for Artist();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16 = __chkstk_darwin().n128_u64[0];
  v71 = &v60 - v17;
  v18 = [a1 delegate];
  if (v18 && (v67 = v13, v76[0] = v18, sub_10010FC20(&unk_101184050, &unk_100EBFA30), sub_10010FC20(&unk_101184EB0, &qword_100ED56D0), (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v73 + 1))
    {
      v19 = *(*sub_10000954C(&aBlock, *(&v73 + 1)) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

      sub_10000959C(&aBlock);
      v66 = v19;
      if (!v19)
      {
        return;
      }

      v65 = v12;
      if (qword_10117F798 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_1000060E4(v20, qword_101218DE8);
      v21 = a2;
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v63 = v9;
        v25 = v24;
        v64 = swift_slowAlloc();
        *&aBlock = v64;
        *v25 = 136446210;
        v26 = [v21 identifiers];
        v27 = [v26 description];
        v62 = v23;
        v28 = v27;
        v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v61 = v22;
        v30 = v29;

        v31 = sub_1000105AC(v60, v30, &aBlock);

        v32 = v25;
        v9 = v63;
        *(v32 + 1) = v31;
        v33 = v61;
        _os_log_impl(&_mh_execute_header, v61, v62, "Pushing to Library Artist for song=%{public}s", v32, 0xCu);
        sub_10000959C(v64);
      }

      else
      {
      }

      v37 = UIWindowScene.rootViewController.getter();
      if (!v37 || (v38 = v37, v39 = [v37 traitCollection], v38, LOBYTE(v38) = UITraitCollection.isMediaPicker.getter(), v39, (v38 & 1) != 0))
      {

        return;
      }

      v40 = v70;
      v41 = v65;
      dispatch thunk of LegacyModelObjectConvertible.init(_:)();
      v42 = v67;
      if ((*(v67 + 48))(v11, 1, v41) == 1)
      {

        v34 = &unk_101184930;
        v35 = &unk_100EC05C0;
        p_aBlock = v11;
        goto LABEL_11;
      }

      v43 = v71;
      (*(v42 + 32))(v71, v11, v41);
      (*(v42 + 16))(v15, v43, v41);
      v44 = objc_allocWithZone(type metadata accessor for LibraryArtistDetailViewController(0));
      v45 = sub_1001FAE8C(v15, 0);
      v46 = swift_allocObject();
      *(v46 + 16) = v66;
      *(v46 + 24) = v45;

      v47 = v45;
      v48 = UIWindowScene.rootViewController.getter();
      if (v48)
      {
        v49 = v48;
        v50 = [v48 presentedViewController];
        if (v50)
        {

          v51 = swift_allocObject();
          *(v51 + 16) = sub_1004893D0;
          *(v51 + 24) = v46;
          v74 = sub_1001D3174;
          v75 = v51;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          *&v73 = sub_10002BC98;
          *(&v73 + 1) = &unk_1010AE5E0;
          v52 = _Block_copy(&aBlock);

          [v49 dismissViewControllerAnimated:1 completion:v52];
          _Block_release(v52);

LABEL_24:
          (*(v67 + 8))(v71, v65);
          return;
        }
      }

      v53 = (v9 + *(sub_10010FC20(&unk_1011841E0, &unk_100ECDA60) + 48));
      v54 = *(sub_10010FC20(&unk_10118CE00, L"F\n.") + 48);
      *v9 = v47;
      v55 = type metadata accessor for UITraitOverrides();
      (*(*(v55 - 8) + 56))(v9 + v54, 1, 1, v55);
      type metadata accessor for AppInterfaceContext.Activity.Destination(0);
      swift_storeEnumTagMultiPayload();
      *v53 = 0;
      v53[1] = 0;
      swift_storeEnumTagMultiPayload();
      v56 = v69;
      sub_100137EE0(v9, v69, type metadata accessor for AppInterfaceContext.Activity);
      sub_100137EE0(v56, v6, type metadata accessor for AppInterfaceContext.Activity);
      v57 = (*(v68 + 80) + 32) & ~*(v68 + 80);
      v58 = swift_allocObject();
      *(v58 + 16) = 0;
      *(v58 + 24) = 0;
      sub_100115BB4(v6, v58 + v57);
      v59 = v47;
      sub_100706900(v56, sub_100139B24, v58);

      sub_1001385B8(v56, type metadata accessor for AppInterfaceContext.Activity);
      sub_1001385B8(v9, type metadata accessor for AppInterfaceContext.Activity);
      goto LABEL_24;
    }
  }

  else
  {
    v74 = 0;
    aBlock = 0u;
    v73 = 0u;
  }

  v34 = &unk_101184EA0;
  v35 = &unk_100EBFA20;
  p_aBlock = &aBlock;
LABEL_11:
  sub_1000095E8(p_aBlock, v34, v35);
}

uint64_t sub_100488704(uint64_t a1, void *a2)
{
  v3 = *(type metadata accessor for AppInterfaceContext.Activity(0) - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v17 - v6;
  __chkstk_darwin();
  v9 = &v17 - v8;
  v10 = (&v17 + *(sub_10010FC20(&unk_1011841E0, &unk_100ECDA60) + 48) - v8);
  v11 = *(sub_10010FC20(&unk_10118CE00, L"F\n.") + 48);
  *v9 = a2;
  v12 = type metadata accessor for UITraitOverrides();
  (*(*(v12 - 8) + 56))(&v9[v11], 1, 1, v12);
  type metadata accessor for AppInterfaceContext.Activity.Destination(0);
  swift_storeEnumTagMultiPayload();
  *v10 = 0;
  v10[1] = 0;
  swift_storeEnumTagMultiPayload();
  sub_100137EE0(v9, v7, type metadata accessor for AppInterfaceContext.Activity);
  sub_100137EE0(v7, v5, type metadata accessor for AppInterfaceContext.Activity);
  v13 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  sub_100115BB4(v5, v14 + v13);
  v15 = a2;
  sub_100706900(v7, sub_100139B24, v14);

  sub_1001385B8(v7, type metadata accessor for AppInterfaceContext.Activity);
  return sub_1001385B8(v9, type metadata accessor for AppInterfaceContext.Activity);
}

uint64_t sub_100488954(void *a1, void *a2, void *a3)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v56 = &v49[-v6];
  sub_10010FC20(&unk_101184930, &unk_100EC05C0);
  __chkstk_darwin();
  v8 = &v49[-v7];
  v9 = type metadata accessor for Artist();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v54 = v11;
  v55 = &v49[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v13 = &v49[-v12];
  if (qword_10117F798 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000060E4(v14, qword_101218DE8);
  v15 = a1;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v53 = a3;
    v19 = v18;
    v51 = swift_slowAlloc();
    *&v58 = v51;
    *v19 = 136446210;
    v20 = [v15 identifiers];
    v21 = [v20 description];
    v52 = a2;
    v22 = v21;
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v17;
    v24 = v13;
    v25 = v23;
    v26 = v9;
    v27 = v10;
    v29 = v28;

    v30 = v25;
    v13 = v24;
    v31 = sub_1000105AC(v30, v29, &v58);
    v10 = v27;
    v9 = v26;

    *(v19 + 4) = v31;
    a2 = v52;
    _os_log_impl(&_mh_execute_header, v16, v50, "Pushing to Catalog Artist for song=%{public}s", v19, 0xCu);
    sub_10000959C(v51);

    a3 = v53;
  }

  v32 = a2;
  dispatch thunk of LegacyModelObjectConvertible.init(_:)();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    v33 = &unk_101184930;
    v34 = &unk_100EC05C0;
    v35 = v8;
    return sub_1000095E8(v35, v33, v34);
  }

  v36 = *(v10 + 32);
  v36(v13, v8, v9);
  v37 = [a3 delegate];
  if (!v37)
  {
    (*(v10 + 8))(v13, v9);
    v60 = 0;
    v58 = 0u;
    v59 = 0u;
LABEL_15:
    v33 = &unk_101184EA0;
    v34 = &unk_100EBFA20;
    v35 = &v58;
    return sub_1000095E8(v35, v33, v34);
  }

  v57 = v37;
  sub_10010FC20(&unk_101184050, &unk_100EBFA30);
  sub_10010FC20(&unk_101184EB0, &qword_100ED56D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v60 = 0;
    v58 = 0u;
    v59 = 0u;
    goto LABEL_14;
  }

  if (!*(&v59 + 1))
  {
LABEL_14:
    (*(v10 + 8))(v13, v9);
    goto LABEL_15;
  }

  v38 = *(*sub_10000954C(&v58, *(&v59 + 1)) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

  sub_10000959C(&v58);
  if (!v38)
  {
    return (*(v10 + 8))(v13, v9);
  }

  v39 = type metadata accessor for TaskPriority();
  (*(*(v39 - 8) + 56))(v56, 1, 1, v39);
  v40 = v55;
  (*(v10 + 16))(v55, v13, v9);
  type metadata accessor for MainActor();

  v41 = static MainActor.shared.getter();
  v42 = v9;
  v43 = v10;
  v44 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v45 = &v54[v44 + 7];
  v54 = v13;
  v46 = v45 & 0xFFFFFFFFFFFFFFF8;
  v47 = swift_allocObject();
  *(v47 + 16) = v41;
  *(v47 + 24) = &protocol witness table for MainActor;
  v36((v47 + v44), v40, v42);
  *(v47 + v46) = v38;
  sub_1001F4CB8(0, 0, v56, &unk_100ECECB8, v47);

  return (*(v43 + 8))(v54, v42);
}

uint64_t sub_100488F4C()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_101218DE8);
  sub_1000060E4(v0, qword_101218DE8);
  sub_100005AE4();
  OS_os_log.init(musicCategory:)(0x6976614E756E654DLL, 0xEE006E6F69746167);
  return Logger.init(_:)();
}

unint64_t sub_100488FD8()
{
  result = qword_101191A88;
  if (!qword_101191A88)
  {
    type metadata accessor for MusicLibrary.AddStatus.UnaddableReason();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101191A88);
  }

  return result;
}

uint64_t sub_1004890B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004891B4()
{
  v1 = *(type metadata accessor for Playlist.Folder() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_10048722C(v2, v3);
}

uint64_t sub_10048925C()
{

  return swift_deallocObject();
}

uint64_t sub_1004892B0(uint64_t a1)
{
  v4 = *(type metadata accessor for Artist() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002F3F4;

  return sub_1003C3224(a1, v6, v7, v1 + v5, v8);
}

id sub_10048940C(unsigned __int8 a1)
{
  v1 = String._bridgeToObjectiveC()();

  v2 = [objc_opt_self() _systemImageNamed:v1];

  return v2;
}

void *sub_100489578(void *a1)
{
  v3 = String._bridgeToObjectiveC()();
  v4 = String._bridgeToObjectiveC()();
  sub_100035A7C();
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
  if (a1[7])
  {
    v6 = a1[8];
    v12[4] = a1[7];
    v12[5] = v6;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_10003640C;
    v12[3] = &unk_1010AE658;
    v7 = _Block_copy(v12);
  }

  else
  {
    v7 = 0;
  }

  v8 = a1[6];
  v9 = type metadata accessor for MusicTab.Group();
  v13.receiver = v1;
  v13.super_class = v9;
  v10 = objc_msgSendSuper2(&v13, "initWithTitle:image:identifier:children:viewControllerProvider:", v3, v8, v4, v5.super.isa, v7);
  _Block_release(v7);

  sub_100036360(a1);
  return v10;
}

id sub_1004898A4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_10048992C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_100489974(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1004899DC(char a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC5Music28CarPlayLibraryViewController____lazy_storage___dataSource] = 0;
  v1[OBJC_IVAR____TtC5Music28CarPlayLibraryViewController_onlyShowDownloaded] = a1;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v7, "initWithNibName:bundle:", 0, 0);
  v5 = String._bridgeToObjectiveC()();

  [v4 setPlayActivityFeatureName:v5];

  return v4;
}

uint64_t sub_100489B30()
{
  v1 = OBJC_IVAR____TtC5Music28CarPlayLibraryViewController____lazy_storage___dataSource;
  if (*&v0[OBJC_IVAR____TtC5Music28CarPlayLibraryViewController____lazy_storage___dataSource])
  {
    v2 = *&v0[OBJC_IVAR____TtC5Music28CarPlayLibraryViewController____lazy_storage___dataSource];
  }

  else
  {
    v3 = v0[OBJC_IVAR____TtC5Music28CarPlayLibraryViewController_onlyShowDownloaded];
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for CarPlayLibraryViewController.DataSource();
    swift_allocObject();
    v5 = v0;
    v2 = sub_10048B4D8(v5, v3, sub_10048B4D0, v4);

    *&v0[v1] = v2;
  }

  return v2;
}

unint64_t sub_100489D3C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for GridView.Base.Style();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100489B30();
  result = IndexPath.section.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  v10 = *(v8 + 72);
  if (result >= *(v10 + 16))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v11 = *(v10 + result + 32);

  v12 = *(v1 + OBJC_IVAR____TtC5Music28CarPlayLibraryViewController____lazy_storage___dataSource);

  result = IndexPath.section.getter();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v13 = *(v12 + 72);
  if (result < *(v13 + 16))
  {
    v14 = *(v13 + result + 32);
    if (v14 >= 2)
    {
      v20 = [objc_opt_self() cellForTableView:a1];
    }

    else
    {
      sub_10048ADA4(v14);
      v15 = String._bridgeToObjectiveC()();
      v35 = v7;
      v16 = v1;
      v17 = v5;
      v18 = v15;

      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v20 = [a1 dequeueReusableCellWithIdentifier:v18 forIndexPath:isa];

      v5 = v17;
      v2 = v16;
      v7 = v35;
    }

    if (v11)
    {
      if (v11 != 1)
      {
        objc_opt_self();
        v30 = swift_dynamicCastObjCClass();
        if (v30)
        {
          v31 = v30;
          v32 = v20;

          v33 = sub_10048AC2C();

          sub_1003FBD30(v31, v2);
        }

        return v20;
      }

      objc_opt_self();
      v21 = swift_dynamicCastObjCClass();
      if (v21)
      {
        v22 = v21;
        *v7 = 0;
        v7[8] = 1;
        *(v7 + 2) = 0;
        *(v7 + 12) = 257;
        (*(v5 + 104))(v7, enum case for GridView.Base.Style.condensed(_:), v4);
        v23 = v20;
        CPUIGridViewBaseTableViewCell.gridViewStyle.setter();
        [v22 setContentInsets:{0.0, 8.0, 0.0, 0.0}];

        sub_10048AA8C();

LABEL_17:
        CPUIGridViewBaseTableViewCell.viewModels.setter();
      }
    }

    else
    {
      objc_opt_self();
      v24 = swift_dynamicCastObjCClass();
      if (v24)
      {
        v25 = v24;
        v26 = *(sub_10010FC20(&qword_101191D68, &qword_100ECEE98) + 48);
        *v7 = 0;
        v7[8] = 1;
        v27 = enum case for GridView.ImageGrid.Layout.Distribution.fillEqually(_:);
        v28 = type metadata accessor for GridView.ImageGrid.Layout.Distribution();
        (*(*(v28 - 8) + 104))(&v7[v26], v27, v28);
        (*(v5 + 104))(v7, enum case for GridView.Base.Style.imageGrid(_:), v4);
        v23 = v20;
        CPUIGridViewBaseTableViewCell.gridViewStyle.setter();
        [v25 setContentInsets:{0.0, 8.0, 0.0, 0.0}];

        v29 = sub_10048A9A4();

        if (v29)
        {
        }

        goto LABEL_17;
      }
    }

    return v20;
  }

LABEL_22:
  __break(1u);
  return result;
}

void sub_10048A398(void *a1, unint64_t a2)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  sub_100489B30();
  v5 = sub_10048AEF0(a1, a2);

  if (!v5)
  {
    return;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = *(*(v2 + OBJC_IVAR____TtC5Music28CarPlayLibraryViewController____lazy_storage___dataSource) + 72);
  if (*(v6 + 16) <= a2)
  {
LABEL_10:
    __break(1u);
    return;
  }

  if (*(v6 + a2 + 32) >= 2u && (objc_opt_self(), (v7 = swift_dynamicCastObjCClass()) != 0))
  {
    v8 = v7;
    v9 = v5;
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v10 = String.init(localized:table:bundle:locale:comment:)();
    v12 = v11;
    v13 = String._bridgeToObjectiveC()();
    [v8 setTitle:v13];

    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = v10;
    v15[4] = v12;
    aBlock[4] = sub_10048B56C;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002BC98;
    aBlock[3] = &unk_1010AE920;
    v16 = _Block_copy(aBlock);

    [v8 setAction:v16];
    _Block_release(v16);
  }

  else
  {
  }
}

void sub_10048A678(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC5Music28CarPlayLibraryViewController_onlyShowDownloaded);
    v4 = objc_allocWithZone(MCDRecentlyAddedTableViewController);
    v5 = String._bridgeToObjectiveC()();

    v6 = [v4 initWithIdentifier:v5 showLocalContent:v3];

    if (v6)
    {
      v7 = v6;
      v8 = String._bridgeToObjectiveC()();
      [v7 setTitle:v8];

      v9 = v2;
      [v7 setPlayActivityFeatureNameSourceViewController:v9];

      v10 = [v9 navigationController];
      if (v10)
      {
        [v10 pushViewController:v7 animated:1];
      }
    }

    else
    {
      v7 = v2;
    }
  }
}

void sub_10048A914(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3 <= 0xBFu)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      v8 = [Strong tableView];

      if (v8)
      {
        [v8 reloadData];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

char *sub_10048A9A4()
{
  v1 = *(v0 + 48);
  v2 = v1;
  if (v1 == 1)
  {
    if (*(v0 + 40))
    {
      v2 = 0;
      v3 = 1;
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      v5 = swift_allocObject();
      swift_weakInit();
      _s14PinsDataSourceCMa(0);
      swift_allocObject();
      v2 = sub_100345830(Strong, 0, sub_10048B4B0, v5);
      v3 = *(v0 + 48);
    }

    *(v0 + 48) = v2;

    sub_1000D9148(v3);
  }

  sub_10000CD8C(v1);
  return v2;
}

uint64_t sub_10048AA8C()
{
  if (*(v0 + 56))
  {
    v1 = *(v0 + 56);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v3 = *(v0 + 40);
    v4 = swift_allocObject();
    swift_weakInit();
    _s21LibraryMenuDataSourceCMa();
    swift_allocObject();
    v1 = sub_1003FFD48(Strong, v3, sub_10048B490, v4);
    *(v0 + 56) = v1;
  }

  return v1;
}

double sub_10048AB5C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = sub_10048B140(a4);
    v11 = v10;
    v12 = *(v8 + 24);

    v13 = sub_10018E070(a2);
    v12(a4, v9, v11, v13, 0);
  }

  return result;
}

char *sub_10048AC2C()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = *(v0 + 64);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v4 = *(v0 + 40);
    v5 = swift_allocObject();
    swift_weakInit();
    v6 = objc_allocWithZone(_s23RecentlyAddedDataSourceCMa());
    v7 = Strong;
    v8 = v0;
    v9 = sub_1003FB6E0(v7, v4, sub_10048B488, v5);
    v10 = *(v0 + 64);
    *(v8 + 64) = v9;
    v2 = v9;

    v1 = 0;
  }

  v11 = v1;
  return v2;
}

double sub_10048ACF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = sub_10048B140(2u);
    v10 = v9;
    v11 = *(v7 + 24);

    v11(2, v8, v10, _swiftEmptyArrayStorage, a1);
  }

  return result;
}

uint64_t sub_10048ADA4(char a1)
{
  if (!a1)
  {
    v5 = [objc_opt_self() reuseIdentifier];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    v10 = v6;

    v3 = 0x72476567616D492ELL;
    v4 = 0xEA00000000006469;
    goto LABEL_5;
  }

  if (a1 == 1)
  {
    v1 = [objc_opt_self() reuseIdentifier];
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    v10 = v2;

    v3 = 0x736E65646E6F432ELL;
    v4 = 0xEA00000000006465;
LABEL_5:
    String.append(_:)(*&v3);

    return v10;
  }

  sub_10048B578();
  v8 = [swift_getObjCClassFromMetadata() identifier];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v9;
}

id sub_10048AEF0(id result, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = *(v2 + 72);
  if (*(v3 + 16) <= a2)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  if (*(v3 + a2 + 32) < 2u)
  {
    return 0;
  }

  v4 = result;
  v5 = [objc_opt_self() reuseIdentifier];
  if (!v5)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = String._bridgeToObjectiveC()();
  }

  v6 = [v4 dequeueReusableHeaderFooterViewWithIdentifier:v5];

  return v6;
}

double sub_10048AFB4()
{
  v1 = v0;
  v2 = sub_10048A9A4();
  if (v2)
  {
    v3 = *(v2 + 2);
    if (v3 >> 62)
    {
      v6 = _CocoaArrayWrapper.endIndex.getter();

      if (v6)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v4)
      {
LABEL_4:
        v5 = &off_10109B798;
        goto LABEL_7;
      }
    }
  }

  v5 = _swiftEmptyArrayStorage;
LABEL_7:
  v7 = *(sub_10048AA8C() + 16);
  if (v7 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v8)
  {
    v9 = &off_10109B7C0;
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  sub_1001256DC(v9);
  v10 = sub_10048AC2C();
  v11 = *&v10[OBJC_IVAR____TtCC5Music28CarPlayLibraryViewController23RecentlyAddedDataSource_viewModels];
  if (v11 >> 62)
  {
    v15 = v10;
    v12 = _CocoaArrayWrapper.endIndex.getter();
    v10 = v15;
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v12)
  {
    v13 = &off_10109B7E8;
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  sub_1001256DC(v13);
  *(v1 + 72) = v5;

  return result;
}

uint64_t sub_10048B140(unsigned __int8 a1)
{
  v2 = a1;
  v3 = *(v1 + 72);
  v4 = *(v3 + 16);
  v5 = 0;
  if (v4)
  {
    v6 = v3 + 32;
    while (*(v6 + v5) != a1)
    {
      if (v4 == ++v5)
      {
        v5 = 0;
        break;
      }
    }
  }

  sub_10048AFB4();
  v7 = *(v1 + 72);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = v7 + 32;
    while (*(v10 + v9) != v2)
    {
      if (v8 == ++v9)
      {
        return v5;
      }
    }

    return v9;
  }

  return v5;
}

uint64_t sub_10048B1F8()
{
  swift_unknownObjectWeakDestroy();

  sub_1000D9148(*(v0 + 48));

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for CarPlayLibraryViewController.SectionDifference(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 9))
  {
    return (*a1 + 125);
  }

  v3 = ((*(a1 + 8) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 8) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for CarPlayLibraryViewController.SectionDifference(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 8) = 0;
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_10048B3B8(uint64_t a1)
{
  v1 = *(a1 + 8) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_10048B3E4(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 8) = *(result + 8) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = -64;
  }

  return result;
}

unint64_t sub_10048B434()
{
  result = qword_101191D60;
  if (!qword_101191D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101191D60);
  }

  return result;
}

uint64_t sub_10048B4D8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  swift_unknownObjectWeakInit();
  *(v4 + 48) = 1;
  *(v4 + 56) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = _swiftEmptyArrayStorage;
  swift_unknownObjectWeakAssign();
  *(v4 + 40) = a2;
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;

  sub_10048A9A4();

  sub_10048AA8C();

  return v4;
}

unint64_t sub_10048B578()
{
  result = qword_101191D70;
  if (!qword_101191D70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_101191D70);
  }

  return result;
}

void sub_10048B5C4(void *a1)
{
  for (i = 0; i != 3; ++i)
  {
    if (!*(&off_10109B770 + i + 32))
    {
      type metadata accessor for CPUIGridViewBaseTableViewCell();
      v3 = [objc_opt_self() reuseIdentifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v4 = 0xEA00000000006469;
      v5 = 0x72476567616D492ELL;
LABEL_3:
      String.append(_:)(*&v5);

      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v7 = String._bridgeToObjectiveC()();

      [a1 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v7];

      continue;
    }

    if (*(&off_10109B770 + i + 32) == 1)
    {
      type metadata accessor for CPUIGridViewBaseTableViewCell();
      v8 = [objc_opt_self() reuseIdentifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v5 = 0x736E65646E6F432ELL;
      v4 = 0xEA00000000006465;
      goto LABEL_3;
    }
  }

  v9 = [objc_opt_self() reuseIdentifier];
  if (!v9)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = String._bridgeToObjectiveC()();
  }

  type metadata accessor for CPUITableHeaderFooterView();
  [a1 registerClass:swift_getObjCClassFromMetadata() forHeaderFooterViewReuseIdentifier:v9];
}

uint64_t sub_10048B7D0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for CPUILimitedUserInterfaces();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_10049CB30(&qword_101192098, &type metadata accessor for CPUILimitedUserInterfaces, &protocol conformance descriptor for CPUILimitedUserInterfaces), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_10049CB30(&qword_1011920A0, &type metadata accessor for CPUILimitedUserInterfaces, &protocol conformance descriptor for CPUILimitedUserInterfaces);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_10048B9E8(unsigned __int8 a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    Hasher.init(_seed:)();
    String.hash(into:)();

    v4 = Hasher._finalize()();
    v5 = -1 << *(a2 + 32);
    v6 = v4 & ~v5;
    if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v7 = ~v5;
      while (1)
      {
        if (*(*(a2 + 48) + v6))
        {
          if (*(*(a2 + 48) + v6) == 1)
          {
            v8 = 0x657469726F766166;
          }

          else
          {
            v8 = 0x64616F6C6E776F64;
          }

          v9 = 0xE900000000000073;
          v10 = a1;
          if (!a1)
          {
LABEL_8:
            v11 = 0xE300000000000000;
            if (v8 != 7105633)
            {
              goto LABEL_17;
            }

            goto LABEL_16;
          }
        }

        else
        {
          v9 = 0xE300000000000000;
          v8 = 7105633;
          v10 = a1;
          if (!a1)
          {
            goto LABEL_8;
          }
        }

        if (v10 == 1)
        {
          v12 = 0x657469726F766166;
        }

        else
        {
          v12 = 0x64616F6C6E776F64;
        }

        v11 = 0xE900000000000073;
        if (v8 != v12)
        {
          goto LABEL_17;
        }

LABEL_16:
        if (v9 == v11)
        {

          v13 = 1;
          return v13 & 1;
        }

LABEL_17:
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v13 & 1) == 0)
        {
          v6 = (v6 + 1) & v7;
          if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
          {
            continue;
          }
        }

        return v13 & 1;
      }
    }
  }

  v13 = 0;
  return v13 & 1;
}

uint64_t sub_10048BBDC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (Hasher.init(_seed:)(), ApplicationCapabilities.Service.rawValue.getter(a1), String.hash(into:)(), , v4 = Hasher._finalize()(), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v30 = ~v5;
    v7 = 0x646956636973756DLL;
    v29 = a1;
    while (1)
    {
      v8 = *(*(a2 + 48) + v6);
      if (v8 <= 4)
      {
        if (v8 == 3)
        {
          v11 = 0x6C6169636F73;
        }

        else
        {
          v11 = 0x6F69646172;
        }

        if (v8 == 3)
        {
          v12 = 0xE600000000000000;
        }

        else
        {
          v12 = 0xE500000000000000;
        }

        if (v8 == 2)
        {
          v11 = 0xD000000000000013;
          v12 = 0x8000000100E4DAB0;
        }

        v13 = *(*(a2 + 48) + v6) ? v7 : 0x636973756DLL;
        v14 = *(*(a2 + 48) + v6) ? 0xEB00000000736F65 : 0xE500000000000000;
        v9 = *(*(a2 + 48) + v6) <= 1u ? v13 : v11;
        v10 = *(*(a2 + 48) + v6) <= 1u ? v14 : v12;
      }

      else if (*(*(a2 + 48) + v6) > 7u)
      {
        if (v8 == 8)
        {
          v9 = 0xD000000000000013;
          v10 = 0x8000000100E4DA90;
        }

        else if (v8 == 9)
        {
          v9 = 0xD000000000000011;
          v10 = 0x8000000100E4DA70;
        }

        else
        {
          v9 = 0x6C62616E45696C6DLL;
          v10 = 0xEA00000000006465;
        }
      }

      else if (v8 == 5)
      {
        v10 = 0xE600000000000000;
        v9 = 0x73656E757469;
      }

      else if (v8 == 6)
      {
        v9 = 0x74634170756F7267;
        v10 = 0xED00007974697669;
      }

      else
      {
        v9 = 0x746963696C707865;
        v10 = 0xEF746E65746E6F43;
      }

      v15 = 0xD000000000000011;
      if (a1 != 9)
      {
        v15 = 0x6C62616E45696C6DLL;
      }

      v16 = 0xEA00000000006465;
      if (a1 == 9)
      {
        v16 = 0x8000000100E4DA70;
      }

      if (a1 == 8)
      {
        v15 = 0xD000000000000013;
        v16 = 0x8000000100E4DA90;
      }

      v17 = 0x746963696C707865;
      if (a1 == 6)
      {
        v17 = 0x74634170756F7267;
      }

      v18 = 0xEF746E65746E6F43;
      if (a1 == 6)
      {
        v18 = 0xED00007974697669;
      }

      if (a1 == 5)
      {
        v17 = 0x73656E757469;
        v18 = 0xE600000000000000;
      }

      if (a1 <= 7u)
      {
        v15 = v17;
        v16 = v18;
      }

      if (a1 == 3)
      {
        v19 = 0x6C6169636F73;
      }

      else
      {
        v19 = 0x6F69646172;
      }

      if (a1 == 3)
      {
        v20 = 0xE600000000000000;
      }

      else
      {
        v20 = 0xE500000000000000;
      }

      if (a1 == 2)
      {
        v19 = 0xD000000000000013;
        v20 = 0x8000000100E4DAB0;
      }

      if (a1)
      {
        v21 = v7;
      }

      else
      {
        v21 = 0x636973756DLL;
      }

      if (a1)
      {
        v22 = 0xEB00000000736F65;
      }

      else
      {
        v22 = 0xE500000000000000;
      }

      if (a1 <= 1u)
      {
        v19 = v21;
        v20 = v22;
      }

      v23 = a1 <= 4u ? v19 : v15;
      v24 = a1 <= 4u ? v20 : v16;
      if (v9 == v23 && v10 == v24)
      {
        break;
      }

      v25 = v6;
      v26 = v7;
      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v27 & 1) == 0)
      {
        v6 = (v25 + 1) & v30;
        LOBYTE(a1) = v29;
        v7 = v26;
        if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v27 & 1;
    }

    v27 = 1;
  }

  else
  {
    v27 = 0;
  }

  return v27 & 1;
}

uint64_t sub_10048BFB0(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  v4 = a1 - 3;
  if ((a1 - 3) >= 6u)
  {
    Hasher._combine(_:)(6uLL);
    v4 = a1;
  }

  Hasher._combine(_:)(v4);
  v5 = Hasher._finalize()();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + v7);
      if (v9 > 5)
      {
        switch(v9)
        {
          case 6u:
            if (a1 == 6)
            {
              return 1;
            }

            goto LABEL_7;
          case 7u:
            if (a1 == 7)
            {
              return 1;
            }

            goto LABEL_7;
          case 8u:
            if (a1 == 8)
            {
              return 1;
            }

            goto LABEL_7;
        }
      }

      else
      {
        switch(v9)
        {
          case 3u:
            if (a1 == 3)
            {
              return 1;
            }

            goto LABEL_7;
          case 4u:
            if (a1 == 4)
            {
              return 1;
            }

            goto LABEL_7;
          case 5u:
            if (a1 == 5)
            {
              return 1;
            }

            goto LABEL_7;
        }
      }

      if ((a1 - 9) <= 0xF9u && v9 == a1)
      {
        return 1;
      }

LABEL_7:
      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return 0;
}

uint64_t sub_10048C144(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Lyrics.TextLine(0) - 8);
  __chkstk_darwin();
  v6 = &v15[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (Hasher.init(_seed:)(), Lyrics.TextLine.hash(into:)(v15), v7 = Hasher._finalize()(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v10 = ~v8;
    v11 = *(v4 + 72);
    do
    {
      sub_10049CA68(*(a2 + 48) + v11 * v9, v6, type metadata accessor for Lyrics.TextLine);
      v12 = static Lyrics.TextLine.== infix(_:_:)(v6, a1);
      sub_10049CAD0(v6, type metadata accessor for Lyrics.TextLine);
      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_10048C2CC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Song();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_10049CB30(&unk_10118D020, &type metadata accessor for Song, &protocol conformance descriptor for Song), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_10049CB30(&qword_101185748, &type metadata accessor for Song, &protocol conformance descriptor for Song);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

BOOL sub_10048C4E4(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  v4 = qword_100ECF330[a1];
  Hasher._combine(_:)(v4);
  v5 = Hasher._finalize()();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = qword_100ECF330[*(*(a2 + 48) + v7)];
    result = v9 == v4;
    if (v9 == v4)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t sub_10048C5C4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_10049CB30(&qword_10118EB38, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_10049CB30(&qword_101192840, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_10048C7DC(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    Hasher.init(_seed:)();
    Hasher._combine(_:)(a1 & 1);
    v5 = Hasher._finalize()();
    v6 = -1 << *(a2 + 32);
    v7 = v5 & ~v6;
    if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
    {
      v8 = ~v6;
      do
      {
        v9 = *(*(a2 + 48) + v7) ^ a1;
        if ((v9 & 1) == 0)
        {
          break;
        }

        v7 = (v7 + 1) & v8;
      }

      while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
      LOBYTE(v2) = v9 ^ 1;
    }

    else
    {
      LOBYTE(v2) = 0;
    }
  }

  return v2 & 1;
}

uint64_t sub_10048C8A4(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = __CocoaSet.contains(_:)();
  }

  else if (*(a2 + 16) && (sub_100009F78(0, &qword_101181F70, UITab_ptr), v5 = NSObject._rawHashValue(seed:)(*(a2 + 40)), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v7);
      v4 = static NSObject.== infix(_:_:)();

      if (v4)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_10048C9BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_10048CAB4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v3 = a1, Hasher.init(_seed:)(), Library.Menu.Identifier.rawValue.getter(v3), String.hash(into:)(), , v4 = Hasher._finalize()(), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v7 = ~v5;
    while (1)
    {
      v8 = 0xD000000000000029;
      v9 = "nt";
      switch(*(*(a2 + 48) + v6))
      {
        case 1:
          v8 = 0xD000000000000025;
          v9 = "LibraryView.RecentlyAdded";
          break;
        case 2:
          v8 = 0xD000000000000023;
          v9 = "LibraryView.Playlists";
          break;
        case 3:
          v8 = 0xD000000000000022;
          v9 = "LibraryView.Artists";
          break;
        case 4:
          v8 = 0xD000000000000021;
          v9 = "LibraryView.Albums";
          break;
        case 5:
          v8 = 0xD000000000000026;
          v9 = "LibraryView.Songs";
          break;
        case 6:
          v8 = 0xD000000000000027;
          v9 = "LibraryView.MadeForYou";
          break;
        case 7:
          v8 = 0xD000000000000022;
          v9 = "LibraryView.MusicVideos";
          break;
        case 8:
          v8 = 0xD000000000000028;
          v9 = "LibraryView.Genres";
          break;
        case 9:
          v8 = 0xD000000000000025;
          v9 = "LibraryView.Compilations";
          break;
        case 0xA:
          v8 = 0xD000000000000021;
          v9 = "LibraryView.Composers";
          break;
        case 0xB:
          v8 = 0xD000000000000026;
          v9 = "LibraryView.Shows";
          break;
        case 0xC:
          v8 = 0xD000000000000027;
          v9 = "LibraryView.Downloaded";
          break;
        default:
          break;
      }

      v10 = v9 | 0x8000000000000000;
      v11 = 0xD000000000000029;
      v12 = "nt";
      switch(v3)
      {
        case 1:
          v11 = 0xD000000000000025;
          v12 = "LibraryView.RecentlyAdded";
          break;
        case 2:
          v11 = 0xD000000000000023;
          v12 = "LibraryView.Playlists";
          break;
        case 3:
          v11 = 0xD000000000000022;
          v12 = "LibraryView.Artists";
          break;
        case 4:
          v11 = 0xD000000000000021;
          v12 = "LibraryView.Albums";
          break;
        case 5:
          v11 = 0xD000000000000026;
          v12 = "LibraryView.Songs";
          break;
        case 6:
          v11 = 0xD000000000000027;
          v12 = "LibraryView.MadeForYou";
          break;
        case 7:
          v11 = 0xD000000000000022;
          v12 = "LibraryView.MusicVideos";
          break;
        case 8:
          v11 = 0xD000000000000028;
          v12 = "LibraryView.Genres";
          break;
        case 9:
          v11 = 0xD000000000000025;
          v12 = "LibraryView.Compilations";
          break;
        case 10:
          v11 = 0xD000000000000021;
          v12 = "LibraryView.Composers";
          break;
        case 11:
          v11 = 0xD000000000000026;
          v12 = "LibraryView.Shows";
          break;
        case 12:
          v11 = 0xD000000000000027;
          v12 = "LibraryView.Downloaded";
          break;
        default:
          break;
      }

      if (v8 == v11 && v10 == (v12 | 0x8000000000000000))
      {
        break;
      }

      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v13 & 1) == 0)
      {
        v6 = (v6 + 1) & v7;
        if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v13 & 1;
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_10048CE30@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for RecentlyAddedMusicItem();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin();
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == enum case for RecentlyAddedMusicItem.album(_:))
  {
    (*(v5 + 96))(v8, v4);
    v10 = type metadata accessor for Album();
    a1[3] = v10;
    v11 = &protocol witness table for Album;
LABEL_10:
    a1[4] = v11;
    v15 = sub_10001C8B8(a1);
    return (*(*(v10 - 8) + 32))(v15, v8, v10);
  }

  if (v9 == enum case for RecentlyAddedMusicItem.musicMovie(_:))
  {
    (*(v5 + 96))(v8, v4);
    v10 = type metadata accessor for MusicMovie();
    a1[3] = v10;
    v12 = &unk_10118AB60;
    v13 = &type metadata accessor for MusicMovie;
    v14 = &protocol conformance descriptor for MusicMovie;
LABEL_5:
    v11 = sub_10049CB30(v12, v13, v14);
    goto LABEL_10;
  }

  if (v9 == enum case for RecentlyAddedMusicItem.musicVideo(_:))
  {
    (*(v5 + 96))(v8, v4);
    v10 = type metadata accessor for MusicVideo();
    a1[3] = v10;
    v11 = &protocol witness table for MusicVideo;
    goto LABEL_10;
  }

  if (v9 == enum case for RecentlyAddedMusicItem.playlist(_:))
  {
    (*(v5 + 96))(v8, v4);
    v10 = type metadata accessor for Playlist();
    a1[3] = v10;
    v11 = &protocol witness table for Playlist;
    goto LABEL_10;
  }

  if (v9 == enum case for RecentlyAddedMusicItem.tvSeason(_:))
  {
    (*(v5 + 96))(v8, v4);
    v10 = type metadata accessor for TVSeason();
    a1[3] = v10;
    v12 = &unk_101181A68;
    v13 = &type metadata accessor for TVSeason;
    v14 = &protocol conformance descriptor for TVSeason;
    goto LABEL_5;
  }

  if (v9 == enum case for RecentlyAddedMusicItem.uploadedVideo(_:))
  {
    (*(v5 + 96))(v8, v4);
    v10 = type metadata accessor for UploadedVideo();
    a1[3] = v10;
    v12 = &unk_10118AB40;
    v13 = &type metadata accessor for UploadedVideo;
    v14 = &protocol conformance descriptor for UploadedVideo;
    goto LABEL_5;
  }

  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(37);
  v17._object = 0x8000000100E42030;
  v17._countAndFlagsBits = 0xD000000000000023;
  String.append(_:)(v17);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10048D214@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Playlist.Folder.Item();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin();
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == enum case for Playlist.Folder.Item.folder(_:))
  {
    (*(v5 + 96))(v8, v4);
    v10 = type metadata accessor for Playlist.Folder();
    a1[3] = v10;
    v11 = sub_10049CB30(&qword_10118C1A0, &type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);
LABEL_5:
    a1[4] = v11;
    v12 = sub_10001C8B8(a1);
    return (*(*(v10 - 8) + 32))(v12, v8, v10);
  }

  if (v9 == enum case for Playlist.Folder.Item.playlist(_:))
  {
    (*(v5 + 96))(v8, v4);
    v10 = type metadata accessor for Playlist();
    a1[3] = v10;
    v11 = &protocol witness table for Playlist;
    goto LABEL_5;
  }

  v15 = 0;
  v16 = 0xE000000000000000;
  _StringGuts.grow(_:)(35);

  v15 = 0xD000000000000021;
  v16 = 0x8000000100E420C0;
  sub_10049CB30(&qword_101183228, &type metadata accessor for Playlist.Folder.Item, &protocol conformance descriptor for Playlist.Folder.Item);
  v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v14);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10048D4C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t (*a11)(void), uint64_t a12)
{
  v519 = a8;
  v569 = a7;
  v597 = a4;
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  __chkstk_darwin();
  v573 = &v492 - v16;
  v584 = type metadata accessor for Album();
  v574 = *(v584 - 8);
  __chkstk_darwin();
  v553 = &v492 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v554 = &v492 - v18;
  v552 = type metadata accessor for Playlist.Kind();
  v559 = *(v552 - 8);
  __chkstk_darwin();
  v516 = &v492 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v551 = sub_10010FC20(&qword_101187EF0, &unk_100EC3600);
  __chkstk_darwin();
  v562 = &v492 - v20;
  sub_10010FC20(&qword_101187EF8, &unk_100ECEED0);
  __chkstk_darwin();
  v22 = &v492 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v581 = &v492 - v23;
  __chkstk_darwin();
  v578 = &v492 - v24;
  v25 = type metadata accessor for Artist();
  v536 = *(v25 - 8);
  v537 = v25;
  __chkstk_darwin();
  v535 = &v492 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v539 = *(sub_10010FC20(&unk_101184930, &unk_100EC05C0) - 8);
  __chkstk_darwin();
  v542 = &v492 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v541 = &v492 - v28;
  __chkstk_darwin();
  v520 = &v492 - v29;
  v540 = v30;
  __chkstk_darwin();
  v538 = &v492 - v31;
  v507 = type metadata accessor for Actions.GoToPlaylistFolderItem.Context(0);
  __chkstk_darwin();
  v506 = &v492 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101191E70, &unk_100ECEEE0);
  __chkstk_darwin();
  v505 = &v492 - v33;
  sub_10010FC20(&qword_1011831B0, &qword_100ED2570);
  __chkstk_darwin();
  v509 = &v492 - v34;
  v514 = type metadata accessor for Playlist.Folder.Item();
  v512 = *(v514 - 8);
  __chkstk_darwin();
  v504 = &v492 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v503 = &v492 - v36;
  __chkstk_darwin();
  v510 = &v492 - v37;
  __chkstk_darwin();
  v501 = &v492 - v38;
  __chkstk_darwin();
  v513 = &v492 - v39;
  v502 = v40;
  __chkstk_darwin();
  v511 = &v492 - v41;
  sub_10010FC20(&unk_101183960, &unk_100EBCF90);
  __chkstk_darwin();
  v567 = &v492 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v548 = &v492 - v43;
  v585 = type metadata accessor for Song();
  v586 = *(v585 - 8);
  __chkstk_darwin();
  v515 = &v492 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v577 = &v492 - v45;
  __chkstk_darwin();
  v558 = &v492 - v46;
  __chkstk_darwin();
  v556 = &v492 - v47;
  __chkstk_darwin();
  v583 = &v492 - v48;
  __chkstk_darwin();
  v576 = &v492 - v49;
  v557 = v50;
  __chkstk_darwin();
  v550 = &v492 - v51;
  sub_10010FC20(&unk_10118F670, &unk_100EC89B0);
  __chkstk_darwin();
  v517 = &v492 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v532 = &v492 - v53;
  v54 = type metadata accessor for Playlist.Folder();
  v533 = *(v54 - 8);
  v534 = v54;
  __chkstk_darwin();
  v518 = &v492 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for Playlist.Entry();
  v544 = *(v56 - 8);
  v545 = v56;
  __chkstk_darwin();
  v546 = &v492 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011845D0, &unk_100EBF380);
  __chkstk_darwin();
  v568 = (&v492 - v58);
  v582 = type metadata accessor for PlaylistContext(0);
  v566 = *(v582 - 8);
  __chkstk_darwin();
  v547 = &v492 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v527 = type metadata accessor for Actions.Collaborate.Context(0);
  __chkstk_darwin();
  v526 = &v492 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_10118E0D8, &qword_100ECA478);
  __chkstk_darwin();
  v525 = &v492 - v61;
  v523 = type metadata accessor for Actions.EditPlaylist.Context(0);
  __chkstk_darwin();
  v522 = &v492 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101191E78, &unk_100ECEEF0);
  __chkstk_darwin();
  v521 = &v492 - v63;
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v570 = &v492 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v580 = (&v492 - v65);
  v587 = type metadata accessor for Playlist();
  v590 = *(v587 - 8);
  __chkstk_darwin();
  v579 = &v492 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v524 = &v492 - v67;
  __chkstk_darwin();
  v543 = &v492 - v68;
  __chkstk_darwin();
  v563 = &v492 - v69;
  __chkstk_darwin();
  v575 = &v492 - v70;
  v555 = v71;
  __chkstk_darwin();
  v564 = (&v492 - v72);
  v549 = type metadata accessor for Actions.PlaybackContext(0);
  v528 = *(v549 - 1);
  __chkstk_darwin();
  v529 = v73;
  v589 = (&v492 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010FC20(&unk_1011838D0, &unk_100EC0320);
  __chkstk_darwin();
  v561 = &v492 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v508 = &v492 - v75;
  __chkstk_darwin();
  v530 = &v492 - v76;
  __chkstk_darwin();
  v565 = (&v492 - v77);
  __chkstk_darwin();
  v595 = &v492 - v78;
  v591 = swift_projectBox();
  sub_100008FE4(a1, &v659);
  v79 = sub_10010FC20(&unk_10118AB50, &unk_100EBE7D0);
  sub_10010FC20(&qword_101191E80, &qword_100ECEF00);
  v80 = swift_dynamicCast();
  v593 = a3;
  v588 = a2;
  v592 = a5;
  v531 = v22;
  if (v80)
  {
    sub_100059A8C(&v646, &v668);

    v81 = static MusicActions.pinActions(item:library:presentationSource:metricsReportingContext:onFinish:)(&v668, a2, a3, v597, sub_10049BAB8, a5);

    sub_10010FC20(&unk_101183940, &unk_100EC64D0);
    v82 = swift_allocObject();
    *(v82 + 16) = xmmword_100EBC6B0;
    *(v82 + 32) = v81;
    v83 = v82 + 32;
    v84 = static ActionBuilder.buildBlock(_:)();
    swift_setDeallocating();
    sub_1000095E8(v83, &unk_10118AB80, &qword_100EBF3B0);
    swift_deallocClassInstance();
    v572 = static ActionBuilder.buildIf(_:)(v84);

    sub_10000959C(&v668);
  }

  else
  {
    *&v648 = 0;
    v647 = 0u;
    v646 = 0u;
    sub_1000095E8(&v646, &qword_101191E88, &qword_100ECEF08);
    v572 = static ActionBuilder.buildIf(_:)(0);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v86 = Strong, v87 = sub_10003169C(), v86, v87))
  {
    v88 = a1[3];
    v89 = a1[4];
    sub_10000954C(a1, v88);
    v90 = __chkstk_darwin();
    v92 = &v492 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v93 + 16))(v92, v90);
    sub_1000089F8(v597, v595, &unk_1011838D0, &unk_100EC0320);

    v94 = *ApplicationCapabilities.Controller.shared.unsafeMutableAddressor();

    sub_100492B08(v92, v94, v87, v595, v88, v89, v631);
    static Actions.ShowSongCredits.action(context:)(v631, v632);

    v662 = v632[3];
    v663 = v632[4];
    v664 = v632[5];
    v665 = v632[6];
    v659 = v632[0];
    v660 = v632[1];
    v661 = v632[2];
    v95 = static ActionBuilder.buildExpression<A, B>(_:)(&v659, &type metadata for Actions.ShowSongCredits.Context, (&type metadata for () + 1), &protocol witness table for Actions.ShowSongCredits.Context);
    v671 = v662;
    v672 = v663;
    v673 = v664;
    v674 = v665;
    v668 = v659;
    v669 = v660;
    v670 = v661;
    sub_1000095E8(&v668, &qword_101191EF0, &unk_100ECEFE8);
    sub_10010FC20(&unk_101183940, &unk_100EC64D0);
    v96 = swift_allocObject();
    *(v96 + 16) = xmmword_100EBC6B0;
    *(v96 + 32) = v95;
    v97 = v96 + 32;
    v98 = static ActionBuilder.buildBlock(_:)();
    swift_setDeallocating();
    sub_1000095E8(v97, &unk_10118AB80, &qword_100EBF3B0);
    swift_deallocClassInstance();
    v571 = static ActionBuilder.buildIf(_:)(v98);
  }

  else
  {
    v571 = static ActionBuilder.buildIf(_:)(0);
  }

  v99 = v582;
  sub_100008FE4(a1, &v668);
  v100 = sub_10010FC20(&qword_101182C50, &unk_100EBE7E0);
  v594 = v79;
  v101 = swift_dynamicCast();
  v596 = a1;
  v102 = v588;
  v103 = v580;
  if (v101)
  {
    sub_100059A8C(&v659, v645);
    sub_100008FE4(v645, &v598);
    sub_10010FC20(&qword_101182C48, &unk_100ECEFD0);
    v104 = swift_dynamicCast();
    v560 = v100;
    if (v104)
    {
      sub_100059A8C(&v614, &v606);
      v105 = *(&v607 + 1);
      v106 = v608;
      sub_10000954C(&v606, *(&v607 + 1));
      v107 = __chkstk_darwin();
      v109 = (&v492 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v110 + 16))(v109, v107);
      v111 = v591;
      swift_beginAccess();
      v112 = v111;
      v113 = v589;
      sub_10049CA68(v112, v589, type metadata accessor for Actions.PlaybackContext);
      v114 = v595;
      sub_1000089F8(v597, v595, &unk_1011838D0, &unk_100EC0320);
      Actions.Playback.Context.init<A>(item:playbackContext:shuffleMode:metricsReportingContext:)(v109, v113, 0, v114, v105, *(v106 + 8), v633);
      static Actions.Playback.action(context:)(v634, v633);

      v663 = v634[4];
      v664 = v634[5];
      v665 = v634[6];
      v659 = v634[0];
      v660 = v634[1];
      v661 = v634[2];
      *&v666 = v635;
      v662 = v634[3];
      v115 = static ActionBuilder.buildExpression<A, B>(_:)(&v659, &type metadata for Actions.Playback.Context, (&type metadata for () + 1), &protocol witness table for Actions.Playback.Context);
      v672 = v663;
      v673 = v664;
      v674 = v665;
      *&v675 = v666;
      v668 = v659;
      v669 = v660;
      v670 = v661;
      v671 = v662;
      sub_1000095E8(&v668, &qword_101191EE8, &qword_100ECEFE0);
      sub_10010FC20(&unk_101183940, &unk_100EC64D0);
      v116 = swift_allocObject();
      v500 = xmmword_100EBC6B0;
      *(v116 + 16) = xmmword_100EBC6B0;
      *(v116 + 32) = v115;
      v117 = v116 + 32;
      v118 = static ActionBuilder.buildBlock(_:)();
      swift_setDeallocating();
      sub_1000095E8(v117, &unk_10118AB80, &qword_100EBF3B0);
      swift_deallocClassInstance();
      v119 = sub_10049ABA4(0, 1, 1, _swiftEmptyArrayStorage, &unk_101183940, &unk_100EC64D0, &unk_10118AB80, &qword_100EBF3B0);
      v121 = v119[2];
      v120 = v119[3];
      if (v121 >= v120 >> 1)
      {
        v119 = sub_10049ABA4((v120 > 1), v121 + 1, 1, v119, &unk_101183940, &unk_100EC64D0, &unk_10118AB80, &qword_100EBF3B0);
      }

      v119[2] = v121 + 1;
      v119[v121 + 4] = v118;
      v122 = *(&v607 + 1);
      v123 = v608;
      sub_10000954C(&v606, *(&v607 + 1));
      v124 = __chkstk_darwin();
      v126 = (&v492 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v127 + 16))(v126, v124);
      v128 = v591;
      swift_beginAccess();
      v129 = v589;
      sub_10049CA68(v128, v589, type metadata accessor for Actions.PlaybackContext);
      v130 = v595;
      sub_1000089F8(v597, v595, &unk_1011838D0, &unk_100EC0320);
      Actions.Playback.Context.init<A>(item:playbackContext:shuffleMode:metricsReportingContext:)(v126, v129, 1, v130, v122, *(v123 + 8), v636);
      static Actions.Playback.action(context:)(v637, v636);

      v650 = v637[4];
      v651 = v637[5];
      v652 = v637[6];
      v646 = v637[0];
      v647 = v637[1];
      v648 = v637[2];
      *&v653 = v638;
      v649 = v637[3];
      v131 = static ActionBuilder.buildExpression<A, B>(_:)(&v646, &type metadata for Actions.Playback.Context, (&type metadata for () + 1), &protocol witness table for Actions.Playback.Context);
      v663 = v650;
      v664 = v651;
      v665 = v652;
      *&v666 = v653;
      v659 = v646;
      v660 = v647;
      v661 = v648;
      v662 = v649;
      sub_1000095E8(&v659, &qword_101191EE8, &qword_100ECEFE0);
      v132 = swift_allocObject();
      *(v132 + 16) = v500;
      *(v132 + 32) = v131;
      v133 = v132 + 32;
      v134 = static ActionBuilder.buildBlock(_:)();
      swift_setDeallocating();
      sub_1000095E8(v133, &unk_10118AB80, &qword_100EBF3B0);
      swift_deallocClassInstance();
      v136 = v119[2];
      v135 = v119[3];
      if (v136 >= v135 >> 1)
      {
        v119 = sub_10049ABA4((v135 > 1), v136 + 1, 1, v119, &unk_101183940, &unk_100EC64D0, &unk_10118AB80, &qword_100EBF3B0);
      }

      v103 = v580;
      v119[2] = v136 + 1;
      v119[v136 + 4] = v134;
      static ActionBuilder.buildArray(_:)(v119);
      v138 = v137;

      v139 = swift_allocObject();
      *(v139 + 16) = v500;
      *(v139 + 32) = v138;
      v140 = v139 + 32;
      v141 = static ActionBuilder.buildBlock(_:)();
      swift_setDeallocating();
      sub_1000095E8(v140, &unk_10118AB80, &qword_100EBF3B0);
      swift_deallocClassInstance();
      *&v500 = static ActionBuilder.buildIf(_:)(v141);

      sub_10000959C(&v606);
      v142 = v597;
      a1 = v596;
    }

    else
    {
      v142 = v597;
      *&v616 = 0;
      v614 = 0u;
      v615 = 0u;
      sub_1000095E8(&v614, &qword_101182C40, &unk_100EBE7C0);
      *&v500 = static ActionBuilder.buildIf(_:)(0);
    }

    sub_100008FE4(a1, &v668);
    v143 = v587;
    v144 = swift_dynamicCast();
    v145 = v590;
    v146 = *(v590 + 56);
    v147 = v564;
    v148 = v555;
    if (v144)
    {
      v146(v103, 0, 1, v143);
      v580 = *(v145 + 32);
      (v580)(v147, v103, v143);
      v149 = v142;
      v150 = *(v145 + 16);
      v151 = v575;
      v150(v575, v147, v143);
      v493 = v150;
      v494 = v145 + 16;
      sub_10012B7A8(v593, &v668);
      sub_1000089F8(v149, v595, &unk_1011838D0, &unk_100EC0320);
      v150(v563, v151, v143);
      v152 = v543;
      v150(v543, v151, v143);
      sub_10012B7A8(&v668, &v659);
      v153 = *(v145 + 80);
      v495 = ~v153;
      v496 = v153;
      v154 = (v153 + 16) & ~v153;
      v155 = (v148 + v154 + 7) & 0xFFFFFFFFFFFFFFF8;
      v156 = (v155 + 15) & 0xFFFFFFFFFFFFFFF8;
      v157 = swift_allocObject();
      v499 = v145 + 32;
      (v580)(v157 + v154, v152, v143);
      *(v157 + v155) = 0;
      v158 = v151;
      sub_10012B828(&v659, v157 + v156);
      v159 = v595;
      v160 = v565;
      sub_1000089F8(v595, v565, &unk_1011838D0, &unk_100EC0320);
      v161 = v522;
      Actions.EditPlaylist.Context.init(playlist:presentEditPlaylistView:metricsReportingContext:)(v563, sub_10049BA20, v157, v160, v522);
      v162 = v159;
      v163 = v493;
      sub_1000095E8(v162, &unk_1011838D0, &unk_100EC0320);
      sub_10012BA6C(&v668);
      v164 = *(v590 + 8);
      v497 = v590 + 8;
      v498 = v164;
      v164(v158, v143);
      v165 = v521;
      static Actions.EditPlaylist.action(context:)(v161, v521);
      sub_10049CAD0(v161, type metadata accessor for Actions.EditPlaylist.Context);
      v522 = static ActionBuilder.buildExpression<A, B>(_:)(v165, v523, (&type metadata for () + 1), &protocol witness table for Actions.EditPlaylist.Context);
      sub_1000095E8(v165, &qword_101191E78, &unk_100ECEEF0);
      v163(v158, v564, v143);
      if (qword_10117F610 != -1)
      {
        swift_once();
      }

      v523 = qword_101218AE0;
      sub_10012B7A8(v593, &v668);
      sub_1000089F8(v597, v595, &unk_1011838D0, &unk_100EC0320);
      v163(v563, v158, v143);
      v166 = v543;
      v163(v543, v158, v143);
      v167 = (v496 + 24) & v495;
      v168 = v167 + v555;
      v169 = swift_allocObject();
      v555 = v169;
      *(v169 + 16) = v523;
      (v580)(v169 + v167, v166, v143);
      v170 = v524;
      v163(v524, v158, v143);
      sub_10012B7A8(&v668, &v659);
      v171 = (v168 + 7) & 0xFFFFFFFFFFFFFFF8;
      v172 = swift_allocObject();
      *(v172 + 16) = v523;
      v173 = v172 + v167;
      v174 = v143;
      (v580)(v173, v170, v143);
      sub_10012B828(&v659, v172 + v171);
      v175 = v595;
      v176 = v565;
      sub_1000089F8(v595, v565, &unk_1011838D0, &unk_100EC0320);
      swift_retain_n();
      v177 = v526;
      Actions.Collaborate.Context.init(playlist:canCollaborateOnPlaylist:collaborate:metricsReportingContext:)(v563, sub_1003F6738, v555, sub_1003F679C, v172, v176, v526);
      sub_1000095E8(v175, &unk_1011838D0, &unk_100EC0320);
      sub_10012BA6C(&v668);
      v178 = v498;
      v498(v575, v174);
      v179 = v525;
      static Actions.Collaborate.action(context:)(v177, v525);
      sub_10049CAD0(v177, type metadata accessor for Actions.Collaborate.Context);
      v180 = static ActionBuilder.buildExpression<A, B>(_:)(v179, v527, (&type metadata for () + 1), &protocol witness table for Actions.Collaborate.Context);
      sub_1000095E8(v179, &qword_10118E0D8, &qword_100ECA478);
      sub_10010FC20(&unk_101183940, &unk_100EC64D0);
      v181 = swift_allocObject();
      *(v181 + 16) = xmmword_100EBDC20;
      *(v181 + 32) = v522;
      *(v181 + 40) = v180;
      v182 = static ActionBuilder.buildBlock(_:)();
      swift_setDeallocating();
      sub_10010FC20(&unk_10118AB80, &qword_100EBF3B0);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v183 = static ActionBuilder.buildIf(_:)(v182);

      v178(v564, v174);
      v102 = v588;
    }

    else
    {
      v146(v103, 1, 1, v143);
      sub_1000095E8(v103, &unk_1011814D0, &qword_100EC12A0);
      v183 = static ActionBuilder.buildIf(_:)(0);
      v102 = v588;
    }

    sub_10010FC20(&unk_101183940, &unk_100EC64D0);
    v184 = swift_allocObject();
    *(v184 + 16) = xmmword_100EBDC20;
    *(v184 + 32) = v500;
    *(v184 + 40) = v183;
    v185 = static ActionBuilder.buildBlock(_:)();
    swift_setDeallocating();
    sub_10010FC20(&unk_10118AB80, &qword_100EBF3B0);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v580 = static ActionBuilder.buildIf(_:)(v185);

    sub_10000959C(v645);
    v99 = v582;
    v100 = v560;
  }

  else
  {
    *&v661 = 0;
    v660 = 0u;
    v659 = 0u;
    sub_1000095E8(&v659, &qword_101182C38, &unk_100ECB2A0);
    v580 = static ActionBuilder.buildIf(_:)(0);
  }

  v186 = v568;
  sub_1000089F8(v569, v568, &unk_1011845D0, &unk_100EBF380);
  if ((*(v566 + 48))(v186, 1, v99) == 1)
  {
    sub_1000095E8(v186, &unk_1011845D0, &unk_100EBF380);
    v569 = static ActionBuilder.buildIf(_:)(0);
  }

  else
  {
    v187 = v186;
    v188 = v547;
    sub_10049BE38(v187, v547, type metadata accessor for PlaylistContext);
    v189 = v546;
    (*(v544 + 16))(v546, v188, v545);
    v190 = v188 + *(v99 + 20);
    v191 = v575;
    (*(v590 + 16))(v575, v190, v587);
    v192 = v595;
    sub_1000089F8(v597, v595, &unk_1011838D0, &unk_100EC0320);
    Actions.RemoveFromPlaylist.Context.init(entry:playlist:library:metricsReportingContext:)(v189, v191, v102, v192, v639);
    static Actions.RemoveFromPlaylist.action(context:)(v639, v640);

    v662 = v640[3];
    v663 = v640[4];
    v664 = v640[5];
    v665 = v640[6];
    v659 = v640[0];
    v660 = v640[1];
    v661 = v640[2];
    v193 = static ActionBuilder.buildExpression<A, B>(_:)(&v659, &type metadata for Actions.RemoveFromPlaylist.Context, (&type metadata for () + 1), &protocol witness table for Actions.RemoveFromPlaylist.Context);
    v671 = v662;
    v672 = v663;
    v673 = v664;
    v674 = v665;
    v668 = v659;
    v669 = v660;
    v670 = v661;
    sub_1000095E8(&v668, &qword_101191EE0, &qword_100ECEFC8);
    sub_10010FC20(&unk_101183940, &unk_100EC64D0);
    v194 = swift_allocObject();
    *(v194 + 16) = xmmword_100EBC6B0;
    *(v194 + 32) = v193;
    v195 = v194 + 32;
    v196 = static ActionBuilder.buildBlock(_:)();
    swift_setDeallocating();
    sub_1000095E8(v195, &unk_10118AB80, &qword_100EBF3B0);
    swift_deallocClassInstance();
    v569 = static ActionBuilder.buildIf(_:)(v196);

    sub_10049CAD0(v188, type metadata accessor for PlaylistContext);
  }

  v197 = v596;
  swift_beginAccess();
  v198 = swift_unknownObjectWeakLoadStrong();
  if (v198 && (v199 = v198, v200 = sub_10003169C(), v199, v200))
  {
    sub_100008FE4(v197, &v646);
    sub_10010FC20(&qword_101183E10, &unk_100ECEFB0);
    v201 = swift_dynamicCast();
    v560 = v100;
    if (v201)
    {
      sub_1000D8F88(&v659, &v668);
      *&v661 = &off_1010AD928;
      *(&v660 + 1) = &type metadata for PlaylistPicker.Presenter;
      *&v659 = v200;

      v202 = static MusicActions.libraryActions(item:library:presentationSource:playlistPickerPresenter:observer:metricsReportingContext:)(&v668, v588, v593, &v659, v519, a9, v597);
      sub_1000095E8(&v659, &qword_101191ED8, &qword_100ECEFC0);
      sub_10010FC20(&unk_101183940, &unk_100EC64D0);
      v203 = swift_allocObject();
      *(v203 + 16) = xmmword_100EBC6B0;
      *(v203 + 32) = v202;
      v204 = v203 + 32;
      v205 = static ActionBuilder.buildBlock(_:)();
      swift_setDeallocating();
      sub_1000095E8(v204, &unk_10118AB80, &qword_100EBF3B0);
      swift_deallocClassInstance();
      v206 = static ActionBuilder.buildIf(_:)(v205);

      sub_10000959C(&v668);
    }

    else
    {
      v661 = 0u;
      v660 = 0u;
      v659 = 0u;
      sub_1000095E8(&v659, &qword_101183E18, &qword_100EBF7D8);
      v206 = static ActionBuilder.buildIf(_:)(0);
    }

    v207 = v534;
    v208 = v532;
    sub_100008FE4(v596, &v668);
    v209 = swift_dynamicCast();
    v210 = v533;
    v211 = *(v533 + 56);
    if (v209)
    {
      v211(v208, 0, 1, v207);
      v212 = *(v210 + 32);
      v582 = v206;
      v213 = v518;
      v212(v518, v208, v207);
      v214 = v517;
      (*(v210 + 16))(v517, v213, v207);
      v211(v214, 0, 1, v207);
      *&v670 = &off_1010AD928;
      *(&v669 + 1) = &type metadata for PlaylistPicker.Presenter;
      *&v668 = v200;

      v215 = static MusicActions.folderActions(folder:library:presentationSource:folderPickerPresenter:onCreateFolder:)(v214, v588, v593, &v668, 0, 0);
      sub_1000095E8(v214, &unk_10118F670, &unk_100EC89B0);
      sub_10000959C(&v668);
      sub_10010FC20(&unk_101183940, &unk_100EC64D0);
      v216 = swift_allocObject();
      *(v216 + 16) = xmmword_100EBC6B0;
      v217 = v207;
      *(v216 + 32) = v215;
      v218 = v216 + 32;
      v219 = static ActionBuilder.buildBlock(_:)();
      swift_setDeallocating();
      sub_1000095E8(v218, &unk_10118AB80, &qword_100EBF3B0);
      swift_deallocClassInstance();
      v220 = static ActionBuilder.buildIf(_:)(v219);

      v221 = v213;
      v206 = v582;
      (*(v210 + 8))(v221, v217);
    }

    else
    {
      v211(v208, 1, 1, v207);
      sub_1000095E8(v208, &unk_10118F670, &unk_100EC89B0);
      v220 = static ActionBuilder.buildIf(_:)(0);
    }

    sub_10010FC20(&unk_101183940, &unk_100EC64D0);
    v222 = swift_allocObject();
    *(v222 + 16) = xmmword_100EBDC20;
    *(v222 + 32) = v206;
    *(v222 + 40) = v220;
    v223 = static ActionBuilder.buildBlock(_:)();
    swift_setDeallocating();
    sub_10010FC20(&unk_10118AB80, &qword_100EBF3B0);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v568 = static ActionBuilder.buildIf(_:)(v223);

    v197 = v596;
  }

  else
  {
    v568 = static ActionBuilder.buildIf(_:)(0);
  }

  v224 = v593;
  LODWORD(v582) = a10;
  sub_100008FE4(v197, &v668);
  v225 = swift_dynamicCast();
  v226 = v589;
  if (v225)
  {
    sub_100059A8C(&v659, &v646);
    v227 = v591;
    swift_beginAccess();
    sub_10049CA68(v227, v226, type metadata accessor for Actions.PlaybackContext);
    v566 = static MusicActions.queueActions(item:playbackContext:presentationSource:metricsReportingContext:)(&v646, v226, v224, v597);
    sub_10049CAD0(v226, type metadata accessor for Actions.PlaybackContext);
    sub_100008FE4(v197, v645);
    v228 = v548;
    v229 = v585;
    if (swift_dynamicCast())
    {
      v230 = v586;
      (v586[7])(v228, 0, 1, v229);
      v564 = v230[4];
      v231 = v550;
      v564(v550, v228, v229);
      v232 = v230[2];
      v233 = v576;
      v232(v576, v231, v229);
      swift_beginAccess();
      sub_10049CA68(v227, v226, type metadata accessor for Actions.PlaybackContext);
      sub_1000089F8(v597, v595, &unk_1011838D0, &unk_100EC0320);
      v234 = v229;
      v232(v583, v233, v229);
      v235 = v556;
      v232(v556, v233, v229);
      v236 = (*(v586 + 80) + 16) & ~*(v586 + 80);
      v237 = (v236 + v557 + *(v528 + 80)) & ~*(v528 + 80);
      v238 = swift_allocObject();
      v239 = v235;
      v240 = v564;
      v564((v238 + v236), v239, v234);
      sub_10049BE38(v589, v238 + v237, type metadata accessor for Actions.PlaybackContext);
      v241 = v558;
      v240(v558, v576, v234);
      v242 = swift_allocObject();
      v243 = v234;
      v240((v242 + v236), v241, v234);
      v244 = v593;
      Actions.Preview.Context.init<A>(item:canPreview:preview:metricsReportingContext:)(v583, sub_1001317A4, v238, sub_100131870, v242, v595, v243, &protocol witness table for Song, v641);
      static Actions.Preview.action(context:)(v641, v642);

      v662 = v642[3];
      v663 = v642[4];
      v664 = v642[5];
      v665 = v642[6];
      v659 = v642[0];
      v660 = v642[1];
      v661 = v642[2];
      v245 = static ActionBuilder.buildExpression<A, B>(_:)(&v659, &type metadata for Actions.Preview.Context, (&type metadata for () + 1), &protocol witness table for Actions.Preview.Context);
      v671 = v662;
      v672 = v663;
      v673 = v664;
      v674 = v665;
      v668 = v659;
      v669 = v660;
      v670 = v661;
      sub_1000095E8(&v668, &qword_101191ED0, &qword_100ECEFA8);
      sub_10010FC20(&unk_101183940, &unk_100EC64D0);
      v246 = swift_allocObject();
      *(v246 + 16) = xmmword_100EBC6B0;
      *(v246 + 32) = v245;
      v247 = v246 + 32;
      v248 = static ActionBuilder.buildBlock(_:)();
      swift_setDeallocating();
      sub_1000095E8(v247, &unk_10118AB80, &qword_100EBF3B0);
      swift_deallocClassInstance();
      v249 = static ActionBuilder.buildIf(_:)(v248);
      v224 = v244;

      (v586[1])(v550, v243);
    }

    else
    {
      (v586[7])(v228, 1, 1, v229);
      sub_1000095E8(v228, &unk_101183960, &unk_100EBCF90);
      v249 = static ActionBuilder.buildIf(_:)(0);
    }

    sub_10010FC20(&unk_101183940, &unk_100EC64D0);
    v250 = swift_allocObject();
    *(v250 + 16) = xmmword_100EBDC20;
    *(v250 + 32) = v566;
    *(v250 + 40) = v249;
    v251 = static ActionBuilder.buildBlock(_:)();
    swift_setDeallocating();
    sub_10010FC20(&unk_10118AB80, &qword_100EBF3B0);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v566 = static ActionBuilder.buildIf(_:)(v251);

    sub_10000959C(&v646);
    v197 = v596;
  }

  else
  {
    *&v661 = 0;
    v660 = 0u;
    v659 = 0u;
    sub_1000095E8(&v659, &qword_101182C38, &unk_100ECB2A0);
    v566 = static ActionBuilder.buildIf(_:)(0);
  }

  sub_100008FE4(v197, &v606);
  sub_10010FC20(&unk_1011814E0, &unk_100EBF9B0);
  v252 = swift_dynamicCast();
  v253 = v591;
  if (v252)
  {
    sub_100059A8C(&v598, &v646);
    sub_100008FE4(&v646, v645);
    swift_beginAccess();
    v254 = (v253 + v549[6]);
    v255 = *v254;
    v256 = v254[1];
    v257 = v224;
    v258 = v254[2];
    v259 = v254[3];
    sub_10012B7A8(v257, &v668);
    v260 = v595;
    sub_1000089F8(v597, v595, &unk_1011838D0, &unk_100EC0320);
    sub_100344C3C(v255, v256, v258, v259);
    v261 = *ApplicationCapabilities.Controller.shared.unsafeMutableAddressor();
    sub_100008FE4(v645, &v614);
    sub_100008FE4(v645, &v677);
    sub_10012B7A8(&v668, &v659);
    v262 = swift_allocObject();
    sub_100059A8C(&v677, v262 + 16);
    *(v262 + 56) = v582;
    *(v262 + 64) = v255;
    *(v262 + 72) = v256;
    *(v262 + 80) = v258;
    *(v262 + 88) = v259;
    sub_10012B828(&v659, v262 + 96);
    v263 = v565;
    sub_1000089F8(v260, v565, &unk_1011838D0, &unk_100EC0320);
    type metadata accessor for MusicLibrary();
    sub_100344C3C(v255, v256, v258, v259);

    v264 = static MusicLibrary.shared.getter();
    Actions.Share.Context.init(item:library:applicationCapabilities:shareAction:metricsReportingContext:)(&v614, v264, v261, &qword_100ECA3B0, v262, v263, v643);
    sub_100344C88(v255, v256, v258, v259);
    sub_1000095E8(v260, &unk_1011838D0, &unk_100EC0320);
    sub_10012BA6C(&v668);
    sub_10000959C(v645);
    static Actions.Share.action(context:)(v643, v645);

    v688 = v644;
    sub_100015BB0(&v688);
    v663 = v645[4];
    v664 = v645[5];
    v665 = v645[6];
    v666 = v645[7];
    v659 = v645[0];
    v660 = v645[1];
    v661 = v645[2];
    v662 = v645[3];
    v265 = static ActionBuilder.buildExpression<A, B>(_:)(&v659, &type metadata for Actions.Share.Context, (&type metadata for () + 1), &protocol witness table for Actions.Share.Context);
    v672 = v663;
    v673 = v664;
    v674 = v665;
    v675 = v666;
    v668 = v659;
    v669 = v660;
    v670 = v661;
    v671 = v662;
    sub_1000095E8(&v668, &qword_10118E0F0, &qword_100ECEFA0);
    sub_10010FC20(&unk_101183940, &unk_100EC64D0);
    v266 = swift_allocObject();
    *(v266 + 16) = xmmword_100EBC6B0;
    *(v266 + 32) = v265;
    v267 = v266 + 32;
    v268 = static ActionBuilder.buildBlock(_:)();
    swift_setDeallocating();
    v269 = v267;
    v197 = v596;
    sub_1000095E8(v269, &unk_10118AB80, &qword_100EBF3B0);
    v224 = v593;
    swift_deallocClassInstance();
    v565 = static ActionBuilder.buildIf(_:)(v268);

    sub_10000959C(&v646);
  }

  else
  {
    *&v600 = 0;
    v599 = 0u;
    v598 = 0u;
    sub_1000095E8(&v598, &qword_10118E0A8, "\\k\t");
    v565 = static ActionBuilder.buildIf(_:)(0);
  }

  v270 = v567;
  sub_100008FE4(v197, &v614);
  v271 = v585;
  if (swift_dynamicCast())
  {
    v272 = v586;
    (v586[7])(v270, 0, 1, v271);
    v273 = (v272 + 4);
    v567 = v272[4];
    v274 = v577;
    (v567)(v577, v270, v271);
    v275 = v271;
    v276 = v272[2];
    v277 = v576;
    v276(v576, v274, v271);
    sub_10012B7A8(v224, &v668);
    sub_1000089F8(v597, v595, &unk_1011838D0, &unk_100EC0320);
    v278 = static ApplicationCapabilities.shared.getter(&v646);
    (v276)(v583, v277, v271, v278);
    v279 = v556;
    v560 = v276;
    v276(v556, v277, v271);
    v563 = (v272 + 2);
    v280 = *(v272 + 80);
    v281 = (v280 + 16) & ~v280;
    v550 = (v557 + 7);
    v282 = (v557 + 7 + v281) & 0xFFFFFFFFFFFFFFF8;
    v283 = swift_allocObject();
    v564 = v283;
    v284 = v279;
    v285 = v567;
    (v567)(v283 + v281, v284, v275);
    v286 = v283 + v282;
    v287 = v651;
    *(v286 + 4) = v650;
    *(v286 + 5) = v287;
    v288 = v653;
    *(v286 + 6) = v652;
    *(v286 + 7) = v288;
    v289 = v647;
    *v286 = v646;
    *(v286 + 1) = v289;
    v290 = v649;
    *(v286 + 2) = v648;
    *(v286 + 3) = v290;
    v291 = v558;
    v285(v558, v277, v275);
    v557 = v280;
    v292 = swift_allocObject();
    v555 = v281;
    v558 = v273;
    (v567)(v292 + v281, v291, v275);
    v556 = v282;
    *(v292 + v282) = 0;
    sub_10012B828(&v668, v292 + ((v282 + 15) & 0xFFFFFFFFFFFFFFF8));
    Actions.ViewFullLyrics.Context.init<A>(item:canViewFullLyrics:viewFullLyrics:metricsReportingContext:)(v583, sub_1004988EC, v564, &unk_100ECEF68, v292, v595, v275, &protocol witness table for Song, v654);
    static Actions.ViewFullLyrics.action(context:)(v654, v655);

    v662 = v655[3];
    v663 = v655[4];
    v664 = v655[5];
    v665 = v655[6];
    v659 = v655[0];
    v660 = v655[1];
    v661 = v655[2];
    v293 = static ActionBuilder.buildExpression<A, B>(_:)(&v659, &type metadata for Actions.ViewFullLyrics.Context, (&type metadata for () + 1), &protocol witness table for Actions.ViewFullLyrics.Context);
    v671 = v662;
    v672 = v663;
    v673 = v664;
    v674 = v665;
    v668 = v659;
    v669 = v660;
    v670 = v661;
    sub_1000095E8(&v668, &qword_101191EC0, &qword_100ECEF70);
    sub_1001EBB88();
    if ((v294 & 1) != 0 || (v295 = [objc_opt_self() currentTraitCollection], v296 = objc_msgSend(v295, "userInterfaceIdiom"), v295, v296 == 6))
    {
      v297 = static ActionBuilder.buildIf(_:)(0);
      v298 = v585;
    }

    else
    {
      v300 = v515;
      v560(v515, v577, v585);
      sub_10012B7A8(v593, &v598);
      sub_1000089F8(v597, v530, &unk_1011838D0, &unk_100EC0320);
      if (qword_10117F5F8 != -1)
      {
        swift_once();
      }

      v301 = ~v557;
      v302 = (*(*qword_101218AC8 + 432))();
      v583 = v293;
      if (v302)
      {
        v303 = v302;
        v549 = [v302 tracklist];
      }

      else
      {
        v549 = 0;
      }

      v304 = *ApplicationCapabilities.Controller.shared.unsafeMutableAddressor();
      v564 = v304;
      v305 = v576;
      v306 = v585;
      v307 = v560;
      v560(v576, v300, v585);
      v308 = (v557 + 24) & v301;
      v309 = v300;
      v310 = &v550[v308] & 0xFFFFFFFFFFFFFFF8;
      v311 = swift_allocObject();
      *(v311 + 16) = v304;
      v312 = v567;
      (v567)(v311 + v308, v305, v306);
      *(v311 + v310) = v549;
      *(&v660 + 1) = v306;
      *&v661 = &protocol witness table for Song;
      v313 = sub_10001C8B8(&v659);
      v307(v313, v309, v306);
      v298 = v306;
      v312(v305, v309, v306);
      v314 = v556;
      v315 = swift_allocObject();
      v312((v315 + v555), v305, v298);
      sub_10012B828(&v598, &v314[v315]);
      Actions.ShareLyrics.Context.init(item:canShareLyrics:shareLyrics:metricsReportingContext:)(&v659, sub_10049B754, v311, &unk_100ECEF80, v315, v530, v656);
      static Actions.ShareLyrics.action(context:)(v656, v657);

      v610 = v657[4];
      v611 = v657[5];
      v612 = v657[6];
      v606 = v657[0];
      v607 = v657[1];
      v608 = v657[2];
      v609 = v657[3];
      v316 = static ActionBuilder.buildExpression<A, B>(_:)(&v606, &type metadata for Actions.ShareLyrics.Context, (&type metadata for () + 1), &protocol witness table for Actions.ShareLyrics.Context);
      v662 = v609;
      v663 = v610;
      v664 = v611;
      v665 = v612;
      v659 = v606;
      v660 = v607;
      v661 = v608;
      sub_1000095E8(&v659, &qword_101191EC8, &qword_100ECEF88);
      sub_10010FC20(&unk_101183940, &unk_100EC64D0);
      v317 = swift_allocObject();
      *(v317 + 16) = xmmword_100EBC6B0;
      *(v317 + 32) = v316;
      v318 = v317 + 32;
      v319 = static ActionBuilder.buildBlock(_:)();
      swift_setDeallocating();
      sub_1000095E8(v318, &unk_10118AB80, &qword_100EBF3B0);
      swift_deallocClassInstance();
      v297 = static ActionBuilder.buildIf(_:)(v319);

      v293 = v583;
    }

    sub_10010FC20(&unk_101183940, &unk_100EC64D0);
    v320 = swift_allocObject();
    *(v320 + 16) = xmmword_100EBDC20;
    *(v320 + 32) = v293;
    *(v320 + 40) = v297;
    v321 = static ActionBuilder.buildBlock(_:)();
    swift_setDeallocating();
    sub_10010FC20(&unk_10118AB80, &qword_100EBF3B0);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v585 = static ActionBuilder.buildIf(_:)(v321);

    (v586[1])(v577, v298);
    v299 = v597;
    v224 = v593;
    v197 = v596;
  }

  else
  {
    (v586[7])(v270, 1, 1, v271);
    sub_1000095E8(v270, &unk_101183960, &unk_100EBCF90);
    v585 = static ActionBuilder.buildIf(_:)(0);
    v299 = v597;
  }

  swift_beginAccess();
  v322 = swift_unknownObjectWeakLoadStrong();
  if (!v322 || (v323 = v322, v324 = sub_10003169C(), v323, !v324))
  {
    v586 = static ActionBuilder.buildIf(_:)(0);
    v339 = v299;
    v340 = v224;
    goto LABEL_69;
  }

  v583 = v324;
  if (!v582)
  {
    if (qword_10117F5F8 != -1)
    {
      swift_once();
    }

    v427 = (*(*qword_101218AC8 + 432))();
    if (v427)
    {
      v428 = v427;
      v429 = [v427 tracklist];

      MPCPlayerResponseTracklist.currentPlayEvent.getter();
      v431 = v430;

      if (v431)
      {
        if ([v431 itemType] == 3 && (v432 = objc_msgSend(v431, "playlist")) != 0)
        {
          v433 = v432;
          v434 = v509;
          sub_10035A2B0(v433, v509);
          v435 = v512;
          if ((*(v512 + 48))(v434, 1, v514) != 1)
          {
            v567 = v433;
            v453 = *(v435 + 32);
            v454 = v511;
            v455 = v514;
            v586 = (v435 + 32);
            v577 = v453;
            (v453)(v511, v434, v514);
            sub_100008FE4(v197, &v668);
            v456 = *(v435 + 16);
            v457 = v513;
            v456(v513, v454, v455);
            sub_1000089F8(v299, v508, &unk_1011838D0, &unk_100EC0320);
            v458 = v501;
            v564 = v456;
            v563 = (v435 + 16);
            v456(v501, v457, v455);
            v459 = v435;
            if ((*(v435 + 88))(v458, v455) == enum case for Playlist.Folder.Item.playlist(_:))
            {
              (*(v435 + 96))(v458, v455);
              v460 = v590;
              v461 = v455;
              v462 = v575;
              v463 = v587;
              (*(v590 + 32))(v575, v458, v587);

              v464 = v461;
              v576 = MusicLibrary.state<A>(for:)();
              (*(v460 + 8))(v462, v463);
            }

            else
            {
              v465 = *(v435 + 8);

              v466 = v458;
              v464 = v455;
              v465(v466, v455);
              v459 = v512;
              v576 = 0;
            }

            sub_100008FE4(&v668, &v659);
            v467 = v513;
            v468 = v564;
            v564(v510, v513, v464);
            v469 = v503;
            v468(v503, v467, v464);
            v470 = *(v459 + 80);
            v471 = (v470 + 24) & ~v470;
            v560 = (v502 + 7);
            v472 = (v502 + 7 + v471) & 0xFFFFFFFFFFFFFFF8;
            v473 = swift_allocObject();
            *(v473 + 16) = v588;
            v474 = v473 + v471;
            v575 = v473;
            v475 = v514;
            (v577)(v474, v469, v514);
            *(v473 + v472) = v576;
            v476 = v504;
            v468(v504, v513, v475);
            sub_100008FE4(&v668, &v606);
            v477 = (v470 + 17) & ~v470;
            v478 = (v560 + v477) & 0xFFFFFFFFFFFFFFF8;
            v479 = (v478 + 15) & 0xFFFFFFFFFFFFFFF8;
            v480 = swift_allocObject();
            *(v480 + 16) = 0;
            v481 = v476;
            v482 = v514;
            (v577)(v480 + v477, v481, v514);
            *(v480 + v478) = v576;
            sub_100059A8C(&v606, v480 + v479);
            *(v480 + ((v479 + 47) & 0xFFFFFFFFFFFFFFF8)) = v583;
            v483 = v508;
            v484 = v595;
            sub_1000089F8(v508, v595, &unk_1011838D0, &unk_100EC0320);

            v485 = v506;
            Actions.GoToPlaylistFolderItem.Context.init(playlistEntry:playlistFolderItem:canGoToPlaylistFolderItem:goToPlaylistFolderItem:metricsReportingContext:)(&v659, v510, sub_100498794, v575, &unk_100ECEF58, v480, v484, v506);
            sub_1000095E8(v483, &unk_1011838D0, &unk_100EC0320);
            v486 = *(v512 + 8);
            v486(v513, v482);
            sub_10000959C(&v668);
            v487 = v505;
            static Actions.GoToPlaylistFolderItem.action(context:)(v485, v505);
            sub_10049CAD0(v485, type metadata accessor for Actions.GoToPlaylistFolderItem.Context);
            v488 = static ActionBuilder.buildExpression<A, B>(_:)(v487, v507, (&type metadata for () + 1), &protocol witness table for Actions.GoToPlaylistFolderItem.Context);
            sub_1000095E8(v487, &qword_101191E70, &unk_100ECEEE0);
            sub_10010FC20(&unk_101183940, &unk_100EC64D0);
            v489 = swift_allocObject();
            *(v489 + 16) = xmmword_100EBC6B0;
            *(v489 + 32) = v488;
            v490 = v489 + 32;
            v491 = static ActionBuilder.buildBlock(_:)();
            swift_setDeallocating();
            sub_1000095E8(v490, &unk_10118AB80, &qword_100EBF3B0);
            swift_deallocClassInstance();
            v586 = static ActionBuilder.buildIf(_:)(v491);

            v486(v511, v514);
            v299 = v597;
            goto LABEL_61;
          }

          sub_1000095E8(v434, &qword_1011831B0, &qword_100ED2570);
        }

        else
        {
        }
      }
    }
  }

  v586 = static ActionBuilder.buildIf(_:)(0);
LABEL_61:
  sub_100008FE4(v197, &v614);
  sub_10010FC20(&qword_101191EB0, &qword_100ECEF38);
  if (swift_dynamicCast())
  {
    sub_100059A8C(&v677, &v598);
    v325 = *(&v599 + 1);
    v326 = v600;
    sub_10000954C(&v598, *(&v599 + 1));
    v327 = __chkstk_darwin();
    v329 = &v492 - ((v328 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v330 + 16))(v329, v327);
    v331 = v595;
    sub_1000089F8(v299, v595, &unk_1011838D0, &unk_100EC0320);
    v332 = v588;

    sub_100132864(v329, v332, v582, v583, v331, v325, v326, &v658);
    static Actions.GoToAlbum.action(context:)(&v658, &v659);
    v687 = v658;
    sub_1000095E8(&v687, &qword_1011815E0, &qword_100EBD050);

    v610 = v663;
    v611 = v664;
    v612 = v665;
    v613 = v666;
    v606 = v659;
    v607 = v660;
    v608 = v661;
    v609 = v662;
    v333 = static ActionBuilder.buildExpression<A, B>(_:)(&v606, &type metadata for Actions.GoToAlbum.Context, (&type metadata for () + 1), &protocol witness table for Actions.GoToAlbum.Context);
    v672 = v610;
    v673 = v611;
    v674 = v612;
    v675 = v613;
    v668 = v606;
    v669 = v607;
    v670 = v608;
    v671 = v609;
    sub_1000095E8(&v668, &qword_101185D70, &unk_100EC1630);
    sub_10010FC20(&unk_101183940, &unk_100EC64D0);
    v334 = swift_allocObject();
    *(v334 + 16) = xmmword_100EBC6B0;
    *(v334 + 32) = v333;
    v335 = v334 + 32;
    v336 = static ActionBuilder.buildBlock(_:)();
    swift_setDeallocating();
    sub_1000095E8(v335, &unk_10118AB80, &qword_100EBF3B0);
    swift_deallocClassInstance();
    v582 = static ActionBuilder.buildIf(_:)(v336);

    sub_10000959C(&v598);
  }

  else
  {
    *&v679 = 0;
    v678 = 0u;
    v677 = 0u;
    sub_1000095E8(&v677, &qword_101191EB8, &qword_100ECEF40);
    v582 = static ActionBuilder.buildIf(_:)(0);
  }

  v338 = v537;
  v337 = v538;
  v341 = v535;
  sub_100008FE4(v197, &v614);
  sub_1000089F8(v299, v561, &unk_1011838D0, &unk_100EC0320);

  v342 = *ApplicationCapabilities.Controller.shared.unsafeMutableAddressor();
  sub_100008FE4(&v614, &v668);
  v577 = v342;

  if (swift_dynamicCast())
  {
    v343 = v536;
    (*(v536 + 8))(v341, v338);
    sub_100008FE4(&v614, &v668);
    v344 = v520;
    v345 = swift_dynamicCast();
    (*(v343 + 56))(v344, v345 ^ 1u, 1, v338);
    sub_10003D17C(v344, v337, &unk_101184930, &unk_100EC05C0);
  }

  else
  {
    (*(v536 + 56))(v337, 1, 1, v338);
  }

  v346 = *(&v615 + 1);
  v575 = v616;
  sub_10000954C(&v614, *(&v615 + 1));
  v576 = &v492;
  v347 = __chkstk_darwin();
  v567 = &v492 - ((v348 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v349 + 16))(v347);
  v350 = v541;
  sub_1000089F8(v337, v541, &unk_101184930, &unk_100EC05C0);
  v351 = v337;
  v352 = (*(v539 + 80) + 16) & ~*(v539 + 80);
  v353 = (v540 + v352 + 7) & 0xFFFFFFFFFFFFFFF8;
  v354 = swift_allocObject();
  sub_10003D17C(v350, v354 + v352, &unk_101184930, &unk_100EC05C0);
  *(v354 + v353) = v577;
  v355 = v542;
  sub_10003D17C(v351, v542, &unk_101184930, &unk_100EC05C0);
  v356 = swift_allocObject();
  sub_10003D17C(v355, v356 + v352, &unk_101184930, &unk_100EC05C0);
  *(v356 + v353) = v583;
  Actions.GoToArtist.Context.init<A>(item:subtitle:canGoToArtist:goToArtist:metricsReportingContext:)(v567, 0, 0, sub_1004984C0, v354, &unk_100ECEF48, v356, v561, &v667, v346, v575);
  sub_10000959C(&v614);
  static Actions.GoToArtist.action(context:)(&v667, &v668);
  v686 = v667;
  sub_1000095E8(&v686, &qword_1011815E0, &qword_100EBD050);

  v603 = v673;
  v604 = v674;
  v605 = v675;
  v598 = v668;
  v599 = v669;
  v600 = v670;
  v601 = v671;
  v602 = v672;
  v357 = static ActionBuilder.buildExpression<A, B>(_:)(&v598, &type metadata for Actions.GoToArtist.Context, (&type metadata for () + 1), &protocol witness table for Actions.GoToArtist.Context);
  v610 = v602;
  v611 = v603;
  v612 = v604;
  v613 = v605;
  v606 = v598;
  v607 = v599;
  v608 = v600;
  v609 = v601;
  sub_1000095E8(&v606, &unk_101183950, &qword_100EBF3B8);
  sub_10010FC20(&unk_101183940, &unk_100EC64D0);
  v358 = swift_allocObject();
  *(v358 + 16) = xmmword_100EBE260;
  *(v358 + 32) = v586;
  *(v358 + 40) = v582;
  *(v358 + 48) = v357;
  v359 = static ActionBuilder.buildBlock(_:)();
  swift_setDeallocating();
  sub_10010FC20(&unk_10118AB80, &qword_100EBF3B0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v586 = static ActionBuilder.buildIf(_:)(v359);

  v339 = v597;
  v340 = v593;
  v197 = v596;
LABEL_69:
  v360 = v197[3];
  v361 = v596[4];
  sub_10000954C(v596, v360);
  v362 = __chkstk_darwin();
  v364 = &v492 - ((v363 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v365 + 16))(v364, v362);
  v366 = v591;
  swift_beginAccess();
  v367 = v589;
  sub_10049CA68(v366, v589, type metadata accessor for Actions.PlaybackContext);
  sub_10012B7A8(v340, &v606);
  v368 = v595;
  sub_1000089F8(v339, v595, &unk_1011838D0, &unk_100EC0320);
  v369 = v361;
  v370 = v596;
  Actions.CreateStation.Context.init<A>(item:playbackContext:presentationSource:metricsReportingContext:)(v364, v367, &v606, v368, v360, v369, v676);
  static Actions.CreateStation.action(context:)(v676, &v677);

  v610 = v681;
  v611 = v682;
  v612 = v683;
  v606 = v677;
  v607 = v678;
  v608 = v679;
  v609 = v680;
  v591 = static ActionBuilder.buildExpression<A, B>(_:)(&v606, &type metadata for Actions.CreateStation.Context, (&type metadata for () + 1), &protocol witness table for Actions.CreateStation.Context);
  v630[4] = v610;
  v630[5] = v611;
  v630[6] = v612;
  v630[0] = v606;
  v630[1] = v607;
  v630[2] = v608;
  v630[3] = v609;
  sub_1000095E8(v630, &qword_101191E90, &unk_100ECEF10);
  sub_100008FE4(v370, &v598);
  sub_10010FC20(&unk_101184960, &qword_100EC05F8);
  if (swift_dynamicCast())
  {
    sub_100059A8C(&v614, &v606);
    *(&v599 + 1) = &type metadata for PresentationSource;
    *&v600 = &protocol witness table for PresentationSource;
    *&v598 = swift_allocObject();
    sub_10012B7A8(v340, v598 + 16);
    v371 = v592;
    swift_beginAccess();
    v372 = swift_unknownObjectWeakLoadStrong();
    v373 = v340;
    if (v372 && (v374 = v372, v375 = UIViewController.noticePresenter.getter(), v374, v373 = v593, v375))
    {
      v376 = type metadata accessor for NoticePresenter(0);
      *&v616 = &protocol witness table for NoticePresenter;
      *(&v615 + 1) = v376;
      *&v614 = v375;
    }

    else
    {
      *&v616 = 0;
      v614 = 0u;
      v615 = 0u;
    }

    v378 = v578;
    v380 = v597;
    sub_100008FE4(&v606, &v622);
    v381 = swift_allocObject();
    *(v381 + 16) = v371;
    sub_100059A8C(&v622, v381 + 24);

    v382 = static MusicActions.tasteActions(item:library:alertPresenter:noticePresenting:ratingViewController:presentationSource:metricsReportingContext:onFinish:)(&v606, v588, &v598, &v614, sub_100492D58, 0, v373, v380, sub_1004984B4, v381);

    sub_1000095E8(&v614, &qword_101191EA8, &qword_100ECEF30);
    sub_10000959C(&v598);
    sub_10010FC20(&unk_101183940, &unk_100EC64D0);
    v383 = swift_allocObject();
    *(v383 + 16) = xmmword_100EBC6B0;
    *(v383 + 32) = v382;
    v384 = v383 + 32;
    v385 = static ActionBuilder.buildBlock(_:)();
    swift_setDeallocating();
    sub_1000095E8(v384, &unk_10118AB80, &qword_100EBF3B0);
    swift_deallocClassInstance();
    v592 = static ActionBuilder.buildIf(_:)(v385);

    sub_10000959C(&v606);
    v377 = v584;
    v379 = v570;
  }

  else
  {
    *&v616 = 0;
    v614 = 0u;
    v615 = 0u;
    sub_1000095E8(&v614, &qword_101191E98, &qword_100ECEF20);
    v592 = static ActionBuilder.buildIf(_:)(0);
    v377 = v584;
    v378 = v578;
    v379 = v570;
    v380 = v597;
  }

  v588 = a12;
  v589 = a11;
  sub_100008FE4(v370, &v606);
  v386 = v587;
  v387 = swift_dynamicCast();
  v388 = v590;
  v389 = *(v590 + 56);
  v390 = v581;
  if ((v387 & 1) == 0)
  {
    v389(v379, 1, 1, v386);
    sub_1000095E8(v379, &unk_1011814D0, &qword_100EC12A0);
    v403 = v573;
LABEL_85:
    v406 = static ActionBuilder.buildIf(_:)(0);
    goto LABEL_86;
  }

  v389(v379, 0, 1, v386);
  (*(v388 + 32))(v579, v379, v386);
  Playlist.kind.getter();
  v391 = v559;
  v392 = v552;
  (*(v559 + 104))(v390, enum case for Playlist.Kind.userShared(_:), v552);
  (*(v391 + 56))(v390, 0, 1, v392);
  v393 = *(v551 + 48);
  v394 = v562;
  sub_1000089F8(v378, v562, &qword_101187EF8, &unk_100ECEED0);
  v395 = v392;
  v396 = v394;
  sub_1000089F8(v390, v394 + v393, &qword_101187EF8, &unk_100ECEED0);
  v397 = *(v391 + 48);
  if (v397(v394, 1, v395) != 1)
  {
    v404 = v531;
    sub_1000089F8(v394, v531, &qword_101187EF8, &unk_100ECEED0);
    if (v397(v394 + v393, 1, v395) != 1)
    {
      v436 = v559;
      v437 = v394 + v393;
      v438 = v516;
      (*(v559 + 32))(v516, v437, v395);
      sub_10049CB30(&qword_101187F00, &type metadata accessor for Playlist.Kind, &protocol conformance descriptor for Playlist.Kind);
      v439 = v395;
      v440 = dispatch thunk of static Equatable.== infix(_:_:)();
      v441 = *(v436 + 8);
      v441(v438, v439);
      sub_1000095E8(v581, &qword_101187EF8, &unk_100ECEED0);
      sub_1000095E8(v578, &qword_101187EF8, &unk_100ECEED0);
      v441(v404, v439);
      sub_1000095E8(v396, &qword_101187EF8, &unk_100ECEED0);
      v380 = v597;
      v401 = v593;
      v402 = v590;
      if (v440)
      {
        goto LABEL_99;
      }

LABEL_84:
      (*(v402 + 8))(v579, v587);
      v377 = v584;
      v403 = v573;
      goto LABEL_85;
    }

    v405 = v395;
    sub_1000095E8(v581, &qword_101187EF8, &unk_100ECEED0);
    v399 = v562;
    sub_1000095E8(v378, &qword_101187EF8, &unk_100ECEED0);
    (*(v559 + 8))(v404, v405);
    v380 = v597;
LABEL_83:
    sub_1000095E8(v399, &qword_101187EF0, &unk_100EC3600);
    v402 = v590;
    goto LABEL_84;
  }

  v398 = v395;
  sub_1000095E8(v390, &qword_101187EF8, &unk_100ECEED0);
  v399 = v562;
  sub_1000095E8(v378, &qword_101187EF8, &unk_100ECEED0);
  v400 = v397(v399 + v393, 1, v398);
  v380 = v597;
  if (v400 != 1)
  {
    goto LABEL_83;
  }

  sub_1000095E8(v399, &qword_101187EF8, &unk_100ECEED0);
  v401 = v593;
  v402 = v590;
LABEL_99:
  v442 = Playlist.isOwner.getter();
  if (v442 != 2 && (v442 & 1) != 0)
  {
    goto LABEL_84;
  }

  v443 = v579;
  v444 = Playlist.id.getter();
  v446 = v445;
  sub_10012B7A8(v401, &v606);
  v447 = v595;
  sub_1000089F8(v380, v595, &unk_1011838D0, &unk_100EC0320);
  v448 = swift_allocObject();
  *(v448 + 16) = v444;
  *(v448 + 24) = v446;
  *(v448 + 32) = 0;
  *(v448 + 40) = 0;
  sub_10012B828(&v606, v448 + 48);
  Actions.ReportConcern.Context.init(contentID:contentType:actionType:canReportConcern:reportConcern:metricsReportingContext:)(v444, v446, 0x7473696C79616C70, 0xE800000000000000, 41, variable initialization expression of _NSRange.NSRangeIterator.current, 0, &unk_100EBF410, v684, v448, v447);
  static Actions.ReportConcern.action(context:)(v684, &v606);

  v618 = v610;
  v619 = v611;
  v620 = v612;
  v621 = v613;
  v614 = v606;
  v615 = v607;
  v616 = v608;
  v617 = v609;
  v449 = static ActionBuilder.buildExpression<A, B>(_:)(&v614, &type metadata for Actions.ReportConcern.Context, (&type metadata for () + 1), &protocol witness table for Actions.ReportConcern.Context);
  v603 = v619;
  v604 = v620;
  v598 = v614;
  v599 = v615;
  v600 = v616;
  *&v605 = v621;
  v601 = v617;
  v602 = v618;
  sub_1000095E8(&v598, &qword_1011839B0, &unk_100EC73E0);
  sub_10010FC20(&unk_101183940, &unk_100EC64D0);
  v450 = swift_allocObject();
  *(v450 + 16) = xmmword_100EBC6B0;
  *(v450 + 32) = v449;
  v451 = v450 + 32;
  v452 = static ActionBuilder.buildBlock(_:)();
  swift_setDeallocating();
  sub_1000095E8(v451, &unk_10118AB80, &qword_100EBF3B0);
  swift_deallocClassInstance();
  v406 = static ActionBuilder.buildIf(_:)(v452);

  (*(v402 + 8))(v443, v587);
  v377 = v584;
  v403 = v573;
LABEL_86:
  sub_100008FE4(v370, &v629);
  if (swift_dynamicCast())
  {
    v407 = v574;
    (*(v574 + 56))(v403, 0, 1, v377);
    v408 = v554;
    (*(v407 + 32))(v554, v403, v377);
    v409 = v553;
    (*(v407 + 16))(v553, v408, v377);
    sub_10012B7A8(v593, &v598);
    v410 = v595;
    sub_1000089F8(v380, v595, &unk_1011838D0, &unk_100EC0320);
    Actions.OpenInClassical.Context.init(album:presentationSource:metricsReportingContext:)(v409, &v598, v410, &v685);
    static Actions.OpenInClassical.action(context:)(&v685, &v598);

    v626 = v602;
    v627 = v603;
    v628 = v604;
    v622 = v598;
    v623 = v599;
    v624 = v600;
    v625 = v601;
    v411 = v377;
    v412 = static ActionBuilder.buildExpression<A, B>(_:)(&v622, &type metadata for Actions.OpenInClassical.Context, (&type metadata for () + 1), &protocol witness table for Actions.OpenInClassical.Context);
    v618 = v626;
    v619 = v627;
    v620 = v628;
    v614 = v622;
    v615 = v623;
    v616 = v624;
    v617 = v625;
    sub_1000095E8(&v614, &qword_101191EA0, &qword_100ECEF28);
    sub_10010FC20(&unk_101183940, &unk_100EC64D0);
    v413 = swift_allocObject();
    *(v413 + 16) = xmmword_100EBC6B0;
    *(v413 + 32) = v412;
    v414 = v413 + 32;
    v415 = static ActionBuilder.buildBlock(_:)();
    swift_setDeallocating();
    sub_1000095E8(v414, &unk_10118AB80, &qword_100EBF3B0);
    swift_deallocClassInstance();
    v416 = static ActionBuilder.buildIf(_:)(v415);

    v417 = (*(v407 + 8))(v408, v411);
  }

  else
  {
    (*(v574 + 56))(v403, 1, 1, v377);
    sub_1000095E8(v403, &unk_101184730, &unk_100ECB920);
    v417 = static ActionBuilder.buildIf(_:)(0);
    v416 = v417;
  }

  v418 = v589(v417);
  sub_10010FC20(&unk_101183940, &unk_100EC64D0);
  v419 = swift_allocObject();
  *(v419 + 16) = xmmword_100ECEEA0;
  *(v419 + 32) = v572;
  v420 = v580;
  *(v419 + 40) = v571;
  *(v419 + 48) = v420;
  v421 = v568;
  *(v419 + 56) = v569;
  *(v419 + 64) = v421;
  v422 = v565;
  *(v419 + 72) = v566;
  *(v419 + 80) = v422;
  v423 = v586;
  *(v419 + 88) = v585;
  *(v419 + 96) = v423;
  v424 = v592;
  *(v419 + 104) = v591;
  *(v419 + 112) = v424;
  *(v419 + 120) = v406;
  *(v419 + 128) = v416;
  *(v419 + 136) = v418;
  v425 = static ActionBuilder.buildBlock(_:)();
  swift_setDeallocating();
  sub_10010FC20(&unk_10118AB80, &qword_100EBF3B0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v425;
}

double sub_100492B08@<D0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  v28 = a6;
  v29 = a2;
  v31 = a3;
  v32 = a4;
  v33 = a7;
  v10 = *(a5 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v28 - v13;
  v15 = __chkstk_darwin();
  v30 = &v28 - v16;
  v17 = *(v10 + 16);
  v17(v15);
  (v17)(v14, a1, a5);
  v18 = *(v10 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a5;
  *(v19 + 3) = a6;
  *(v19 + 4) = v29;
  v20 = *(v10 + 32);
  v20(&v19[(v18 + 40) & ~v18], v14, a5);
  v20(v12, a1, a5);
  v21 = (v18 + 32) & ~v18;
  v22 = swift_allocObject();
  v23 = v28;
  *(v22 + 16) = a5;
  *(v22 + 24) = v23;
  v20((v22 + v21), v12, a5);
  v24 = v30;
  *(v22 + ((v11 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = v31;
  Actions.ShowSongCredits.Context.init<A>(item:canShowSongCredits:showSongCredits:metricsReportingContext:)(v24, sub_10049BBA4, v19, &unk_100ECF010, v22, v32, a5, v23, v34);
  v25 = v34[1];
  v26 = v33;
  *v33 = v34[0];
  v26[1] = v25;
  result = *&v35;
  v26[2] = v35;
  return result;
}

uint64_t sub_100492D58(void *a1)
{
  sub_10000954C(a1, a1[3]);
  *&result = COERCE_DOUBLE(dispatch thunk of MusicUserRatable.userRating.getter());
  v3 = 0.0;
  if ((v2 & 1) == 0)
  {
    v3 = *&result * 5.0;
  }

  v4 = COERCE_UNSIGNED_INT64(fabs(*&result * 5.0)) < 0x7FF0000000000000;
  if ((v2 & 1) == 0 && !v4)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v3 < 9.22337204e18)
  {
    v6 = v3;
    v7 = type metadata accessor for RatingControlViewController();
    v8 = objc_allocWithZone(v7);
    v9 = objc_allocWithZone(type metadata accessor for RatingControlViewController.RatingControl());
    *&v8[OBJC_IVAR____TtC5Music27RatingControlViewController_ratingControl] = sub_1005EC334(5, v6);
    v10.receiver = v8;
    v10.super_class = v7;
    *&result = COERCE_DOUBLE(objc_msgSendSuper2(&v10, "initWithNibName:bundle:", 0, 0));
    return result;
  }

LABEL_12:
  __break(1u);
  return result;
}

double sub_100492E6C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a1;
  if (ActionType.rawValue.getter(a1) == 0x657469726F766166 && v5 == 0xE800000000000000)
  {
LABEL_3:

    goto LABEL_5;
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v6 & 1) == 0)
  {
    if (ActionType.rawValue.getter(v4) != 0x6F7661466F646E75 || v13 != 0xEC00000065746972)
    {
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v14 & 1) == 0)
      {
        return result;
      }

      goto LABEL_5;
    }

    goto LABEL_3;
  }

LABEL_5:
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = a3[3];
    v11 = a3[4];
    v12 = sub_10000954C(a3, v10);
    sub_10049B454(v12, v9, v10, v11);
  }

  return result;
}

uint64_t sub_100492FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7)
{
  v95 = a6;
  v98 = a5;
  v99 = a4;
  v112 = a3;
  v87 = a2;
  v94 = type metadata accessor for MusicPin.Item();
  v93 = *(v94 - 8);
  __chkstk_darwin();
  v90 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for MusicPin.Action();
  v91 = *(v92 - 8);
  __chkstk_darwin();
  v88 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for UUID();
  v114 = *(v103 - 8);
  __chkstk_darwin();
  v102 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = *(sub_10010FC20(&unk_1011838D0, &unk_100EC0320) - 8);
  v113 = *(v109 + 64);
  __chkstk_darwin();
  v13 = &v78 - v12;
  v108 = *(type metadata accessor for Actions.PlaybackContext(0) - 8);
  v14 = *(v108 + 8);
  __chkstk_darwin();
  v15 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for MusicPin();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin();
  v19 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_10049CB30(&qword_10118BB00, &type metadata accessor for MusicPin, &protocol conformance descriptor for MusicPin);
  v97 = a1;
  v89 = dispatch thunk of CustomStringConvertible.description.getter();
  v81 = v20;
  v21 = *(v17 + 16);
  v110 = v17 + 16;
  v111 = v21;
  v96 = v19;
  v21(v19, a1, v16);
  v85 = type metadata accessor for Actions.PlaybackContext;
  sub_10049CA68(a2, v15, type metadata accessor for Actions.PlaybackContext);
  sub_1000089F8(v112, v13, &unk_1011838D0, &unk_100EC0320);
  v22 = *(v17 + 80);
  v86 = ((v22 + 16) & ~v22) + v18;
  v23 = (v22 + 16) & ~v22;
  v105 = v23;
  v24 = *(v108 + 80);
  v84 = ((v86 + v24) & ~v24) + v14;
  v25 = (v86 + v24) & ~v24;
  v83 = v25;
  v100 = *(v109 + 80);
  v26 = (v84 + v100) & ~v100;
  v109 = v22 | v100 | 7;
  v27 = swift_allocObject();
  v28 = *(v17 + 32);
  v106 = v17 + 32;
  v107 = v28;
  v28(v27 + v23, v19, v16);
  v82 = type metadata accessor for Actions.PlaybackContext;
  sub_10049BE38(v15, v27 + v25, type metadata accessor for Actions.PlaybackContext);
  sub_10003D17C(v13, v27 + v26, &unk_1011838D0, &unk_100EC0320);
  v29 = v102;
  UUID.init()();
  v30 = UUID.uuidString.getter();
  v32 = v31;
  v33 = *(v114 + 8);
  v114 += 8;
  v108 = v33;
  v33(v29, v103);
  v104 = type metadata accessor for ActionMenu();
  swift_allocObject();
  v116._countAndFlagsBits = v89;
  v116._object = v81;
  v34 = ActionMenu.init(id:type:subtitle:debugDescription:sort:builder:)(v30, v32, 2, 0, 0, v116, 0, sub_10049C5B0, v27);
  v89 = static ActionMenu.ElementBuilder.buildExpression(_:)(v34);

  v35 = v97;
  v81 = dispatch thunk of CustomStringConvertible.description.getter();
  v80 = v36;
  v37 = v96;
  v111(v96, v35, v16);
  sub_10049CA68(v87, v15, v85);
  sub_10012B7A8(v99, v115);
  sub_1000089F8(v112, v13, &unk_1011838D0, &unk_100EC0320);
  v38 = (v84 + 7) & 0xFFFFFFFFFFFFFFF8;
  v85 = (v100 + 96);
  v39 = (v100 + 96 + v38) & ~v100;
  v40 = swift_allocObject();
  v107(v40 + v105, v37, v16);
  sub_10049BE38(v15, v40 + v83, v82);
  sub_10012B828(v115, v40 + v38);
  v41 = v13;
  sub_10003D17C(v13, v40 + v39, &unk_1011838D0, &unk_100EC0320);
  v42 = v102;
  UUID.init()();
  v43 = UUID.uuidString.getter();
  v45 = v44;
  v46 = v103;
  v108(v42, v103);
  swift_allocObject();
  v117._countAndFlagsBits = v81;
  v117._object = v80;
  v47 = ActionMenu.init(id:type:subtitle:debugDescription:sort:builder:)(v43, v45, 5, 0, 0, v117, 0, sub_10049C6E4, v40);
  v87 = static ActionMenu.ElementBuilder.buildExpression(_:)(v47);

  v48 = v88;
  v49 = v97;
  MusicPin.action.getter();
  v50 = v90;
  v51 = v49;
  MusicPin.item.getter();
  v84 = MusicPin.Action.localizedTitle(for:)(v50);
  v83 = v52;
  (v93)[1](v50, v94);
  (*(v91 + 8))(v48, v92);
  v94 = dispatch thunk of CustomStringConvertible.description.getter();
  v93 = v53;
  v111(v37, v49, v16);
  v79 = v41;
  sub_1000089F8(v112, v41, &unk_1011838D0, &unk_100EC0320);
  v54 = (v86 + 7) & 0xFFFFFFFFFFFFFFF8;
  v55 = (v100 + v54 + 8) & ~v100;
  v56 = swift_allocObject();
  v107(v56 + v105, v37, v16);
  *(v56 + v54) = v98;
  sub_10003D17C(v41, v56 + v55, &unk_1011838D0, &unk_100EC0320);

  v57 = v102;
  UUID.init()();
  v58 = UUID.uuidString.getter();
  v60 = v59;
  v108(v57, v46);
  swift_allocObject();
  v118._countAndFlagsBits = v94;
  v118._object = v93;
  v61 = ActionMenu.init(id:type:subtitle:debugDescription:sort:builder:)(v58, v60, 9, v84, v83, v118, 0, sub_10049C828, v56);
  v94 = static ActionMenu.ElementBuilder.buildExpression(_:)(v61);

  v101 = dispatch thunk of CustomStringConvertible.description.getter();
  v93 = v62;
  v63 = v96;
  v111(v96, v51, v16);
  sub_10012B7A8(v99, v115);
  v64 = v79;
  sub_1000089F8(v112, v79, &unk_1011838D0, &unk_100EC0320);
  v65 = (v54 + 15) & 0xFFFFFFFFFFFFFFF8;
  v66 = (v85 + v65) & ~v100;
  v67 = (v113 + v66 + 7) & 0xFFFFFFFFFFFFFFF8;
  v68 = swift_allocObject();
  v107(v68 + v105, v63, v16);
  *(v68 + v54) = v98;
  sub_10012B828(v115, v68 + v65);
  sub_10003D17C(v64, v68 + v66, &unk_1011838D0, &unk_100EC0320);
  *(v68 + v67) = v95;

  UUID.init()();
  v69 = UUID.uuidString.getter();
  v71 = v70;
  v108(v57, v103);
  swift_allocObject();
  v119._countAndFlagsBits = v101;
  v119._object = v93;
  v72 = ActionMenu.init(id:type:subtitle:debugDescription:sort:builder:)(v69, v71, 10, 0, 0, v119, 0, sub_10049C910, v68);
  v73 = static ActionMenu.ElementBuilder.buildExpression(_:)(v72);

  sub_10010FC20(&qword_101191FE8, &qword_100ECF1B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBEF50;
  *(inited + 32) = v89;
  v75 = v94;
  *(inited + 40) = v87;
  *(inited + 48) = v75;
  *(inited + 56) = v73;
  v76 = static ActionMenu.ElementBuilder.buildBlock(_:)(inited);
  swift_setDeallocating();
  sub_10010FC20(&qword_101191FF0, &qword_100ECF1C0);
  swift_arrayDestroy();
  return v76;
}

uint64_t sub_100493D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10010FC20(&unk_1011838D0, &unk_100EC0320);
  __chkstk_darwin();
  v7 = &v36 - v6;
  type metadata accessor for Actions.PlaybackContext(0);
  __chkstk_darwin();
  v9 = (&v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for MusicPin();
  v11 = __chkstk_darwin();
  v13 = (&v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v14 + 16);
  v40 = a1;
  v37 = v15;
  v38 = v14 + 16;
  (v15)(v13, a1, v10, v11);
  v41 = a2;
  sub_10049CA68(a2, v9, type metadata accessor for Actions.PlaybackContext);
  v43 = a3;
  sub_1000089F8(a3, v7, &unk_1011838D0, &unk_100EC0320);
  v16 = sub_10049CB30(&qword_101192000, &type metadata accessor for MusicPin, &protocol conformance descriptor for MusicPin);
  v42 = v7;
  v36 = v16;
  Actions.Playback.Context.init<A>(item:playbackContext:shuffleMode:metricsReportingContext:)(v13, v9, 0, v7, v10, v16, v55);
  static Actions.Playback.action(context:)(v56, v55);

  v63 = v56[4];
  v64 = v56[5];
  v65 = v56[6];
  v66 = v57;
  v59 = v56[0];
  v60 = v56[1];
  v61 = v56[2];
  v62 = v56[3];
  v17 = static ActionMenu.ElementBuilder.buildExpression<A, B>(_:)(&v59, &type metadata for Actions.Playback.Context, (&type metadata for () + 1), &protocol witness table for Actions.Playback.Context);
  v67[4] = v63;
  v67[5] = v64;
  v67[6] = v65;
  v68 = v66;
  v67[0] = v59;
  v67[1] = v60;
  v67[2] = v61;
  v67[3] = v62;
  sub_1000095E8(v67, &qword_101191EE8, &qword_100ECEFE0);
  v39 = sub_10010FC20(&qword_101191FE8, &qword_100ECF1B8);
  inited = swift_initStackObject();
  v44 = xmmword_100EBC6B0;
  *(inited + 16) = xmmword_100EBC6B0;
  *(inited + 32) = v17;
  v19 = inited + 32;
  v20 = static ActionMenu.ElementBuilder.buildBlock(_:)(inited);
  swift_setDeallocating();
  sub_1000095E8(v19, &qword_101191FF0, &qword_100ECF1C0);
  v21 = sub_10049ABA4(0, 1, 1, _swiftEmptyArrayStorage, &qword_101191FE8, &qword_100ECF1B8, &qword_101191FF0, &qword_100ECF1C0);
  v23 = v21[2];
  v22 = v21[3];
  if (v23 >= v22 >> 1)
  {
    v21 = sub_10049ABA4((v22 > 1), v23 + 1, 1, v21, &qword_101191FE8, &qword_100ECF1B8, &qword_101191FF0, &qword_100ECF1C0);
  }

  v21[2] = v23 + 1;
  v21[v23 + 4] = v20;
  v37(v13, v40, v10);
  sub_10049CA68(v41, v9, type metadata accessor for Actions.PlaybackContext);
  v24 = v42;
  sub_1000089F8(v43, v42, &unk_1011838D0, &unk_100EC0320);
  Actions.Playback.Context.init<A>(item:playbackContext:shuffleMode:metricsReportingContext:)(v13, v9, 1, v24, v10, v36, v58);
  static Actions.Playback.action(context:)(&v59, v58);

  v49 = v63;
  v50 = v64;
  v51 = v65;
  v52 = v66;
  v45 = v59;
  v46 = v60;
  v47 = v61;
  v48 = v62;
  v25 = static ActionMenu.ElementBuilder.buildExpression<A, B>(_:)(&v45, &type metadata for Actions.Playback.Context, (&type metadata for () + 1), &protocol witness table for Actions.Playback.Context);
  v53[4] = v49;
  v53[5] = v50;
  v53[6] = v51;
  v54 = v52;
  v53[0] = v45;
  v53[1] = v46;
  v53[2] = v47;
  v53[3] = v48;
  sub_1000095E8(v53, &qword_101191EE8, &qword_100ECEFE0);
  v26 = swift_initStackObject();
  *(v26 + 16) = v44;
  *(v26 + 32) = v25;
  v27 = v26 + 32;
  v28 = static ActionMenu.ElementBuilder.buildBlock(_:)(v26);
  swift_setDeallocating();
  sub_1000095E8(v27, &qword_101191FF0, &qword_100ECF1C0);
  v30 = v21[2];
  v29 = v21[3];
  if (v30 >= v29 >> 1)
  {
    v21 = sub_10049ABA4((v29 > 1), v30 + 1, 1, v21, &qword_101191FE8, &qword_100ECF1B8, &qword_101191FF0, &qword_100ECF1C0);
  }

  v21[2] = v30 + 1;
  v21[v30 + 4] = v28;
  v31 = static ActionMenu.ElementBuilder.buildArray(_:)(v21);

  v32 = swift_initStackObject();
  *(v32 + 16) = v44;
  *(v32 + 32) = v31;
  v33 = v32 + 32;
  v34 = static ActionMenu.ElementBuilder.buildBlock(_:)(v32);
  swift_setDeallocating();
  sub_1000095E8(v33, &qword_101191FF0, &qword_100ECF1C0);
  return v34;
}

uint64_t sub_100494310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for MusicPin();
  v15[3] = v8;
  v15[4] = sub_10049CB30(&qword_101192000, &type metadata accessor for MusicPin, &protocol conformance descriptor for MusicPin);
  v9 = sub_10001C8B8(v15);
  (*(*(v8 - 8) + 16))(v9, a1, v8);
  static MusicActions.queueActions(item:playbackContext:presentationSource:metricsReportingContext:)(v15, a2, a3, a4);
  sub_10000959C(v15);
  v10 = static ActionMenu.ElementBuilder.buildExpression(_:)();

  sub_10010FC20(&qword_101191FE8, &qword_100ECF1B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBC6B0;
  *(inited + 32) = v10;
  v12 = inited + 32;
  v13 = static ActionMenu.ElementBuilder.buildBlock(_:)(inited);
  swift_setDeallocating();
  sub_1000095E8(v12, &qword_101191FF0, &qword_100ECF1C0);
  return v13;
}

uint64_t sub_100494468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v48 = a2;
  v49 = a3;
  v47 = a1;
  sub_10010FC20(&unk_1011838D0, &unk_100EC0320);
  __chkstk_darwin();
  v46 = v36 - v3;
  v45 = type metadata accessor for MusicPin.Action();
  v4 = *(v45 - 8);
  __chkstk_darwin();
  v44 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for MusicPin();
  v6 = *(v43 - 8);
  __chkstk_darwin();
  v42 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for Actions.UpdatePinAction.Context(0);
  __chkstk_darwin();
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101191FF8, &qword_100ECF1D0);
  __chkstk_darwin();
  v11 = v36 - v10;
  v12 = static MusicPin.Action.allCases.getter();
  v13 = *(v12 + 16);
  v14 = &unk_100EBC000;
  if (v13)
  {
    v15 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v36[1] = v12;
    v16 = v12 + v15;
    v18 = *(v6 + 16);
    v17 = v6 + 16;
    v39 = *(v4 + 72);
    v40 = v18;
    v19 = _swiftEmptyArrayStorage;
    v38 = (v4 + 16);
    v37 = xmmword_100EBC6B0;
    do
    {
      v20 = v42;
      v21 = v17;
      v40(v42, v47, v43);
      v22 = v44;
      (*v38)(v44, v16, v45);
      v23 = v46;
      sub_1000089F8(v49, v46, &unk_1011838D0, &unk_100EC0320);
      v24 = v48;

      Actions.UpdatePinAction.Context.init(pin:action:library:metricsReportingContext:onFinish:)(v20, v22, v24, v23, 0, 0, v9);
      static Actions.UpdatePinAction.action(context:)(v9, v11);
      sub_10049CAD0(v9, type metadata accessor for Actions.UpdatePinAction.Context);
      v25 = static ActionMenu.ElementBuilder.buildExpression<A, B>(_:)(v11, updated, (&type metadata for () + 1), &protocol witness table for Actions.UpdatePinAction.Context);
      sub_1000095E8(v11, &qword_101191FF8, &qword_100ECF1D0);
      sub_10010FC20(&qword_101191FE8, &qword_100ECF1B8);
      inited = swift_initStackObject();
      *(inited + 16) = v37;
      *(inited + 32) = v25;
      v27 = inited + 32;
      v28 = static ActionMenu.ElementBuilder.buildBlock(_:)(inited);
      swift_setDeallocating();
      sub_1000095E8(v27, &qword_101191FF0, &qword_100ECF1C0);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_10049ABA4(0, v19[2] + 1, 1, v19, &qword_101191FE8, &qword_100ECF1B8, &qword_101191FF0, &qword_100ECF1C0);
      }

      v30 = v19[2];
      v29 = v19[3];
      if (v30 >= v29 >> 1)
      {
        v19 = sub_10049ABA4((v29 > 1), v30 + 1, 1, v19, &qword_101191FE8, &qword_100ECF1B8, &qword_101191FF0, &qword_100ECF1C0);
      }

      v19[2] = v30 + 1;
      v19[v30 + 4] = v28;
      v16 += v39;
      --v13;
      v17 = v21;
    }

    while (v13);

    v14 = &unk_100EBC000;
  }

  else
  {

    v19 = _swiftEmptyArrayStorage;
  }

  v31 = static ActionMenu.ElementBuilder.buildArray(_:)(v19);

  sub_10010FC20(&qword_101191FE8, &qword_100ECF1B8);
  v32 = swift_initStackObject();
  *(v32 + 16) = v14[107];
  *(v32 + 32) = v31;
  v33 = v32 + 32;
  v34 = static ActionMenu.ElementBuilder.buildBlock(_:)(v32);
  swift_setDeallocating();
  sub_1000095E8(v33, &qword_101191FF0, &qword_100ECF1C0);
  return v34;
}

uint64_t sub_100494988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for MusicPin();
  v17[3] = v10;
  v17[4] = sub_10049CB30(&unk_1011970F0, &type metadata accessor for MusicPin, &protocol conformance descriptor for MusicPin);
  v11 = sub_10001C8B8(v17);
  (*(*(v10 - 8) + 16))(v11, a1, v10);

  static MusicActions.pinActions(item:library:presentationSource:metricsReportingContext:onFinish:)(v17, a2, a3, a4, sub_10049CA30, a5);

  sub_10000959C(v17);
  v12 = static ActionMenu.ElementBuilder.buildExpression(_:)();

  sub_10010FC20(&qword_101191FE8, &qword_100ECF1B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBC6B0;
  *(inited + 32) = v12;
  v14 = inited + 32;
  v15 = static ActionMenu.ElementBuilder.buildBlock(_:)(inited);
  swift_setDeallocating();
  sub_1000095E8(v14, &qword_101191FF0, &qword_100ECF1C0);
  return v15;
}

void sub_100494B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v7 = &v16 - v6;
  if (ActionType.rawValue.getter(v5) == 7235952 && v8 == 0xE300000000000000)
  {
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      return;
    }
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
    type metadata accessor for MainActor();
    v13 = v11;
    v14 = static MainActor.shared.getter();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = &protocol witness table for MainActor;
    v15[4] = v13;
    sub_1001F4F78(0, 0, v7, a4, v15);
  }
}

uint64_t sub_100494CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = type metadata accessor for UnifiedMessages.FeatureEngagementEvent();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100494DAC, v7, v6);
}

uint64_t sub_100494DAC()
{

  v1 = sub_10003169C();
  if (v1 && (v2 = v1[2], , , v2))
  {
    v4 = *(v0 + 40);
    v3 = *(v0 + 48);
    v5 = *(v0 + 32);
    (*(v4 + 104))(v3, enum case for UnifiedMessages.FeatureEngagementEvent.libraryPinAdded(_:), v5);
    MusicPageProvider.reportFeatureEngagementEvent(_:)();

    (*(v4 + 8))(v3, v5);
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  **(v0 + 16) = v6;

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100494EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100494F48, v6, v5);
}

uint64_t sub_100494F48()
{

  v1 = sub_10003169C();
  if (v1 && (v2 = v1[2], , , v2))
  {
    MusicPageProvider.reloadArtistFavoritesShelf()();

    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  **(v0 + 16) = v3;
  v4 = *(v0 + 8);

  return v4();
}

unint64_t sub_100494FEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v81 = a2;
  sub_10010FC20(&unk_101183960, &unk_100EBCF90);
  __chkstk_darwin();
  v76 = &v67 - v4;
  v5 = type metadata accessor for GenericMusicItem();
  v69 = *(v5 - 8);
  v70 = v5;
  __chkstk_darwin();
  v68 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v73 = *(v7 - 8);
  v74 = v7;
  __chkstk_darwin();
  v71 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v72 = &v67 - v9;
  v10 = type metadata accessor for Song();
  v77 = *(v10 - 8);
  v78 = v10;
  __chkstk_darwin();
  v75 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v67 = &v67 - v12;
  sub_10010FC20(&qword_10118A530, &qword_100EC64E0);
  __chkstk_darwin();
  v14 = &v67 - v13;
  v82 = a3;
  v15 = *(a3 - 8);
  __chkstk_darwin();
  v17 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v67 - v18;
  v20 = type metadata accessor for Track();
  v21 = *(v20 - 8);
  v79 = v20;
  v80 = v21;
  __chkstk_darwin();
  v23 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v25 = &v67 - v24;
  v26 = [objc_opt_self() currentTraitCollection];
  v27 = [v26 userInterfaceIdiom];

  if (v27 == 6)
  {
    return 0xD000000000000017;
  }

  ApplicationCapabilities.Controller.capabilities.getter(&v84);
  sub_100014984(&v84);
  if ((v85 & 1) == 0)
  {
    return 0xD00000000000003CLL;
  }

  ApplicationCapabilities.Controller.capabilities.getter(v86);
  sub_100014984(v86);
  if ((v86[1] & 1) == 0)
  {
    return 0xD000000000000016;
  }

  v83 = 2;
  v29 = sub_100025CE0();
  if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v29) & 1) == 0)
  {
    return 0xD00000000000001BLL;
  }

  v30 = *(v15 + 16);
  v30(v19, v81, v82);
  v31 = v79;
  v32 = swift_dynamicCast();
  v33 = v80;
  v34 = *(v80 + 56);
  if ((v32 & 1) == 0)
  {
    v34(v14, 1, 1, v31);
    sub_1000095E8(v14, &qword_10118A530, &qword_100EC64E0);
    v37 = v77;
    v36 = v78;
    goto LABEL_17;
  }

  v34(v14, 0, 1, v31);
  (*(v33 + 32))(v25, v14, v31);
  (*(v33 + 16))(v23, v25, v31);
  v35 = (*(v33 + 88))(v23, v31);
  v36 = v78;
  if (v35 != enum case for Track.song(_:))
  {
    v50 = *(v33 + 8);
    v50(v25, v31);
    v50(v23, v31);
    v37 = v77;
    goto LABEL_17;
  }

  (*(v33 + 96))(v23, v31);
  v37 = v77;
  v38 = v67;
  (*(v77 + 32))(v67, v23, v36);
  Song.catalogID.getter();
  if (!v39)
  {
    (*(v37 + 8))(v38, v36);
    (*(v80 + 8))(v25, v31);
LABEL_17:
    v30(v17, v81, v82);
    v51 = v76;
    v52 = swift_dynamicCast();
    v53 = *(v37 + 56);
    if (v52)
    {
      v53(v51, 0, 1, v36);
      v54 = v75;
      (*(v37 + 32))(v75, v51, v36);
      Song.catalogID.getter();
      if (v55)
      {

        v56 = v68;
        (*(v37 + 16))(v68, v54, v36);
        v57 = v54;
        v59 = v69;
        v58 = v70;
        (*(v69 + 104))(v56, enum case for GenericMusicItem.song(_:), v70);
        v60 = v72;
        sub_100538C48(v56, v72);
        (*(v59 + 8))(v56, v58);
        v61 = enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.contentUnavailable(_:);
        v62 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
        v63 = v71;
        (*(*(v62 - 8) + 104))(v71, v61, v62);
        v65 = v73;
        v64 = v74;
        (*(v73 + 104))(v63, enum case for MusicPlayer.PlayabilityStatus.unplayable(_:), v74);
        sub_10049CB30(&qword_10118BFC0, &type metadata accessor for MusicPlayer.PlayabilityStatus, &protocol conformance descriptor for MusicPlayer.PlayabilityStatus);
        LOBYTE(v61) = dispatch thunk of static Equatable.== infix(_:_:)();
        v66 = *(v65 + 8);
        v66(v63, v64);
        v66(v60, v64);
        if (v61)
        {
          (*(v37 + 8))(v57, v36);
          return 0xD000000000000013;
        }

        (*(v37 + 8))(v57, v36);
        return 0;
      }

      (*(v37 + 8))(v54, v36);
    }

    else
    {
      v53(v51, 1, 1, v36);
      sub_1000095E8(v51, &unk_101183960, &unk_100EBCF90);
    }

    return 0xD000000000000010;
  }

  v40 = v68;
  (*(v37 + 16))(v68, v38, v36);
  v42 = v69;
  v41 = v70;
  (*(v69 + 104))(v40, enum case for GenericMusicItem.song(_:), v70);
  v43 = v72;
  sub_100538C48(v40, v72);
  (*(v42 + 8))(v40, v41);
  v44 = enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.contentUnavailable(_:);
  v45 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
  v46 = v71;
  (*(*(v45 - 8) + 104))(v71, v44, v45);
  v48 = v73;
  v47 = v74;
  (*(v73 + 104))(v46, enum case for MusicPlayer.PlayabilityStatus.unplayable(_:), v74);
  sub_10049CB30(&qword_10118BFC0, &type metadata accessor for MusicPlayer.PlayabilityStatus, &protocol conformance descriptor for MusicPlayer.PlayabilityStatus);
  LOBYTE(v44) = dispatch thunk of static Equatable.== infix(_:_:)();
  v49 = *(v48 + 8);
  v49(v46, v47);
  v49(v43, v47);
  if (v44)
  {
    (*(v37 + 8))(v67, v36);
    (*(v80 + 8))(v25, v79);
    return 0xD000000000000013;
  }

  (*(v37 + 8))(v67, v36);
  (*(v80 + 8))(v25, v79);
  return 0;
}

uint64_t sub_100495B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  v3[5] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[6] = v5;
  v3[7] = *(v5 - 8);
  v3[8] = swift_task_alloc();
  sub_10010FC20(&unk_101183960, &unk_100EBCF90);
  v3[9] = swift_task_alloc();
  sub_10010FC20(&qword_10118A530, &qword_100EC64E0);
  v3[10] = swift_task_alloc();
  v3[11] = *(a3 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v6 = type metadata accessor for Track();
  v3[16] = v6;
  v3[17] = *(v6 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v7 = type metadata accessor for Song();
  v3[20] = v7;
  v8 = *(v7 - 8);
  v3[21] = v8;
  v3[22] = *(v8 + 64);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();

  return _swift_task_switch(sub_100495E18, 0, 0);
}

uint64_t sub_100495E18()
{
  v62 = v0;
  v1 = v0[17];
  v2 = *(v0[11] + 16);
  v2(v0[15], v0[2], v0[4]);
  v3 = swift_dynamicCast();
  v4 = *(v1 + 56);
  if (v3)
  {
    v58 = v2;
    v6 = v0[18];
    v5 = v0[19];
    v7 = v0 + 18;
    v8 = v0[16];
    v9 = v0[17];
    v10 = v0[10];
    v4(v10, 0, 1, v8);
    v11 = *(v9 + 32);
    v11(v5, v10, v8);
    v11(v6, v5, v8);
    v12 = (*(v9 + 88))(v6, v8);
    v14 = v0[17];
    v13 = v0[18];
    v15 = v0[16];
    if (v12 == enum case for Track.song(_:))
    {
      (*(v14 + 96))(v13, v15);
LABEL_8:
      v21 = *v7;
      v22 = v0[24];
      v23 = v0[20];
      v24 = *(v0[21] + 32);
      v0[25] = v24;
      v24(v22, v21, v23);
      v0[26] = type metadata accessor for MainActor();
      v0[27] = static MainActor.shared.getter();
      v26 = dispatch thunk of Actor.unownedExecutor.getter();

      return _swift_task_switch(sub_100496378, v26, v25);
    }

    (*(v14 + 8))(v13, v15);
    v2 = v58;
  }

  else
  {
    v16 = v0[10];
    v4(v16, 1, 1, v0[16]);
    sub_1000095E8(v16, &qword_10118A530, &qword_100EC64E0);
  }

  v7 = v0 + 9;
  v17 = v0[21];
  v2(v0[14], v0[2], v0[4]);
  v18 = swift_dynamicCast();
  v19 = *(v17 + 56);
  v20 = v0[20];
  if (v18)
  {
    v19(*v7, 0, 1, v20);
    goto LABEL_8;
  }

  v59 = v0[13];
  v28 = v0[8];
  v27 = v0[9];
  v29 = v2;
  v30 = v0[6];
  v31 = v0[7];
  v32 = v0[4];
  v33 = v0[2];
  v19(v27, 1, 1, v20);
  sub_1000095E8(v27, &unk_101183960, &unk_100EBCF90);
  v34 = Logger.actions.unsafeMutableAddressor();
  (*(v31 + 16))(v28, v34, v30);
  v35 = v29;
  v29(v59, v33, v32);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();
  v38 = os_log_type_enabled(v36, v37);
  v39 = v0[13];
  if (v38)
  {
    v41 = v0[11];
    v40 = v0[12];
    v56 = v0[7];
    v57 = v0[6];
    v60 = v0[8];
    v42 = v0[4];
    v43 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v61 = v55;
    *v43 = 136446210;
    v35(v40, v39, v42);
    v44 = String.init<A>(describing:)();
    v46 = v45;
    (*(v41 + 8))(v39, v42);
    v47 = sub_1000105AC(v44, v46, &v61);

    *(v43 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v36, v37, "Failed to retrieve song for item=%{public}s", v43, 0xCu);
    sub_10000959C(v55);

    (*(v56 + 8))(v60, v57);
  }

  else
  {
    v48 = v0[11];
    v50 = v0[7];
    v49 = v0[8];
    v51 = v0[6];
    v52 = v0[4];

    (*(v48 + 8))(v39, v52);
    (*(v50 + 8))(v49, v51);
  }

  v53 = v0[1];

  return v53();
}

uint64_t sub_100496378()
{
  v1 = *(v0 + 24);

  *(v0 + 224) = *(v1 + 16);

  return _swift_task_switch(sub_1004963F4, 0, 0);
}

uint64_t sub_1004963F4(uint64_t a1)
{
  if (v1[28])
  {
    v1[29] = *(v1[3] + 24);
    v1[30] = static MainActor.shared.getter();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10049658C, v3, v2);
  }

  else
  {
    (*(v1[21] + 8))(v1[24], v1[20]);

    v4 = v1[1];

    return v4();
  }
}

uint64_t sub_10049658C()
{
  v1 = *(v0 + 232);

  if (*(v1 + 16))
  {
    v2 = [*(v1 + 16) selectedTab];
    if (!v2 || (v3 = v2, v4 = sub_10003F0FC(), v3, v4 == 7))
    {
      v4 = 1;
    }

    *(v0 + 248) = sub_1006BD694(v4);
    v5 = sub_100496784;
  }

  else
  {
    v5 = sub_100496664;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100496664()
{
  v1 = v0[24];
  v2 = v0[20];
  v3 = v0[21];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100496784()
{
  v1 = v0[31];
  v2 = v0[28];
  if (v1)
  {
    v4 = v0[23];
    v3 = v0[24];
    v20 = v3;
    v21 = v0[25];
    v5 = v0[21];
    v18 = v0[22];
    v6 = v0[20];
    v17 = v6;
    v7 = v0[5];
    v19 = v7;
    v8 = v0[3];
    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    (*(v5 + 16))(v4, v3, v6);

    v10 = v8;

    v11 = static MainActor.shared.getter();
    v12 = (*(v5 + 80) + 40) & ~*(v5 + 80);
    v13 = (v18 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
    v14 = swift_allocObject();
    *(v14 + 2) = v11;
    *(v14 + 3) = &protocol witness table for MainActor;
    *(v14 + 4) = v2;
    v21(&v14[v12], v4, v17);
    *&v14[v13] = v1;
    *&v14[(v13 + 15) & 0xFFFFFFFFFFFFFFF8] = v10;
    sub_1001F4CB8(0, 0, v19, &unk_100ECF028, v14);

    (*(v5 + 8))(v20, v17);
  }

  else
  {
    (*(v0[21] + 8))(v0[24], v0[20]);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_100496A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = type metadata accessor for AppInterfaceContext.Activity(0);
  v7[6] = v8;
  v9 = *(v8 - 8);
  v7[7] = v9;
  v7[8] = *(v9 + 64);
  v7[9] = swift_task_alloc();
  v7[10] = swift_task_alloc();
  v7[11] = swift_task_alloc();
  v10 = sub_10010FC20(&unk_10119DA70, &qword_100EC0AC0);
  v7[12] = v10;
  v7[13] = *(v10 - 8);
  v7[14] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[15] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100496BA0, v12, v11);
}

uint64_t sub_100496BA0()
{
  v1 = v0[14];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[10];
  v5 = v0[11];
  v6 = v0[9];
  v18 = v0[7];
  v7 = v0[3];

  v8 = type metadata accessor for Song();
  (*(*(v8 - 8) + 16))(v1, v7, v8);
  (*(v2 + 104))(v1, enum case for MusicPageProvider.Destination.songDetail<A, B>(_:), v3);
  v9 = MusicPageProvider.page(for:stackAuthority:motionCacheBucketID:)();
  (*(v2 + 8))(v1, v3);
  v10 = &v5[*(sub_10010FC20(&unk_1011841E0, &unk_100ECDA60) + 48)];
  v11 = *(sub_10010FC20(&unk_10118CE00, L"F\n.") + 48);
  *v5 = v9;
  v12 = type metadata accessor for UITraitOverrides();
  (*(*(v12 - 8) + 56))(&v5[v11], 1, 1, v12);
  type metadata accessor for AppInterfaceContext.Activity.Destination(0);
  swift_storeEnumTagMultiPayload();
  *v10 = 0;
  *(v10 + 1) = 0;
  swift_storeEnumTagMultiPayload();
  sub_10049CA68(v5, v4, type metadata accessor for AppInterfaceContext.Activity);
  sub_10049CA68(v4, v6, type metadata accessor for AppInterfaceContext.Activity);
  v13 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  sub_10049BE38(v6, v14 + v13, type metadata accessor for AppInterfaceContext.Activity);
  v15 = v9;
  sub_100706900(v4, sub_100115C18, v14);

  sub_10049CAD0(v4, type metadata accessor for AppInterfaceContext.Activity);
  sub_10049CAD0(v5, type metadata accessor for AppInterfaceContext.Activity);

  v16 = v0[1];

  return v16();
}

uint64_t sub_100496E88(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = a7;
  *(v7 + 32) = a4;
  *(v7 + 40) = a5;
  *(v7 + 104) = a2;
  *(v7 + 16) = a1;
  *(v7 + 24) = a3;
  type metadata accessor for MainActor();
  *(v7 + 64) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v7 + 72) = v9;
  *(v7 + 80) = v8;

  return _swift_task_switch(sub_100496F2C, v9, v8);
}

uint64_t sub_100496F2C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 16);
  v6 = *(v0 + 104);
  v7 = *ApplicationCapabilities.Controller.shared.unsafeMutableAddressor();

  v8 = sub_10049BEA0(v5, v7, v6, v4, v3, v1, v2);
  *(v0 + 88) = v8;

  v9 = type metadata accessor for SharingController();
  v10 = v5[3];
  v11 = v5[4];
  v12 = sub_10000954C(v5, v10);
  v13 = swift_task_alloc();
  *(v0 + 96) = v13;
  *v13 = v0;
  v13[1] = sub_10049706C;
  v14 = *(v0 + 56);

  return sub_100127B6C(v12, v8, v14, v9, v10, v11);
}

uint64_t sub_10049706C()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return _swift_task_switch(sub_10049718C, v3, v2);
}

uint64_t sub_10049718C()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_1004971F8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [objc_opt_self() currentTraitCollection];
  v6 = [v5 userInterfaceIdiom];

  if (v6 == 6)
  {
    return 0xD000000000000019;
  }

  ApplicationCapabilities.Controller.capabilities.getter(v20);
  sub_100014984(v20);
  if ((v20[1] & 1) == 0)
  {
    return 0xD000000000000016;
  }

  v8 = Song.catalogID.getter();
  if (!v9)
  {
    return 0xD000000000000012;
  }

  v10 = v9;
  v11 = v8;
  if ((Song.hasLyrics.getter() & 1) == 0)
  {

    return 0xD000000000000020;
  }

  type metadata accessor for LyricsLoader();
  if ((static LyricsLoader.supportsLyrics(for:)(a2) & 1) == 0)
  {

    return 0xD00000000000001BLL;
  }

  if (!a3)
  {
    goto LABEL_22;
  }

  v12 = a3;
  v13 = [v12 playingItem];
  if (!v13 || (v14 = v13, v15 = [v13 metadataObject], v14, !v15))
  {

LABEL_22:

    return 0xD000000000000019;
  }

  v16 = [v15 innermostModelObject];

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    return 0xD000000000000019;
  }

  v17 = MPModelObject.bestIdentifier(for:)(3, 2u);
  if (!v18)
  {

    goto LABEL_30;
  }

  if (v17 != v11 || v18 != v10)
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v19)
    {
      goto LABEL_27;
    }

LABEL_30:

    return 0xD00000000000001ELL;
  }

LABEL_27:
  if (MPCPlayerResponseTracklist.playingItemSupportsTimeSyncedLyrics.getter() & 1) != 0 && (Song.hasTimeSyncedLyrics.getter())
  {

    return 0;
  }

  else
  {

    return 0xD000000000000027;
  }
}

uint64_t sub_100497514(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100497534, 0, 0);
}

uint64_t sub_100497534()
{
  type metadata accessor for MainActor();
  *(v0 + 32) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1004975C8, v2, v1);
}

uint64_t sub_1004975C8()
{
  v1 = v0[3];
  v2 = v0[2];

  sub_10012A364(v2, v1);
  v3 = v0[1];

  return v3();
}

unint64_t sub_10049763C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LyricsLoader();
  if ((static LyricsLoader.supportsLyrics(for:)(a1) & 1) == 0)
  {
    return 0xD00000000000001BLL;
  }

  if ((*(a2 + 1) & 1) == 0 && (Song.hasCustomLyrics.getter() & 1) == 0)
  {
    return 0xD00000000000001DLL;
  }

  Song.catalogID.getter();
  if (!v4)
  {
    return 0;
  }

  return ((*(a2 + 8) << 63) >> 63) & 0xD00000000000004BLL;
}

uint64_t sub_100497720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_10010FC20(&unk_10119F3A0, &qword_100EC7CD0);
  v3[5] = swift_task_alloc();
  v4 = type metadata accessor for AppInterfaceContext.Activity(0);
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  sub_10010FC20(&unk_1011841F0, &qword_100ECF040);
  v3[9] = swift_task_alloc();
  v5 = type metadata accessor for Song();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_1004978B0, 0, 0);
}

uint64_t sub_1004978B0()
{
  (*(v0[11] + 16))(v0[12], v0[2], v0[10]);
  v0[13] = type metadata accessor for MainActor();
  v0[14] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100497964, v2, v1);
}

uint64_t sub_100497964()
{
  v1 = v0[12];
  v2 = v0[3];

  objc_allocWithZone(type metadata accessor for StaticLyricsViewController(0));
  v3 = v2;
  v0[15] = sub_100336758(v1, v2, 0);

  return _swift_task_switch(sub_100497A10, 0, 0);
}

uint64_t sub_100497A10()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 128) = Strong;
  if (Strong)
  {
    *(v0 + 136) = static MainActor.shared.getter();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100497B58, v3, v2);
  }

  else
  {

    v4 = *(v0 + 72);
    (*(*(v0 + 56) + 56))(v4, 1, 1, *(v0 + 48));
    sub_1000095E8(v4, &unk_1011841F0, &qword_100ECF040);

    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_100497B58()
{
  v1 = *(v0 + 128);

  *(v0 + 144) = sub_10003169C();

  return _swift_task_switch(sub_100497BCC, 0, 0);
}

uint64_t sub_100497BCC()
{
  v1 = v0[15];
  if (v0[18])
  {
    v2 = v0[8];
    v3 = v0[5];
    v4 = (v2 + *(sub_10010FC20(&unk_1011841E0, &unk_100ECDA60) + 48));
    v5 = *(sub_10010FC20(&unk_10118CE00, L"F\n.") + 48);
    *v2 = v1;
    v6 = type metadata accessor for UITraitOverrides();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    sub_10003D17C(v3, v2 + v5, &unk_10119F3A0, &qword_100EC7CD0);
    type metadata accessor for AppInterfaceContext.Activity.Destination(0);
    swift_storeEnumTagMultiPayload();
    *v4 = 0;
    v4[1] = 0;
    swift_storeEnumTagMultiPayload();
    v7 = v1;
    v8 = swift_task_alloc();
    v0[19] = v8;
    *v8 = v0;
    v8[1] = sub_100497DFC;
    v10 = v0[8];
    v9 = v0[9];

    return sub_100706024(v9, v10);
  }

  else
  {

    v12 = v0[9];
    (*(v0[7] + 56))(v12, 1, 1, v0[6]);
    sub_1000095E8(v12, &unk_1011841F0, &qword_100ECF040);

    v13 = v0[1];

    return v13();
  }
}