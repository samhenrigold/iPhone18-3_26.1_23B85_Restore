BOOL sub_10001CB94(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = 0;
  if (v3)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v2)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_10001CC70(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v5)
    {
      dispatch thunk of CarouselModel.activeIndex.getter();
    }
  }

  _StringGuts.grow(_:)(21);

  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  sub_100034D00(0xD000000000000013, 0x8000000100043070, 0xD000000000000011, 0x8000000100042FF0, 317);

  if (qword_10005A3B0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void sub_10001CE40()
{
  v1 = OBJC_IVAR____TtC4Trip9TripModel_hasEmittedFinalizedSignpost;
  if ((*(v0 + OBJC_IVAR____TtC4Trip9TripModel_hasEmittedFinalizedSignpost) & 1) == 0)
  {
    v2 = *(v0 + OBJC_IVAR____TtC4Trip9TripModel_tripComputer);
    if (v2)
    {
      v3 = v2;
      if ([v3 receivedAllValues])
      {
        v4 = v0 + OBJC_IVAR____TtC4Trip9TripModel__carObservable;
        swift_beginAccess();
        v5 = *(v4 + 8);
        v6 = v0;
        v7 = CAFCarObservable.observed.getter();

        CAFSignpostEmit_Finalized();
        *(v6 + v1) = 1;
        return;
      }
    }

    sub_100034D00(0xD000000000000024, 0x8000000100042F80, 0xD000000000000017, 0x8000000100042FB0, 329);
  }
}

uint64_t sub_10001CF68(char a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v5 = *(v13 - 8);
  __chkstk_darwin(v13);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100014060(0, &qword_10005A848, OS_dispatch_queue_ptr);
  v8 = static OS_dispatch_queue.main.getter();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  aBlock[4] = sub_10001F6F8;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018318;
  aBlock[3] = &unk_100056690;
  v11 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10001F574(&unk_10005B580, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100003090(&qword_10005A850, &qword_10003FE18);
  sub_100003894(&qword_10005B590, &qword_10005A850, &qword_10003FE18, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v14 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v13);
}

void sub_10001D280(unsigned __int8 a1, uint64_t a2)
{
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        return;
      }

      v3 = Strong;
      sub_10001D4B4();
      goto LABEL_18;
    }

    if (a1 == 3)
    {
      swift_beginAccess();
      v2 = swift_unknownObjectWeakLoadStrong();
      if (!v2)
      {
        return;
      }

      v3 = v2;
      sub_10001D640();
      goto LABEL_18;
    }

    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (!v6)
    {
      return;
    }

    v3 = v6;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (!v8)
    {
      goto LABEL_18;
    }

    sub_100034D00(0xD000000000000012, 0x8000000100042F40, 0x7463656C65736564, 0xEA00000000002928, 383);
    dispatch thunk of CarouselModel.hideDecorations(after:)();
    goto LABEL_15;
  }

  if (!a1)
  {
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    if (!v4)
    {
      return;
    }

    v3 = v4;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (!v8)
    {
      goto LABEL_18;
    }

    sub_100034D00(0xD000000000000013, 0x8000000100042F60, 0x72507463656C6573, 0xEF29286465737365, 362);
    dispatch thunk of CarouselModel.showDecorations(animated:)();
LABEL_15:

    goto LABEL_18;
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (!v7)
  {
    return;
  }

  v3 = v7;
  sub_10001D7D0();
LABEL_18:
}

void sub_10001D4B4()
{
  v0 = sub_100003090(&unk_10005B570, &qword_100040DD8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v4 - v2;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v4[1])
  {
    sub_100034D00(0xD000000000000014, 0x8000000100042F20, 0x7055657461746F72, 0xEA00000000002928, 369);
    (*(v1 + 104))(v3, enum case for CarouselModel.Direction.up<A>(_:), v0);
    dispatch thunk of CarouselModel.rotate(_:animated:)();

    (*(v1 + 8))(v3, v0);
  }
}

void sub_10001D640()
{
  v0 = sub_100003090(&unk_10005B570, &qword_100040DD8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v4 - v2;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v4[1])
  {
    sub_100034D00(0xD000000000000016, 0x8000000100042F00, 0x6F44657461746F72, 0xEC00000029286E77, 376);
    (*(v1 + 104))(v3, enum case for CarouselModel.Direction.down<A>(_:), v0);
    dispatch thunk of CarouselModel.rotate(_:animated:)();

    (*(v1 + 8))(v3, v0);
  }
}

double sub_10001D7D0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (aBlock)
  {
    dispatch thunk of CarouselModel.activeItem.getter();
    type metadata accessor for TripCard(0);
    v1 = swift_dynamicCastClass();
    if (v1)
    {
      v2 = qword_10005A3B0;
      v3 = *(v1 + OBJC_IVAR____TtC4Trip8TripCard_trip);
      if (v2 != -1)
      {
        swift_once();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v4 = aBlock;
      v5 = CAFTripObservable.observed.getter();
      v6 = [v5 hasReset];

      if (v6)
      {
        _StringGuts.grow(_:)(28);

        strcpy(&aBlock, "reseting trip ");
        HIBYTE(aBlock) = -18;
        v7 = [v3 description];
        v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v10 = v9;

        v11._countAndFlagsBits = v8;
        v11._object = v10;
        String.append(_:)(v11);

        v12._countAndFlagsBits = 0x65646E6920746120;
        v12._object = 0xEA00000000002078;
        String.append(_:)(v12);
        v31 = v4;
        v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v13);

        sub_100034D00(aBlock, *(&aBlock + 1), 0xD000000000000013, 0x8000000100042EA0, 394);

        v14 = CAFTripObservable.observed.getter();
        v15 = swift_allocObject();
        *(v15 + 16) = v3;
        *(v15 + 24) = v4;
        v29 = sub_10001F660;
        v30 = v15;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        v27 = sub_10001DEFC;
        v28 = &unk_100056618;
        v16 = _Block_copy(&aBlock);
        v17 = v3;

        [v14 resetWithCompletion:v16];

        _Block_release(v16);

        return result;
      }

      _StringGuts.grow(_:)(45);

      strcpy(&aBlock, "reseting trip ");
      HIBYTE(aBlock) = -18;
      v18 = [v3 description];
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      v22._countAndFlagsBits = v19;
      v22._object = v21;
      String.append(_:)(v22);

      v23._countAndFlagsBits = 0x65646E6920746120;
      v23._object = 0xEA00000000002078;
      String.append(_:)(v23);
      v31 = v4;
      v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v24);

      v25._countAndFlagsBits = 0xD000000000000011;
      v25._object = 0x8000000100042E80;
      String.append(_:)(v25);
      sub_100034D64(aBlock, *(&aBlock + 1), 0xD000000000000013, 0x8000000100042EA0, 403);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_10001DC3C(uint64_t a1, void *a2)
{
  if (a1)
  {
    swift_errorRetain();
    _StringGuts.grow(_:)(50);
    v3._countAndFlagsBits = 0x676E697465736572;
    v3._object = 0xEE00207069727420;
    String.append(_:)(v3);
    v4 = [a2 description];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v8._countAndFlagsBits = v5;
    v8._object = v7;
    String.append(_:)(v8);

    v9._countAndFlagsBits = 0x65646E6920746120;
    v9._object = 0xEA00000000002078;
    String.append(_:)(v9);
    v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v10);

    v11._countAndFlagsBits = 0xD000000000000014;
    v11._object = 0x8000000100042EE0;
    String.append(_:)(v11);
    sub_100003090(&qword_10005B568, &qword_100040D88);
    _print_unlocked<A, B>(_:_:)();
    sub_100034D64(0, 0xE000000000000000, 0xD000000000000013, 0x8000000100042EA0, 397);
  }

  else
  {
    _StringGuts.grow(_:)(38);

    strcpy(v21, "reseting trip ");
    HIBYTE(v21[1]) = -18;
    v13 = [a2 description];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17._countAndFlagsBits = v14;
    v17._object = v16;
    String.append(_:)(v17);

    v18._countAndFlagsBits = 0x65646E6920746120;
    v18._object = 0xEA00000000002078;
    String.append(_:)(v18);
    v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v19);

    v20._countAndFlagsBits = 0x6465656363757320;
    v20._object = 0xEA00000000006465;
    String.append(_:)(v20);
    sub_100034D00(v21[0], v21[1], 0xD000000000000013, 0x8000000100042EA0, 399);
  }
}

void sub_10001DEFC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_10001DF98(uint64_t a1)
{
  sub_10001E120(319, &qword_10005B4A8, &qword_10005B4B0, &qword_100040C28);
  if (v1 <= 0x3F)
  {
    sub_10001E120(319, &qword_10005B4B8, &qword_10005B4C0, &qword_100040C60);
    if (v2 <= 0x3F)
    {
      sub_10001E120(319, &qword_10005B4C8, &qword_10005B4D0, &qword_100040C68);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_10001E120(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_1000036BC(a3, a4);
    v5 = type metadata accessor for Published();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_10001E174@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for TripModel(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

void sub_10001E1B4(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
}

uint64_t sub_10001E234(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

void sub_10001E2FC(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a4 = v5;
}

uint64_t sub_10001E3A0(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v8 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v8;
  v9 = static Published.subscript.setter();
  return a7(v9);
}

char *sub_10001E430(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003090(&qword_10005B5D8, &qword_100040E38);
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
    v10 = &_swiftEmptyArrayStorage;
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

void *sub_10001E534(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_100003090(&qword_10005D490, &unk_1000404E0);
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

uint64_t sub_10001E5BC(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_10001F2CC(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_10001E638(v6);
  return specialized ContiguousArray._endMutation()();
}

void sub_10001E638(uint64_t *a1)
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
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_100014060(0, &qword_10005B5C8, CAFTrip_ptr);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_10001E844(v8, v9, a1, v4);
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
    sub_10001E74C(0, v2, 1, a1);
  }
}

void sub_10001E74C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v17 = v7;
    v18 = v6;
    while (1)
    {
      v9 = *v6;
      v10 = v8;
      v11 = v9;
      v12 = [v10 sortOrder];
      v13 = [v11 sortOrder];

      if (v12 >= v13)
      {
LABEL_4:
        ++v4;
        v6 = v18 + 8;
        v7 = v17 - 1;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v14 = *v6;
      v8 = *(v6 + 8);
      *v6 = v8;
      *(v6 + 8) = v14;
      v6 -= 8;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_10001E844(id *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = &_swiftEmptyArrayStorage;
LABEL_90:
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_10001F224(v8);
    }

    v90 = *(v8 + 2);
    if (v90 >= 2)
    {
      while (*a3)
      {
        v91 = v8;
        v8 = (v90 - 1);
        v92 = *&v91[16 * v90];
        v93 = *&v91[16 * v90 + 24];
        sub_10001EEB4((*a3 + 8 * v92), (*a3 + 8 * *&v91[16 * v90 + 16]), (*a3 + 8 * v93), v7);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v93 < v92)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v91 = sub_10001F224(v91);
        }

        if (v90 - 2 >= *(v91 + 2))
        {
          goto LABEL_116;
        }

        v94 = &v91[16 * v90];
        *v94 = v92;
        *(v94 + 1) = v93;
        sub_10001F198(v90 - 1);
        v8 = v91;
        v90 = *(v91 + 2);
        if (v90 <= 1)
        {
          goto LABEL_100;
        }
      }

      goto LABEL_126;
    }

LABEL_100:

    return;
  }

  v7 = 0;
  v8 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7;
    v7 = (v7 + 1);
    if (v7 < v6)
    {
      v100 = v5;
      v96 = 8 * v9;
      v10 = (*a3 + 8 * v9);
      v12 = *v10;
      v11 = v10 + 2;
      v13 = *(*a3 + 8 * v7);
      v14 = v12;
      v105 = [v13 sortOrder];
      v103 = [v14 sortOrder];

      v98 = v9;
      v15 = v9 + 2;
      while (v6 != v15)
      {
        v16 = *(v11 - 1);
        v17 = *v11;
        v18 = v16;
        v19 = v8;
        v20 = [v17 sortOrder];
        v7 = [v18 sortOrder];

        v21 = v20 >= v7;
        v8 = v19;
        v22 = v21;
        ++v15;
        ++v11;
        if ((((v105 < v103) ^ v22) & 1) == 0)
        {
          v6 = v15 - 1;
          break;
        }
      }

      v9 = v98;
      v5 = v100;
      v23 = v96;
      if (v105 < v103)
      {
        if (v6 < v98)
        {
          goto LABEL_119;
        }

        if (v98 < v6)
        {
          v24 = 8 * v6 - 8;
          v25 = v6;
          v26 = v98;
          do
          {
            if (v26 != --v25)
            {
              v28 = *a3;
              if (!*a3)
              {
                goto LABEL_125;
              }

              v27 = *(v28 + v23);
              *(v28 + v23) = *(v28 + v24);
              *(v28 + v24) = v27;
            }

            ++v26;
            v24 -= 8;
            v23 += 8;
          }

          while (v26 < v25);
        }
      }

      v7 = v6;
    }

    v29 = a3[1];
    if (v7 < v29)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        v30 = v9 + a4;
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v30 >= v29)
        {
          v30 = a3[1];
        }

        if (v30 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v30)
        {
          break;
        }
      }
    }

LABEL_39:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_10001E430(0, *(v8 + 2) + 1, 1, v8);
    }

    v44 = *(v8 + 2);
    v43 = *(v8 + 3);
    v45 = v44 + 1;
    if (v44 >= v43 >> 1)
    {
      v8 = sub_10001E430((v43 > 1), v44 + 1, 1, v8);
    }

    *(v8 + 2) = v45;
    v46 = &v8[16 * v44];
    *(v46 + 4) = v9;
    *(v46 + 5) = v7;
    v47 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v44)
    {
      while (1)
      {
        v48 = v45 - 1;
        if (v45 >= 4)
        {
          break;
        }

        if (v45 == 3)
        {
          v49 = *(v8 + 4);
          v50 = *(v8 + 5);
          v59 = __OFSUB__(v50, v49);
          v51 = v50 - v49;
          v52 = v59;
LABEL_59:
          if (v52)
          {
            goto LABEL_106;
          }

          v65 = &v8[16 * v45];
          v67 = *v65;
          v66 = *(v65 + 1);
          v68 = __OFSUB__(v66, v67);
          v69 = v66 - v67;
          v70 = v68;
          if (v68)
          {
            goto LABEL_109;
          }

          v71 = &v8[16 * v48 + 32];
          v73 = *v71;
          v72 = *(v71 + 1);
          v59 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v59)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v69, v74))
          {
            goto LABEL_113;
          }

          if (v69 + v74 >= v51)
          {
            if (v51 < v74)
            {
              v48 = v45 - 2;
            }

            goto LABEL_80;
          }

          goto LABEL_73;
        }

        v75 = &v8[16 * v45];
        v77 = *v75;
        v76 = *(v75 + 1);
        v59 = __OFSUB__(v76, v77);
        v69 = v76 - v77;
        v70 = v59;
LABEL_73:
        if (v70)
        {
          goto LABEL_108;
        }

        v78 = &v8[16 * v48];
        v80 = *(v78 + 4);
        v79 = *(v78 + 5);
        v59 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v59)
        {
          goto LABEL_111;
        }

        if (v81 < v69)
        {
          goto LABEL_3;
        }

LABEL_80:
        v86 = v48 - 1;
        if (v48 - 1 >= v45)
        {
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
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v87 = *&v8[16 * v86 + 32];
        v88 = *&v8[16 * v48 + 40];
        sub_10001EEB4((*a3 + 8 * v87), (*a3 + 8 * *&v8[16 * v48 + 32]), (*a3 + 8 * v88), v47);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v88 < v87)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_10001F224(v8);
        }

        if (v86 >= *(v8 + 2))
        {
          goto LABEL_103;
        }

        v89 = &v8[16 * v86];
        *(v89 + 4) = v87;
        *(v89 + 5) = v88;
        sub_10001F198(v48);
        v45 = *(v8 + 2);
        if (v45 <= 1)
        {
          goto LABEL_3;
        }
      }

      v53 = &v8[16 * v45 + 32];
      v54 = *(v53 - 64);
      v55 = *(v53 - 56);
      v59 = __OFSUB__(v55, v54);
      v56 = v55 - v54;
      if (v59)
      {
        goto LABEL_104;
      }

      v58 = *(v53 - 48);
      v57 = *(v53 - 40);
      v59 = __OFSUB__(v57, v58);
      v51 = v57 - v58;
      v52 = v59;
      if (v59)
      {
        goto LABEL_105;
      }

      v60 = &v8[16 * v45];
      v62 = *v60;
      v61 = *(v60 + 1);
      v59 = __OFSUB__(v61, v62);
      v63 = v61 - v62;
      if (v59)
      {
        goto LABEL_107;
      }

      v59 = __OFADD__(v51, v63);
      v64 = v51 + v63;
      if (v59)
      {
        goto LABEL_110;
      }

      if (v64 >= v56)
      {
        v82 = &v8[16 * v48 + 32];
        v84 = *v82;
        v83 = *(v82 + 1);
        v59 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v59)
        {
          goto LABEL_114;
        }

        if (v51 < v85)
        {
          v48 = v45 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_90;
    }
  }

  v97 = v8;
  v99 = v9;
  v101 = v5;
  v31 = *a3;
  v32 = *a3 + 8 * v7 - 8;
  v33 = v9 - v7;
  v104 = v30;
LABEL_32:
  v106 = v7;
  v34 = *(v31 + 8 * v7);
  v35 = v33;
  v36 = v32;
  while (1)
  {
    v37 = *v36;
    v38 = v34;
    v39 = v37;
    v40 = [v38 sortOrder];
    v41 = [v39 sortOrder];

    if (v40 >= v41)
    {
LABEL_31:
      v7 = (v106 + 1);
      v32 += 8;
      --v33;
      if ((v106 + 1) != v104)
      {
        goto LABEL_32;
      }

      v7 = v104;
      v9 = v99;
      v5 = v101;
      v8 = v97;
      goto LABEL_39;
    }

    if (!v31)
    {
      break;
    }

    v42 = *v36;
    v34 = *(v36 + 8);
    *v36 = v34;
    *(v36 + 8) = v42;
    v36 -= 8;
    v21 = __CFADD__(v35++, 1);
    if (v21)
    {
      goto LABEL_31;
    }
  }

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
}

uint64_t sub_10001EEB4(void **__dst, void **a2, id *a3, void **__src)
{
  v4 = a3;
  v5 = __dst;
  v6 = a2 - __dst;
  v7 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v7 = a2 - __dst;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    if (__src != a2 || &a2[v11] <= __src)
    {
      v23 = a2;
      v24 = __src;
      memmove(__src, a2, 8 * v11);
      __src = v24;
      a2 = v23;
    }

    v41 = __src;
    v14 = &__src[v11];
    if (v9 < 8)
    {
      v13 = __src;
    }

    else
    {
      v13 = __src;
      if (a2 > v5)
      {
        v38 = v5;
LABEL_27:
        v39 = a2;
        v25 = a2 - 1;
        --v4;
        v26 = v14;
        do
        {
          v27 = v14;
          v28 = v4 + 1;
          v29 = *(v26 - 1);
          v26 -= 8;
          v30 = v25;
          v31 = *v25;
          v32 = v29;
          v33 = v31;
          v34 = [v32 sortOrder];
          v35 = [v33 sortOrder];

          if (v34 < v35)
          {
            if (v28 != v39)
            {
              *v4 = *v30;
            }

            v13 = v41;
            v14 = v27;
            if (v27 <= v41 || (a2 = v30, v30 <= v38))
            {
              a2 = v30;
              goto LABEL_40;
            }

            goto LABEL_27;
          }

          if (v28 != v27)
          {
            *v4 = *v26;
          }

          --v4;
          v14 = v26;
          v13 = v41;
          v25 = v30;
        }

        while (v26 > v41);
        v14 = v26;
        a2 = v39;
      }
    }
  }

  else
  {
    v12 = a2;
    v13 = __src;
    if (__src != __dst || &__dst[v8] <= __src)
    {
      memmove(__src, __dst, 8 * v8);
    }

    v14 = &v13[v8];
    if (v6 < 8)
    {
      a2 = v5;
    }

    else
    {
      v40 = &v13[v8];
      if (v12 < v4)
      {
        v15 = v12;
        while (1)
        {
          v16 = *v13;
          v17 = *v15;
          v18 = v16;
          v19 = [v17 sortOrder];
          v20 = [v18 sortOrder];

          if (v19 >= v20)
          {
            break;
          }

          v21 = v15;
          v22 = v5 == v15++;
          if (!v22)
          {
            goto LABEL_17;
          }

LABEL_18:
          ++v5;
          if (v13 >= v40 || v15 >= v4)
          {
            goto LABEL_20;
          }
        }

        v21 = v13;
        v22 = v5 == v13++;
        if (v22)
        {
          goto LABEL_18;
        }

LABEL_17:
        *v5 = *v21;
        goto LABEL_18;
      }

LABEL_20:
      a2 = v5;
      v14 = v40;
    }
  }

LABEL_40:
  v36 = v14 - v13 + (v14 - v13 < 0 ? 7uLL : 0);
  if (a2 != v13 || a2 >= (v13 + (v36 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, v13, 8 * (v36 >> 3));
  }

  return 1;
}

