void sub_1000809FC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC8AppStore41AppEventLiveIndicatorAnimationCoordinator_sleepTimer);
    *(Strong + OBJC_IVAR____TtC8AppStore41AppEventLiveIndicatorAnimationCoordinator_sleepTimer) = 0;
    v4 = Strong;
    [v3 invalidate];
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v7 = v5;
    sub_100080AA4(v5, v6);
  }
}

void sub_100080AA4(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC8AppStore41AppEventLiveIndicatorAnimationCoordinator_animatingViews;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if ((v5 & 0xC000000000000001) == 0)
  {
    if (*(v5 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_10008058C();
    return;
  }

  v6 = __CocoaSet.count.getter();

  if (!v6)
  {
    goto LABEL_6;
  }

LABEL_3:
  *(v2 + OBJC_IVAR____TtC8AppStore41AppEventLiveIndicatorAnimationCoordinator_animationPhase) = 1;
  v7 = *(v2 + v4);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = ObjectType;
  v9 = objc_allocWithZone(UIViewPropertyAnimator);
  v21 = sub_100084634;
  v22 = v8;
  aBlock = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_100007A08;
  v20 = &unk_1008B29D0;
  v10 = _Block_copy(&aBlock);

  v11 = [v9 initWithDuration:v10 controlPoint1:0.6 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
  _Block_release(v10);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = sub_100083228;
  v22 = v12;
  aBlock = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_10007FFE8;
  v20 = &unk_1008B29F8;
  v13 = _Block_copy(&aBlock);

  [v11 addCompletion:v13];
  _Block_release(v13);
  v14 = *(v2 + OBJC_IVAR____TtC8AppStore41AppEventLiveIndicatorAnimationCoordinator_currentAnimator);
  *(v2 + OBJC_IVAR____TtC8AppStore41AppEventLiveIndicatorAnimationCoordinator_currentAnimator) = v11;
  if (v14)
  {
    v15 = v11;
    [v14 stopAnimation:1];
  }

  else
  {
    v16 = v11;
  }

  [v11 startAnimation];
}

void sub_100080D48(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_100080DB0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC8AppStore41AppEventLiveIndicatorAnimationCoordinator_animatingViews;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if ((v5 & 0xC000000000000001) == 0)
  {
    if (*(v5 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_10008058C();
    return;
  }

  v6 = __CocoaSet.count.getter();

  if (!v6)
  {
    goto LABEL_6;
  }

LABEL_3:
  *(v2 + OBJC_IVAR____TtC8AppStore41AppEventLiveIndicatorAnimationCoordinator_animationPhase) = 2;
  v7 = *(v2 + v4);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = ObjectType;
  v9 = objc_allocWithZone(UIViewPropertyAnimator);
  v21 = sub_100084638;
  v22 = v8;
  aBlock = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_100007A08;
  v20 = &unk_1008B2A48;
  v10 = _Block_copy(&aBlock);

  v11 = [v9 initWithDuration:v10 controlPoint1:0.6 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
  _Block_release(v10);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = sub_100083258;
  v22 = v12;
  aBlock = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_10007FFE8;
  v20 = &unk_1008B2A70;
  v13 = _Block_copy(&aBlock);

  [v11 addCompletion:v13];
  _Block_release(v13);
  v14 = *(v2 + OBJC_IVAR____TtC8AppStore41AppEventLiveIndicatorAnimationCoordinator_currentAnimator);
  *(v2 + OBJC_IVAR____TtC8AppStore41AppEventLiveIndicatorAnimationCoordinator_currentAnimator) = v11;
  if (v14)
  {
    v15 = v11;
    [v14 stopAnimation:1];
  }

  else
  {
    v16 = v11;
  }

  [v11 startAnimation];
}

void sub_100081054(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  if (!a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      a3();
    }
  }
}

void sub_1000810BC(uint64_t a1, double a2)
{
  v3 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100005744(0, &qword_100972EB0, UIView_ptr);
    sub_100081618();
    Set.Iterator.init(_cocoa:)();
    v3 = v17;
    v4 = v18;
    v5 = v19;
    v6 = v20;
    v7 = v21;
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

  if (v3 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v11 = v6;
    v12 = v7;
    v13 = v6;
    if (!v7)
    {
      break;
    }

LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v3 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_18:
      sub_100081680(v3);
      return;
    }

    while (1)
    {
      [v15 setAlpha:a2];

      v6 = v13;
      v7 = v14;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        sub_100005744(0, &qword_100972EB0, UIView_ptr);
        swift_dynamicCast();
        v15 = v16;
        v13 = v6;
        v14 = v7;
        if (v16)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v5 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v12 = *(v4 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_1000812B4()
{
  v1 = OBJC_IVAR____TtC8AppStore41AppEventLiveIndicatorAnimationCoordinator_animatingViews;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if ((v2 & 0xC000000000000001) != 0)
  {

    v3 = __CocoaSet.count.getter();

    if (!v3)
    {
      return;
    }
  }

  else if (!*(v2 + 16))
  {
    return;
  }

  if (*(v0 + OBJC_IVAR____TtC8AppStore41AppEventLiveIndicatorAnimationCoordinator_animationPhase) == 3 && !UIAccessibilityIsReduceMotionEnabled())
  {
    sub_100080800();
  }
}

uint64_t getEnumTagSinglePayload for GradientView.Kind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GradientView.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000815C4()
{
  result = qword_100972688;
  if (!qword_100972688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100972688);
  }

  return result;
}

unint64_t sub_100081618()
{
  result = qword_100972690;
  if (!qword_100972690)
  {
    sub_100005744(255, &qword_100972EB0, UIView_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100972690);
  }

  return result;
}

uint64_t sub_100081688(uint64_t *a1, void *a2)
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

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      sub_100005744(0, &qword_100972EB0, UIView_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1002C74A8(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      sub_1002C7698(v20 + 1);
    }

    v18 = v8;
    sub_1002C80A8(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_100005744(0, &qword_100972EB0, UIView_ptr);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_100081E2C(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_1000818C0(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();

  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;
      if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
      {

        goto LABEL_12;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v16)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v20 = *(*(v6 + 48) + 8 * v9);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    v18 = a2;
    sub_100081F9C(v18, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v22;
    *a1 = v18;
    return 1;
  }
}

uint64_t sub_100081A6C(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = static Hasher._hash(seed:_:)();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
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
    sub_100082184(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_100081B4C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for AdamId();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100084228(&qword_100970CD8, &type metadata accessor for AdamId, &protocol conformance descriptor for AdamId);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_100084228(&qword_100972728, &type metadata accessor for AdamId, &protocol conformance descriptor for AdamId);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1000822A4(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

void sub_100081E2C(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1002C7698(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1002C812C();
      goto LABEL_12;
    }

    sub_100082548(v6 + 1);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_100005744(0, &qword_100972EB0, UIView_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_100081F9C(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_1002C78C0(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      sub_1002C827C();
      goto LABEL_16;
    }

    sub_10008275C(v7 + 1);
  }

  v9 = *v3;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v10 = Hasher._finalize()();

  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for ActivityType(0);
    do
    {
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;
      if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
      {
        goto LABEL_19;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = a1;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_100082184(uint64_t result, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1002C7B3C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_1002C83CC();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1000829B0(v5 + 1);
  }

  v8 = *v3;
  v9 = static Hasher._hash(seed:_:)();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != result)
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

uint64_t sub_1000822A4(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = type metadata accessor for AdamId();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1002C7D60(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1002C850C();
      goto LABEL_12;
    }

    sub_100082BA0(v11 + 1);
  }

  v13 = *v3;
  sub_100084228(&qword_100970CD8, &type metadata accessor for AdamId, &protocol conformance descriptor for AdamId);
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_100084228(&qword_100972728, &type metadata accessor for AdamId, &protocol conformance descriptor for AdamId);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100082548(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10002849C(&qword_100972698, &qword_1007B32E0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v26 = v1;
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
      v16 = *(v5 + 40);
      v17 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      v18 = NSObject._rawHashValue(seed:)(v16);
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v11 + 8 * v21);
          if (v25 != -1)
          {
            v12 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v17;
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

        v2 = v26;
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

void sub_10008275C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10002849C(&qword_1009726A8, &qword_1007B32F0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
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
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v18 = v17;
      String.hash(into:)();
      v19 = Hasher._finalize()();

      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v18;
      ++*(v5 + 16);
      v3 = v28;
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

        v2 = v27;
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

void sub_1000829B0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10002849C(&qword_1009726F0, &qword_1007B3310);
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
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      v17 = static Hasher._hash(seed:_:)();
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

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
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
        goto LABEL_24;
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
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }
}

void sub_100082BA0(uint64_t a1)
{
  v2 = v1;
  v34 = type metadata accessor for AdamId();
  v3 = *(v34 - 8);
  __chkstk_darwin(v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_10002849C(&qword_100982C40, qword_1007B3330);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_100084228(&qword_100970CD8, &type metadata accessor for AdamId, &protocol conformance descriptor for AdamId);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }
}

void *sub_100082EBC(uint64_t a1)
{
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_10002849C(&qword_1009726C8, &qword_1007B3300);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_100084228(&qword_1009726D0, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_100084228(&qword_1009726D8, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return _swiftEmptySetSingleton;
}

Swift::Int sub_100083288(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10002849C(&qword_1009726A0, &qword_1007B32E8);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 8 * v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + 8 * v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return _swiftEmptySetSingleton;
}

void *sub_1000833C4(uint64_t a1)
{
  v2 = type metadata accessor for Shelf.ContentType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_10002849C(&qword_100972710, &qword_1007B3320);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_100084228(&qword_100972718, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_100084228(&qword_100972720, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return _swiftEmptySetSingleton;
}

void sub_1000836E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10002849C(&qword_1009726A8, &qword_1007B32F0);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v24 = v1;
    v25 = a1 + 32;
    v6 = v1;
    do
    {
      v7 = *(v25 + 8 * v4);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v26 = v7;
      String.hash(into:)();
      v8 = Hasher._finalize()();

      v9 = -1 << *(v3 + 32);
      v10 = v8 & ~v9;
      v11 = v10 >> 6;
      v12 = *(v5 + 8 * (v10 >> 6));
      v13 = 1 << v10;
      if (((1 << v10) & v12) == 0)
      {
        goto LABEL_15;
      }

      v14 = ~v9;
      do
      {
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;
        if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
        {

LABEL_4:
          v6 = v24;
          goto LABEL_5;
        }

        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v20)
        {

          goto LABEL_4;
        }

        v10 = (v10 + 1) & v14;
        v11 = v10 >> 6;
        v12 = *(v5 + 8 * (v10 >> 6));
        v13 = 1 << v10;
      }

      while (((1 << v10) & v12) != 0);
      v6 = v24;
LABEL_15:
      *(v5 + 8 * v11) = v13 | v12;
      *(*(v3 + 48) + 8 * v10) = v26;
      v21 = *(v3 + 16);
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        __break(1u);
        return;
      }

      *(v3 + 16) = v23;
LABEL_5:
      ++v4;
    }

    while (v4 != v6);
  }
}

void sub_1000838FC(unint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, void *a5)
{
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    v10 = a3;
    v11 = a2;
    v12 = _CocoaArrayWrapper.endIndex.getter();
    a2 = v11;
    a3 = v10;
    if (v12)
    {
LABEL_3:
      sub_10002849C(a2, a3);
      v7 = static _SetStorage.allocate(capacity:)();
      v8 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v6)
      {
        goto LABEL_4;
      }

LABEL_8:
      v9 = _CocoaArrayWrapper.endIndex.getter();
      if (!v9)
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

  v7 = _swiftEmptySetSingleton;
  v8 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v6)
  {
    goto LABEL_8;
  }

LABEL_4:
  v9 = *(v8 + 16);
  if (!v9)
  {
    return;
  }

LABEL_9:
  v13 = v7 + 7;
  v46 = v9;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v14 = 0;
    while (1)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v16 = __OFADD__(v14++, 1);
      if (v16)
      {
        break;
      }

      v17 = v15;
      v18 = NSObject._rawHashValue(seed:)(v7[5]);
      v19 = -1 << *(v7 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      v22 = v13[v20 >> 6];
      v23 = 1 << v20;
      if (((1 << v20) & v22) != 0)
      {
        v24 = ~v19;
        sub_100005744(0, a4, a5);
        while (1)
        {
          v25 = *(v7[6] + 8 * v20);
          v26 = static NSObject.== infix(_:_:)();

          if (v26)
          {
            break;
          }

          v20 = (v20 + 1) & v24;
          v21 = v20 >> 6;
          v22 = v13[v20 >> 6];
          v23 = 1 << v20;
          if (((1 << v20) & v22) == 0)
          {
            v9 = v46;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v9 = v46;
        if (v14 == v46)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        v13[v21] = v23 | v22;
        *(v7[6] + 8 * v20) = v17;
        v27 = v7[2];
        v16 = __OFADD__(v27, 1);
        v28 = v27 + 1;
        if (v16)
        {
          goto LABEL_32;
        }

        v7[2] = v28;
        if (v14 == v9)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v29 = 0;
    v43 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v29 != v43)
    {
      v30 = v7[5];
      v31 = *(a1 + 32 + 8 * v29);
      v32 = NSObject._rawHashValue(seed:)(v30);
      v33 = -1 << *(v7 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      v36 = v13[v34 >> 6];
      v37 = 1 << v34;
      if (((1 << v34) & v36) != 0)
      {
        v38 = ~v33;
        sub_100005744(0, a4, a5);
        while (1)
        {
          v39 = *(v7[6] + 8 * v34);
          v40 = static NSObject.== infix(_:_:)();

          if (v40)
          {
            break;
          }

          v34 = (v34 + 1) & v38;
          v35 = v34 >> 6;
          v36 = v13[v34 >> 6];
          v37 = 1 << v34;
          if (((1 << v34) & v36) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        v13[v35] = v37 | v36;
        *(v7[6] + 8 * v34) = v31;
        v41 = v7[2];
        v16 = __OFADD__(v41, 1);
        v42 = v41 + 1;
        if (v16)
        {
          goto LABEL_34;
        }

        v7[2] = v42;
      }

      if (++v29 == v46)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void *sub_100083BE8(uint64_t a1)
{
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_10002849C(&unk_100982BD0, &qword_1007B3328);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_100084228(&qword_100970D38, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_100084228(&qword_10098B750, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return _swiftEmptySetSingleton;
}

void *sub_100083F08(uint64_t a1)
{
  v2 = type metadata accessor for MetricsFieldInclusionRequest();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_10002849C(&qword_1009726B0, &qword_1007B32F8);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_100084228(&qword_1009726B8, &type metadata accessor for MetricsFieldInclusionRequest, &protocol conformance descriptor for MetricsFieldInclusionRequest);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_100084228(&qword_1009726C0, &type metadata accessor for MetricsFieldInclusionRequest, &protocol conformance descriptor for MetricsFieldInclusionRequest);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return _swiftEmptySetSingleton;
}

uint64_t sub_100084228(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100084270(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_10002849C(&qword_1009726F8, &qword_1007B3318);
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

  v3 = _swiftEmptySetSingleton;
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
  v7 = v3 + 7;
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
    sub_100084228(&qword_100972700, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
    v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v11 = -1 << *(v3 + 32);
    v12 = v10 & ~v11;
    v13 = v12 >> 6;
    v14 = v7[v12 >> 6];
    v15 = 1 << v12;
    if (((1 << v12) & v14) != 0)
    {
      v16 = ~v11;
      sub_100084228(&qword_100972708, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
      while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
      {
        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = v7[v12 >> 6];
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
      v7[v13] = v15 | v14;
      *(v3[6] + 8 * v12) = v8;
      v17 = v3[2];
      v9 = __OFADD__(v17, 1);
      v18 = v17 + 1;
      if (v9)
      {
        goto LABEL_26;
      }

      v3[2] = v18;
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

uint64_t sub_100084504(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10002849C(&qword_1009726F0, &qword_1007B3310);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    v7 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v11 = *(v6 + 8 * v4);
      result = static Hasher._hash(seed:_:)();
      v13 = result & v7;
      v14 = (result & v7) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v7);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 8 * v13) != v11)
        {
          v13 = (v13 + 1) & v7;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + 8 * v13) = v11;
        v8 = *(v3 + 16);
        v9 = __OFADD__(v8, 1);
        v10 = v8 + 1;
        if (v9)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v10;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return _swiftEmptySetSingleton;
}

char *sub_100084654(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  ObjectType = swift_getObjectType();
  v13 = type metadata accessor for UICornerConfiguration();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for DirectionalTextAlignment();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v18 - 8);
  v20 = &v45 - v19;
  v21 = OBJC_IVAR____TtC8AppStore21GuidedSearchTokenCell_label;
  if (qword_10096CF50 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for FontUseCase();
  v23 = sub_1000056A8(v22, qword_1009CDB68);
  v24 = *(v22 - 8);
  (*(v24 + 16))(v20, v23, v22);
  (*(v24 + 56))(v20, 0, 1, v22);
  (*(v15 + 104))(v17, enum case for DirectionalTextAlignment.none(_:), v14);
  v25 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *&v7[v21] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v26 = OBJC_IVAR____TtC8AppStore21GuidedSearchTokenCell_closeImage;
  *&v7[v26] = [objc_allocWithZone(UIImageView) init];
  v7[OBJC_IVAR____TtC8AppStore21GuidedSearchTokenCell_isOn] = 0;
  v27 = [objc_allocWithZone(UIGlassEffect) init];
  *&v7[OBJC_IVAR____TtC8AppStore21GuidedSearchTokenCell_glassEffect] = v27;
  v28 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v27];
  *&v7[OBJC_IVAR____TtC8AppStore21GuidedSearchTokenCell_pill] = v28;
  v45.receiver = v7;
  v45.super_class = ObjectType;
  v29 = objc_msgSendSuper2(&v45, "initWithFrame:", a1, a2, a3, a4);
  v30 = OBJC_IVAR____TtC8AppStore21GuidedSearchTokenCell_pill;
  v31 = *&v29[OBJC_IVAR____TtC8AppStore21GuidedSearchTokenCell_pill];
  v32 = v29;
  v33 = v31;
  static UICornerConfiguration.capsule(maximumRadius:)();
  UIView.cornerConfiguration.setter();

  v34 = [v32 contentView];
  [v34 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v35 = [v32 contentView];
  [v35 addSubview:*&v29[v30]];

  v36 = [*&v29[v30] contentView];
  [v36 addSubview:*&v32[OBJC_IVAR____TtC8AppStore21GuidedSearchTokenCell_label]];

  v37 = [*&v29[v30] contentView];
  v38 = OBJC_IVAR____TtC8AppStore21GuidedSearchTokenCell_closeImage;
  [v37 addSubview:*&v32[OBJC_IVAR____TtC8AppStore21GuidedSearchTokenCell_closeImage]];

  sub_100084BF8();
  sub_10002849C(&qword_10097B110, &unk_1007B27C0);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1007B10D0;
  *(v39 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
  *(v39 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  v40 = v32;
  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v41 = *&v32[v38];
  v42 = [v40 traitCollection];

  v43 = sub_100085B8C();
  [v41 setImage:v43];

  sub_100005744(0, &qword_100972780, UITraitCollection_ptr);
  static UITraitCollection.systemTraitsAffectingImageLookup.getter();
  *(swift_allocObject() + 16) = ObjectType;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v40;
}

void sub_100084BF8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8AppStore21GuidedSearchTokenCell_isOn;
  if (v0[OBJC_IVAR____TtC8AppStore21GuidedSearchTokenCell_isOn] == 1)
  {
    v13 = [objc_opt_self() systemBlueColor];
  }

  else
  {
    v13 = 0;
  }

  v3 = *&v0[OBJC_IVAR____TtC8AppStore21GuidedSearchTokenCell_glassEffect];
  v4 = [v3 tintColor];
  if (v4)
  {
    v5 = v4;
    if (v13)
    {
      sub_100005744(0, &qword_100970180, UIColor_ptr);
      v6 = v13;
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }

LABEL_11:
    [v3 setTintColor:v13];
    [*&v1[OBJC_IVAR____TtC8AppStore21GuidedSearchTokenCell_pill] setEffect:v3];
    goto LABEL_12;
  }

  if (v13)
  {
    goto LABEL_11;
  }

LABEL_12:
  if (v1[v2] == 1)
  {
    v8 = [objc_opt_self() whiteColor];
  }

  else
  {
    sub_100005744(0, &qword_100970180, UIColor_ptr);
    v8 = static UIColor.primaryText.getter();
  }

  v9 = *&v1[OBJC_IVAR____TtC8AppStore21GuidedSearchTokenCell_label];
  v10 = v8;
  [v9 setTextColor:v10];
  v11 = *&v1[OBJC_IVAR____TtC8AppStore21GuidedSearchTokenCell_closeImage];
  v12 = 0.0;
  if (v1[v2])
  {
    v12 = 1.0;
  }

  [*&v1[OBJC_IVAR____TtC8AppStore21GuidedSearchTokenCell_closeImage] setAlpha:v12];
  [v11 setTintColor:v10];

  [v1 setNeedsDisplay];
  [v1 setNeedsLayout];
}

id sub_100084E28(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC8AppStore21GuidedSearchTokenCell_closeImage];
  v3 = [a1 traitCollection];
  v4 = sub_100085B8C();

  [v2 setImage:v4];

  return [a1 setNeedsLayout];
}

id sub_100084F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v34 = type metadata accessor for AutomationSemantics();
  v12 = *(v34 - 8);
  __chkstk_darwin(v34);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v31 - v16;
  __chkstk_darwin(v18);
  v32 = a1;
  v33 = &v31 - v19;
  v20 = *&v6[OBJC_IVAR____TtC8AppStore21GuidedSearchTokenCell_label];
  v21 = sub_1005569FC(a1, a2, a3, a4, v6);
  [v20 setAttributedText:v21];

  v22 = v6[OBJC_IVAR____TtC8AppStore21GuidedSearchTokenCell_isOn];
  v6[OBJC_IVAR____TtC8AppStore21GuidedSearchTokenCell_isOn] = a5;
  if (v22 != (a5 & 1))
  {
    sub_100084BF8();
  }

  v39 = &type metadata for String;
  v36 = a3;
  v37 = a4;
  memset(v35, 0, sizeof(v35));

  static AutomationSemantics.shelfItem(itemKind:id:parentId:)();
  sub_10003D444(v35);
  sub_10003D444(&v36);
  if (a2)
  {
    v23 = &type metadata for String;
    v24 = a2;
    v25 = v32;
  }

  else
  {
    v25 = 0;
    v24 = 0;
    v23 = 0;
    v38 = 0;
  }

  v36 = v25;
  v37 = v24;
  v39 = v23;

  AutomationSemantics.attribute(key:value:)();
  v26 = *(v12 + 8);
  v27 = v14;
  v28 = v34;
  v26(v27, v34);
  sub_10003D444(&v36);
  v39 = &type metadata for Bool;
  LOBYTE(v36) = a5 & 1;
  v29 = v33;
  AutomationSemantics.attribute(key:value:)();
  v26(v17, v28);
  sub_10003D444(&v36);
  UIView.setAutomationSemantics(_:)();
  v26(v29, v28);
  return [v6 setNeedsLayout];
}

id sub_1000851E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for FloatingPointRoundingRule();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LabelPlaceholderCompatibility();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59.receiver = v3;
  v59.super_class = ObjectType;
  objc_msgSendSuper2(&v59, "layoutSubviews", v11);
  v55 = *&v3[OBJC_IVAR____TtC8AppStore21GuidedSearchTokenCell_label];
  v14 = [v55 attributedText];
  LODWORD(v54) = v3[OBJC_IVAR____TtC8AppStore21GuidedSearchTokenCell_isOn];
  v15 = [v3 contentView];
  [v15 bounds];

  sub_100005744(0, &qword_1009730E0, UIFont_ptr);
  v16 = qword_10096CF50;
  v53 = v14;
  if (v16 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for FontUseCase();
  sub_1000056A8(v17, qword_1009CDB68);
  static UIFont.preferredFont(forUseWith:in:)();
  v18 = type metadata accessor for Feature();
  v57 = v18;
  v58 = sub_100085D7C();
  v19 = sub_1000056E0(v56);
  (*(*(v18 - 8) + 104))(v19, enum case for Feature.measurement_with_labelplaceholder(_:), v18);
  isFeatureEnabled(_:)();
  sub_100007000(v56);
  LabelPlaceholderCompatibility.init(attributedText:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  (*(v10 + 8))(v13, v9);
  sub_10002A400(v56, v57);
  Measurable.measuredSize(fitting:in:)();
  CGSize.adding(outsets:)();
  (*(v6 + 104))(v8, enum case for FloatingPointRoundingRule.up(_:), v5);
  CGSize.rounded(_:)();
  v21 = v20;
  v23 = v22;
  (*(v6 + 8))(v8, v5);
  v24 = [v3 traitCollection];
  v25 = sub_100085B8C();

  if (LODWORD(v54))
  {
    [v25 size];
    v27 = v26;

    v28 = v27 + 5.0;
  }

  else
  {

    v28 = 0.0;
  }

  v29 = v21 + v28;
  sub_100007000(v56);

  v30 = *&v3[OBJC_IVAR____TtC8AppStore21GuidedSearchTokenCell_pill];
  v31 = [v3 contentView];
  [v31 frame];

  v32 = v29;
  v33 = fmax(v23, 40.0);
  CGRect.withLayoutDirection(in:relativeTo:)();
  [v30 setFrame:?];
  v54 = v32;
  v34 = sub_100085DD4(0.0);
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v41 = v55;
  [v55 sizeThatFits:{v37, v39}];
  v53 = v42;
  v44 = v43;
  v60.origin.x = v34;
  v60.origin.y = v36;
  v60.size.width = v38;
  v60.size.height = v40;
  MinX = CGRectGetMinX(v60);
  v61.origin.x = 0.0;
  v61.origin.y = 0.0;
  v61.size.width = v32;
  v61.size.height = v33;
  v46 = floor((CGRectGetHeight(v61) - v44) * 0.5);
  v47 = [v3 contentView];
  [v47 frame];

  v48 = *&v53;
  CGRect.withLayoutDirection(in:relativeTo:)();
  [v41 setFrame:?];
  v49 = *&v3[OBJC_IVAR____TtC8AppStore21GuidedSearchTokenCell_closeImage];
  v50 = v54;
  [v49 sizeThatFits:{v54, v33}];
  v62.origin.x = MinX;
  v62.origin.y = v46;
  v62.size.width = v48;
  v62.size.height = v44;
  CGRectGetMaxX(v62);
  v63.origin.x = 0.0;
  v63.origin.y = 0.0;
  v63.size.width = v50;
  v63.size.height = v33;
  CGRectGetHeight(v63);
  v51 = [v3 contentView];
  [v51 frame];

  CGRect.withLayoutDirection(in:relativeTo:)();
  return [v49 setFrame:?];
}

void sub_1000858B4(void *a1)
{
  type metadata accessor for GuidedSearchTokenPaletteCollectionViewLayout.LayoutAttributes();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR____TtCC8AppStore44GuidedSearchTokenPaletteCollectionViewLayout16LayoutAttributes_animation);
    if (v4)
    {
      v8 = a1;
      v5 = v4;
      v6 = [v1 layer];
      v7 = String._bridgeToObjectiveC()();
      [v6 addAnimation:v5 forKey:v7];
    }
  }
}

uint64_t sub_100085AA0()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009CDB68);
  v1 = sub_1000056A8(v0, qword_1009CDB68);
  if (qword_10096E1A0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000056A8(v0, qword_1009D1460);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_100085B8C()
{
  v0 = type metadata accessor for SystemImage();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for SystemImage.xmark(_:), v0, v2);
  sub_100005744(0, &qword_1009730E0, UIFont_ptr);
  if (qword_10096E1A8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  sub_1000056A8(v5, qword_1009D1478);
  v6 = [objc_opt_self() currentTraitCollection];
  v7 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v8 = [objc_opt_self() configurationWithFont:v7 scale:-1];
  v9 = static SystemImage.load(_:with:)();

  (*(v1 + 8))(v4, v0);
  v10 = [v9 imageWithRenderingMode:2];

  return v10;
}

unint64_t sub_100085D7C()
{
  result = qword_100972E50;
  if (!qword_100972E50)
  {
    type metadata accessor for Feature();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100972E50);
  }

  return result;
}

void sub_100085DF8()
{
  v1 = v0;
  v2 = type metadata accessor for DirectionalTextAlignment();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = OBJC_IVAR____TtC8AppStore21GuidedSearchTokenCell_label;
  if (qword_10096CF50 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for FontUseCase();
  v11 = sub_1000056A8(v10, qword_1009CDB68);
  v12 = *(v10 - 8);
  (*(v12 + 16))(v8, v11, v10);
  (*(v12 + 56))(v8, 0, 1, v10);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v13 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *(v1 + v9) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v14 = OBJC_IVAR____TtC8AppStore21GuidedSearchTokenCell_closeImage;
  *(v1 + v14) = [objc_allocWithZone(UIImageView) init];
  *(v1 + OBJC_IVAR____TtC8AppStore21GuidedSearchTokenCell_isOn) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_10008607C(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC8AppStore23MultiCornerGradientView_colors] = _swiftEmptyArrayStorage;
  v9 = OBJC_IVAR____TtC8AppStore23MultiCornerGradientView_baseGradientView;
  v10 = type metadata accessor for GradientView();
  *&v4[v9] = [objc_allocWithZone(v10) init];
  v11 = OBJC_IVAR____TtC8AppStore23MultiCornerGradientView_secondaryGradientView;
  *&v4[v11] = [objc_allocWithZone(v10) init];
  v12 = OBJC_IVAR____TtC8AppStore23MultiCornerGradientView_secondaryGradientMaskView;
  *&v4[v12] = [objc_allocWithZone(v10) init];
  v13 = OBJC_IVAR____TtC8AppStore23MultiCornerGradientView_bottomRightOverlayView;
  *&v4[v13] = [objc_allocWithZone(v10) init];
  v20.receiver = v4;
  v20.super_class = type metadata accessor for MultiCornerGradientView();
  v14 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  v15 = [v14 layer];
  v16 = [objc_opt_self() mainScreen];
  [v16 scale];
  v18 = v17;

  [v15 setRasterizationScale:v18];
  return v14;
}

void sub_100086248(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8AppStore23MultiCornerGradientView_colors;
  v3 = *(v1 + OBJC_IVAR____TtC8AppStore23MultiCornerGradientView_colors);
  *(v1 + OBJC_IVAR____TtC8AppStore23MultiCornerGradientView_colors) = a1;

  v5 = sub_1006E21AC(v4, v3);

  if ((v5 & 1) == 0)
  {
    v6 = *(v1 + v2);
    if (v6 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        return;
      }
    }

    else if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    v7 = *((swift_isaMask & *v1) + 0xF0);

    v7();
  }
}

void sub_10008632C()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for MultiCornerGradientView();
  objc_msgSendSuper2(&v5, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC8AppStore23MultiCornerGradientView_baseGradientView];
  [v0 bounds];
  [v1 setFrame:?];

  v2 = *&v0[OBJC_IVAR____TtC8AppStore23MultiCornerGradientView_secondaryGradientView];
  [v0 bounds];
  [v2 setFrame:?];

  v3 = *&v0[OBJC_IVAR____TtC8AppStore23MultiCornerGradientView_secondaryGradientMaskView];
  [v0 bounds];
  [v3 setFrame:?];

  v4 = *&v0[OBJC_IVAR____TtC8AppStore23MultiCornerGradientView_bottomRightOverlayView];
  [v0 bounds];
  [v4 setFrame:?];
}

void sub_100086480()
{
  v2 = v0;
  v3 = OBJC_IVAR____TtC8AppStore23MultiCornerGradientView_baseGradientView;
  [*&v0[OBJC_IVAR____TtC8AppStore23MultiCornerGradientView_baseGradientView] removeFromSuperview];
  v4 = OBJC_IVAR____TtC8AppStore23MultiCornerGradientView_secondaryGradientView;
  [*&v0[OBJC_IVAR____TtC8AppStore23MultiCornerGradientView_secondaryGradientView] removeFromSuperview];
  [*&v0[OBJC_IVAR____TtC8AppStore23MultiCornerGradientView_secondaryGradientMaskView] removeFromSuperview];
  v5 = OBJC_IVAR____TtC8AppStore23MultiCornerGradientView_bottomRightOverlayView;
  [*&v0[OBJC_IVAR____TtC8AppStore23MultiCornerGradientView_bottomRightOverlayView] removeFromSuperview];
  v6 = objc_opt_self();
  v7 = [v6 clearColor];
  [v2 setBackgroundColor:v7];

  v8 = OBJC_IVAR____TtC8AppStore23MultiCornerGradientView_colors;
  v9 = *&v2[OBJC_IVAR____TtC8AppStore23MultiCornerGradientView_colors];
  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10 <= 2)
    {
      goto LABEL_3;
    }

LABEL_17:
    if (v10 != 3)
    {
      if (v10 != 4)
      {
        goto LABEL_42;
      }

      v6 = type metadata accessor for GradientView();
      v22 = [objc_allocWithZone(v6) init];
      v23 = *&v2[v3];
      *&v2[v3] = v22;
      v24 = v22;

      v5 = sub_10002849C(&qword_100973210, qword_1007B0BB0);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1007B15F0;
      v1 = *&v2[v8];
      if ((v1 & 0xC000000000000001) != 0)
      {

        v69 = specialized _ArrayBuffer._getElementSlowPath(_:)();

        v26 = v69;
        v1 = *&v2[v8];
      }

      else
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

        v26 = *(v1 + 32);
      }

      *(v25 + 32) = v26;
      if ((v1 & 0xC000000000000001) != 0)
      {

        v71 = specialized _ArrayBuffer._getElementSlowPath(_:)();

        v27 = v71;
      }

      else
      {
        if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
        {
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        v27 = *(v1 + 40);
      }

      *(v25 + 40) = v27;
      *&v24[OBJC_IVAR____TtC8AppStore12GradientView_colors] = v25;

      sub_1001C0CEC();

      v28 = *&v2[v3];
      v1 = &StringUserDefaultsDebugSetting;
      v29 = [v28 layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.0, 0.0}];

      v30 = *&v2[v3];
      v31 = [v30 layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setEndPoint:{1.0, 0.0}];

      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_1007B15F0;
      v32 = *&v2[v8];
      if ((v32 & 0xC000000000000001) != 0)
      {
        goto LABEL_56;
      }

      if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
      {
        v33 = *(v32 + 48);
LABEL_28:
        *(v5 + 32) = v33;
        if ((v32 & 0xC000000000000001) != 0)
        {
LABEL_61:

          v74 = specialized _ArrayBuffer._getElementSlowPath(_:)();

          v34 = v74;
          goto LABEL_31;
        }

        if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
        {
          v34 = *(v32 + 56);
LABEL_31:
          *(v5 + 40) = v34;
          v35 = [objc_allocWithZone(v6) init];
          *&v35[OBJC_IVAR____TtC8AppStore12GradientView_colors] = v5;

          sub_1001C0CEC();
          sub_1001C0B48(&off_1008AF318);
          v36 = v35;
          v37 = [v36 *(v1 + 3136)];
          objc_opt_self();
          [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.0, 1.0}];

          v38 = [v36 *(v1 + 3136)];
          objc_opt_self();
          [swift_dynamicCastObjCClassUnconditional() setEndPoint:{1.0, 1.0}];

          v39 = [v36 *(v1 + 3136)];
          [v39 setMask:0];

          v40 = *&v2[v4];
          *&v2[v4] = v36;

          sub_1000870DC();
          [v2 addSubview:*&v2[v3]];
          [v2 addSubview:{*&v2[v4], v75}];
          goto LABEL_42;
        }

LABEL_64:
        __break(1u);
        return;
      }

      __break(1u);
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    v77 = type metadata accessor for GradientView();
    v41 = [objc_allocWithZone(v77) init];
    v42 = *&v2[v3];
    *&v2[v3] = v41;
    v43 = v41;

    sub_10002849C(&qword_100973210, qword_1007B0BB0);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1007B15F0;
    v44 = *&v2[v8];
    if ((v44 & 0xC000000000000001) != 0)
    {

      v75 = specialized _ArrayBuffer._getElementSlowPath(_:)();

      v45 = v75;
      v44 = *&v2[v8];
    }

    else
    {
      if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
LABEL_55:
        __break(1u);
LABEL_56:

        v73 = specialized _ArrayBuffer._getElementSlowPath(_:)();

        v33 = v73;
        v32 = *&v2[v8];
        goto LABEL_28;
      }

      v45 = *(v44 + 40);
    }

    *(v1 + 32) = v45;
    if ((v44 & 0xC000000000000001) != 0)
    {

      v72 = specialized _ArrayBuffer._getElementSlowPath(_:)();

      v46 = v72;
    }

    else
    {
      if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v46 = *(v44 + 48);
    }

    *(v1 + 40) = v46;
    *&v43[OBJC_IVAR____TtC8AppStore12GradientView_colors] = v1;

    sub_1001C0CEC();

    v47 = *&v2[v3];
    v48 = [v47 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.0, 0.0}];

    v49 = *&v2[v3];
    v50 = [v49 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setEndPoint:{1.0, 0.0}];

    v51 = [objc_allocWithZone(v77) init];
    v52 = *&v2[v4];
    *&v2[v4] = v51;
    v53 = v51;

    v54 = *&v2[v8];
    if ((v54 & 0xC000000000000001) != 0)
    {

      v56 = specialized _ArrayBuffer._getElementSlowPath(_:)();

      v57 = &StringUserDefaultsDebugSetting;
      v55 = &selRef__setDefaultAttributes_;
    }

    else
    {
      v55 = &selRef__setDefaultAttributes_;
      if (!*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_63;
      }

      v56 = *(v54 + 32);
      v57 = &StringUserDefaultsDebugSetting;
    }

    [v53 v55[469]];

    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_1007B15F0;
    *(v58 + 32) = [v6 clearColor];
    v59 = [v6 blackColor];
    v60 = [v59 colorWithAlphaComponent:0.2];

    *(v58 + 40) = v60;
    v61 = [objc_allocWithZone(v77) init];
    *&v61[OBJC_IVAR____TtC8AppStore12GradientView_colors] = v58;

    sub_1001C0CEC();
    sub_1001C0B48(&off_1008AF2E8);
    v62 = v61;
    v63 = [v62 v57[43].base_prots];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.0, 1.0}];

    v64 = [v62 v57[43].base_prots];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setEndPoint:{1.0, 1.0}];

    v65 = [v62 v57[43].base_prots];
    [v65 setMask:0];

    v66 = *&v2[v5];
    *&v2[v5] = v62;

    v67 = *&v2[v4];
    [v67 addSubview:v62];

    sub_1000870DC();
    [v2 addSubview:*&v2[v3]];
    [v2 addSubview:{*&v2[v4], v76}];
    goto LABEL_42;
  }

  v10 = _CocoaArrayWrapper.endIndex.getter();
  if (v10 > 2)
  {
    goto LABEL_17;
  }

LABEL_3:
  if (v10 == 1)
  {
    v20 = *&v2[v8];
    if ((v20 & 0xC000000000000001) != 0)
    {

      v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      v21 = *(v20 + 32);
    }

    [v2 setBackgroundColor:v21];

    goto LABEL_42;
  }

  if (v10 == 2)
  {
    v11 = [objc_allocWithZone(type metadata accessor for GradientView()) init];
    v12 = *&v2[v3];
    *&v2[v3] = v11;
    v13 = v11;

    sub_10002849C(&qword_100973210, qword_1007B0BB0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1007B15F0;
    v5 = *&v2[v8];
    if ((v5 & 0xC000000000000001) != 0)
    {

      v68 = specialized _ArrayBuffer._getElementSlowPath(_:)();

      v14 = v68;
      v5 = *&v2[v8];
      goto LABEL_8;
    }

    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v14 = *(v5 + 40);
LABEL_8:
      *(v6 + 32) = v14;
      if ((v5 & 0xC000000000000001) != 0)
      {

        v70 = specialized _ArrayBuffer._getElementSlowPath(_:)();

        v15 = v70;
        goto LABEL_11;
      }

      if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v15 = *(v5 + 32);
LABEL_11:
        *(v6 + 40) = v15;
        *&v13[OBJC_IVAR____TtC8AppStore12GradientView_colors] = v6;

        sub_1001C0CEC();

        v16 = *&v2[v3];
        v17 = [v16 layer];
        objc_opt_self();
        [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.0, 0.0}];

        v18 = *&v2[v3];
        v19 = [v18 layer];
        objc_opt_self();
        [swift_dynamicCastObjCClassUnconditional() setEndPoint:{1.0, 1.0}];

        [v2 addSubview:{*&v2[v3], v75}];
        goto LABEL_42;
      }

      __break(1u);
      goto LABEL_59;
    }

    __break(1u);
    goto LABEL_53;
  }

LABEL_42:
  [v2 setNeedsLayout];

  [v2 setNeedsDisplay];
}

void sub_1000870DC()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore23MultiCornerGradientView_colors);
  if (v2 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter() < 3)
    {
      return;
    }
  }

  else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3)
  {
    return;
  }

  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1007B15F0;
  v4 = objc_opt_self();
  *(v3 + 32) = [v4 clearColor];
  *(v3 + 40) = [v4 whiteColor];
  v5 = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  *&v5[OBJC_IVAR____TtC8AppStore12GradientView_colors] = v3;

  sub_1001C0CEC();
  sub_1001C0B48(&off_1008AF2B8);
  v6 = v5;
  v7 = [v6 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.0, 0.0}];

  v8 = [v6 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEndPoint:{0.0, 1.0}];

  v9 = [v6 layer];
  [v9 setMask:0];

  v10 = OBJC_IVAR____TtC8AppStore23MultiCornerGradientView_secondaryGradientMaskView;
  v11 = *(v1 + OBJC_IVAR____TtC8AppStore23MultiCornerGradientView_secondaryGradientMaskView);
  *(v1 + OBJC_IVAR____TtC8AppStore23MultiCornerGradientView_secondaryGradientMaskView) = v6;

  v12 = [*(v1 + OBJC_IVAR____TtC8AppStore23MultiCornerGradientView_secondaryGradientView) layer];
  v13 = [*(v1 + v10) layer];
  [v12 setMask:v13];
}

id sub_100087384()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MultiCornerGradientView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100087458()
{
  *(v0 + OBJC_IVAR____TtC8AppStore23MultiCornerGradientView_colors) = _swiftEmptyArrayStorage;
  v1 = OBJC_IVAR____TtC8AppStore23MultiCornerGradientView_baseGradientView;
  v2 = type metadata accessor for GradientView();
  *(v0 + v1) = [objc_allocWithZone(v2) init];
  v3 = OBJC_IVAR____TtC8AppStore23MultiCornerGradientView_secondaryGradientView;
  *(v0 + v3) = [objc_allocWithZone(v2) init];
  v4 = OBJC_IVAR____TtC8AppStore23MultiCornerGradientView_secondaryGradientMaskView;
  *(v0 + v4) = [objc_allocWithZone(v2) init];
  v5 = OBJC_IVAR____TtC8AppStore23MultiCornerGradientView_bottomRightOverlayView;
  *(v0 + v5) = [objc_allocWithZone(v2) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10008754C(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v24[2] = a1;
  v24[3] = a2;
  v4 = type metadata accessor for Artwork.Crop();
  __chkstk_darwin(v4 - 8);
  v24[0] = type metadata accessor for Artwork.Style();
  v5 = *(v24[0] - 8);
  __chkstk_darwin(v24[0]);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&qword_100973D30, &unk_1007B1DC0);
  __chkstk_darwin(v8 - 8);
  v10 = v24 - v9;
  v11 = sub_10002849C(&qword_100972628, &qword_1007B3210);
  __chkstk_darwin(v11 - 8);
  v13 = v24 - v12;
  v14 = type metadata accessor for Artwork.URLTemplate();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for URLComponents();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  URLComponents.init()();
  static Artwork.URLTemplate.resourceScheme.getter();
  URLComponents.scheme.setter();
  URLComponents.host.setter();
  URLComponents.string.getter();
  if (v19)
  {
    Artwork.URLTemplate.init(rawValue:)();
    v20 = type metadata accessor for Artwork.ImageScale();
    (*(*(v20 - 8) + 56))(v13, 1, 1, v20);
    v21 = type metadata accessor for ImpressionMetrics();
    (*(*(v21 - 8) + 56))(v10, 1, 1, v21);
    (*(v5 + 104))(v7, enum case for Artwork.Style.unspecified(_:), v24[0]);
    static Artwork.Crop.boundingBox.getter();
    v22 = dispatch thunk of Artwork.__allocating_init(id:template:size:backgroundColor:backgroundGradientColor:style:crop:contentMode:imageScale:variants:impressionMetrics:)();
    (*(v16 + 8))(v18, v15);
  }

  else
  {
    (*(v16 + 8))(v18, v15);
    return 0;
  }

  return v22;
}

uint64_t sub_100087920(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    type metadata accessor for ViewRecycler();
    swift_getWitnessTable();
    v1 = type metadata accessor for ReusePool();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return v1;
}

id ArcadeSubscribeViewController.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = [objc_opt_self() defaultCenter];
  [v4 removeObserver:v2];

  v6.receiver = v2;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, "dealloc");
}

void sub_100087B8C(char *a1)
{
  (*(*(*((swift_isaMask & *a1) + 0x50) - 8) + 8))(&a1[*((swift_isaMask & *a1) + 0x60)], *((swift_isaMask & *a1) + 0x50));
  v2 = &a1[*((swift_isaMask & *a1) + 0x68)];
  sub_10001F63C(*v2, v2[1]);

  swift_unknownObjectRelease();

  v3 = *((swift_isaMask & *a1) + 0xB0);
  swift_getAssociatedTypeWitness();
  type metadata accessor for ViewRecycler();
  swift_getWitnessTable();
  v4 = type metadata accessor for ReusePool();
  (*(*(v4 - 8) + 8))(&a1[v3], v4);

  v5 = *&a1[*((swift_isaMask & *a1) + 0xD0)];
}

uint64_t sub_100087DC4()
{
  result = [v0 isTracking];
  if ((result & 1) == 0)
  {
    result = [v0 isDragging];
    if ((result & 1) == 0)
    {
      swift_beginAccess();
      swift_getAssociatedTypeWitness();
      type metadata accessor for ViewRecycler();
      swift_getWitnessTable();
      type metadata accessor for ReusePool();
      ReusePool.drain()();
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_100087EE8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a1;
  sub_100087DC4();

  return (*(v5 + 8))(v7, v4);
}

id sub_100087FD0(char a1)
{
  [v1 setContentSize:{0.0, 0.0}];
  *(v1 + *((swift_isaMask & *v1) + 0xA0)) = a1;
  [v1 invalidateIntrinsicContentSize];

  return [v1 setNeedsLayout];
}

id sub_10008805C(void *a1, uint64_t a2)
{
  v8.receiver = v2;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  v4 = [v2 traitCollection];
  v5 = [v4 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v5 != result))
  {
    v7 = [v2 layer];
    [v7 setFlipsHorizontalAxis:{objc_msgSend(v2, "effectiveUserInterfaceLayoutDirection") == 1}];

    [v2 setContentSize:{0.0, 0.0}];
    *(v2 + *((swift_isaMask & *v2) + 0xA0)) = 1;
    [v2 invalidateIntrinsicContentSize];
    return [v2 setNeedsLayout];
  }

  return result;
}

void sub_1000881A8(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_10008805C(a3, v6);
}

id sub_100088214(void *a1)
{
  v1 = a1;
  v3 = sub_100088248(v1, v2);

  return v3;
}

id sub_100088248(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, "semanticContentAttribute");
}

void sub_100088280(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  sub_1000882D4(a3, v4);
}

id sub_1000882D4(id a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v9.receiver = v2;
  v9.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v9, "semanticContentAttribute");
  v8.receiver = v2;
  v8.super_class = ObjectType;
  result = objc_msgSendSuper2(&v8, "setSemanticContentAttribute:", a1);
  if (v5 != a1)
  {
    v7 = [v2 layer];
    [v7 setFlipsHorizontalAxis:{objc_msgSend(v2, "effectiveUserInterfaceLayoutDirection") == 1}];

    [v2 setContentSize:{0.0, 0.0}];
    *(v2 + *((swift_isaMask & *v2) + 0xA0)) = 1;
    [v2 invalidateIntrinsicContentSize];
    return [v2 setNeedsLayout];
  }

  return result;
}

double sub_1000883FC(void *a1)
{
  sub_10002849C(&qword_1009701B0, qword_1007B1800);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1007B10D0;
  *(v2 + 56) = &type metadata for String;
  *(v2 + 32) = 0xD000000000000040;
  *(v2 + 40) = 0x80000001007FF790;
  v3 = a1;
  debugPrint(_:separator:terminator:)();

  return result;
}

double sub_1000884AC(void *a1)
{
  v1 = a1;
  v2 = sub_1000884F0(v1);

  return v2;
}

CGFloat sub_1000884F0(uint64_t a1)
{
  v2 = *v1;
  v3 = swift_isaMask;
  v4 = *((swift_isaMask & *v1) + 0x50);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(a1);
  v8 = v10 - v7;
  (*(v5 + 16))(v10 - v7, &v1[*((v3 & v2) + 0x60)], v4, v6);
  (*(*((v3 & v2) + 0x58) + 24))(v10, v4);
  (*(v5 + 8))(v8, v4);
  return UIViewNoIntrinsicMetric;
}

CGFloat sub_100088684(uint64_t a1, CGFloat Width)
{
  v4 = swift_isaMask & *v2;
  v5 = *(v4 + 0x50);
  v6 = *(v5 - 8);
  __chkstk_darwin(a1);
  v9 = v20 - v8;
  if (Width < COERCE_DOUBLE(1))
  {
    v10 = [objc_opt_self() mainScreen];
    [v10 bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v21.origin.x = v12;
    v21.origin.y = v14;
    v21.size.width = v16;
    v21.size.height = v18;
    Width = CGRectGetWidth(v21);
    v7 = swift_isaMask & *v2;
  }

  (*(v6 + 16))(v9, &v2[*(v7 + 96)], v5);
  (*(*(v4 + 88) + 24))(v20, v5);
  (*(v6 + 8))(v9, v5);
  return Width;
}

double sub_1000888C8(void *a1, CGFloat a2)
{
  v3 = a1;
  v4 = sub_100088684(v3, a2);

  return v4;
}

uint64_t sub_10008891C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = swift_isaMask;
  v5 = *((swift_isaMask & *v1) + 0x50);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(a1);
  v9 = v17 - v8;
  v10 = *((v4 & v3) + 0x60);
  v11 = *(v6 + 16);
  v11(v17 - v8, &v2[v10], v5, v7);
  v12 = *((v4 & v3) + 0x58);
  v13 = (*(v12 + 32))(v5, v12);
  v14 = *(v6 + 8);
  v14(v9, v5);
  (v11)(v9, &v2[v10], v5);
  (*(v12 + 24))(v17, v5, v12);
  result = (v14)(v9, v5);
  v16 = ceil(v13 / v17[9]);
  if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v16 < 9.22337204e18)
  {
    return v16;
  }

LABEL_7:
  __break(1u);
  return result;
}

id sub_100088B20(uint64_t a1)
{
  v2 = v1;
  v3 = swift_isaMask & *v1;
  v4 = *(v3 + 0x50);
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(a1).n128_u64[0];
  v8 = v42 - v7;
  result = [v1 contentSize];
  if (v11 == 0.0 && v10 == 0.0)
  {
    v12 = sub_10008891C(result);
    v13 = *((swift_isaMask & *v1) + 0x60);
    v47 = *(v5 + 16);
    v42[1] = v5 + 16;
    v43 = v13;
    v14 = v13;
    v47(v8, v1 + v13, v4);
    v49 = *(v3 + 88);
    v15 = v49 + 24;
    v16 = *(v49 + 24);
    v16(v50, v4);
    v48 = v15;
    v17 = v16;
    v18 = *(v5 + 8);
    v44 = v16;
    v45 = v18;
    v18(v8, v4);
    v19 = v50[9];
    v20 = v47;
    v47(v8, v1 + v14, v4);
    v17(v51, v4, v49);
    v21 = v45;
    v45(v8, v4);
    v46 = v5 + 8;
    v22 = *&v51[1];
    v20(v8, v1 + v43, v4);
    v23 = v44;
    v44(v52, v4, v49);
    v21(v8, v4);
    v24 = v22 + *&v52[3] + 0.0;
    v25 = v43;
    v26 = v20;
    v20(v8, v1 + v43, v4);
    v23(v53, v4, v49);
    v27 = v45;
    v45(v8, v4);
    v28 = v24 + *&v53[4] * v12;
    v26(v8, v1 + v25, v4);
    v29 = v49;
    v30 = v44;
    v44(v54, v4, v49);
    v27(v8, v4);
    v31 = v28 + (v12 + -1.0) * *&v54[6];
    v32 = v47;
    v47(v8, v1 + v25, v4);
    v30(v55, v4, v29);
    v33 = v45;
    v45(v8, v4);
    v34 = v55[0];
    v32(v8, v1 + v25, v4);
    v35 = v49;
    v36 = v44;
    v44(v56, v4, v49);
    v33(v8, v4);
    v37 = v34 + *&v56[2] + 0.0;
    v38 = v43;
    v47(v8, v1 + v43, v4);
    v36(v57, v4, v35);
    v39 = v45;
    v45(v8, v4);
    v40 = v37 + *&v57[5] * v19;
    v47(v8, v1 + v38, v4);
    v44(v58, v4, v49);
    v39(v8, v4);
    result = sub_1000890A8([v1 setContentSize:{v31, v40 + (v19 + -1.0) * *&v58[7]}]);
    v41 = (v1 + *((swift_isaMask & *v1) + 0xA8));
    if ((v41[2] & 1) == 0)
    {
      result = [v2 setContentOffset:{*v41, v41[1]}];
      *v41 = 0.0;
      v41[1] = 0.0;
      *(v41 + 16) = 1;
      if (*(v2 + *((swift_isaMask & *v2) + 0x88)))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        dispatch thunk of ScrollObserver.didScroll(in:)();
        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

id sub_1000890A8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = swift_isaMask;
  v5 = *((swift_isaMask & *v1) + 0x50);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(a1);
  v9 = &v26 - v8;
  v10 = *(v6 + 16);
  v28 = *((v4 & v3) + 0x60);
  v29 = v10;
  (v10)(v9, v2 + v28, v5, v7);
  v11 = *((v4 & v3) + 0x58);
  v12 = *(v11 + 24);
  v12(v30, v5, v11);
  v13 = *(v6 + 8);
  v13(v9, v5);
  v14 = *&v30[4] + *&v30[6];
  [v2 frame];
  Width = CGRectGetWidth(v33);
  result = [v2 contentInset];
  v18 = ceil((Width - v17) / v14);
  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v18 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v18 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v27 = v13;
  v19 = v12;
  v20 = v18;
  v21 = *(v2 + *((swift_isaMask & *v2) + 0x70));
  if (*(v2 + *((swift_isaMask & *v2) + 0x78)) == 1)
  {
    v22 = __OFADD__(v20, v21);
    v23 = v20 + v21;
    if (!v22)
    {
      if (v23 + 0x4000000000000000 >= 0)
      {
        v24 = 2 * v23;
        v29(v9, v2 + v28, v5);
        v19(v31, v5, v11);
        result = v27(v9, v5);
        if ((v24 * v32) >> 64 == (v24 * v32) >> 63)
        {
          goto LABEL_12;
        }

        goto LABEL_20;
      }

      goto LABEL_18;
    }

    goto LABEL_16;
  }

  if (v21 + 0x4000000000000000 < 0)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v25 = 2 * v21;
  v29(v9, v2 + v28, v5);
  v19(v31, v5, v11);
  result = v27(v9, v5);
  if ((v25 * v32) >> 64 != (v25 * v32) >> 63)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!__OFADD__(v20, v25 * v32))
  {
LABEL_12:
    swift_beginAccess();
    swift_getAssociatedTypeWitness();
    type metadata accessor for ViewRecycler();
    swift_getWitnessTable();
    type metadata accessor for ReusePool();
    ReusePool.limit.setter();
    return swift_endAccess();
  }

LABEL_21:
  __break(1u);
  return result;
}

void sub_1000894C8(uint64_t a1, double a2)
{
  v3 = v2;
  LODWORD(v52) = a1;
  v5 = *v2;
  v6 = swift_isaMask;
  v7 = *((swift_isaMask & *v2) + 0x50);
  v8 = *(v7 - 8);
  __chkstk_darwin(a1);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = __chkstk_darwin(v11).n128_u64[0];
  v14 = &v47 - v13;
  [v3 frame];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = *(v8 + 16);
  v54 = *((swift_isaMask & *v3) + 0x60);
  v55 = v23;
  v23(v14, v3 + v54, v7);
  v24 = *((v6 & v5) + 0x58);
  v25 = *(v24 + 32);
  v26 = v25(v7, v24);
  v53 = *(v8 + 8);
  v53(v14, v7);
  if (v26 >= 1)
  {
    v59.origin.x = v16;
    v59.origin.y = v18;
    v59.size.width = v20;
    v59.size.height = v22;
    if (!CGRectIsEmpty(v59))
    {
      v50 = v24 + 32;
      v51 = v25;
      v48 = v10;
      v27 = v54;
      v55(v14, v3 + v54, v7);
      v28 = *(v24 + 24);
      v28(v56, v7, v24);
      v29 = v53;
      v53(v14, v7);
      v30 = v56[4] + v56[6];
      v31 = v3 + v27;
      v32 = v55;
      v55(v14, v31, v7);
      v28(v57, v7, v24);
      v29(v14, v7);
      v49 = v57[9];
      v32(v14, v3 + v54, v7);
      v28(v58, v7, v24);
      v29(v14, v7);
      v33 = *&v58[3];
      v34 = 0.0;
      if (a2 >= 0.0)
      {
        v34 = a2;
      }

      v35 = v34 + *&v58[1];
      v60.origin.x = v16;
      v60.origin.y = v18;
      v60.size.width = v20;
      v60.size.height = v22;
      Width = CGRectGetWidth(v60);
      v37 = floor(v35 / v30);
      if ((*&v37 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v37 > -9.22337204e18)
      {
        if (v37 < 9.22337204e18)
        {
          v38 = floor((v35 + Width - v33) / v30);
          if ((*&v38 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v38 > -9.22337204e18)
            {
              if (v38 < 9.22337204e18)
              {
                v39 = v37;
                v40 = v38;
                if (v52)
                {
                  v41 = *(v3 + *((swift_isaMask & *v3) + 0x70));
                  v42 = __OFSUB__(v39, v41);
                  v39 -= v41;
                  v43 = v51;
                  if (v42)
                  {
LABEL_28:
                    __break(1u);
                    goto LABEL_29;
                  }

                  v42 = __OFADD__(v40, v41);
                  v40 += v41;
                  if (v42)
                  {
LABEL_29:
                    __break(1u);
                    return;
                  }

                  v44 = v49;
                }

                else
                {
                  v43 = v51;
                  v44 = v49;
                }

                if ((v39 * v44) >> 64 == (v39 * v44) >> 63)
                {
                  v52 = v39 * v44;
                  v45 = v3 + v54;
                  v46 = v48;
                  v55(v48, v45, v7);
                  v43(v7, v24);
                  v53(v46, v7);
                  if ((v40 * v44) >> 64 == (v40 * v44) >> 63)
                  {
                    return;
                  }

                  goto LABEL_27;
                }

LABEL_26:
                __break(1u);
LABEL_27:
                __break(1u);
                goto LABEL_28;
              }

LABEL_25:
              __break(1u);
              goto LABEL_26;
            }

LABEL_24:
            __break(1u);
            goto LABEL_25;
          }

LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      __break(1u);
      goto LABEL_22;
    }
  }
}

void sub_100089A18(uint64_t a1)
{
  v2 = (swift_isaMask & *v1);
  v3 = v2[10];
  v4 = *(v3 - 8);
  v6 = __chkstk_darwin(a1);
  v8 = v34 - v7;
  if (v5 < 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  v9 = v1;
  v10 = v2[12];
  v12 = v4 + 16;
  v11 = *(v4 + 16);
  v40 = v5;
  v45 = v11;
  (v11)(v8, &v1[v10], v3, v6);
  v13 = v2[11];
  v14 = (*(v13 + 32))(v3, v13);
  v16 = *(v4 + 8);
  v15 = v4 + 8;
  v43 = v16;
  v16(v8, v3);
  if (v14 <= v40)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v45(v8, &v9[v10], v3);
  v38 = v12;
  v44 = v10;
  v17 = v9;
  v41 = v9;
  v42 = v15;
  v18 = *(v13 + 24);
  v18(v46, v3, v13);
  v19 = v43;
  v43(v8, v3);
  v20 = v17 + v44;
  v21 = v45;
  v45(v8, v20, v3);
  v18(v47, v3, v13);
  v19(v8, v3);
  v22 = v44;
  v21(v8, &v41[v44], v3);
  v18(v48, v3, v13);
  v43(v8, v3);
  if (!v49)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v35 = v49;
  v23 = v41;
  v45(v8, &v41[v22], v3);
  v36 = v18;
  v37 = v13 + 24;
  v18(v50, v3, v13);
  v24 = v43;
  v43(v8, v3);
  if (!v51)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v34[1] = v40 % v51;
  v35 = v40 / v35;
  v39 = v13;
  if (v35 < 1)
  {
    v26 = v44;
    v28 = v45;
    v27 = v36;
    if (v40 % v51)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v25 = v40 % v51;
    v45(v8, &v23[v44], v3);
    v36(v52, v3, v13);
    v24(v8, v3);
    if (v25)
    {
      v26 = v44;
      v23 = v41;
      v27 = v36;
LABEL_9:
      v45(v8, &v23[v26], v3);
      v27(v53, v3, v39);
      v43(v8, v3);
      v26 = v44;
      v28 = v45;
      v45(v8, &v23[v44], v3);
      goto LABEL_12;
    }

    v26 = v44;
    v28 = v45;
    v23 = v41;
    v27 = v36;
  }

  v28(v8, &v23[v26], v3);
LABEL_12:
  v27(v54, v3, v39);
  v43(v8, v3);
  if ((v55 & 1) == 0)
  {
    return;
  }

  v28(v8, &v23[v26], v3);
  v29 = v39;
  v27(v56, v3, v39);
  v30 = v43;
  v43(v8, v3);
  if (!v57)
  {
LABEL_21:
    __break(1u);
    return;
  }

  if ((v40 + 1) % v57)
  {
    v31 = v29;
    v32 = v23;
    v33 = v31;
    v45(v8, &v32[v44], v3);
    v27(v58, v3, v33);
    v30(v8, v3);
  }
}

void sub_100089FF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *((swift_isaMask & *v3) + 0x50);
  v61 = *(v5 - 8);
  __chkstk_darwin(ObjectType);
  v64 = v49 - v6;
  v9 = *((v8 & v7) + 0x58);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v66 = *(AssociatedTypeWitness - 8);
  *&v10 = __chkstk_darwin(AssociatedTypeWitness).n128_u64[0];
  v67 = v49 - v11;
  v71.receiver = v3;
  v71.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v71, "layoutSubviews", v10);
  sub_100088B20(v12);
  [v3 contentOffset];
  sub_1000894C8(1, v13);
  v15 = v14;
  v17 = v16;
  v18 = *((swift_isaMask & *v3) + 0xB8);
  swift_beginAccess();
  v59 = v18;
  v19 = *(v3 + v18);
  v65 = v9;
  v63 = v5;
  v58 = swift_getAssociatedTypeWitness();
  v20 = 1 << *(v19 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v19 + 64);
  v50 = *((swift_isaMask & *v3) + 0xA0);
  v23 = (v20 + 63) >> 6;

  v24 = 0;
  while (v22)
  {
LABEL_10:
    v26 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v27 = *(*(v19 + 48) + ((v24 << 9) | (8 * v26)));
    if ((*(v3 + v50) & 1) == 0 && v27 >= v15 && v27 < v17)
    {
      continue;
    }

    sub_10008A74C(v27);
  }

  while (1)
  {
    v25 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    if (v25 >= v23)
    {
      break;
    }

    v22 = *(v19 + 64 + 8 * v25);
    ++v24;
    if (v22)
    {
      v24 = v25;
      goto LABEL_10;
    }
  }

  if (v15 == v17)
  {
LABEL_17:
    *(v3 + v50) = 0;
    return;
  }

  if (v17 < v15)
  {
    goto LABEL_35;
  }

  if (v15 < v17)
  {
    v29 = *v3;
    v68 = *((swift_isaMask & *v3) + 0x60);
    v30 = v3 + *((swift_isaMask & v29) + 0xC0);
    v49[0] = v3 + *((swift_isaMask & v29) + 0xC8);
    v62 = (v61 + 2);
    v55 = v65 + 40;
    ++v61;
    v54 = v65 + 56;
    v49[1] = v65 + 72;
    v53 = (v66 + 8);
    v56 = v17;
    v51 = v3;
    v52 = v30;
    do
    {
      swift_beginAccess();
      v69 = v15;
      Dictionary.subscript.getter();
      v31 = v70;
      swift_endAccess();
      if (v31)
      {
      }

      else
      {
        v66 = sub_10008AC24(v15);
        v32 = v63;
        v33 = *v62;
        v34 = v64;
        (*v62)(v64, v3 + v68, v63);
        v35 = v65;
        v36 = v67;
        (*(v65 + 40))(v15, v32, v65);
        v37 = *v61;
        (*v61)(v34, v32);
        v38 = v3 + v68;
        v39 = v52;
        v60 = v33;
        v33(v34, v38, v32);
        v40 = v66;
        (*(v35 + 56))(v36, v15, v66, v32, v35);
        v41 = v32;
        v42 = v37;
        v37(v34, v41);
        if ((v39[8] & 1) != 0 || v15 != *v39)
        {
          v17 = v56;
          if (*(v49[0] + 8))
          {
            (*v53)(v67, AssociatedTypeWitness);

            v3 = v51;
          }

          else
          {
            v3 = v51;
            if (v15 == *v49[0])
            {
              v47 = v63;
              v46 = v64;
              v60(v64, v51 + v68, v63);
              v48 = v67;
              (*(v65 + 72))(2, v40, v67, v47);

              v42(v46, v47);
              (*v53)(v48, AssociatedTypeWitness);
            }

            else
            {
              (*v53)(v67, AssociatedTypeWitness);
            }
          }
        }

        else
        {
          v3 = v51;
          v44 = v63;
          v43 = v64;
          v60(v64, v51 + v68, v63);
          v45 = v67;
          (*(v65 + 72))(1, v40, v67, v44);

          v42(v43, v44);
          (*v53)(v45, AssociatedTypeWitness);
          v17 = v56;
        }
      }

      ++v15;
    }

    while (v17 != v15);
    goto LABEL_17;
  }

LABEL_36:
  __break(1u);
}

void sub_10008A74C(uint64_t a1)
{
  v2 = v1;
  v4 = *((swift_isaMask & *v1) + 0x58);
  v5 = *((swift_isaMask & *v1) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v33 = v31 - v7;
  v37 = *(v5 - 8);
  __chkstk_darwin(v8);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v36 = v31 - v12;
  v38 = a1;
  v39 = a1;
  swift_beginAccess();
  v35 = v4;
  v13 = swift_getAssociatedTypeWitness();
  type metadata accessor for Dictionary();
  Dictionary.removeValue(forKey:)();
  swift_endAccess();
  v14 = v40;
  if (v40)
  {
    v15 = &v1[*((swift_isaMask & *v1) + 0xC0)];
    if ((v15[8] & 1) == 0 && *v15 == v38 || (v16 = &v1[*((swift_isaMask & *v1) + 0xC8)], (v16[8] & 1) == 0) && *v16 == v38)
    {
      v17 = *((swift_isaMask & *v1) + 0x60);
      v31[0] = AssociatedTypeWitness;
      v18 = v37;
      v19 = *(v37 + 16);
      v32 = v40;
      v20 = v36;
      v19(v36, &v2[v17], v5);
      v21 = &v2[v17];
      v22 = v10;
      v19(v10, v21, v5);
      v31[1] = v13;
      v23 = v34;
      v24 = v35;
      v25 = v33;
      (*(v35 + 40))(v38, v5, v35);
      v26 = *(v18 + 8);
      v26(v22, v5);
      (*(v24 + 72))(0, v32, v25, v5, v24);
      (*(v23 + 8))(v25, v31[0]);
      v27 = v20;
      v14 = v32;
      v26(v27, v5);
    }

    v40 = v14;
    swift_beginAccess();
    type metadata accessor for ViewRecycler();
    swift_getWitnessTable();
    type metadata accessor for ReusePool();
    v28 = ReusePool.recycle(_:)();
    swift_endAccess();
    if (v28)
    {
      v29 = v36;
      v30 = v37;
      (*(v37 + 16))(v36, &v2[*((swift_isaMask & *v2) + 0x60)], v5);
      (*(v35 + 64))(v14, v5);

      (*(v30 + 8))(v29, v5);
    }

    else
    {
    }
  }
}

id sub_10008AC24(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = swift_isaMask;
  v6 = *((swift_isaMask & v4) + 0x50);
  v7 = *(v6 - 8);
  __chkstk_darwin(a1);
  v9 = v19 - v8;
  swift_beginAccess();
  v10 = *((v5 & v4) + 0x58);
  swift_getAssociatedTypeWitness();
  type metadata accessor for ViewRecycler();
  swift_getWitnessTable();
  type metadata accessor for ReusePool();
  ReusePool.dequeue()();
  swift_endAccess();
  v11 = v21;
  if (v21)
  {
    v12 = v21;
  }

  else
  {
    (*(v7 + 16))(v9, &v2[*((swift_isaMask & *v2) + 0x60)], v6);
    v13 = (*(v10 + 48))(v6, v10);
    (*(v7 + 8))(v9, v6);
    v12 = v13;
    [v2 addSubview:v12];
    v11 = 0;
  }

  v14 = v11;
  v15 = v12;
  sub_100089A18(a1);
  [v15 setFrame:?];
  [v15 setAutoresizingMask:0];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:1];
  ObjectType = swift_getObjectType();
  v20.receiver = v2;
  v20.super_class = ObjectType;
  [v15 setSemanticContentAttribute:{objc_msgSendSuper2(&v20, "semanticContentAttribute")}];
  v17 = [v15 layer];
  [v17 setFlipsHorizontalAxis:{objc_msgSend(v15, "effectiveUserInterfaceLayoutDirection") == 1}];

  v21 = v15;
  v19[1] = a1;
  swift_beginAccess();
  type metadata accessor for Dictionary();
  Dictionary.subscript.setter();
  swift_endAccess();
  return v15;
}

void sub_10008AF94(void *a1)
{
  v2 = a1;
  sub_100089FF0(v2, v1);
}

uint64_t sub_10008AFDC(uint64_t a1, CGFloat a2, CGFloat a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = swift_isaMask;
  v9 = *((swift_isaMask & *v3) + 0x50);
  v10 = *(v9 - 8);
  __chkstk_darwin(a1);
  v12 = v33 - v11;
  sub_100088B20(v13);
  v15 = v10 + 16;
  v14 = *(v10 + 16);
  v39 = *((swift_isaMask & *v3) + 0x60);
  v40 = v14;
  v14(v12, &v3[v39], v9);
  v16 = *((v8 & v7) + 0x58);
  v17 = *(v16 + 24);
  v17(v41, v9, v16);
  v18 = *(v10 + 8);
  v18(v12, v9);
  v19 = *v41;
  v20 = *&v41[1];
  [v4 contentSize];
  v48.size.width = v21;
  v48.size.height = v22;
  v48.origin.x = v20;
  v48.origin.y = v19;
  v47.x = a2;
  v47.y = a3;
  if (!CGRectContainsPoint(v48, v47))
  {
    return 0;
  }

  v40(v12, &v4[v39], v9);
  v37 = v16;
  v38 = v18;
  v17(v42, v9, v16);
  result = v38(v12, v9);
  v24 = floor((a2 - v20) / (*&v42[4] + *&v42[6]));
  if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v24 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v24 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v25 = v24;
  if (v24 < 0 || sub_10008891C(result) <= v25)
  {
    return 0;
  }

  v40(v12, &v4[v39], v9);
  v17(v43, v9, v37);
  result = v38(v12, v9);
  v26 = floor((a3 - v19) / (*&v43[5] + *&v43[7]));
  if ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_19;
  }

  if (v26 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v26 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v27 = v12;
  v28 = v40;
  if (v26 < 0)
  {
    return 0;
  }

  v35 = v25;
  v36 = v26;
  v29 = v39;
  v33[1] = v15;
  v40(v27, &v4[v39], v9);
  v30 = v37;
  v34 = v17;
  v17(v44, v9, v37);
  v31 = v38;
  v38(v27, v9);
  if (v44[9] <= v36)
  {
    return 0;
  }

  v28(v27, &v4[v29], v9);
  v34(v45, v9, v30);
  result = v31(v27, v9);
  v32 = v35 * v46;
  if ((v35 * v46) >> 64 != (v35 * v46) >> 63)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  result = v32 + v36;
  if (__OFADD__(v32, v36))
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

void sub_10008B420()
{
  [v0 contentOffset];
  sub_1000894C8(0, v1);
  v4 = (v3 - v2);
  if (__OFSUB__(v3, v2))
  {
    __break(1u);
  }

  else if (v4)
  {
    v5 = v2;
    v6 = v3;
    v7 = sub_100035590(v3 - v2, 0);
    if (sub_10008C938(v8, (v7 + 4), v4, v5, v6) != v4)
    {
      __break(1u);
    }
  }
}

void sub_10008B4BC()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  v4 = swift_isaMask & *v0;
  v5 = *((swift_isaMask & v2) + 0x58);
  v6 = *((swift_isaMask & v2) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin(AssociatedTypeWitness);
  v8 = *(v6 - 8);
  __chkstk_darwin(v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v12);
  v18 = &v28 - v14;
  v19 = &v1[*((v3 & v2) + 0xC0)];
  if ((v19[8] & 1) == 0)
  {
    v20 = *v19;
    if ((*v19 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v32 = v16;
      v33 = v15;
      v34 = v13;
      v21 = *(v8 + 16);
      v29 = *(v4 + 96);
      v30 = v21;
      (v21)(&v28 - v14, &v1[v29], v6, v17);
      v22 = (*(v5 + 32))(v6, v5);
      v31 = *(v8 + 8);
      v31(v18, v6);
      if (v20 < v22)
      {
        swift_beginAccess();
        v35 = v20;
        swift_getAssociatedTypeWitness();
        Dictionary.subscript.getter();
        v23 = v36;
        if (v36)
        {
          swift_endAccess();
          v28 = v20;
          v25 = v29;
          v24 = v30;
          v30(v18, &v1[v29], v6);
          v24(v11, &v1[v25], v6);
          v26 = v32;
          (*(v5 + 40))(v28, v6, v5);
          v27 = v31;
          v31(v11, v6);
          (*(v5 + 72))(1, v23, v26, v6, v5);

          (*(v33 + 8))(v26, v34);
          v27(v18, v6);
        }

        else
        {
          swift_endAccess();
        }

        return;
      }
    }

    __break(1u);
  }
}

void sub_10008B890()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  v4 = swift_isaMask & *v0;
  v5 = *((swift_isaMask & v2) + 0x58);
  v6 = *((swift_isaMask & v2) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin(AssociatedTypeWitness);
  v8 = *(v6 - 8);
  __chkstk_darwin(v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v12);
  v18 = &v28 - v14;
  v19 = &v1[*((v3 & v2) + 0xC8)];
  if ((v19[8] & 1) == 0)
  {
    v20 = *v19;
    if ((*v19 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v32 = v16;
      v33 = v15;
      v34 = v13;
      v21 = *(v8 + 16);
      v29 = *(v4 + 96);
      v30 = v21;
      (v21)(&v28 - v14, &v1[v29], v6, v17);
      v22 = (*(v5 + 32))(v6, v5);
      v31 = *(v8 + 8);
      v31(v18, v6);
      if (v20 < v22)
      {
        swift_beginAccess();
        v35 = v20;
        swift_getAssociatedTypeWitness();
        Dictionary.subscript.getter();
        v23 = v36;
        if (v36)
        {
          swift_endAccess();
          v28 = v20;
          v25 = v29;
          v24 = v30;
          v30(v18, &v1[v29], v6);
          v24(v11, &v1[v25], v6);
          v26 = v32;
          (*(v5 + 40))(v28, v6, v5);
          v27 = v31;
          v31(v11, v6);
          (*(v5 + 72))(2, v23, v26, v6, v5);

          (*(v33 + 8))(v26, v34);
          v27(v18, v6);
        }

        else
        {
          swift_endAccess();
        }

        return;
      }
    }

    __break(1u);
  }
}

void sub_10008BC64(uint64_t a1, char a2)
{
  sub_10008D3C0();
  v5 = v2 + *((swift_isaMask & *v2) + 0xC8);
  *v5 = a1;
  v5[8] = a2 & 1;

  sub_10008B890();
}

void sub_10008BCD8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = (swift_isaMask & *v2);
  v7 = v6[26];
  v8 = *(v2 + v7);
  if (!v8 || [v8 phase] == 3 || (v9 = *(v2 + v7)) != 0 && objc_msgSend(v9, "phase") == 4)
  {
    v10 = sub_10066D4C4(a1);
    if (v10)
    {
      v11 = v10;
      [v10 locationInView:v2];
      v13 = v12;
      v15 = v14;
      v16 = [v2 hitTest:a2 withEvent:?];
      if (v16 && (sub_100005744(0, &qword_100972EB0, UIView_ptr), v17 = v16, v18 = v2, v19 = static NSObject.== infix(_:_:)(), v17, v18, (v19 & 1) != 0) || (v20 = sub_10008D760(v16, v6[10], v6[11]), (v20 & 1) == 0))
      {
        v21 = 0;
        v23 = 1;
      }

      else
      {
        v21 = sub_10008AFDC(v20, v13, v15);
        v23 = v22;
      }

      sub_10008D058();
      v24 = v3 + *((swift_isaMask & *v3) + 0xC0);
      *v24 = v21;
      v24[8] = v23 & 1;
      sub_10008B4BC();

      v25 = *(v3 + v7);
      *(v3 + v7) = v11;
    }
  }

  sub_10008C390(v3, a1, a2, &selRef_touchesBegan_withEvent_);
}

void sub_10008BEF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v42 = a2;
  v5 = *v2;
  v6 = swift_isaMask;
  v7 = *((swift_isaMask & v5) + 0x50);
  v8 = *(v7 - 8);
  __chkstk_darwin(a1);
  v10 = &v35 - v9;
  v11 = *((v6 & v5) + 0x58);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v16 = &v35 - v15;
  v17 = *((v6 & v5) + 0xD0);
  v18 = *(v3 + v17);
  if (v18)
  {
    v41 = v14;
    v19 = v18;
    if ((sub_100296044(v19, a1) & 1) == 0)
    {
LABEL_6:

      goto LABEL_7;
    }

    v20 = *(v3 + v17);
    *(v3 + v17) = 0;

    v21 = v3 + *((swift_isaMask & *v3) + 0xC0);
    if (v21[8] & 1) != 0 || (v40 = *v21, ([v3 isDragging]))
    {
      sub_10008D058();
      v22 = v3 + *((swift_isaMask & *v3) + 0xC0);
      *v22 = 0;
      v22[8] = 1;
      sub_10008B4BC();
      sub_10008D3C0();
      v23 = v3 + *((swift_isaMask & *v3) + 0xC8);
      *v23 = 0;
      v23[8] = 1;
      sub_10008B890();
      goto LABEL_6;
    }

    sub_10008D058();
    v24 = v3 + *((swift_isaMask & *v3) + 0xC0);
    *v24 = 0;
    v24[8] = 1;
    sub_10008B4BC();
    sub_10008D3C0();
    v25 = v3 + *((swift_isaMask & *v3) + 0xC8);
    *v25 = v40;
    v25[8] = 0;
    sub_10008B890();
    v26 = swift_isaMask & *v3;
    v27 = v3 + *(v26 + 0x68);
    v39 = *v27;
    if (!v39)
    {
      goto LABEL_6;
    }

    v36 = *(v27 + 1);
    (*(v8 + 16))(v10, v3 + *(v26 + 96), v7);
    v28 = *(v11 + 40);
    v37 = v11 + 40;
    v38 = v28;

    v29 = v11;
    v30 = v36;
    v38(v40, v7, v29);
    (*(v8 + 8))(v10, v7);
    v31 = v39;
    v32 = v39(v16, v40);
    (*(v13 + 8))(v16, v41);
    if (v32)
    {
      sub_10008D058();
      v33 = v3 + *((swift_isaMask & *v3) + 0xC0);
      *v33 = 0;
      v33[8] = 1;
      sub_10008B4BC();
      sub_10008D3C0();
      v34 = v3 + *((swift_isaMask & *v3) + 0xC8);
      *v34 = 0;
      v34[8] = 1;
      sub_10008B890();
    }

    sub_10001F63C(v31, v30);
  }

LABEL_7:
  sub_10008C390(v3, a1, v42, &selRef_touchesEnded_withEvent_);
}

void sub_10008C390(uint64_t *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v7 = *a1;
  v8 = swift_isaMask;
  sub_100005744(0, &qword_100981660, UITouch_ptr);
  sub_10008DB40();
  isa = Set._bridgeToObjectiveC()().super.isa;
  v11 = type metadata accessor for HorizontalShelfView(0, *((v8 & v7) + 0x50), *((v8 & v7) + 0x58), v10);
  v12.receiver = a1;
  v12.super_class = v11;
  objc_msgSendSuper2(&v12, *a4, isa, a3);
}

double sub_10008C484(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, void *))
{
  sub_100005744(0, &qword_100981660, UITouch_ptr);
  sub_10008DB40();
  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a4;
  v10 = a1;
  a5(v8, a4);

  return result;
}

void sub_10008C534(uint64_t a1, uint64_t a2)
{
  v5 = *((swift_isaMask & *v2) + 0xD0);
  v6 = *(v2 + v5);
  *(v2 + v5) = 0;

  sub_10008D058();
  v7 = v2 + *((swift_isaMask & *v2) + 0xC0);
  *v7 = 0;
  v7[8] = 1;
  sub_10008B4BC();
  sub_10008D3C0();
  v8 = v2 + *((swift_isaMask & *v2) + 0xC8);
  *v8 = 0;
  v8[8] = 1;
  sub_10008B890();
  sub_10008C390(v2, a1, a2, &selRef_touchesCancelled_withEvent_);
}

uint64_t sub_10008C6D0()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocClassInstance();
}

unint64_t sub_10008C754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_10008C7B0(a1, v6, a2, a3);
}

unint64_t sub_10008C7B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a1;
  v22[2] = a4;
  v7 = __chkstk_darwin(a1);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v22[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v6 + 16);
    v14 = v6 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v23 + 48) + v17 * v12, a3, v7);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v18)(v9, a3);
      if (v20)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v22[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t *sub_10008C938(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

unint64_t sub_10008C9D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(TupleTypeMetadata2);
  v12 = v23 - v11;
  if (Array.count.getter())
  {
    type metadata accessor for _DictionaryStorage();
    v13 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v13 = _swiftEmptyDictionarySingleton;
  }

  result = Array._getCount()();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (Array._hoistableIsNativeTypeChecked()())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = _ArrayBuffer._getElementSlowPath(_:)();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_10008C754(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

void sub_10008CCC0()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for ViewRecycler();
  __chkstk_darwin(v5);
  v6 = (v1 + *((v3 & v2) + 0x68));
  *v6 = 0;
  v6[1] = 0;
  *(v1 + *((swift_isaMask & *v1) + 0x70)) = 1;
  *(v1 + *((swift_isaMask & *v1) + 0x78)) = 0;
  v7 = *((swift_isaMask & *v1) + 0x80);
  v8 = objc_allocWithZone(type metadata accessor for CompoundScrollObserver());
  *(v1 + v7) = CompoundScrollObserver.init(children:)();
  v9 = (v1 + *((swift_isaMask & *v1) + 0x88));
  *v9 = 0;
  v9[1] = 0;
  *(v1 + *((swift_isaMask & *v1) + 0x90)) = 0;
  *(v1 + *((swift_isaMask & *v1) + 0x98)) = 0;
  *(v1 + *((swift_isaMask & *v1) + 0xA0)) = 0;
  v10 = v1 + *((swift_isaMask & *v1) + 0xA8);
  *v10 = 0;
  *(v10 + 1) = 0;
  v10[16] = 1;
  ViewRecycler.init()();
  swift_getWitnessTable();
  ReusePool.init(recycler:limit:)();
  v11 = *((swift_isaMask & *v1) + 0xB8);
  swift_getTupleTypeMetadata2();
  v12 = static Array._allocateUninitialized(_:)();
  v13 = sub_10008C9D4(v12, &type metadata for Int, AssociatedTypeWitness, &protocol witness table for Int);

  *(v1 + v11) = v13;
  v14 = v1 + *((swift_isaMask & *v1) + 0xC0);
  *v14 = 0;
  v14[8] = 1;
  v15 = v1 + *((swift_isaMask & *v1) + 0xC8);
  *v15 = 0;
  v15[8] = 1;
  *(v1 + *((swift_isaMask & *v1) + 0xD0)) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10008D058()
{
  v1 = *v0;
  v2 = swift_isaMask;
  v3 = *((swift_isaMask & *v0) + 0x58);
  v4 = *((swift_isaMask & *v0) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin(AssociatedTypeWitness);
  v6 = *(v4 - 8);
  __chkstk_darwin(v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v22 - v13;
  v15 = &v0[*((v2 & v1) + 0xC0)];
  if ((v15[8] & 1) == 0)
  {
    v25 = v12;
    v26 = v11;
    v16 = *v15;
    swift_beginAccess();
    v27 = v16;
    swift_getAssociatedTypeWitness();
    Dictionary.subscript.getter();
    v17 = v28;
    if (v28)
    {
      swift_endAccess();
      v18 = *((swift_isaMask & *v0) + 0x60);
      v23 = v16;
      v24 = AssociatedTypeWitness;
      v19 = *(v6 + 16);
      v19(v14, &v0[v18], v4);
      v19(v9, &v0[v18], v4);
      v20 = v25;
      (*(v3 + 40))(v23, v4, v3);
      v21 = *(v6 + 8);
      v21(v9, v4);
      (*(v3 + 72))(0, v17, v20, v4, v3);

      (*(v26 + 8))(v20, v24);
      v21(v14, v4);
    }

    else
    {
      swift_endAccess();
    }
  }
}

void sub_10008D3C0()
{
  v1 = *v0;
  v2 = swift_isaMask;
  v3 = *((swift_isaMask & *v0) + 0x58);
  v4 = *((swift_isaMask & *v0) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin(AssociatedTypeWitness);
  v6 = *(v4 - 8);
  __chkstk_darwin(v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v25 - v13;
  v15 = &v0[*((v2 & v1) + 0xC8)];
  if ((v15[8] & 1) == 0)
  {
    v29 = v12;
    v30 = v11;
    v16 = *v15;
    swift_beginAccess();
    v31 = v16;
    swift_getAssociatedTypeWitness();
    Dictionary.subscript.getter();
    v17 = v32;
    if (v32)
    {
      swift_endAccess();
      v18 = *v0;
      v19 = &v0[*((swift_isaMask & *v0) + 0xC0)];
      v20 = *v19;
      v27 = v19[8];
      v26 = v16 == v20;
      v21 = *((swift_isaMask & v18) + 0x60);
      v28 = AssociatedTypeWitness;
      v25 = v16;
      v22 = *(v6 + 16);
      v22(v14, &v0[v21], v4);
      v22(v9, &v0[v21], v4);
      v23 = v29;
      (*(v3 + 40))(v25, v4, v3);
      v24 = *(v6 + 8);
      v24(v9, v4);
      (*(v3 + 72))(v26 & ~v27, v17, v23, v4, v3);

      (*(v30 + 8))(v23, v28);
      v24(v14, v4);
    }

    else
    {
      swift_endAccess();
    }
  }
}

unint64_t sub_10008D760(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  if (!a1)
  {
    return 0;
  }

  v7 = v6;
  swift_getAssociatedTypeWitness();
  while (1)
  {
    v9 = swift_dynamicCastUnknownClass();
    v8 = v9 != 0;
    if (v9)
    {
      break;
    }

    type metadata accessor for HorizontalShelfView(0, a2, a3, v10);
    if (swift_dynamicCastClass())
    {
      break;
    }

    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      if ([v11 isTracking])
      {
        break;
      }
    }

    v8 = [v7 superview];

    v7 = v8;
    if (!v8)
    {
      return v8;
    }
  }

  return v8;
}

void sub_10008D89C(double *a1, double a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = *(*v3 + 80);
  v10 = *(v9 - 8);
  __chkstk_darwin(a1);
  v12 = v37 - v11;
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_10008B420();
  v15 = v14;

  v16 = *(v15 + 16);

  if (v16)
  {
    v17 = *a1;
    v18 = swift_unknownObjectUnownedLoadStrong();
    [v18 bounds];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    v40.origin.x = v20;
    v40.origin.y = v22;
    v40.size.width = v24;
    v40.size.height = v26;
    Width = CGRectGetWidth(v40);
    if (v17 > 0.0)
    {
      v28 = Width;
      v29 = swift_unknownObjectUnownedLoadStrong();
      [v29 contentSize];
      v31 = v30;

      if (v17 < v31 - v28)
      {
        v32 = swift_unknownObjectUnownedLoadStrong();
        (*(v10 + 16))(v12, &v32[*((swift_isaMask & *v32) + 0x60)], v9);
        (*(*(*&v8 + 88) + 24))(v37, v9);

        (*(v10 + 8))(v12, v9);
        v33 = v38 + v39;
        v34 = a2;
        if (a2 == 0.0)
        {
          v34 = v4[3];
        }

        v35 = fmod(v17, v38 + v39);
        if (v34 >= 0.0)
        {
          v36 = v33 - v35 + *a1;
        }

        else
        {
          v36 = *a1 - v35;
        }

        *a1 = v36;
        v4[3] = a2;
        v4[4] = a3;
      }
    }
  }
}

unint64_t sub_10008DB40()
{
  result = qword_10097DD60;
  if (!qword_10097DD60)
  {
    sub_100005744(255, &qword_100981660, UITouch_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097DD60);
  }

  return result;
}

void sub_10008DC64(uint64_t a1)
{
  v3 = [v1 collectionView];
  sub_10059693C(a1, v3);

  sub_10008EBD0();
}

void sub_10008DD1C()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + qword_100972920))
  {

    Date.init()();
    PageRefreshGate.appWillForeground(on:)();

    (*(v2 + 8))(v4, v1);
  }
}

uint64_t sub_10008DE04()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  sub_1000674A8(v1 + v10, v14);
  if (v15)
  {
    sub_10002C0AC(v14, v13);
    sub_10002B894(v14, &unk_10097F510, &unk_1007B2700);
    sub_10002A400(v13, v13[3]);
    (*(v7 + 104))(v9, enum case for StoreViewControllerLifecycleEvent.appExitedWhileAppeared(_:), v6);
    dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
    (*(v7 + 8))(v9, v6);
    result = sub_100007000(v13);
  }

  else
  {
    result = sub_10002B894(v14, &unk_10097F510, &unk_1007B2700);
  }

  if (*(v1 + qword_100972920))
  {

    Date.init()();
    PageRefreshGate.appWillBackground(on:)();

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

double sub_10008E07C(uint64_t a1)
{
  *(v1 + qword_100972920) = a1;

  return result;
}

uint64_t sub_10008E094(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v27 = a3;
  v7 = type metadata accessor for Shelf.ContentType();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  Shelf.contentType.getter();
  v14 = sub_1005D8420();
  if (v14)
  {
    v16 = v14;
    v26 = v15;
    if (dispatch thunk of ShelfPresenter.doesShelfExist(for:)())
    {
      v25 = sub_100596D4C(a2);
    }

    else
    {
      v25 = 0;
    }

    v17 = Shelf.isHorizontal.getter();
    (*(v8 + 16))(v10, v13, v7);
    v18 = (*(v8 + 88))(v10, v7);
    if (v18 != enum case for Shelf.ContentType.smallLockup(_:) && v18 != enum case for Shelf.ContentType.mediumLockup(_:))
    {
      if (v18 == enum case for Shelf.ContentType.largeLockup(_:))
      {
LABEL_12:
        v20 = 1;
        goto LABEL_13;
      }

      if (v18 != enum case for Shelf.ContentType.inAppPurchaseLockup(_:) && v18 != enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:) && v18 != enum case for Shelf.ContentType.action(_:))
      {
        if (v18 == enum case for Shelf.ContentType.ribbonBar(_:))
        {
          goto LABEL_12;
        }

        if (v18 != enum case for Shelf.ContentType.editorialCard(_:) && v18 != enum case for Shelf.ContentType.videoCard(_:))
        {
          v20 = 1;
          if (v18 == enum case for Shelf.ContentType.brick(_:) || v18 == enum case for Shelf.ContentType.categoryBrick(_:))
          {
            goto LABEL_13;
          }

          if (v18 != enum case for Shelf.ContentType.reviews(_:) && v18 != enum case for Shelf.ContentType.appTrailerLockup(_:) && v18 != enum case for Shelf.ContentType.framedVideo(_:) && v18 != enum case for Shelf.ContentType.screenshotsLockup(_:) && v18 != enum case for Shelf.ContentType.largeHeroBreakout(_:) && v18 != enum case for Shelf.ContentType.smallBreakout(_:))
          {
            if (v18 == enum case for Shelf.ContentType.editorialStoryCard(_:))
            {
              goto LABEL_13;
            }

            if (v18 != enum case for Shelf.ContentType.mixedMediaLockup(_:) && v18 != enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:) && v18 != enum case for Shelf.ContentType.largeGameCenterPlayer(_:) && v18 != enum case for Shelf.ContentType.posterLockup(_:) && v18 != enum case for Shelf.ContentType.smallContactCard(_:))
            {
              if (v18 != enum case for Shelf.ContentType.informationRibbon(_:))
              {
                v20 = v17;
                if (v18 != enum case for Shelf.ContentType.appPromotion(_:))
                {
                  (*(v8 + 8))(v10, v7);
                  v20 = 0;
                }
              }

              goto LABEL_13;
            }
          }
        }
      }
    }

    v20 = v17;
LABEL_13:
    sub_100587504(v13, v20 & 1, v25, v4, v27);
    (*(v26 + 24))(a1, v20 & 1, v4, *&v4[OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_artworkLoader], v16);
  }

  return (*(v8 + 8))(v13, v7);
}

void *sub_10008E4F8()
{
  v1 = swift_isaMask & *v0;
  v2 = type metadata accessor for ShelfBackground();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __chkstk_darwin(v6);
  v9 = (&v34 - v8);
  v10 = _swiftEmptyArrayStorage;
  v35 = _swiftEmptyArrayStorage;
  v11 = (*(v1 + 1240))(v7);
  v12 = sub_100055A98(v11);
  if (v12)
  {
    v13 = v12;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v10 = v35;
  }

  v14 = sub_10058A0C0(v0);
  if (v14)
  {
    v15 = v14;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v10 = v35;
  }

  if (dispatch thunk of ShelfPresenter.sectionCount.getter() < 1)
  {
    goto LABEL_14;
  }

  dispatch thunk of ShelfPresenter.background(for:)();
  if ((*(v3 + 88))(v9, v2) != enum case for ShelfBackground.color(_:))
  {
    (*(v3 + 8))(v9, v2);
    goto LABEL_14;
  }

  (*(v3 + 96))(v9, v2);

  v16 = *(sub_10002849C(&qword_100972A40, &unk_1007B3750) + 48);
  v17 = type metadata accessor for ShelfBackgroundStyle();
  (*(*(v17 - 8) + 8))(v9 + v16, v17);
  v18 = objc_opt_self();
  v19 = [v18 fractionalWidthDimension:1.0];
  v20 = [v18 absoluteDimension:2000.0];
  v21 = [objc_opt_self() sizeWithWidthDimension:v19 heightDimension:v20];

  v22 = String._bridgeToObjectiveC()();
  v23 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v21 elementKind:v22 alignment:1 absoluteOffset:{0.0, -2000.0}];

  [v23 setExtendsBoundary:0];
  v9 = v23;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v10 = v35;
LABEL_14:
    if (dispatch thunk of ShelfPresenter.sectionCount.getter() < 1)
    {
      break;
    }

    if (!__OFSUB__(dispatch thunk of ShelfPresenter.sectionCount.getter(), 1))
    {
      dispatch thunk of ShelfPresenter.background(for:)();
      if ((*(v3 + 88))(v5, v2) == enum case for ShelfBackground.color(_:))
      {
        (*(v3 + 96))(v5, v2);

        v24 = *(sub_10002849C(&qword_100972A40, &unk_1007B3750) + 48);
        v25 = type metadata accessor for ShelfBackgroundStyle();
        (*(*(v25 - 8) + 8))(v5 + v24, v25);
        v26 = objc_opt_self();
        v27 = [v26 fractionalWidthDimension:1.0];
        v28 = [v26 absoluteDimension:2000.0];
        v29 = [objc_opt_self() sizeWithWidthDimension:v27 heightDimension:v28];

        v30 = String._bridgeToObjectiveC()();
        v31 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v29 elementKind:v30 alignment:5 absoluteOffset:{0.0, 2000.0}];

        [v31 setExtendsBoundary:0];
        v32 = v31;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        return v35;
      }

      else
      {
        (*(v3 + 8))(v5, v2);
      }

      return v10;
    }

    __break(1u);
LABEL_23:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  return v10;
}

void sub_10008EBD0()
{
  v0 = sub_100091E34();
  if (v0)
  {
    v4 = v0;
    v1 = [v4 configuration];
    sub_100005744(0, &qword_100970CA8, UICollectionViewCompositionalLayoutConfiguration_ptr);
    v2 = NSCopying.makeCopy()();

    sub_10008E4F8();
    sub_100005744(0, &qword_10097F460, NSCollectionLayoutBoundarySupplementaryItem_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v2 setBoundarySupplementaryItems:isa];

    [v4 setConfiguration:v2];
  }
}

void sub_10008ECEC()
{
  v1 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController;
  v2 = *&v0[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController];
  if (v2)
  {
    type metadata accessor for JULoadingViewController();
    if (swift_dynamicCastClass())
    {
      v3 = v2;
      static ViewControllerContainment.remove(_:)();

      v4 = *&v0[v1];
      *&v0[v1] = 0;

      v5 = [v0 view];
      if (v5)
      {
        v6 = v5;
        [v5 bounds];

        static ViewControllerContainment.add(_:to:frame:)();

        sub_100186B90();
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_10008EE00()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  v4 = (swift_isaMask & *v0);
  v5 = sub_10002849C(&unk_100972A20, &unk_1007B1EC0);
  __chkstk_darwin(v5 - 8);
  v7 = &v28 - v6;
  v8 = *((v3 & v2) + 0x3E0);
  v9 = *((v3 & v2) + 0x408);
  dispatch thunk of ShelfPresenter.sectionCount.getter();
  v10 = [v0 collectionView];
  [v10 reloadData];

  v11 = *((v3 & v2) + 0x3F8);
  if (dispatch thunk of MetricsPagePresenter.pendingPageRender.getter())
  {
    PendingPageRender.isLayoutPending.setter();
  }

  v12 = sub_100091E34();
  if (v12)
  {
    v13 = v12;
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = swift_allocObject();
    *(v15 + 2) = v8;
    *(v15 + 3) = v4[125];
    *(v15 + 4) = v4[126];
    *(v15 + 5) = v11;
    *(v15 + 6) = v4[128];
    *(v15 + 7) = v9;
    *(v15 + 8) = v14;
    v16 = &v13[OBJC_IVAR____TtC8AppStore33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    v17 = *&v13[OBJC_IVAR____TtC8AppStore33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    v18 = *&v13[OBJC_IVAR____TtC8AppStore33BaseCollectionCompositionalLayout_pendingPrepareObserver + 8];
    *v16 = sub_100094174;
    v16[1] = v15;

    sub_10001F63C(v17, v18);
  }

  v19 = sub_100091E34();
  v20 = type metadata accessor for IndexSet();
  (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
  sub_100596E64(v7);

  sub_10002B894(v7, &unk_100972A20, &unk_1007B1EC0);
  v21 = dispatch thunk of MetricsPagePresenter.pageRenderMetrics.getter();
  v22 = [objc_opt_self() sharedApplication];
  v23 = [v22 launchedToTest];

  if (v23)
  {
    if (v21)
    {
      v24 = objc_opt_self();

      v25 = [v24 defaultCenter];
      type metadata accessor for PageRenderMetricsPresenter();
      v26 = static PageRenderMetricsPresenter.pageEndNotification.getter();
      [v25 addObserver:v1 selector:"ppt_pageRenderMetricsPresenterPageLoaded:" name:v26 object:v21];
    }

    else
    {
      sub_100094120();
      v27 = swift_allocError();
      sub_10021CA80(v27);
    }
  }

  else
  {
  }
}

uint64_t sub_10008F1C0(uint64_t a1)
{
  v3 = sub_10002849C(&unk_100972A20, &unk_1007B1EC0);
  *&v4 = __chkstk_darwin(v3 - 8).n128_u64[0];
  v6 = &v20 - v5;
  v7 = [v1 collectionView];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 collectionViewLayout];

    [v9 invalidateLayout];
  }

  v10 = [v1 collectionView];
  if (v10)
  {
    v11 = v10;
    sub_10002849C(&qword_10096FCE8, qword_1007BCF50);
    v12 = type metadata accessor for IndexPath();
    v13 = *(v12 - 8);
    v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1007B10D0;
    (*(v13 + 16))(v15 + v14, a1, v12);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v11 reloadItemsAtIndexPaths:isa];
  }

  v17 = sub_100091E34();
  v18 = type metadata accessor for IndexSet();
  (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
  sub_100596E64(v6);

  return sub_10002B894(v6, &unk_100972A20, &unk_1007B1EC0);
}

void sub_10008F414(uint64_t a1)
{
  v2 = v1;
  v28 = a1;
  v27 = swift_isaMask & *v1;
  v3 = type metadata accessor for IndexSet();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v25 = v5;
  v26 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&unk_100972A20, &unk_1007B1EC0);
  *&v7 = __chkstk_darwin(v6 - 8).n128_u64[0];
  v9 = &v25 - v8;
  v10 = [v1 collectionView];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 collectionViewLayout];

    [v12 invalidateLayout];
  }

  v13 = sub_100091E34();
  v14 = *(v4 + 16);
  v15 = v28;
  v14(v9, v28, v3);
  (*(v4 + 56))(v9, 0, 1, v3);
  sub_100596E64(v9);

  sub_10002B894(v9, &unk_100972A20, &unk_1007B1EC0);
  v16 = objc_opt_self();
  v17 = v26;
  v14(v26, v15, v3);
  v18 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v19 = swift_allocObject();
  v20 = v27;
  *(v19 + 16) = *(v27 + 992);
  *(v19 + 32) = *(v20 + 1008);
  *(v19 + 40) = *(v20 + 1016);
  *(v19 + 56) = *(v20 + 1032);
  *(v19 + 64) = v2;
  (*(v4 + 32))(v19 + v18, v17, v3);
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1000940BC;
  *(v21 + 24) = v19;
  aBlock[4] = sub_10006F258;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000489A8;
  aBlock[3] = &unk_1008B2EB8;
  v22 = _Block_copy(aBlock);
  v23 = v2;

  [v16 performWithoutAnimation:v22];
  _Block_release(v22);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

void sub_10008F7D0(uint64_t a1)
{
  v2 = v1;
  v4 = swift_isaMask & *v1;
  v5 = *(v4 + 0x3E0);
  v6 = *(v4 + 0x408);
  if (dispatch thunk of ShelfPresenter.sectionCount.getter())
  {
    if (qword_10096D118 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for OSLogger();
    sub_1000056A8(v7, qword_1009CE200);
    sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B1E00;
    v27 = v5;
    v28 = *(v4 + 1000);
    v29 = *(v4 + 1016);
    v30 = v6;
    *&v29 = type metadata accessor for BaseShelfViewController(0, &v27);
    v27 = v1;
    v8 = v1;
    static LogMessage.safe(_:)();
    sub_10002B894(&v27, &unk_1009711D0, &unk_1007B1A10);
    LogMessage.init(stringLiteral:)();
    swift_getErrorValue();
    *&v29 = v26;
    v9 = sub_1000056E0(&v27);
    (*(*(v26 - 8) + 16))(v9);
    static LogMessage.sensitive(_:)();
    sub_10002B894(&v27, &unk_1009711D0, &unk_1007B1A10);
    Logger.error(_:)();

    goto LABEL_7;
  }

  type metadata accessor for JUContentUnavailableViewController();
  swift_errorRetain();
  swift_unknownObjectRetain();
  v10 = JUContentUnavailableViewController.init(error:from:includeMetrics:retry:)();
  v11 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController;
  v12 = *&v2[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController];
  v13 = v10;
  static ViewControllerContainment.remove(_:)();

  v14 = *&v2[v11];
  *&v2[v11] = v10;
  v15 = v13;

  v16 = [v2 view];
  if (v16)
  {
    v17 = v16;
    [v16 bounds];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v27 = v19;
    *&v28 = v21;
    *(&v28 + 1) = v23;
    *&v29 = v25;
    BYTE8(v29) = 0;
    static ViewControllerContainment.add(_:to:frame:)();

    sub_100186B90();
LABEL_7:
    sub_10021CA80(a1);
    return;
  }

  __break(1u);
}

void sub_10008FB9C()
{
  v1 = [v0 collectionView];
  sub_1005972A8();

  sub_10008EBD0();
}

void sub_10008FC04()
{
  v1 = [v0 collectionView];
  sub_1005895AC(v1);

  sub_10008EBD0();
}

double sub_10008FC6C(uint64_t a1)
{
  v2 = (swift_isaMask & *v1);
  if (qword_10096D118 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for OSLogger();
  sub_1000056A8(v3, qword_1009CE200);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B1E00;
  v4 = v2[63];
  v9 = v2[62];
  v10 = v4;
  v11 = v2[64];
  *(&v10 + 1) = type metadata accessor for BaseShelfViewController(0, &v9);
  *&v9 = v1;
  v5 = v1;
  static LogMessage.safe(_:)();
  sub_10002B894(&v9, &unk_1009711D0, &unk_1007B1A10);
  LogMessage.init(stringLiteral:)();
  swift_getErrorValue();
  *(&v10 + 1) = v8;
  v6 = sub_1000056E0(&v9);
  (*(*(v8 - 8) + 16))(v6);
  static LogMessage.sensitive(_:)();
  sub_10002B894(&v9, &unk_1009711D0, &unk_1007B1A10);
  Logger.error(_:)();

  return result;
}

uint64_t sub_10008FED0(uint64_t a1)
{
  v3 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = *(v1 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph);
  v7 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    return sub_10002B894(v5, &unk_100972A00, &unk_1007B3130);
  }

  sub_1005F9AF4(a1, 1, v6, v5);

  return (*(v8 + 8))(v5, v7);
}

double sub_100090020(uint64_t a1)
{
  if (a1)
  {
    v2 = swift_isaMask & *v1;
    type metadata accessor for PageRefreshGate();
    swift_allocObject();

    *(v1 + qword_100972920) = PageRefreshGate.init(policy:)();

    if (!*(v1 + qword_100972920))
    {
      return result;
    }

    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = swift_allocObject();
    *(v5 + 16) = *(v2 + 992);
    *(v5 + 32) = *(v2 + 1008);
    *(v5 + 40) = *(v2 + 1016);
    *(v5 + 56) = *(v2 + 1032);
    *(v5 + 64) = v4;

    PageRefreshGate.performRefresh.setter();
  }

  else
  {
    *(v1 + qword_100972920) = 0;
  }

  return result;
}

uint64_t sub_1000901A0()
{
  v1 = *v0;
  v2 = swift_isaMask;
  v28 = swift_isaMask & *v0;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v3 - 8);
  v34 = v3;
  __chkstk_darwin(v3);
  v32 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v30 = *(v5 - 8);
  v31 = v5;
  __chkstk_darwin(v5);
  v29 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DispatchTime();
  v7 = *(v27 - 8);
  __chkstk_darwin(v27);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v25 - v11;
  aBlock[0] = *(v0 + qword_1009728E8);
  swift_unknownObjectRetain();
  PageRefreshPolicy.shouldSendEventsForPageExit.getter();
  v13 = *((v2 & v1) + 0x3E0);
  v14 = *((v2 & v1) + 0x3E8);
  dispatch thunk of ClearablePresenter.clearContent(shouldSendEventsForPageExit:)();
  swift_unknownObjectRelease();
  if (*(*(v0 + qword_1009728F0) + 112))
  {

    ImpressionsCalculator.removeAllElements()();
  }

  sub_100093A30();
  sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
  v25 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  PageRefreshPolicy.updateDelayInterval.getter();
  + infix(_:_:)();
  v26 = *(v7 + 8);
  v15 = v27;
  v26(v9, v27);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v13;
  *(v17 + 24) = v14;
  v18 = v28;
  *(v17 + 32) = *(v28 + 1008);
  *(v17 + 40) = *(v18 + 1016);
  *(v17 + 56) = *(v18 + 1032);
  *(v17 + 64) = v16;
  aBlock[4] = sub_100094048;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007A08;
  aBlock[3] = &unk_1008B2E18;
  v19 = _Block_copy(aBlock);

  v20 = v29;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10009405C(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10002849C(&unk_1009729F0, &unk_1007B3D80);
  sub_10000794C(&qword_100976F60, &unk_1009729F0, &unk_1007B3D80);
  v21 = v32;
  v22 = v34;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v23 = v25;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v19);

  (*(v33 + 8))(v21, v22);
  (*(v30 + 8))(v20, v31);
  return (v26)(v12, v15);
}

void sub_100090684()
{
  v1 = v0;
  v2 = swift_isaMask & *v0;
  v3 = *(v2 + 0x3F0);
  v4 = *(v2 + 0x408);
  v24 = *(v2 + 0x3E0);
  v25 = v24;
  v26 = v3;
  v23 = *(v2 + 1016);
  v27 = v23;
  v28 = v4;
  v5 = type metadata accessor for BaseShelfViewController(0, &v25);
  v29.receiver = v0;
  v29.super_class = v5;
  objc_msgSendSuper2(&v29, "viewDidLoad");
  v6 = [objc_opt_self() sharedApplication];
  v7 = [v6 launchedToTest];

  if (v7)
  {

    dispatch thunk of InfiniteScrollObserver.pptAllowedPaginationCount.setter();
  }

  v8 = *&v1[qword_100972918];
  if (v8)
  {
    sub_100005744(0, &unk_1009729D0, UIContextMenuInteraction_ptr);
    type metadata accessor for FlowPreviewing(0, v24, v3, v9);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v11 = v8;
    v12 = [objc_allocWithZone(ObjCClassFromMetadata) initWithDelegate:v11];
    v13 = [v1 collectionView];
    if (!v13)
    {
LABEL_13:
      __break(1u);
      return;
    }

    v14 = v13;
    [v13 addInteraction:v12];
  }

  v15 = [v1 collectionView];
  if (!v15)
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v15;
  v17 = sub_10009095C();
  [v16 setCollectionViewLayout:v17];

  dispatch thunk of UpdatablePresenter.didLoad()();
  v18 = [v1 collectionView];
  if (v18)
  {
    v19 = v18;
    [v18 setAlwaysBounceVertical:1];
  }

  v20 = [v1 collectionView];
  if (v20)
  {
    v21 = v20;
    [v20 setPrefetchDataSource:v1];
  }

  v22 = [v1 collectionView];
  sub_100450658(v22);
}

id sub_10009095C()
{
  v1 = *v0;
  v2 = swift_isaMask;
  v3 = swift_isaMask & *v0;
  v4 = [objc_allocWithZone(UICollectionViewCompositionalLayoutConfiguration) init];
  sub_10008E4F8();
  sub_100005744(0, &qword_10097F460, NSCollectionLayoutBoundarySupplementaryItem_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v4 setBoundarySupplementaryItems:isa];

  v6 = type metadata accessor for BaseCollectionCompositionalLayout();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = *(v3 + 992);
  *(v8 + 32) = *((v2 & v1) + 0x3F0);
  *(v8 + 40) = *(v3 + 1016);
  *(v8 + 56) = *((v2 & v1) + 0x408);
  *(v8 + 64) = v7;
  v9 = objc_allocWithZone(v6);
  v13[4] = sub_100094014;
  v13[5] = v8;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_1002E9BD4;
  v13[3] = &unk_1008B2DC8;
  v10 = _Block_copy(v13);

  v11 = [v9 initWithSectionProvider:v10 configuration:v4];

  _Block_release(v10);

  return v11;
}

void sub_100090B80(void *a1)
{
  v1 = a1;
  sub_100090684();
}

double sub_100090BC8()
{
  v1 = swift_isaMask & *v0;
  v2 = *(v1 + 0x3F0);
  v3 = *(v1 + 0x408);
  v6 = *(v1 + 0x3E0);
  v7 = v2;
  v8 = *(v1 + 1016);
  v9 = v3;
  v4 = type metadata accessor for BaseShelfViewController(0, &v6);
  v10.receiver = v0;
  v10.super_class = v4;
  objc_msgSendSuper2(&v10, "as_viewDidBecomeFullyVisible");
  if (*(*(v0 + qword_1009728F0) + 112))
  {

    ImpressionsCalculator.isVisible.setter();
  }

  type metadata accessor for MetricsActivity();
  static MetricsActivity.current.getter();
  dispatch thunk of MetricsPagePresenter.referrer.getter();
  dispatch thunk of MetricsActivity.changePageReferrerUrl(_:)();

  static MetricsActivity.current.getter();
  dispatch thunk of MetricsActivity.changePreloaded(_:)();

  return result;
}

void sub_100090D34(void *a1)
{
  v1 = a1;
  sub_100090BC8();
}

id sub_100090D7C()
{
  v1 = (swift_isaMask & *v0);
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v1[63];
  v9[0] = v1[62];
  v9[1] = v6;
  v9[2] = v1[64];
  v7 = type metadata accessor for BaseShelfViewController(0, v9);
  v10.receiver = v0;
  v10.super_class = v7;
  result = objc_msgSendSuper2(&v10, "as_viewWillBecomeFullyVisible");
  if (*(v0 + qword_100972920))
  {

    Date.init()();
    PageRefreshGate.viewWillAppear(on:)();

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

void sub_100090ED8(void *a1)
{
  v1 = a1;
  sub_100090D7C();
}

id sub_100090F20(char a1)
{
  v3 = (swift_isaMask & *v1);
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v3[63];
  v11[0] = v3[62];
  v11[1] = v8;
  v11[2] = v3[64];
  v9 = type metadata accessor for BaseShelfViewController(0, v11);
  v12.receiver = v1;
  v12.super_class = v9;
  result = objc_msgSendSuper2(&v12, "viewWillAppear:", a1 & 1);
  if (*(v1 + qword_100972920))
  {

    Date.init()();
    PageRefreshGate.viewWillAppear(on:)();

    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

void sub_100091084(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_100090F20(a3);
}

void sub_1000910D8(char a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = swift_isaMask;
  v6 = swift_isaMask & *v2;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *((v5 & v4) + 0x3F0);
  v12 = *((v5 & v4) + 0x408);
  v15 = *(v6 + 992);
  v16 = v15;
  v17 = v11;
  v14 = *(v6 + 1016);
  v18 = v14;
  v19 = v12;
  v13 = type metadata accessor for BaseShelfViewController(0, &v16);
  v20.receiver = v2;
  v20.super_class = v13;
  objc_msgSendSuper2(&v20, "viewDidAppear:", a1 & 1);
  if (dispatch thunk of MetricsPagePresenter.pendingPageRender.getter())
  {
    Date.init()();
    Date.timeIntervalSince1970.getter();
    (*(v8 + 8))(v10, v7);
    PendingPageRender.appearTime.setter();
  }

  if (*(*(v2 + qword_1009728F0) + 112))
  {

    ImpressionsCalculator.isVisible.setter();
  }

  type metadata accessor for MetricsActivity();
  static MetricsActivity.current.getter();
  dispatch thunk of MetricsPagePresenter.referrer.getter();
  dispatch thunk of MetricsActivity.changePageReferrerUrl(_:)();
}

void sub_10009132C(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1000910D8(a3);
}

void sub_100091380()
{
  v1 = v0;
  v2 = (swift_isaMask & *v0);
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v2[63];
  v9[0] = v2[62];
  v9[1] = v7;
  v9[2] = v2[64];
  v8 = type metadata accessor for BaseShelfViewController(0, v9);
  v10.receiver = v1;
  v10.super_class = v8;
  objc_msgSendSuper2(&v10, "as_viewWillBecomePartiallyVisible");
  if (*(*&v1[qword_1009728F0] + 112))
  {

    ImpressionsCalculator.isVisible.setter();
  }

  type metadata accessor for MetricsActivity();
  static MetricsActivity.current.getter();
  dispatch thunk of MetricsActivity.changePageReferrerUrl(_:)();

  static MetricsActivity.current.getter();
  dispatch thunk of MetricsActivity.changePreloaded(_:)();

  if (*&v1[qword_100972920])
  {

    Date.init()();
    PageRefreshGate.viewWillDisappear(on:)();

    (*(v4 + 8))(v6, v3);
  }
}

void sub_100091554(void *a1)
{
  v1 = a1;
  sub_100091380();
}

void sub_10009159C(char a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = swift_isaMask;
  v6 = swift_isaMask & *v2;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ViewWillDisappearReason();
  __chkstk_darwin(v11 - 8);
  v12 = sub_10002849C(&qword_1009729C8, &unk_1007B3740);
  __chkstk_darwin(v12 - 8);
  v14 = &v20 - v13;
  v15 = *((v5 & v4) + 0x3F0);
  v16 = *((v5 & v4) + 0x408);
  v21 = *(v6 + 992);
  v22 = v21;
  v23 = v15;
  v20 = *(v6 + 1016);
  v24 = v20;
  v25 = v16;
  v17 = type metadata accessor for BaseShelfViewController(0, &v22);
  v26.receiver = v2;
  v26.super_class = v17;
  objc_msgSendSuper2(&v26, "viewWillDisappear:", a1 & 1);
  if (dispatch thunk of MetricsPagePresenter.pendingPageRender.getter())
  {
    static ViewWillDisappearReason.inferred(for:)();
    Date.init()();
    Date.timeIntervalSince1970.getter();
    (*(v8 + 8))(v10, v7);
    PendingPageRender.DisappearTimeAndReason.init(reason:timeInterval:)();
    v18 = type metadata accessor for PendingPageRender.DisappearTimeAndReason();
    (*(*(v18 - 8) + 56))(v14, 0, 1, v18);
    PendingPageRender.disappearTime.setter();
  }

  if (*(v2 + qword_100972908) == 1)
  {
    type metadata accessor for VideoPlaybackCoordinator();
    type metadata accessor for BaseObjectGraph();
    inject<A, B>(_:from:)();
    v19 = v22;
    dispatch thunk of VideoPlaybackCoordinator.pauseAutoPlayVideo()();
  }

  if (*(*(v2 + qword_1009728F0) + 112))
  {

    ImpressionsCalculator.isVisible.setter();
  }

  type metadata accessor for MetricsActivity();
  static MetricsActivity.current.getter();
  dispatch thunk of MetricsActivity.changePageReferrerUrl(_:)();

  static MetricsActivity.current.getter();
  dispatch thunk of MetricsActivity.changePreloaded(_:)();

  if (*(v2 + qword_100972920))
  {

    Date.init()();
    PageRefreshGate.viewWillDisappear(on:)();

    (*(v8 + 8))(v10, v7);
  }
}

void sub_10009197C(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_10009159C(a3);
}

void sub_1000919D0()
{
  v1 = (swift_isaMask & *v0);
  v2 = v1[63];
  v5[0] = v1[62];
  v5[1] = v2;
  v5[2] = v1[64];
  v3 = type metadata accessor for BaseShelfViewController(0, v5);
  v6.receiver = v0;
  v6.super_class = v3;
  objc_msgSendSuper2(&v6, "as_viewDidBecomePartiallyVisible");
  if (*(v0 + qword_100972908) == 1)
  {
    type metadata accessor for VideoPlaybackCoordinator();
    type metadata accessor for BaseObjectGraph();
    inject<A, B>(_:from:)();
    v4 = *&v5[0];
    dispatch thunk of VideoPlaybackCoordinator.pauseAutoPlayVideo()();
  }
}

void sub_100091AB4(void *a1)
{
  v1 = a1;
  sub_1000919D0();
}

void sub_100091AFC(uint64_t a1)
{
  v3 = (swift_isaMask & *v1);
  v4 = v3[63];
  v7[0] = v3[62];
  v7[1] = v4;
  v7[2] = v3[64];
  v5 = type metadata accessor for BaseShelfViewController(0, v7);
  v8.receiver = v1;
  v8.super_class = v5;
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  if ([v1 isViewLoaded])
  {
    sub_10008EBD0();
    v6 = [v1 collectionView];
    sub_1005973D0(v6);
  }
}

void sub_100091BE4(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_100091AFC(a3);
}

void sub_100091C50(uint64_t a1, double a2, double a3)
{
  v7 = (swift_isaMask & *v3);
  v8 = v7[63];
  v17[0] = v7[62];
  v17[1] = v8;
  v17[2] = v7[64];
  v9 = type metadata accessor for BaseShelfViewController(0, v17);
  v18.receiver = v3;
  v18.super_class = v9;
  objc_msgSendSuper2(&v18, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  if ([v3 isViewLoaded])
  {
    v10 = [v3 traitCollection];
    v11 = type metadata accessor for SnapshotPageTraitEnvironment();
    v12 = objc_allocWithZone(v11);
    v13 = &v12[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_pageContainerSize];
    *v13 = a2;
    v13[1] = a3;
    *&v12[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_traitCollection] = v10;
    v16.receiver = v12;
    v16.super_class = v11;
    v14 = objc_msgSendSuper2(&v16, "init");
    v15 = [v3 collectionView];
    sub_100597410(v15);
  }
}

void sub_100091DB4(void *a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  sub_100091C50(a5, a2, a3);
  swift_unknownObjectRelease();
}

id sub_100091E34()
{
  result = [v0 collectionView];
  if (result)
  {
    v2 = result;
    v3 = [result collectionViewLayout];

    result = 0;
    if (v3)
    {
      type metadata accessor for BaseCollectionCompositionalLayout();
      result = swift_dynamicCastClass();
      if (!result)
      {

        return 0;
      }
    }
  }

  return result;
}

void sub_100091EB0(uint64_t a1)
{
  v12 = [v1 collectionView];
  if (v12)
  {
    v3 = 1 << *(a1 + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(a1 + 56);
    v6 = (v3 + 63) >> 6;

    v7 = 0;
    if (v5)
    {
      while (1)
      {
        v8 = v7;
LABEL_10:
        v9 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v10 = *(*(a1 + 48) + ((v8 << 9) | (8 * v9)));
        v11 = dispatch thunk of ShelfPresenter.shelf(for:)();
        sub_10008E094(v11, v10, v12);

        if (!v5)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        return;
      }

      if (v8 >= v6)
      {
        break;
      }

      v5 = *(a1 + 56 + 8 * v8);
      ++v7;
      if (v5)
      {
        v7 = v8;
        goto LABEL_10;
      }
    }
  }
}

double sub_100092064(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  type metadata accessor for IndexPath();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = a1;
  sub_10009385C(v6);

  return result;
}

id sub_1000920E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v5 = Strong;

  v6 = v5;
  result = [v6 collectionView];
  if (result)
  {
    v8 = result;
    v9 = *&v6[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph];

    v10 = sub_100589990(a1, v8, v6, v9);

    return v10;
  }

  __break(1u);
  return result;
}

double sub_1000921D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = sub_10039E290();
    sub_100091EB0(v8);
  }

  swift_beginAccess();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v11 = v9;
    swift_unknownObjectRetain();

    v12 = dispatch thunk of MetricsPagePresenter.pendingPageRender.getter();
    swift_unknownObjectRelease();
    if (v12)
    {
      PendingPageRender.isLayoutPending.setter();
    }
  }

  return result;
}

void sub_1000922C4(void *a1)
{
  v1 = [a1 collectionView];
  if (v1)
  {
    v3 = v1;
    IndexSet._bridgeToObjectiveC()(v2);
    v5 = v4;
    [v3 reloadSections:v4];
  }
}

void sub_10009234C(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexSet();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 collectionView];
  if (v9)
  {
    v10 = v9;
    sub_10002849C(&qword_100980550, &qword_1007B1290);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1007B10D0;
    *(v11 + 32) = a2;
    v15[1] = v11;
    sub_10009405C(&qword_1009729B0, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
    sub_10002849C(&qword_1009729B8, &qword_1007B3738);
    sub_10000794C(&qword_1009729C0, &qword_1009729B8, &qword_1007B3738);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    IndexSet._bridgeToObjectiveC()(v12);
    v14 = v13;
    (*(v5 + 8))(v8, v4);
    [v10 reloadSections:v14];
  }
}

void sub_100092528(void *a1)
{
  v1 = a1;
  sub_10008FB9C();
}

void sub_100092570(void *a1)
{
  v1 = a1;
  sub_10008FC04();
}

void sub_1000925B8(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v4 = a1;
  sub_10008FC6C(v5);
}

uint64_t sub_100092610(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = sub_100093EE0();

  return v6;
}

uint64_t sub_10009265C(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1;
  v8 = sub_100093F0C(a4);

  return v8;
}

void sub_1000926B0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1000901A0();
  }
}

void *sub_10009270C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    swift_unknownObjectRetain();

    dispatch thunk of UpdatablePresenter.update(ignoringCache:)();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10009279C(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a1;
  LOBYTE(a5) = sub_100093E80(a5);

  return a5 & 1;
}

double sub_100092808(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a1;
  v11 = sub_100093EB0(a5);

  return v11;
}

id sub_1000928DC(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = a3;
  v15 = a1;
  v16 = sub_10009289C(v14, v11, v13, v10);

  (*(v8 + 8))(v10, v7);

  return v16;
}

uint64_t sub_100092A1C(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = a3;
  v17 = a4;
  v18 = a1;
  sub_100093F38(v17, v13, v15);

  return (*(v10 + 8))(v12, v9);
}

id sub_100092B94(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = a1;
  v12 = sub_100092B5C(v10, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

uint64_t sub_100092D08(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a4;
  v14 = a1;
  sub_100092CA8(v12, v13, v11);

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_100092E20(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a4;
  v14 = a1;
  sub_100093FC4(v13, v11);

  return (*(v9 + 8))(v11, v8);
}

BOOL sub_100092F34(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = a1;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v13 = [v10 cellForItemAtIndexPath:isa];

  if (v13)
  {
    swift_getObjectType();
    v14 = swift_conformsToProtocol2() == 0;

    v10 = v11;
    v11 = v13;
  }

  else
  {
    v14 = 0;
  }

  (*(v7 + 8))(v9, v6);
  return v14;
}

uint64_t sub_1000930E4(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = a1;
  sub_10009309C(v10, v9);

  return (*(v7 + 8))(v9, v6);
}

void sub_1000931FC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1000931E0(v4);
}

void sub_100093280(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_100093264(v4);
}

id sub_1000932E8(uint64_t a1)
{
  v3 = (swift_isaMask & *v1);
  v4 = v3[63];
  v7[0] = v3[62];
  v7[1] = v4;
  v7[2] = v3[64];
  v5 = type metadata accessor for BaseShelfViewController(0, v7);
  v8.receiver = v1;
  v8.super_class = v5;
  objc_msgSendSuper2(&v8, "scrollViewDidScroll:", a1);
  return [*(v1 + qword_1009728F8) scrollViewDidScroll:a1];
}

void sub_100093398(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1000932E8(v4);
}

void sub_10009341C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_100093400(v4);
}

void sub_1000934A8(void *a1, uint64_t a2, void *a3, char a4)
{
  v6 = a3;
  v7 = a1;
  sub_100093484(v6, a4);
}

void sub_100093518(void *a1)
{
  v1 = a1;
  sub_10008DD1C();
}

void sub_100093560(void *a1)
{
  v1 = a1;
  sub_10008DE04();
}

double sub_1000935A8()
{
  swift_unknownObjectRelease();

  return result;
}

id sub_100093638()
{
  v1 = (swift_isaMask & *v0);
  v2 = v1[63];
  v5[0] = v1[62];
  v5[1] = v2;
  v5[2] = v1[64];
  v3 = type metadata accessor for BaseShelfViewController(0, v5);
  v6.receiver = v0;
  v6.super_class = v3;
  return objc_msgSendSuper2(&v6, "dealloc");
}

double sub_1000936B8(uint64_t a1)
{
  swift_unknownObjectRelease();

  return result;
}

double sub_10009385C(uint64_t a1)
{
  v22 = type metadata accessor for IndexPath();
  v3 = *(v22 - 8);
  __chkstk_darwin(v22);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v19[1] = v1;
    v23 = _swiftEmptyArrayStorage;
    sub_100144228(0, v6, 0);
    v7 = v23;
    v9 = *(v3 + 16);
    v8 = v3 + 16;
    v10 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v20 = *(v8 + 56);
    v21 = v9;
    v11 = (v8 - 8);
    do
    {
      v12 = v22;
      v13 = v8;
      v21(v5, v10, v22);
      v14 = IndexPath.section.getter();
      (*v11)(v5, v12);
      v23 = v7;
      v16 = v7[2];
      v15 = v7[3];
      if (v16 >= v15 >> 1)
      {
        sub_100144228((v15 > 1), v16 + 1, 1);
        v7 = v23;
      }

      v7[2] = v16 + 1;
      v7[v16 + 4] = v14;
      v10 += v20;
      --v6;
      v8 = v13;
    }

    while (v6);
  }

  v17 = sub_10039FFF0(v7);

  sub_100091EB0(v17);

  return result;
}

void sub_100093A30()
{
  v1 = v0;
  v2 = type metadata accessor for JULoadingViewController.PresentationContext();
  __chkstk_darwin(v2 - 8);
  v3 = dispatch thunk of ShelfPresenter.sectionCount.getter();
  v4 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController;
  v5 = *&v0[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController];
  if (!v3)
  {
    if (v5)
    {
      type metadata accessor for JULoadingViewController();
      if (swift_dynamicCastClass())
      {
        return;
      }
    }

    dispatch thunk of MetricsPagePresenter.pageRenderMetrics.getter();
    static JULoadingViewController.PresentationContext.placeholder.getter();
    v10 = objc_allocWithZone(type metadata accessor for JULoadingViewController());
    v11 = JULoadingViewController.init(label:presentationContext:pageRenderMetrics:)();
    v12 = *&v1[v4];
    v13 = v11;
    static ViewControllerContainment.remove(_:)();

    v14 = *&v1[v4];
    *&v1[v4] = v11;
    v15 = v13;

    v16 = [v1 view];
    if (v16)
    {
      v17 = v16;
      [v16 bounds];

      static ViewControllerContainment.add(_:to:frame:)();
      sub_100186B90();

      return;
    }

LABEL_12:
    __break(1u);
    return;
  }

  v6 = v5;
  static ViewControllerContainment.remove(_:)();

  v7 = *&v1[v4];
  *&v1[v4] = 0;

  v8 = [v1 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_12;
  }

  v9 = v8;
  [v8 bounds];

  static ViewControllerContainment.add(_:to:frame:)();

  sub_100186B90();
}

void sub_100093D04(void *a1)
{
  if (a1)
  {
    v2 = [a1 integerValue];
    v3 = objc_opt_self();
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    *(v4 + 24) = v2;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_100093E78;
    *(v5 + 24) = v4;
    v9[4] = sub_10006F094;
    v9[5] = v5;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_1000489A8;
    v9[3] = &unk_1008B2D50;
    v6 = _Block_copy(v9);
    v7 = v1;

    [v3 performWithoutAnimation:v6];
    _Block_release(v6);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

void sub_100093F38(void *a1, uint64_t a2, uint64_t a3)
{
  if (IndexPath.count.getter() < 2)
  {
    v7 = 0;
  }

  else
  {
    v7 = IndexPath.section.getter();
  }

  sub_10058D160(a1, a2, a3, v7, v3, *&v3[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph]);
}

uint64_t sub_10009405C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1000940BC()
{
  type metadata accessor for IndexSet();
  v1 = *(v0 + 64);

  sub_1000922C4(v1);
}

unint64_t sub_100094120()
{
  result = qword_100972A30;
  if (!qword_100972A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100972A30);
  }

  return result;
}

uint64_t sub_1000941D0@<X0>(double *a2@<X8>)
{
  v46 = a2;
  v2 = type metadata accessor for PageGrid();
  v38 = *(v2 - 8);
  v39 = v2;
  __chkstk_darwin(v2);
  v37 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_10002849C(&qword_100972A48, &unk_1007BF080);
  __chkstk_darwin(v43);
  v45 = &v37 - v4;
  v5 = sub_10002849C(&unk_10098FFB0, qword_1007B3890);
  __chkstk_darwin(v5 - 8);
  v40 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v37 - v8;
  __chkstk_darwin(v10);
  v12 = &v37 - v11;
  v13 = sub_10002849C(&unk_100992460, &qword_1007B6BF0);
  __chkstk_darwin(v13 - 8);
  v41 = &v37 - v14;
  v15 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v37 - v17;
  v44 = type metadata accessor for Shelf.ContentType();
  v19 = *(v44 - 8);
  __chkstk_darwin(v44);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  v42 = v21;
  ReadOnlyLens.subscript.getter();

  v22 = *(v16 + 8);
  v22(v18, v15);
  v23 = v40;
  ShelfLayoutContext.surroundingShelves.getter();
  sub_10002B894(v23, &unk_10098FFB0, qword_1007B3890);
  sub_100094E74(v9, v12);
  if ((*(v16 + 48))(v12, 1, v15) == 1)
  {
    sub_10002B894(v12, &unk_10098FFB0, qword_1007B3890);
    v24 = 1;
    v25 = v41;
  }

  else
  {
    swift_getKeyPath();
    v25 = v41;
    ReadOnlyLens.subscript.getter();

    v22(v12, v15);
    v24 = 0;
  }

  v26 = v44;
  (*(v19 + 56))(v25, v24, 1, v44);
  v27 = v42;
  v28 = *(v43 + 48);
  v29 = v45;
  (*(v19 + 16))(v45, v42, v26);
  sub_100094EE4(v25, v29 + v28);
  if ((*(v19 + 48))(v29 + v28, 1, v26) == 1)
  {
    if ((*(v19 + 88))(v29, v26) == enum case for Shelf.ContentType.unifiedMessage(_:))
    {
      v30 = v37;
      ShelfLayoutContext.contentPageGrid.getter();
      PageGrid.interRowSpace.getter();
      v32 = v31;
      (*(v38 + 8))(v30, v39);
      v33 = v46;
      v46[3] = &type metadata for CGFloat;
      v33[4] = &protocol witness table for CGFloat;
      *v33 = v32 * 0.5;
      sub_10002B894(v25, &unk_100992460, &qword_1007B6BF0);
      return (*(v19 + 8))(v27, v26);
    }

    else
    {
      v35 = v46;
      v46[3] = &type metadata for Double;
      v35[4] = &protocol witness table for Double;
      *v35 = 0;
      sub_10002B894(v25, &unk_100992460, &qword_1007B6BF0);
      v36 = *(v19 + 8);
      v36(v27, v26);
      return (v36)(v29, v26);
    }
  }

  else
  {
    sub_100753A6C(v46);
    sub_10002B894(v25, &unk_100992460, &qword_1007B6BF0);
    (*(v19 + 8))(v27, v26);
    return sub_10002B894(v29, &qword_100972A48, &unk_1007BF080);
  }
}

uint64_t sub_1000947E4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for Shelf.ContentType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - v10;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v9 + 8))(v11, v8);
  v12 = (*(v5 + 88))(v7, v4);
  if (v12 == enum case for Shelf.ContentType.mediumAdLockupWithScreenshotsBackground(_:) || v12 == enum case for Shelf.ContentType.condensedAdLockupWithIconBackground(_:))
  {
    if (qword_10096E6B0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for StaticDimension();
    v15 = v14;
    v16 = qword_1009D2430;
    goto LABEL_13;
  }

  if (v12 == enum case for Shelf.ContentType.action(_:))
  {
    if (qword_10096E6D8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for StaticDimension();
    v15 = v14;
    v16 = qword_1009D24A8;
LABEL_13:
    v17 = sub_1000056A8(v14, v16);
    a2[3] = v15;
    a2[4] = &protocol witness table for StaticDimension;
    v18 = sub_1000056E0(a2);
    return (*(*(v15 - 8) + 16))(v18, v17, v15);
  }

  sub_100753DA8(a1, a2);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100094AC4@<X0>(void *a1@<X8>)
{
  v2 = sub_10002849C(&unk_1009804F0, &unk_1007B3800);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-v3 - 8];
  v5 = type metadata accessor for ItemBackground();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15[-v11 - 8];
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v10 + 8))(v12, v9);
  if (!*(v14 + 16))
  {

    v16 = 0u;
    v17 = 0u;
    v18 = 0;
    goto LABEL_8;
  }

  sub_10002C0AC(v14 + 32, v15);

  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  sub_10002849C(&qword_10096FB18, &unk_1007B0F10);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    goto LABEL_8;
  }

  if (!*(&v17 + 1))
  {
LABEL_8:
    result = sub_10002B894(&v16, &unk_10096FB20, &qword_1007B3850);
    goto LABEL_9;
  }

  sub_100005A38(&v16, v19);
  sub_10002A400(v19, v19[3]);
  dispatch thunk of ItemBackgroundProviding.itemBackground.getter();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10002B894(v4, &unk_1009804F0, &unk_1007B3800);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    if (ItemBackground.isAdBackground.getter())
    {
      a1[3] = &type metadata for CGFloat;
      a1[4] = &protocol witness table for CGFloat;
      *a1 = 0x4020000000000000;
      (*(v6 + 8))(v8, v5);
      return sub_100007000(v19);
    }

    (*(v6 + 8))(v8, v5);
  }

  result = sub_100007000(v19);
LABEL_9:
  a1[3] = &type metadata for Double;
  a1[4] = &protocol witness table for Double;
  *a1 = 0;
  return result;
}

uint64_t sub_100094E74(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_10098FFB0, qword_1007B3890);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100094EE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_100992460, &qword_1007B6BF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100094F68()
{
  result = qword_100972A68;
  if (!qword_100972A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100972A68);
  }

  return result;
}

uint64_t sub_100094FBC()
{
  v0 = type metadata accessor for OSLogger.Subsystem();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OSLogger();
  sub_100005644(v4, qword_100972A50);
  sub_1000056A8(v4, qword_100972A50);
  if (qword_10096D108 != -1)
  {
    swift_once();
  }

  v5 = sub_1000056A8(v0, qword_1009CE1D0);
  (*(v1 + 16))(v3, v5, v0);
  return OSLogger.init(subsystem:category:)();
}

uint64_t sub_100095110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  v4 = type metadata accessor for InstallationType();
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();
  sub_10002849C(&qword_100972A80, &qword_1007C9840);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v5 = type metadata accessor for AdamId();
  v3[19] = v5;
  v3[20] = *(v5 - 8);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();

  return _swift_task_switch(sub_1000952B0, 0, 0);
}

uint64_t sub_1000952B0()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  sub_10002849C(&unk_100973AF0, &qword_1007B3960);
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v4 = v0[8];
  v0[25] = v0[7];
  v0[26] = v4;
  v0[27] = swift_getObjectType();
  sub_10002849C(&qword_100972A88, &qword_1007B3968);
  inject<A, B>(_:from:)();
  RestoreAppStoreAction.gatedAppAdamId.getter();
  v5 = *(v2 + 48);
  v0[28] = v5;
  v0[29] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v5(v3, 1, v1) == 1)
  {
    sub_10002B894(v0[18], &qword_100972A80, &qword_1007C9840);
  }

  else
  {
    v6 = v0[24];
    v7 = v0[20];
    v13 = v0[19];
    v8 = v0[13];
    v9 = v0[14];
    v10 = v0[12];
    (*(v7 + 32))(v6, v0[18]);
    (*(v8 + 104))(v9, enum case for InstallationType.redownload(_:), v10);
    dispatch thunk of AppStateController.setWaiting(for:installationType:)();
    (*(v8 + 8))(v9, v10);
    (*(v7 + 8))(v6, v13);
  }

  v11 = swift_task_alloc();
  v0[30] = v11;
  *v11 = v0;
  v11[1] = sub_1000954D8;

  return sub_100096094();
}