uint64_t sub_10001F198(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10001F224(v3);
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

void *sub_10001F238(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
LABEL_7:

    return &_swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_10001E534(v3, 0);
  sub_100030DE8(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

void sub_10001F2E0(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_100003090(&qword_10005B4F0, &qword_100040CB0);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v21 = a1 & 0xC000000000000001;
  v19 = a1 + 32;
  v20 = a1 & 0xFFFFFFFFFFFFFF8;
  while (v21)
  {
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_25;
    }

LABEL_18:
    type metadata accessor for AnyCancellable();
    sub_10001F574(&qword_10005B4F8, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
    v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v11 = -1 << v3[32];
    v12 = v10 & ~v11;
    v13 = v12 >> 6;
    v14 = *&v7[8 * (v12 >> 6)];
    v15 = 1 << v12;
    if (((1 << v12) & v14) != 0)
    {
      v16 = ~v11;
      sub_10001F574(&qword_10005B500, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
      while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
      {
        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *&v7[8 * (v12 >> 6)];
        v15 = 1 << v12;
        if (((1 << v12) & v14) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      *&v7[8 * v13] = v15 | v14;
      *(*(v3 + 6) + 8 * v12) = v8;
      v17 = *(v3 + 2);
      v9 = __OFADD__(v17, 1);
      v18 = v17 + 1;
      if (v9)
      {
        goto LABEL_26;
      }

      *(v3 + 2) = v18;
    }

    if (v6 == v5)
    {
      return;
    }
  }

  if (v6 >= *(v20 + 16))
  {
    goto LABEL_27;
  }

  v8 = *(v19 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
}

uint64_t sub_10001F574(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10001F628()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001F668(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001F688()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001F6C0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001F78C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t getEnumTagSinglePayload for TripMeasurementStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TripMeasurementStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10001F94C()
{
  result = qword_10005B610;
  if (!qword_10005B610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B610);
  }

  return result;
}

uint64_t sub_10001F9A0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003090(&qword_10005A798, &qword_10003FD10);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  sub_100008DD0(v2, &v13 - v9, &qword_10005A798, &qword_10003FD10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1000253B8(v10, a1);
  }

  static os_log_type_t.fault.getter();
  v12 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10001FB84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003090(&qword_10005A650, &unk_10003FC50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10001FC64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100003090(&qword_10005A650, &unk_10003FC50);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for TripMeasurementView(uint64_t a1)
{
  result = qword_10005B670;
  if (!qword_10005B670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001FD78(uint64_t a1)
{
  sub_100003DC4(319);
  if (v1 <= 0x3F)
  {
    sub_100003EB0(319);
    if (v2 <= 0x3F)
    {
      sub_10001FE2C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10001FE2C(uint64_t a1)
{
  if (!qword_10005B680)
  {
    type metadata accessor for CardCellConfiguration(255);
    sub_10001FEC0(&unk_10005B688, type metadata accessor for CardCellConfiguration, &unk_100041A1C);
    v1 = type metadata accessor for ObservedObject();
    if (!v2)
    {
      atomic_store(v1, &qword_10005B680);
    }
  }
}

uint64_t sub_10001FEC0(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10001FF24@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100003090(&qword_10005B6C8, &qword_100040F88);
  __chkstk_darwin(v4 - 8);
  v6 = &v11[-v5];
  v7 = type metadata accessor for TripMeasurementView(0);
  v8 = *(*(v2 + *(v7 + 24) + 8) + OBJC_IVAR____TtC4Trip21CardCellConfiguration_preferredCellStyle);
  if (v8 == 5)
  {
    v8 = *(v2 + *(v7 + 28));
  }

  sub_100020088(v8, v2, v6);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v11[15])
  {
    v9 = 0.0;
  }

  else
  {
    v9 = 1.0;
  }

  sub_100008944(v6, a1, &qword_10005B6C8, &qword_100040F88);
  result = sub_100003090(&qword_10005B6D0, &qword_100040FD8);
  *(a1 + *(result + 36)) = v9;
  return result;
}

uint64_t sub_100020088@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v83 = a2;
  LODWORD(v82) = a1;
  v87 = a3;
  v75 = sub_100003090(&qword_10005B6D8, &qword_100040FE0);
  __chkstk_darwin(v75);
  v71 = (&v70 - v3);
  v73 = sub_100003090(&qword_10005B6E0, &qword_100040FE8);
  __chkstk_darwin(v73);
  v74 = &v70 - v4;
  v80 = sub_100003090(&qword_10005B6E8, &qword_100040FF0);
  __chkstk_darwin(v80);
  v76 = &v70 - v5;
  v72 = sub_100003090(&qword_10005B6F0, &qword_100040FF8);
  __chkstk_darwin(v72);
  v70 = (&v70 - v6);
  v7 = sub_100003090(&qword_10005B6F8, &qword_100041000);
  __chkstk_darwin(v7);
  v9 = &v70 - v8;
  v84 = sub_100003090(&qword_10005B700, &qword_100041008);
  __chkstk_darwin(v84);
  v86 = &v70 - v10;
  v77 = sub_100003090(&qword_10005B708, &qword_100041010);
  __chkstk_darwin(v77);
  v79 = &v70 - v11;
  v12 = sub_100003090(&qword_10005B710, &qword_100041018);
  __chkstk_darwin(v12);
  v14 = &v70 - v13;
  v78 = sub_100003090(&qword_10005B718, &qword_100041020);
  __chkstk_darwin(v78);
  v16 = &v70 - v15;
  v85 = sub_100003090(&qword_10005B720, &qword_100041028);
  __chkstk_darwin(v85);
  v81 = &v70 - v17;
  v18 = type metadata accessor for LayoutConfiguration(0);
  __chkstk_darwin(v18);
  v20 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100003090(&qword_10005B728, &qword_100041030);
  __chkstk_darwin(v21);
  v23 = &v70 - v22;
  v24 = v82;
  if (v82 <= 1u)
  {
    v75 = v16;
    v76 = v12;
    v82 = v7;
    if (v24)
    {
      *v9 = static HorizontalAlignment.leading.getter();
      *(v9 + 1) = 0;
      v9[16] = 1;
      v63 = sub_100003090(&qword_10005B7D0, &qword_100041078);
      sub_1000221E4(v83, &v9[*(v63 + 44)]);
      sub_10001F9A0(v20);
      sub_100008A08(&v20[*(v18 + 24)], &v105);
      sub_1000086B4(v20);
      v64 = *(&v106 + 1);
      v65 = v107;
      sub_100008A6C(&v105, *(&v106 + 1));
      (*(v65 + 40))(v64, v65);
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v66 = &v9[*(v82 + 36)];
      v67 = v120;
      *v66 = v119;
      *(v66 + 1) = v67;
      *(v66 + 2) = v121;
      sub_1000085F8(&v105);
      sub_100008DD0(v9, v14, &qword_10005B6F8, &qword_100041000);
      swift_storeEnumTagMultiPayload();
      sub_100024F98();
      sub_10002503C();
      v68 = v75;
      _ConditionalContent<>.init(storage:)();
      sub_100008DD0(v68, v79, &qword_10005B718, &qword_100041020);
      swift_storeEnumTagMultiPayload();
      sub_100024F0C();
      sub_1000250E0();
      v69 = v81;
      _ConditionalContent<>.init(storage:)();
      sub_1000038DC(v68, &qword_10005B718, &qword_100041020);
      sub_100008DD0(v69, v86, &qword_10005B720, &qword_100041028);
      swift_storeEnumTagMultiPayload();
      sub_100003090(&qword_10005B738, &qword_100041040);
      sub_100024E80();
      sub_1000252B4(&qword_10005B7B8, &qword_10005B738, &qword_100041040);
      _ConditionalContent<>.init(storage:)();
      sub_1000038DC(v69, &qword_10005B720, &qword_100041028);
      v34 = v9;
      v35 = &qword_10005B6F8;
      v36 = &qword_100041000;
    }

    else
    {
      *v23 = static HorizontalAlignment.center.getter();
      *(v23 + 1) = 0;
      v23[16] = 1;
      v37 = sub_100003090(&qword_10005B7D8, &qword_100041080);
      sub_1000210A0(v83, &v23[*(v37 + 44)]);
      sub_10001F9A0(v20);
      sub_100008A08(&v20[*(v18 + 24)], &v105);
      sub_1000086B4(v20);
      v38 = *(&v106 + 1);
      v39 = v107;
      sub_100008A6C(&v105, *(&v106 + 1));
      (*(v39 + 40))(v38, v39);
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v40 = &v23[*(v21 + 36)];
      v41 = v120;
      *v40 = v119;
      *(v40 + 1) = v41;
      *(v40 + 2) = v121;
      sub_1000085F8(&v105);
      sub_100008DD0(v23, v14, &qword_10005B728, &qword_100041030);
      swift_storeEnumTagMultiPayload();
      sub_100024F98();
      sub_10002503C();
      v42 = v75;
      _ConditionalContent<>.init(storage:)();
      sub_100008DD0(v42, v79, &qword_10005B718, &qword_100041020);
      swift_storeEnumTagMultiPayload();
      sub_100024F0C();
      sub_1000250E0();
      v43 = v81;
      _ConditionalContent<>.init(storage:)();
      sub_1000038DC(v42, &qword_10005B718, &qword_100041020);
      sub_100008DD0(v43, v86, &qword_10005B720, &qword_100041028);
      swift_storeEnumTagMultiPayload();
      sub_100003090(&qword_10005B738, &qword_100041040);
      sub_100024E80();
      sub_1000252B4(&qword_10005B7B8, &qword_10005B738, &qword_100041040);
      _ConditionalContent<>.init(storage:)();
      sub_1000038DC(v43, &qword_10005B720, &qword_100041028);
      v34 = v23;
      v35 = &qword_10005B728;
      v36 = &qword_100041030;
    }
  }

  else if (v82 == 2)
  {
    v44 = static HorizontalAlignment.leading.getter();
    v45 = v70;
    *v70 = v44;
    *(v45 + 8) = 0;
    *(v45 + 16) = 1;
    v46 = sub_100003090(&qword_10005B7C8, &qword_100041070);
    sub_100022D40(v83, v45 + *(v46 + 44));
    sub_10001F9A0(v20);
    sub_100008A08(&v20[*(v18 + 24)], &v105);
    sub_1000086B4(v20);
    v47 = *(&v106 + 1);
    v48 = v107;
    sub_100008A6C(&v105, *(&v106 + 1));
    (*(v48 + 16))(v47, v48);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v49 = (v45 + *(v72 + 36));
    v50 = v120;
    *v49 = v119;
    v49[1] = v50;
    v49[2] = v121;
    sub_1000085F8(&v105);
    sub_100008DD0(v45, v74, &qword_10005B6F0, &qword_100040FF8);
    swift_storeEnumTagMultiPayload();
    sub_10002516C();
    sub_100025210();
    v51 = v76;
    _ConditionalContent<>.init(storage:)();
    sub_100008DD0(v51, v79, &qword_10005B6E8, &qword_100040FF0);
    swift_storeEnumTagMultiPayload();
    sub_100024F0C();
    sub_1000250E0();
    v52 = v81;
    _ConditionalContent<>.init(storage:)();
    sub_1000038DC(v51, &qword_10005B6E8, &qword_100040FF0);
    sub_100008DD0(v52, v86, &qword_10005B720, &qword_100041028);
    swift_storeEnumTagMultiPayload();
    sub_100003090(&qword_10005B738, &qword_100041040);
    sub_100024E80();
    sub_1000252B4(&qword_10005B7B8, &qword_10005B738, &qword_100041040);
    _ConditionalContent<>.init(storage:)();
    sub_1000038DC(v52, &qword_10005B720, &qword_100041028);
    v34 = v45;
    v35 = &qword_10005B6F0;
    v36 = &qword_100040FF8;
  }

  else
  {
    if (v82 != 3)
    {
      v53 = static HorizontalAlignment.center.getter();
      v104 = 0;
      sub_1000245C8(v83, &v89);
      v115 = v99;
      v116 = v100;
      v117 = v101;
      v111 = v95;
      v112 = v96;
      v113 = v97;
      v114 = v98;
      v107 = v91;
      v108 = v92;
      v109 = v93;
      v110 = v94;
      v105 = v89;
      v106 = v90;
      v129 = v99;
      v130 = v100;
      v131 = v101;
      v125 = v95;
      v126 = v96;
      v127 = v97;
      v128 = v98;
      v121 = v91;
      v122 = v92;
      v123 = v93;
      v124 = v94;
      v118 = v102;
      v132 = v102;
      v119 = v89;
      v120 = v90;
      sub_100008DD0(&v105, &v88, &qword_10005B730, &qword_100041038);
      sub_1000038DC(&v119, &qword_10005B730, &qword_100041038);
      *&v103[167] = v115;
      *&v103[183] = v116;
      *&v103[199] = v117;
      *&v103[103] = v111;
      *&v103[119] = v112;
      *&v103[135] = v113;
      *&v103[151] = v114;
      *&v103[39] = v107;
      *&v103[55] = v108;
      *&v103[71] = v109;
      *&v103[87] = v110;
      *&v103[7] = v105;
      *&v103[23] = v106;
      v54 = *&v103[176];
      v55 = v86;
      *(v86 + 177) = *&v103[160];
      *(v55 + 193) = v54;
      *(v55 + 209) = *&v103[192];
      v56 = *&v103[112];
      *(v55 + 113) = *&v103[96];
      *(v55 + 129) = v56;
      v57 = *&v103[144];
      *(v55 + 145) = *&v103[128];
      *(v55 + 161) = v57;
      v58 = *&v103[48];
      *(v55 + 49) = *&v103[32];
      *(v55 + 65) = v58;
      v59 = *&v103[80];
      *(v55 + 81) = *&v103[64];
      *(v55 + 97) = v59;
      v60 = *&v103[16];
      *(v55 + 17) = *v103;
      v103[215] = v118;
      v61 = v104;
      *v55 = v53;
      *(v55 + 8) = 0x4020000000000000;
      *(v55 + 16) = v61;
      *(v55 + 225) = *&v103[208];
      *(v55 + 33) = v60;
      swift_storeEnumTagMultiPayload();
      sub_100003090(&qword_10005B738, &qword_100041040);
      sub_100024E80();
      sub_1000252B4(&qword_10005B7B8, &qword_10005B738, &qword_100041040);
      return _ConditionalContent<>.init(storage:)();
    }

    v25 = static HorizontalAlignment.leading.getter();
    v26 = v71;
    *v71 = v25;
    *(v26 + 8) = 0;
    *(v26 + 16) = 1;
    v27 = sub_100003090(&qword_10005B7C0, &qword_100041068);
    sub_100023B7C(v83, v26 + *(v27 + 44));
    sub_10001F9A0(v20);
    sub_100008A08(&v20[*(v18 + 24)], &v105);
    sub_1000086B4(v20);
    v28 = *(&v106 + 1);
    v29 = v107;
    sub_100008A6C(&v105, *(&v106 + 1));
    (*(v29 + 16))(v28, v29);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v30 = (v26 + *(v75 + 36));
    v31 = v120;
    *v30 = v119;
    v30[1] = v31;
    v30[2] = v121;
    sub_1000085F8(&v105);
    sub_100008DD0(v26, v74, &qword_10005B6D8, &qword_100040FE0);
    swift_storeEnumTagMultiPayload();
    sub_10002516C();
    sub_100025210();
    v32 = v76;
    _ConditionalContent<>.init(storage:)();
    sub_100008DD0(v32, v79, &qword_10005B6E8, &qword_100040FF0);
    swift_storeEnumTagMultiPayload();
    sub_100024F0C();
    sub_1000250E0();
    v33 = v81;
    _ConditionalContent<>.init(storage:)();
    sub_1000038DC(v32, &qword_10005B6E8, &qword_100040FF0);
    sub_100008DD0(v33, v86, &qword_10005B720, &qword_100041028);
    swift_storeEnumTagMultiPayload();
    sub_100003090(&qword_10005B738, &qword_100041040);
    sub_100024E80();
    sub_1000252B4(&qword_10005B7B8, &qword_10005B738, &qword_100041040);
    _ConditionalContent<>.init(storage:)();
    sub_1000038DC(v33, &qword_10005B720, &qword_100041028);
    v34 = v26;
    v35 = &qword_10005B6D8;
    v36 = &qword_100040FE0;
  }

  return sub_1000038DC(v34, v35, v36);
}

uint64_t sub_1000210A0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v32 = a2;
  v3 = type metadata accessor for LayoutConfiguration(0);
  __chkstk_darwin(v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003090(&qword_10005B7E0, &qword_100041088);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v31 - v8;
  v10 = sub_100003090(&qword_10005B7E8, &qword_100041090);
  v11 = __chkstk_darwin(v10 - 8);
  v33 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v35 = &v31 - v13;
  v14 = *(type metadata accessor for TripMeasurementView(0) + 24);
  v34 = a1;
  if (*(*(a1 + v14 + 8) + OBJC_IVAR____TtC4Trip21CardCellConfiguration_dataType) == 1)
  {
    Divider.init()();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v15 = &v9[*(sub_100003090(&qword_10005B808, &unk_1000410B0) + 36)];
    v16 = v58[17];
    *v15 = v58[16];
    *(v15 + 1) = v16;
    *(v15 + 2) = v58[18];
    sub_10001F9A0(v5);
    sub_100008A08(&v5[*(v3 + 24)], &v57);
    sub_1000086B4(v5);
    v17 = *(&v58[0] + 1);
    v18 = *&v58[1];
    sub_100008A6C(&v57, *(&v58[0] + 1));
    v19 = (*(v18 + 216))(v17, v18);
    v20 = static Edge.Set.all.getter();
    v21 = &v9[*(v6 + 36)];
    *v21 = v19;
    v21[8] = v20;
    sub_1000085F8(&v57);
    v22 = v35;
    sub_100008944(v9, v35, &qword_10005B7E0, &qword_100041088);
    (*(v7 + 56))(v22, 0, 1, v6);
  }

  else
  {
    (*(v7 + 56))(v35, 1, 1, v6);
  }

  v31 = static VerticalAlignment.center.getter();
  v37 = 1;
  sub_1000216F8(v34, &v57);
  v50 = v58[11];
  v51 = v58[12];
  v52 = v58[13];
  v46 = v58[7];
  v47 = v58[8];
  v48 = v58[9];
  v49 = v58[10];
  v42 = v58[3];
  v43 = v58[4];
  v44 = v58[5];
  v45 = v58[6];
  v38 = v57;
  v39 = v58[0];
  v40 = v58[1];
  v41 = v58[2];
  v54[12] = v58[11];
  v54[13] = v58[12];
  v54[14] = v58[13];
  v54[8] = v58[7];
  v54[9] = v58[8];
  v54[10] = v58[9];
  v54[11] = v58[10];
  v54[4] = v58[3];
  v54[5] = v58[4];
  v54[6] = v58[5];
  v54[7] = v58[6];
  v54[0] = v57;
  v54[1] = v58[0];
  v53 = *&v58[14];
  v55 = *&v58[14];
  v54[2] = v58[1];
  v54[3] = v58[2];
  sub_100008DD0(&v38, v56, &qword_10005B7F0, &qword_100041098);
  sub_1000038DC(v54, &qword_10005B7F0, &qword_100041098);
  *(&v36[12] + 7) = v50;
  *(&v36[13] + 7) = v51;
  *(&v36[14] + 7) = v52;
  *(&v36[8] + 7) = v46;
  *(&v36[9] + 7) = v47;
  *(&v36[10] + 7) = v48;
  *(&v36[11] + 7) = v49;
  *(&v36[4] + 7) = v42;
  *(&v36[5] + 7) = v43;
  *(&v36[6] + 7) = v44;
  *(&v36[7] + 7) = v45;
  *(v36 + 7) = v38;
  *(&v36[1] + 7) = v39;
  *(&v36[2] + 7) = v40;
  *(&v36[15] + 7) = v53;
  *(&v36[3] + 7) = v41;
  LODWORD(v34) = v37;
  v23 = v35;
  v24 = v33;
  sub_100008DD0(v35, v33, &qword_10005B7E8, &qword_100041090);
  v25 = v32;
  *v32 = 0;
  *(v25 + 8) = 1;
  v26 = sub_100003090(&qword_10005B7F8, &qword_1000410A0);
  sub_100008DD0(v24, v25 + *(v26 + 48), &qword_10005B7E8, &qword_100041090);
  v27 = *(v26 + 64);
  *(&v56[13] + 1) = v36[12];
  *(&v56[14] + 1) = v36[13];
  *(&v56[15] + 1) = v36[14];
  v56[16] = *(&v36[14] + 15);
  *(&v56[9] + 1) = v36[8];
  *(&v56[10] + 1) = v36[9];
  *(&v56[11] + 1) = v36[10];
  *(&v56[12] + 1) = v36[11];
  *(&v56[5] + 1) = v36[4];
  *(&v56[6] + 1) = v36[5];
  *(&v56[7] + 1) = v36[6];
  *(&v56[8] + 1) = v36[7];
  *(&v56[3] + 1) = v36[2];
  *(&v56[4] + 1) = v36[3];
  *(&v56[1] + 1) = v36[0];
  v28 = v31;
  v56[0] = v31;
  v29 = v34;
  LOBYTE(v56[1]) = v34;
  *(&v56[2] + 1) = v36[1];
  memcpy(v25 + v27, v56, 0x110uLL);
  sub_100008DD0(v56, &v57, &qword_10005B800, &qword_1000410A8);
  sub_1000038DC(v23, &qword_10005B7E8, &qword_100041090);
  *(&v58[12] + 1) = v36[12];
  *(&v58[13] + 1) = v36[13];
  *(&v58[14] + 1) = v36[14];
  v58[15] = *(&v36[14] + 15);
  *(&v58[8] + 1) = v36[8];
  *(&v58[9] + 1) = v36[9];
  *(&v58[10] + 1) = v36[10];
  *(&v58[11] + 1) = v36[11];
  *(&v58[4] + 1) = v36[4];
  *(&v58[5] + 1) = v36[5];
  *(&v58[6] + 1) = v36[6];
  *(&v58[7] + 1) = v36[7];
  *(v58 + 1) = v36[0];
  *(&v58[1] + 1) = v36[1];
  *(&v58[2] + 1) = v36[2];
  v57 = v28;
  LOBYTE(v58[0]) = v29;
  *(&v58[3] + 1) = v36[3];
  sub_1000038DC(&v57, &qword_10005B800, &qword_1000410A8);
  return sub_1000038DC(v24, &qword_10005B7E8, &qword_100041090);
}

uint64_t sub_1000216F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100003090(&qword_10005A870, &qword_100040B80);
  __chkstk_darwin(v4 - 8);
  v6 = &v40 - v5;
  v7 = type metadata accessor for LayoutConfiguration(0);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TripMeasurementView(0);

  v44 = Image.init(automakerSymbolName:)();
  sub_10001F9A0(v10);
  sub_100008A08(&v10[*(v8 + 32)], v84);
  sub_1000086B4(v10);
  v12 = v85;
  v11 = v86;
  sub_100008A6C(v84, v85);
  (*(v11 + 104))(v12, v11);
  v13 = type metadata accessor for Font.Design();
  (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  v47 = static Font.system(size:weight:design:)();
  sub_1000038DC(v6, &qword_10005A870, &qword_100040B80);
  sub_1000085F8(v84);
  KeyPath = swift_getKeyPath();
  v46 = static Edge.Set.trailing.getter();
  LOBYTE(v65) = 1;
  sub_10001F9A0(v10);
  sub_100008A08(&v10[*(v8 + 32)], v84);
  sub_1000086B4(v10);
  v14 = v85;
  v15 = v86;
  sub_100008A6C(v84, v85);
  v45 = (*(v15 + 96))(v14, v15);
  v16 = swift_getKeyPath();
  v43 = v16;
  sub_1000085F8(v84);
  sub_10001F9A0(v10);
  sub_100008A08(&v10[*(v8 + 32)], v84);
  sub_1000086B4(v10);
  v17 = v85;
  v18 = v86;
  sub_100008A6C(v84, v85);
  (*(v18 + 88))(v17, v18);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  sub_1000085F8(v84);
  v19 = static HorizontalAlignment.leading.getter();
  LOBYTE(v65) = 1;
  v41 = static HorizontalAlignment.leading.getter();
  sub_10001F9A0(v10);
  sub_100008A08(&v10[*(v8 + 32)], v84);
  sub_1000086B4(v10);
  v20 = v85;
  v21 = v86;
  sub_100008A6C(v84, v85);
  v22 = (*(v21 + 240))(v20, v21);
  LOBYTE(v74[0]) = 0;
  sub_100021D68(a1, v63);
  *&v57[7] = v63[0];
  *&v57[23] = v63[1];
  *&v57[39] = v63[2];
  *&v57[55] = v63[3];
  sub_1000085F8(v84);
  v23 = v74[0];
  v24 = v65;
  v25 = v44;
  *&v65 = v44;
  v26 = KeyPath;
  *(&v65 + 1) = KeyPath;
  *&v66 = v47;
  BYTE8(v66) = v46;
  *(&v66 + 9) = *v58;
  HIDWORD(v66) = *&v58[3];
  v67 = 0u;
  v68 = 0u;
  LOBYTE(v69) = 1;
  *(&v69 + 1) = *v59;
  DWORD1(v69) = *&v59[3];
  *(&v69 + 1) = v16;
  *v70 = v45;
  *&v70[40] = v62;
  *&v70[24] = v61;
  *&v70[8] = v60;
  v50 = 0u;
  v51 = 0u;
  v48 = v65;
  v49 = v66;
  *&v56[0] = *(&v62 + 1);
  v54 = *&v70[16];
  v55 = *&v70[32];
  v52 = v69;
  v53 = *v70;
  v27 = v19;
  v71[0] = v19;
  v71[1] = 0;
  LOBYTE(v72) = v24;
  *(&v72 + 1) = *v64;
  DWORD1(v72) = *&v64[3];
  v28 = v41;
  *(&v72 + 1) = v41;
  *v73 = v22;
  BYTE8(v73[0]) = v74[0];
  *(&v73[2] + 9) = *&v57[32];
  v30 = *&v57[16];
  v29 = *&v57[32];
  *(&v73[1] + 9) = *&v57[16];
  v31 = *v57;
  *(v73 + 9) = *v57;
  v32 = *&v57[48];
  *(&v73[3] + 9) = *&v57[48];
  *(&v73[4] + 1) = *&v57[63];
  *(&v56[2] + 8) = v73[0];
  *(&v56[1] + 8) = v72;
  *(v56 + 8) = v71[0];
  *(&v56[6] + 8) = v73[4];
  *(&v56[5] + 8) = v73[3];
  *(&v56[4] + 8) = v73[2];
  *(&v56[3] + 8) = v73[1];
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  v33 = v49;
  *a2 = v48;
  *(a2 + 16) = v33;
  v34 = v55;
  *(a2 + 96) = v54;
  *(a2 + 112) = v34;
  v35 = v53;
  *(a2 + 64) = v52;
  *(a2 + 80) = v35;
  v36 = v56[3];
  *(a2 + 160) = v56[2];
  *(a2 + 176) = v36;
  v37 = v56[1];
  *(a2 + 128) = v56[0];
  *(a2 + 144) = v37;
  v38 = v56[6];
  *(a2 + 208) = v56[5];
  *(a2 + 224) = v38;
  *(a2 + 192) = v56[4];
  *(a2 + 240) = *&v56[7];
  v74[0] = v27;
  v74[1] = 0;
  v75 = v24;
  *v76 = *v64;
  *&v76[3] = *&v64[3];
  v77 = v28;
  v78 = v22;
  v79 = v23;
  v81 = v30;
  v82 = v29;
  *v83 = v32;
  *&v83[15] = *&v57[63];
  v80 = v31;
  sub_100008DD0(&v65, v84, &qword_10005B810, &qword_100041120);
  sub_100008DD0(v71, v84, &qword_10005B818, &qword_100041128);
  sub_1000038DC(v74, &qword_10005B818, &qword_100041128);
  v84[0] = v25;
  v84[1] = v26;
  v84[2] = v47;
  LOBYTE(v85) = v46;
  *(&v85 + 1) = *v58;
  HIDWORD(v85) = *&v58[3];
  v86 = 0u;
  v87 = 0u;
  v88 = 1;
  *v89 = *v59;
  *&v89[3] = *&v59[3];
  v90 = v43;
  v91 = v45;
  v94 = v62;
  v93 = v61;
  v92 = v60;
  return sub_1000038DC(v84, &qword_10005B810, &qword_100041120);
}

uint64_t sub_100021D68@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v59 = a2;
  v3 = type metadata accessor for LayoutConfiguration(0) - 8;
  v60 = v3;
  __chkstk_darwin(v3);
  v5 = v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = *(a1 + *(type metadata accessor for TripMeasurementView(0) + 24) + 8);
  v6 = *(v54 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_title + 8);
  v62 = *(v54 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_title);
  v63 = v6;
  v53[2] = sub_1000089B4();

  v7 = Text.init<A>(_:)();
  v9 = v8;
  v11 = v10;
  v53[1] = a1;
  sub_10001F9A0(v5);
  sub_100008A08(v5 + *(v3 + 32), &v62);
  sub_1000086B4(v5);
  v12 = v64;
  v13 = v65;
  sub_100008A6C(&v62, v64);
  (*(v13 + 144))(v12, v13);
  v14 = Text.font(_:)();
  v16 = v15;
  LOBYTE(v13) = v17;
  v53[0] = v18;
  sub_100008AB0(v7, v9, v11 & 1);

  sub_1000085F8(&v62);
  sub_10001F9A0(v5);
  v19 = v60;
  sub_100008A08(v5 + *(v60 + 32), &v62);
  sub_1000086B4(v5);
  v20 = v64;
  v21 = v65;
  sub_100008A6C(&v62, v64);
  (*(v21 + 168))(v20, v21);
  v22 = Text.foregroundColor(_:)();
  v57 = v23;
  v58 = v22;
  v56 = v24;
  v55 = v25;
  sub_100008AB0(v14, v16, v13 & 1);

  sub_1000085F8(&v62);
  v26 = *(v54 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_subtitle + 8);
  v62 = *(v54 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_subtitle);
  v63 = v26;

  v27 = Text.init<A>(_:)();
  v29 = v28;
  v31 = v30;
  sub_10001F9A0(v5);
  sub_100008A08(v5 + *(v19 + 32), &v62);
  sub_1000086B4(v5);
  v32 = v64;
  v33 = v65;
  sub_100008A6C(&v62, v64);
  (*(v33 + 192))(v32, v33);
  v34 = Text.font(_:)();
  v36 = v35;
  LOBYTE(v33) = v37;
  v54 = v38;
  sub_100008AB0(v27, v29, v31 & 1);

  sub_1000085F8(&v62);
  sub_10001F9A0(v5);
  sub_100008A08(v5 + *(v60 + 32), &v62);
  sub_1000086B4(v5);
  v39 = v64;
  v40 = v65;
  sub_100008A6C(&v62, v64);
  (*(v40 + 216))(v39, v40);
  v41 = Text.foregroundColor(_:)();
  v43 = v42;
  LOBYTE(v5) = v44;
  v46 = v45;
  sub_100008AB0(v34, v36, v33 & 1);

  sub_1000085F8(&v62);
  v47 = v55 & 1;
  v61 = v55 & 1;
  LOBYTE(v62) = v55 & 1;
  LOBYTE(v39) = v5 & 1;
  v66 = v5 & 1;
  v49 = v58;
  v48 = v59;
  v51 = v56;
  v50 = v57;
  *v59 = v58;
  v48[1] = v51;
  *(v48 + 16) = v47;
  v48[3] = v50;
  v48[4] = v41;
  v48[5] = v43;
  *(v48 + 48) = v39;
  v48[7] = v46;
  sub_100025318(v49, v51, v47);

  sub_100025318(v41, v43, v39);

  sub_100008AB0(v41, v43, v39);

  sub_100008AB0(v49, v51, v61);
}

uint64_t sub_1000221E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = sub_100003090(&qword_10005B820, &qword_100041130);
  v44 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v40 - v4;
  v47 = type metadata accessor for LayoutConfiguration(0);
  __chkstk_darwin(v47);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_100003090(&qword_10005B7E0, &qword_100041088);
  v8 = __chkstk_darwin(v43);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v40 - v11;
  v13 = sub_100003090(&qword_10005B828, &qword_100041138);
  v14 = __chkstk_darwin(v13 - 8);
  v45 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v40 - v16;
  if (*(*(a1 + *(type metadata accessor for TripMeasurementView(0) + 24) + 8) + OBJC_IVAR____TtC4Trip21CardCellConfiguration_dataType) == 1)
  {
    Divider.init()();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v18 = &v12[*(sub_100003090(&qword_10005B808, &unk_1000410B0) + 36)];
    v19 = v57[1];
    *v18 = v57[0];
    *(v18 + 1) = v19;
    *(v18 + 2) = v57[2];
    sub_10001F9A0(v7);
    sub_100008A08(&v7[*(v47 + 24)], v52);
    sub_1000086B4(v7);
    v41 = v3;
    v42 = a1;
    v20 = *&v54[7];
    v21 = *&v54[15];
    sub_100008A6C(v52, *&v54[7]);
    v22 = (*(v21 + 216))(v20, v21);
    v23 = static Edge.Set.all.getter();
    v24 = &v12[*(v43 + 36)];
    *v24 = v22;
    v24[8] = v23;
    sub_1000085F8(v52);
    sub_100008DD0(v12, v10, &qword_10005B7E0, &qword_100041088);
    *v5 = 0;
    v5[8] = 1;
    v25 = sub_100003090(&qword_10005B840, &qword_100041150);
    sub_100008DD0(v10, &v5[*(v25 + 48)], &qword_10005B7E0, &qword_100041088);
    sub_1000038DC(v12, &qword_10005B7E0, &qword_100041088);
    a1 = v42;
    sub_1000038DC(v10, &qword_10005B7E0, &qword_100041088);
    sub_100008944(v5, v17, &qword_10005B820, &qword_100041130);
    (*(v44 + 56))(v17, 0, 1, v41);
  }

  else
  {
    (*(v44 + 56))(v17, 1, 1, v3);
  }

  v26 = static HorizontalAlignment.leading.getter();
  sub_10001F9A0(v7);
  sub_100008A08(&v7[*(v47 + 24)], v52);
  sub_1000086B4(v7);
  v27 = *&v54[7];
  v28 = *&v54[15];
  sub_100008A6C(v52, *&v54[7]);
  v29 = (*(v28 + 240))(v27, v28);
  LOBYTE(v50) = 0;
  sub_1000227A4(a1, v49);
  *&v48[7] = v49[0];
  *&v48[23] = v49[1];
  *&v48[39] = v49[2];
  *&v48[55] = v49[3];
  sub_1000085F8(v52);
  v30 = v50;
  v31 = v45;
  sub_100008DD0(v17, v45, &qword_10005B828, &qword_100041138);
  v32 = v46;
  sub_100008DD0(v31, v46, &qword_10005B828, &qword_100041138);
  v33 = v32 + *(sub_100003090(&qword_10005B830, &qword_100041140) + 48);
  *&v50 = v26;
  *(&v50 + 1) = v29;
  v51[0] = v30;
  *&v51[1] = *v48;
  *&v51[17] = *&v48[16];
  *&v51[33] = *&v48[32];
  *&v51[49] = *&v48[48];
  v34 = *&v48[63];
  *&v51[64] = *&v48[63];
  v35 = *v51;
  *v33 = v50;
  *(v33 + 16) = v35;
  v36 = *&v51[16];
  v37 = *&v51[32];
  v38 = *&v51[48];
  *(v33 + 80) = v34;
  *(v33 + 48) = v37;
  *(v33 + 64) = v38;
  *(v33 + 32) = v36;
  sub_100008DD0(&v50, v52, &qword_10005B838, &qword_100041148);
  sub_1000038DC(v17, &qword_10005B828, &qword_100041138);
  v52[0] = v26;
  *&v52[1] = v29;
  v53 = v30;
  *&v54[16] = *&v48[16];
  v55 = *&v48[32];
  *v56 = *&v48[48];
  *&v56[15] = *&v48[63];
  *v54 = *v48;
  sub_1000038DC(v52, &qword_10005B838, &qword_100041148);
  return sub_1000038DC(v31, &qword_10005B828, &qword_100041138);
}

uint64_t sub_1000227A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for LayoutConfiguration(0);
  __chkstk_darwin(v4);
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TripMeasurementView(0);
  if (*(a1 + *(v7 + 20)))
  {
    v8 = v7;
    v71 = a2;
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (v72)
    {
      v69 = 0;
      v70 = 0;
      v67 = 0;
      v68 = 0;
    }

    else
    {
      v9 = (*(a1 + *(v8 + 24) + 8) + OBJC_IVAR____TtC4Trip21CardCellConfiguration_subtitle);
      v10 = v9[1];
      v72 = *v9;
      v73 = v10;
      sub_1000089B4();

      v11 = Text.init<A>(_:)();
      v65 = v8;
      v12 = v11;
      v13 = a1;
      v15 = v14;
      v17 = v16;
      sub_10001F9A0(v6);
      sub_100008A08(&v6[*(v4 + 24)], &v72);
      sub_1000086B4(v6);
      v66 = v4;
      v18 = v74;
      v19 = v75;
      sub_100008A6C(&v72, v74);
      (*(v19 + 192))(v18, v19);
      v20 = Text.font(_:)();
      v22 = v21;
      LOBYTE(v19) = v23;
      v70 = v24;
      v25 = v15;
      a1 = v13;
      sub_100008AB0(v12, v25, v17 & 1);

      sub_1000085F8(&v72);
      sub_10001F9A0(v6);
      sub_100008A08(&v6[*(v66 + 24)], &v72);
      sub_1000086B4(v6);
      v26 = v74;
      v27 = v75;
      sub_100008A6C(&v72, v74);
      (*(v27 + 216))(v26, v27);
      v28 = Text.foregroundColor(_:)();
      v30 = v29;
      LODWORD(v69) = v31;
      v33 = v32;
      LOBYTE(v31) = v19 & 1;
      v4 = v66;
      sub_100008AB0(v20, v22, v31);

      sub_1000085F8(&v72);
      v34 = v69 & 1;
      v69 = v30;
      v70 = v28;
      v35 = v28;
      v8 = v65;
      v67 = v34;
      sub_100025318(v35, v30, v34);
      v68 = v33;
    }

    v36 = (*(a1 + *(v8 + 24) + 8) + OBJC_IVAR____TtC4Trip21CardCellConfiguration_title);
    v37 = v36[1];
    v72 = *v36;
    v73 = v37;
    sub_1000089B4();

    v38 = Text.init<A>(_:)();
    v40 = v39;
    v42 = v41;
    sub_10001F9A0(v6);
    sub_100008A08(&v6[*(v4 + 24)], &v72);
    sub_1000086B4(v6);
    v43 = v74;
    v44 = v75;
    sub_100008A6C(&v72, v74);
    (*(v44 + 144))(v43, v44);
    v45 = Text.font(_:)();
    v65 = v46;
    v66 = v45;
    v48 = v47;
    LOBYTE(v43) = v49;
    sub_100008AB0(v38, v40, v42 & 1);

    sub_1000085F8(&v72);
    sub_10001F9A0(v6);
    sub_100008A08(&v6[*(v4 + 24)], &v72);
    sub_1000086B4(v6);
    v50 = v74;
    v51 = v75;
    sub_100008A6C(&v72, v74);
    (*(v51 + 168))(v50, v51);
    v52 = v66;
    v53 = Text.foregroundColor(_:)();
    v55 = v54;
    LOBYTE(v40) = v56;
    v58 = v57;
    sub_100008AB0(v52, v48, v43 & 1);

    sub_1000085F8(&v72);
    v60 = v69;
    v59 = v70;
    v62 = v67;
    v61 = v68;
    sub_100025330(v70, v69, v67, v68);
    sub_100025318(v53, v55, v40 & 1);

    sub_100025374(v59, v60, v62, v61);
    LOBYTE(v72) = v40 & 1;
    v63 = v71;
    *v71 = v59;
    v63[1] = v60;
    v63[2] = v62;
    v63[3] = v61;
    v63[4] = v53;
    v63[5] = v55;
    *(v63 + 48) = v40 & 1;
    v63[7] = v58;
    sub_100008AB0(v53, v55, v40 & 1);

    return sub_100025374(v59, v60, v62, v61);
  }

  else
  {
    type metadata accessor for TripAppConfig(0);
    sub_10001FEC0(&qword_10005A6E0, type metadata accessor for TripAppConfig, &unk_1000424C0);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100022D40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = type metadata accessor for LayoutConfiguration(0);
  __chkstk_darwin(v3);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003090(&qword_10005B7E0, &qword_100041088);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v37 - v8;
  v10 = sub_100003090(&qword_10005B7E8, &qword_100041090);
  v11 = __chkstk_darwin(v10 - 8);
  v39 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v40 = &v37 - v13;
  if (*(*(a1 + *(type metadata accessor for TripMeasurementView(0) + 24) + 8) + OBJC_IVAR____TtC4Trip21CardCellConfiguration_dataType) == 1)
  {
    Divider.init()();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v14 = &v9[*(sub_100003090(&qword_10005B808, &unk_1000410B0) + 36)];
    v15 = *(&v62[2] + 7);
    *v14 = *(&v62[1] + 7);
    *(v14 + 1) = v15;
    *(v14 + 2) = *(&v62[3] + 7);
    sub_10001F9A0(v5);
    sub_100008A08(&v5[*(v3 + 24)], &v60);
    sub_1000086B4(v5);
    v16 = *&v61[8];
    v17 = *&v61[16];
    sub_100008A6C(&v60, *&v61[8]);
    v18 = (*(v17 + 216))(v16, v17);
    v19 = static Edge.Set.all.getter();
    v20 = &v9[*(v6 + 36)];
    *v20 = v18;
    v20[8] = v19;
    sub_1000085F8(&v60);
    v21 = v40;
    sub_100008944(v9, v40, &qword_10005B7E0, &qword_100041088);
    (*(v7 + 56))(v21, 0, 1, v6);
  }

  else
  {
    (*(v7 + 56))(v40, 1, 1, v6);
  }

  v37 = static VerticalAlignment.center.getter();
  v42 = 1;
  sub_100023328(a1, &v60);
  v53 = *&v61[144];
  v54 = *&v61[160];
  v55 = *&v61[176];
  v56 = *&v61[192];
  v49 = *&v61[80];
  v50 = *&v61[96];
  v51 = *&v61[112];
  v52 = *&v61[128];
  v45 = *&v61[16];
  v46 = *&v61[32];
  v47 = *&v61[48];
  v48 = *&v61[64];
  v43 = v60;
  v44 = *v61;
  v57[10] = *&v61[144];
  v57[11] = *&v61[160];
  v57[12] = *&v61[176];
  v57[13] = *&v61[192];
  v57[6] = *&v61[80];
  v57[7] = *&v61[96];
  v57[8] = *&v61[112];
  v57[9] = *&v61[128];
  v57[2] = *&v61[16];
  v57[3] = *&v61[32];
  v57[4] = *&v61[48];
  v57[5] = *&v61[64];
  v57[0] = v60;
  v57[1] = *v61;
  sub_100008DD0(&v43, &v58, &qword_10005B848, &qword_1000411A0);
  sub_1000038DC(v57, &qword_10005B848, &qword_1000411A0);
  *&v41[167] = v53;
  *&v41[183] = v54;
  *&v41[199] = v55;
  *&v41[215] = v56;
  *&v41[103] = v49;
  *&v41[119] = v50;
  *&v41[135] = v51;
  *&v41[151] = v52;
  *&v41[39] = v45;
  *&v41[55] = v46;
  *&v41[71] = v47;
  *&v41[87] = v48;
  *&v41[7] = v43;
  *&v41[23] = v44;
  v22 = v42;
  v24 = v39;
  v23 = v40;
  sub_100008DD0(v40, v39, &qword_10005B7E8, &qword_100041090);
  v25 = v38;
  sub_100008DD0(v24, v38, &qword_10005B7E8, &qword_100041090);
  v26 = *(sub_100003090(&qword_10005B850, &qword_1000411A8) + 48);
  *&v59[177] = *&v41[176];
  *&v59[193] = *&v41[192];
  *&v59[209] = *&v41[208];
  *&v59[113] = *&v41[112];
  *&v59[129] = *&v41[128];
  *&v59[145] = *&v41[144];
  *&v59[161] = *&v41[160];
  *&v59[49] = *&v41[48];
  *&v59[65] = *&v41[64];
  *&v59[81] = *&v41[80];
  *&v59[97] = *&v41[96];
  *&v59[17] = *&v41[16];
  v27 = v25 + v26;
  v28 = v37;
  v58 = v37;
  v59[0] = v22;
  *&v59[224] = *&v41[223];
  *&v59[33] = *&v41[32];
  *&v59[1] = *v41;
  v29 = *&v59[192];
  *(v27 + 192) = *&v59[176];
  *(v27 + 208) = v29;
  *(v27 + 224) = *&v59[208];
  *(v27 + 240) = *&v59[224];
  v30 = *&v59[128];
  *(v27 + 128) = *&v59[112];
  *(v27 + 144) = v30;
  v31 = *&v59[160];
  *(v27 + 160) = *&v59[144];
  *(v27 + 176) = v31;
  v32 = *&v59[64];
  *(v27 + 64) = *&v59[48];
  *(v27 + 80) = v32;
  v33 = *&v59[96];
  *(v27 + 96) = *&v59[80];
  *(v27 + 112) = v33;
  v34 = *v59;
  *v27 = v58;
  *(v27 + 16) = v34;
  v35 = *&v59[32];
  *(v27 + 32) = *&v59[16];
  *(v27 + 48) = v35;
  sub_100008DD0(&v58, &v60, &qword_10005B858, &unk_1000411B0);
  sub_1000038DC(v23, &qword_10005B7E8, &qword_100041090);
  *&v61[177] = *&v41[176];
  *&v61[193] = *&v41[192];
  v62[0] = *&v41[208];
  *&v61[113] = *&v41[112];
  *&v61[129] = *&v41[128];
  *&v61[145] = *&v41[144];
  *&v61[161] = *&v41[160];
  *&v61[49] = *&v41[48];
  *&v61[65] = *&v41[64];
  *&v61[81] = *&v41[80];
  *&v61[97] = *&v41[96];
  *&v61[1] = *v41;
  *&v61[17] = *&v41[16];
  v60 = v28;
  v61[0] = v22;
  *(v62 + 15) = *&v41[223];
  *&v61[33] = *&v41[32];
  sub_1000038DC(&v60, &qword_10005B858, &unk_1000411B0);
  return sub_1000038DC(v24, &qword_10005B7E8, &qword_100041090);
}

uint64_t sub_100023328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100003090(&qword_10005A870, &qword_100040B80);
  __chkstk_darwin(v4 - 8);
  v6 = &v69[-v5];
  v7 = type metadata accessor for LayoutConfiguration(0);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v69[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v81 = *(a1 + *(type metadata accessor for TripMeasurementView(0) + 24) + 8);

  v84 = Image.init(automakerSymbolName:)();
  sub_10001F9A0(v10);
  sub_100008A08(&v10[*(v8 + 32)], &v103);
  sub_1000086B4(v10);
  v11 = v106;
  v12 = v107;
  sub_100008A6C(&v103, v106);
  (*(v12 + 104))(v11, v12);
  v13 = type metadata accessor for Font.Design();
  (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  v83 = static Font.system(size:weight:design:)();
  sub_1000038DC(v6, &qword_10005A870, &qword_100040B80);
  sub_1000085F8(&v103);
  KeyPath = swift_getKeyPath();
  v87 = static Edge.Set.trailing.getter();
  LOBYTE(v97) = 1;
  sub_10001F9A0(v10);
  v14 = v8;
  sub_100008A08(&v10[*(v8 + 32)], &v103);
  sub_1000086B4(v10);
  v15 = v106;
  v16 = v107;
  sub_100008A6C(&v103, v106);
  v86 = (*(v16 + 96))(v15, v16);
  v85 = swift_getKeyPath();
  sub_1000085F8(&v103);
  v80 = a1;
  sub_10001F9A0(v10);
  v17 = *(v14 + 32);
  v79 = v14;
  sub_100008A08(&v10[v17], &v103);
  sub_1000086B4(v10);
  v18 = v106;
  v19 = v107;
  sub_100008A6C(&v103, v106);
  (*(v19 + 88))(v18, v19);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  sub_1000085F8(&v103);
  v20 = *(v81 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_subtitle + 8);
  v103 = *(v81 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_subtitle);
  v104 = v20;
  v74 = sub_1000089B4();

  v21 = Text.init<A>(_:)();
  v23 = v22;
  LOBYTE(v19) = v24;
  sub_10001F9A0(v10);
  sub_100008A08(&v10[*(v14 + 32)], &v103);
  sub_1000086B4(v10);
  v25 = v106;
  v26 = v107;
  sub_100008A6C(&v103, v106);
  (*(v26 + 144))(v25, v26);
  v27 = Text.font(_:)();
  v72 = v28;
  v73 = v27;
  v70 = v29;
  v71 = v30;
  sub_100008AB0(v21, v23, v19 & 1);

  sub_1000085F8(&v103);
  sub_10001F9A0(v10);
  v31 = v79;
  sub_100008A08(&v10[*(v79 + 32)], &v103);
  sub_1000086B4(v10);
  v32 = v106;
  v33 = v107;
  sub_100008A6C(&v103, v106);
  (*(v33 + 168))(v32, v33);
  LOBYTE(v12) = v70;
  v35 = v72;
  v34 = v73;
  v36 = Text.foregroundColor(_:)();
  v76 = v37;
  v77 = v36;
  v75 = v38;
  v78 = v39;
  sub_100008AB0(v34, v35, v12 & 1);

  sub_1000085F8(&v103);
  v40 = *(v81 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_title + 8);
  v103 = *(v81 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_title);
  v104 = v40;

  v41 = Text.init<A>(_:)();
  v43 = v42;
  LOBYTE(v35) = v44;
  sub_10001F9A0(v10);
  sub_100008A08(&v10[*(v31 + 32)], &v103);
  sub_1000086B4(v10);
  v45 = v106;
  v46 = v107;
  sub_100008A6C(&v103, v106);
  (*(v46 + 192))(v45, v46);
  v81 = Text.font(_:)();
  v48 = v47;
  LOBYTE(v46) = v49;
  v74 = v50;
  sub_100008AB0(v41, v43, v35 & 1);

  sub_1000085F8(&v103);
  sub_10001F9A0(v10);
  sub_100008A08(&v10[*(v79 + 32)], &v103);
  sub_1000086B4(v10);
  v51 = v106;
  v52 = v107;
  sub_100008A6C(&v103, v106);
  (*(v52 + 216))(v51, v52);
  v53 = v81;
  v54 = Text.foregroundColor(_:)();
  v56 = v55;
  LODWORD(v80) = v57;
  v59 = v58;
  sub_100008AB0(v53, v48, v46 & 1);

  sub_1000085F8(&v103);
  LOBYTE(v43) = v75 & 1;
  v91 = v75 & 1;
  *&v97 = v84;
  *(&v97 + 1) = KeyPath;
  *&v98 = v83;
  BYTE8(v98) = v87;
  *(&v98 + 9) = *v92;
  HIDWORD(v98) = *&v92[3];
  v99 = 0u;
  v100 = 0u;
  LOBYTE(v101) = 1;
  DWORD1(v101) = *&v93[3];
  *(&v101 + 1) = *v93;
  *(&v101 + 1) = v85;
  *v102 = v86;
  *&v102[40] = v96;
  *&v102[24] = v95;
  *&v102[8] = v94;
  v90 = v75 & 1;
  v89 = 1;
  LOBYTE(v53) = v80 & 1;
  v88 = v80 & 1;
  v60 = v97;
  v61 = v98;
  v62 = v101;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = v60;
  *(a2 + 16) = v61;
  v63 = *v102;
  v64 = *&v102[32];
  v65 = *&v102[48];
  *(a2 + 96) = *&v102[16];
  *(a2 + 112) = v64;
  *(a2 + 64) = v62;
  *(a2 + 80) = v63;
  v67 = v76;
  v66 = v77;
  *(a2 + 128) = v65;
  *(a2 + 136) = v66;
  *(a2 + 144) = v67;
  *(a2 + 152) = v43;
  *(a2 + 160) = v78;
  *(a2 + 168) = 0x3FF0000000000000;
  *(a2 + 176) = 0;
  *(a2 + 184) = 1;
  *(a2 + 192) = v54;
  *(a2 + 200) = v56;
  *(a2 + 208) = v53;
  *(a2 + 216) = v59;
  sub_100008DD0(&v97, &v103, &qword_10005B810, &qword_100041120);
  sub_100025318(v66, v67, v43);

  sub_100025318(v54, v56, v53);

  sub_100008AB0(v54, v56, v53);

  sub_100008AB0(v66, v67, v91);

  v103 = v84;
  v104 = KeyPath;
  v105 = v83;
  LOBYTE(v106) = v87;
  *(&v106 + 1) = *v92;
  HIDWORD(v106) = *&v92[3];
  v107 = 0u;
  v108 = 0u;
  v109 = 1;
  *v110 = *v93;
  *&v110[3] = *&v93[3];
  v111 = v85;
  v112 = v86;
  v115 = v96;
  v114 = v95;
  v113 = v94;
  return sub_1000038DC(&v103, &qword_10005B810, &qword_100041120);
}

uint64_t sub_100023B7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = sub_100003090(&qword_10005B820, &qword_100041130);
  v40 = *(v3 - 8);
  v41 = v3;
  __chkstk_darwin(v3);
  v5 = &v39 - v4;
  v6 = type metadata accessor for LayoutConfiguration(0);
  __chkstk_darwin(v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_100003090(&qword_10005B7E0, &qword_100041088);
  v9 = __chkstk_darwin(v39);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v39 - v12;
  v14 = sub_100003090(&qword_10005B828, &qword_100041138);
  v15 = __chkstk_darwin(v14 - 8);
  v42 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v39 - v17;
  v19 = *(type metadata accessor for TripMeasurementView(0) + 24);
  v44 = a1;
  if (*(*(a1 + v19 + 8) + OBJC_IVAR____TtC4Trip21CardCellConfiguration_dataType) == 1)
  {
    Divider.init()();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v20 = &v13[*(sub_100003090(&qword_10005B808, &unk_1000410B0) + 36)];
    v21 = v59;
    *v20 = v58;
    *(v20 + 1) = v21;
    *(v20 + 2) = v60;
    sub_10001F9A0(v8);
    sub_100008A08(&v8[*(v6 + 24)], &v55);
    sub_1000086B4(v8);
    v22 = *&v56[8];
    v23 = *&v56[16];
    sub_100008A6C(&v55, *&v56[8]);
    v24 = (*(v23 + 216))(v22, v23);
    v25 = static Edge.Set.all.getter();
    v26 = &v13[*(v39 + 36)];
    *v26 = v24;
    v26[8] = v25;
    sub_1000085F8(&v55);
    sub_100008DD0(v13, v11, &qword_10005B7E0, &qword_100041088);
    *v5 = 0;
    v5[8] = 1;
    v27 = sub_100003090(&qword_10005B840, &qword_100041150);
    sub_100008DD0(v11, &v5[*(v27 + 48)], &qword_10005B7E0, &qword_100041088);
    sub_1000038DC(v13, &qword_10005B7E0, &qword_100041088);
    sub_1000038DC(v11, &qword_10005B7E0, &qword_100041088);
    sub_100008944(v5, v18, &qword_10005B820, &qword_100041130);
    (*(v40 + 56))(v18, 0, 1, v41);
  }

  else
  {
    (*(v40 + 56))(v18, 1, 1, v41);
  }

  v28 = static VerticalAlignment.center.getter();
  v46 = 1;
  sub_100024130(v44, &v55);
  v49 = *&v56[16];
  v50 = *&v56[32];
  v47 = v55;
  v48 = *v56;
  v52[2] = *&v56[16];
  v52[3] = *&v56[32];
  v52[4] = *&v56[48];
  v52[1] = *v56;
  v51 = *&v56[48];
  v52[0] = v55;
  sub_100008DD0(&v47, v53, &qword_10005B860, &qword_1000411C0);
  sub_1000038DC(v52, &qword_10005B860, &qword_1000411C0);
  *&v45[23] = v48;
  *&v45[39] = v49;
  *&v45[55] = v50;
  *&v45[71] = v51;
  *&v45[7] = v47;
  v29 = v46;
  v30 = v42;
  sub_100008DD0(v18, v42, &qword_10005B828, &qword_100041138);
  v31 = v43;
  sub_100008DD0(v30, v43, &qword_10005B828, &qword_100041138);
  v32 = v31 + *(sub_100003090(&qword_10005B868, &qword_1000411C8) + 48);
  v53[0] = v28;
  v53[1] = 0;
  v54[0] = v29;
  *&v54[1] = *v45;
  *&v54[17] = *&v45[16];
  *&v54[65] = *&v45[64];
  *&v54[80] = *&v45[79];
  *&v54[49] = *&v45[48];
  *&v54[33] = *&v45[32];
  v33 = *v54;
  *v32 = v28;
  *(v32 + 16) = v33;
  v34 = *&v54[16];
  v35 = *&v54[32];
  v36 = *&v54[48];
  v37 = *&v54[64];
  *(v32 + 96) = *&v54[80];
  *(v32 + 64) = v36;
  *(v32 + 80) = v37;
  *(v32 + 32) = v34;
  *(v32 + 48) = v35;
  sub_100008DD0(v53, &v55, &qword_10005B870, &qword_1000411D0);
  sub_1000038DC(v18, &qword_10005B828, &qword_100041138);
  *&v56[33] = *&v45[32];
  *&v56[49] = *&v45[48];
  *v57 = *&v45[64];
  *&v56[1] = *v45;
  v55 = v28;
  v56[0] = v29;
  *&v57[15] = *&v45[79];
  *&v56[17] = *&v45[16];
  sub_1000038DC(&v55, &qword_10005B870, &qword_1000411D0);
  return sub_1000038DC(v30, &qword_10005B828, &qword_100041138);
}

uint64_t sub_100024130@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v59 = a2;
  v3 = type metadata accessor for LayoutConfiguration(0) - 8;
  v60 = v3;
  __chkstk_darwin(v3);
  v5 = v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = *(a1 + *(type metadata accessor for TripMeasurementView(0) + 24) + 8);
  v6 = *(v54 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_subtitle + 8);
  v64 = *(v54 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_subtitle);
  v65 = v6;
  v53[3] = sub_1000089B4();

  v7 = Text.init<A>(_:)();
  v9 = v8;
  LOBYTE(v6) = v10;
  v53[2] = a1;
  sub_10001F9A0(v5);
  sub_100008A08(v5 + *(v3 + 32), &v64);
  sub_1000086B4(v5);
  v11 = v66;
  v12 = v67;
  sub_100008A6C(&v64, v66);
  (*(v12 + 144))(v11, v12);
  v13 = Text.font(_:)();
  v15 = v14;
  v17 = v16;
  v53[1] = v18;
  sub_100008AB0(v7, v9, v6 & 1);

  sub_1000085F8(&v64);
  sub_10001F9A0(v5);
  v19 = v60;
  sub_100008A08(v5 + *(v60 + 32), &v64);
  sub_1000086B4(v5);
  v20 = v66;
  v21 = v67;
  sub_100008A6C(&v64, v66);
  (*(v21 + 168))(v20, v21);
  v22 = Text.foregroundColor(_:)();
  v57 = v23;
  v58 = v22;
  v56 = v24;
  v55 = v25;
  sub_100008AB0(v13, v15, v17 & 1);

  sub_1000085F8(&v64);
  v26 = *(v54 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_title + 8);
  v64 = *(v54 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_title);
  v65 = v26;

  v27 = Text.init<A>(_:)();
  v29 = v28;
  LOBYTE(v9) = v30;
  sub_10001F9A0(v5);
  sub_100008A08(v5 + *(v19 + 32), &v64);
  sub_1000086B4(v5);
  v31 = v66;
  v32 = v67;
  sub_100008A6C(&v64, v66);
  (*(v32 + 192))(v31, v32);
  v33 = Text.font(_:)();
  v35 = v34;
  LOBYTE(v19) = v36;
  v54 = v37;
  sub_100008AB0(v27, v29, v9 & 1);

  sub_1000085F8(&v64);
  sub_10001F9A0(v5);
  sub_100008A08(v5 + *(v60 + 32), &v64);
  sub_1000086B4(v5);
  v38 = v66;
  v39 = v67;
  sub_100008A6C(&v64, v66);
  (*(v39 + 216))(v38, v39);
  v40 = Text.foregroundColor(_:)();
  v42 = v41;
  LOBYTE(v5) = v43;
  v45 = v44;
  sub_100008AB0(v33, v35, v19 & 1);

  sub_1000085F8(&v64);
  v46 = v55 & 1;
  LOBYTE(v64) = v55 & 1;
  v63 = v55 & 1;
  v62 = 1;
  LOBYTE(v38) = v5 & 1;
  v61 = v5 & 1;
  v47 = v5 & 1;
  v49 = v58;
  v48 = v59;
  v51 = v56;
  v50 = v57;
  *v59 = v58;
  v48[1] = v51;
  *(v48 + 16) = v46;
  v48[3] = v50;
  v48[4] = 0;
  *(v48 + 40) = 1;
  v48[6] = v40;
  v48[7] = v42;
  *(v48 + 64) = v47;
  v48[9] = v45;
  sub_100025318(v49, v51, v46);

  sub_100025318(v40, v42, v38);

  sub_100008AB0(v40, v42, v38);

  sub_100008AB0(v49, v51, v64);
}

uint64_t sub_1000245C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v3 = sub_100003090(&qword_10005A870, &qword_100040B80);
  __chkstk_darwin(v3 - 8);
  v5 = v71 - v4;
  v6 = type metadata accessor for LayoutConfiguration(0);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = *(a1 + *(type metadata accessor for TripMeasurementView(0) + 24) + 8);

  v84 = Image.init(systemName:)();
  sub_10001F9A0(v9);
  sub_100008A08(&v9[*(v7 + 32)], &v103);
  sub_1000086B4(v9);
  v10 = v106;
  v11 = v107;
  sub_100008A6C(&v103, v106);
  (*(v11 + 272))(v10, v11);
  v12 = type metadata accessor for Font.Design();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  v83 = static Font.system(size:weight:design:)();
  sub_1000038DC(v5, &qword_10005A870, &qword_100040B80);
  sub_1000085F8(&v103);
  KeyPath = swift_getKeyPath();
  v87 = static Edge.Set.trailing.getter();
  LOBYTE(v97) = 1;
  v13 = a1;
  sub_10001F9A0(v9);
  v14 = v7;
  sub_100008A08(&v9[*(v7 + 32)], &v103);
  sub_1000086B4(v9);
  v15 = v106;
  v16 = v107;
  sub_100008A6C(&v103, v106);
  v86 = (*(v16 + 96))(v15, v16);
  v85 = swift_getKeyPath();
  sub_1000085F8(&v103);
  sub_10001F9A0(v9);
  v17 = *(v14 + 32);
  v81 = v14;
  sub_100008A08(&v9[v17], &v103);
  sub_1000086B4(v9);
  v18 = v106;
  v19 = v107;
  sub_100008A6C(&v103, v106);
  (*(v19 + 88))(v18, v19);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  sub_1000085F8(&v103);
  v20 = *(v82 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_title + 8);
  v103 = *(v82 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_title);
  v104 = v20;
  v75 = sub_1000089B4();

  v21 = Text.init<A>(_:)();
  v23 = v22;
  LOBYTE(v19) = v24;
  v25 = v13;
  sub_10001F9A0(v9);
  sub_100008A08(&v9[*(v14 + 32)], &v103);
  sub_1000086B4(v9);
  v26 = v106;
  v27 = v107;
  sub_100008A6C(&v103, v106);
  (*(v27 + 256))(v26, v27);
  v28 = Text.font(_:)();
  v72 = v29;
  v73 = v28;
  LOBYTE(v27) = v30;
  v71[1] = v31;
  sub_100008AB0(v21, v23, v19 & 1);

  sub_1000085F8(&v103);
  v74 = v25;
  sub_10001F9A0(v9);
  v32 = v81;
  sub_100008A08(&v9[*(v81 + 32)], &v103);
  sub_1000086B4(v9);
  v33 = v106;
  v34 = v107;
  sub_100008A6C(&v103, v106);
  (*(v34 + 168))(v33, v34);
  v36 = v72;
  v35 = v73;
  v37 = Text.foregroundColor(_:)();
  v78 = v38;
  v79 = v37;
  v76 = v39;
  v80 = v40;
  sub_100008AB0(v35, v36, v27 & 1);

  sub_1000085F8(&v103);
  v41 = *(v82 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_subtitle + 8);
  v103 = *(v82 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_subtitle);
  v104 = v41;

  v42 = Text.init<A>(_:)();
  v44 = v43;
  LOBYTE(v36) = v45;
  sub_10001F9A0(v9);
  sub_100008A08(&v9[*(v32 + 32)], &v103);
  sub_1000086B4(v9);
  v46 = v106;
  v47 = v107;
  sub_100008A6C(&v103, v106);
  (*(v47 + 264))(v46, v47);
  v82 = Text.font(_:)();
  v49 = v48;
  LOBYTE(v47) = v50;
  sub_100008AB0(v42, v44, v36 & 1);

  sub_1000085F8(&v103);
  sub_10001F9A0(v9);
  sub_100008A08(&v9[*(v81 + 32)], &v103);
  sub_1000086B4(v9);
  v51 = v106;
  v52 = v107;
  sub_100008A6C(&v103, v106);
  (*(v52 + 216))(v51, v52);
  v53 = v82;
  v54 = Text.foregroundColor(_:)();
  v56 = v55;
  LOBYTE(v36) = v57;
  v59 = v58;
  sub_100008AB0(v53, v49, v47 & 1);

  sub_1000085F8(&v103);
  v60 = swift_getKeyPath();
  LOBYTE(v44) = v76 & 1;
  v91 = v76 & 1;
  *&v97 = v84;
  *(&v97 + 1) = KeyPath;
  *&v98 = v83;
  BYTE8(v98) = v87;
  *(&v98 + 9) = *v92;
  HIDWORD(v98) = *&v92[3];
  v99 = 0u;
  v100 = 0u;
  LOBYTE(v101) = 1;
  *(&v101 + 1) = *v93;
  DWORD1(v101) = *&v93[3];
  *(&v101 + 1) = v85;
  *v102 = v86;
  *&v102[40] = v96;
  *&v102[24] = v95;
  *&v102[8] = v94;
  v90 = v76 & 1;
  LOBYTE(v36) = v36 & 1;
  v89 = v36;
  v61 = v97;
  v62 = v98;
  v63 = v77;
  *(v77 + 32) = 0u;
  *(v63 + 48) = 0u;
  *v63 = v61;
  *(v63 + 16) = v62;
  v64 = v101;
  v65 = *v102;
  v66 = *&v102[32];
  v67 = *&v102[48];
  *(v63 + 96) = *&v102[16];
  *(v63 + 112) = v66;
  *(v63 + 64) = v64;
  *(v63 + 80) = v65;
  v68 = v78;
  v69 = v79;
  *(v63 + 128) = v67;
  *(v63 + 136) = v69;
  *(v63 + 144) = v68;
  *(v63 + 152) = v44;
  *(v63 + 160) = v80;
  *(v63 + 168) = v54;
  *(v63 + 176) = v56;
  *(v63 + 184) = v36;
  *(v63 + 192) = v59;
  *(v63 + 200) = v60;
  *(v63 + 208) = 1;
  sub_100008DD0(&v97, &v103, &qword_10005B810, &qword_100041120);
  sub_100025318(v69, v68, v44);

  sub_100025318(v54, v56, v36);

  sub_100008AB0(v54, v56, v36);

  sub_100008AB0(v69, v68, v91);

  v103 = v84;
  v104 = KeyPath;
  v105 = v83;
  LOBYTE(v106) = v87;
  *(&v106 + 1) = *v92;
  HIDWORD(v106) = *&v92[3];
  v107 = 0u;
  v108 = 0u;
  v109 = 1;
  *v110 = *v93;
  *&v110[3] = *&v93[3];
  v111 = v85;
  v112 = v86;
  v115 = v96;
  v114 = v95;
  v113 = v94;
  return sub_1000038DC(&v103, &qword_10005B810, &qword_100041120);
}

unint64_t sub_100024E80()
{
  result = qword_10005B740;
  if (!qword_10005B740)
  {
    sub_1000036BC(&qword_10005B720, &qword_100041028);
    sub_100024F0C();
    sub_1000250E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B740);
  }

  return result;
}

unint64_t sub_100024F0C()
{
  result = qword_10005B748;
  if (!qword_10005B748)
  {
    sub_1000036BC(&qword_10005B718, &qword_100041020);
    sub_100024F98();
    sub_10002503C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B748);
  }

  return result;
}

unint64_t sub_100024F98()
{
  result = qword_10005B750;
  if (!qword_10005B750)
  {
    sub_1000036BC(&qword_10005B728, &qword_100041030);
    sub_1000252B4(&qword_10005B758, &qword_10005B760, &qword_100041048);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B750);
  }

  return result;
}

unint64_t sub_10002503C()
{
  result = qword_10005B768;
  if (!qword_10005B768)
  {
    sub_1000036BC(&qword_10005B6F8, &qword_100041000);
    sub_1000252B4(&qword_10005B770, &qword_10005B778, &qword_100041050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B768);
  }

  return result;
}

unint64_t sub_1000250E0()
{
  result = qword_10005B780;
  if (!qword_10005B780)
  {
    sub_1000036BC(&qword_10005B6E8, &qword_100040FF0);
    sub_10002516C();
    sub_100025210();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B780);
  }

  return result;
}

unint64_t sub_10002516C()
{
  result = qword_10005B788;
  if (!qword_10005B788)
  {
    sub_1000036BC(&qword_10005B6F0, &qword_100040FF8);
    sub_1000252B4(&qword_10005B790, &qword_10005B798, &qword_100041058);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B788);
  }

  return result;
}

unint64_t sub_100025210()
{
  result = qword_10005B7A0;
  if (!qword_10005B7A0)
  {
    sub_1000036BC(&qword_10005B6D8, &qword_100040FE0);
    sub_1000252B4(&qword_10005B7A8, &qword_10005B7B0, &qword_100041060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B7A0);
  }

  return result;
}

uint64_t sub_1000252B4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000036BC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100025318(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100025330(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100025318(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100025374(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100008AB0(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1000253B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LayoutConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002541C@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

unint64_t sub_100025474()
{
  result = qword_10005B878;
  if (!qword_10005B878)
  {
    sub_1000036BC(&qword_10005B6D0, &qword_100040FD8);
    sub_100025500();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B878);
  }

  return result;
}

unint64_t sub_100025500()
{
  result = qword_10005B880;
  if (!qword_10005B880)
  {
    sub_1000036BC(&qword_10005B6C8, &qword_100040F88);
    sub_100025584();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B880);
  }

  return result;
}

unint64_t sub_100025584()
{
  result = qword_10005B888;
  if (!qword_10005B888)
  {
    sub_1000036BC(&qword_10005B890, &qword_100041208);
    sub_100024E80();
    sub_1000252B4(&qword_10005B7B8, &qword_10005B738, &qword_100041040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B888);
  }

  return result;
}

uint64_t sub_10002563C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003090(&qword_10005A650, &unk_10003FC50);
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_100025724(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100003090(&qword_10005A650, &unk_10003FC50);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t type metadata accessor for TripViewStandard(uint64_t a1)
{
  result = qword_10005B8F0;
  if (!qword_10005B8F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100025834(uint64_t a1)
{
  sub_100003DC4(319);
  if (v1 <= 0x3F)
  {
    sub_100003E1C(319);
    if (v2 <= 0x3F)
    {
      sub_10001104C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1000258F4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003090(&qword_10005A798, &qword_10003FD10);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  sub_100008DD0(v2, &v13 - v9, &qword_10005A798, &qword_10003FD10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_10000ED88(v10, a1, type metadata accessor for LayoutConfiguration);
  }

  static os_log_type_t.fault.getter();
  v12 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

void *sub_100025AD8()
{
  if (*(v0 + *(type metadata accessor for TripViewStandard(0) + 20)))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (v6 >> 62)
    {
      goto LABEL_17;
    }

    v1 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v1)
    {
      while (1)
      {
        v2 = 0;
        while ((v6 & 0xC000000000000001) != 0)
        {
          v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v4 = v2 + 1;
          if (__OFADD__(v2, 1))
          {
LABEL_14:
            __break(1u);
            goto LABEL_18;
          }

LABEL_10:
          if (*(v3 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_dataType))
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          ++v2;
          if (v4 == v1)
          {
            goto LABEL_18;
          }
        }

        if (v2 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_17:
        v1 = _CocoaArrayWrapper.endIndex.getter();
        if (!v1)
        {
          goto LABEL_18;
        }
      }

      v3 = *(v6 + 8 * v2 + 32);

      v4 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        goto LABEL_14;
      }

      goto LABEL_10;
    }

LABEL_18:

    return &_swiftEmptyArrayStorage;
  }

  else
  {
    type metadata accessor for CardModel(0);
    sub_10002A5FC(&qword_10005A6D0, type metadata accessor for CardModel, &unk_10004197C);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100025CF0()
{
  if (*(v0 + *(type metadata accessor for TripViewStandard(0) + 20)))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (v6 >> 62)
    {
      goto LABEL_16;
    }

    v1 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v1)
    {
      while (1)
      {
        v2 = 0;
        while ((v6 & 0xC000000000000001) != 0)
        {
          v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v4 = v2 + 1;
          if (__OFADD__(v2, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

            return v3;
          }

LABEL_8:
          if (*(v3 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_dataType))
          {
            goto LABEL_14;
          }

          ++v2;
          if (v4 == v1)
          {
            goto LABEL_17;
          }
        }

        if (v2 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_16:
        v1 = _CocoaArrayWrapper.endIndex.getter();
        if (!v1)
        {
          goto LABEL_17;
        }
      }

      v3 = *(v6 + 8 * v2 + 32);

      v4 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

LABEL_17:

    return 0;
  }

  else
  {
    type metadata accessor for CardModel(0);
    sub_10002A5FC(&qword_10005A6D0, type metadata accessor for CardModel, &unk_10004197C);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100025EBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TripViewStandard(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = sub_100003090(&qword_10005B930, &qword_100041280);
  __chkstk_darwin(v7);
  v9 = v17 - v8;
  *v9 = static HorizontalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v10 = sub_100003090(&qword_10005B938, &qword_100041288);
  sub_100026128(a2, a1, &v9[*(v10 + 44)]);
  v11 = &v9[*(v7 + 36)];
  *v11 = 0xD000000000000012;
  *(v11 + 1) = 0x8000000100042830;
  GeometryProxy.size.getter();
  v17[0] = v12;
  v17[1] = v13;
  sub_1000294E8(a2, v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  sub_10000ED88(v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for TripViewStandard);
  type metadata accessor for CGSize(0);
  sub_100029630();
  sub_10002A5FC(&qword_10005B958, type metadata accessor for CGSize, &protocol conformance descriptor for CGSize);
  View.onChange<A>(of:initial:_:)();

  return sub_1000038DC(v9, &qword_10005B930, &qword_100041280);
}

uint64_t sub_100026128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v125 = a2;
  v140 = a3;
  v4 = sub_100003090(&qword_10005B960, &qword_100041298);
  v137 = *(v4 - 8);
  v138 = v4;
  __chkstk_darwin(v4);
  v135 = (&v119 - v5);
  v6 = sub_100003090(&qword_10005B968, &qword_1000412A0);
  v7 = __chkstk_darwin(v6 - 8);
  v139 = &v119 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v146 = &v119 - v9;
  v132 = sub_100003090(&qword_10005B970, &qword_1000412A8);
  v127 = *(v132 - 8);
  __chkstk_darwin(v132);
  v126 = &v119 - v10;
  v128 = sub_100003090(&qword_10005B978, &qword_1000412B0);
  __chkstk_darwin(v128);
  v130 = &v119 - v11;
  v12 = sub_100003090(&qword_10005B980, &qword_1000412B8);
  v13 = __chkstk_darwin(v12 - 8);
  v122 = &v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v121 = (&v119 - v15);
  v129 = sub_100003090(&qword_10005B988, &qword_1000412C0);
  __chkstk_darwin(v129);
  v123 = (&v119 - v16);
  v144 = sub_100003090(&qword_10005B990, &qword_1000412C8);
  __chkstk_darwin(v144);
  v131 = &v119 - v17;
  v141 = sub_100003090(&qword_10005B998, &qword_1000412D0);
  __chkstk_darwin(v141);
  v143 = &v119 - v18;
  v142 = sub_100003090(&qword_10005B9A0, &qword_1000412D8);
  __chkstk_darwin(v142);
  v133 = (&v119 - v19);
  v20 = sub_100003090(&qword_10005B9A8, &qword_1000412E0);
  v21 = __chkstk_darwin(v20 - 8);
  v136 = &v119 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v149 = &v119 - v23;
  v24 = type metadata accessor for CAFUIAppPresentationMode();
  v25 = *(v24 - 8);
  v26 = __chkstk_darwin(v24);
  v28 = &v119 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v26);
  v31 = &v119 - v30;
  __chkstk_darwin(v29);
  v33 = &v119 - v32;
  v134 = type metadata accessor for LayoutConfiguration(0);
  v34 = __chkstk_darwin(v134);
  v147 = &v119 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v37 = &v119 - v36;
  v148 = a1;
  sub_1000258F4(&v119 - v36);
  v145 = *(v25 + 16);
  v145(v33, v37, v24);
  v38 = (*(v25 + 88))(v33, v24);
  if (v38 == enum case for CAFUIAppPresentationMode.console(_:))
  {
    sub_1000086B4(v37);
    v39 = enum case for CAFUIAppPresentationMode.widget(_:);
    v40 = v148;
  }

  else
  {
    v124 = enum case for CAFUIAppPresentationMode.widget(_:);
    if (v38 != enum case for CAFUIAppPresentationMode.clusterDCA(_:) && v38 != enum case for CAFUIAppPresentationMode.clusterPopover(_:) && v38 != v124)
    {
      goto LABEL_36;
    }

    sub_1000086B4(v37);
    v41 = type metadata accessor for TripViewStandard(0);
    v40 = v148;
    v42 = *(v148 + *(v41 + 20));
    if (!v42)
    {
      goto LABEL_35;
    }

    if (*(v42 + OBJC_IVAR____TtC4Trip9CardModel_showsTitle))
    {
      v120 = static VerticalAlignment.center.getter();
      v151 = 1;
      sub_1000275B4(v40, &v175);
      v158 = v181;
      v159 = v182;
      v160[0] = v183[0];
      *(v160 + 9) = *(v183 + 9);
      v154 = v177;
      v155 = v178;
      v156 = v179;
      v157 = v180;
      v152 = v175;
      v153 = v176;
      v169 = v181;
      v170 = v182;
      v171[0] = v183[0];
      *(v171 + 9) = *(v183 + 9);
      v165 = v177;
      v166 = v178;
      v167 = v179;
      v168 = v180;
      v163 = v175;
      v164 = v176;
      sub_100008DD0(&v152, &v173, &qword_10005BA18, &qword_100041398);
      v40 = v148;
      sub_1000038DC(&v163, &qword_10005BA18, &qword_100041398);
      *(&v150[3] + 7) = v155;
      *(&v150[2] + 7) = v154;
      *(&v150[6] + 7) = v158;
      *(&v150[7] + 7) = v159;
      *(&v150[8] + 7) = v160[0];
      v150[9] = *(v160 + 9);
      *(&v150[4] + 7) = v156;
      *(&v150[5] + 7) = v157;
      *(v150 + 7) = v152;
      *(&v150[1] + 7) = v153;
      *(&v174[6] + 1) = v150[6];
      *(&v174[7] + 1) = v150[7];
      *(&v174[8] + 1) = v150[8];
      *(&v174[9] + 1) = *(v160 + 9);
      *(&v174[2] + 1) = v150[2];
      *(&v174[3] + 1) = v150[3];
      *(&v174[4] + 1) = v150[4];
      *(&v174[5] + 1) = v150[5];
      *(v174 + 1) = v150[0];
      v173 = v120;
      LOBYTE(v174[0]) = v151;
      *(&v174[1] + 1) = v150[1];
      nullsub_1();
      v183[0] = v174[7];
      v183[1] = v174[8];
      v184 = v174[9];
      v185 = v174[10];
      v179 = v174[3];
      v180 = v174[4];
      v181 = v174[5];
      v182 = v174[6];
      v175 = v173;
      v176 = v174[0];
      v177 = v174[1];
      v178 = v174[2];
      v39 = v124;
      goto LABEL_11;
    }

    v39 = v124;
  }

  sub_100029714(&v175);
LABEL_11:
  v43 = v147;
  sub_1000258F4(v147);
  v145(v31, v43, v24);
  sub_1000086B4(v43);
  (*(v25 + 104))(v28, v39, v24);
  LOBYTE(v43) = static CAFUIAppPresentationMode.== infix(_:_:)();
  v44 = *(v25 + 8);
  v44(v28, v24);
  v44(v31, v24);
  if ((v43 & 1) == 0)
  {
    v49 = type metadata accessor for TripViewStandard(0);
    v50 = *(v40 + *(v49 + 20));
    if (v50)
    {
      if (*(v50 + OBJC_IVAR____TtC4Trip9CardModel_cardLayoutType))
      {
        v51 = sub_100025AD8();
        v52 = v51 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (v52 == 1)
        {
          swift_getKeyPath();
          swift_getKeyPath();

          static Published.subscript.getter();

          v53 = v173;
          if (v173 >> 62)
          {
            if (_CocoaArrayWrapper.endIndex.getter())
            {
              goto LABEL_20;
            }
          }

          else if (*((v173 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_20:
            if ((v53 & 0xC000000000000001) != 0)
            {
              v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              goto LABEL_23;
            }

            if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v54 = *(v53 + 32);

LABEL_23:
              v145 = v54;

              v55 = static VerticalAlignment.center.getter();
              v56 = v123;
              *v123 = v55;
              *(v56 + 8) = 0;
              *(v56 + 16) = 1;
              v57 = v56 + *(sub_100003090(&qword_10005B9F8, &qword_100041378) + 44);
              v58 = static HorizontalAlignment.center.getter();
              v59 = v121;
              *v121 = v58;
              *(v59 + 8) = 0;
              *(v59 + 16) = 1;
              v60 = sub_100003090(&qword_10005BA00, &qword_100041380);
              sub_100028084(v40, (v59 + *(v60 + 44)));
              v61 = v122;
              sub_100008DD0(v59, v122, &qword_10005B980, &qword_1000412B8);
              *v57 = 0;
              *(v57 + 8) = 1;
              v62 = sub_100003090(&qword_10005BA08, &qword_100041388);
              sub_100008DD0(v61, v57 + *(v62 + 48), &qword_10005B980, &qword_1000412B8);
              v63 = v57 + *(v62 + 64);
              *v63 = 0;
              *(v63 + 8) = 1;
              sub_1000038DC(v59, &qword_10005B980, &qword_1000412B8);
              sub_1000038DC(v61, &qword_10005B980, &qword_1000412B8);
              sub_100008DD0(v56, v130, &qword_10005B988, &qword_1000412C0);
              swift_storeEnumTagMultiPayload();
              sub_100003894(&qword_10005B9C0, &qword_10005B988, &qword_1000412C0, &protocol conformance descriptor for HStack<A>);
              sub_100003894(&qword_10005B9C8, &qword_10005B970, &qword_1000412A8, &protocol conformance descriptor for ScrollView<A>);
              v46 = v131;
              _ConditionalContent<>.init(storage:)();

              sub_1000038DC(v56, &qword_10005B988, &qword_1000412C0);
LABEL_28:
              v47 = &qword_10005B990;
              v48 = &qword_1000412C8;
              sub_100008DD0(v46, v143, &qword_10005B990, &qword_1000412C8);
              swift_storeEnumTagMultiPayload();
              goto LABEL_29;
            }

            __break(1u);
            goto LABEL_35;
          }
        }
      }

      __chkstk_darwin(v49);
      static Axis.Set.vertical.getter();
      sub_100003090(&qword_10005B9B0, &qword_1000412E8);
      sub_100003894(&qword_10005B9B8, &qword_10005B9B0, &qword_1000412E8, &protocol conformance descriptor for VStack<A>);
      v64 = v126;
      ScrollView.init(_:showsIndicators:content:)();
      v65 = v127;
      v66 = v132;
      (*(v127 + 16))(v130, v64, v132);
      swift_storeEnumTagMultiPayload();
      sub_100003894(&qword_10005B9C0, &qword_10005B988, &qword_1000412C0, &protocol conformance descriptor for HStack<A>);
      sub_100003894(&qword_10005B9C8, &qword_10005B970, &qword_1000412A8, &protocol conformance descriptor for ScrollView<A>);
      v46 = v131;
      _ConditionalContent<>.init(storage:)();
      (*(v65 + 8))(v64, v66);
      goto LABEL_28;
    }

LABEL_35:
    type metadata accessor for CardModel(0);
    sub_10002A5FC(&qword_10005A6D0, type metadata accessor for CardModel, &unk_10004197C);
    EnvironmentObject.error()();
    __break(1u);
LABEL_36:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v45 = static HorizontalAlignment.leading.getter();
  v46 = v133;
  *v133 = v45;
  *(v46 + 8) = 0;
  *(v46 + 16) = 0;
  sub_100003090(&qword_10005BA10, &qword_100041390);
  sub_100027AA8(v40);
  v47 = &qword_10005B9A0;
  v48 = &qword_1000412D8;
  sub_100008DD0(v46, v143, &qword_10005B9A0, &qword_1000412D8);
  swift_storeEnumTagMultiPayload();
LABEL_29:
  sub_100003894(&qword_10005B9D0, &qword_10005B9A0, &qword_1000412D8, &protocol conformance descriptor for VStack<A>);
  sub_100029740();
  _ConditionalContent<>.init(storage:)();
  sub_1000038DC(v46, v47, v48);
  if (sub_100025CF0())
  {
    v67 = *(v40 + *(type metadata accessor for TripViewStandard(0) + 28));
    KeyPath = swift_getKeyPath();
    v69 = v135;
    *v135 = KeyPath;
    sub_100003090(&qword_10005A798, &qword_10003FD10);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for TripAppConfig(0);
    sub_10002A5FC(&qword_10005A6E0, type metadata accessor for TripAppConfig, &unk_1000424C0);

    v70 = EnvironmentObject.init()();
    v72 = v71;
    v73 = type metadata accessor for TripMeasurementView(0);
    v74 = (v69 + v73[5]);
    *v74 = v70;
    v74[1] = v72;
    v75 = (v69 + v73[6]);
    type metadata accessor for CardCellConfiguration(0);
    sub_10002A5FC(&unk_10005B688, type metadata accessor for CardCellConfiguration, &unk_100041A1C);
    *v75 = ObservedObject.init(wrappedValue:)();
    v75[1] = v76;
    *(v69 + v73[7]) = v67;
    *(v69 + v73[8]) = 0x3FF8000000000000;
    LOBYTE(v75) = static Edge.Set.leading.getter();
    v77 = v147;
    sub_1000258F4(v147);
    v78 = v134;
    sub_100008A08(v77 + *(v134 + 24), &v173);
    sub_1000086B4(v77);
    v79 = *(&v174[0] + 1);
    v80 = *&v174[1];
    sub_100008A6C(&v173, *(&v174[0] + 1));
    (*(v80 + 64))(v79, v80);
    EdgeInsets.init(_all:)();
    v82 = v81;
    v84 = v83;
    v86 = v85;
    v88 = v87;
    v89 = v69 + *(sub_100003090(&qword_10005B9F0, &qword_100041EA0) + 36);
    *v89 = v75;
    *(v89 + 8) = v82;
    *(v89 + 16) = v84;
    *(v89 + 24) = v86;
    *(v89 + 32) = v88;
    *(v89 + 40) = 0;
    sub_1000085F8(&v173);
    LOBYTE(v75) = static Edge.Set.trailing.getter();
    sub_1000258F4(v77);
    sub_100008A08(v77 + *(v78 + 24), &v173);
    sub_1000086B4(v77);
    v90 = *(&v174[0] + 1);
    v91 = *&v174[1];
    sub_100008A6C(&v173, *(&v174[0] + 1));
    (*(v91 + 64))(v90, v91);
    EdgeInsets.init(_all:)();
    v93 = v92;
    v95 = v94;
    v97 = v96;
    v99 = v98;

    v100 = v138;
    v101 = v69 + *(v138 + 36);
    *v101 = v75;
    *(v101 + 8) = v93;
    *(v101 + 16) = v95;
    *(v101 + 24) = v97;
    *(v101 + 32) = v99;
    *(v101 + 40) = 0;
    sub_1000085F8(&v173);
    sub_10002982C(v69, v146);
    v102 = 0;
  }

  else
  {
    v102 = 1;
    v100 = v138;
  }

  v103 = v146;
  (*(v137 + 56))(v146, v102, 1, v100);
  v160[0] = v183[0];
  v160[1] = v183[1];
  v161 = v184;
  v162 = v185;
  v156 = v179;
  v157 = v180;
  v158 = v181;
  v159 = v182;
  v152 = v175;
  v153 = v176;
  v154 = v177;
  v155 = v178;
  v104 = v149;
  v105 = v136;
  sub_100008DD0(v149, v136, &qword_10005B9A8, &qword_1000412E0);
  v106 = v139;
  sub_100008DD0(v103, v139, &qword_10005B968, &qword_1000412A0);
  v107 = v159;
  v171[0] = v160[0];
  v171[1] = v160[1];
  v108 = v160[1];
  v171[2] = v161;
  v109 = v156;
  v110 = v155;
  v167 = v156;
  v168 = v157;
  v111 = v157;
  v112 = v158;
  v169 = v158;
  v170 = v159;
  v163 = v152;
  v164 = v153;
  v114 = v152;
  v113 = v153;
  v115 = v154;
  v165 = v154;
  v166 = v155;
  v116 = v140;
  *(v140 + 128) = v160[0];
  *(v116 + 144) = v108;
  *(v116 + 160) = v161;
  *(v116 + 64) = v109;
  *(v116 + 80) = v111;
  *(v116 + 96) = v112;
  *(v116 + 112) = v107;
  *v116 = v114;
  *(v116 + 16) = v113;
  v172 = v162;
  *(v116 + 176) = v162;
  *(v116 + 32) = v115;
  *(v116 + 48) = v110;
  v117 = sub_100003090(&qword_10005B9E0, &qword_1000412F0);
  sub_100008DD0(v105, v116 + *(v117 + 48), &qword_10005B9A8, &qword_1000412E0);
  sub_100008DD0(v106, v116 + *(v117 + 64), &qword_10005B968, &qword_1000412A0);
  sub_100008DD0(&v163, &v173, &qword_10005B9E8, &qword_1000412F8);
  sub_1000038DC(v103, &qword_10005B968, &qword_1000412A0);
  sub_1000038DC(v104, &qword_10005B9A8, &qword_1000412E0);
  sub_1000038DC(v106, &qword_10005B968, &qword_1000412A0);
  sub_1000038DC(v105, &qword_10005B9A8, &qword_1000412E0);
  v174[7] = v160[0];
  v174[8] = v160[1];
  v174[9] = v161;
  LOBYTE(v174[10]) = v162;
  v174[3] = v156;
  v174[4] = v157;
  v174[5] = v158;
  v174[6] = v159;
  v173 = v152;
  v174[0] = v153;
  v174[1] = v154;
  v174[2] = v155;
  return sub_1000038DC(&v173, &qword_10005B9E8, &qword_1000412F8);
}

uint64_t sub_1000275B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = type metadata accessor for LayoutConfiguration(0);
  __chkstk_darwin(v43);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for TripViewStandard(0);
  if (*(a1 + *(v42 + 20)))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    sub_1000089B4();
    v6 = Text.init<A>(_:)();
    v8 = v7;
    v10 = v9;
    sub_1000258F4(v5);
    sub_100008A08(&v5[*(v43 + 24)], &v54);
    sub_1000086B4(v5);
    v38 = a1;
    v11 = v58;
    v12 = v59;
    sub_100008A6C(&v54, v58);
    (*(v12 + 120))(v11, v12);
    v13 = Text.font(_:)();
    v39 = v14;
    v40 = v13;
    LOBYTE(v11) = v15;
    v41 = v16;
    sub_100008AB0(v6, v8, v10 & 1);

    sub_1000085F8(&v54);
    v17 = v38;
    sub_1000258F4(v5);
    sub_100008A08(&v5[*(v43 + 24)], &v54);
    sub_1000086B4(v5);
    v18 = v58;
    v19 = v59;
    sub_100008A6C(&v54, v58);
    (*(v19 + 8))(v18, v19);
    static Alignment.bottom.getter();
    _FrameLayout.init(width:height:alignment:)();
    v73 = v11 & 1;
    sub_1000085F8(&v54);
    LOBYTE(v11) = v73;
    LOBYTE(v12) = static Edge.Set.bottom.getter();
    v20 = v17 + *(v42 + 24);
    v21 = *v20;
    v22 = *(v20 + 8);
    LOBYTE(v54) = v21;
    v55 = v22;
    sub_100003090(&qword_10005A7A8, &qword_10003FD20);
    State.wrappedValue.getter();
    EdgeInsets.init(_all:)();
    v74 = 0;
    v46 = 1;
    v24 = v39;
    v23 = v40;
    *&v47 = v40;
    *(&v47 + 1) = v39;
    LOBYTE(v48) = v11;
    *(&v48 + 1) = *v72;
    DWORD1(v48) = *&v72[3];
    v25 = v41;
    *(&v48 + 1) = v41;
    v51 = v71;
    v50 = v70;
    v49 = v69;
    LOBYTE(v52) = v12;
    DWORD1(v52) = *(v75 + 3);
    *(&v52 + 1) = v75[0];
    *(&v52 + 1) = v26;
    *&v53[0] = v27;
    *(&v53[0] + 1) = v28;
    *&v53[1] = v29;
    BYTE8(v53[1]) = 0;
    *(&v45[3] + 7) = v70;
    *(&v45[2] + 7) = v69;
    *(&v45[1] + 7) = v48;
    *(v45 + 7) = v47;
    v45[7] = *(v53 + 9);
    *(&v45[6] + 7) = v53[0];
    *(&v45[5] + 7) = v52;
    *(&v45[4] + 7) = v71;
    v44[128] = 1;
    *a2 = 0;
    *(a2 + 8) = 1;
    v30 = v45[0];
    v31 = v45[1];
    v32 = v45[2];
    *(a2 + 57) = v45[3];
    *(a2 + 41) = v32;
    *(a2 + 25) = v31;
    *(a2 + 9) = v30;
    v33 = v45[4];
    v34 = v45[5];
    v35 = v45[6];
    *(a2 + 121) = v45[7];
    *(a2 + 105) = v35;
    *(a2 + 89) = v34;
    *(a2 + 73) = v33;
    *(a2 + 144) = 0;
    *(a2 + 152) = 1;
    v54 = v23;
    v55 = v24;
    v56 = v11;
    *&v57[3] = *&v72[3];
    *v57 = *v72;
    v58 = v25;
    v61 = v71;
    v60 = v70;
    v59 = v69;
    v62 = v12;
    *&v63[3] = *(v75 + 3);
    *v63 = v75[0];
    v64 = v26;
    v65 = v27;
    v66 = v28;
    v67 = v29;
    v68 = 0;
    sub_100008DD0(&v47, v44, &qword_10005BA20, &qword_1000413E8);
    return sub_1000038DC(&v54, &qword_10005BA20, &qword_1000413E8);
  }

  else
  {
    type metadata accessor for CardModel(0);
    sub_10002A5FC(&qword_10005A6D0, type metadata accessor for CardModel, &unk_10004197C);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100027AA8(uint64_t a1)
{
  v2 = type metadata accessor for TripViewStandard(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  if (*(a1 + *(__chkstk_darwin(v2 - 8) + 28)))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    sub_1000294E8(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v6 = swift_allocObject();
    sub_10000ED88(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for TripViewStandard);
    sub_100003090(&qword_10005BA28, &qword_1000413F0);
    type metadata accessor for UUID();
    sub_100003090(&qword_10005B960, &qword_100041298);
    sub_100003894(&qword_10005BA30, &qword_10005BA28, &qword_1000413F0, &protocol conformance descriptor for [A]);
    sub_100029A94();
    sub_10002A5FC(&qword_10005BA50, type metadata accessor for CardCellConfiguration, &unk_100041A54);
    return ForEach<>.init(_:content:)();
  }

  else
  {
    type metadata accessor for CardModel(0);
    sub_10002A5FC(&qword_10005A6D0, type metadata accessor for CardModel, &unk_10004197C);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100027D5C@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = type metadata accessor for LayoutConfiguration(0);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v41[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + *(type metadata accessor for TripViewStandard(0) + 28));
  *a3 = swift_getKeyPath();
  sub_100003090(&qword_10005A798, &qword_10003FD10);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for TripAppConfig(0);
  sub_10002A5FC(&qword_10005A6E0, type metadata accessor for TripAppConfig, &unk_1000424C0);

  v10 = EnvironmentObject.init()();
  v12 = v11;
  v13 = type metadata accessor for TripMeasurementView(0);
  v14 = (a3 + v13[5]);
  *v14 = v10;
  v14[1] = v12;
  v15 = (a3 + v13[6]);
  type metadata accessor for CardCellConfiguration(0);
  sub_10002A5FC(&unk_10005B688, type metadata accessor for CardCellConfiguration, &unk_100041A1C);
  *v15 = ObservedObject.init(wrappedValue:)();
  v15[1] = v16;
  *(a3 + v13[7]) = v9;
  *(a3 + v13[8]) = 0x3FF8000000000000;
  LOBYTE(v10) = static Edge.Set.leading.getter();
  sub_1000258F4(v8);
  sub_100008A08(&v8[*(v6 + 32)], v41);
  sub_1000086B4(v8);
  v17 = v42;
  v18 = v43;
  sub_100008A6C(v41, v42);
  (*(v18 + 64))(v17, v18);
  EdgeInsets.init(_all:)();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = a3 + *(sub_100003090(&qword_10005B9F0, &qword_100041EA0) + 36);
  *v27 = v10;
  *(v27 + 1) = v20;
  *(v27 + 2) = v22;
  *(v27 + 3) = v24;
  *(v27 + 4) = v26;
  v27[40] = 0;
  sub_1000085F8(v41);
  LOBYTE(v10) = static Edge.Set.trailing.getter();
  sub_1000258F4(v8);
  sub_100008A08(&v8[*(v6 + 32)], v41);
  sub_1000086B4(v8);
  v28 = v42;
  v29 = v43;
  sub_100008A6C(v41, v42);
  (*(v29 + 64))(v28, v29);
  EdgeInsets.init(_all:)();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = a3 + *(sub_100003090(&qword_10005B960, &qword_100041298) + 36);
  *v38 = v10;
  *(v38 + 1) = v31;
  *(v38 + 2) = v33;
  *(v38 + 3) = v35;
  *(v38 + 4) = v37;
  v38[40] = 0;
  return sub_1000085F8(v41);
}

uint64_t sub_100028084@<X0>(uint64_t a2@<X1>, void *a3@<X8>)
{
  v47 = a2;
  v48 = a3;
  v4 = type metadata accessor for LayoutConfiguration(0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v45[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_100003090(&qword_10005B960, &qword_100041298);
  v9 = v8 - 8;
  v10 = __chkstk_darwin(v8);
  v12 = &v45[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v14 = &v45[-v13];
  v46 = *(a2 + *(type metadata accessor for TripViewStandard(0) + 28));
  *v14 = swift_getKeyPath();
  sub_100003090(&qword_10005A798, &qword_10003FD10);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for TripAppConfig(0);
  sub_10002A5FC(&qword_10005A6E0, type metadata accessor for TripAppConfig, &unk_1000424C0);
  v15 = EnvironmentObject.init()();
  v17 = v16;
  v18 = type metadata accessor for TripMeasurementView(0);
  v19 = (v14 + v18[5]);
  *v19 = v15;
  v19[1] = v17;
  v20 = (v14 + v18[6]);
  type metadata accessor for CardCellConfiguration(0);
  sub_10002A5FC(&unk_10005B688, type metadata accessor for CardCellConfiguration, &unk_100041A1C);

  *v20 = ObservedObject.init(wrappedValue:)();
  v20[1] = v21;
  *(v14 + v18[7]) = v46;
  *(v14 + v18[8]) = 0x3FF8000000000000;
  LOBYTE(v18) = static Edge.Set.leading.getter();
  sub_1000258F4(v7);
  sub_100008A08(&v7[*(v5 + 32)], v49);
  sub_1000086B4(v7);
  v22 = v50;
  v23 = v51;
  sub_100008A6C(v49, v50);
  (*(v23 + 64))(v22, v23);
  EdgeInsets.init(_all:)();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = v14 + *(sub_100003090(&qword_10005B9F0, &qword_100041EA0) + 36);
  *v32 = v18;
  *(v32 + 1) = v25;
  *(v32 + 2) = v27;
  *(v32 + 3) = v29;
  *(v32 + 4) = v31;
  v32[40] = 0;
  sub_1000085F8(v49);
  LOBYTE(v18) = static Edge.Set.trailing.getter();
  sub_1000258F4(v7);
  sub_100008A08(&v7[*(v5 + 32)], v49);
  sub_1000086B4(v7);
  v33 = v50;
  v34 = v51;
  sub_100008A6C(v49, v50);
  (*(v34 + 64))(v33, v34);
  EdgeInsets.init(_all:)();
  v35 = v14 + *(v9 + 44);
  *v35 = v18;
  *(v35 + 1) = v36;
  *(v35 + 2) = v37;
  *(v35 + 3) = v38;
  *(v35 + 4) = v39;
  v35[40] = 0;
  sub_1000085F8(v49);
  sub_100008DD0(v14, v12, &qword_10005B960, &qword_100041298);
  v40 = v48;
  *v48 = 0;
  *(v40 + 8) = 1;
  v41 = v40;
  v42 = sub_100003090(&qword_10005BA58, &qword_1000413F8);
  sub_100008DD0(v12, v41 + *(v42 + 48), &qword_10005B960, &qword_100041298);
  v43 = v41 + *(v42 + 64);
  *v43 = 0;
  *(v43 + 8) = 1;
  sub_1000038DC(v14, &qword_10005B960, &qword_100041298);
  return sub_1000038DC(v12, &qword_10005B960, &qword_100041298);
}

uint64_t sub_100028498@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for GeometryProxy();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = type metadata accessor for TripViewStandard(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a3 = static HorizontalAlignment.leading.getter();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v17[0] = *(sub_100003090(&qword_10005BA60, &qword_100041400) + 44);
  v17[1] = sub_100025AD8();
  sub_1000294E8(a1, v12);
  (*(v7 + 16))(v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = (v11 + *(v7 + 80) + v13) & ~*(v7 + 80);
  v15 = swift_allocObject();
  sub_10000ED88(v12, v15 + v13, type metadata accessor for TripViewStandard);
  (*(v7 + 32))(v15 + v14, v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  sub_100003090(&qword_10005BA28, &qword_1000413F0);
  type metadata accessor for UUID();
  sub_100003090(&qword_10005BA68, &unk_100041408);
  sub_100003894(&qword_10005BA30, &qword_10005BA28, &qword_1000413F0, &protocol conformance descriptor for [A]);
  sub_100029EE4();
  sub_10002A5FC(&qword_10005BA50, type metadata accessor for CardCellConfiguration, &unk_100041A54);
  return ForEach<>.init(_:content:)();
}

uint64_t sub_100028790@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v66 = a3;
  v64 = type metadata accessor for GeometryProxy();
  v60 = *(v64 - 8);
  v65 = *(v60 + 64);
  __chkstk_darwin(v64);
  v63 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TripViewStandard(0);
  v9 = v8 - 8;
  v62 = *(v8 - 8);
  v61 = *(v62 + 64);
  __chkstk_darwin(v8);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LayoutConfiguration(0);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = *(a2 + *(v9 + 36));
  *a4 = swift_getKeyPath();
  sub_100003090(&qword_10005A798, &qword_10003FD10);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for TripAppConfig(0);
  sub_10002A5FC(&qword_10005A6E0, type metadata accessor for TripAppConfig, &unk_1000424C0);
  v59 = v16;

  v18 = EnvironmentObject.init()();
  v20 = v19;
  v21 = type metadata accessor for TripMeasurementView(0);
  v22 = (a4 + v21[5]);
  *v22 = v18;
  v22[1] = v20;
  v23 = (a4 + v21[6]);
  type metadata accessor for CardCellConfiguration(0);
  sub_10002A5FC(&unk_10005B688, type metadata accessor for CardCellConfiguration, &unk_100041A1C);
  *v23 = ObservedObject.init(wrappedValue:)();
  v23[1] = v24;
  *(a4 + v21[7]) = v17;
  *(a4 + v21[8]) = 0x3FF8000000000000;
  LOBYTE(v23) = static Edge.Set.leading.getter();
  sub_1000258F4(v15);
  sub_100008A08(&v15[*(v13 + 32)], v67);
  sub_1000086B4(v15);
  v25 = v68;
  v26 = v69;
  sub_100008A6C(v67, v68);
  (*(v26 + 64))(v25, v26);
  EdgeInsets.init(_all:)();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = a4 + *(sub_100003090(&qword_10005B9F0, &qword_100041EA0) + 36);
  *v35 = v23;
  *(v35 + 1) = v28;
  *(v35 + 2) = v30;
  *(v35 + 3) = v32;
  *(v35 + 4) = v34;
  v35[40] = 0;
  sub_1000085F8(v67);
  LOBYTE(v23) = static Edge.Set.trailing.getter();
  sub_1000258F4(v15);
  sub_100008A08(&v15[*(v13 + 32)], v67);
  sub_1000086B4(v15);
  v36 = v68;
  v37 = v69;
  sub_100008A6C(v67, v68);
  (*(v37 + 64))(v36, v37);
  EdgeInsets.init(_all:)();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v46 = a4 + *(sub_100003090(&qword_10005B960, &qword_100041298) + 36);
  *v46 = v23;
  *(v46 + 1) = v39;
  *(v46 + 2) = v41;
  *(v46 + 3) = v43;
  *(v46 + 4) = v45;
  v46[40] = 0;
  sub_1000085F8(v67);
  v58 = static Alignment.center.getter();
  v48 = v47;
  sub_1000294E8(a2, v11);
  v49 = v60;
  v51 = v63;
  v50 = v64;
  (*(v60 + 16))(v63, v66, v64);
  v52 = (*(v62 + 80) + 16) & ~*(v62 + 80);
  v53 = (v61 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = (*(v49 + 80) + v53 + 8) & ~*(v49 + 80);
  v55 = swift_allocObject();
  sub_10000ED88(v11, v55 + v52, type metadata accessor for TripViewStandard);
  *(v55 + v53) = v59;
  (*(v49 + 32))(v55 + v54, v51, v50);
  v56 = (a4 + *(sub_100003090(&qword_10005BA68, &unk_100041408) + 36));
  *v56 = sub_10002A1CC;
  v56[1] = v55;
  v56[2] = v58;
  v56[3] = v48;
}

uint64_t sub_100028CC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v31 = a4;
  v32 = a3;
  v29 = a1;
  v7 = type metadata accessor for GeometryProxy();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v28 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v25 - v11;
  v27 = &v25 - v11;
  v13 = type metadata accessor for TripViewStandard(0);
  v26 = *(v13 - 8);
  v14 = *(v26 + 64);
  __chkstk_darwin(v13 - 8);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = static Color.clear.getter();
  sub_1000294E8(a2, v15);
  v16 = *(v8 + 16);
  v16(v12, v29, v7);
  v16(&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v31, v7);
  v17 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v18 = (v14 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = *(v8 + 80);
  v20 = (v19 + v18 + 8) & ~v19;
  v21 = (v9 + v19 + v20) & ~v19;
  v22 = swift_allocObject();
  sub_10000ED88(v15, v22 + v17, type metadata accessor for TripViewStandard);
  *(v22 + v18) = v32;
  v23 = *(v8 + 32);
  v23(v22 + v20, v27, v7);
  v23(v22 + v21, v28, v7);
  *a5 = v30;
  a5[1] = sub_10002A4F4;
  a5[2] = v22;
  a5[3] = 0;
  a5[4] = 0;
}

uint64_t sub_100028F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37[0] = a3;
  v37[1] = a4;
  v37[2] = a2;
  v5 = type metadata accessor for NamedCoordinateSpace();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CAFUIAppPresentationMode();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v37 - v14;
  v16 = type metadata accessor for LayoutConfiguration(0);
  __chkstk_darwin(v16 - 8);
  v18 = v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000258F4(v18);
  (*(v10 + 16))(v15, v18, v9);
  sub_1000086B4(v18);
  (*(v10 + 104))(v13, enum case for CAFUIAppPresentationMode.console(_:), v9);
  sub_10002A5FC(&qword_10005BA78, &type metadata accessor for CAFUIAppPresentationMode, &protocol conformance descriptor for CAFUIAppPresentationMode);
  v19 = dispatch thunk of static Equatable.== infix(_:_:)();
  v20 = *(v10 + 8);
  v20(v13, v9);
  result = (v20)(v15, v9);
  if ((v19 & 1) == 0)
  {
    v39 = 0xD000000000000012;
    v40 = 0x8000000100042830;
    static CoordinateSpaceProtocol<>.named<A>(_:)();
    GeometryProxy.frame<A>(in:)();
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;
    (*(v6 + 8))(v8, v5);
    v41.origin.x = v23;
    v41.origin.y = v25;
    v41.size.width = v27;
    v41.size.height = v29;
    MaxY = CGRectGetMaxY(v41);
    GeometryProxy.size.getter();
    v32 = v31 < MaxY;
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v39) = v32;

    static Published.subscript.setter();
    v33 = (a1 + *(type metadata accessor for TripViewStandard(0) + 24));
    v34 = *v33;
    v35 = *(v33 + 1);
    LOBYTE(v39) = *v33;
    v40 = v35;
    sub_100003090(&qword_10005A7A8, &qword_10003FD20);
    State.wrappedValue.getter();
    if (v38)
    {
      v36 = 1;
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v36 = v39;
    }

    LOBYTE(v39) = v34;
    v40 = v35;
    v38 = v36;
    return State.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_100029378(uint64_t a1)
{
  type metadata accessor for TripViewStandard(0);
  sub_100003090(&qword_10005A7A8, &qword_10003FD20);
  return State.wrappedValue.setter();
}

uint64_t sub_1000293E8@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_1000294E8(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_10000ED88(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for TripViewStandard);
  *a2 = sub_100029550;
  a2[1] = v7;
  return result;
}

uint64_t sub_1000294E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TripViewStandard(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100029550(uint64_t a1)
{
  v3 = *(type metadata accessor for TripViewStandard(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100025EBC(a1, v4);
}

uint64_t sub_1000295D0()
{
  v1 = *(type metadata accessor for TripViewStandard(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_100029378(v2);
}

unint64_t sub_100029630()
{
  result = qword_10005B940;
  if (!qword_10005B940)
  {
    sub_1000036BC(&qword_10005B930, &qword_100041280);
    sub_100003894(&qword_10005B948, &qword_10005B950, &qword_100041290, &protocol conformance descriptor for VStack<A>);
    sub_100003894(&qword_10005A940, &qword_10005A948, &qword_100040020, &protocol conformance descriptor for _CoordinateSpaceModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B940);
  }

  return result;
}

double sub_100029714(uint64_t a1)
{
  *(a1 + 176) = 0;
  result = 0.0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_100029740()
{
  result = qword_10005B9D8;
  if (!qword_10005B9D8)
  {
    sub_1000036BC(&qword_10005B990, &qword_1000412C8);
    sub_100003894(&qword_10005B9C0, &qword_10005B988, &qword_1000412C0, &protocol conformance descriptor for HStack<A>);
    sub_100003894(&qword_10005B9C8, &qword_10005B970, &qword_1000412A8, &protocol conformance descriptor for ScrollView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B9D8);
  }

  return result;
}

uint64_t sub_10002982C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003090(&qword_10005B960, &qword_100041298);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000298AC()
{
  v1 = *(type metadata accessor for TripViewStandard(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  sub_100003090(&qword_10005A798, &qword_10003FD10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for CAFUIAppPresentationMode();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
    v6 = type metadata accessor for LayoutConfiguration(0);

    sub_1000085F8((v0 + v3 + *(v6 + 24)));
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100029A14@<X0>(uint64_t *a2@<X8>)
{
  v4 = *(type metadata accessor for TripViewStandard(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_100027D5C(v5, a2);
}

unint64_t sub_100029A94()
{
  result = qword_10005BA38;
  if (!qword_10005BA38)
  {
    sub_1000036BC(&qword_10005B960, &qword_100041298);
    sub_100029B20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005BA38);
  }

  return result;
}

unint64_t sub_100029B20()
{
  result = qword_10005BA40;
  if (!qword_10005BA40)
  {
    sub_1000036BC(&qword_10005B9F0, &qword_100041EA0);
    sub_10002A5FC(&qword_10005BA48, type metadata accessor for TripMeasurementView, &unk_100040F34);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005BA40);
  }

  return result;
}

uint64_t sub_100029BDC()
{
  v1 = type metadata accessor for TripViewStandard(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v14 = *(*(v1 - 8) + 64);
  v4 = type metadata accessor for GeometryProxy();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = v0 + v3;
  sub_100003090(&qword_10005A798, &qword_10003FD10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for CAFUIAppPresentationMode();
    (*(*(v9 - 8) + 8))(v0 + v3, v9);
    v10 = type metadata accessor for LayoutConfiguration(0);

    v3 = (v2 + 16) & ~v2;

    sub_1000085F8((v8 + *(v10 + 24)));
  }

  else
  {
  }

  v11 = v2 | v6;
  v12 = (v3 + v14 + v6) & ~v6;

  (*(v5 + 8))(v0 + v12, v4);

  return _swift_deallocObject(v0, v12 + v7, v11 | 7);
}

uint64_t sub_100029E00@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for TripViewStandard(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for GeometryProxy() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_100028790(a1, v2 + v6, v9, a2);
}

unint64_t sub_100029EE4()
{
  result = qword_10005BA70;
  if (!qword_10005BA70)
  {
    sub_1000036BC(&qword_10005BA68, &unk_100041408);
    sub_100029A94();
    sub_100003894(&qword_10005AF20, &qword_10005AF28, &unk_1000406B0, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005BA70);
  }

  return result;
}

uint64_t sub_100029F9C()
{
  v1 = type metadata accessor for TripViewStandard(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v14 = *(*(v1 - 8) + 64);
  v4 = type metadata accessor for GeometryProxy();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = v0 + v3;
  sub_100003090(&qword_10005A798, &qword_10003FD10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for CAFUIAppPresentationMode();
    (*(*(v9 - 8) + 8))(v0 + v3, v9);
    v10 = type metadata accessor for LayoutConfiguration(0);

    v3 = (v2 + 16) & ~v2;

    sub_1000085F8((v8 + *(v10 + 24)));
  }

  else
  {
  }

  v11 = v2 | v6;
  v12 = (((v14 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6;

  (*(v5 + 8))(v0 + v12, v4);

  return _swift_deallocObject(v0, v12 + v7, v11 | 7);
}

uint64_t sub_10002A1CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for TripViewStandard(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for GeometryProxy() - 8);
  v9 = *(v2 + v7);
  v10 = v2 + ((v7 + *(v8 + 80) + 8) & ~*(v8 + 80));

  return sub_100028CC4(a1, v2 + v6, v9, v10, a2);
}

uint64_t sub_10002A2C0()
{
  v1 = *(type metadata accessor for TripViewStandard(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v13 = type metadata accessor for GeometryProxy();
  v5 = *(v13 - 8);
  v6 = *(v5 + 80);
  v14 = *(v5 + 64);
  sub_100003090(&qword_10005A798, &qword_10003FD10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for CAFUIAppPresentationMode();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
    v8 = type metadata accessor for LayoutConfiguration(0);

    sub_1000085F8((v0 + v3 + *(v8 + 24)));
  }

  else
  {
  }

  v9 = (((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6;
  v10 = (v14 + v6 + v9) & ~v6;

  v11 = *(v5 + 8);
  v11(v0 + v9, v13);
  v11(v0 + v10, v13);

  return _swift_deallocObject(v0, v10 + v14, v2 | v6 | 7);
}

uint64_t sub_10002A4F4()
{
  v1 = *(type metadata accessor for TripViewStandard(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(type metadata accessor for GeometryProxy() - 8);
  v5 = *(v4 + 80);
  v6 = (v3 + v5 + 8) & ~v5;
  v7 = *(v0 + v3);
  v8 = v0 + ((*(v4 + 64) + v5 + v6) & ~v5);

  return sub_100028F4C(v0 + v2, v7, v0 + v6, v8);
}

uint64_t sub_10002A5FC(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

id sub_10002A6F4(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for TripAppDelegate();
  return objc_msgSendSuper2(&v4, "dealloc");
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for TripAppDelegate();
  static CommandLine.unsafeArgv.getter();
  static CommandLine.argc.getter();
  static CommandLine.argc.getter();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = NSStringFromClass(ObjCClassFromMetadata);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  LODWORD(v4) = UIApplicationMain(_:_:_:_:)();

  exit(v4);
}

uint64_t sub_10002A7EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003090(&qword_10005A650, &unk_10003FC50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10002A8C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100003090(&qword_10005A650, &unk_10003FC50);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for TripViewPortraitNarrow(uint64_t a1)
{
  result = qword_10005BB78;
  if (!qword_10005BB78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002A9F4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003090(&qword_10005A798, &qword_10003FD10);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  sub_100008DD0(v2, &v13 - v9, &qword_10005A798, &qword_10003FD10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_10002E29C(v10, a1, type metadata accessor for LayoutConfiguration);
  }

  static os_log_type_t.fault.getter();
  v12 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10002ABD8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100003090(&qword_10005A870, &qword_100040B80);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  sub_10002A9F4(a1);
  v5 = a1 + *(type metadata accessor for LayoutConfiguration(0) + 24);
  v6 = *(v5 + 24);
  v7 = *(v5 + 32);
  sub_100008C34(v5, v6);
  (*(v7 + 48))(v6, v7, 92.0);
  v8 = *(v5 + 24);
  v9 = *(v5 + 32);
  sub_100008C34(v5, v8);
  (*(v9 + 72))(v8, v9, 0.0, 4.0, 0.0, 4.0);
  static Font.Weight.bold.getter();
  v10 = type metadata accessor for Font.Design();
  v11 = *(*(v10 - 8) + 56);
  v11(v4, 1, 1, v10);
  v12 = static Font.system(size:weight:design:)();
  sub_1000038DC(v4, &qword_10005A870, &qword_100040B80);
  v13 = *(v5 + 24);
  v14 = *(v5 + 32);
  sub_100008C34(v5, v13);
  (*(v14 + 128))(v12, v13, v14);
  static Font.Weight.semibold.getter();
  v11(v4, 1, 1, v10);
  v15 = static Font.system(size:weight:design:)();
  sub_1000038DC(v4, &qword_10005A870, &qword_100040B80);
  v16 = *(v5 + 24);
  v17 = *(v5 + 32);
  sub_100008C34(v5, v16);
  (*(v17 + 152))(v15, v16, v17);
  static Font.Weight.semibold.getter();
  v11(v4, 1, 1, v10);
  v18 = static Font.system(size:weight:design:)();
  sub_1000038DC(v4, &qword_10005A870, &qword_100040B80);
  v19 = *(v5 + 24);
  v20 = *(v5 + 32);
  sub_100008C34(v5, v19);
  return (*(v20 + 200))(v18, v19, v20);
}

void *sub_10002AEB4()
{
  if (*(v0 + *(type metadata accessor for TripViewPortraitNarrow(0) + 20)))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (v6 >> 62)
    {
      goto LABEL_17;
    }

    v1 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v1)
    {
      while (1)
      {
        v2 = 0;
        while ((v6 & 0xC000000000000001) != 0)
        {
          v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v4 = v2 + 1;
          if (__OFADD__(v2, 1))
          {
LABEL_14:
            __break(1u);
            goto LABEL_18;
          }

LABEL_10:
          if (*(v3 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_dataType))
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          ++v2;
          if (v4 == v1)
          {
            goto LABEL_18;
          }
        }

        if (v2 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_17:
        v1 = _CocoaArrayWrapper.endIndex.getter();
        if (!v1)
        {
          goto LABEL_18;
        }
      }

      v3 = *(v6 + 8 * v2 + 32);

      v4 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        goto LABEL_14;
      }

      goto LABEL_10;
    }

LABEL_18:

    return &_swiftEmptyArrayStorage;
  }

  else
  {
    type metadata accessor for CardModel(0);
    sub_100017F7C(&qword_10005A6D0, type metadata accessor for CardModel, &unk_10004197C);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

void *sub_10002B0CC()
{
  v22 = type metadata accessor for TripViewPortraitNarrow(0);
  v1 = (v0 + v22[10]);
  v2 = *v1;
  v3 = v1[1];
  *&v26[0] = *v1;
  *(&v26[0] + 1) = v3;
  sub_100003090(&qword_10005A860, &qword_100040B30);
  result = State.wrappedValue.getter();
  if (v24 > 0.0)
  {
    v5 = sub_10002AEB4();
    v6 = v5;
    v21 = v0;
    if (v5 >> 62)
    {
      goto LABEL_17;
    }

    v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      while (1)
      {
        v8 = 0;
        while ((v6 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          v9 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:

            return sub_10000323C(v26);
          }

LABEL_8:
          type metadata accessor for CardCellConfiguration(0);
          sub_100017F7C(&qword_10005A868, type metadata accessor for CardCellConfiguration, &unk_1000419B4);

          AnyHashable.init<A>(_:)();
          v25 = *(v0 + v22[8]);
          sub_100003090(&qword_10005A858, &unk_10003FE20);
          State.wrappedValue.getter();
          if (!*(v23 + 16))
          {
            goto LABEL_15;
          }

          v10 = sub_10000E288(v26);
          if ((v11 & 1) == 0)
          {
            goto LABEL_15;
          }

          v12 = *(*(v23 + 56) + 16 * v10 + 8);
          sub_10000323C(v26);

          *&v26[0] = v2;
          *(&v26[0] + 1) = v3;
          State.wrappedValue.getter();
          swift_getKeyPath();
          swift_getKeyPath();
          LOBYTE(v26[0]) = v25 < v12;
          static Published.subscript.setter();
          ++v8;
          if (v9 == v7)
          {
            goto LABEL_18;
          }
        }

        if (v8 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_17:
        v7 = _CocoaArrayWrapper.endIndex.getter();
        if (!v7)
        {
          goto LABEL_18;
        }
      }

      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_14;
      }

      goto LABEL_8;
    }

LABEL_18:

    v13 = sub_10002AEB4();
    v14 = v13;
    v15 = v13 & 0xFFFFFFFFFFFFFF8;
    if (v13 >> 62)
    {
LABEL_35:
      v16 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v16 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v17 = 0;
    v18 = 0;
    while (v16 != v17)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        if (__OFADD__(v17, 1))
        {
LABEL_30:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v17 >= *(v15 + 16))
        {
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        if (__OFADD__(v17, 1))
        {
          goto LABEL_30;
        }
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v19 = (v26[0] & 1) == 0;
      ++v17;
      v20 = __OFADD__(v18, v19);
      v18 += v19;
      if (v20)
      {
        goto LABEL_34;
      }
    }

    v26[0] = *(v21 + v22[9]);
    sub_100003090(&qword_10005A820, &qword_100040A00);
    return State.wrappedValue.setter();
  }

  return result;
}

double sub_10002B4A4@<D0>(uint64_t *a1@<X0>, void (**a2)(char a1)@<X8>)
{
  v66 = a2;
  v60 = type metadata accessor for OpacityTransition();
  v58 = *(v60 - 8);
  __chkstk_darwin(v60);
  v55 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for MoveTransition();
  v54 = *(v57 - 8);
  __chkstk_darwin(v57);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_100003090(&qword_10005A770, &unk_100041510);
  v56 = *(v59 - 8);
  v6 = __chkstk_darwin(v59);
  v53 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v53 - v8;
  v68 = sub_100003090(&qword_10005A778, &unk_10003FCF0);
  v63 = *(v68 - 8);
  __chkstk_darwin(v68);
  v11 = &v53 - v10;
  v12 = sub_100003090(&qword_10005A780, &qword_100041520);
  v13 = __chkstk_darwin(v12 - 8);
  v65 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v67 = &v53 - v15;
  v16 = sub_100003090(&qword_10005BBD8, &unk_100041528);
  v17 = v16 - 8;
  v18 = __chkstk_darwin(v16);
  v64 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v53 - v20;
  v22 = type metadata accessor for TripViewPortraitNarrow(0);
  v23 = v22 - 8;
  v24 = *(v22 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v22);
  sub_10002DEFC(a1, &v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v62 = swift_allocObject();
  sub_10002E29C(&v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v62 + v26, type metadata accessor for TripViewPortraitNarrow);
  *v21 = static HorizontalAlignment.center.getter();
  *(v21 + 1) = 0;
  v21[16] = 0;
  v27 = sub_100003090(&qword_10005BBE0, &unk_100041538);
  sub_10002BE24(a1, &v21[*(v27 + 44)]);
  v28 = static Edge.Set.horizontal.getter();
  v29 = *(v17 + 44);
  v61 = v21;
  v30 = &v21[v29];
  *v30 = v28;
  *(v30 + 8) = 0u;
  *(v30 + 24) = 0u;
  v31 = 1;
  v30[40] = 1;
  v32 = a1 + *(v23 + 32);
  v33 = *v32;
  v34 = *(v32 + 1);
  LOBYTE(v69) = v33;
  v70 = v34;
  sub_100003090(&qword_10005A7A8, &qword_10003FD20);
  State.wrappedValue.getter();
  if (v73 == 1)
  {
    *v11 = static HorizontalAlignment.center.getter();
    *(v11 + 1) = 0;
    v11[16] = 1;
    v35 = sub_100003090(&qword_10005A7B8, &unk_10003FD30);
    sub_10002D798(a1, &v11[*(v35 + 44)]);
    *&v11[*(sub_100003090(&qword_10005A7C0, &unk_100040990) + 36)] = 0x3FF0000000000000;
    MoveTransition.init(edge:)();
    v36 = v55;
    OpacityTransition.init()();
    v37 = sub_100017F7C(&qword_10005A7C8, &type metadata accessor for MoveTransition, &protocol conformance descriptor for MoveTransition);
    v38 = sub_100017F7C(&qword_10005A7D0, &type metadata accessor for OpacityTransition, &protocol conformance descriptor for OpacityTransition);
    v39 = v57;
    v40 = v60;
    Transition.combined<A>(with:)();
    (*(v58 + 8))(v36, v40);
    (*(v54 + 8))(v5, v39);
    v41 = v56;
    v42 = v59;
    (*(v56 + 16))(v53, v9, v59);
    v69 = v39;
    v70 = v40;
    v71 = v37;
    v72 = v38;
    swift_getOpaqueTypeConformance2();
    v43 = AnyTransition.init<A>(_:)();
    (*(v41 + 8))(v9, v42);
    v44 = v67;
    *&v11[*(v68 + 36)] = v43;
    sub_100008944(v11, v44, &qword_10005A778, &unk_10003FCF0);
    v31 = 0;
  }

  v45 = v67;
  (*(v63 + 56))(v67, v31, 1, v68);
  v46 = v61;
  v47 = v64;
  sub_100008DD0(v61, v64, &qword_10005BBD8, &unk_100041528);
  v48 = v65;
  sub_100008DD0(v45, v65, &qword_10005A780, &qword_100041520);
  v49 = v66;
  v50 = v62;
  *v66 = sub_10002DF64;
  v49[1] = v50;
  v51 = sub_100003090(&qword_10005BBE8, &qword_100041548);
  sub_100008DD0(v47, v49 + *(v51 + 48), &qword_10005BBD8, &unk_100041528);
  sub_100008DD0(v48, v49 + *(v51 + 64), &qword_10005A780, &qword_100041520);

  sub_1000038DC(v45, &qword_10005A780, &qword_100041520);
  sub_1000038DC(v46, &qword_10005BBD8, &unk_100041528);
  sub_1000038DC(v48, &qword_10005A780, &qword_100041520);
  sub_1000038DC(v47, &qword_10005BBD8, &unk_100041528);

  return result;
}

void sub_10002BC7C(char a1, uint64_t a2)
{
  if (a1)
  {
    if (a1 == 1)
    {

      sub_100009AD4();
    }

    else
    {

      sub_100009ADC();
    }
  }

  else
  {
    v2 = *(a2 + *(type metadata accessor for TripViewPortraitNarrow(0) + 20));
    if (v2)
    {
      v3 = *(*v2 + 280);

      LOBYTE(v3) = v3(v4);

      if (v3)
      {
        v5 = static Animation.easeInOut(duration:)();
        __chkstk_darwin(v5);
        withAnimation<A>(_:_:)();
      }
    }

    else
    {
      type metadata accessor for CardModel(0);
      sub_100017F7C(&qword_10005A6D0, type metadata accessor for CardModel, &unk_10004197C);
      EnvironmentObject.error()();
      __break(1u);
    }
  }
}

uint64_t sub_10002BE24@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for TripViewPortraitNarrow(0);
  v74 = *(v4 - 8);
  __chkstk_darwin(v4);
  v77 = v5;
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for MeasurementList(0);
  __chkstk_darwin(v65);
  v8 = (&v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v63 = sub_100003090(&qword_10005B318, &unk_1000409B0);
  __chkstk_darwin(v63);
  v67 = &v62 - v9;
  v66 = sub_100003090(&qword_10005B320, &unk_100041550);
  __chkstk_darwin(v66);
  v69 = &v62 - v10;
  v68 = sub_100003090(&qword_10005B328, &unk_1000409C0);
  __chkstk_darwin(v68);
  v72 = &v62 - v11;
  v71 = sub_100003090(&qword_10005B330, &qword_100041560);
  v12 = __chkstk_darwin(v71);
  v76 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v70 = &v62 - v15;
  __chkstk_darwin(v14);
  v75 = &v62 - v16;
  v17 = sub_100003090(&qword_10005BBF0, &qword_100041568);
  v18 = __chkstk_darwin(v17 - 8);
  v73 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v62 - v20;
  *v21 = static VerticalAlignment.top.getter();
  *(v21 + 1) = 0;
  v21[16] = 1;
  v22 = sub_100003090(&qword_10005BBF8, &unk_100041570);
  sub_10002C6DC(a1, &v21[*(v22 + 44)]);
  v23 = sub_10002AEB4();
  v64 = v4;
  v24 = (a1 + *(v4 + 36));
  v25 = *v24;
  v26 = v24[1];
  v79 = *v24;
  v80 = v26;
  sub_100003090(&qword_10005A820, &qword_100040A00);
  v27 = &v79;
  State.wrappedValue.getter();
  if (!v78)
  {
    goto LABEL_4;
  }

  v79 = v25;
  v80 = v26;
  State.wrappedValue.getter();
  v28 = v78;
  if ((v78 & 0x8000000000000000) != 0)
  {
    while (1)
    {
      __break(1u);
LABEL_4:
      v27 = a1;
      v29 = sub_10002AEB4();
      if (!(v29 >> 62))
      {
        break;
      }

      v27 = v29;
      v28 = _CocoaArrayWrapper.endIndex.getter();

      if ((v28 & 0x8000000000000000) == 0)
      {
        goto LABEL_6;
      }
    }

    v28 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

LABEL_6:
  v30 = v23 >> 62;
  if (!(v23 >> 62))
  {
    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v28)
    {
LABEL_8:
      if ((v23 & 0xC000000000000001) != 0 && v28)
      {
        type metadata accessor for CardCellConfiguration(0);

        v31 = 0;
        do
        {
          v32 = v31 + 1;
          _ArrayBuffer._typeCheckSlowPath(_:)(v31);
          v31 = v32;
        }

        while (v28 != v32);
      }

      else
      {
      }

      if (v30)
      {
        v27 = _CocoaArrayWrapper.subscript.getter();
        v30 = v33;
        v26 = v34;
        v28 = v35;

        if (v28)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v26 = 0;
        v27 = (v23 & 0xFFFFFFFFFFFFFF8);
        v30 = (v23 & 0xFFFFFFFFFFFFFF8) + 32;
        v28 = (2 * v28) | 1;
        if (v28)
        {
LABEL_19:
          v62 = v6;
          v6 = a2;
          type metadata accessor for __ContiguousArrayStorageBase();
          swift_unknownObjectRetain_n();
          v38 = swift_dynamicCastClass();
          if (!v38)
          {
            swift_unknownObjectRelease();
            v38 = &_swiftEmptyArrayStorage;
          }

          v39 = v38[2];

          if (!__OFSUB__(v28 >> 1, v26))
          {
            if (v39 == (v28 >> 1) - v26)
            {
              v37 = swift_dynamicCastClass();
              swift_unknownObjectRelease_n();
              a2 = v6;
              v6 = v62;
              if (v37)
              {
LABEL_26:
                v40 = *(a1 + *(v64 + 28));
                *v8 = swift_getKeyPath();
                sub_100003090(&qword_10005A798, &qword_10003FD10);
                swift_storeEnumTagMultiPayload();
                v41 = static Alignment.leading.getter();
                v42 = v65;
                *(v8 + *(v65 + 20)) = v37;
                *(v8 + *(v42 + 24)) = v40;
                v43 = (v8 + *(v42 + 28));
                *v43 = v41;
                v43[1] = v44;
                v45 = v67;
                v46 = &v67[*(v63 + 36)];
                v47 = sub_100003090(&qword_10005A828, &qword_100040A30);
                sub_10002ABD8(v46 + *(v47 + 28));
                *v46 = swift_getKeyPath();
                sub_10002E29C(v8, v45, type metadata accessor for MeasurementList);
                v48 = v69;
                sub_100008944(v45, v69, &qword_10005B318, &unk_1000409B0);
                *(v48 + *(v66 + 36)) = 0;
                sub_10002DEFC(a1, v6);
                v49 = (*(v74 + 80) + 16) & ~*(v74 + 80);
                v50 = swift_allocObject();
                sub_10002E29C(v6, v50 + v49, type metadata accessor for TripViewPortraitNarrow);
                v51 = v48;
                v52 = v72;
                sub_100008944(v51, v72, &qword_10005B320, &unk_100041550);
                v53 = (v52 + *(v68 + 36));
                *v53 = sub_10002E304;
                v53[1] = v50;
                v53[2] = 0;
                v53[3] = 0;
                sub_10002DEFC(a1, v6);
                v54 = swift_allocObject();
                sub_10002E29C(v6, v54 + v49, type metadata accessor for TripViewPortraitNarrow);
                v55 = v70;
                sub_100008944(v52, v70, &qword_10005B328, &unk_1000409C0);
                v56 = (v55 + *(v71 + 36));
                *v56 = sub_10002E364;
                v56[1] = v54;
                v57 = v75;
                sub_100008944(v55, v75, &qword_10005B330, &qword_100041560);
                v58 = v73;
                sub_100008DD0(v21, v73, &qword_10005BBF0, &qword_100041568);
                v59 = v76;
                sub_100008DD0(v57, v76, &qword_10005B330, &qword_100041560);
                sub_100008DD0(v58, a2, &qword_10005BBF0, &qword_100041568);
                v60 = sub_100003090(&qword_10005BC00, &qword_1000415B0);
                sub_100008DD0(v59, &a2[*(v60 + 48)], &qword_10005B330, &qword_100041560);
                sub_1000038DC(v57, &qword_10005B330, &qword_100041560);
                sub_1000038DC(v21, &qword_10005BBF0, &qword_100041568);
                sub_1000038DC(v59, &qword_10005B330, &qword_100041560);
                return sub_1000038DC(v58, &qword_10005BBF0, &qword_100041568);
              }

              v37 = &_swiftEmptyArrayStorage;
LABEL_25:
              swift_unknownObjectRelease();
              goto LABEL_26;
            }

            goto LABEL_34;
          }

LABEL_33:
          __break(1u);
LABEL_34:
          swift_unknownObjectRelease_n();
          a2 = v6;
          v6 = v62;
        }
      }

      sub_10002E060(v27, v30, v26, v28);
      v37 = v36;
      goto LABEL_25;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v23 < 0)
  {
    v27 = v23;
  }

  else
  {
    v27 = (v23 & 0xFFFFFFFFFFFFFF8);
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if ((result & 0x8000000000000000) == 0)
  {
    if (_CocoaArrayWrapper.endIndex.getter() >= v28)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

  __break(1u);
  return result;
}

uint64_t sub_10002C6DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v102 = a2;
  v101 = sub_100003090(&qword_10005BC08, &qword_100041648);
  __chkstk_darwin(v101);
  v4 = &v82 - v3;
  v99 = sub_100003090(&qword_10005BC10, &qword_100041650);
  __chkstk_darwin(v99);
  v100 = &v82 - v5;
  v6 = sub_100003090(&qword_10005BC18, &qword_100041658);
  v96 = *(v6 - 8);
  v97 = v6;
  __chkstk_darwin(v6);
  v94 = &v82 - v7;
  v8 = type metadata accessor for TripViewPortraitNarrow(0);
  v86 = *(v8 - 8);
  __chkstk_darwin(v8);
  v87 = v9;
  v88 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_100003090(&qword_10005BC20, &unk_100041660);
  v10 = __chkstk_darwin(v89);
  v93 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v92 = &v82 - v12;
  v85 = sub_100003090(&qword_10005B388, &qword_100040AD8);
  v13 = __chkstk_darwin(v85);
  v91 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v90 = &v82 - v15;
  v16 = type metadata accessor for CAFUIAppPresentationMode();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for LayoutConfiguration(0);
  v21 = __chkstk_darwin(v20);
  v23 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v82 - v24;
  v26 = sub_100003090(&qword_10005BC28, &qword_100041670);
  v27 = __chkstk_darwin(v26);
  v95 = &v82 - v28;
  v29 = a1;
  v30 = *(a1 + *(v8 + 20));
  if (v30)
  {
    v98 = v27;
    if (*(v30 + OBJC_IVAR____TtC4Trip9CardModel_cardLayoutType))
    {
      *v4 = static VerticalAlignment.center.getter();
      *(v4 + 1) = 0;
      v4[16] = 1;
      v31 = sub_100003090(&qword_10005BC30, &qword_100041678);
      sub_10002D324(v29, &v4[*(v31 + 44)]);
      sub_100008DD0(v4, v100, &qword_10005BC08, &qword_100041648);
      swift_storeEnumTagMultiPayload();
      sub_10002E3E4();
      sub_100003894(&qword_10005BC48, &qword_10005BC08, &qword_100041648, &protocol conformance descriptor for HStack<A>);
      _ConditionalContent<>.init(storage:)();
      v32 = v4;
      v33 = &qword_10005BC08;
      v34 = &qword_100041648;
      return sub_1000038DC(v32, v33, v34);
    }

    sub_10002A9F4(v25);
    (*(v17 + 16))(v19, v25, v16);
    v35 = (*(v17 + 88))(v19, v16);
    if (v35 == enum case for CAFUIAppPresentationMode.console(_:))
    {
      sub_1000086B4(v25);
      goto LABEL_11;
    }

    if (v35 == enum case for CAFUIAppPresentationMode.clusterDCA(_:) || v35 == enum case for CAFUIAppPresentationMode.clusterPopover(_:) || v35 == enum case for CAFUIAppPresentationMode.widget(_:))
    {
      sub_1000086B4(v25);
      if (*(v30 + OBJC_IVAR____TtC4Trip9CardModel_showsTitle) == 1)
      {
        swift_getKeyPath();
        swift_getKeyPath();

        static Published.subscript.getter();

        sub_1000089B4();
        v36 = Text.init<A>(_:)();
        v38 = v37;
        v40 = v39;
        sub_10002A9F4(v23);
        sub_100008A08(&v23[*(v20 + 24)], &v108);
        sub_1000086B4(v23);
        v41 = *(&v109 + 1);
        v42 = v110;
        sub_100008A6C(&v108, *(&v109 + 1));
        (*(v42 + 120))(v41, v42);
        v84 = Text.font(_:)();
        v83 = v43;
        v45 = v44;
        v47 = v46;
        sub_100008AB0(v36, v38, v40 & 1);

        sub_1000085F8(&v108);
        static Alignment.top.getter();
        _FrameLayout.init(width:height:alignment:)();
        v48 = v45 & 1;
        v106 = v45 & 1;
        KeyPath = swift_getKeyPath();
        LOBYTE(v103) = 0;
        v50 = v90;
        v51 = &v90[*(v85 + 36)];
        v52 = *(sub_100003090(&qword_10005A8F0, &qword_100040AE0) + 28);
        v53 = enum case for Text.TruncationMode.tail(_:);
        v54 = type metadata accessor for Text.TruncationMode();
        (*(*(v54 - 8) + 104))(v51 + v52, v53, v54);
        *v51 = swift_getKeyPath();
        v55 = v83;
        *v50 = v84;
        *(v50 + 8) = v55;
        *(v50 + 16) = v48;
        *(v50 + 24) = v47;
        v56 = v109;
        *(v50 + 32) = v108;
        *(v50 + 48) = v56;
        *(v50 + 64) = v110;
        *(v50 + 80) = KeyPath;
        *(v50 + 88) = 2;
        *(v50 + 96) = 0;
        v57 = v29 + *(v8 + 24);
        v58 = *v57;
        v59 = *(v57 + 8);
        v106 = v58;
        v107 = v59;
        sub_100003090(&qword_10005A7A8, &qword_10003FD20);
        State.projectedValue.getter();
        v60 = v103;
        v61 = v104;
        LOBYTE(v52) = v105;
        v62 = v88;
        sub_10002DEFC(v29, v88);
        v63 = (*(v86 + 80) + 16) & ~*(v86 + 80);
        v64 = swift_allocObject();
        sub_10002E29C(v62, v64 + v63, type metadata accessor for TripViewPortraitNarrow);
        v65 = swift_getKeyPath();
        v66 = type metadata accessor for TripActionButton(0);
        v67 = v92;
        *&v92[*(v66 + 20)] = v65;
        sub_100003090(&qword_10005A798, &qword_10003FD10);
        swift_storeEnumTagMultiPayload();
        *v67 = v60;
        *(v67 + 8) = v61;
        *(v67 + 16) = v52;
        v68 = (v67 + *(v66 + 24));
        *v68 = sub_10002E808;
        v68[1] = v64;
        LOBYTE(v64) = static Edge.Set.leading.getter();
        v69 = v67 + *(sub_100003090(&qword_10005A910, &qword_100040A50) + 36);
        *v69 = v64;
        *(v69 + 8) = 0u;
        *(v69 + 24) = 0u;
        *(v69 + 40) = 1;
        LOBYTE(v64) = static Edge.Set.top.getter();
        EdgeInsets.init(_all:)();
        v70 = v67 + *(v89 + 36);
        *v70 = v64;
        *(v70 + 8) = v71;
        *(v70 + 16) = v72;
        *(v70 + 24) = v73;
        *(v70 + 32) = v74;
        *(v70 + 40) = 0;
        v75 = v91;
        sub_100008DD0(v50, v91, &qword_10005B388, &qword_100040AD8);
        v76 = v93;
        sub_100008DD0(v67, v93, &qword_10005BC20, &unk_100041660);
        v77 = v94;
        sub_100008DD0(v75, v94, &qword_10005B388, &qword_100040AD8);
        v78 = sub_100003090(&qword_10005BC50, &unk_100041738);
        v79 = v77 + *(v78 + 48);
        *v79 = 0;
        *(v79 + 8) = 1;
        sub_100008DD0(v76, v77 + *(v78 + 64), &qword_10005BC20, &unk_100041660);
        sub_1000038DC(v67, &qword_10005BC20, &unk_100041660);
        sub_1000038DC(v50, &qword_10005B388, &qword_100040AD8);
        sub_1000038DC(v76, &qword_10005BC20, &unk_100041660);
        sub_1000038DC(v75, &qword_10005B388, &qword_100040AD8);
        v80 = v95;
        sub_100008944(v77, v95, &qword_10005BC18, &qword_100041658);
        (*(v96 + 56))(v80, 0, 1, v97);
LABEL_12:
        sub_100008DD0(v80, v100, &qword_10005BC28, &qword_100041670);
        swift_storeEnumTagMultiPayload();
        sub_10002E3E4();
        sub_100003894(&qword_10005BC48, &qword_10005BC08, &qword_100041648, &protocol conformance descriptor for HStack<A>);
        _ConditionalContent<>.init(storage:)();
        v32 = v80;
        v33 = &qword_10005BC28;
        v34 = &qword_100041670;
        return sub_1000038DC(v32, v33, v34);
      }

LABEL_11:
      v80 = v95;
      (*(v96 + 56))(v95, 1, 1, v97);
      goto LABEL_12;
    }
  }

  else
  {
    type metadata accessor for CardModel(0);
    sub_100017F7C(&qword_10005A6D0, type metadata accessor for CardModel, &unk_10004197C);
    EnvironmentObject.error()();
    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10002D324@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v35 = a2;
  v3 = type metadata accessor for TripViewPortraitNarrow(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  v7 = sub_100003090(&qword_10005A910, &qword_100040A50);
  v8 = v7 - 8;
  v9 = __chkstk_darwin(v7);
  v11 = &v33[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v33[-v12];
  v14 = (a1 + *(v4 + 32));
  v15 = *v14;
  v16 = *(v14 + 1);
  v39 = v15;
  v40 = v16;
  sub_100003090(&qword_10005A7A8, &qword_10003FD20);
  State.projectedValue.getter();
  v18 = v36;
  v17 = v37;
  v34 = v38;
  sub_10002DEFC(a1, &v33[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v19 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v20 = swift_allocObject();
  sub_10002E29C(&v33[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v20 + v19, type metadata accessor for TripViewPortraitNarrow);
  KeyPath = swift_getKeyPath();
  v22 = type metadata accessor for TripActionButton(0);
  *&v13[*(v22 + 20)] = KeyPath;
  sub_100003090(&qword_10005A798, &qword_10003FD10);
  swift_storeEnumTagMultiPayload();
  *v13 = v18;
  *(v13 + 1) = v17;
  v13[16] = v34;
  v23 = &v13[*(v22 + 24)];
  *v23 = sub_10002E6C8;
  v23[1] = v20;
  LOBYTE(v20) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v24 = &v13[*(v8 + 44)];
  *v24 = v20;
  *(v24 + 1) = v25;
  *(v24 + 2) = v26;
  *(v24 + 3) = v27;
  *(v24 + 4) = v28;
  v24[40] = 0;
  sub_100008DD0(v13, v11, &qword_10005A910, &qword_100040A50);
  v29 = v35;
  *v35 = 0;
  *(v29 + 8) = 1;
  v30 = v29;
  v31 = sub_100003090(&qword_10005A918, &qword_100040010);
  sub_100008DD0(v11, v30 + *(v31 + 48), &qword_10005A910, &qword_100040A50);
  sub_1000038DC(v13, &qword_10005A910, &qword_100040A50);
  return sub_1000038DC(v11, &qword_10005A910, &qword_100040A50);
}

void *sub_10002D608(uint64_t a1)
{
  v2 = type metadata accessor for LayoutConfiguration(0);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002A9F4(v5);
  v6 = &v5[*(v3 + 28)];
  v7 = *(v6 + 1);
  v14 = *v6;
  v15 = v7;
  v16 = *(v6 + 1);
  sub_100003090(&qword_10005A7E0, &unk_1000409A0);
  Binding.wrappedValue.getter();
  v8 = v13[1];
  sub_1000086B4(v5);
  v9 = (a1 + *(type metadata accessor for TripViewPortraitNarrow(0) + 40));
  v10 = *v9;
  v11 = v9[1];
  v14 = v10;
  v15 = v11;
  v13[0] = v8;
  sub_100003090(&qword_10005A860, &qword_100040B30);
  State.wrappedValue.setter();
  return sub_10002B0CC();
}

uint64_t sub_10002D724(uint64_t *a1, uint64_t a2)
{
  type metadata accessor for TripViewPortraitNarrow(0);

  sub_100003090(&qword_10005A858, &unk_10003FE20);
  return State.wrappedValue.setter();
}

double sub_10002D798@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = type metadata accessor for TripViewPortraitNarrow(0);
  v39 = *(v3 - 8);
  v4 = *(v39 + 64);
  __chkstk_darwin(v3 - 8);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LayoutConfiguration(0);
  __chkstk_darwin(v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TripResetView(0);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = (&v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = sub_100003090(&qword_10005A7D8, &unk_10003FD40);
  __chkstk_darwin(v40);
  v14 = &v39 - v13;
  sub_10002A9F4(v8);
  v15 = &v8[*(v6 + 20)];
  v16 = *(v15 + 1);
  *&v42 = *v15;
  *(&v42 + 1) = v16;
  v43 = *(v15 + 1);
  sub_100003090(&qword_10005A7E0, &unk_1000409A0);
  Binding.wrappedValue.getter();
  v17 = *&v49;
  sub_1000086B4(v8);
  sub_10002A9F4(v8);
  v18 = &v8[*(v6 + 20)];
  v19 = *(v18 + 1);
  *&v42 = *v18;
  *(&v42 + 1) = v19;
  v43 = *(v18 + 1);
  Binding.wrappedValue.getter();
  v20 = *(&v49 + 1);
  sub_1000086B4(v8);
  sub_10002DEFC(a1, v5);
  v21 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v22 = swift_allocObject();
  sub_10002E29C(v5, v22 + v21, type metadata accessor for TripViewPortraitNarrow);
  *v12 = v17 * 0.9;
  v12[1] = v20 * 0.4;
  *(v12 + 2) = sub_10002DFD4;
  *(v12 + 3) = v22;
  v23 = (v12 + *(v10 + 36));
  v24 = *(type metadata accessor for RoundedRectangle() + 20);
  v25 = enum case for RoundedCornerStyle.continuous(_:);
  v26 = type metadata accessor for RoundedCornerStyle();
  (*(*(v26 - 8) + 104))(&v23->i8[v24], v25, v26);
  *v23 = vdupq_n_s64(0x4046000000000000uLL);
  sub_10002A9F4(v8);
  v27 = &v8[*(v6 + 20)];
  v28 = *(v27 + 1);
  *&v42 = *v27;
  *(&v42 + 1) = v28;
  v43 = *(v27 + 1);
  Binding.wrappedValue.getter();
  sub_1000086B4(v8);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10002E29C(v12, v14, type metadata accessor for TripResetView);
  v29 = &v14[*(v40 + 36)];
  v30 = v47;
  *(v29 + 4) = v46;
  *(v29 + 5) = v30;
  *(v29 + 6) = v48;
  v31 = v43;
  *v29 = v42;
  *(v29 + 1) = v31;
  v32 = v45;
  *(v29 + 2) = v44;
  *(v29 + 3) = v32;
  sub_10002A9F4(v8);
  v33 = &v8[*(v6 + 20)];
  v34 = *(v33 + 1);
  *&v49 = *v33;
  *(&v49 + 1) = v34;
  v50 = *(v33 + 1);
  Binding.wrappedValue.getter();
  sub_1000086B4(v8);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v35 = v41;
  sub_100008944(v14, v41, &qword_10005A7D8, &unk_10003FD40);
  v36 = (v35 + *(sub_100003090(&qword_10005A7E8, &qword_10003FD50) + 36));
  v37 = v50;
  *v36 = v49;
  v36[1] = v37;
  result = v51[0];
  v36[2] = *v51;
  return result;
}

double sub_10002DD20(uint64_t a1)
{
  if (a1)
  {
    sub_100009AE4();
  }

  v1 = static Animation.easeInOut(duration:)();
  __chkstk_darwin(v1);
  withAnimation<A>(_:_:)();

  return result;
}

double sub_10002DDBC(uint64_t a1)
{
  type metadata accessor for TripViewPortraitNarrow(0);

  sub_100003090(&qword_10005A7A8, &qword_10003FD20);
  State.wrappedValue.getter();
  State.wrappedValue.setter();

  return result;
}

uint64_t sub_10002DE78@<X0>(uint64_t *a2@<X8>)
{
  *a2 = static Alignment.center.getter();
  a2[1] = v4;
  v5 = sub_100003090(&qword_10005BBC8, &qword_100041500);
  sub_10002B4A4(v2, (a2 + *(v5 + 44)));
  result = sub_100003090(&qword_10005BBD0, &qword_100041508);
  v7 = (a2 + *(result + 36));
  *v7 = 0xD000000000000012;
  v7[1] = 0x8000000100042830;
  return result;
}

uint64_t sub_10002DEFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TripViewPortraitNarrow(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_10002DF64(char a1)
{
  v3 = *(type metadata accessor for TripViewPortraitNarrow(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_10002BC7C(a1, v4);
}

double sub_10002DFD4(char a1)
{
  type metadata accessor for TripViewPortraitNarrow(0);

  return sub_10002DD20(a1 & 1);
}

void sub_10002E060(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        type metadata accessor for CardCellConfiguration(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_100003090(&qword_10005D490, &unk_1000404E0);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_10002E168(uint64_t a1)
{
  v2 = type metadata accessor for Text.TruncationMode();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.truncationMode.setter();
}

uint64_t sub_10002E230@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_10002E29C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *sub_10002E304()
{
  v1 = *(type metadata accessor for TripViewPortraitNarrow(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_10002D608(v2);
}

uint64_t sub_10002E364(uint64_t *a1)
{
  v3 = *(type metadata accessor for TripViewPortraitNarrow(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10002D724(a1, v4);
}

unint64_t sub_10002E3E4()
{
  result = qword_10005BC38;
  if (!qword_10005BC38)
  {
    sub_1000036BC(&qword_10005BC28, &qword_100041670);
    sub_100003894(&qword_10005BC40, &qword_10005BC18, &qword_100041658, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005BC38);
  }

  return result;
}

uint64_t sub_10002E49C@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_10002E528()
{
  v1 = *(type metadata accessor for TripViewPortraitNarrow(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  sub_100003090(&qword_10005A798, &qword_10003FD10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for CAFUIAppPresentationMode();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
    v6 = type metadata accessor for LayoutConfiguration(0);

    sub_1000085F8((v0 + v3 + *(v6 + 24)));
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_10002E6C8()
{
  type metadata accessor for TripViewPortraitNarrow(0);

  sub_100009ADC();
}

unint64_t sub_10002E6F8()
{
  result = qword_10005BC58;
  if (!qword_10005BC58)
  {
    sub_1000036BC(&qword_10005BBD0, &qword_100041508);
    sub_100003894(&qword_10005BC60, &qword_10005BC68, &qword_100041748, &protocol conformance descriptor for ZStack<A>);
    sub_100003894(&qword_10005A940, &qword_10005A948, &qword_100040020, &protocol conformance descriptor for _CoordinateSpaceModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005BC58);
  }

  return result;
}

uint64_t sub_10002E80C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100003090(&qword_10005B4D8, &qword_100040CA8);
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t sub_10002E910@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  sub_100008DD0(a1, a4, a2, a3);
  v7 = sub_100003090(a2, a3);
  v8 = *(*(v7 - 8) + 56);

  return v8(a4, 0, 1, v7);
}

uint64_t sub_10002E9F0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10002EA6C()
{
  v1 = OBJC_IVAR____TtC4Trip21CardCellConfiguration__isClipped;
  v2 = sub_100003090(&qword_10005C388, &qword_100041B78);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC4Trip21CardCellConfiguration_id;
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v5, v6);
}

void sub_10002EBC8(uint64_t a1)
{
  sub_10002F478(319, &unk_10005BCB8, &type metadata for Bool);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_10002ECDC@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for CardCellConfiguration(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

Swift::Int sub_10002ED38()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_100030728(&qword_10005C358, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10002EDD8(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_100030728(&qword_10005C358, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_10002EE60(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_100030728(&qword_10005C358, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10002EEFC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10002EF70()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10002EFE4(char a1, char a2)
{
  v5 = sub_100003090(&qword_10005C380, &qword_100041B28);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - v7;
  v9 = sub_100003090(&qword_10005C378, &qword_100041B20);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v16 - v11;
  UUID.init()();
  v13 = OBJC_IVAR____TtC4Trip9CardModel__name;
  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  Published.init(initialValue:)();
  (*(v10 + 32))(v2 + v13, v12, v9);
  v14 = OBJC_IVAR____TtC4Trip9CardModel__cells;
  v16[0] = &_swiftEmptyArrayStorage;
  sub_100003090(&qword_10005BA28, &qword_1000413F0);
  Published.init(initialValue:)();
  (*(v6 + 32))(v2 + v14, v8, v5);
  *(v2 + OBJC_IVAR____TtC4Trip9CardModel_cardLayoutType) = a1 & 1;
  *(v2 + OBJC_IVAR____TtC4Trip9CardModel_showsTitle) = a2;
  return v2;
}

uint64_t sub_10002F1FC()
{
  v1 = OBJC_IVAR____TtC4Trip9CardModel_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC4Trip9CardModel__name;
  v4 = sub_100003090(&qword_10005C378, &qword_100041B20);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC4Trip9CardModel__cells;
  v6 = sub_100003090(&qword_10005C380, &qword_100041B28);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v7, v8);
}

void sub_10002F358(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_10002F478(319, &qword_10005BE38, &type metadata for String);
    if (v2 <= 0x3F)
    {
      sub_10002F4C4(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_10002F478(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Published();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10002F4C4(uint64_t a1)
{
  if (!qword_10005BE40)
  {
    sub_1000036BC(&qword_10005BA28, &qword_1000413F0);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_10005BE40);
    }
  }
}

uint64_t sub_10002F528@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for CardModel(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t sub_10002F574@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *a1;
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v4 + v5, v6);
}

uint64_t sub_10002F608()
{
  _StringGuts.grow(_:)(22);

  type metadata accessor for UUID();
  sub_100030728(&qword_10005C368, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0x3D656D616E203A29;
  v1._object = 0xE800000000000000;
  String.append(_:)(v1);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  String.append(_:)(v3);

  return 0x65646F4D64726143;
}

uint64_t *sub_10002F77C(uint64_t *result, uint64_t a2)
{
  v2 = result[1];
  if (v2)
  {
    v3 = *result;
    strcpy(v7, "[TripCard] - ");
    HIWORD(v7[1]) = -4864;
    v4._countAndFlagsBits = v3;
    v4._object = v2;
    String.append(_:)(v4);
    sub_100034CE8(v7[0], v7[1], 0xD00000000000001ELL, 0x8000000100043460, 110);

    v5 = String._bridgeToObjectiveC()();
    v6 = sub_100033ADC(v5);

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    swift_getKeyPath();
    swift_getKeyPath();

    return static Published.subscript.setter();
  }

  return result;
}

double sub_10002F89C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10002F8F4();
  }

  return result;
}

uint64_t sub_10002F8F4()
{
  v1 = sub_100003090(&qword_10005B4D8, &qword_100040CA8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v18 - v3;
  v5 = dispatch thunk of CAFTripObservable.showOdometer.getter();
  if (v5 == 2 || (v5 & 1) == 0 || (dispatch thunk of CAFOdometerObservable.distanceKM.getter(), Measurement.value.getter(), v7 = v6, v8 = *(v2 + 8), v8(v4, v1), v7 == 0.0) || (dispatch thunk of CAFOdometerObservable.distanceMiles.getter(), Measurement.value.getter(), v10 = v9, v8(v4, v1), v10 == 0.0))
  {
    v11 = sub_10001835C(*(v0 + OBJC_IVAR____TtC4Trip8TripCard_appConfig));
  }

  else
  {
    v16 = sub_10001835C(*(v0 + OBJC_IVAR____TtC4Trip8TripCard_appConfig));
    v17 = sub_100019F14();
    v19 = v16;
    sub_100030AB4(v17);
    v11 = v19;
  }

  v19 = 0;
  v20 = 0xE000000000000000;
  _StringGuts.grow(_:)(29);

  v19 = 0xD000000000000015;
  v20 = 0x8000000100043420;
  if (v11 >> 62)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18[1] = v12;
  v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v13);

  v14._countAndFlagsBits = 0x736C6C656320;
  v14._object = 0xE600000000000000;
  String.append(_:)(v14);
  sub_100034CE8(v19, v20, 0x6543657461647075, 0xED00002928736C6CLL, 167);

  swift_getKeyPath();
  swift_getKeyPath();
  v19 = v11;

  return static Published.subscript.setter();
}

id sub_10002FBC4(uint64_t a1)
{
  v1 = CAFTripObservable.observed.getter();
  v2 = [v1 hasReset];

  return v2;
}

void sub_10002FC0C()
{

  v1 = *(v0 + OBJC_IVAR____TtC4Trip8TripCard_dimesionObservable);
}

uint64_t sub_10002FC7C()
{
  v1 = OBJC_IVAR____TtC4Trip9CardModel_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC4Trip9CardModel__name;
  v4 = sub_100003090(&qword_10005C378, &qword_100041B20);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC4Trip9CardModel__cells;
  v6 = sub_100003090(&qword_10005C380, &qword_100041B28);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return v0;
}

uint64_t sub_10002FDC4()
{
  sub_10002FC7C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

double sub_10002FEA8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    a3();
  }

  return result;
}

double sub_10002FF08(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    a3();
  }

  return result;
}

unint64_t sub_10002FF68()
{
  v1 = v0;
  v2 = sub_100003090(&qword_10005B4D8, &qword_100040CA8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v28 - v4;
  v31 = &_swiftEmptyArrayStorage;
  result = sub_10001A3D0();
  if (result >> 62)
  {
    v27 = result;
    v7 = _CocoaArrayWrapper.endIndex.getter();
    result = v27;
  }

  else
  {
    v7 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7)
  {
    if ((result & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v8 = *(result + 32);
    }

    *(v8 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_preferredCellStyle) = 4;
    v9 = [objc_opt_self() mainBundle];
    v32._object = 0xE000000000000000;
    v10._countAndFlagsBits = 0xD000000000000017;
    v10._object = 0x80000001000433E0;
    v11.value._countAndFlagsBits = 1885958740;
    v11.value._object = 0xE400000000000000;
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    v32._countAndFlagsBits = 0;
    v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v32);

    *(v8 + OBJC_IVAR____TtC4Trip21CardCellConfiguration_subtitle) = v13;

    sub_100003090(&qword_10005D490, &unk_1000404E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100040BE0;
    *(inited + 32) = v8;
    sub_100030AB4(inited);
  }

  else
  {
  }

  v15 = *(v1 + OBJC_IVAR____TtC4Trip8InfoCard_odometer);
  if (v15)
  {
    v16 = v15;
    dispatch thunk of CAFOdometerObservable.distanceKM.getter();
    Measurement.value.getter();
    v18 = v17;
    v19 = *(v3 + 8);
    v19(v5, v2);
    if (v18 != 0.0)
    {
      dispatch thunk of CAFOdometerObservable.distanceMiles.getter();
      Measurement.value.getter();
      v21 = v20;
      v19(v5, v2);
      if (v21 != 0.0)
      {
        v22 = sub_100019F14();
        sub_100030AB4(v22);
      }
    }
  }

  v29 = 0;
  v30 = 0xE000000000000000;
  _StringGuts.grow(_:)(29);

  v29 = 0xD000000000000015;
  v30 = 0x8000000100043400;
  v23 = v31;
  if (v31 >> 62)
  {
    v24 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v24 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v28[1] = v24;
  v25._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v25);

  v26._countAndFlagsBits = 0x736C6C656320;
  v26._object = 0xE600000000000000;
  String.append(_:)(v26);
  sub_100034CE8(v29, v30, 0x6543657461647075, 0xED00002928736C6CLL, 232);

  swift_getKeyPath();
  swift_getKeyPath();
  v29 = v23;

  return static Published.subscript.setter();
}

void sub_100030364()
{

  v1 = *(v0 + OBJC_IVAR____TtC4Trip8InfoCard_dimesionObservable);
}

uint64_t sub_1000303C4()
{
  v1 = OBJC_IVAR____TtC4Trip9CardModel_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC4Trip9CardModel__name;
  v4 = sub_100003090(&qword_10005C378, &qword_100041B20);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC4Trip9CardModel__cells;
  v6 = sub_100003090(&qword_10005C380, &qword_100041B28);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(v0 + OBJC_IVAR____TtC4Trip8InfoCard_consumption);

  v8 = *(v0 + OBJC_IVAR____TtC4Trip8InfoCard_dimesionObservable);

  v9 = *(*v0 + 48);
  v10 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v9, v10);
}

uint64_t sub_100030570(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100030634()
{
  result = qword_10005C348;
  if (!qword_10005C348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C348);
  }

  return result;
}

unint64_t sub_10003068C()
{
  result = qword_10005C350;
  if (!qword_10005C350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C350);
  }

  return result;
}

uint64_t sub_100030728(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

void sub_1000307B8(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
}

uint64_t sub_100030838(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void sub_1000308AC(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
  a2[1] = v4;
}

uint64_t sub_100030930(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void sub_1000309B8(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
}

uint64_t sub_100030A38(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100030AB4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = _CocoaArrayWrapper.endIndex.getter();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_100030BA4(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_100030C44(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_100030BA4(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v2 = result;
  return result;
}

uint64_t sub_100030C44(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100003894(&qword_10005C370, &qword_10005BA28, &qword_1000413F0, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_100003090(&qword_10005BA28, &qword_1000413F0);
            v9 = sub_100030F9C(v13, i, a3);
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
        type metadata accessor for CardCellConfiguration(0);
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

uint64_t sub_100030DE8(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100003894(&qword_10005C680, &qword_10005C678, &qword_100041D58, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_100003090(&qword_10005C678, &qword_100041D58);
            v9 = sub_100031024(v13, i, a3);
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
        sub_100014060(0, &qword_10005B5C8, CAFTrip_ptr);
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

uint64_t (*sub_100030F9C(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
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

LABEL_5:
    *v3 = v4;
    return sub_10003101C;
  }

  __break(1u);
  return result;
}

void (*sub_100031024(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
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
    return sub_1000310A4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000310C8(void *a1, void *a2, uint64_t a3)
{
  v7 = sub_100003090(&qword_10005C390, &qword_100041B80);
  __chkstk_darwin(v7 - 8);
  v147 = &v144 - v8;
  v148 = sub_100003090(&qword_10005C398, &qword_100041B88);
  v146 = *(v148 - 8);
  __chkstk_darwin(v148);
  v145 = &v144 - v9;
  v151 = sub_100003090(&qword_10005C3A0, &qword_100041B90);
  v150 = *(v151 - 8);
  __chkstk_darwin(v151);
  v149 = &v144 - v10;
  v196 = sub_100003090(&qword_10005C3A8, &qword_100041B98);
  v195 = *(v196 - 8);
  __chkstk_darwin(v196);
  v194 = &v144 - v11;
  v12 = sub_100003090(&qword_10005C3B0, &qword_100041BA0);
  v198 = *(v12 - 8);
  v199 = v12;
  __chkstk_darwin(v12);
  v197 = &v144 - v13;
  v190 = type metadata accessor for NSRunLoop.SchedulerTimeType.Stride();
  v189 = *(v190 - 8);
  __chkstk_darwin(v190);
  v187 = &v144 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = sub_100003090(&qword_10005C3B8, &qword_100041BA8);
  v185 = *(v186 - 8);
  __chkstk_darwin(v186);
  v184 = &v144 - v15;
  v192 = sub_100003090(&qword_10005C3C0, &qword_100041BB0);
  v191 = *(v192 - 8);
  __chkstk_darwin(v192);
  v188 = &v144 - v16;
  v180 = sub_100003090(&qword_10005C3C8, &qword_100041BB8);
  v179 = *(v180 - 8);
  __chkstk_darwin(v180);
  v178 = &v144 - v17;
  v183 = sub_100003090(&qword_10005C3D0, &qword_100041BC0);
  v18 = __chkstk_darwin(v183);
  v182 = &v144 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v209 = &v144 - v20;
  v176 = sub_100003090(&qword_10005C3D8, &qword_100041BC8);
  v175 = *(v176 - 8);
  __chkstk_darwin(v176);
  v174 = &v144 - v21;
  v181 = sub_100003090(&qword_10005C3E0, &qword_100041BD0);
  __chkstk_darwin(v181);
  v208 = &v144 - v22;
  v173 = sub_100003090(&qword_10005C3E8, &qword_100041BD8);
  v172 = *(v173 - 8);
  __chkstk_darwin(v173);
  v171 = &v144 - v23;
  v177 = sub_100003090(&qword_10005C3F0, &qword_100041BE0);
  __chkstk_darwin(v177);
  v207 = &v144 - v24;
  v212 = sub_100003090(&qword_10005C3F8, &qword_100041BE8);
  v200 = *(v212 - 8);
  __chkstk_darwin(v212);
  v211 = &v144 - v25;
  v201 = sub_100003090(&qword_10005C400, &qword_100041BF0);
  v163 = *(v201 - 1);
  __chkstk_darwin(v201);
  v161 = &v144 - v26;
  v169 = sub_100003090(&qword_10005C408, &qword_100041BF8);
  __chkstk_darwin(v169);
  v168 = &v144 - v27;
  v160 = sub_100003090(&qword_10005C410, &qword_100041C00);
  v159 = *(v160 - 8);
  __chkstk_darwin(v160);
  v158 = &v144 - v28;
  v167 = sub_100003090(&qword_10005C418, &qword_100041C08);
  __chkstk_darwin(v167);
  v166 = &v144 - v29;
  v202 = sub_100003090(&qword_10005C420, &qword_100041C10);
  v156 = *(v202 - 8);
  __chkstk_darwin(v202);
  v155 = &v144 - v30;
  v165 = sub_100003090(&qword_10005C428, &qword_100041C18);
  __chkstk_darwin(v165);
  v205 = &v144 - v31;
  *&v214 = sub_100003090(&qword_10005C430, &qword_100041C20);
  v203 = *(v214 - 8);
  __chkstk_darwin(v214);
  v33 = &v144 - v32;
  v162 = sub_100003090(&qword_10005C438, &qword_100041C28);
  __chkstk_darwin(v162);
  v204 = &v144 - v34;
  v210 = sub_100003090(&qword_10005C440, &qword_100041C30);
  v193 = *(v210 - 8);
  __chkstk_darwin(v210);
  v213 = &v144 - v35;
  if (&_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_10001F2E0(&_swiftEmptyArrayStorage);
  }

  else
  {
    v36 = &_swiftEmptySetSingleton;
  }

  *(v3 + OBJC_IVAR____TtC4Trip8TripCard_cancellables) = v36;
  *(v3 + OBJC_IVAR____TtC4Trip8TripCard_dimesionObservable) = 0;
  *(v3 + OBJC_IVAR____TtC4Trip8TripCard_trip) = a1;
  *(v3 + OBJC_IVAR____TtC4Trip8TripCard_odometer) = a2;
  *(v3 + OBJC_IVAR____TtC4Trip8TripCard_appConfig) = a3;

  v37 = a1;
  v38 = a2;
  sub_10002EFE4(0, 1);
  v215 = 0;
  v216 = 0xE000000000000000;
  v39 = v3;

  _StringGuts.grow(_:)(37);

  v215 = 0xD000000000000017;
  v216 = 0x8000000100043440;
  v40 = [v37 description];
  v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v42;

  v44._countAndFlagsBits = v41;
  v44._object = v43;
  String.append(_:)(v44);

  v45._countAndFlagsBits = 0x6574656D6F646F20;
  v45._object = 0xEA00000000003D72;
  String.append(_:)(v45);
  v206 = v38;
  v46 = [v38 description];
  v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v49 = v48;

  v50._countAndFlagsBits = v47;
  v50._object = v49;
  String.append(_:)(v50);

  sub_100034CE8(v215, v216, 0xD00000000000001ELL, 0x8000000100043460, 100);

  dispatch thunk of CAFTripObservable.userVisibleLabel.getter();
  if (v51)
  {
    v52 = String._bridgeToObjectiveC()();

    v53 = sub_100033ADC(v52);

    countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v53 = [objc_opt_self() mainBundle];
    v217._object = 0xE000000000000000;
    v56._countAndFlagsBits = 0x4241545F50495254;
    v56._object = 0xE800000000000000;
    v57.value._countAndFlagsBits = 1885958740;
    v57.value._object = 0xE400000000000000;
    v58._countAndFlagsBits = 0;
    v58._object = 0xE000000000000000;
    v217._countAndFlagsBits = 0;
    v59 = NSLocalizedString(_:tableName:bundle:value:comment:)(v56, v57, v53, v58, v217);
    object = v59._object;
    countAndFlagsBits = v59._countAndFlagsBits;
  }

  v60 = countAndFlagsBits;
  v61 = object;

  swift_getKeyPath();
  swift_getKeyPath();
  v215 = v60;
  v216 = v61;

  static Published.subscript.setter();
  v215 = dispatch thunk of CAFTripObservable.$userVisibleLabel.getter();
  v164 = v39;

  sub_100003090(&qword_10005C448, &qword_100041C38);
  sub_100003894(&qword_10005C450, &qword_10005C448, &qword_100041C38, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher<>.sink(receiveValue:)();

  v170 = OBJC_IVAR____TtC4Trip8TripCard_cancellables;
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v62 = v37;
  v215 = dispatch thunk of CAFTripObservable.$averageSpeed.getter();
  sub_100003090(&qword_10005C458, &qword_100041C40);
  v63 = sub_100003090(&qword_10005C460, &qword_100041C48);
  sub_100003894(&qword_10005C468, &qword_10005C458, &qword_100041C40, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.map<A>(_:)();
  sub_100003894(&qword_10005C470, &qword_10005C430, &qword_100041C20, &protocol conformance descriptor for Publishers.Map<A, B>);
  v64 = v214;
  v65 = Publisher.eraseToAnyPublisher()();

  (*(v203 + 8))(v33, v64);
  v215 = v65;
  sub_100003090(&qword_10005C478, &unk_100041C50);
  v66 = (*(*(v63 - 8) + 80) + 32) & ~*(*(v63 - 8) + 80);
  v67 = swift_allocObject();
  v214 = xmmword_10003FA90;
  *(v67 + 16) = xmmword_10003FA90;
  v68 = sub_100003090(&qword_10005B540, &qword_100040CD8);
  (*(*(v68 - 8) + 56))(v67 + v66, 1, 1, v68);
  sub_100003090(&qword_10005C480, &qword_100041C60);
  sub_100003894(&qword_10005C488, &qword_10005C480, &qword_100041C60, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.prepend(_:)();

  v69 = v62;
  v215 = dispatch thunk of CAFTripObservable.$distance.getter();
  v157 = sub_100003090(&qword_10005C490, &qword_100041C68);
  v70 = sub_100003090(&qword_10005C498, &qword_100041C70);
  v203 = sub_100003894(&qword_10005C4A0, &qword_10005C490, &qword_100041C68, &protocol conformance descriptor for AnyPublisher<A, B>);
  v71 = v155;
  Publisher.map<A>(_:)();
  sub_100003894(&qword_10005C4A8, &qword_10005C420, &qword_100041C10, &protocol conformance descriptor for Publishers.Map<A, B>);
  v72 = v202;
  v73 = Publisher.eraseToAnyPublisher()();

  (*(v156 + 8))(v71, v72);
  v215 = v73;
  sub_100003090(&qword_10005C4B0, &qword_100041C78);
  v74 = (*(*(v70 - 8) + 80) + 32) & ~*(*(v70 - 8) + 80);
  v75 = swift_allocObject();
  *(v75 + 16) = v214;
  v202 = sub_100003090(&qword_10005B560, &qword_100041C80);
  v76 = *(v202 - 8);
  v77 = *(v76 + 56);
  v156 = v76 + 56;
  v77(v75 + v74, 1, 1, v202);
  sub_100003090(&qword_10005C4B8, &qword_100041C88);
  sub_100003894(&qword_10005C4C0, &qword_10005C4B8, &qword_100041C88, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.prepend(_:)();

  v215 = dispatch thunk of CAFTripObservable.$duration.getter();
  sub_100003090(&qword_10005C4C8, &qword_100041C90);
  v78 = sub_100003090(&qword_10005C4D0, &qword_100041C98);
  sub_100003894(&qword_10005C4D8, &qword_10005C4C8, &qword_100041C90, &protocol conformance descriptor for AnyPublisher<A, B>);
  v79 = v158;
  Publisher.map<A>(_:)();
  sub_100003894(&qword_10005C4E0, &qword_10005C410, &qword_100041C00, &protocol conformance descriptor for Publishers.Map<A, B>);
  v80 = v160;
  v81 = Publisher.eraseToAnyPublisher()();

  (*(v159 + 8))(v79, v80);
  v215 = v81;
  sub_100003090(&qword_10005C4E8, &unk_100041CA0);
  v82 = (*(*(v78 - 8) + 80) + 32) & ~*(*(v78 - 8) + 80);
  v83 = swift_allocObject();
  *(v83 + 16) = v214;
  v84 = sub_100003090(&qword_10005B550, &qword_100040CE8);
  (*(*(v84 - 8) + 56))(v83 + v82, 1, 1, v84);
  sub_100003090(&qword_10005C4F0, &qword_100041CB0);
  sub_100003894(&qword_10005C4F8, &qword_10005C4F0, &qword_100041CB0, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.prepend(_:)();

  v215 = dispatch thunk of CAFTripObservable.$energy.getter();
  sub_100003090(&qword_10005C500, &qword_100041CB8);
  v85 = sub_100003090(&qword_10005C508, &qword_100041CC0);
  sub_100003894(&qword_10005C510, &qword_10005C500, &qword_100041CB8, &protocol conformance descriptor for AnyPublisher<A, B>);
  v86 = v161;
  Publisher.map<A>(_:)();
  sub_100003894(&qword_10005C518, &qword_10005C400, &qword_100041BF0, &protocol conformance descriptor for Publishers.Map<A, B>);
  v87 = v201;
  v88 = Publisher.eraseToAnyPublisher()();

  (*(v163 + 8))(v86, v87);
  v215 = v88;
  sub_100003090(&qword_10005C520, &qword_100041CC8);
  v89 = (*(*(v85 - 8) + 80) + 32) & ~*(*(v85 - 8) + 80);
  v90 = swift_allocObject();
  *(v90 + 16) = v214;
  v91 = sub_100003090(&qword_10005B530, &qword_100041CD0);
  (*(*(v91 - 8) + 56))(v90 + v89, 1, 1, v91);
  sub_100003090(&qword_10005C528, &qword_100041CD8);
  sub_100003894(&qword_10005C530, &qword_10005C528, &qword_100041CD8, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.prepend(_:)();

  v201 = &protocol conformance descriptor for Publishers.Concatenate<A, B>;
  sub_100003894(&qword_10005C538, &qword_10005C438, &qword_100041C28, &protocol conformance descriptor for Publishers.Concatenate<A, B>);
  sub_100003894(&qword_10005C540, &qword_10005C428, &qword_100041C18, &protocol conformance descriptor for Publishers.Concatenate<A, B>);
  sub_100003894(&qword_10005C548, &qword_10005C418, &qword_100041C08, &protocol conformance descriptor for Publishers.Concatenate<A, B>);
  sub_100003894(&qword_10005C550, &qword_10005C408, &qword_100041BF8, &protocol conformance descriptor for Publishers.Concatenate<A, B>);
  Publishers.CombineLatest4.init(_:_:_:_:)();
  v154 = v69;
  v215 = dispatch thunk of CAFTripObservable.$energyEfficiency.getter();
  sub_100003090(&qword_10005C558, &qword_100041CE0);
  v92 = sub_100003090(&qword_10005C560, &qword_100041CE8);
  sub_100003894(&qword_10005C568, &qword_10005C558, &qword_100041CE0, &protocol conformance descriptor for AnyPublisher<A, B>);
  v93 = v171;
  Publisher.map<A>(_:)();
  sub_100003894(&qword_10005C570, &qword_10005C3E8, &qword_100041BD8, &protocol conformance descriptor for Publishers.Map<A, B>);
  v94 = v173;
  v95 = Publisher.eraseToAnyPublisher()();

  (*(v172 + 8))(v93, v94);
  v215 = v95;
  sub_100003090(&qword_10005C578, &unk_100041CF0);
  v96 = (*(*(v92 - 8) + 80) + 32) & ~*(*(v92 - 8) + 80);
  v97 = swift_allocObject();
  *(v97 + 16) = v214;
  v98 = sub_100003090(&qword_10005B520, &qword_100040CC0);
  (*(*(v98 - 8) + 56))(v97 + v96, 1, 1, v98);
  sub_100003090(&qword_10005C580, &qword_100041D00);
  sub_100003894(&qword_10005C588, &qword_10005C580, &qword_100041D00, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.prepend(_:)();

  v215 = dispatch thunk of CAFTripObservable.$fuelEfficiency.getter();
  sub_100003090(&qword_10005C590, &qword_100041D08);
  v99 = sub_100003090(&qword_10005C598, &qword_100041D10);
  sub_100003894(&qword_10005C5A0, &qword_10005C590, &qword_100041D08, &protocol conformance descriptor for AnyPublisher<A, B>);
  v100 = v174;
  Publisher.map<A>(_:)();
  v153 = &protocol conformance descriptor for Publishers.Map<A, B>;
  sub_100003894(&qword_10005C5A8, &qword_10005C3D8, &qword_100041BC8, &protocol conformance descriptor for Publishers.Map<A, B>);
  v101 = v176;
  v102 = Publisher.eraseToAnyPublisher()();

  (*(v175 + 8))(v100, v101);
  v215 = v102;
  sub_100003090(&qword_10005C5B0, &qword_100041D18);
  v103 = (*(*(v99 - 8) + 80) + 32) & ~*(*(v99 - 8) + 80);
  v104 = swift_allocObject();
  *(v104 + 16) = v214;
  v105 = sub_100003090(&qword_10005B518, &qword_100041D20);
  (*(*(v105 - 8) + 56))(v104 + v103, 1, 1, v105);
  sub_100003090(&qword_10005C5B8, &qword_100041D28);
  v152 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_100003894(&qword_10005C5C0, &qword_10005C5B8, &qword_100041D28, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.prepend(_:)();

  v215 = dispatch thunk of CAFOdometerObservable.$distanceMiles.getter();
  v205 = sub_100003090(&qword_10005C5C8, &qword_100041D30);
  v204 = sub_100003894(&qword_10005C5D0, &qword_10005C5C8, &qword_100041D30, &protocol conformance descriptor for AnyPublisher<A, B>);
  v176 = sub_10002E80C;
  v106 = v178;
  Publisher.map<A>(_:)();
  v175 = sub_100003894(&qword_10005C5D8, &qword_10005C3C8, &qword_100041BB8, &protocol conformance descriptor for Publishers.Map<A, B>);
  v107 = v180;
  v108 = Publisher.eraseToAnyPublisher()();

  v179 = *(v179 + 8);
  (v179)(v106, v107);
  v215 = v108;
  v174 = sub_100003090(&qword_10005C5E0, &qword_100041D38);
  v173 = *(v156 + 16);
  v109 = (*(v156 + 24) + 32) & ~*(v156 + 24);
  v110 = swift_allocObject();
  *(v110 + 16) = v214;
  v111 = sub_100003090(&qword_10005B4D8, &qword_100040CA8);
  v112 = *(v111 - 8);
  v171 = *(v112 + 56);
  v172 = v112 + 56;
  (v171)(v110 + v109, 1, 1, v111);
  Publisher.prepend(_:)();

  v215 = dispatch thunk of CAFOdometerObservable.$distanceKM.getter();
  Publisher.map<A>(_:)();
  v113 = Publisher.eraseToAnyPublisher()();

  (v179)(v106, v107);
  v215 = v113;
  v114 = swift_allocObject();
  *(v114 + 16) = v214;
  (v171)(v114 + v109, 1, 1, v111);
  v115 = v164;
  Publisher.prepend(_:)();

  v116 = v201;
  sub_100003894(&qword_10005C5E8, &qword_10005C3F0, &qword_100041BE0, v201);
  sub_100003894(&qword_10005C5F0, &qword_10005C3E0, &qword_100041BD0, v116);
  sub_100003894(&qword_10005C5F8, &qword_10005C3D0, &qword_100041BC0, v116);
  Publishers.CombineLatest4.init(_:_:_:_:)();
  sub_100003894(&qword_10005C600, &qword_10005C440, &qword_100041C30, &protocol conformance descriptor for Publishers.CombineLatest4<A, B, C, D>);
  sub_100003894(&qword_10005C608, &qword_10005C3F8, &qword_100041BE8, &protocol conformance descriptor for Publishers.CombineLatest4<A, B, C, D>);
  v117 = v184;
  Publisher.combineLatest<A>(_:)();
  v118 = v187;
  static NSRunLoop.SchedulerTimeType.Stride.milliseconds(_:)();
  v208 = objc_opt_self();
  v119 = [v208 mainRunLoop];
  v215 = v119;
  v120 = sub_100014060(0, &qword_10005C610, NSRunLoop_ptr);
  sub_100003894(&qword_10005C618, &qword_10005C3B8, &qword_100041BA8, &protocol conformance descriptor for Publishers.CombineLatest<A, B>);
  v121 = sub_10003396C();
  v122 = v188;
  v123 = v186;
  *&v214 = v120;
  v209 = v121;
  Publisher.throttle<A>(for:scheduler:latest:)();

  (*(v189 + 8))(v118, v190);
  (*(v185 + 8))(v117, v123);
  swift_allocObject();
  swift_weakInit();
  sub_100003894(&qword_10005C628, &qword_10005C3C0, &qword_100041BB0, &protocol conformance descriptor for Publishers.Throttle<A, B>);
  v124 = v192;
  Publisher<>.sink(receiveValue:)();

  (*(v191 + 8))(v122, v124);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v215 = dispatch thunk of CAFTripObservable.$showOdometer.getter();
  sub_100003090(&qword_10005C630, &qword_100041D40);
  sub_100003090(&qword_10005C638, &qword_100041D48);
  v125 = v152;
  sub_100003894(&qword_10005C640, &qword_10005C630, &qword_100041D40, v152);
  v126 = v194;
  Publisher.map<A>(_:)();
  sub_100003894(&qword_10005C648, &qword_10005C3A8, &qword_100041B98, v153);
  v127 = v196;
  v128 = Publisher.eraseToAnyPublisher()();

  (*(v195 + 8))(v126, v127);
  v215 = v128;
  sub_100003090(&qword_10005C650, &qword_100041D50);
  sub_100003894(&qword_10005C658, &qword_10005C650, &qword_100041D50, v125);
  v129 = v197;
  Publisher.prepend(_:)();

  swift_allocObject();
  swift_weakInit();

  sub_100003894(&qword_10005C660, &qword_10005C3B0, &qword_100041BA0, v201);
  v130 = v199;
  Publisher<>.sink(receiveValue:)();

  (*(v198 + 8))(v129, v130);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v131 = CAFTripObservable.observed.getter();
  v132 = [v131 car];

  if (v132)
  {
    v133 = CAFCar.dimesionObservable.getter();
  }

  else
  {
    v133 = 0;
  }

  v134 = *(v115 + OBJC_IVAR____TtC4Trip8TripCard_dimesionObservable);
  *(v115 + OBJC_IVAR____TtC4Trip8TripCard_dimesionObservable) = v133;
  v135 = v133;

  if (v133)
  {
    v136 = v145;
    dispatch thunk of CAFDimensionObservable.$measurementSystem.getter();
    v137 = [v208 mainRunLoop];
    v215 = v137;
    v138 = type metadata accessor for NSRunLoop.SchedulerOptions();
    v139 = v147;
    (*(*(v138 - 8) + 56))(v147, 1, 1, v138);
    sub_100003894(&qword_10005C668, &qword_10005C398, &qword_100041B88, &protocol conformance descriptor for Published<A>.Publisher);
    v140 = v149;
    v141 = v148;
    Publisher.receive<A>(on:options:)();
    sub_100033A44(v139);

    (*(v146 + 8))(v136, v141);
    swift_allocObject();
    swift_weakInit();
    sub_100003894(&qword_10005C670, &qword_10005C3A0, &qword_100041B90, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v142 = v151;
    Publisher<>.sink(receiveValue:)();

    (*(v150 + 8))(v140, v142);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  sub_10002F8F4();
  (*(v200 + 8))(v211, v212);
  (*(v193 + 8))(v213, v210);
  return v115;
}

unint64_t sub_10003396C()
{
  result = qword_10005C620;
  if (!qword_10005C620)
  {
    sub_100014060(255, &qword_10005C610, NSRunLoop_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C620);
  }

  return result;
}

uint64_t sub_1000339D4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100033A44(uint64_t a1)
{
  v2 = sub_100003090(&qword_10005C390, &qword_100041B80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_100033ADC(void *a1)
{
  v1 = a1;
  v2 = CAFFrameworkBundle();
  v3 = [v2 localizedStringForKey:v1 value:&stru_100056FE8 table:@"Localizable"];

  return v3;
}

uint64_t sub_100033B50(void *a1, void *a2, int a3, int a4)
{
  v5 = v4;
  LODWORD(v67) = a4;
  LODWORD(v66) = a3;
  v8 = sub_100003090(&qword_10005C398, &qword_100041B88);
  v61 = *(v8 - 8);
  v62 = v8;
  __chkstk_darwin(v8);
  v60 = &v57 - v9;
  v10 = sub_100003090(&qword_10005C3A0, &qword_100041B90);
  v64 = *(v10 - 8);
  v65 = v10;
  __chkstk_darwin(v10);
  v63 = &v57 - v11;
  v12 = sub_100003090(&qword_10005C688, &qword_100041D60);
  v70 = *(v12 - 8);
  v71 = v12;
  __chkstk_darwin(v12);
  v69 = &v57 - v13;
  v14 = sub_100003090(&qword_10005C390, &qword_100041B80);
  __chkstk_darwin(v14 - 8);
  v16 = &v57 - v15;
  v17 = sub_100003090(&qword_10005C690, &qword_100041D68);
  v57 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v57 - v18;
  v20 = sub_100003090(&qword_10005C698, &qword_100041D70);
  v58 = *(v20 - 8);
  v59 = v20;
  __chkstk_darwin(v20);
  v22 = &v57 - v21;
  if (&_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_10001F2E0(&_swiftEmptyArrayStorage);
  }

  else
  {
    v23 = &_swiftEmptySetSingleton;
  }

  *(v5 + OBJC_IVAR____TtC4Trip8InfoCard_cancellables) = v23;
  v24 = OBJC_IVAR____TtC4Trip8InfoCard_dimesionObservable;
  *(v5 + OBJC_IVAR____TtC4Trip8InfoCard_dimesionObservable) = 0;
  *(v5 + OBJC_IVAR____TtC4Trip8InfoCard_consumption) = a1;
  *(v5 + OBJC_IVAR____TtC4Trip8InfoCard_odometer) = a2;
  v25 = a2;
  v68 = a1;
  v26 = CAFFuelConsumptionObservable.observed.getter();
  v27 = [v26 car];

  if (v27)
  {
    v28 = CAFCar.dimesionObservable.getter();
  }

  else
  {
    v28 = 0;
  }

  v29 = *(v5 + v24);
  *(v5 + v24) = v28;

  sub_10002EFE4(v66 & 1, v67 & 1);
  v30 = objc_opt_self();

  v31 = [v30 mainBundle];
  v74._object = 0xE000000000000000;
  v32._countAndFlagsBits = 0x5F454C4349484556;
  v32._object = 0xEC0000004F464E49;
  v33.value._countAndFlagsBits = 1885958740;
  v33.value._object = 0xE400000000000000;
  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  v74._countAndFlagsBits = 0;
  v35 = NSLocalizedString(_:tableName:bundle:value:comment:)(v32, v33, v31, v34, v74);

  swift_getKeyPath();
  swift_getKeyPath();
  v72 = v35;
  static Published.subscript.setter();
  if (a2)
  {
    v36 = v25;
    v72._countAndFlagsBits = dispatch thunk of CAFOdometerObservable.$distanceMiles.getter();
    v73 = dispatch thunk of CAFOdometerObservable.$distanceKM.getter();
    sub_100003090(&qword_10005C5C8, &qword_100041D30);
    sub_100003894(&qword_10005C5D0, &qword_10005C5C8, &qword_100041D30, &protocol conformance descriptor for AnyPublisher<A, B>);
    Publishers.CombineLatest.init(_:_:)();
    v37 = [objc_opt_self() mainRunLoop];
    v72._countAndFlagsBits = v37;
    v38 = type metadata accessor for NSRunLoop.SchedulerOptions();
    (*(*(v38 - 8) + 56))(v16, 1, 1, v38);
    sub_100014060(0, &qword_10005C610, NSRunLoop_ptr);
    sub_100003894(&qword_10005C6B8, &qword_10005C690, &qword_100041D68, &protocol conformance descriptor for Publishers.CombineLatest<A, B>);
    sub_10003396C();
    Publisher.receive<A>(on:options:)();
    sub_100033A44(v16);

    (*(v57 + 8))(v19, v17);
    swift_allocObject();
    swift_weakInit();
    sub_100003894(&qword_10005C6C0, &qword_10005C698, &qword_100041D70, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v39 = v59;
    Publisher<>.sink(receiveValue:)();

    (*(v58 + 8))(v22, v39);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  v72._countAndFlagsBits = dispatch thunk of CAFFuelConsumptionObservable.$fuelEfficiency.getter();
  v68 = objc_opt_self();
  v40 = [v68 mainRunLoop];
  v73 = v40;
  v41 = type metadata accessor for NSRunLoop.SchedulerOptions();
  v42 = *(v41 - 8);
  v43 = *(v42 + 56);
  v58 = v41;
  v66 = v42 + 56;
  v67 = v43;
  (v43)(v16, 1, 1);
  sub_100003090(&qword_10005C6A0, &qword_100041D78);
  v44 = v16;
  v45 = sub_100014060(0, &qword_10005C610, NSRunLoop_ptr);
  sub_100003894(&qword_10005C6A8, &qword_10005C6A0, &qword_100041D78, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_10003396C();
  v46 = v69;
  v59 = v45;
  v47 = v44;
  Publisher.receive<A>(on:options:)();
  sub_100033A44(v44);

  swift_allocObject();
  swift_weakInit();
  sub_100003894(&qword_10005C6B0, &qword_10005C688, &qword_100041D60, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v48 = v71;
  Publisher<>.sink(receiveValue:)();

  (*(v70 + 8))(v46, v48);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v49 = *(v5 + OBJC_IVAR____TtC4Trip8InfoCard_dimesionObservable);
  if (v49)
  {
    v50 = v49;
    v51 = v60;
    dispatch thunk of CAFDimensionObservable.$measurementSystem.getter();
    v52 = [v68 mainRunLoop];
    v72._countAndFlagsBits = v52;
    v67(v44, 1, 1, v58);
    sub_100003894(&qword_10005C668, &qword_10005C398, &qword_100041B88, &protocol conformance descriptor for Published<A>.Publisher);
    v53 = v62;
    v54 = v63;
    Publisher.receive<A>(on:options:)();
    sub_100033A44(v47);

    (*(v61 + 8))(v51, v53);
    swift_allocObject();
    swift_weakInit();
    sub_100003894(&qword_10005C670, &qword_10005C3A0, &qword_100041B90, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v55 = v65;
    Publisher<>.sink(receiveValue:)();

    (*(v64 + 8))(v54, v55);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  sub_10002FF68();
  return v5;
}

uint64_t sub_1000346E8()
{
  sub_100034D18();
  result = OS_os_log.init(subsystem:category:)();
  qword_10005D618 = result;
  return result;
}

unint64_t sub_100034740(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10003480C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10001F78C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000085F8(v11);
  return v7;
}

unint64_t sub_10003480C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100034918(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_100034918(uint64_t a1, unint64_t a2)
{
  v3 = sub_100034964(a1, a2);
  sub_100034A94(&off_100055CD0);
  return v3;
}

char *sub_100034964(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100034B80(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100034B80(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100034A94(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100034BF4(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100034B80(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_100003090(&qword_10005C6C8, &unk_100041D88);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100034BF4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003090(&qword_10005C6C8, &unk_100041D88);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_100034D18()
{
  result = qword_10005C6D0;
  if (!qword_10005C6D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10005C6D0);
  }

  return result;
}

uint64_t sub_100034D7C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  v11 = a6();
  if (qword_10005A3A8 != -1)
  {
    swift_once();
  }

  v12 = qword_10005D618;
  result = os_log_type_enabled(qword_10005D618, v11);
  if (result)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 136315650;
    *(v14 + 4) = sub_100034740(a3, a4, &v15);
    *(v14 + 12) = 2048;
    *(v14 + 14) = a5;
    *(v14 + 22) = 2080;
    *(v14 + 24) = sub_100034740(a1, a2, &v15);
    _os_log_impl(&_mh_execute_header, v12, v11, "%s: %ld  %s", v14, 0x20u);
    swift_arrayDestroy();
  }

  return result;
}

void sub_100034F44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100034FBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003090(&qword_10005A650, &unk_10003FC50);
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

uint64_t sub_100035098(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100003090(&qword_10005A650, &unk_10003FC50);
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

void sub_10003517C(uint64_t a1)
{
  sub_100034F44(319, &qword_10005A6C0, type metadata accessor for LayoutConfiguration, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_100034F44(319, &unk_10005C740, type metadata accessor for CardCellConfiguration, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100035294@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003090(&qword_10005A798, &qword_10003FD10);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  sub_1000133E0(v2, &v13 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_10003656C(v10, a1, type metadata accessor for LayoutConfiguration);
  }

  static os_log_type_t.fault.getter();
  v12 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

__n128 sub_100035460@<Q0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v18 = sub_100003090(&qword_10005C810, &qword_100041E68);
  v2 = *(v18 - 8);
  __chkstk_darwin(v18);
  v4 = &v18 - v3;
  v5 = sub_100003090(&qword_10005C818, &qword_100041E70);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v18 - v7;
  v20 = v1;
  static Axis.Set.vertical.getter();
  sub_100003090(&qword_10005C820, &qword_100041E78);
  sub_100003894(&qword_10005C828, &qword_10005C820, &qword_100041E78, &protocol conformance descriptor for VStack<A>);
  ScrollView.init(_:showsIndicators:content:)();
  type metadata accessor for MeasurementList(0);
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v2 + 32))(v8, v4, v18);
  v9 = &v8[*(v6 + 44)];
  v10 = v26;
  *(v9 + 4) = v25;
  *(v9 + 5) = v10;
  *(v9 + 6) = v27;
  v11 = v22;
  *v9 = v21;
  *(v9 + 1) = v11;
  v12 = v24;
  *(v9 + 2) = v23;
  *(v9 + 3) = v12;
  static Alignment.top.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v13 = v19;
  sub_100008944(v8, v19, &qword_10005C818, &qword_100041E70);
  v14 = v13 + *(sub_100003090(&qword_10005C830, &qword_100041E80) + 36);
  v15 = v33;
  *(v14 + 64) = v32;
  *(v14 + 80) = v15;
  *(v14 + 96) = v34;
  v16 = v29;
  *v14 = v28;
  *(v14 + 16) = v16;
  result = v31;
  *(v14 + 32) = v30;
  *(v14 + 48) = result;
  return result;
}

uint64_t sub_100035760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MeasurementList(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  *a2 = static HorizontalAlignment.leading.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_100003090(&qword_10005C838, &qword_100041E88);
  v11[1] = *(a1 + *(v5 + 28));
  sub_1000365D4(a1, v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MeasurementList);
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = swift_allocObject();
  sub_10003656C(v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for MeasurementList);

  sub_100003090(&qword_10005BA28, &qword_1000413F0);
  type metadata accessor for UUID();
  sub_100003090(&qword_10005C840, &unk_100041E90);
  sub_100003894(&qword_10005BA30, &qword_10005BA28, &qword_1000413F0, &protocol conformance descriptor for [A]);
  sub_100036464();
  sub_100036524(&qword_10005BA50, type metadata accessor for CardCellConfiguration, &unk_100041A54);
  return ForEach<>.init(_:content:)();
}

uint64_t sub_1000359A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for LayoutConfiguration(0);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v44[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *(a2 + *(type metadata accessor for MeasurementList(0) + 24));
  *a3 = swift_getKeyPath();
  sub_100003090(&qword_10005A798, &qword_10003FD10);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for TripAppConfig(0);
  sub_100036524(&qword_10005A6E0, type metadata accessor for TripAppConfig, &unk_1000424C0);

  v12 = EnvironmentObject.init()();
  v14 = v13;
  v15 = type metadata accessor for TripMeasurementView(0);
  v16 = (a3 + v15[5]);
  *v16 = v12;
  v16[1] = v14;
  v17 = (a3 + v15[6]);
  type metadata accessor for CardCellConfiguration(0);
  sub_100036524(&unk_10005B688, type metadata accessor for CardCellConfiguration, &unk_100041A1C);
  *v17 = ObservedObject.init(wrappedValue:)();
  v17[1] = v18;
  *(a3 + v15[7]) = v11;
  *(a3 + v15[8]) = 0x3FF8000000000000;
  LOBYTE(v17) = static Edge.Set.leading.getter();
  sub_100035294(v9);
  sub_100008A08(&v9[*(v7 + 32)], v44);
  sub_1000086B4(v9);
  v19 = v45;
  v20 = v46;
  sub_100008A6C(v44, v45);
  (*(v20 + 64))(v19, v20);
  EdgeInsets.init(_all:)();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = a3 + *(sub_100003090(&qword_10005B9F0, &qword_100041EA0) + 36);
  *v29 = v17;
  *(v29 + 1) = v22;
  *(v29 + 2) = v24;
  *(v29 + 3) = v26;
  *(v29 + 4) = v28;
  v29[40] = 0;
  sub_1000085F8(v44);
  LOBYTE(v17) = static Edge.Set.trailing.getter();
  sub_100035294(v9);
  sub_100008A08(&v9[*(v7 + 32)], v44);
  sub_1000086B4(v9);
  v30 = v45;
  v31 = v46;
  sub_100008A6C(v44, v45);
  (*(v31 + 64))(v30, v31);
  EdgeInsets.init(_all:)();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v40 = a3 + *(sub_100003090(&qword_10005B960, &qword_100041298) + 36);
  *v40 = v17;
  *(v40 + 1) = v33;
  *(v40 + 2) = v35;
  *(v40 + 3) = v37;
  *(v40 + 4) = v39;
  v40[40] = 0;
  sub_1000085F8(v44);
  v41 = (a3 + *(sub_100003090(&qword_10005C840, &unk_100041E90) + 36));
  *v41 = v10;
  v41[1] = 0xD000000000000012;
  v41[2] = 0x8000000100042830;
}

__n128 sub_100035D10@<Q0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v2 = type metadata accessor for MeasurementStack(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  v24 = sub_100003090(&qword_10005C860, &qword_100041ED8) - 8;
  __chkstk_darwin(v24);
  v7 = &v23 - v6;
  v26 = sub_100003090(&qword_10005C868, &qword_100041EE0) - 8;
  __chkstk_darwin(v26);
  v25 = &v23 - v8;
  *v7 = static Alignment.center.getter();
  *(v7 + 1) = v9;
  *(v7 + 2) = 0x4024000000000000;
  v7[24] = 0;
  *(v7 + 4) = 0;
  v7[40] = 1;
  v10 = &v7[*(sub_100003090(&qword_10005C870, &qword_100041EE8) + 44)];
  *v10 = 0;
  v10[8] = 1;
  v23 = *(sub_100003090(&qword_10005C878, &qword_100041EF0) + 36);
  *&v35 = *(v1 + *(v3 + 28));
  sub_1000365D4(v1, &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MeasurementStack);
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = swift_allocObject();
  sub_10003656C(&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for MeasurementStack);

  sub_100003090(&qword_10005BA28, &qword_1000413F0);
  type metadata accessor for UUID();
  sub_100003090(&qword_10005C880, &qword_100041EF8);
  sub_100003894(&qword_10005BA30, &qword_10005BA28, &qword_1000413F0, &protocol conformance descriptor for [A]);
  sub_100036878();
  sub_100036524(&qword_10005BA50, type metadata accessor for CardCellConfiguration, &unk_100041A54);
  ForEach<>.init(_:content:)();
  *&v7[*(v24 + 44)] = static HorizontalAlignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v13 = v25;
  sub_100008944(v7, v25, &qword_10005C860, &qword_100041ED8);
  v14 = (v13 + *(v26 + 44));
  v15 = v33;
  v14[4] = v32;
  v14[5] = v15;
  v14[6] = v34;
  v16 = v29;
  *v14 = v28;
  v14[1] = v16;
  v17 = v31;
  v14[2] = v30;
  v14[3] = v17;
  static Alignment.top.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v18 = v27;
  sub_100008944(v13, v27, &qword_10005C868, &qword_100041EE0);
  v19 = v18 + *(sub_100003090(&qword_10005C8A0, &qword_100041F08) + 36);
  v20 = v40;
  *(v19 + 64) = v39;
  *(v19 + 80) = v20;
  *(v19 + 96) = v41;
  v21 = v36;
  *v19 = v35;
  *(v19 + 16) = v21;
  result = v38;
  *(v19 + 32) = v37;
  *(v19 + 48) = result;
  return result;
}

double sub_1000361E4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + *(type metadata accessor for MeasurementStack(0) + 24));
  *a3 = swift_getKeyPath();
  sub_100003090(&qword_10005A798, &qword_10003FD10);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for TripAppConfig(0);
  sub_100036524(&qword_10005A6E0, type metadata accessor for TripAppConfig, &unk_1000424C0);

  v6 = EnvironmentObject.init()();
  v8 = v7;
  v9 = type metadata accessor for TripMeasurementView(0);
  v10 = (a3 + v9[5]);
  *v10 = v6;
  v10[1] = v8;
  v11 = (a3 + v9[6]);
  type metadata accessor for CardCellConfiguration(0);
  sub_100036524(&unk_10005B688, type metadata accessor for CardCellConfiguration, &unk_100041A1C);
  *v11 = ObservedObject.init(wrappedValue:)();
  v11[1] = v12;
  *(a3 + v9[7]) = v5;
  *(a3 + v9[8]) = 0x3FF8000000000000;
  v13 = (a3 + *(sub_100003090(&qword_10005C898, &qword_100041F00) + 36));
  *v13 = v4;
  v13[1] = 0xD000000000000012;
  v13[2] = 0x8000000100042830;

  _FrameLayout.init(width:height:alignment:)();
  v14 = (a3 + *(sub_100003090(&qword_10005C880, &qword_100041EF8) + 36));
  *v14 = v16;
  v14[1] = v17;
  result = *&v18;
  v14[2] = v18;
  return result;
}

unint64_t sub_100036464()
{
  result = qword_10005C848;
  if (!qword_10005C848)
  {
    sub_1000036BC(&qword_10005C840, &unk_100041E90);
    sub_100029A94();
    sub_100003894(&qword_10005C850, &qword_10005C858, &qword_100041EA8, &unk_10003FBC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C848);
  }

  return result;
}

uint64_t sub_100036524(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10003656C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000365D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100036654(uint64_t (*a1)(void))
{
  v2 = *(a1(0) - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  sub_100003090(&qword_10005A798, &qword_10003FD10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for CAFUIAppPresentationMode();
    (*(*(v6 - 8) + 8))(v1 + v4, v6);
    v7 = type metadata accessor for LayoutConfiguration(0);

    sub_1000085F8((v1 + v4 + *(v7 + 24)));
  }

  else
  {
  }

  return _swift_deallocObject(v1, v4 + v5, v3 | 7);
}

uint64_t sub_1000367E0(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

unint64_t sub_100036878()
{
  result = qword_10005C888;
  if (!qword_10005C888)
  {
    sub_1000036BC(&qword_10005C880, &qword_100041EF8);
    sub_100036904();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C888);
  }

  return result;
}

unint64_t sub_100036904()
{
  result = qword_10005C890;
  if (!qword_10005C890)
  {
    sub_1000036BC(&qword_10005C898, &qword_100041F00);
    sub_100036524(&qword_10005BA48, type metadata accessor for TripMeasurementView, &unk_100040F34);
    sub_100003894(&qword_10005C850, &qword_10005C858, &qword_100041EA8, &unk_10003FBC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C890);
  }

  return result;
}

unint64_t sub_1000369F0()
{
  result = qword_10005C8A8;
  if (!qword_10005C8A8)
  {
    sub_1000036BC(&qword_10005C830, &qword_100041E80);
    sub_100036A7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C8A8);
  }

  return result;
}

unint64_t sub_100036A7C()
{
  result = qword_10005C8B0;
  if (!qword_10005C8B0)
  {
    sub_1000036BC(&qword_10005C818, &qword_100041E70);
    sub_100003894(&qword_10005C8B8, &qword_10005C810, &qword_100041E68, &protocol conformance descriptor for ScrollView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C8B0);
  }

  return result;
}

unint64_t sub_100036B38()
{
  result = qword_10005C8C0;
  if (!qword_10005C8C0)
  {
    sub_1000036BC(&qword_10005C8A0, &qword_100041F08);
    sub_100036BC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C8C0);
  }

  return result;
}

unint64_t sub_100036BC4()
{
  result = qword_10005C8C8;
  if (!qword_10005C8C8)
  {
    sub_1000036BC(&qword_10005C868, &qword_100041EE0);
    sub_100036C50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C8C8);
  }

  return result;
}

unint64_t sub_100036C50()
{
  result = qword_10005C8D0;
  if (!qword_10005C8D0)
  {
    sub_1000036BC(&qword_10005C860, &qword_100041ED8);
    sub_100003894(&qword_10005C8D8, &qword_10005C8E0, &unk_100041F10, &protocol conformance descriptor for Grid<A>);
    sub_100036D08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C8D0);
  }

  return result;
}

unint64_t sub_100036D08()
{
  result = qword_10005C8E8;
  if (!qword_10005C8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C8E8);
  }

  return result;
}

uint64_t sub_100036D98(uint64_t a1)
{
  *(v1 + 16) = xmmword_100041F20;
  *(v1 + 32) = xmmword_100041F30;
  *(v1 + 48) = xmmword_100041F40;
  *(v1 + 64) = xmmword_100041F50;
  *(v1 + 80) = static Color.primary.getter();
  *(v1 + 88) = 0x4038000000000000;
  v2 = objc_opt_self();
  v3 = [v2 systemFontOfSize:34.0 weight:UIFontWeightMedium];
  v4 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleCallout];
  v5 = [v4 scaledFontForFont:v3];

  *(v1 + 96) = Font.init(_:)();
  v6 = [v2 systemFontOfSize:34.0 weight:UIFontWeightMedium];
  v7 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleCallout];
  v8 = [v7 scaledFontForFont:v6];

  *(v1 + 104) = Font.init(_:)();
  v9 = [v2 systemFontOfSize:20.0 weight:UIFontWeightMedium];
  v10 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleCallout];
  v11 = [v10 scaledFontForFont:v9];

  *(v1 + 112) = Font.init(_:)();
  *(v1 + 120) = static Color.primary.getter();
  v12 = [v2 systemFontOfSize:14.0 weight:UIFontWeightRegular];
  v13 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleCaption1];
  v14 = [v13 scaledFontForFont:v12];

  *(v1 + 128) = Font.init(_:)();
  v15 = [objc_opt_self() systemGrayColor];
  *(v1 + 136) = Color.init(uiColor:)();
  *(v1 + 144) = 0x4000000000000000;
  return v1;
}

uint64_t sub_10003707C()
{
  v1 = sub_100003090(&qword_10005A870, &qword_100040B80);
  __chkstk_darwin(v1 - 8);
  v3 = &v12 - v2;
  *(v0 + 16) = xmmword_100041F60;
  *(v0 + 32) = xmmword_100041F70;
  *(v0 + 48) = xmmword_100041F80;
  *(v0 + 64) = xmmword_100041F90;
  *(v0 + 80) = static Color.primary.getter();
  *(v0 + 88) = 0x4034000000000000;
  static Font.Weight.bold.getter();
  v4 = type metadata accessor for Font.Design();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 1, 1, v4);
  v6 = static Font.system(size:weight:design:)();
  sub_100037844(v3);
  *(v0 + 96) = v6;
  static Font.Weight.bold.getter();
  v5(v3, 1, 1, v4);
  v7 = static Font.system(size:weight:design:)();
  sub_100037844(v3);
  *(v0 + 104) = v7;
  static Font.Weight.bold.getter();
  v5(v3, 1, 1, v4);
  v8 = static Font.system(size:weight:design:)();
  sub_100037844(v3);
  *(v0 + 112) = v8;
  *(v0 + 120) = static Color.primary.getter();
  static Font.Weight.regular.getter();
  v5(v3, 1, 1, v4);
  v9 = static Font.system(size:weight:design:)();
  sub_100037844(v3);
  *(v0 + 128) = v9;
  v10 = [objc_opt_self() systemGrayColor];
  *(v0 + 136) = Color.init(uiColor:)();
  *(v0 + 144) = 0x4000000000000000;
  return v0;
}

void sub_100037304(double a1, double a2, double a3, double a4)
{
  v5 = *v4;
  v5[5] = a1;
  v5[6] = a2;
  v5[7] = a3;
  v5[8] = a4;
}

double sub_100037340(uint64_t a1)
{
  *(*v1 + 104) = a1;

  return result;
}