uint64_t sub_1000954D8()
{
  v2 = *v1;
  *(v2 + 248) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10009575C, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    *(v2 + 256) = v3;
    *v3 = v2;
    v3[1] = sub_100095648;

    return sub_10009673C(v2 + 16);
  }
}

uint64_t sub_100095648()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_100095ADC;
  }

  else
  {
    v2 = sub_1000958FC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10009575C(uint64_t a1)
{
  v2 = v1[28];
  v3 = v1[19];
  v4 = v1[17];
  RestoreAppStoreAction.gatedAppAdamId.getter();
  if (v2(v4, 1, v3) == 1)
  {
    v5 = v1[17];
    swift_unknownObjectRelease();
    sub_100007000(v1 + 2);
    sub_10002B894(v5, &qword_100972A80, &qword_1007C9840);
  }

  else
  {
    v6 = v1[23];
    v7 = v1[19];
    v8 = v1[20];
    (*(v8 + 32))(v6, v1[17], v7);
    dispatch thunk of AppStateController.clearWaiting(for:refreshState:)();
    swift_unknownObjectRelease();
    (*(v8 + 8))(v6, v7);
    sub_100007000(v1 + 2);
  }

  v9 = v1[1];

  return v9();
}

uint64_t sub_1000958FC()
{
  v1 = v0[28];
  v2 = v0[19];
  v3 = v0[16];
  v4 = v0[9];
  v5 = enum case for ActionOutcome.performed(_:);
  v6 = type metadata accessor for ActionOutcome();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  RestoreAppStoreAction.gatedAppAdamId.getter();
  if (v1(v3, 1, v2) == 1)
  {
    v7 = v0[16];
    swift_unknownObjectRelease();
    sub_100007000(v0 + 2);
    sub_10002B894(v7, &qword_100972A80, &qword_1007C9840);
  }

  else
  {
    v8 = v0[22];
    v9 = v0[19];
    v10 = v0[20];
    (*(v10 + 32))(v8, v0[16], v9);
    dispatch thunk of AppStateController.clearWaiting(for:refreshState:)();
    swift_unknownObjectRelease();
    (*(v10 + 8))(v8, v9);
    sub_100007000(v0 + 2);
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_100095ADC(uint64_t a1)
{
  v2 = v1[28];
  v3 = v1[19];
  v4 = v1[15];
  RestoreAppStoreAction.gatedAppAdamId.getter();
  if (v2(v4, 1, v3) == 1)
  {
    v5 = v1[15];
    swift_unknownObjectRelease();
    sub_100007000(v1 + 2);
    sub_10002B894(v5, &qword_100972A80, &qword_1007C9840);
  }

  else
  {
    v7 = v1[20];
    v6 = v1[21];
    v8 = v1[19];
    (*(v7 + 32))(v6, v1[15], v8);
    dispatch thunk of AppStateController.clearWaiting(for:refreshState:)();
    swift_unknownObjectRelease();
    (*(v7 + 8))(v6, v8);
    sub_100007000(v1 + 2);
  }

  v9 = v1[1];

  return v9();
}

uint64_t sub_100095C7C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *sub_10002A400((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_10002849C(&qword_10098A690, qword_1007B39A0);
    v10 = swift_allocError();
    *v11 = a3;
    v12 = a3;

    return _swift_continuation_throwingResumeWithError(v9, v10);
  }

  else
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v6 + 32))(*(*(v9 + 64) + 40), v8, v5);
    return swift_continuation_throwingResume();
  }
}

uint64_t sub_100095DEC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100095E9C;

  return sub_100095110(a1, v6, a3);
}

uint64_t sub_100095E9C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_100095F94()
{
  result = qword_100972A70;
  if (!qword_100972A70)
  {
    type metadata accessor for RestoreAppStoreAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100972A70);
  }

  return result;
}

uint64_t sub_100095FEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100096040();

  return AsyncActionImplementation.perform(_:asPartOf:)(a1, a2, a3, v6);
}

unint64_t sub_100096040()
{
  result = qword_100972A78;
  if (!qword_100972A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100972A78);
  }

  return result;
}

uint64_t sub_100096094()
{
  type metadata accessor for LogMessage.StringInterpolation();
  v0[22] = swift_task_alloc();
  v1 = type metadata accessor for UUID();
  v0[23] = v1;
  v0[24] = *(v1 - 8);
  v0[25] = swift_task_alloc();
  v0[26] = swift_task_alloc();

  return _swift_task_switch(sub_100096188, 0, 0);
}

uint64_t sub_100096188()
{
  v1 = v0[25];
  v2 = objc_allocWithZone(ASDSystemAppMetadata);
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 initWithBundleID:v3];
  v0[27] = v4;

  [v4 setUserInitiated:1];
  v5 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v1;
  v0[3] = sub_100096324;
  v6 = swift_continuation_init();
  v0[17] = sub_10002849C(&qword_100972AB8, &unk_1007B3990);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100095C7C;
  v0[13] = &unk_1008B2F50;
  v0[14] = v6;
  [v5 installApp:v4 withCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100096324()
{
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = sub_1000966A0;
  }

  else
  {
    v2 = sub_100096434;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100096434()
{
  v1 = v0[27];
  (*(v0[24] + 32))(v0[26], v0[25], v0[23]);

  if (qword_10096CF58 != -1)
  {
    swift_once();
  }

  v2 = v0[26];
  v3 = v0[24];
  v11 = v0[27];
  v4 = v0[23];
  v5 = type metadata accessor for OSLogger();
  sub_1000056A8(v5, qword_100972A50);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._object = 0x80000001007FFAE0;
  v6._countAndFlagsBits = 0xD000000000000036;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  v0[21] = v4;
  v7 = sub_1000056E0(v0 + 18);
  (*(v3 + 16))(v7, v2, v4);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002B894((v0 + 18), &unk_1009711D0, &unk_1007B1A10);
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  (*(v3 + 8))(v2, v4);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000966A0()
{
  v1 = *(v0 + 216);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10009673C(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_10002849C(&qword_100972A90, &qword_1007B3980);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_10002849C(&qword_100972A98, &qword_1007B3988);
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_10009687C, 0, 0);
}

uint64_t sub_10009687C()
{
  v1 = *(v0 + 16);
  sub_10002A400(v1, v1[3]);
  if (dispatch thunk of AppStoreInstallStateMonitor.appStoreInstalled.getter())
  {
    if (qword_10096CF58 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for OSLogger();
    sub_1000056A8(v2, qword_100972A50);
    sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    if (qword_10096CF58 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 72);
    v6 = *(v0 + 48);
    v7 = *(v0 + 56);
    v14 = *(v0 + 64);
    v8 = *(v0 + 16);
    v9 = type metadata accessor for OSLogger();
    *(v0 + 80) = v9;
    *(v0 + 88) = sub_1000056A8(v9, qword_100972A50);
    *(v0 + 96) = sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
    v10 = *(type metadata accessor for LogMessage() - 8);
    *(v0 + 104) = *(v10 + 72);
    *(v0 + 120) = *(v10 + 80);
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    sub_10002A400(v8, v1[3]);
    dispatch thunk of AppStoreInstallStateMonitor.onAppStoreInstallStateChange.getter();
    sub_10002849C(&qword_100996830, &qword_1007C73E0);
    sub_100097060(&qword_100972AA0, &qword_100996830, &qword_1007C73E0, &protocol conformance descriptor for AsyncEvent<A>);
    EventEmitter.asyncStream.getter();

    (*(v7 + 16))(v14, v5, v6);
    sub_100097060(&qword_100972AA8, &qword_100972A98, &qword_1007B3988, &protocol conformance descriptor for AsyncStream<A>);
    dispatch thunk of AsyncSequence.makeAsyncIterator()();
    v11 = sub_100097060(&qword_100972AB0, &qword_100972A90, &qword_1007B3980, &protocol conformance descriptor for AsyncStream<A>.Iterator);
    v12 = swift_task_alloc();
    *(v0 + 112) = v12;
    *v12 = v0;
    v12[1] = sub_100096D34;
    v13 = *(v0 + 24);

    return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 124, v13, v11);
  }
}

uint64_t sub_100096D34()
{
  v2 = *v1;

  if (v0)
  {
    v4 = v2[4];
    v3 = v2[5];
    v5 = v2[3];

    (*(v4 + 8))(v3, v5);
    v6 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  }

  else
  {
    v6 = sub_100096E74;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100096E74(__n128 a1)
{
  v2 = *(v1 + 124);
  if (v2 == 2)
  {
LABEL_4:
    v3 = *(v1 + 72);
    v4 = *(v1 + 48);
    v5 = *(v1 + 56);
    (*(*(v1 + 32) + 8))(*(v1 + 40), *(v1 + 24));
    (*(v5 + 8))(v3, v4);

    v6 = *(v1 + 8);

    return v6();
  }

  if (v2)
  {
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    goto LABEL_4;
  }

  v8 = sub_100097060(&qword_100972AB0, &qword_100972A90, &qword_1007B3980, &protocol conformance descriptor for AsyncStream<A>.Iterator);
  v9 = swift_task_alloc();
  *(v1 + 112) = v9;
  *v9 = v1;
  v9[1] = sub_100096D34;
  v10 = *(v1 + 24);

  return dispatch thunk of AsyncIteratorProtocol.next()(v1 + 124, v10, v8);
}

uint64_t sub_100097060(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10002D1A8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000970CC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore28ScreenshotCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10009768C(v1 + v3, a1);
}

uint64_t sub_100097128(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore28ScreenshotCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_10009761C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1000971F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void *sub_10009727C()
{
  v1 = type metadata accessor for Shelf.ContentsMetadata();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - v7;
  v9 = type metadata accessor for ProductMediaMetadata();
  v18 = *(v9 - 8);
  v19 = v9;
  __chkstk_darwin(v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ProductMediaItem();
  sub_1000975C4();
  result = ItemLayoutContext.typedModel<A>(as:)();
  if (v20)
  {
    v17 = v0;
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    swift_getKeyPath();
    ReadOnlyLens.subscript.getter();

    (*(v6 + 8))(v8, v5);
    if ((*(v2 + 88))(v4, v1) == enum case for Shelf.ContentsMetadata.productMedia(_:))
    {
      (*(v2 + 96))(v4, v1);
      v13 = v18;
      v14 = v4;
      v15 = v19;
      (*(v18 + 32))(v11, v14, v19);
      *(*(v17 + OBJC_IVAR____TtC8AppStore28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_platform) = ProductMediaMetadata.platform.getter();

      sub_100617504(v16);

      return (*(v13 + 8))(v11, v15);
    }

    else
    {

      return (*(v2 + 8))(v4, v1);
    }
  }

  return result;
}

unint64_t sub_1000975C4()
{
  result = qword_100972AC0;
  if (!qword_100972AC0)
  {
    type metadata accessor for ProductMediaItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100972AC0);
  }

  return result;
}

uint64_t sub_10009761C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_1009731E0, &unk_1007B0B60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009768C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_1009731E0, &unk_1007B0B60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

int64x2_t sub_100097718()
{
  if (qword_10096CF60 != -1)
  {
    swift_once();
  }

  v0 = qword_100972AC8;
  qword_1009CDBA8 = 0;
  swift_weakInit();
  qword_1009CDBB8 = 0;
  unk_1009CDBC0 = 0;
  result = vdupq_n_s64(0x404A000000000000uLL);
  byte_1009CDBC8 = 1;
  xmmword_1009CDB80 = result;
  *&qword_1009CDB90 = xmmword_1007B3A80;
  qword_1009CDBA0 = v0;
  return result;
}

uint64_t sub_1000977B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_weakInit();
  swift_weakDestroy();
  return sub_100098C4C(a1, a2);
}

char *sub_100097808(char a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  ObjectType = swift_getObjectType();
  *&v6[OBJC_IVAR____TtC8AppStore19IconArtworkGridView_iconViews] = _swiftEmptyArrayStorage;
  v13 = OBJC_IVAR____TtC8AppStore19IconArtworkGridView_layoutMetrics;
  if (qword_10096CF68 != -1)
  {
    swift_once();
  }

  v14 = &v6[v13];
  v15 = qword_1009CDB90;
  v16 = xmmword_1009CDB80;
  *(v14 + 5) = &type metadata for CGFloat;
  *(v14 + 6) = &protocol witness table for CGFloat;
  *(v14 + 2) = v15;
  v17 = byte_1009CDBC8;
  v18 = *algn_1009CDB98;
  v19 = *&qword_1009CDBB8;
  *v14 = v16;
  *(v14 + 56) = v18;
  *(v14 + 72) = v19;
  v14[88] = v17;
  sub_10009A1F0(&xmmword_1009CDB80, &v6[OBJC_IVAR____TtC8AppStore19IconArtworkGridView_config]);
  v6[OBJC_IVAR____TtC8AppStore19IconArtworkGridView_enablePrerenderedIcons] = a1 & 1;
  v40.receiver = v6;
  v40.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v40, "initWithFrame:", a3, a4, a5, a6);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v24 = v20;
  [v24 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v24 setClipsToBounds:1];
  v25 = OBJC_IVAR____TtC8AppStore19IconArtworkGridView_config;
  swift_beginAccess();
  v26 = sub_10009A1F0(v24 + v25, v38);
  __chkstk_darwin(v26);
  sub_10009A268();
  Copyable.copyWithOverrides(in:)();
  sub_10009A228(v38);
  swift_beginAccess();
  sub_10009A2BC(v36, v24 + v25);
  swift_endAccess();
  sub_10009A1F0(v24 + v25, v38);
  v27 = v38[0];
  v28 = v38[1];
  v36[5] = &type metadata for CGFloat;
  v36[6] = &protocol witness table for CGFloat;
  v29 = v38[3];
  v30 = v38[4];
  v36[2] = v38[2];
  v31 = v38[7];
  v32 = v38[8];
  v33 = v39;
  sub_10009A228(v38);
  v36[0] = v27;
  v36[1] = v28;
  v36[7] = v29;
  v36[8] = v30;
  v36[9] = v31;
  v36[10] = v32;
  v37 = v33;
  v34 = OBJC_IVAR____TtC8AppStore19IconArtworkGridView_layoutMetrics;
  swift_beginAccess();
  sub_10009A2F4(v36, v24 + v34);
  swift_endAccess();

  return v24;
}

void sub_100097B40(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore19IconArtworkGridView_iconViews;
  v4 = *&v1[OBJC_IVAR____TtC8AppStore19IconArtworkGridView_iconViews];
  if (v4 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    goto LABEL_27;
  }

  for (i = 0; i != v5; ++i)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v7 = *(v4 + 8 * i + 32);
    }

    v8 = v7;
    [v7 removeFromSuperview];
  }

LABEL_10:
  *&v1[v3] = a1;

  v9 = *&v1[v3];
  if (v9 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
    if (v10)
    {
LABEL_12:
      if (v10 >= 1)
      {

        for (j = 0; j != v10; ++j)
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v12 = *(v9 + 8 * j + 32);
          }

          v13 = v12;
          [v1 addSubview:v12];
        }

        goto LABEL_19;
      }

LABEL_27:
      __break(1u);
      return;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_12;
    }
  }

LABEL_19:

  [v1 setNeedsLayout];
}

uint64_t sub_100097CF0()
{
  v1 = OBJC_IVAR____TtC8AppStore19IconArtworkGridView_config;
  swift_beginAccess();
  sub_10009A1F0(v0 + v1, v13);
  v2 = v13[0];
  v3 = v13[1];
  v11[5] = &type metadata for CGFloat;
  v11[6] = &protocol witness table for CGFloat;
  v4 = v13[3];
  v11[2] = v13[2];
  v5 = v13[4];
  v6 = v13[7];
  v7 = v13[8];
  v8 = v14;
  sub_10009A228(v13);
  v11[0] = v2;
  v11[1] = v3;
  v11[7] = v4;
  v11[8] = v5;
  v11[9] = v6;
  v11[10] = v7;
  v12 = v8;
  v9 = OBJC_IVAR____TtC8AppStore19IconArtworkGridView_layoutMetrics;
  swift_beginAccess();
  sub_10009A350(v11, v0 + v9);
  swift_endAccess();
  [v0 setNeedsLayout];
  return sub_10009A044(v11);
}

void sub_100097F0C()
{
  v1 = OBJC_IVAR____TtC8AppStore19IconArtworkGridView_iconViews;
  type metadata accessor for ArtworkView();

  v2 = Array.isNotEmpty.getter();

  if (v2)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v3 = *(v0 + v1);
      if (v3 >> 62)
      {
        v4 = _CocoaArrayWrapper.endIndex.getter();
        if (v4)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v4)
        {
LABEL_5:
          if (v4 < 1)
          {
            __break(1u);
            return;
          }

          v5 = 0;
          do
          {
            if ((v3 & 0xC000000000000001) != 0)
            {
              v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v6 = *(v3 + 8 * v5 + 32);
            }

            v7 = v6;
            ++v5;
            sub_10009A098();
            ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
          }

          while (v4 != v5);

          goto LABEL_14;
        }
      }
    }

LABEL_14:
    sub_100097B40(_swiftEmptyArrayStorage);
  }
}

void sub_10009807C(CGFloat a1, CGFloat a2)
{
  if (a1 > 0.0 && a2 > 0.0)
  {
    v4 = v2;
    v6 = v2 + OBJC_IVAR____TtC8AppStore19IconArtworkGridView_config;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v7 = *(v6 + 40);
      if (v7)
      {
        type metadata accessor for Artwork();

        if ((Array.isNotEmpty.getter() & 1) == 0)
        {

          return;
        }

        v8 = OBJC_IVAR____TtC8AppStore19IconArtworkGridView_layoutMetrics;
        swift_beginAccess();
        sub_100098C84(v4 + v8, v22);
        v9 = *(sub_100098D34(v22, v4, 0.0, 0.0, a1, a2) + 2);

        sub_10009A044(v22);
        v10 = _swiftEmptyArrayStorage;
        v22[0] = _swiftEmptyArrayStorage;
        if (v9)
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            if (v7 >> 62)
            {
              goto LABEL_35;
            }

            for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
            {
              v20 = OBJC_IVAR____TtC8AppStore19IconArtworkGridView_enablePrerenderedIcons;
              type metadata accessor for ArtworkView();
              v12 = 0;
              while (1)
              {
                v13 = (*(v4 + v20) == 1 ? static ArtworkView.prerenderedIconArtworkView.getter() : static ArtworkView.iconArtworkView.getter());
                v14 = v13;
                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                if (*((v22[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                if (i == -1 && v12 == 0x8000000000000000)
                {
                  break;
                }

                v10 = v22[0];
                specialized _ArrayBuffer._getElementSlowPath(_:)();
                Artwork.config(using:)();
                sub_10009A098();
                ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();

                swift_unknownObjectRelease();

                if (v9 == ++v12)
                {
                  goto LABEL_30;
                }
              }

LABEL_34:
              __break(1u);
LABEL_35:
              ;
            }

            __break(1u);
            goto LABEL_37;
          }

          v21 = v7 & 0xFFFFFFFFFFFFFF8;
          v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v15)
          {
LABEL_37:
            __break(1u);
            return;
          }

          v19 = OBJC_IVAR____TtC8AppStore19IconArtworkGridView_enablePrerenderedIcons;
          type metadata accessor for ArtworkView();
          v16 = 0;
          do
          {
            if (*(v4 + v19) == 1)
            {
              v17 = static ArtworkView.prerenderedIconArtworkView.getter();
            }

            else
            {
              v17 = static ArtworkView.iconArtworkView.getter();
            }

            v18 = v17;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v22[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            if (v16 % v15 >= *(v21 + 16))
            {
              __break(1u);
              goto LABEL_34;
            }

            ++v16;
            v10 = v22[0];

            Artwork.config(using:)();
            sub_10009A098();
            ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
          }

          while (v9 != v16);
        }

LABEL_30:

        sub_100097B40(v10);
      }
    }
  }
}

uint64_t sub_10009846C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for LayoutRect();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52.receiver = v3;
  v52.super_class = ObjectType;
  objc_msgSendSuper2(&v52, "layoutSubviews", v7);
  [v3 bounds];
  x = v59.origin.x;
  y = v59.origin.y;
  width = v59.size.width;
  height = v59.size.height;
  result = CGRectIsEmpty(v59);
  if ((result & 1) == 0)
  {
    v15 = OBJC_IVAR____TtC8AppStore19IconArtworkGridView_iconViews;
    v16 = *&v3[OBJC_IVAR____TtC8AppStore19IconArtworkGridView_iconViews];
    if (!(v16 >> 62))
    {
      result = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }

LABEL_4:
      v17 = *&v3[v15];
      *&v45 = v9;
      if (v17 >> 62)
      {
        v18 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v42 = v15;
      v19 = _swiftEmptyArrayStorage;
      if (v18)
      {
        v41 = v6;
        *&v43 = v5;
        *&v44 = v3;
        v47[0] = _swiftEmptyArrayStorage;

        result = sub_100143F04(0, v18 & ~(v18 >> 63), 0);
        if (v18 < 0)
        {
          __break(1u);
          goto LABEL_36;
        }

        v20 = 0;
        v19 = v47[0];
        v53 = 0x3FF0000000000000;
        v54 = 0;
        v55 = 0;
        v56 = 0x3FF0000000000000;
        v57 = 0;
        v58 = 0;
        do
        {
          if ((v17 & 0xC000000000000001) != 0)
          {
            v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v21 = *(v17 + 8 * v20 + 32);
          }

          v22 = v21;
          [v22 transform];
          if (static CGAffineTransform.== infix(_:_:)())
          {
            *&v46.d = sub_100028004();
            *&v46.tx = &protocol witness table for UIView;
            *&v46.a = v22;
            v23 = v22;
          }

          else
          {
            UIView.withUntransformedFrame.getter();
          }

          sub_100005A38(&v46, v48);

          v47[0] = v19;
          v25 = v19[2];
          v24 = v19[3];
          if (v25 >= v24 >> 1)
          {
            sub_100143F04((v24 > 1), v25 + 1, 1);
          }

          ++v20;
          v26 = v49;
          v27 = v50;
          v28 = sub_100047650(v48, v49);
          v29 = __chkstk_darwin(v28);
          v31 = &v41 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v32 + 16))(v31, v29);
          sub_1000B3484(v25, v31, v47, v26, v27);
          sub_100007000(v48);
          v19 = v47[0];
        }

        while (v18 != v20);

        v3 = v44;
        v5 = v43;
        v6 = v41;
      }

      v33 = OBJC_IVAR____TtC8AppStore19IconArtworkGridView_layoutMetrics;
      swift_beginAccess();
      sub_100098C84(&v3[v33], v48);
      v51 = v19;
      v34 = v45;
      IconArtworkGridLayout.placeChildren(relativeTo:in:)(v3, x, y, width, height);
      (*(v6 + 8))(v34, v5);
      v35 = &v3[OBJC_IVAR____TtC8AppStore19IconArtworkGridView_config];
      swift_beginAccess();
      result = CGAffineTransformMakeRotation(&v46, v35[4]);
      v44 = *&v46.c;
      v45 = *&v46.a;
      v43 = *&v46.tx;
      v36 = *&v3[v42];
      if (v36 >> 62)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
        v37 = result;
        if (result)
        {
LABEL_21:
          if (v37 >= 1)
          {

            v38 = 0;
            do
            {
              if ((v36 & 0xC000000000000001) != 0)
              {
                v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v39 = *(v36 + 8 * v38 + 32);
              }

              v40 = v39;
              ++v38;
              *&v46.a = v45;
              *&v46.c = v44;
              *&v46.tx = v43;
              [v39 setTransform:&v46];
            }

            while (v37 != v38);

            return sub_100098CE0(v48);
          }

LABEL_36:
          __break(1u);
          return result;
        }
      }

      else
      {
        v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v37)
        {
          goto LABEL_21;
        }
      }

      return sub_100098CE0(v48);
    }

    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_4;
    }
  }

  return result;
}

uint64_t sub_100098A5C(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{

  *(a1 + 40) = a2;
  result = swift_weakAssign();
  *(a1 + 56) = a4;
  *(a1 + 64) = a5;
  *(a1 + 72) = 0;
  return result;
}

uint64_t sub_100098B78(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 73))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_100098BD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

char *sub_100098D34(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v11 = type metadata accessor for FloatingPointRoundingRule();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v177 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = *(a1 + 64);
  CGAffineTransformMakeRotation(&v207, v183);
  v208.origin.x = a5 * -0.5;
  v208.origin.y = a6 * -0.5;
  v208.size.width = a5;
  v208.size.height = a6;
  v209 = CGRectApplyAffineTransform(v208, &v207);
  x = v209.origin.x;
  y = v209.origin.y;
  width = v209.size.width;
  v205 = v209.size.width;
  height = v209.size.height;
  v201 = v209.size.height;
  MinX = CGRectGetMinX(v209);
  v196 = a3;
  v210.origin.x = a3;
  v197 = a4;
  v210.origin.y = a4;
  v210.size.width = a5;
  v210.size.height = a6;
  v198 = a6;
  v204 = MinX + CGRectGetMidX(v210);
  v211.origin.x = x;
  v211.origin.y = y;
  v211.size.width = width;
  v211.size.height = height;
  MinY = CGRectGetMinY(v211);
  v212.origin.x = a3;
  v212.origin.y = a4;
  v212.size.width = a5;
  v20 = a5;
  v212.size.height = a6;
  v203 = MinY + CGRectGetMidY(v212);
  v22 = *a1;
  v21 = *(a1 + 8);
  CGAffineTransformMakeRotation(&v207, v183);
  v213.origin.x = v22 * -0.5;
  v213.origin.y = v21 * -0.5;
  v213.size.width = v22;
  v213.size.height = v21;
  v195 = v21;
  v214 = CGRectApplyAffineTransform(v213, &v207);
  v23 = v214.origin.x;
  v24 = v214.origin.y;
  v25 = v214.size.width;
  v26 = v214.size.height;
  v27 = CGRectGetMinX(v214);
  v215.origin.x = 0.0;
  v215.origin.y = 0.0;
  v215.size.width = v22;
  v215.size.height = v21;
  v200 = v27 + CGRectGetMidX(v215);
  v216.origin.x = v23;
  v216.origin.y = v24;
  v216.size.width = v25;
  v216.size.height = v26;
  v28 = CGRectGetMinY(v216);
  v217.origin.x = 0.0;
  v217.origin.y = 0.0;
  v217.size.width = v22;
  v217.size.height = v21;
  v202 = v28 + CGRectGetMidY(v217);
  sub_10002A400((a1 + 16), *(a1 + 40));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v30 = v29;
  v190 = v29;
  (*(v12 + 8))(v14, v11);
  v31 = *(a1 + 56);
  v193 = v22;
  v32 = v22 + v30;
  v33 = floor(v32 * v31);
  v34 = v196;
  v218.origin.x = v196;
  v35 = v197;
  v218.origin.y = v197;
  v218.size.width = v20;
  v36 = v198;
  v218.size.height = v198;
  MidX = CGRectGetMidX(v218);
  v219.origin.x = v34;
  v219.origin.y = v35;
  v194 = v20;
  v219.size.width = v20;
  v219.size.height = v36;
  MidY = CGRectGetMidY(v219);
  v37 = v183;
  v38 = __sincos_stret(v183);
  v189 = v38.__cosval * v32;
  v188 = v38.__sinval * v32;
  v39 = __sincos_stret(v37 + 3.14159265);
  v192 = v39.__cosval * v32;
  v191 = v39.__sinval * v32;
  v180 = v38.__cosval * v33;
  v179 = v38.__sinval * v33;
  v40 = __sincos_stret(v37 + 1.57079633);
  sinval = v40.__sinval;
  cosval = v40.__cosval;
  v41 = v195 + v190;
  v42 = v200;
  v220.origin.x = v200;
  v43 = v202;
  v220.origin.y = v202;
  v220.size.width = v25;
  v220.size.height = v26;
  v44 = MidX + CGRectGetMidX(v220);
  v221.origin.x = v42;
  v221.origin.y = v43;
  v221.size.width = v25;
  v221.size.height = v26;
  v45 = v44 + CGRectGetWidth(v221) * -0.5;
  v222.origin.x = v42;
  v222.origin.y = v43;
  v222.size.width = v25;
  v222.size.height = v26;
  v46 = MidY + CGRectGetMidY(v222);
  v223.origin.x = v42;
  v223.origin.y = v43;
  v223.size.width = v25;
  v223.size.height = v26;
  v224.origin.y = v46 + CGRectGetHeight(v223) * -0.5;
  v300.origin.x = v204;
  v300.size.width = v205;
  v224.origin.x = v45;
  v300.origin.y = v203;
  v224.size.width = v25;
  v224.size.height = v26;
  v300.size.height = v201;
  v47 = CGRectIntersectsRect(v224, v300);
  v178 = v41;
  MinX = v25;
  v199 = v26;
  if (v47)
  {
    v185 = cosval * v41 + v180;
    v184 = sinval * v41 + v179;
    v48 = _swiftEmptyArrayStorage;
    v49 = 0.5;
    v50 = MidX;
    v51 = MidY;
    v52 = v201;
    v53 = v202;
    v54 = v200;
    do
    {
      cosval = v50;
      v230.origin.x = v54;
      v230.origin.y = v53;
      v230.size.width = v25;
      v230.size.height = v26;
      v57 = v50 + CGRectGetMidX(v230);
      v231.origin.x = v54;
      v231.origin.y = v53;
      v231.size.width = v25;
      v231.size.height = v26;
      v58 = v57 - CGRectGetWidth(v231) * v49;
      v232.origin.x = v54;
      v232.origin.y = v53;
      v232.size.width = v25;
      v232.size.height = v26;
      v190 = v51 + CGRectGetMidY(v232);
      v233.origin.x = v54;
      v233.origin.y = v53;
      v233.size.width = v25;
      v233.size.height = v26;
      v59 = v190 - CGRectGetHeight(v233) * v49;
      v234.origin.x = v58;
      v234.origin.y = v59;
      v234.size.width = v25;
      v234.size.height = v26;
      v302.origin.y = v203;
      v302.origin.x = v204;
      v302.size.width = v205;
      v302.size.height = v52;
      v60 = CGRectIntersectsRect(v234, v302);
      sinval = v51;
      if (v60)
      {
        v190 = cosval;
        v61 = v51;
        do
        {
          v240.origin.x = v58;
          v240.origin.y = v59;
          v240.size.width = v25;
          v240.size.height = v26;
          v304.origin.x = v196;
          v304.origin.y = v197;
          v304.size.width = v194;
          v304.size.height = v198;
          if (CGRectIntersectsRect(v240, v304))
          {
            v241.origin.x = 0.0;
            v241.origin.y = 0.0;
            v71 = v193;
            v241.size.width = v193;
            v72 = v195;
            v241.size.height = v195;
            v73 = CGRectGetMidX(v241);
            v242.origin.x = 0.0;
            v242.origin.y = 0.0;
            v242.size.width = v71;
            v242.size.height = v72;
            v74 = CGRectGetWidth(v242);
            v243.origin.x = 0.0;
            v243.origin.y = 0.0;
            v243.size.width = v71;
            v243.size.height = v72;
            v75 = CGRectGetMidY(v243);
            v244.origin.x = 0.0;
            v244.origin.y = 0.0;
            v244.size.width = v71;
            v244.size.height = v72;
            v76 = CGRectGetHeight(v244);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v48 = sub_10003341C(0, *(v48 + 2) + 1, 1, v48);
            }

            v78 = *(v48 + 2);
            v77 = *(v48 + 3);
            v63 = v190;
            if (v78 >= v77 >> 1)
            {
              v48 = sub_10003341C((v77 > 1), v78 + 1, 1, v48);
            }

            v62 = 0.5;
            *(v48 + 2) = v78 + 1;
            v79 = &v48[32 * v78];
            v79[4] = v63 + v73 - v74 * 0.5;
            v79[5] = v61 + v75 - v76 * 0.5;
            v80 = v195;
            v79[6] = v193;
            v79[7] = v80;
          }

          else
          {
            v62 = 0.5;
            v63 = v190;
          }

          v64 = v189 + v63;
          v61 = v188 + v61;
          v26 = v199;
          v65 = v200;
          v235.origin.x = v200;
          v66 = v202;
          v235.origin.y = v202;
          v25 = MinX;
          v235.size.width = MinX;
          v235.size.height = v199;
          v67 = CGRectGetMidX(v235);
          v190 = v64;
          v68 = v64 + v67;
          v236.origin.x = v65;
          v236.origin.y = v66;
          v236.size.width = v25;
          v236.size.height = v26;
          v58 = v68 - CGRectGetWidth(v236) * v62;
          v237.origin.x = v65;
          v237.origin.y = v66;
          v237.size.width = v25;
          v237.size.height = v26;
          v69 = v61 + CGRectGetMidY(v237);
          v238.origin.x = v65;
          v238.origin.y = v66;
          v238.size.width = v25;
          v238.size.height = v26;
          v59 = v69 - CGRectGetHeight(v238) * v62;
          v239.origin.x = v58;
          v239.origin.y = v59;
          v239.size.width = v25;
          v239.size.height = v26;
          v303.origin.y = v203;
          v303.origin.x = v204;
          v303.size.width = v205;
          v303.size.height = v201;
          v70 = CGRectIntersectsRect(v239, v303);
          v51 = sinval;
        }

        while (v70);
      }

      v81 = v192 + cosval;
      v82 = v191 + v51;
      v245.size.height = v199;
      v83 = v200;
      v245.origin.x = v200;
      v84 = v202;
      v245.origin.y = v202;
      v245.size.width = v25;
      v85 = v81 + CGRectGetMidX(v245);
      v246.origin.x = v83;
      v246.origin.y = v84;
      v246.size.width = v25;
      v246.size.height = v199;
      v86 = v85 - CGRectGetWidth(v246) * 0.5;
      v247.origin.x = v83;
      v247.origin.y = v84;
      v247.size.width = v25;
      v247.size.height = v199;
      v87 = v82 + CGRectGetMidY(v247);
      v248.origin.x = v83;
      v248.origin.y = v84;
      v26 = v199;
      v248.size.width = v25;
      v248.size.height = v199;
      v88 = v87 - CGRectGetHeight(v248) * 0.5;
      v249.origin.x = v86;
      v249.origin.y = v88;
      v249.size.width = v25;
      v249.size.height = v26;
      v305.origin.y = v203;
      v305.origin.x = v204;
      v305.size.width = v205;
      v305.size.height = v201;
      if (CGRectIntersectsRect(v249, v305))
      {
        do
        {
          v255.origin.x = v86;
          v255.origin.y = v88;
          v255.size.width = v25;
          v255.size.height = v26;
          v307.origin.x = v196;
          v307.origin.y = v197;
          v307.size.width = v194;
          v307.size.height = v198;
          if (CGRectIntersectsRect(v255, v307))
          {
            v256.origin.x = 0.0;
            v256.origin.y = 0.0;
            v95 = v193;
            v256.size.width = v193;
            v96 = v195;
            v256.size.height = v195;
            v97 = CGRectGetMidX(v256);
            v257.origin.x = 0.0;
            v257.origin.y = 0.0;
            v257.size.width = v95;
            v257.size.height = v96;
            v98 = CGRectGetWidth(v257);
            v258.origin.x = 0.0;
            v258.origin.y = 0.0;
            v258.size.width = v95;
            v258.size.height = v96;
            v190 = CGRectGetMidY(v258);
            v259.origin.x = 0.0;
            v259.origin.y = 0.0;
            v259.size.width = v95;
            v259.size.height = v96;
            v99 = CGRectGetHeight(v259);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v48 = sub_10003341C(0, *(v48 + 2) + 1, 1, v48);
            }

            v101 = *(v48 + 2);
            v100 = *(v48 + 3);
            if (v101 >= v100 >> 1)
            {
              v48 = sub_10003341C((v100 > 1), v101 + 1, 1, v48);
            }

            v89 = 0.5;
            v102 = v82 + v190 - v99 * 0.5;
            *(v48 + 2) = v101 + 1;
            v103 = &v48[32 * v101];
            v103[4] = v81 + v97 - v98 * 0.5;
            v103[5] = v102;
            v104 = v195;
            v103[6] = v193;
            v103[7] = v104;
          }

          else
          {
            v89 = 0.5;
          }

          v81 = v192 + v81;
          v82 = v191 + v82;
          v90 = v200;
          v250.origin.x = v200;
          v91 = v202;
          v250.origin.y = v202;
          v250.size.width = v25;
          v92 = v199;
          v250.size.height = v199;
          v93 = v81 + CGRectGetMidX(v250);
          v251.origin.x = v90;
          v251.origin.y = v91;
          v251.size.width = MinX;
          v251.size.height = v92;
          v86 = v93 - CGRectGetWidth(v251) * v89;
          v252.origin.x = v90;
          v252.origin.y = v91;
          v252.size.width = MinX;
          v252.size.height = v92;
          v94 = v82 + CGRectGetMidY(v252);
          v253.origin.x = v90;
          v253.origin.y = v91;
          v26 = v92;
          v25 = MinX;
          v253.size.width = MinX;
          v253.size.height = v26;
          v88 = v94 - CGRectGetHeight(v253) * v89;
          v254.origin.x = v86;
          v254.origin.y = v88;
          v254.size.width = v25;
          v254.size.height = v26;
          v306.origin.y = v203;
          v306.origin.x = v204;
          v306.size.width = v205;
          v306.size.height = v201;
        }

        while (CGRectIntersectsRect(v254, v306));
      }

      v50 = v185 + cosval;
      v51 = v184 + sinval;
      v54 = v200;
      v225.origin.x = v200;
      v53 = v202;
      v225.origin.y = v202;
      v225.size.width = v25;
      v225.size.height = v26;
      v55 = v50 + CGRectGetMidX(v225);
      v226.origin.x = v54;
      v226.origin.y = v53;
      v226.size.width = v25;
      v226.size.height = v26;
      v49 = 0.5;
      v190 = v55 - CGRectGetWidth(v226) * 0.5;
      v227.origin.x = v54;
      v227.origin.y = v53;
      v227.size.width = v25;
      v227.size.height = v26;
      v56 = v51 + CGRectGetMidY(v227);
      v228.origin.x = v54;
      v228.origin.y = v53;
      v228.size.width = v25;
      v228.size.height = v26;
      v229.origin.y = v56 - CGRectGetHeight(v228) * 0.5;
      v229.origin.x = v190;
      v229.size.width = v25;
      v229.size.height = v26;
      v301.origin.y = v203;
      v301.origin.x = v204;
      v301.size.width = v205;
      v52 = v201;
      v301.size.height = v201;
    }

    while (CGRectIntersectsRect(v229, v301));
  }

  else
  {
    v48 = _swiftEmptyArrayStorage;
    v53 = v202;
    v54 = v200;
  }

  v105 = __sincos_stret(v183 + -1.57079633);
  v185 = v105.__cosval * v178 - v180;
  v106 = MidX + v185;
  v184 = v105.__sinval * v178 - v179;
  v107 = MidY + v184;
  v260.origin.x = v54;
  v260.origin.y = v53;
  v260.size.width = v25;
  v260.size.height = v26;
  v108 = CGRectGetMidX(v260);
  sinval = v106;
  v109 = v106 + v108;
  v261.origin.x = v54;
  v261.origin.y = v53;
  v261.size.width = v25;
  v261.size.height = v26;
  v110 = v54;
  v111 = v109 - CGRectGetWidth(v261) * 0.5;
  v262.origin.x = v110;
  v262.origin.y = v53;
  v262.size.width = v25;
  v262.size.height = v26;
  v112 = CGRectGetMidY(v262);
  cosval = v107;
  v113 = v107 + v112;
  v263.origin.x = v110;
  v263.origin.y = v53;
  v263.size.width = v25;
  v263.size.height = v26;
  v264.origin.y = v113 - CGRectGetHeight(v263) * 0.5;
  v308.size.height = v201;
  v264.origin.x = v111;
  v264.size.width = v25;
  v264.size.height = v26;
  v308.origin.y = v203;
  v308.origin.x = v204;
  v308.size.width = v205;
  if (CGRectIntersectsRect(v264, v308))
  {
    v114 = sinval;
    v115 = cosval;
    v116 = v200;
    do
    {
      v270.origin.x = v116;
      v270.origin.y = v53;
      v270.size.width = v25;
      v270.size.height = v26;
      v120 = v114 + CGRectGetMidX(v270);
      v271.origin.x = v116;
      v271.origin.y = v53;
      v271.size.width = v25;
      v271.size.height = v26;
      v121 = v120 - CGRectGetWidth(v271) * 0.5;
      v272.origin.x = v116;
      v272.origin.y = v53;
      v272.size.width = v25;
      v272.size.height = v26;
      v122 = v115 + CGRectGetMidY(v272);
      v273.origin.x = v116;
      v273.origin.y = v53;
      v273.size.width = v25;
      v273.size.height = v26;
      v123 = v122 - CGRectGetHeight(v273) * 0.5;
      v274.origin.x = v121;
      v274.origin.y = v123;
      v274.size.width = v25;
      v274.size.height = v26;
      v310.origin.y = v203;
      v310.origin.x = v204;
      v310.size.width = v205;
      v310.size.height = v201;
      v124 = CGRectIntersectsRect(v274, v310);
      sinval = v114;
      cosval = v115;
      if (v124)
      {
        v190 = v114;
        do
        {
          v280.origin.x = v121;
          v280.origin.y = v123;
          v280.size.width = v25;
          v280.size.height = v26;
          v312.origin.x = v196;
          v312.origin.y = v197;
          v312.size.width = v194;
          v312.size.height = v198;
          if (CGRectIntersectsRect(v280, v312))
          {
            v281.origin.x = 0.0;
            v281.origin.y = 0.0;
            v133 = v193;
            v281.size.width = v193;
            v134 = v195;
            v281.size.height = v195;
            v135 = CGRectGetMidX(v281);
            v282.origin.x = 0.0;
            v282.origin.y = 0.0;
            v282.size.width = v133;
            v282.size.height = v134;
            v136 = CGRectGetWidth(v282);
            v283.origin.x = 0.0;
            v283.origin.y = 0.0;
            v283.size.width = v133;
            v283.size.height = v134;
            v137 = CGRectGetMidY(v283);
            v284.origin.x = 0.0;
            v284.origin.y = 0.0;
            v284.size.width = v133;
            v284.size.height = v134;
            v138 = CGRectGetHeight(v284);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v48 = sub_10003341C(0, *(v48 + 2) + 1, 1, v48);
            }

            v140 = *(v48 + 2);
            v139 = *(v48 + 3);
            v141 = 0.5;
            v126 = v190;
            if (v140 >= v139 >> 1)
            {
              v146 = sub_10003341C((v139 > 1), v140 + 1, 1, v48);
              v141 = 0.5;
              v48 = v146;
            }

            v142 = v126 + v135 - v136 * v141;
            v143 = v115 + v137;
            v125 = 0.5;
            *(v48 + 2) = v140 + 1;
            v144 = &v48[32 * v140];
            v144[4] = v142;
            v144[5] = v143 - v138 * 0.5;
            v145 = v195;
            v144[6] = v193;
            v144[7] = v145;
          }

          else
          {
            v125 = 0.5;
            v126 = v190;
          }

          v127 = v189 + v126;
          v115 = v188 + v115;
          v26 = v199;
          v128 = v200;
          v275.origin.x = v200;
          v129 = v202;
          v275.origin.y = v202;
          v25 = MinX;
          v275.size.width = MinX;
          v275.size.height = v199;
          v130 = CGRectGetMidX(v275);
          v190 = v127;
          v131 = v127 + v130;
          v276.origin.x = v128;
          v276.origin.y = v129;
          v276.size.width = v25;
          v276.size.height = v26;
          v121 = v131 - CGRectGetWidth(v276) * v125;
          v277.origin.x = v128;
          v277.origin.y = v129;
          v277.size.width = v25;
          v277.size.height = v26;
          v132 = v115 + CGRectGetMidY(v277);
          v278.origin.x = v128;
          v278.origin.y = v129;
          v278.size.width = v25;
          v278.size.height = v26;
          v123 = v132 - CGRectGetHeight(v278) * v125;
          v279.origin.x = v121;
          v279.origin.y = v123;
          v279.size.width = v25;
          v279.size.height = v26;
          v311.origin.y = v203;
          v311.origin.x = v204;
          v311.size.width = v205;
          v311.size.height = v201;
        }

        while (CGRectIntersectsRect(v279, v311));
      }

      v147 = v192 + sinval;
      v148 = v191 + cosval;
      v149 = v200;
      v285.origin.x = v200;
      v285.origin.y = v202;
      v285.size.width = v25;
      v285.size.height = v26;
      v150 = CGRectGetMidX(v285);
      v190 = v147;
      v151 = v147 + v150;
      v286.origin.x = v149;
      v286.origin.y = v202;
      v286.size.width = v25;
      v286.size.height = v26;
      v152 = v151 - CGRectGetWidth(v286) * 0.5;
      v287.origin.x = v149;
      v287.origin.y = v202;
      v287.size.width = v25;
      v287.size.height = v26;
      v153 = v148 + CGRectGetMidY(v287);
      v288.origin.x = v149;
      v53 = v202;
      v288.origin.y = v202;
      v288.size.width = v25;
      v288.size.height = v26;
      v154 = v153 - CGRectGetHeight(v288) * 0.5;
      v289.origin.x = v152;
      v289.origin.y = v154;
      v289.size.width = v25;
      v289.size.height = v26;
      v313.origin.y = v203;
      v313.origin.x = v204;
      v313.size.width = v205;
      v313.size.height = v201;
      if (CGRectIntersectsRect(v289, v313))
      {
        do
        {
          v295.origin.x = v152;
          v295.origin.y = v154;
          v295.size.width = v25;
          v295.size.height = v26;
          v315.origin.x = v196;
          v315.origin.y = v197;
          v315.size.width = v194;
          v315.size.height = v198;
          if (CGRectIntersectsRect(v295, v315))
          {
            v296.origin.x = 0.0;
            v296.origin.y = 0.0;
            v162 = v193;
            v296.size.width = v193;
            v163 = v195;
            v296.size.height = v195;
            v164 = CGRectGetMidX(v296);
            v297.origin.x = 0.0;
            v297.origin.y = 0.0;
            v297.size.width = v162;
            v297.size.height = v163;
            v165 = CGRectGetWidth(v297);
            v298.origin.x = 0.0;
            v298.origin.y = 0.0;
            v298.size.width = v162;
            v298.size.height = v163;
            v166 = CGRectGetMidY(v298);
            v299.origin.x = 0.0;
            v299.origin.y = 0.0;
            v299.size.width = v162;
            v299.size.height = v163;
            v167 = CGRectGetHeight(v299);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v48 = sub_10003341C(0, *(v48 + 2) + 1, 1, v48);
            }

            v169 = *(v48 + 2);
            v168 = *(v48 + 3);
            v170 = 0.5;
            v156 = v190;
            if (v169 >= v168 >> 1)
            {
              v175 = sub_10003341C((v168 > 1), v169 + 1, 1, v48);
              v170 = 0.5;
              v48 = v175;
            }

            v171 = v156 + v164 - v165 * v170;
            v172 = v148 + v166;
            v155 = 0.5;
            *(v48 + 2) = v169 + 1;
            v173 = &v48[32 * v169];
            v173[4] = v171;
            v173[5] = v172 - v167 * 0.5;
            v174 = v195;
            v173[6] = v193;
            v173[7] = v174;
          }

          else
          {
            v155 = 0.5;
            v156 = v190;
          }

          v157 = v192 + v156;
          v148 = v191 + v148;
          v26 = v199;
          v158 = v200;
          v290.origin.x = v200;
          v53 = v202;
          v290.origin.y = v202;
          v25 = MinX;
          v290.size.width = MinX;
          v290.size.height = v199;
          v159 = CGRectGetMidX(v290);
          v190 = v157;
          v160 = v157 + v159;
          v291.origin.x = v158;
          v291.origin.y = v53;
          v291.size.width = v25;
          v291.size.height = v26;
          v152 = v160 - CGRectGetWidth(v291) * v155;
          v292.origin.x = v158;
          v292.origin.y = v53;
          v292.size.width = v25;
          v292.size.height = v26;
          v161 = v148 + CGRectGetMidY(v292);
          v293.origin.x = v158;
          v293.origin.y = v53;
          v293.size.width = v25;
          v293.size.height = v26;
          v154 = v161 - CGRectGetHeight(v293) * v155;
          v294.origin.x = v152;
          v294.origin.y = v154;
          v294.size.width = v25;
          v294.size.height = v26;
          v314.origin.y = v203;
          v314.origin.x = v204;
          v314.size.width = v205;
          v314.size.height = v201;
        }

        while (CGRectIntersectsRect(v294, v314));
      }

      v114 = v185 + sinval;
      v115 = v184 + cosval;
      v116 = v200;
      v265.origin.x = v200;
      v265.origin.y = v53;
      v265.size.width = v25;
      v265.size.height = v26;
      v117 = v114 + CGRectGetMidX(v265);
      v266.origin.x = v116;
      v266.origin.y = v53;
      v266.size.width = v25;
      v266.size.height = v26;
      v118 = v117 - CGRectGetWidth(v266) * 0.5;
      v267.origin.x = v116;
      v267.origin.y = v53;
      v267.size.width = v25;
      v267.size.height = v26;
      v119 = v115 + CGRectGetMidY(v267);
      v268.origin.x = v116;
      v268.origin.y = v53;
      v268.size.width = v25;
      v268.size.height = v26;
      v269.origin.y = v119 - CGRectGetHeight(v268) * 0.5;
      v269.origin.x = v118;
      v269.size.width = v25;
      v269.size.height = v26;
      v309.origin.y = v203;
      v309.origin.x = v204;
      v309.size.width = v205;
      v309.size.height = v201;
    }

    while (CGRectIntersectsRect(v269, v309));
  }

  return v48;
}