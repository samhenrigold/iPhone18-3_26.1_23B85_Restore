void sub_1001A682C()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC22SubscribePageExtension41AppEventLiveIndicatorAnimationCoordinator_animatingViews;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if ((v3 & 0xC000000000000001) == 0)
  {
    if (*(v3 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_1001A5FF8();
    return;
  }

  v4 = sub_100754434();

  if (!v4)
  {
    goto LABEL_6;
  }

LABEL_3:
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension41AppEventLiveIndicatorAnimationCoordinator_animationPhase) = 2;
  v5 = *(v0 + v2);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = ObjectType;
  v7 = objc_allocWithZone(UIViewPropertyAnimator);
  v19 = sub_1001AA3A8;
  v20 = v6;
  aBlock = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_1000CF7B0;
  v18 = &unk_10086B398;
  v8 = _Block_copy(&aBlock);

  v9 = [v7 initWithDuration:v8 controlPoint1:0.6 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
  _Block_release(v8);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = sub_1001A8FAC;
  v20 = v10;
  aBlock = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_1001A5B50;
  v18 = &unk_10086B3C0;
  v11 = _Block_copy(&aBlock);

  [v9 addCompletion:v11];
  _Block_release(v11);
  v12 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension41AppEventLiveIndicatorAnimationCoordinator_currentAnimator);
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension41AppEventLiveIndicatorAnimationCoordinator_currentAnimator) = v9;
  if (v12)
  {
    v13 = v9;
    [v12 stopAnimation:1];
  }

  else
  {
    v14 = v9;
  }

  [v9 startAnimation];
}

void sub_1001A6AD0(uint64_t a1, uint64_t a2, void (*a3)(void))
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

void sub_1001A6B38(uint64_t a1, double a2)
{
  v3 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1007543F4();
    sub_100009D34();
    sub_1001AA338(&qword_10092B4B0, sub_100009D34, &protocol conformance descriptor for NSObject);
    sub_1007534A4();
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
      sub_1001A8F34();
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
      if (sub_100754464())
      {
        sub_100009D34();
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

void sub_1001A6D40()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension41AppEventLiveIndicatorAnimationCoordinator_animatingViews;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if ((v2 & 0xC000000000000001) != 0)
  {

    v3 = sub_100754434();

    if (!v3)
    {
      return;
    }
  }

  else if (!*(v2 + 16))
  {
    return;
  }

  if (*(v0 + OBJC_IVAR____TtC22SubscribePageExtension41AppEventLiveIndicatorAnimationCoordinator_animationPhase) == 3 && !UIAccessibilityIsReduceMotionEnabled())
  {
    sub_1001A627C();
  }
}

unint64_t sub_1001A6F10()
{
  result = qword_10092B4A8;
  if (!qword_10092B4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092B4A8);
  }

  return result;
}

uint64_t sub_1001A6F64(uint64_t *a1, void *a2)
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

    v9 = sub_100754444();

    if (v9)
    {

      sub_100009D34();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_100754434();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1001A7408(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      sub_1001A75E8(v20 + 1);
    }

    v18 = v8;
    sub_1001A7CB0(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_100009D34();
  v11 = sub_100753FB4(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1001A7D34(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_100753FC4();

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

uint64_t sub_1001A717C(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  sub_100753094();
  sub_100754834();
  sub_100753174();
  v7 = sub_100754884();

  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = sub_100753094();
      v13 = v12;
      if (v11 == sub_100753094() && v13 == v14)
      {

        goto LABEL_12;
      }

      v16 = sub_100754754();

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
    sub_1001A7E94(v18, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v22;
    *a1 = v18;
    return 1;
  }
}

uint64_t sub_1001A7328(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_100754824();
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
    sub_1001A807C(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

Swift::Int sub_1001A7408(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10000C518(&qword_10092B4B8, &qword_1007B01C0);
    v2 = sub_100754514();
    v15 = v2;
    sub_1007543F4();
    if (sub_100754464())
    {
      sub_100009D34();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1001A75E8(v9 + 1);
        }

        v2 = v15;
        result = sub_100753FB4(*(v15 + 40));
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

      while (sub_100754464());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return _swiftEmptySetSingleton;
  }

  return v2;
}

void sub_1001A75E8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000C518(&qword_10092B4B8, &qword_1007B01C0);
  v4 = sub_100754504();
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
      v18 = sub_100753FB4(*(v5 + 40));
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

    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1001A7810(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000C518(&qword_10092B4E0, &qword_1007B01D8);
  v4 = sub_100754504();
  v5 = v4;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
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
      sub_100753094();
      sub_100754834();
      sub_100753174();
      v18 = sub_100754884();

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
      v3 = v28;
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

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1001A7A8C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000C518(&qword_10092B4E8, &qword_1007B01E0);
  v4 = sub_100754504();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v26 = v2;
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
      v18 = sub_100754824();
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

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v26;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

unint64_t sub_1001A7CB0(uint64_t a1, void *a2)
{
  sub_100753FB4(a2[5]);
  result = sub_1007543D4();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

void sub_1001A7D34(unint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1001A75E8(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1001A819C();
      goto LABEL_12;
    }

    sub_1001A857C(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_100753FB4(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_100009D34();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_100753FC4();

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
  sub_1007547A4();
  __break(1u);
}

void sub_1001A7E94(uint64_t a1, unint64_t a2, char a3)
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
    sub_1001A7810(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      sub_1001A82EC();
      goto LABEL_16;
    }

    sub_1001A8790(v7 + 1);
  }

  v9 = *v3;
  sub_100753094();
  sub_100754834();
  sub_100753174();
  v10 = sub_100754884();

  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for ActivityType(0);
    do
    {
      v13 = sub_100753094();
      v15 = v14;
      if (v13 == sub_100753094() && v15 == v16)
      {
        goto LABEL_19;
      }

      v18 = sub_100754754();

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
  sub_1007547A4();
  __break(1u);
}

void sub_1001A807C(uint64_t result, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1001A7A8C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_1001A843C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1001A89E4(v5 + 1);
  }

  v8 = *v3;
  v9 = sub_100754824();
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
  sub_1007547A4();
  __break(1u);
}

void sub_1001A819C()
{
  v1 = v0;
  sub_10000C518(&qword_10092B4B8, &qword_1007B01C0);
  v2 = *v0;
  v3 = sub_1007544F4();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        v19 = v18;
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

void sub_1001A82EC()
{
  v1 = v0;
  sub_10000C518(&qword_10092B4E0, &qword_1007B01D8);
  v2 = *v0;
  v3 = sub_1007544F4();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        v19 = v18;
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

void sub_1001A843C()
{
  v1 = v0;
  sub_10000C518(&qword_10092B4E8, &qword_1007B01E0);
  v2 = *v0;
  v3 = sub_1007544F4();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
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

void sub_1001A857C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000C518(&qword_10092B4B8, &qword_1007B01C0);
  v4 = sub_100754504();
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
      v18 = sub_100753FB4(v16);
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

void sub_1001A8790(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000C518(&qword_10092B4E0, &qword_1007B01D8);
  v4 = sub_100754504();
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
      sub_100753094();
      sub_100754834();
      v18 = v17;
      sub_100753174();
      v19 = sub_100754884();

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

void sub_1001A89E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000C518(&qword_10092B4E8, &qword_1007B01E0);
  v4 = sub_100754504();
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
      v17 = sub_100754824();
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

void sub_1001A8BD4(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_100754664())
    {
LABEL_3:
      sub_10000C518(&qword_10092B4B8, &qword_1007B01C0);
      v3 = sub_100754524();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_100754664();
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
  v6 = v3 + 7;
  v37 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = sub_100754574();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_100753FB4(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = v6[v13 >> 6];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_100009D34();
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = sub_100753FC4();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = v6[v13 >> 6];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        v6[v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        v3[2] = v21;
        if (v7 == v5)
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
    v22 = 0;
    v36 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = v3[5];
      v24 = *(a1 + 32 + 8 * v22);
      v25 = sub_100753FB4(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = v6[v27 >> 6];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_100009D34();
        while (1)
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = sub_100753FC4();

          if (v33)
          {
            break;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = v6[v27 >> 6];
          v30 = 1 << v27;
          if (((1 << v27) & v29) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        v6[v28] = v30 | v29;
        *(v3[6] + 8 * v27) = v24;
        v34 = v3[2];
        v9 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        v3[2] = v35;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_1001A8EA0()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_1001A8EF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1001A8F3C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void *sub_1001A8FDC(uint64_t a1)
{
  v2 = sub_100741634();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_10000C518(&qword_10092B518, &qword_1007B01F8);
    v9 = sub_100754524();
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
      sub_1001AA338(&qword_10092B520, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
      v16 = sub_100752FA4();
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
          sub_1001AA338(&qword_10092B528, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
          v23 = sub_100753014();
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

void sub_1001A92FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C518(&qword_10092B4E0, &qword_1007B01D8);
    v3 = sub_100754524();
    v4 = 0;
    v5 = v3 + 56;
    v24 = v1;
    v25 = a1 + 32;
    v6 = v1;
    do
    {
      v7 = *(v25 + 8 * v4);
      sub_100753094();
      sub_100754834();
      v26 = v7;
      sub_100753174();
      v8 = sub_100754884();

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
        v15 = sub_100753094();
        v17 = v16;
        if (v15 == sub_100753094() && v17 == v18)
        {

LABEL_4:
          v6 = v24;
          goto LABEL_5;
        }

        v20 = sub_100754754();

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

Swift::Int sub_1001A94F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C518(&qword_10092B4C0, &qword_1007B01C8);
    v3 = sub_100754524();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
      sub_100754834();
      sub_100754844(v10);
      result = sub_100754884();
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

void *sub_1001A962C(uint64_t a1)
{
  v2 = sub_1007417F4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_10000C518(&qword_10092B530, qword_1007B0200);
    v9 = sub_100754524();
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
      sub_1001AA338(&qword_100947C40, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v16 = sub_100752FA4();
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
          sub_1001AA338(&qword_100927EA0, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
          v23 = sub_100753014();
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

void *sub_1001A994C(uint64_t a1)
{
  v2 = sub_100752C84();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_10000C518(&qword_10092B4C8, &qword_1007B01D0);
    v9 = sub_100754524();
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
      sub_1001AA338(&qword_10092B4D0, &type metadata accessor for MetricsFieldInclusionRequest, &protocol conformance descriptor for MetricsFieldInclusionRequest);
      v16 = sub_100752FA4();
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
          sub_1001AA338(&qword_10092B4D8, &type metadata accessor for MetricsFieldInclusionRequest, &protocol conformance descriptor for MetricsFieldInclusionRequest);
          v23 = sub_100753014();
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

void sub_1001A9C6C(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_100754664())
    {
LABEL_3:
      sub_10000C518(&qword_10092B500, &qword_1007B01F0);
      v3 = sub_100754524();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_100754664();
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
    v8 = sub_100754574();
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_25;
    }

LABEL_18:
    sub_100751A74();
    sub_1001AA338(&qword_10092B508, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
    v10 = sub_100752FA4();
    v11 = -1 << *(v3 + 32);
    v12 = v10 & ~v11;
    v13 = v12 >> 6;
    v14 = v7[v12 >> 6];
    v15 = 1 << v12;
    if (((1 << v12) & v14) != 0)
    {
      v16 = ~v11;
      sub_1001AA338(&qword_10092B510, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
      while ((sub_100753014() & 1) == 0)
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

void *sub_1001A9F00(uint64_t a1)
{
  v2 = sub_10074E984();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_10000C518(&qword_10092B4F0, &qword_1007B01E8);
    v9 = sub_100754524();
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
      sub_1001AA338(&qword_10092B4F8, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
      v16 = sub_100752FA4();
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
          sub_1001AA338(&qword_1009350D0, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
          v23 = sub_100753014();
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

uint64_t sub_1001AA220(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C518(&qword_10092B4E8, &qword_1007B01E0);
    v3 = sub_100754524();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    v7 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v11 = *(v6 + 8 * v4);
      result = sub_100754824();
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

uint64_t sub_1001AA338(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_1001AA3C4(uint64_t a1, uint64_t a2)
{
  *(v2 + qword_10092B538) = 0;
  v5 = qword_10092B540;
  type metadata accessor for ProductReviewFlowPreviewingCollectionElementsObserver();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v2 + v5) = v6;

  v7 = sub_10046AEDC(a1, a2);
  result = [v7 collectionView];
  if (result)
  {
    v9 = result;
    sub_10000C518(&unk_1009249D0, qword_1007A7B10);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1007A5A00;
    *(v10 + 32) = sub_1007519E4();
    *(v10 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
    sub_100016C60(0, &qword_100929830, UICollectionView_ptr);
    sub_100753D44();
    swift_unknownObjectRelease();

    v11 = sub_10074C9C4();
    if (v11)
    {
      v12 = v11;
      v13 = [v7 navigationItem];
      sub_100016C60(0, &qword_100925250, UIBarButtonItem_ptr);

      v14 = sub_10074ECB4();
      v16 = v15;
      v22 = 0u;
      v23 = 0u;

      v24.is_nil = sub_1001ACF08(v12, a1, 0, &v22, v17);
      v27.value._countAndFlagsBits = v14;
      v27.value._object = v16;
      v24.value.super.isa = 0;
      v25.value.super.super.isa = 0;
      isa = sub_100753644(v27, v24, v25, v26).super.super.isa;
      [v13 setRightBarButtonItem:{isa, v22, v23}];
    }

    v19 = v7;
    sub_10074C9E4();
    v20 = sub_100753064();

    [v19 setTitle:v20];

    v19[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_prefersLargeTitle] = 1;
    v21 = [v19 navigationItem];
    [v21 setLargeTitleDisplayMode:3];

    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001AA684(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_10000C518(&qword_10092BAF8, &qword_1007B0278);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  v7 = sub_1007469A4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1007417F4();
  v12 = *(v11 - 8);
  *&v13 = __chkstk_darwin(v11).n128_u64[0];
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20.receiver = v1;
  v20.super_class = ObjectType;
  result = objc_msgSendSuper2(&v20, "viewWillAppear:", a1 & 1, v13);
  v17 = qword_10092B538;
  if ((*(v1 + qword_10092B538) & 1) == 0)
  {
    sub_1001AA93C(v6);
    v18 = sub_10000C518(&qword_10092BB00, &unk_1007B0280);
    if ((*(*(v18 - 8) + 48))(v6, 1, v18) == 1)
    {
      result = sub_10000C8CC(v6, &qword_10092BAF8, &qword_1007B0278);
    }

    else
    {
      v19 = *(v18 + 48);
      (*(v12 + 32))(v15, v6, v11);
      (*(v8 + 32))(v10, &v6[v19], v7);
      sub_1001AB6E8(v15);
      (*(v8 + 8))(v10, v7);
      result = (*(v12 + 8))(v15, v11);
    }
  }

  *(v1 + v17) = 1;
  return result;
}

uint64_t sub_1001AA93C@<X0>(uint64_t a1@<X8>)
{
  v72 = a1;
  v92 = sub_100744604();
  v65 = *(v92 - 8);
  __chkstk_darwin(v92);
  v75 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_100746984();
  v83 = *(v89 - 8);
  __chkstk_darwin(v89);
  v87 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_1007469A4();
  v67 = *(v90 - 8);
  __chkstk_darwin(v90);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_1007417F4();
  v66 = *(v88 - 8);
  __chkstk_darwin(v88);
  v78 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_10000C518(&unk_100930810, &unk_1007B7670);
  v74 = *(v77 - 8);
  __chkstk_darwin(v77);
  v76 = &v62 - v8;
  v94 = sub_10000C518(&qword_10092BB08, &qword_1007B0290);
  v84 = *(v94 - 8);
  __chkstk_darwin(v94);
  v73 = (&v62 - v9);
  v10 = sub_10000C518(&qword_10092BB10, &unk_1007B0298);
  __chkstk_darwin(v10 - 8);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v62 - v14;
  v93 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v16 = *(v93 - 8);
  __chkstk_darwin(v93);
  v18 = &v62 - v17;
  v19 = sub_10000C518(&qword_100942730, &unk_1007B3460);
  __chkstk_darwin(v19 - 8);
  v21 = &v62 - v20;
  v22 = sub_100747C14();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v91 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v2;
  sub_10074C9D4();
  if (!*(&v96 + 1))
  {
    sub_10000C8CC(&v95, &unk_1009276E0, &unk_1007A5C70);
    goto LABEL_24;
  }

  v98[0] = v95;
  v98[1] = v96;
  v99 = v97;
  sub_1001AC804(v21);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_100016994(v98);
    sub_10000C8CC(v21, &qword_100942730, &unk_1007B3460);
    goto LABEL_24;
  }

  v26 = v91;
  (*(v23 + 32))(v91, v21, v22);
  v27 = qword_100930688;
  swift_beginAccess();
  v28 = *(v25 + v27);
  if (!v28)
  {
    (*(v23 + 8))(v26, v22);
    sub_100016994(v98);
    swift_endAccess();
    goto LABEL_24;
  }

  v62 = v23;
  v63 = v22;
  swift_endAccess();
  v29 = v28;
  v30 = v26;
  sub_100747C04();
  v31 = sub_10074CD64();

  result = (*(v16 + 8))(v18, v93);
  if (!v31)
  {
    (*(v62 + 8))(v30, v63);
    sub_100016994(v98);
LABEL_24:
    v58 = v72;
    v55 = sub_10000C518(&qword_10092BB00, &unk_1007B0280);
    v56 = *(*(v55 - 8) + 56);
    v57 = v58;
    return v56(v57, 1, 1, v55);
  }

  v86 = v15;
  v93 = v6;
  v33 = 0;
  v69 = v31;
  v34 = *(v31 + 16);
  v68 = v74 + 16;
  v35 = v84;
  v84 += 6;
  v85 = (v35 + 7);
  v82 = (v74 + 32);
  v81 = v83 + 1;
  v71 = (v65 + 11);
  v70 = enum case for ProductReview.ReviewSource.user(_:);
  v80 = (v67 + 8);
  v79 = (v66 + 8);
  v83 = (v74 + 8);
  v64 = (v65 + 1);
  v65 += 12;
  v36 = v78;
  v37 = v77;
  v38 = v76;
LABEL_9:
  v39 = v94;
  if (v33 == v34)
  {
LABEL_10:
    v40 = 1;
    v33 = v34;
    goto LABEL_14;
  }

  while ((v33 & 0x8000000000000000) == 0)
  {
    if (v33 >= *(v69 + 16))
    {
      goto LABEL_29;
    }

    v41 = v74;
    v42 = v69 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v33;
    v43 = *(v39 + 48);
    v44 = v73;
    *v73 = v33;
    (*(v41 + 16))(&v44[v43], v42, v37);
    v45 = v44;
    v39 = v94;
    sub_100066578(v45, v12, &qword_10092BB08, &qword_1007B0290);
    v40 = 0;
    ++v33;
LABEL_14:
    (*v85)(v12, v40, 1, v39);
    v46 = v86;
    sub_100066578(v12, v86, &qword_10092BB10, &unk_1007B0298);
    if ((*v84)(v46, 1, v39) == 1)
    {

      (*(v62 + 8))(v91, v63);
      sub_100016994(v98);
      v55 = sub_10000C518(&qword_10092BB00, &unk_1007B0280);
      v56 = *(*(v55 - 8) + 56);
      v57 = v72;
      return v56(v57, 1, 1, v55);
    }

    v47 = v12;
    (*v82)(v38, v46 + *(v39 + 48), v37);
    sub_100747BF4();
    sub_100741764();
    v48 = v87;
    sub_100746974();
    v49 = v36;
    v50 = v93;
    sub_100747B64();
    (*v81)(v48, v89);
    sub_100744624();
    sub_1001AD1D4(&qword_100927FE0, &type metadata accessor for ProductReview, &protocol conformance descriptor for ProductRatingsAndReviewsComponent);
    sub_1007468B4();
    if (!v95)
    {
      (*v80)(v50, v90);
      (*v79)(v49, v88);
      result = (*v83)(v38, v37);
      v36 = v49;
      v12 = v47;
      goto LABEL_9;
    }

    v51 = v75;
    sub_100744614();
    v52 = (*v71)(v51, v92);
    if (v52 != v70)
    {

      (*v80)(v93, v90);
      v36 = v78;
      (*v79)(v78, v88);
      v38 = v76;
      v37 = v77;
      (*v83)(v76, v77);
      result = (*v64)(v51, v92);
      v12 = v47;
      goto LABEL_9;
    }

    v53 = v90;
    (*v65)(v51, v92);
    sub_10074F014();
    v54 = sub_1007544C4();

    sub_100016994(&v95);
    v38 = v76;
    v37 = v77;
    (*v83)(v76, v77);
    v36 = v78;
    v39 = v94;
    if (v54)
    {

      (*(v62 + 8))(v91, v63);
      sub_100016994(v98);
      v59 = sub_10000C518(&qword_10092BB00, &unk_1007B0280);
      v60 = *(v59 + 48);
      v61 = v72;
      (*(v66 + 32))(v72, v36, v88);
      (*(v67 + 32))(v61 + v60, v93, v53);
      return (*(*(v59 - 8) + 56))(v61, 0, 1, v59);
    }

    (*v80)(v93, v53);
    result = (*v79)(v36, v88);
    v12 = v47;
    if (v33 == v34)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1001AB6E8(uint64_t a1)
{
  v15[0] = a1;
  v2 = sub_10000C518(&unk_100930810, &unk_1007B7670);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v15 - v4;
  v6 = sub_10000C518(&unk_100925370, &qword_1007ABD10);
  __chkstk_darwin(v6 - 8);
  v7 = sub_10000C518(&unk_100929040, qword_1007ACA98);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v15 - v9;
  sub_1007468F4();
  sub_100752994();
  sub_1000E9564();
  sub_100752954();
  sub_100746944();
  sub_10074CA04();
  sub_1001AD1D4(&qword_10092BAC8, &type metadata accessor for ReviewsDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  sub_10074C464();
  (*(v3 + 8))(v5, v2);
  v11 = [v1 collectionView];
  if (v11)
  {
    v12 = v11;
    isa = sub_100741704().super.isa;
    [v12 scrollToItemAtIndexPath:isa atScrollPosition:1 animated:0];
  }

  return (*(v8 + 8))(v10, v7);
}

void sub_1001AB9C4(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1001AA684(a3);
}

uint64_t sub_1001ABA18(uint64_t a1)
{
  v2 = sub_10000C518(&qword_10092BAF0, &qword_1007B0270);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v8 - v5;
  (*(v3 + 16))(&v8 - v5, a1, v2, v4);
  if ((*(v3 + 88))(v6, v2) != enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:) || (sub_10074C9B4() & 1) == 0)
  {
    sub_10041D1EC(a1);
  }

  return (*(v3 + 8))(v6, v2);
}

void sub_1001ABB60(void *a1, double a2, double a3)
{
  v17.receiver = v3;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v15 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  v16 = 0;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_1003ED3AC;
  v14 = &unk_10086B410;
  v7 = _Block_copy(&v11);
  v8 = swift_allocObject();
  *(v8 + 16) = v3;
  v15 = sub_1001AD1C8;
  v16 = v8;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_1003ED3AC;
  v14 = &unk_10086B460;
  v9 = _Block_copy(&v11);
  v10 = v3;

  [a1 animateAlongsideTransition:v7 completion:v9];
  _Block_release(v9);
  _Block_release(v7);
}

void sub_1001ABCD8(int a1, id a2)
{
  v2 = [a2 collectionView];
  if (v2)
  {
    v3 = v2;
    [v2 reloadData];
  }

  else
  {
    __break(1u);
  }
}

void sub_1001ABD38(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  sub_1001ABB60(a5, a2, a3);
  swift_unknownObjectRelease();
}

unint64_t sub_1001ABDB8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + qword_10097EE08);
  sub_100744594();
  swift_allocObject();

  v4 = sub_100744584();
  swift_allocObject();
  v5 = sub_100744584();
  a1[3] = &type metadata for ReviewsPageGridProvider;
  result = sub_1001AD124();
  a1[4] = result;
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v3;
  return result;
}

uint64_t sub_1001ABE5C@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  sub_1001AD1D4(&qword_10092BAC0, type metadata accessor for ReviewsDiffablePageViewController, &unk_1007B7520);
  v2 = sub_10074DA44();
  v19[3] = swift_getObjectType();
  v19[0] = v2;
  v3 = sub_10074DA34();
  v20[3] = swift_getObjectType();
  v20[0] = v3;
  sub_10000C5B4(v19, v17);
  sub_10000C610(v17, v16);
  sub_10000C518(&qword_100922CC0, &unk_1007AAFB0);
  if (swift_dynamicCast() && v18)
  {
    v14 = v18;
    v4 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_100254A80(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v6 = v4[2];
    v5 = v4[3];
    if (v6 >= v5 >> 1)
    {
      v4 = sub_100254A80((v5 > 1), v6 + 1, 1, v4);
    }

    v4[2] = v6 + 1;
    *&v4[2 * v6 + 4] = v14;
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  sub_10000C5B4(v20, v17);
  sub_10000C610(v17, v16);
  sub_10000C518(&qword_100922CC0, &unk_1007AAFB0);
  if (swift_dynamicCast() && v18)
  {
    v15 = v18;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_100254A80(0, v4[2] + 1, 1, v4);
    }

    v8 = v4[2];
    v7 = v4[3];
    v9 = v15;
    if (v8 >= v7 >> 1)
    {
      v13 = sub_100254A80((v7 > 1), v8 + 1, 1, v4);
      v9 = v15;
      v4 = v13;
    }

    v4[2] = v8 + 1;
    *&v4[2 * v8 + 4] = v9;
  }

  swift_arrayDestroy();
  sub_10074DA64();
  v10 = type metadata accessor for GenericPageLayoutSectionProvider(0);
  swift_allocObject();
  sub_10000C824(v17, v16);

  v11 = sub_10074CB64();
  result = sub_10000C620(v17);
  a1[3] = v10;
  a1[4] = &protocol witness table for BasePageLayoutSectionProvider;
  *a1 = v11;
  return result;
}

uint64_t sub_1001AC15C()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_objectGraph);
  type metadata accessor for ReviewsPageShelfSupplementaryProvider();
  v2 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  v3 = sub_1001AD1D4(&qword_10092BAD0, &type metadata accessor for ReviewsDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  *(v2 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 32) = v3;
  swift_unknownObjectWeakAssign();
  *(v2 + 16) = v1;
  sub_1001AD1D4(&qword_10092BAE0, type metadata accessor for ReviewsPageShelfSupplementaryProvider, &unk_1007C3820);

  return v2;
}

uint64_t sub_1001AC274()
{
  v1 = v0;
  swift_getObjectType();
  sub_1006B6008();
  sub_10074D7C4();
  if (swift_dynamicCastClass())
  {
    v2 = sub_10074D794();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    swift_allocObject();
    v2 = sub_10074D7B4();
  }

  sub_10000C518(&qword_100922CE0, &qword_1007A56D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1007A6580;
  sub_1001AD1D4(&qword_10092BAC0, type metadata accessor for ReviewsDiffablePageViewController, &unk_1007B7520);

  sub_10074DA64();
  sub_1001AD1D4(&qword_10092BAC8, &type metadata accessor for ReviewsDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  sub_1001AD1D4(&qword_10092BAD0, &type metadata accessor for ReviewsDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  type metadata accessor for ProductReviewSelectionHandlerCollectionElementsObserver(0);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v4 + qword_100930D50) = 0;
  swift_unknownObjectWeakAssign();
  sub_10000C824(v10, v4 + qword_100930D48);

  v5 = sub_10074E274();
  sub_10000C620(v10);
  *(v3 + 32) = v5;
  *(v3 + 40) = &protocol witness table for SelectionHandlerCollectionElementsObserver;
  v6 = *(v1 + qword_10092B540);
  v7 = sub_1001AD1D4(&qword_10092BAD8, type metadata accessor for ProductReviewFlowPreviewingCollectionElementsObserver, &unk_1007ACA08);
  *(v3 + 48) = v6;
  *(v3 + 56) = v7;

  v8._rawValue = v3;
  sub_10074D784(v8);

  return v2;
}

void sub_1001AC59C(uint64_t a1)
{
  v2 = v1;
  v3 = [v1 traitCollection];
  v4 = sub_100753824();

  v5 = [v2 view];
  if (v5)
  {
    v6 = v5;
    if (qword_100920870 != -1)
    {
      swift_once();
    }

    v7 = [qword_10097F830 resolvedColorWithTraitCollection:v4];
    [v6 setBackgroundColor:v7];

    *(*&v2[qword_10092B540] + 16) = 1;
  }

  else
  {
    __break(1u);
  }
}

void sub_1001AC6C4(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = a2;
    v3 = [v4 traitCollection];
    [v3 userInterfaceLevel];

    sub_10007271C(a1, *(a1 + 24));
    sub_100751494();
  }
}

void sub_1001AC76C()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() systemBackgroundColor];
    [v2 setBackgroundColor:v3];

    *(*&v0[qword_10092B540] + 16) = 0;
  }

  else
  {
    __break(1u);
  }
}

void sub_1001AC804(uint64_t a1@<X8>)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_10074E984();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v51 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v50 = &v32 - v8;
  v45 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v9 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v32 - v10;
  v11 = sub_10000C518(&qword_100942730, &unk_1007B3460);
  __chkstk_darwin(v11 - 8);
  v13 = &v32 - v12;
  v14 = sub_100747C14();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v48 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = qword_100930688;
  swift_beginAccess();
  v18 = *&v2[v17];
  if (!v18)
  {
    v30 = 1;
    goto LABEL_19;
  }

  v43 = v4;
  v46 = v14;
  v19 = v18;
  v20 = [v2 collectionView];
  if (!v20)
  {
    goto LABEL_21;
  }

  v21 = v20;
  v22 = sub_1007518B4();

  if (v22 < 0)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    return;
  }

  if (!v22)
  {
    v30 = 1;
    v14 = v46;
    goto LABEL_19;
  }

  v34 = a1;
  v23 = v15;
  v24 = (v15 + 48);
  v42 = (v23 + 32);
  v40 = (v9 + 8);
  v39 = enum case for Shelf.ContentType.productReview(_:);
  v38 = (v5 + 104);
  v41 = (v5 + 8);
  v33 = v23;
  v35 = (v23 + 8);
  sub_1001AD1D4(&qword_10092BAC0, type metadata accessor for ReviewsDiffablePageViewController, &unk_1007B7520);
  v25 = 0;
  v14 = v46;
  v37 = v22;
  while (1)
  {
    sub_10074DA04();
    if ((*v24)(v13, 1, v14) == 1)
    {
      sub_10000C8CC(v13, &qword_100942730, &unk_1007B3460);
      goto LABEL_7;
    }

    v36 = *v42;
    v36(v48, v13, v14);
    v26 = v44;
    sub_100747C04();
    swift_getKeyPath();
    v27 = v45;
    sub_1007525B4();

    (*v40)(v26, v27);
    v28 = v43;
    (*v38)(v51, v39, v43);
    sub_1001AD1D4(&qword_100926DD0, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
    sub_100753274();
    sub_100753274();
    if (v54 == v52 && v55 == v53)
    {
      break;
    }

    v47 = sub_100754754();
    v29 = *v41;
    (*v41)(v51, v28);
    v29(v50, v28);

    v22 = v37;
    if (v47)
    {
      goto LABEL_17;
    }

    v14 = v46;
    (*v35)(v48, v46);
LABEL_7:
    if (v22 == ++v25)
    {
      v30 = 1;
      a1 = v34;
      goto LABEL_18;
    }
  }

  v31 = *v41;
  (*v41)(v51, v28);
  v31(v50, v28);

LABEL_17:
  a1 = v34;
  v14 = v46;
  v36(v34, v48, v46);
  v30 = 0;
LABEL_18:
  v15 = v33;
LABEL_19:
  (*(v15 + 56))(a1, v30, 1, v14);
}

uint64_t type metadata accessor for ReviewsDiffablePageViewController(uint64_t a1)
{
  result = qword_10092B570;
  if (!qword_10092B570)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001ACF08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  sub_10074ECB4();
  if (v8)
  {
    v9 = sub_10074ECC4();
    if (v9)
    {
      v10 = v9;
      if (sub_10074F1D4())
      {
        sub_100743AC4();
      }

      else if (sub_10074F1C4())
      {
        sub_10056028C(v12, v10, 0);
      }
    }

    sub_100016C60(0, &qword_100929CC0, UIAction_ptr);
    sub_100032C04(a4, v16);
    v13 = swift_allocObject();
    *(v13 + 16) = a2;
    *(v13 + 24) = &protocol witness table for ReviewsDiffablePagePresenter;
    *(v13 + 32) = a1;
    v14 = v16[1];
    *(v13 + 40) = v16[0];
    *(v13 + 56) = v14;
    v11 = sub_100753FF4();
    sub_10000C8CC(a4, &unk_100923520, &qword_1007A5A70);
  }

  else
  {
    sub_10000C8CC(a4, &unk_100923520, &qword_1007A5A70);

    return 0;
  }

  return v11;
}

uint64_t sub_1001AD0BC()
{
  swift_unknownObjectRelease();

  if (*(v0 + 64))
  {
    sub_10000C620((v0 + 40));
  }

  return _swift_deallocObject(v0, 72, 7);
}

unint64_t sub_1001AD124()
{
  result = qword_10092BAE8;
  if (!qword_10092BAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092BAE8);
  }

  return result;
}

double sub_1001AD178(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1001AD190()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001AD1D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1001AD224(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = sub_100744E04();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_100744DC4() & 1) == 0)
  {
    [a7 pageMarginInsets];
    a1 = a1 - v13 - v14;
  }

  sub_100744E24();
  v15 = [a7 traitCollection];
  sub_100744DE4();

  (*(v10 + 8))(v12, v9);
  return a1;
}

void sub_1001AD360()
{
  v0 = sub_100744E04();
  __chkstk_darwin(v0 - 8);
  v2 = &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100744E24();
  sub_100561A0C(v2);
  v3 = sub_100744E14();
  sub_100562538(v3);
}

uint64_t sub_1001AD498(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1001AD4E0(uint64_t a1)
{
  v3 = sub_100741494();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v167 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return _swiftEmptyArrayStorage;
  }

  v172 = Strong;
  v167[1] = sub_10000C518(&unk_1009231A0, qword_1007A5810);
  v168 = swift_allocObject();
  *(v168 + 16) = xmmword_1007AC000;
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  type metadata accessor for ActionDebugSetting();
  v167[0] = a1;
  v9 = swift_allocObject();
  *(v9 + 56) = 0xD000000000000013;
  *(v9 + 64) = 0x800000010076F370;
  *(v9 + 72) = 0u;
  *(v9 + 88) = 0u;
  *(v9 + 104) = sub_1001AE9D8;
  *(v9 + 112) = v8;
  v10 = v1;

  sub_100741484();
  v11 = sub_100741464();
  v13 = v12;
  v14 = *(v4 + 8);
  v175 = v3;
  v14(v6, v3);
  v190 = v11;
  v191 = v13;
  sub_1007544E4();

  *(v168 + 32) = v9;
  v15 = swift_allocObject();
  *(v15 + 16) = v10;
  v16 = swift_allocObject();
  strcpy((v16 + 56), "Clear Caches");
  *(v16 + 69) = 0;
  *(v16 + 70) = -5120;
  *(v16 + 72) = 0u;
  *(v16 + 88) = 0u;
  *(v16 + 104) = sub_1001AE9FC;
  *(v16 + 112) = v15;
  v17 = v10;

  sub_100741484();
  v18 = sub_100741464();
  v20 = v19;
  v14(v6, v3);
  v173 = v4 + 8;
  v190 = v18;
  v191 = v20;
  sub_1007544E4();

  v21 = v168;
  *(v168 + 40) = v16;
  v22 = swift_allocObject();
  *(v22 + 16) = v17;
  v23 = swift_allocObject();
  *(v23 + 56) = 0xD000000000000015;
  *(v23 + 64) = 0x800000010076F390;
  *(v23 + 72) = 0u;
  *(v23 + 88) = 0u;
  *(v23 + 104) = sub_1001AEA00;
  *(v23 + 112) = v22;
  v24 = v17;

  sub_100741484();
  v25 = sub_100741464();
  v27 = v26;
  v28 = v175;
  v14(v6, v175);
  v190 = v25;
  v191 = v27;
  sub_1007544E4();

  *(v21 + 48) = v23;
  v171 = swift_allocObject();
  *(v171 + 16) = xmmword_1007B0300;
  v29 = objc_allocWithZone(type metadata accessor for DebugSettings());
  swift_unknownObjectWeakInit();
  v30 = v172;
  swift_unknownObjectWeakAssign();
  v174 = type metadata accessor for DebugSettingsProvider();
  v189.receiver = v29;
  v189.super_class = v174;
  v170 = v30;
  v31 = objc_msgSendSuper2(&v189, "init");
  v172 = type metadata accessor for NavigationActionDebugSetting();
  v32 = swift_allocObject();
  v32[7] = 0x73676E6974746553;
  v32[8] = 0xE800000000000000;
  v32[9] = 0;
  v32[10] = 0;
  v32[11] = v31;
  v32[12] = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  v169 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  v32[13] = 0;
  v33 = v28;
  v34 = v31;
  sub_100741484();
  v35 = sub_100741464();
  v37 = v36;
  v176 = v14;
  v14(v6, v33);
  v190 = v35;
  v191 = v37;
  sub_1007544E4();

  *(v171 + 32) = v32;
  v38 = objc_allocWithZone(type metadata accessor for StorefrontSettings());
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v188.receiver = v38;
  v188.super_class = v174;
  v39 = objc_msgSendSuper2(&v188, "init");
  v40 = swift_allocObject();
  v40[7] = 0x6F726665726F7453;
  v40[8] = 0xEA0000000000746ELL;
  v40[9] = 0;
  v40[10] = 0;
  v40[11] = v39;
  v40[12] = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  v40[13] = 0;
  v41 = v39;
  sub_100741484();
  v42 = sub_100741464();
  v44 = v43;
  v14(v6, v33);
  v190 = v42;
  v191 = v44;
  sub_1007544E4();

  v45 = v171;
  *(v171 + 40) = v40;
  v46 = objc_allocWithZone(type metadata accessor for MetricsSettings());
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v47 = v174;
  v187.receiver = v46;
  v187.super_class = v174;
  v48 = objc_msgSendSuper2(&v187, "init");
  v49 = swift_allocObject();
  v49[7] = 0x7363697274654DLL;
  v49[8] = 0xE700000000000000;
  v49[9] = 0;
  v49[10] = 0;
  v50 = v169;
  v49[11] = v48;
  v49[12] = v50;
  v49[13] = 0;
  v51 = v48;
  sub_100741484();
  v52 = sub_100741464();
  v54 = v53;
  v176(v6, v175);
  v190 = v52;
  v191 = v54;
  sub_1007544E4();

  *(v45 + 48) = v49;
  v55 = objc_allocWithZone(type metadata accessor for TodaySettings());
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v186.receiver = v55;
  v186.super_class = v47;
  v56 = objc_msgSendSuper2(&v186, "init");
  v57 = swift_allocObject();
  v57[7] = 0x7961646F54;
  v57[8] = 0xE500000000000000;
  v57[9] = 0;
  v57[10] = 0;
  v57[11] = v56;
  v57[12] = v50;
  v57[13] = 0;
  v58 = v56;
  sub_100741484();
  v59 = sub_100741464();
  v61 = v60;
  v62 = v176;
  v176(v6, v175);
  v190 = v59;
  v191 = v61;
  sub_1007544E4();

  v63 = v171;
  *(v171 + 56) = v57;
  v64 = objc_allocWithZone(type metadata accessor for ArcadeSettings());
  v65 = v170;
  v170 = v65;
  v66 = v167[0];

  v67 = sub_10061BDA0(v65, v66);

  v68 = swift_allocObject();
  v68[7] = 0x656461637241;
  v68[8] = 0xE600000000000000;
  v68[9] = 0;
  v68[10] = 0;
  v69 = v169;
  v68[11] = v67;
  v68[12] = v69;
  v68[13] = 0;
  v70 = v67;
  sub_100741484();
  v71 = sub_100741464();
  v73 = v72;
  v74 = v175;
  v62(v6, v175);
  v190 = v71;
  v191 = v73;
  sub_1007544E4();

  *(v63 + 64) = v68;
  v75 = objc_allocWithZone(type metadata accessor for SearchSettings());
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v76 = v174;
  v185.receiver = v75;
  v185.super_class = v174;
  v77 = objc_msgSendSuper2(&v185, "init");
  v78 = swift_allocObject();
  v78[7] = 0x686372616553;
  v78[8] = 0xE600000000000000;
  v78[9] = 0;
  v78[10] = 0;
  v78[11] = v77;
  v78[12] = v69;
  v78[13] = 0;
  v79 = v77;
  sub_100741484();
  v80 = sub_100741464();
  v82 = v81;
  v176(v6, v74);
  v190 = v80;
  v191 = v82;
  sub_1007544E4();

  v83 = v171;
  *(v171 + 72) = v78;
  v84 = objc_allocWithZone(type metadata accessor for ProductPageSettings());
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v184.receiver = v84;
  v184.super_class = v76;
  v85 = objc_msgSendSuper2(&v184, "init");
  v86 = swift_allocObject();
  strcpy((v86 + 56), "Product Page");
  *(v86 + 69) = 0;
  *(v86 + 70) = -5120;
  *(v86 + 72) = 0;
  *(v86 + 80) = 0;
  *(v86 + 88) = v85;
  *(v86 + 96) = v69;
  *(v86 + 104) = 0;
  v87 = v85;
  sub_100741484();
  v88 = sub_100741464();
  v90 = v89;
  v176(v6, v175);
  v190 = v88;
  v191 = v90;
  sub_1007544E4();

  v83[10] = v86;
  v91 = objc_allocWithZone(type metadata accessor for AdsSettings());
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v183.receiver = v91;
  v183.super_class = v76;
  v92 = objc_msgSendSuper2(&v183, "init");
  v93 = swift_allocObject();
  v93[7] = 7562305;
  v93[8] = 0xE300000000000000;
  v93[9] = 0;
  v93[10] = 0;
  v93[11] = v92;
  v93[12] = v69;
  v93[13] = 0;
  v94 = v92;
  sub_100741484();
  v95 = sub_100741464();
  v97 = v96;
  v98 = v175;
  v99 = v176;
  v176(v6, v175);
  v190 = v95;
  v191 = v97;
  sub_1007544E4();

  v83[11] = v93;
  v100 = objc_allocWithZone(type metadata accessor for OnboardingSettings());
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v182.receiver = v100;
  v182.super_class = v174;
  v101 = objc_msgSendSuper2(&v182, "init");
  v102 = swift_allocObject();
  v102[7] = 0x696472616F626E4FLL;
  v102[8] = 0xEA0000000000676ELL;
  v102[9] = 0;
  v102[10] = 0;
  v102[11] = v101;
  v102[12] = v169;
  v102[13] = 0;
  v103 = v101;
  sub_100741484();
  v104 = sub_100741464();
  v106 = v105;
  v99(v6, v98);
  v190 = v104;
  v191 = v106;
  sub_1007544E4();

  v83[12] = v102;
  v107 = objc_allocWithZone(type metadata accessor for ShelfPlaceholderSettings());
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v108 = v174;
  v181.receiver = v107;
  v181.super_class = v174;
  v109 = objc_msgSendSuper2(&v181, "init");
  v110 = swift_allocObject();
  v110[7] = 0xD000000000000012;
  v110[8] = 0x800000010076F3B0;
  v110[9] = 0;
  v110[10] = 0;
  v111 = v169;
  v110[11] = v109;
  v110[12] = v111;
  v110[13] = 0;
  v112 = v109;
  sub_100741484();
  v113 = sub_100741464();
  v115 = v114;
  v116 = v175;
  v176(v6, v175);
  v190 = v113;
  v191 = v115;
  sub_1007544E4();

  *(v171 + 104) = v110;
  v117 = objc_allocWithZone(type metadata accessor for DownloadProgressSettings());
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v180.receiver = v117;
  v180.super_class = v108;
  v118 = objc_msgSendSuper2(&v180, "init");
  v119 = swift_allocObject();
  v119[7] = 0xD000000000000011;
  v119[8] = 0x800000010076F3D0;
  v119[9] = 0;
  v119[10] = 0;
  v119[11] = v118;
  v119[12] = v111;
  v120 = v111;
  v119[13] = 0;
  v121 = v118;
  sub_100741484();
  v122 = sub_100741464();
  v124 = v123;
  v125 = v176;
  v176(v6, v116);
  v190 = v122;
  v191 = v124;
  sub_1007544E4();

  v126 = v171;
  *(v171 + 112) = v119;
  v127 = objc_allocWithZone(type metadata accessor for AppCapabilitiesSettings());
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v179.receiver = v127;
  v179.super_class = v174;
  v128 = objc_msgSendSuper2(&v179, "init");
  v129 = swift_allocObject();
  v129[7] = 0xD000000000000010;
  v129[8] = 0x800000010076F3F0;
  v129[9] = 0;
  v129[10] = 0;
  v129[11] = v128;
  v129[12] = v120;
  v129[13] = 0;
  v130 = v128;
  sub_100741484();
  v131 = sub_100741464();
  v133 = v132;
  v134 = v175;
  v125(v6, v175);
  v190 = v131;
  v191 = v133;
  sub_1007544E4();

  v135 = v126;
  *(v126 + 120) = v129;
  v136 = objc_allocWithZone(type metadata accessor for LocalizerSettings());
  swift_unknownObjectWeakInit();
  v137 = v170;
  swift_unknownObjectWeakAssign();
  v178.receiver = v136;
  v138 = v174;
  v178.super_class = v174;
  v139 = objc_msgSendSuper2(&v178, "init");
  v140 = swift_allocObject();
  v140[7] = 0x657A696C61636F4CLL;
  v140[8] = 0xE900000000000072;
  v140[9] = 0;
  v140[10] = 0;
  v141 = v169;
  v140[11] = v139;
  v140[12] = v141;
  v140[13] = 0;
  v142 = v139;
  sub_100741484();
  v143 = sub_100741464();
  v145 = v144;
  v176(v6, v134);
  v190 = v143;
  v191 = v145;
  sub_1007544E4();

  v146 = v135;
  *(v135 + 128) = v140;
  v147 = objc_allocWithZone(type metadata accessor for NotificationSettings());
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v177.receiver = v147;
  v177.super_class = v138;
  v148 = objc_msgSendSuper2(&v177, "init");

  v149 = swift_allocObject();
  strcpy((v149 + 56), "Notifications");
  *(v149 + 70) = -4864;
  *(v149 + 72) = 0;
  *(v149 + 80) = 0;
  *(v149 + 88) = v148;
  *(v149 + 96) = v141;
  *(v149 + 104) = 0;
  v150 = v148;
  sub_100741484();
  v151 = sub_100741464();
  v153 = v152;
  v154 = v175;
  v155 = v176;
  v176(v6, v175);
  v190 = v151;
  v191 = v153;
  sub_1007544E4();

  *(v146 + 136) = v149;
  v156 = v146;
  v157 = swift_allocObject();
  *(v157 + 16) = xmmword_1007A7210;
  type metadata accessor for DebugSection();
  v158 = swift_allocObject();
  sub_100741484();
  v159 = sub_100741464();
  v161 = v160;
  v155(v6, v154);
  v158[2] = v159;
  v158[3] = v161;
  v158[4] = 0;
  v158[5] = 0xE000000000000000;
  v158[6] = v168;
  *(v157 + 32) = v158;
  v162 = swift_allocObject();
  sub_100741484();
  v163 = sub_100741464();
  v165 = v164;
  v155(v6, v154);
  v162[2] = v163;
  v162[3] = v165;
  v162[4] = 0;
  v162[5] = 0xE000000000000000;
  v162[6] = v156;
  *(v157 + 40) = v162;

  return v157;
}

void sub_1001AE898(uint64_t a1)
{
  sub_10000C518(&qword_10092BBA0, &qword_1007C8D40);
  sub_100752764();
  sub_100752D34();
  [v2 invalidateMediaToken];
  v1 = [objc_opt_self() sharedCoordinator];
  [v1 notify];
  swift_unknownObjectRelease();
}

id sub_1001AE948()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DebugMenuSettings();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001AE9A0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001AEA08()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v1 = Strong;
  v2 = [Strong presentingViewController];

  if (!v2)
  {
    goto LABEL_8;
  }

  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = [v3 selectedViewController];

    if (!v4)
    {
      goto LABEL_8;
    }

    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    v2 = v4;
    if (v5)
    {
      v6 = v5;
      goto LABEL_11;
    }
  }

LABEL_8:
  v7 = swift_unknownObjectWeakLoadStrong();
  if (!v7 || (v8 = v7, v9 = [v7 presentingViewController], v8, !v9))
  {
    v6 = 0;
    goto LABEL_23;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {

    goto LABEL_23;
  }

LABEL_11:
  v10 = [v6 viewControllers];
  sub_100032B70();
  v11 = sub_1007532A4();

  if (!(v11 >> 62))
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_13;
    }

LABEL_45:

    goto LABEL_23;
  }

  v12 = sub_100754664();
  if (!v12)
  {
    goto LABEL_45;
  }

LABEL_13:
  v13 = __OFSUB__(v12, 1);
  v14 = v12 - 1;
  if (v13)
  {
    __break(1u);
  }

  else if ((v11 & 0xC000000000000001) == 0)
  {
    if ((v14 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v14 < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v15 = *(v11 + 8 * v14 + 32);
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_50;
  }

  v15 = sub_100754574();
LABEL_18:
  v16 = v15;

  if (!v16)
  {
LABEL_23:
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    sub_1001AEFE0(&v30);
    v11 = 0;
LABEL_24:
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    goto LABEL_25;
  }

  v11 = v16;
  sub_10000C518(&qword_10092BBB8, &qword_1007B0368);
  if (swift_dynamicCast())
  {
    if (*(&v31 + 1))
    {
LABEL_43:
      sub_100012160(&v30, v33);
      sub_100012160(v33, &aBlock);
      goto LABEL_26;
    }
  }

  else
  {
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
  }

  sub_1001AEFE0(&v30);
  v24 = [v11 childViewControllers];
  v10 = sub_1007532A4();

  if (!(v10 >> 62))
  {
    result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_38;
    }

    goto LABEL_51;
  }

LABEL_50:
  result = sub_100754664();
  if (!result)
  {
LABEL_51:

    goto LABEL_24;
  }

LABEL_38:
  if ((v10 & 0xC000000000000001) != 0)
  {
    sub_100754574();
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v25 = *(v10 + 32);
  }

  sub_10000C518(&qword_10092BBB8, &qword_1007B0368);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_24;
  }

  if (*(&v31 + 1))
  {
    goto LABEL_43;
  }

LABEL_25:
  sub_1001AEFE0(&v30);
  aBlock = 0u;
  v27 = 0u;
  v28 = 0;
LABEL_26:
  v34[0] = aBlock;
  v34[1] = v27;
  v35 = v28;
  sub_1001AF048(v34, &aBlock);
  if (*(&v27 + 1))
  {
    sub_100012160(&aBlock, v33);
    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17 && (v18 = v17, v19 = [v17 presentingViewController], v18, v19))
    {
      sub_10000C824(v33, &v30);
      v20 = swift_allocObject();
      sub_100012160(&v30, v20 + 16);
      v28 = sub_1001AF0F0;
      v29 = v20;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v27 = sub_1000CF7B0;
      *(&v27 + 1) = &unk_10086B590;
      v21 = _Block_copy(&aBlock);

      [v19 dismissViewControllerAnimated:1 completion:v21];
      _Block_release(v21);
    }

    else
    {
    }

    sub_10000C620(v33);
    p_aBlock = v34;
  }

  else
  {
    sub_1001AEFE0(v34);

    p_aBlock = &aBlock;
  }

  return sub_1001AEFE0(p_aBlock);
}

void sub_1001AEEF4()
{
  v0 = [objc_opt_self() sharedURLCache];
  [v0 removeAllCachedResponses];

  v1 = CFNotificationCenterGetDarwinNotifyCenter();
  v2 = sub_100753064();
  CFNotificationCenterPostNotification(v1, v2, 0, 0, 1u);

  v3 = [objc_opt_self() sharedCoordinator];
  [v3 notify];
}

uint64_t sub_1001AEFE0(uint64_t a1)
{
  v2 = sub_10000C518(&unk_10092BBA8, &qword_1007B0360);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001AF048(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_10092BBA8, &qword_1007B0360);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001AF0B8()
{
  sub_10000C620((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1001AF0F0()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_10000C888(v0 + 2, v1);
  return (*(v2 + 8))(v1, v2);
}

double sub_1001AF144(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1001AF1AC(void (*a1)(void *__return_ptr, char *))
{
  v12 = a1;
  v3 = sub_100746084();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C518(&unk_10092EE90, &qword_1007B0448);
  __chkstk_darwin(v7 - 8);
  v9 = v11 - v8;
  sub_100016B4C(v1, v11 - v8, &unk_10092EE90, &qword_1007B0448);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    return 0;
  }

  (*(v4 + 32))(v6, v9, v3);
  v12(v11, v6);
  if (v2)
  {
    result = (*(v4 + 8))(v6, v3);
    __break(1u);
  }

  else
  {
    (*(v4 + 8))(v6, v3);
    return v11[0];
  }

  return result;
}

void sub_1001AF398(uint64_t a1, uint64_t a2)
{
  sub_1007461A4();
  sub_1001B59B8(&unk_10092BBC8, &type metadata accessor for ProductTopLockup, &protocol conformance descriptor for ProductTopLockup);
  sub_1007468B4();
  if (v12)
  {
    v4 = sub_1001AF640(a1, a2);
    v5 = sub_100746144();
    sub_1001B5434(v5, v4);

    if (sub_100746134() & 1) != 0 && (swift_getKeyPath(), sub_100746914(), , v6 = sub_1007537E4(), v12, (v6) && (swift_getKeyPath(), sub_100746914(), , v7 = sub_100753804(), v12, (v7))
    {
      sub_1001B4CE0();
      if (qword_100921718 != -1)
      {
        swift_once();
      }

      v8 = sub_100750B04();
      sub_10000D0FC(v8, qword_1009820C8);
      swift_getKeyPath();
      sub_100746914();

      sub_100751034();
      sub_10000C518(&unk_1009231A0, qword_1007A5810);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1007A5CF0;
      *(v9 + 32) = v12;
      v10 = v12;
      v11 = sub_100751044();
      sub_100750544();
    }

    else
    {
    }
  }
}

double sub_1001AF640(uint64_t a1, uint64_t a2)
{
  v84 = a2;
  v3 = sub_10000C518(&qword_10092BBF0, qword_1007AB808);
  __chkstk_darwin(v3 - 8);
  v68 = &v68 - v4;
  v5 = sub_10000C518(&unk_10092EE90, &qword_1007B0448);
  __chkstk_darwin(v5 - 8);
  v75 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v68 - v8;
  v10 = sub_100742284();
  v82 = *(v10 - 8);
  v83 = v10;
  __chkstk_darwin(v10);
  v81 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10074ED34();
  v79 = *(v12 - 8);
  v80 = v12;
  __chkstk_darwin(v12);
  v78 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_10074F6E4();
  v14 = *(v77 - 8);
  __chkstk_darwin(v77);
  v76 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v68 - v17;
  v19 = sub_10074F704();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v68 - v24;
  __chkstk_darwin(v26);
  v28 = &v68 - v27;
  sub_1007461A4();
  sub_1001B59B8(&unk_10092BBC8, &type metadata accessor for ProductTopLockup, &protocol conformance descriptor for ProductTopLockup);
  sub_1007468B4();
  v29 = v87[0];
  if (v87[0])
  {
    v74 = v9;
    v85 = v22;
    v69 = v18;
    swift_getKeyPath();
    v70 = v29;
    sub_100746914();

    sub_10074F5C4();
    v30 = *(v20 + 8);
    v30(v28, v19);
    swift_getKeyPath();
    sub_100746914();

    sub_10074F5E4();
    v30(v25, v19);
    v31 = v69;
    v32 = v77;
    (*(v14 + 104))(v69, enum case for PageGrid.Direction.vertical(_:), v77);
    swift_getKeyPath();
    sub_100746914();

    sub_10074F5D4();
    v71 = v19;
    v73 = v20 + 8;
    v72 = v30;
    v30(v28, v19);
    (*(v14 + 16))(v76, v31, v32);
    sub_1004E97E0(0.0);
    sub_10074F6B4();
    (*(v14 + 8))(v31, v32);
    sub_10000C518(&unk_100925780, qword_1007AC630);
    v33 = *&v84;
    sub_1007526E4();
    v34 = v87[0];
    swift_getObjectType();
    v35 = v78;
    v36 = v70;
    sub_100746174();
    v77 = v34;
    sub_1007424E4();
    (*(v79 + 8))(v35, v80);
    swift_getObjectType();
    v37 = v81;
    sub_1007423D4();
    v38 = sub_1001B4CE0();
    sub_1001B00D4(v36, v37, a1, v33, v87, v38, v39);
    v40 = v83;
    v41 = *(v82 + 8);
    v41(v37, v83);
    sub_1007423D4();
    v42 = v74;
    sub_1007460A4();
    v41(v37, v40);
    v43 = sub_100746084();
    v44 = *(v43 - 8);
    v45 = *(v44 + 48);
    v46 = v42;
    v47 = v45(v42, 1, v43);
    v48 = 0;
    v49 = v46;
    if (v47 != 1)
    {
      v50 = v46;
      v51 = v75;
      sub_100016B4C(v50, v75, &unk_10092EE90, &qword_1007B0448);
      if (v45(v51, 1, v43) == 1)
      {
        v52 = &unk_10092EE90;
        v53 = &qword_1007B0448;
        v54 = v51;
      }

      else
      {
        v56 = v68;
        sub_100746074();
        (*(v44 + 8))(v51, v43);
        v57 = sub_100743E44();
        v58 = *(v57 - 8);
        if ((*(v58 + 48))(v56, 1, v57) != 1)
        {
          v59 = sub_100743E34();
          (*(v58 + 8))(v56, v57);
          v48 = v59 ^ 1;
          goto LABEL_10;
        }

        v52 = &qword_10092BBF0;
        v53 = qword_1007AB808;
        v54 = v56;
      }

      sub_10000C8CC(v54, v52, v53);
      v48 = 1;
    }

LABEL_10:
    if (sub_100746144() && (, ((sub_100746134() | v48) & 1) == 0))
    {
      if (qword_10091FED0 != -1)
      {
        swift_once();
      }

      v61 = qword_10097CC50;
    }

    else
    {
      if (sub_100746144())
      {

        v60 = 0.0;
LABEL_22:
        sub_10000C888(v87, v87[3]);
        v64 = v85;
        sub_10074F674();
        swift_getKeyPath();
        sub_100746914();

        sub_100750414();
        v66 = v65;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        v72(v64, v71);
        v55 = v60 + v66;
        sub_10000C8CC(v49, &unk_10092EE90, &qword_1007B0448);
        sub_10000C620(v87);
        return v55;
      }

      v60 = 0.0;
      if (v48)
      {
        goto LABEL_22;
      }

      if (qword_10091FED8 != -1)
      {
        swift_once();
      }

      v61 = qword_10097CC78;
    }

    sub_10000C888(v61, v61[3]);
    swift_getKeyPath();
    sub_100746914();

    v62 = v86;
    sub_100750574();
    v60 = v63;

    goto LABEL_22;
  }

  return 0.0;
}

uint64_t sub_1001B00D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, double a4@<X4>, uint64_t *a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v8 = v7;
  v145 = a4;
  v146 = a2;
  v147 = a5;
  v13 = sub_10000C518(&qword_100934110, qword_1007B70F0);
  __chkstk_darwin(v13 - 8);
  v144 = &v119 - v14;
  v143 = sub_10074C3E4();
  v138 = *(v143 - 8);
  __chkstk_darwin(v143);
  v140 = &v119 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_10000C518(&unk_100925560, &unk_1007A8E30);
  v141 = *(v142 - 8);
  __chkstk_darwin(v142);
  v139 = &v119 - v16;
  v148 = sub_1007479B4();
  v137 = *(v148 - 8);
  __chkstk_darwin(v148);
  v136 = &v119 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  __chkstk_darwin(v135);
  v19 = (&v119 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20);
  v153 = &v119 - v21;
  v151 = sub_10074CD14();
  v152 = *(v151 - 8);
  __chkstk_darwin(v151);
  v150 = &v119 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10000C518(&unk_10092EE90, &qword_1007B0448);
  __chkstk_darwin(v23 - 8);
  v25 = &v119 - v24;
  v149 = sub_10074F704();
  v26 = *(v149 - 8);
  __chkstk_darwin(v149);
  v28 = &v119 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v154 = v28;
  sub_100746914();

  v29 = a1;
  sub_1007460A4();
  v146 = v8;
  v155 = v8;
  v156 = a1;
  v157 = a3;
  v158 = v145;
  v30 = COERCE_DOUBLE(sub_1001AF1AC(sub_1001B5904));
  LOBYTE(a1) = v31;
  sub_10000C8CC(v25, &unk_10092EE90, &qword_1007B0448);
  if (a1)
  {
    v32 = 0.0;
  }

  else
  {
    v32 = v30;
  }

  v33 = sub_1001B5154();
  if (sub_100746134())
  {
    v125 = v26;
    v124 = v29;
    sub_100746164();
    if (qword_10091FE58 != -1)
    {
      swift_once();
    }

    v34 = sub_10000C518(&unk_100923C20, &unk_1007B1940);
    sub_10000D0FC(v34, qword_10097CB08);
    swift_getKeyPath();
    sub_100746914();

    *&v160 = v167;
    sub_100743464();
    swift_unknownObjectRelease();
    if (qword_10091FFD0 != -1)
    {
      swift_once();
    }

    v35 = sub_10000C518(&unk_10092BC10, qword_1007A7070);
    sub_10000D0FC(v35, qword_10097CF90);
    swift_getKeyPath();
    sub_100746914();

    v166 = v167;
    v134 = v35;
    sub_100743464();
    swift_unknownObjectRelease();
    v36 = sub_10074F3F4();
    v168 = v36;
    v132 = sub_1001B59B8(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v169 = v132;
    v37 = sub_10000D134(&v167);
    v38 = *(v36 - 8);
    v39 = *(v38 + 104);
    v131 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v133 = v36;
    v130 = v39;
    v129 = v38 + 104;
    v39(v37);
    sub_10074FC74();
    sub_10000C620(&v167);
    v40 = v150;
    sub_10074CD04();
    sub_10074CCE4();
    v41 = *(v152 + 8);
    v152 += 8;
    v128 = v41;
    v41(v40, v151);
    sub_10074F674();
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    sub_10007DC04();
    swift_unknownObjectRelease();
    v45 = a3;
    if (qword_10091FE28 != -1)
    {
      swift_once();
    }

    v46 = v135;
    v47 = sub_10000D0FC(v135, qword_10097CAA8);
    v48 = v153;
    sub_1001B5A60(v47, v153, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
    v145 = a7;
    *(v48 + 32) = a6;
    *(v48 + 40) = a7;
    *(v48 + 8) = left;
    *(v48 + 16) = bottom;
    *(v48 + 24) = right;
    *v48 = 0;
    v164 = &type metadata for CGFloat;
    v165 = &protocol witness table for CGFloat;
    *&v163 = v32;
    v49 = v46[15];
    sub_10000C620((v48 + v49));
    sub_100012160(&v163, v48 + v49);
    v164 = &type metadata for CGFloat;
    v165 = &protocol witness table for CGFloat;
    *&v163 = v33;
    v50 = v46[16];
    sub_10000C620((v48 + v50));
    sub_100012160(&v163, v48 + v50);
    sub_10074F674();
    v51 = sub_10007DC04();
    swift_getObjectType();
    v52 = sub_10026F414(&v167, v48, v51);
    swift_unknownObjectRelease();
    if (v52)
    {
      sub_10074F674();
      sub_10007DC04();
      swift_unknownObjectRelease();
      sub_1001B5A60(v47, v19, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
      v53 = v145;
      v19[4] = a6;
      v19[5] = v53;
      v19[1] = left;
      v19[2] = bottom;
      v19[3] = right;
      *v19 = 0.0;
      v164 = &type metadata for CGFloat;
      v165 = &protocol witness table for CGFloat;
      *&v163 = v32;
      v54 = v46[15];
      sub_10000C620((v19 + v54));
      sub_100012160(&v163, v19 + v54);
      v164 = &type metadata for CGFloat;
      v165 = &protocol witness table for CGFloat;
      *&v163 = v33;
      v55 = v46[16];
      sub_10000C620((v19 + v55));
      sub_100012160(&v163, v19 + v55);
      if (qword_10091FF48 != -1)
      {
        swift_once();
      }

      v56 = sub_10000C518(&unk_1009249B0, &qword_1007B5A70);
      v57 = sub_10000D0FC(v56, qword_10097CDF8);
      v58 = *(*(v56 - 8) + 24);
      v58(v19 + v46[7], v57, v56);
      if (qword_10091FF38 != -1)
      {
        swift_once();
      }

      v59 = sub_10000D0FC(v56, qword_10097CDC8);
      v58(v19 + v46[6], v59, v56);
      if (qword_10091FF60 != -1)
      {
        swift_once();
      }

      v60 = sub_10000D0FC(v56, qword_10097CE40);
      v58(v19 + v46[8], v60, v56);
      if (qword_10091FF08 != -1)
      {
        swift_once();
      }

      v61 = sub_10000C518(&unk_100923C30, &qword_1007B1DB0);
      v62 = sub_10000D0FC(v61, qword_10097CD38);
      (*(*(v61 - 8) + 24))(v19 + v46[13], v62, v61);
      v164 = &type metadata for CGFloat;
      v165 = &protocol witness table for CGFloat;
      *&v163 = 0x401C000000000000;
      v63 = v153;
      sub_1001B5A00(v153, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
      v64 = v46[9];
      sub_10000C620((v19 + v64));
      sub_100012160(&v163, v19 + v64);
      sub_1001B5928(v19, v63);
      sub_10000C888(&v167, v168);
      if (qword_10091FE60 != -1)
      {
        swift_once();
      }

      sub_10000D0FC(v34, qword_10097CB20);
      swift_getKeyPath();
      sub_100746914();

      v166 = v160;
      sub_100743464();
      swift_unknownObjectRelease();
      sub_100750864();
    }

    if (qword_10091FE70 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v34, qword_10097CB50);
    swift_getKeyPath();
    sub_100746914();

    v166 = v160;
    sub_100743464();
    swift_unknownObjectRelease();
    v65 = v163;
    sub_1007460D4();
    v66 = qword_10091FFD8;
    v67 = v65;
    if (v66 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v134, qword_10097CFA8);
    swift_getKeyPath();
    v135 = v45;
    sub_100746914();

    v166 = v163;
    sub_100743464();
    swift_unknownObjectRelease();
    v68 = v133;
    v164 = v133;
    v165 = v132;
    v69 = sub_10000D134(&v163);
    v130(v69, v131, v68);
    sub_10074FC74();
    sub_10000C620(&v163);
    v70 = v150;
    sub_10074CD04();
    sub_10074CCE4();
    v128(v70, v151);
    v71 = sub_100750F34();
    swift_allocObject();
    v72 = sub_100750F14();
    swift_allocObject();
    v73 = sub_100750F14();
    swift_allocObject();
    v74 = sub_100750F14();
    swift_allocObject();
    v146 = sub_100750F14();
    v75 = sub_10056003C(0xD000000000000013, 0x800000010076F430, 0);
    [v75 size];

    swift_allocObject();
    v122 = sub_100750F14();
    swift_allocObject();
    v121 = sub_100750F14();
    swift_allocObject();
    v119 = sub_100750F14();
    swift_allocObject();
    v120 = sub_100750F14();
    sub_1007460F4();
    v123 = v67;
    v127 = v72;
    v126 = v73;
    if (v77 == 1 || (v78 = v76, , !v78))
    {
      v79 = v74;
      v162 = 0;
      v161 = 0u;
      v160 = 0u;
      v85 = v153;
    }

    else
    {
      v79 = v74;
      sub_100038D38();
      if (qword_1009210A8 != -1)
      {
        swift_once();
      }

      v80 = sub_100750534();
      sub_10000D0FC(v80, qword_100980F30);
      swift_getKeyPath();
      sub_100746914();

      v81 = v160;
      sub_100753C14();

      if (qword_10091FFF0 != -1)
      {
        swift_once();
      }

      sub_10000D0FC(v134, qword_10097CFF0);
      swift_getKeyPath();
      sub_100746914();

      v159 = v160;
      sub_100743464();
      swift_unknownObjectRelease();
      v82 = v133;
      *(&v161 + 1) = v133;
      v162 = v132;
      v83 = sub_10000D134(&v160);
      v130(v83, v131, v82);
      sub_10074FC74();
      sub_10000C620(&v160);
      v84 = v150;
      sub_10074CD04();
      sub_10074CCE4();
      v128(v84, v151);
      v85 = v153;
      v72 = v127;
      v73 = v126;
    }

    v91 = type metadata accessor for ProductLockupInlineUberLayout(0);
    v92 = v147;
    v147[3] = v91;
    v92[4] = sub_1001B59B8(&unk_10092BC20, type metadata accessor for ProductLockupInlineUberLayout, &protocol conformance descriptor for ProductLockupInlineUberLayout);
    v93 = sub_10000D134(v92);
    sub_1001B5A60(v85, v93, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
    v94 = (v93 + v91[5]);
    v94[3] = v71;
    v94[4] = &protocol witness table for LayoutViewPlaceholder;
    *v94 = v146;
    v95 = (v93 + v91[6]);
    v95[3] = v71;
    v95[4] = &protocol witness table for LayoutViewPlaceholder;
    *v95 = v73;
    v96 = (v93 + v91[7]);
    v96[3] = v71;
    v96[4] = &protocol witness table for LayoutViewPlaceholder;
    *v96 = v79;
    v97 = (v93 + v91[10]);
    v97[3] = v71;
    v97[4] = &protocol witness table for LayoutViewPlaceholder;
    *v97 = v72;
    swift_allocObject();

    v152 = v79;

    v98 = sub_100750F14();
    v99 = (v93 + v91[8]);
    v99[3] = v71;
    v99[4] = &protocol witness table for LayoutViewPlaceholder;
    *v99 = v98;
    sub_10000C824(&v167, v93 + v91[9]);
    sub_10000C824(&v163, v93 + v91[11]);
    v100 = v93 + v91[12];
    *(v100 + 4) = 0;
    *v100 = 0u;
    *(v100 + 1) = 0u;
    if (qword_1009219B8 != -1)
    {
      swift_once();
    }

    v101 = v148;
    v102 = sub_10000D0FC(v148, qword_1009827C8);
    v103 = v137;
    v104 = v136;
    (*(v137 + 16))(v136, v102, v101);
    swift_getKeyPath();
    sub_100746914();

    v105 = v138;
    v106 = v143;
    (*(v138 + 104))(v140, enum case for OfferButtonSubtitlePosition.below(_:), v143);
    (*(v105 + 56))(v144, 1, 1, v106);
    sub_1001B59B8(&qword_1009332C0, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
    v107 = v139;
    sub_10074A9C4();
    sub_100747984();
    swift_unknownObjectRelease();
    (*(v141 + 8))(v107, v142);
    (*(v103 + 8))(v104, v148);
    swift_allocObject();
    v108 = sub_100750F14();
    v109 = (v93 + v91[13]);
    v109[3] = v71;
    v109[4] = &protocol witness table for LayoutViewPlaceholder;
    *v109 = v108;
    sub_100016B4C(&v160, v93 + v91[14], &qword_10092BC30, &qword_1007AD5C0);
    v110 = v93 + v91[15];
    *(v110 + 4) = 0;
    *v110 = 0u;
    *(v110 + 1) = 0u;
    v111 = (v93 + v91[16]);
    v111[3] = v71;
    v111[4] = &protocol witness table for LayoutViewPlaceholder;
    *v111 = v122;
    v112 = (v93 + v91[17]);
    v112[3] = v71;
    v112[4] = &protocol witness table for LayoutViewPlaceholder;
    *v112 = v121;
    v113 = (v93 + v91[18]);
    v113[3] = v71;
    v113[4] = &protocol witness table for LayoutViewPlaceholder;
    *v113 = v119;
    v114 = (v93 + v91[19]);
    v114[3] = v71;
    v114[4] = &protocol witness table for LayoutViewPlaceholder;

    *v114 = v120;
    sub_10000C8CC(&v160, &qword_10092BC30, &qword_1007AD5C0);
    sub_10000C620(&v163);
    sub_1001B5A00(v153, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
    (*(v125 + 8))(v154, v149);
    return sub_10000C620(&v167);
  }

  else
  {
    swift_getKeyPath();
    sub_100746914();

    v86 = v167;
    v87 = sub_100753804();

    if (v87)
    {
      v88 = type metadata accessor for ProductLockupAccessibilityLayout(0);
      v89 = v147;
      v147[3] = v88;
      v89[4] = sub_1001B59B8(&unk_10092BC00, type metadata accessor for ProductLockupAccessibilityLayout, &protocol conformance descriptor for ProductLockupAccessibilityLayout);
      v90 = sub_10000D134(v89);
      sub_1001B1B38(v29, a3, v90, a6, a7, v32, v33);
    }

    else
    {
      v116 = type metadata accessor for ProductLockupLayout(0);
      v117 = v147;
      v147[3] = v116;
      v117[4] = sub_1001B59B8(&qword_10092BBF8, type metadata accessor for ProductLockupLayout, &protocol conformance descriptor for ProductLockupLayout);
      v118 = sub_10000D134(v117);
      sub_1001B3570(v29, a3, v118, a6, a7, v32, v33);
    }

    return (*(v26 + 8))(v154, v149);
  }
}

uint64_t sub_1001B19BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, double *a4@<X8>)
{
  v8 = sub_10000C518(&unk_10092EE90, &qword_1007B0448);
  __chkstk_darwin(v8 - 8);
  v10 = &v17 - v9;
  v11 = sub_100746084();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a1, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  v13 = sub_100746144();
  if (v13)
  {
  }

  v14 = sub_100746134();
  v15 = sub_1001B5AC8(v10, v13 != 0, v14 & 1, a2, a3);
  result = sub_10000C8CC(v10, &unk_10092EE90, &qword_1007B0448);
  *a4 = v15;
  return result;
}

uint64_t sub_1001B1B38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v165 = a1;
  v145 = a3;
  v12 = sub_10000C518(&qword_100934110, qword_1007B70F0);
  __chkstk_darwin(v12 - 8);
  v143 = &v125 - v13;
  v141 = sub_10074C3E4();
  v135 = *(v141 - 8);
  __chkstk_darwin(v141);
  v137 = &v125 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000C518(&unk_100925560, &unk_1007A8E30);
  v139 = *(v15 - 8);
  v140 = v15;
  __chkstk_darwin(v15);
  v136 = &v125 - v16;
  v138 = sub_1007479B4();
  v144 = *(v138 - 8);
  __chkstk_darwin(v138);
  v134 = &v125 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v152 = &v125 - v19;
  v132 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  __chkstk_darwin(v132);
  v154 = &v125 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_100744EA4();
  v126 = *(v130 - 8);
  __chkstk_darwin(v130);
  v125 = &v125 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_10000C518(&qword_10092BBE0, &qword_1007B0420);
  v142 = *(v151 - 8);
  __chkstk_darwin(v151);
  v150 = &v125 - v22;
  v153 = sub_10074CD14();
  v166 = *(v153 - 8);
  __chkstk_darwin(v153);
  *&v164 = &v125 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100750534();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v125 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_100038D38();
  if (qword_10091FE98 != -1)
  {
    swift_once();
  }

  v29 = sub_10000C518(&qword_100923C40, &qword_1007B5CB0);
  sub_10000D0FC(v29, qword_10097CBA8);
  swift_getKeyPath();
  sub_100746914();

  v183[0] = v184[0];
  v147 = v29;
  sub_100743464();
  swift_unknownObjectRelease();
  swift_getKeyPath();
  sub_100746914();

  v30 = v184[0];
  v158 = v28;
  v31 = sub_100753C14();

  v32 = *(v25 + 8);
  v148 = v27;
  v149 = v25 + 8;
  v159 = v24;
  v146 = v32;
  v32(v27, v24);
  sub_100746164();
  v33 = qword_10091FFC8;
  v34 = v31;
  if (v33 != -1)
  {
    swift_once();
  }

  v35 = sub_10000C518(&unk_10092BC10, qword_1007A7070);
  sub_10000D0FC(v35, qword_10097CF78);
  swift_getKeyPath();
  sub_100746914();

  v182[0] = v184[0];
  v157 = v35;
  sub_100743464();
  swift_unknownObjectRelease();
  v36 = sub_10074F3F4();
  v184[3] = v36;
  *&v163 = sub_1001B59B8(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v184[4] = v163;
  v37 = sub_10000D134(v184);
  v38 = *(v36 - 8);
  v39 = *(v38 + 104);
  v162 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v156 = v36;
  v160 = v38 + 104;
  v161 = v39;
  v39(v37);
  LOBYTE(v36) = sub_10074FC74();
  sub_10000C620(v184);
  LOBYTE(v124) = v36 & 1;
  v40 = v164;
  v133 = v34;
  sub_10074CD04();
  sub_10074CCE4();
  v41 = *(v166 + 8);
  v166 += 8;
  v155 = v41;
  v41(v40, v153);
  if (qword_10091FEA8 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v147, qword_10097CBD8);
  swift_getKeyPath();
  sub_100746914();

  v182[0] = v183[0];
  v42 = v148;
  sub_100743464();
  swift_unknownObjectRelease();
  swift_getKeyPath();
  sub_100746914();

  v43 = v183[0];
  v44 = sub_100753C14();

  v146(v42, v159);
  v131 = sub_1007460D4();
  v45 = qword_10091FFD8;
  v46 = v44;
  if (v45 != -1)
  {
    swift_once();
  }

  v129 = sub_10000D0FC(v157, qword_10097CFA8);
  swift_getKeyPath();
  v128 = a2;
  sub_100746914();

  *&v179 = v183[0];
  sub_100743464();
  swift_unknownObjectRelease();
  v47 = v156;
  v183[3] = v156;
  v183[4] = v163;
  v48 = sub_10000D134(v183);
  v161(v48, v162, v47);
  sub_10074FC74();
  sub_10000C620(v183);
  v49 = v164;
  sub_10074CD04();
  sub_10074CCE4();
  v50 = v153;
  v51 = v155;
  v155(v49, v153);
  v131 = sub_100746094();
  v127 = v52;
  swift_getKeyPath();
  v53 = v46;
  sub_100746914();

  v175 = v182[0];
  sub_100743464();
  swift_unknownObjectRelease();
  v182[3] = v47;
  v182[4] = v163;
  v54 = sub_10000D134(v182);
  v161(v54, v162, v47);
  v55 = sub_10074FC74();
  sub_10000C620(v182);
  LOBYTE(v124) = v55 & 1;
  v131 = v53;
  sub_10074CD04();
  sub_10074CCE4();
  v56 = v49;
  v57 = v50;
  v51(v56, v50);
  sub_1007460B4();
  if (v58)
  {
    if (qword_10091FEB8 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v147, qword_10097CC08);
    swift_getKeyPath();
    sub_100746914();

    v175 = v179;
    v59 = v148;
    sub_100743464();
    swift_unknownObjectRelease();
    swift_getKeyPath();
    sub_100746914();

    v60 = v179;
    v61 = sub_100753C14();

    v146(v59, v159);
    v62 = qword_10091FFE0;
    v63 = v61;
    if (v62 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v157, qword_10097CFC0);
    swift_getKeyPath();
    sub_100746914();

    *&v172 = v179;
    sub_100743464();
    swift_unknownObjectRelease();
    v64 = v156;
    *(&v180 + 1) = v156;
    v181 = v163;
    v65 = sub_10000D134(&v179);
    v161(v65, v162, v64);
    LOBYTE(v64) = sub_10074FC74();
    sub_10000C620(&v179);
    LOBYTE(v124) = v64 & 1;
    v66 = v164;
    sub_10074CD04();
    sub_10074CCE4();

    v155(v66, v50);
  }

  else
  {
    v181 = 0;
    v179 = 0u;
    v180 = 0u;
  }

  v67 = v130;
  sub_1001B58AC();
  sub_1007468E4();
  swift_getKeyPath();
  sub_100752E94();

  v68 = v175;
  swift_getKeyPath();
  sub_100752E94();

  v69 = v176;
  if (v176)
  {
    v70 = v159;
    if (v68)
    {

      goto LABEL_31;
    }
  }

  else
  {
    v70 = v159;
  }

  v71 = sub_100746114();
  v72 = v125;
  v73 = v126;
  if (v71)
  {
    v74 = v71;
  }

  else
  {
    if (!sub_100746104())
    {
LABEL_29:
      v69 = 0;
      goto LABEL_30;
    }

    v74 = sub_100749F34();
  }

  (*(v73 + 104))(v72, enum case for OfferTitleType.standard(_:), v67);
  if (!*(v74 + 16) || (v76 = sub_100412914(v72, v75), (v77 & 1) == 0))
  {

    (*(v73 + 8))(v72, v67);
    goto LABEL_29;
  }

  v78 = (*(v74 + 56) + 16 * v76);
  v79 = v72;
  v149 = *v78;
  v80 = v73;
  v69 = v78[1];
  v81 = *(v80 + 8);

  v81(v79, v67);

LABEL_30:
  v57 = v153;
LABEL_31:
  if (qword_1009212E0 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v70, qword_1009815D8);
  swift_getKeyPath();
  sub_100746914();

  v82 = v175;
  sub_100753C14();

  if (qword_10091FFF8 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v157, qword_10097D008);
  swift_getKeyPath();
  sub_100746914();

  *&v169 = v175;
  sub_100743464();
  swift_unknownObjectRelease();
  v83 = v156;
  v177 = v156;
  v178 = v163;
  v84 = sub_10000D134(&v175);
  v161(v84, v162, v83);
  LOBYTE(v83) = sub_10074FC74();
  sub_10000C620(&v175);
  LOBYTE(v124) = v83 & 1;
  v85 = v164;
  sub_10074CD04();
  sub_10074CCE4();
  v155(v85, v57);
  sub_10000C888(&v175, v177);
  if (v69)
  {
  }

  sub_1007503B4();
  sub_1007460F4();
  if (v86 == 1 || (v87 = v86, , !v87))
  {
    v174 = 0;
    v172 = 0u;
    v173 = 0u;
  }

  else
  {
    if (qword_100921098 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v159, qword_100980F00);
    swift_getKeyPath();
    sub_100746914();

    v88 = v172;
    sub_100753C14();

    if (qword_10091FFE8 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v157, qword_10097CFD8);
    swift_getKeyPath();
    sub_100746914();

    v168 = v172;
    sub_100743464();
    swift_unknownObjectRelease();
    v89 = v156;
    *(&v173 + 1) = v156;
    v174 = v163;
    v90 = sub_10000D134(&v172);
    v161(v90, v162, v89);
    LOBYTE(v89) = sub_10074FC74();
    sub_10000C620(&v172);
    LOBYTE(v124) = v89 & 1;
    v91 = v164;
    sub_10074CD04();
    sub_10074CCE4();
    v155(v91, v57);
  }

  sub_1007460F4();
  if (v93 == 1 || (v94 = v92, , !v94))
  {
    v171 = 0;
    v169 = 0u;
    v170 = 0u;
  }

  else
  {
    if (qword_1009210A0 != -1)
    {
      swift_once();
    }

    v95 = v57;
    sub_10000D0FC(v159, qword_100980F18);
    swift_getKeyPath();
    sub_100746914();

    v96 = v169;
    sub_100753C14();

    if (qword_10091FFF0 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v157, qword_10097CFF0);
    swift_getKeyPath();
    sub_100746914();

    v167 = v169;
    sub_100743464();
    swift_unknownObjectRelease();
    v97 = v156;
    *(&v170 + 1) = v156;
    v171 = v163;
    v98 = sub_10000D134(&v169);
    v161(v98, v162, v97);
    v99 = sub_10074FC74();
    sub_10000C620(&v169);
    LOBYTE(v124) = v99 & 1;
    v100 = v164;
    sub_10074CD04();
    sub_10074CCE4();
    v155(v100, v95);
  }

  v101 = sub_100750F34();
  swift_allocObject();
  v166 = sub_100750F14();
  swift_allocObject();
  v165 = sub_100750F14();
  v102 = *&UIEdgeInsetsZero.top;
  v163 = *&UIEdgeInsetsZero.bottom;
  v164 = v102;
  if (qword_10091FE30 != -1)
  {
    swift_once();
  }

  v103 = sub_10000D0FC(v132, qword_10097CAC0);
  __chkstk_darwin(v103);
  *(&v125 - 8) = a4;
  *(&v125 - 7) = a5;
  *(&v125 - 6) = a6;
  *(&v125 - 5) = a7;
  v104 = v163;
  *(&v125 - 2) = v164;
  v124 = v104;
  sub_1001B59B8(&qword_10092BC38, type metadata accessor for ProductLockupAccessibilityLayout.Metrics, &protocol conformance descriptor for ProductLockupAccessibilityLayout.Metrics);
  sub_10074F4B4();
  swift_getKeyPath();
  sub_100746914();

  v105 = v168;
  if (sub_100753804())
  {
    if (qword_100921988 != -1)
    {
      swift_once();
    }

    v106 = qword_10093FF40;
  }

  else
  {
    if (qword_100921990 != -1)
    {
      swift_once();
    }

    v106 = qword_10093FF58;
  }

  v107 = v138;
  v108 = sub_10000D0FC(v138, v106);
  v109 = v144;
  v110 = v134;
  (*(v144 + 16))(v134, v108, v107);

  (*(v109 + 32))(v152, v110, v107);
  v111 = *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64);
  *&v164 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics;
  v112 = v145;
  sub_1001B5A60(v154, v145 + v111, type metadata accessor for ProductLockupAccessibilityLayout.Metrics);
  swift_allocObject();
  v113 = sub_100750F14();
  *(v112 + 24) = v101;
  *(v112 + 32) = &protocol witness table for LayoutViewPlaceholder;
  *v112 = v113;
  sub_10000C824(v184, v112 + 40);
  sub_10000C824(v182, v112 + 80);
  sub_10000C824(v183, v112 + 120);
  sub_100016B4C(&v179, v112 + 160, &qword_10092BC30, &qword_1007AD5C0);
  swift_getKeyPath();
  sub_100746914();

  v114 = v135;
  v115 = v141;
  (*(v135 + 104))(v137, enum case for OfferButtonSubtitlePosition.below(_:), v141);
  (*(v114 + 56))(v143, 1, 1, v115);
  sub_1001B59B8(&qword_1009332C0, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
  v116 = v136;
  sub_10074A9C4();
  v117 = v152;
  sub_100747984();
  swift_unknownObjectRelease();
  (*(v139 + 8))(v116, v140);
  swift_allocObject();
  v118 = sub_100750F14();
  *(v112 + 224) = v101;
  *(v112 + 232) = &protocol witness table for LayoutViewPlaceholder;
  *(v112 + 200) = v118;
  *(v112 + 240) = 0u;
  *(v112 + 256) = 0u;
  *(v112 + 272) = 0;
  v119 = v177;
  v120 = v178;
  v121 = sub_10000C888(&v175, v177);
  *(v112 + 304) = v119;
  *(v112 + 312) = *(v120 + 8);
  v122 = sub_10000D134((v112 + 280));
  (*(*(v119 - 8) + 16))(v122, v121, v119);
  sub_100016B4C(&v172, v112 + 320, &qword_10092BC30, &qword_1007AD5C0);
  sub_100016B4C(&v169, v112 + 360, &qword_10092BC30, &qword_1007AD5C0);
  *(v112 + 424) = v101;
  *(v112 + 432) = &protocol witness table for LayoutViewPlaceholder;
  *(v112 + 400) = v166;
  *(v112 + 464) = v101;
  *(v112 + 472) = &protocol witness table for LayoutViewPlaceholder;

  *(v112 + 440) = v165;
  (*(v109 + 8))(v117, v107);
  sub_1001B5A00(v154, v164);
  sub_10000C8CC(&v169, &qword_10092BC30, &qword_1007AD5C0);
  sub_10000C8CC(&v172, &qword_10092BC30, &qword_1007AD5C0);
  (*(v142 + 8))(v150, v151);
  sub_10000C8CC(&v179, &qword_10092BC30, &qword_1007AD5C0);
  sub_10000C620(v182);
  sub_10000C620(v183);
  sub_10000C620(v184);
  return sub_10000C620(&v175);
}

uint64_t sub_1001B3570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v156 = a1;
  v138 = a3;
  v12 = sub_10000C518(&qword_100934110, qword_1007B70F0);
  __chkstk_darwin(v12 - 8);
  v136 = v126 - v13;
  v135 = sub_10074C3E4();
  v130 = *(v135 - 8);
  __chkstk_darwin(v135);
  v132 = v126 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000C518(&unk_100925560, &unk_1007A8E30);
  v133 = *(v15 - 8);
  v134 = v15;
  __chkstk_darwin(v15);
  v131 = v126 - v16;
  v144 = sub_1007479B4();
  v137 = *(v144 - 8);
  __chkstk_darwin(v144);
  v129 = v126 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v143 = v126 - v19;
  v20 = sub_100744EA4();
  v139 = *(v20 - 8);
  v140 = v20;
  __chkstk_darwin(v20);
  v127 = v126 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10074CD14();
  v23 = *(v22 - 8);
  v154 = v22;
  v155 = v23;
  __chkstk_darwin(v22);
  v150 = v126 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10000C518(&qword_10092BC40, &qword_1007B04C0);
  __chkstk_darwin(v25 - 8);
  v27 = v126 - v26;
  v28 = type metadata accessor for ProductLockupLayout.Metrics(0);
  __chkstk_darwin(v28);
  v30 = v126 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = v126 - v32;
  v34 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  (*(*(v34 - 8) + 56))(v27, 1, 1, v34);
  swift_getKeyPath();
  sub_100746914();

  v35 = v180[0];
  sub_10003FEA4(v180[0], v30);
  v157 = a4;
  v158 = a5;
  v159 = a6;
  v160 = a7;
  v36 = *&UIEdgeInsetsZero.bottom;
  v161 = *&UIEdgeInsetsZero.top;
  v162 = v36;
  v163 = v27;
  sub_1001B59B8(&qword_10092BC48, type metadata accessor for ProductLockupLayout.Metrics, &protocol conformance descriptor for ProductLockupLayout.Metrics);
  sub_10074F4B4();

  sub_1001B5A00(v30, type metadata accessor for ProductLockupLayout.Metrics);
  sub_10000C8CC(v27, &qword_10092BC40, &qword_1007B04C0);
  v151 = sub_100746164();
  v146 = v37;
  swift_getKeyPath();
  v38 = a2;
  sub_100746914();

  v178[0] = v180[0];
  v39 = sub_10000C518(&unk_100923C20, &unk_1007B1940);
  sub_100743464();
  swift_unknownObjectRelease();
  swift_getKeyPath();
  sub_100746914();

  *&v175 = v180[0];
  v40 = sub_10000C518(&unk_10092BC10, qword_1007A7070);
  sub_100743464();
  swift_unknownObjectRelease();
  v41 = sub_10074F3F4();
  v180[3] = v41;
  v148 = sub_1001B59B8(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v180[4] = v148;
  v42 = sub_10000D134(v180);
  v43 = *(v41 - 1);
  v44 = *(v43 + 104);
  LODWORD(v153) = enum case for Feature.measurement_with_labelplaceholder(_:);
  v149 = v41;
  v152 = v44;
  v147 = v43 + 104;
  v44(v42);
  sub_10074FC74();
  sub_10000C620(v180);
  v45 = v150;
  sub_10074CD04();
  sub_10074CCE4();
  v46 = *(v155 + 8);
  v155 += 8;
  v151 = v46;
  v46(v45, v154);
  v126[1] = v28;
  swift_getKeyPath();
  v142 = v38;
  sub_100746914();

  *&v175 = v178[0];
  v146 = v33;
  v141 = v39;
  sub_100743464();
  swift_unknownObjectRelease();
  v47 = v179[0];
  v145 = sub_1007460D4();
  v128 = v48;
  v49 = qword_10091FFD8;
  v50 = v47;
  if (v49 != -1)
  {
    swift_once();
  }

  v51 = v40;
  v126[3] = sub_10000D0FC(v40, qword_10097CFA8);
  swift_getKeyPath();
  sub_100746914();

  *&v175 = v179[0];
  sub_100743464();
  swift_unknownObjectRelease();
  v53 = v148;
  v52 = v149;
  v179[3] = v149;
  v179[4] = v148;
  v54 = sub_10000D134(v179);
  (v152)(v54, v153, v52);
  sub_10074FC74();
  sub_10000C620(v179);
  v55 = v150;
  sub_10074CD04();
  sub_10074CCE4();
  v151(v55, v154);
  v128 = sub_100746094();
  v126[2] = v56;
  swift_getKeyPath();
  v57 = v50;
  sub_100746914();

  v172[0] = v178[0];
  v145 = v51;
  sub_100743464();
  swift_unknownObjectRelease();
  v178[3] = v52;
  v178[4] = v53;
  v58 = sub_10000D134(v178);
  (v152)(v58, v153, v52);
  sub_10074FC74();
  sub_10000C620(v178);
  v128 = v57;
  sub_10074CD04();
  sub_10074CCE4();
  v59 = v154;
  v151(v55, v154);
  sub_1007460B4();
  if (v60)
  {
    swift_getKeyPath();
    sub_100746914();

    *&v168 = v172[0];
    sub_100743464();
    swift_unknownObjectRelease();
    v61 = qword_10091FFE0;
    v62 = v175;
    if (v61 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v145, qword_10097CFC0);
    swift_getKeyPath();
    sub_100746914();

    *&v168 = v175;
    sub_100743464();
    swift_unknownObjectRelease();
    v63 = v149;
    *(&v176 + 1) = v149;
    v177 = v148;
    v64 = sub_10000D134(&v175);
    (v152)(v64, v153, v63);
    sub_10074FC74();
    sub_10000C620(&v175);
    v65 = v150;
    sub_10074CD04();
    sub_10074CCE4();

    v59 = v154;
    v151(v65, v154);
  }

  else
  {
    v177 = 0;
    v175 = 0u;
    v176 = 0u;
  }

  v66 = sub_100746114();
  v67 = v139;
  v68 = v140;
  v69 = v127;
  if (v66)
  {
    v70 = v66;
    v71 = v145;
  }

  else
  {
    v72 = sub_100746104();
    v71 = v145;
    if (!v72)
    {
      v155 = 0;
      goto LABEL_16;
    }

    v70 = sub_100749F34();
    v67 = v139;
  }

  (*(v67 + 104))(v69, enum case for OfferTitleType.standard(_:), v68);
  if (*(v70 + 16) && (v74 = sub_100412914(v69, v73), (v75 & 1) != 0))
  {
    v76 = (*(v70 + 56) + 16 * v74);
    v77 = v76[1];
    v155 = *v76;
    v78 = *(v67 + 8);

    v78(v69, v140);

    v72 = v77;
  }

  else
  {

    (*(v67 + 8))(v69, v68);
    v155 = 0;
    v72 = 0;
  }

LABEL_16:
  v79 = qword_10091FE80;
  v142 = v72;

  if (v79 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v141, qword_10097CB80);
  swift_getKeyPath();
  sub_100746914();

  *&v165 = v172[0];
  sub_100743464();
  swift_unknownObjectRelease();
  if (qword_10091FFF8 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v71, qword_10097D008);
  swift_getKeyPath();
  sub_100746914();

  v171 = v172[0];
  sub_100743464();
  swift_unknownObjectRelease();
  v80 = v149;
  v173 = v149;
  v174 = v148;
  v81 = sub_10000D134(v172);
  (v152)(v81, v153, v80);
  sub_10074FC74();
  sub_10000C620(v172);
  v82 = v150;
  sub_10074CD04();
  sub_10074CCE4();
  v151(v82, v59);
  sub_10000C888(v172, v173);
  sub_1007503B4();
  sub_1007460F4();
  if (v83 == 1 || (v84 = v83, , !v84))
  {
    v170 = 0;
    v168 = 0u;
    v169 = 0u;
  }

  else
  {
    sub_100038D38();
    if (qword_100921098 != -1)
    {
      swift_once();
    }

    v85 = sub_100750534();
    sub_10000D0FC(v85, qword_100980F00);
    swift_getKeyPath();
    sub_100746914();

    v86 = v168;
    sub_100753C14();

    if (qword_10091FFE8 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v145, qword_10097CFD8);
    swift_getKeyPath();
    sub_100746914();

    v171 = v168;
    sub_100743464();
    swift_unknownObjectRelease();
    v87 = v149;
    *(&v169 + 1) = v149;
    v170 = v148;
    v88 = sub_10000D134(&v168);
    (v152)(v88, v153, v87);
    sub_10074FC74();
    sub_10000C620(&v168);
    v89 = v150;
    sub_10074CD04();
    sub_10074CCE4();
    v151(v89, v154);
  }

  sub_1007460F4();
  if (v91 == 1 || (v92 = v90, , !v92))
  {
    v167 = 0;
    v165 = 0u;
    v166 = 0u;
  }

  else
  {
    sub_100038D38();
    if (qword_1009210A0 != -1)
    {
      swift_once();
    }

    v93 = sub_100750534();
    sub_10000D0FC(v93, qword_100980F18);
    swift_getKeyPath();
    sub_100746914();

    v94 = v165;
    sub_100753C14();

    if (qword_10091FFF0 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v145, qword_10097CFF0);
    swift_getKeyPath();
    sub_100746914();

    v164 = v165;
    sub_100743464();
    swift_unknownObjectRelease();
    v95 = v149;
    *(&v166 + 1) = v149;
    v167 = v148;
    v96 = sub_10000D134(&v165);
    (v152)(v96, v153, v95);
    sub_10074FC74();
    sub_10000C620(&v165);
    v97 = v150;
    sub_10074CD04();
    sub_10074CCE4();
    v151(v97, v154);
  }

  v98 = sub_100750F34();
  swift_allocObject();
  v154 = sub_100750F14();
  swift_allocObject();
  v153 = sub_100750F14();
  swift_getKeyPath();
  sub_100746914();

  v99 = v171;
  if (sub_100753804())
  {
    if (qword_100921988 != -1)
    {
      swift_once();
    }

    v100 = qword_10093FF40;
  }

  else
  {
    if (qword_100921990 != -1)
    {
      swift_once();
    }

    v100 = qword_10093FF58;
  }

  v101 = v144;
  v102 = sub_10000D0FC(v144, v100);
  v103 = v137;
  v104 = v129;
  (*(v137 + 16))(v129, v102, v101);

  (*(v103 + 32))(v143, v104, v101);
  v152 = type metadata accessor for ProductLockupLayout.Metrics;
  v105 = v138;
  sub_1001B5A60(v146, v138, type metadata accessor for ProductLockupLayout.Metrics);
  swift_allocObject();
  v106 = sub_100750F14();
  v107 = type metadata accessor for ProductLockupLayout(0);
  v108 = (v105 + v107[5]);
  v108[3] = v98;
  v108[4] = &protocol witness table for LayoutViewPlaceholder;
  *v108 = v106;
  sub_10000C824(v180, v105 + v107[6]);
  sub_10000C824(v178, v105 + v107[7]);
  sub_10000C824(v179, v105 + v107[8]);
  sub_100016B4C(&v175, v105 + v107[9], &qword_10092BC30, &qword_1007AD5C0);
  v109 = v105 + v107[10];
  *(v109 + 32) = 0;
  *v109 = 0u;
  *(v109 + 16) = 0u;
  swift_getKeyPath();
  sub_100746914();

  v110 = v130;
  v111 = v135;
  (*(v130 + 104))(v132, enum case for OfferButtonSubtitlePosition.below(_:), v135);
  (*(v110 + 56))(v136, 1, 1, v111);
  sub_1001B59B8(&qword_1009332C0, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
  v112 = v131;
  sub_10074A9C4();
  v113 = v143;
  sub_100747984();
  swift_unknownObjectRelease();
  (*(v133 + 8))(v112, v134);
  swift_allocObject();
  v114 = sub_100750F14();
  v115 = (v105 + v107[11]);
  v115[3] = v98;
  v115[4] = &protocol witness table for LayoutViewPlaceholder;
  *v115 = v114;
  v116 = v173;
  v117 = v174;
  v118 = sub_10000C888(v172, v173);
  v119 = (v105 + v107[12]);
  v119[3] = v116;
  v119[4] = *(v117 + 1);
  v120 = sub_10000D134(v119);
  (*(*(v116 - 8) + 16))(v120, v118, v116);
  sub_100016B4C(&v168, v105 + v107[13], &qword_10092BC30, &qword_1007AD5C0);
  sub_100016B4C(&v165, v105 + v107[14], &qword_10092BC30, &qword_1007AD5C0);
  LOBYTE(v116) = sub_1007460E4();
  v121 = (v105 + v107[17]);
  v121[3] = v98;
  v121[4] = &protocol witness table for LayoutViewPlaceholder;
  *v121 = v154;
  v122 = (v105 + v107[18]);
  v122[3] = v98;
  v122[4] = &protocol witness table for LayoutViewPlaceholder;

  *v122 = v153;
  (*(v103 + 8))(v113, v144);
  sub_10000C8CC(&v165, &qword_10092BC30, &qword_1007AD5C0);
  sub_10000C8CC(&v168, &qword_10092BC30, &qword_1007AD5C0);
  sub_10000C8CC(&v175, &qword_10092BC30, &qword_1007AD5C0);
  sub_10000C620(v178);
  sub_10000C620(v179);
  sub_10000C620(v180);
  sub_1001B5A00(v146, v152);
  *(v105 + v107[15]) = v116 & 1;
  v123 = (v105 + v107[16]);
  v124 = v142;
  *v123 = v155;
  v123[1] = v124;
  return sub_10000C620(v172);
}

double sub_1001B4CE0()
{
  v0 = sub_10000C518(&qword_10092BBD8, &unk_1007C1E70);
  __chkstk_darwin(v0 - 8);
  v2 = &v33 - v1;
  v3 = sub_10074AFC4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v37 = &v33 - v8;
  v9 = sub_10074F704();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007461A4();
  sub_1001B59B8(&unk_10092BBC8, &type metadata accessor for ProductTopLockup, &protocol conformance descriptor for ProductTopLockup);
  sub_1007468B4();
  if (!v38)
  {
    return 0.0;
  }

  v34 = v4;
  v35 = v2;
  v36 = v3;
  swift_getKeyPath();
  sub_100746914();

  v33 = v38;
  swift_getKeyPath();
  sub_100746914();

  sub_10074F5C4();
  v14 = v13;
  v15 = *(v10 + 8);
  v15(v12, v9);
  JUScreenClassGetPortraitWidth();
  v17 = v16;
  swift_getKeyPath();
  sub_100746914();

  sub_10074F5C4();
  v19 = v18;
  v15(v12, v9);
  JUScreenClassGetPortraitWidth();
  v21 = v20;
  if (sub_100746134())
  {
    v22 = v34;
    v23 = &enum case for ProductPageIconDimension.large(_:);
    if (v17 >= v14)
    {
      v23 = &enum case for ProductPageIconDimension.extraSmall(_:);
    }

    v24 = v36;
    (*(v34 + 104))(v6, *v23, v36);
    v25 = v37;
    (*(v22 + 32))(v37, v6, v24);
    v26 = v35;
    v27 = v33;
  }

  else
  {
    v27 = v33;
    v29 = sub_1007537E4();
    v26 = v35;
    v24 = v36;
    v22 = v34;
    v25 = v37;
    if (v29 & 1) != 0 && (sub_100753804())
    {
      v30 = &enum case for ProductPageIconDimension.extraLargeAccessibility(_:);
    }

    else if ((sub_1007537E4() & 1) != 0 && v21 < v19)
    {
      v30 = &enum case for ProductPageIconDimension.extraLarge(_:);
    }

    else if (v17 < v14 || (sub_100753804() & 1) != 0)
    {
      v30 = &enum case for ProductPageIconDimension.medium(_:);
    }

    else
    {
      v30 = &enum case for ProductPageIconDimension.small(_:);
    }

    (*(v22 + 104))(v25, *v30, v24);
  }

  sub_100746194();
  sub_10074AFB4();
  v28 = v31;

  sub_10000C8CC(v26, &qword_10092BBD8, &unk_1007C1E70);
  (*(v22 + 8))(v25, v24);
  return v28;
}

double sub_1001B5154()
{
  v0 = sub_10074F704();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_100746914();

  v4 = sub_1007460C4();
  if (v4)
  {
    v5 = v4;
    if ((sub_100746134() & 1) == 0)
    {
      v24 = v0;
      if (qword_10091FEE8 != -1)
      {
        swift_once();
      }

      sub_10000C888(qword_10097CCC8, qword_10097CCE0);
      swift_getKeyPath();
      sub_100746914();

      v6 = *&v25[0];
      sub_100750574();

      v0 = v24;
    }

    v7 = sub_100746134();
    v8 = sub_10074ED64();
    if (v8)
    {
    }

    sub_10074ED54();
    sub_10000C518(&unk_10092BC50, &unk_1007A6330);
    v9 = sub_1007532D4();

    if (v7)
    {
      _Q3 = xmmword_1007AB740;
      v11 = 17.0;
      v12 = 0.0;
      v13 = 0.0;
    }

    else
    {
      v12 = 22.0;
      if (v8)
      {
        v12 = 15.0;
      }

      if (v9)
      {
        v13 = 15.0;
      }

      else
      {
        v13 = v12;
      }

      v11 = 9.0;
      if (v9)
      {
        v15 = 12.0;
      }

      else
      {
        v15 = 9.0;
      }

      __asm { FMOV            V3.2D, #15.0 }

      *&_Q3 = v15;
    }

    v25[0] = _Q3;
    v25[1] = _Q3;
    v26 = v11;
    v27 = v12;
    v28 = v11;
    v29 = v13;
    v30 = xmmword_1007AB770;
    v31 = xmmword_1007AB780;
    v20 = sub_10007DC04();
    sub_10074F674();
    sub_1000EAEE0(v5, v25, v20);
    v14 = v21;

    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0.0;
  }

  (*(v1 + 8))(v3, v0);
  return v14;
}

double sub_1001B5434(uint64_t a1, double a2)
{
  v4 = sub_10074F704();
  v42 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v35[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v35[-v8];
  v10 = sub_10074E5E4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v35[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_10000C518(&qword_10092BBE0, &qword_1007B0420);
  __chkstk_darwin(v14);
  v17 = &v35[-v16];
  if (!a1)
  {
    return 0.0;
  }

  v37 = v15;
  v39 = v11;
  v40 = v10;
  swift_getKeyPath();

  sub_100746914();

  v18 = v43;
  v19 = sub_1007537D4();

  if (v19)
  {
    v20 = a2;
  }

  else
  {
    v20 = 0.0;
  }

  sub_1001B58AC();
  sub_1007468E4();
  v41 = a1;
  sub_10074E604();
  swift_getKeyPath();
  v38 = v14;
  sub_100752E94();

  v36 = v43 ^ 1;
  swift_getKeyPath();
  sub_100746914();

  sub_10074F5E4();
  v22 = v21;
  v23 = *(v42 + 8);
  v23(v9, v4);
  swift_getKeyPath();
  sub_100746914();

  v24 = v43;
  v25 = sub_1007537D4();

  if (v25)
  {
    swift_getKeyPath();
    sub_100746914();

    sub_10074F5D4();
    v27 = v26;
    v23(v9, v4);
    v22 = v22 - v27;
  }

  swift_getKeyPath();
  sub_100746914();

  v28 = v43;
  swift_getKeyPath();
  sub_100746914();

  sub_10074F5C4();
  v30 = v29;
  v23(v6, v4);
  v31 = v22 - v20;
  if (v22 - v20 < 0.0)
  {
    v31 = 0.0;
  }

  sub_1006439D4(v28, v13, v36 & 1, v30, *&v31, 0);
  v33 = v32;

  (*(v39 + 8))(v13, v40);
  (*(v37 + 8))(v17, v38);
  return v33;
}

unint64_t sub_1001B58AC()
{
  result = qword_10092BBE8;
  if (!qword_10092BBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092BBE8);
  }

  return result;
}

uint64_t sub_1001B5928(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B59B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001B5A00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001B5A60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_1001B5AC8(uint64_t a1, int a2, char a3, uint64_t a4, uint64_t a5)
{
  v64 = a4;
  v59 = a2;
  v7 = sub_10074CD14();
  v61 = *(v7 - 8);
  v62 = v7;
  __chkstk_darwin(v7);
  v60 = v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10074F704();
  v63 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000C518(&unk_10092EE90, &qword_1007B0448);
  __chkstk_darwin(v12 - 8);
  v14 = (v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v17 = v58 - v16;
  sub_100016B4C(a1, v58 - v16, &unk_10092EE90, &qword_1007B0448);
  v18 = sub_100746084();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    goto LABEL_2;
  }

  sub_100016B4C(v17, v14, &unk_10092EE90, &qword_1007B0448);
  v21 = (*(v19 + 88))(v14, v18);
  if (v21 != enum case for ProductTopLockup.PrimaryBanner.askToBuy(_:))
  {
    if (v21 != enum case for ProductTopLockup.PrimaryBanner.banner(_:))
    {
      (*(v19 + 8))(v14, v18);
LABEL_2:
      sub_10000C8CC(v17, &unk_10092EE90, &qword_1007B0448);
      return 0.0;
    }

    v24 = a3;
    (*(v19 + 96))(v14, v18);
    v22 = *v14;
    goto LABEL_8;
  }

  (*(v19 + 96))(v14, v18);
  v22 = *v14;
  sub_100744AC4();
  sub_100752764();
  sub_100752D34();
  v23 = *&v66[0];
  v24 = a3;
  if (sub_100744924())
  {

LABEL_8:

    sub_10000C8CC(v17, &unk_10092EE90, &qword_1007B0448);
    if ((v24 & 1) == 0)
    {
      if (qword_10091FEE0 != -1)
      {
        swift_once();
      }

      sub_10000C888(qword_10097CCA0, qword_10097CCB8);
      swift_getKeyPath();
      sub_100746914();

      v25 = *&v66[0];
      sub_100750574();
    }

    v26 = sub_10074ED64();
    if (v26)
    {
    }

    sub_10074ED54();
    sub_10000C518(&unk_10092BC50, &unk_1007A6330);
    v27 = sub_1007532D4();

    if (v24)
    {
      _Q3 = xmmword_1007AB740;
      v29 = 17.0;
      v30 = 0.0;
      v31 = 0.0;
    }

    else
    {
      v30 = 22.0;
      if (v26)
      {
        v30 = 15.0;
      }

      if (v27)
      {
        v31 = 15.0;
      }

      else
      {
        v31 = v30;
      }

      v29 = 9.0;
      if (v27)
      {
        v50 = 12.0;
      }

      else
      {
        v50 = 9.0;
      }

      __asm { FMOV            V3.2D, #15.0 }

      *&_Q3 = v50;
    }

    v66[0] = _Q3;
    v66[1] = _Q3;
    v67 = v29;
    v68 = v30;
    v69 = v29;
    v70 = v31;
    v71 = xmmword_1007AB770;
    v72 = xmmword_1007AB780;
    v55 = sub_10007DC04();
    swift_getKeyPath();
    sub_100746914();

    sub_10074F674();
    (*(v63 + 8))(v11, v9);
    sub_1000EAEE0(v22, v66, v55);
    v20 = v56;
    swift_unknownObjectRelease();

    return v20;
  }

  v58[2] = v23;
  v58[0] = sub_10074EDA4();
  v58[1] = v32;
  v33 = a3 | v59;
  v34 = sub_10007DC04();
  swift_getKeyPath();
  sub_100746914();

  sub_10074F674();
  v36 = v35;
  v38 = v37;
  (*(v63 + 8))(v11, v9);
  if (qword_100921880 != -1)
  {
    swift_once();
  }

  sub_1001B63AC(&unk_10093E990, v79);
  if (v33)
  {
    sub_10000C8CC(v80, &qword_100931390, &qword_1007ABDE0);
    memset(v80, 0, sizeof(v80));
    v81 = 0;
  }

  v64 = v22;
  sub_100038D38();
  if (qword_100921010 != -1)
  {
    swift_once();
  }

  v39 = sub_100750534();
  sub_10000D0FC(v39, qword_100980D68);
  swift_getObjectType();
  v40 = [v34 traitCollection];
  v41 = sub_100753C14();

  sub_1001B63AC(v79, v66);
  v42 = sub_100750F34();
  swift_allocObject();
  v43 = sub_100750EF4();
  v74 = v42;
  v75 = &protocol witness table for LayoutViewPlaceholder;
  v73 = v43;
  v44 = sub_10074F3F4();
  v65[3] = v44;
  v65[4] = sub_1001B59B8(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v45 = sub_10000D134(v65);
  (*(*(v44 - 8) + 104))(v45, enum case for Feature.measurement_with_labelplaceholder(_:), v44);
  v46 = v41;
  sub_10074FC74();
  sub_10000C620(v65);

  v47 = v60;
  sub_10074CD04();
  sub_10074CCE4();
  (*(v61 + 8))(v47, v62);
  swift_allocObject();
  v48 = sub_100750EF4();
  v77 = v42;
  v78 = &protocol witness table for LayoutViewPlaceholder;
  v76 = v48;
  sub_10049F2B8(v34, v66, v36, v38);
  v20 = v49;

  swift_unknownObjectRelease();

  sub_1001B6408(v66);
  sub_1001B645C(v79);
  sub_10000C8CC(v17, &unk_10092EE90, &qword_1007B0448);
  return v20;
}

uint64_t sub_1001B64B0()
{
  v0 = sub_100747064();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100039C50(v4, qword_10092BC60);
  sub_10000D0FC(v0, qword_10092BC60);
  if (qword_100920548 != -1)
  {
    swift_once();
  }

  v5 = sub_10000D0FC(v0, qword_10097E3A8);
  (*(v1 + 16))(v3, v5, v0);
  sub_10074F4B4();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1001B6614(uint64_t a1)
{
  v2 = sub_100750304();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100746F44();
  v29 = a1;
  sub_100746F84();
  if (qword_100920F08 != -1)
  {
    swift_once();
  }

  v6 = sub_100750534();
  v7 = sub_10000D0FC(v6, qword_100980A68);
  v8 = *(v6 - 8);
  v9 = *(v8 + 16);
  v10 = v8 + 16;
  v26 = v7;
  v9(v5);
  v11 = v3[13];
  v27 = enum case for FontSource.useCase(_:);
  v31 = v11;
  (v11)(v5);
  v30 = sub_100750B04();
  v36 = v30;
  v37 = &protocol witness table for StaticDimension;
  sub_10000D134(v35);
  v33 = v2;
  v34 = &protocol witness table for FontSource;
  v12 = sub_10000D134(v32);
  v28 = v3[2];
  v23[2] = v3 + 2;
  v28(v12, v5, v2);
  sub_100750B14();
  v25 = v3[1];
  v25(v5, v2);
  sub_100746FB4();
  if (qword_100920F28 != -1)
  {
    swift_once();
  }

  v13 = sub_10000D0FC(v6, qword_100980AC8);
  (v9)(v5, v13, v6);
  v23[1] = v10;
  v31(v5, v27, v2);
  v36 = v30;
  v37 = &protocol witness table for StaticDimension;
  sub_10000D134(v35);
  v33 = v2;
  v34 = &protocol witness table for FontSource;
  v14 = sub_10000D134(v32);
  v15 = v28;
  v28(v14, v5, v2);
  sub_100750B14();
  v16 = v25;
  v25(v5, v2);
  v23[0] = v3 + 1;
  sub_100747044();
  v24 = v6;
  (v9)(v5, v26, v6);
  v17 = v27;
  v26 = v3 + 13;
  v31(v5, v27, v2);
  v36 = v30;
  v37 = &protocol witness table for StaticDimension;
  sub_10000D134(v35);
  v33 = v2;
  v34 = &protocol witness table for FontSource;
  v18 = sub_10000D134(v32);
  v15(v18, v5, v2);
  sub_100750B14();
  v16(v5, v2);
  sub_100746FC4();
  if (qword_100920ED0 != -1)
  {
    swift_once();
  }

  v19 = v24;
  v20 = sub_10000D0FC(v24, qword_1009809C0);
  (v9)(v5, v20, v19);
  v31(v5, v17, v2);
  v36 = v30;
  v37 = &protocol witness table for StaticDimension;
  sub_10000D134(v35);
  v33 = v2;
  v34 = &protocol witness table for FontSource;
  v21 = sub_10000D134(v32);
  v28(v21, v5, v2);
  sub_100750B14();
  v16(v5, v2);
  return sub_100747054();
}

char *sub_1001B6B00(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v83 = sub_100747064();
  v74 = *(v83 - 8);
  __chkstk_darwin(v83);
  v75 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v82 = &v72 - v12;
  v13 = sub_100752AC4();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10074AB44();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v21 - 8);
  v23 = &v72 - v22;
  v24 = OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_tapGestureRecognizer;
  *&v5[v24] = [objc_allocWithZone(UITapGestureRecognizer) init];
  swift_weakInit();
  v25 = &v5[OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_impressionsUpdateBlock];
  *v25 = 0;
  v25[1] = 0;
  swift_unknownObjectWeakInit();
  v5[OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_isExpanded] = 0;
  v5[OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_sizeCategory] = 7;
  v26 = &v5[OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_clickActionHandler];
  *v26 = 0;
  v26[1] = 0;
  v27 = [objc_allocWithZone(UIVisualEffectView) init];
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_materialBackground] = v27;
  type metadata accessor for CrossLinkLockupView();
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_lockupView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (qword_1009213B0 != -1)
  {
    swift_once();
  }

  v28 = sub_100750534();
  v29 = sub_10000D0FC(v28, qword_100981848);
  v30 = *(v28 - 8);
  v31 = *(v30 + 16);
  v78 = v30 + 16;
  v77 = v31;
  v31(v23, v29, v28);
  v32 = *(v30 + 56);
  v79 = v30 + 56;
  v80 = v28;
  v76 = v32;
  v32(v23, 0, 1, v28);
  (*(v18 + 104))(v20, enum case for DirectionalTextAlignment.none(_:), v17);
  v33 = objc_allocWithZone(sub_100745C84());
  v81 = v23;
  v34 = sub_100745C74();
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_paragraphLabel] = v34;
  memset(v86, 0, 32);
  memset(v85, 0, sizeof(v85));
  v35 = v34;
  sub_100752A74();
  sub_10000C8CC(v85, &unk_100923520, &qword_1007A5A70);
  sub_10000C8CC(v86, &unk_100923520, &qword_1007A5A70);
  sub_100753C74();

  (*(v14 + 8))(v16, v13);
  v84.receiver = v5;
  v84.super_class = ObjectType;
  v36 = objc_msgSendSuper2(&v84, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v40 = v36;
  [v40 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v40 addSubview:*&v40[OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_materialBackground]];
  v41 = OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_lockupView;
  v42 = *&v40[OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_lockupView];
  v43 = [v40 traitCollection];
  sub_1001F4D8C(v43);

  v44 = qword_100920528;
  v45 = *&v40[v41];
  if (v44 != -1)
  {
    swift_once();
  }

  v46 = v83;
  v47 = sub_10000D0FC(v83, qword_10092BC60);
  v48 = v74;
  v49 = *(v74 + 16);
  v50 = v82;
  v49(v82, v47, v46);
  v51 = *&v45[OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_lockupView];
  v52 = v75;
  v49(v75, v50, v46);
  v53 = OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_metrics;
  swift_beginAccess();
  (*(v48 + 24))(&v51[v53], v52, v46);
  swift_endAccess();
  [v51 setNeedsLayout];
  v54 = *(v48 + 8);
  v54(v52, v46);
  [v45 setNeedsLayout];

  v54(v50, v46);
  [*&v40[v41] setLayoutMargins:{2.0, 0.0, 3.0, 0.0}];
  v55 = qword_100920EE0;
  v56 = *(*(*&v40[v41] + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_titleLabel);
  if (v55 != -1)
  {
    swift_once();
  }

  v57 = v80;
  v58 = sub_10000D0FC(v80, qword_1009809F0);
  v59 = v81;
  v60 = v77;
  v77(v81, v58, v57);
  v61 = v76;
  v76(v59, 0, 1, v57);
  sub_100745BA4();

  v62 = qword_100920F08;
  v63 = *(*(*&v40[v41] + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel);
  if (v62 != -1)
  {
    swift_once();
  }

  v64 = sub_10000D0FC(v57, qword_100980A68);
  v60(v59, v64, v57);
  v61(v59, 0, 1, v57);
  sub_100745BA4();

  [*(*(*&v40[v41] + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_titleLabel) setAccessibilityIgnoresInvertColors:1];
  [*(*(*&v40[v41] + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel) setAccessibilityIgnoresInvertColors:1];
  [*(*(*&v40[v41] + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_ordinalLabel) setAccessibilityIgnoresInvertColors:1];
  [v40 addSubview:*&v40[v41]];
  v65 = OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_paragraphLabel;
  [*&v40[OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_paragraphLabel] setAccessibilityIgnoresInvertColors:1];
  [v40 addSubview:*&v40[v65]];
  v66 = OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_tapGestureRecognizer;
  [*&v40[OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_tapGestureRecognizer] setDelegate:v40];
  v67 = *&v40[v66];
  [v67 addTarget:v40 action:"handleTapWithGestureRecognizer:"];

  [v40 addGestureRecognizer:*&v40[v66]];
  v68 = [*&v40[v65] layer];
  [v68 setOpacity:0.0];

  v69 = [*&v40[v41] layer];
  LODWORD(v70) = 1.0;
  [v69 setOpacity:v70];

  return v40;
}

void sub_1001B74F4(char a1)
{
  if (a1)
  {
    v2 = [*(v1 + OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_paragraphLabel) layer];
    v3 = sub_100753064();
    [v2 removeAnimationForKey:v3];

    v4 = [*(v1 + OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_lockupView) layer];
    v5 = sub_100753064();
    [v4 removeAnimationForKey:v5];
  }

  v6 = [*(v1 + OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_paragraphLabel) layer];
  [v6 setOpacity:0.0];

  v8 = [*(v1 + OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_lockupView) layer];
  LODWORD(v7) = 1.0;
  [v8 setOpacity:v7];
}

id sub_1001B7698()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_tapGestureRecognizer] removeTarget:v0 action:0];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1001B7828(double a1, double a2)
{
  v5 = sub_1001B7960(1, a1, a2);
  v6 = sub_1001B7960(0, a1, a2);
  v7 = [*(v2 + OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_paragraphLabel) layer];
  v8 = sub_100753064();
  [v7 addAnimation:v5 forKey:v8];

  v9 = [*(v2 + OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_lockupView) layer];
  v10 = sub_100753064();
  [v9 addAnimation:v6 forKey:v10];
}

id sub_1001B7960(char a1, double a2, double a3)
{
  v4 = v3;
  v7 = a3 + 0.3;
  v8 = a3 + 0.6;
  sub_100016C60(0, &qword_10092BE20, NSNumber_ptr);
  isa = sub_100753F94(v7 / v8).super.super.isa;
  v10 = sub_100753F94(0.3 / v8).super.super.isa;
  v11 = sub_100753064();
  v12 = [objc_opt_self() animationWithKeyPath:v11];

  v13 = v12;
  [v13 setRemovedOnCompletion:1];
  v14 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
  [v13 setTimingFunction:v14];

  [v13 setBeginTime:CACurrentMediaTime() + a2];
  [v13 setDuration:v8];
  sub_10000C518(&unk_1009231A0, qword_1007A5810);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1007A57A0;
  v16 = 0.0;
  *(v15 + 32) = sub_100753F94(0.0);
  *(v15 + 40) = v10;
  *(v15 + 48) = isa;
  v17 = v10;
  v18 = isa;
  *(v15 + 56) = sub_100753F94(1.0);
  v19 = sub_100753294().super.isa;

  [v13 setKeyTimes:v19];

  if (a1)
  {
    v20 = 1.0;
  }

  else
  {
    v20 = 0.0;
  }

  if ((a1 & 1) == 0)
  {
    v16 = 1.0;
  }

  sub_10000C518(&unk_1009259C0, &unk_1007A9270);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1007A97A0;
  *(v21 + 56) = &type metadata for Double;
  *(v21 + 32) = v16;
  *(v21 + 88) = &type metadata for Double;
  *(v21 + 64) = v20;
  *(v21 + 120) = &type metadata for Double;
  *(v21 + 96) = v20;
  *(v21 + 152) = &type metadata for Double;
  *(v21 + 128) = v16;
  v22 = sub_100753294().super.isa;

  [v13 setValues:v22];

  [v13 setDelegate:v4];
  return v13;
}

void sub_1001B7D44(char *a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_lockupView;
  v4 = *&a1[OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_lockupView];
  [v4 setHidden:0];
  [v4 removeFromSuperview];
  v5 = OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_lockupView;
  v6 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_lockupView];
  [v6 setHidden:1];
  [v6 removeFromSuperview];
  v7 = *&v1[v5];
  *&v1[v5] = v4;
  v8 = v4;

  [v1 addSubview:v8];
  v9 = *&a1[v3];
  *&a1[v3] = v6;
  v10 = v6;

  [a1 addSubview:v10];
  v11 = OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_paragraphLabel;
  v12 = *&a1[OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_paragraphLabel];
  [v12 setHidden:0];
  [v12 removeFromSuperview];
  v13 = OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_paragraphLabel;
  v14 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_paragraphLabel];
  [v14 setHidden:1];
  [v14 removeFromSuperview];
  v15 = *&v1[v13];
  *&v1[v13] = v12;
  v16 = v12;

  [v1 addSubview:v16];
  v17 = *&a1[v11];
  *&a1[v11] = v14;
  v18 = v14;

  [a1 addSubview:v18];
  [a1 setNeedsLayout];
}

void sub_1001B8104()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v61 = sub_1007479B4();
  v3 = *(v61 - 8);
  __chkstk_darwin(v61);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v60 = &v59 - v7;
  v8 = sub_100747064();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = __chkstk_darwin(v12).n128_u64[0];
  v15 = &v59 - v14;
  v64.receiver = v1;
  v64.super_class = ObjectType;
  objc_msgSendSuper2(&v64, "layoutSubviews", v13);
  v16 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_materialBackground];
  [v1 bounds];
  [v16 setFrame:?];
  sub_1007477B4();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v62 = OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_lockupView;
  v25 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_lockupView];
  sub_1001F5A40(v15);
  [v25 layoutMargins];
  v27 = v26;
  v29 = v28;
  v30 = [v25 traitCollection];
  v31 = *(v9 + 16);
  v63 = v8;
  v31(v11, v15, v8);
  v32 = sub_100746FD4();
  if ((v34 & 1) == 0 && ((v32 | v33) & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    if (sub_100753804())
    {
      if (qword_100921988 != -1)
      {
        swift_once();
      }

      v35 = qword_10093FF40;
    }

    else
    {
      if (qword_100921990 != -1)
      {
        swift_once();
      }

      v35 = qword_10093FF58;
    }

    v36 = v61;
    v37 = sub_10000D0FC(v61, v35);
    v38 = v5;
    (*(v3 + 16))(v5, v37, v36);
    v39 = v60;
    (*(v3 + 32))(v60, v38, v36);
    sub_100747964();
    sub_100747994();
    sub_100746FE4();
    (*(v3 + 8))(v39, v36);
  }

  sub_100746F14();
  v41 = v40;

  v42 = *(v9 + 8);
  v43 = v63;
  v42(v11, v63);

  v44 = v29 + v27 + v41;
  v42(v15, v43);
  v45 = *&v1[v62];
  v65.origin.x = v18;
  v65.origin.y = v20;
  v65.size.width = v22;
  v65.size.height = v24;
  MinX = CGRectGetMinX(v65);
  v66.origin.x = v18;
  v66.origin.y = v20;
  v66.size.width = v22;
  v66.size.height = v24;
  v47 = CGRectGetMidY(v66) - v44 * 0.5;
  v67.origin.x = v18;
  v67.origin.y = v20;
  v67.size.width = v22;
  v67.size.height = v24;
  [v45 setFrame:{MinX, v47, CGRectGetWidth(v67), v44}];

  v48 = OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_paragraphLabel;
  [*&v1[OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_paragraphLabel] sizeThatFits:{v22, v24}];
  v50 = v49;
  v51 = *&v1[v48];
  v68.origin.x = v18;
  v68.origin.y = v20;
  v68.size.width = v22;
  v68.size.height = v24;
  v52 = CGRectGetMinX(v68);
  v69.origin.x = v18;
  v69.origin.y = v20;
  v69.size.width = v22;
  v69.size.height = v24;
  MinY = CGRectGetMinY(v69);
  v70.origin.x = v18;
  v70.origin.y = v20;
  v70.size.width = v22;
  v70.size.height = v24;
  v54 = MinY + (CGRectGetHeight(v70) - v50) * 0.5;
  v71.origin.x = v18;
  v71.origin.y = v20;
  v71.size.width = v22;
  v71.size.height = v24;
  [v51 setFrame:{v52, v54, CGRectGetWidth(v71), v50}];

  v55 = &v1[OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_impressionsUpdateBlock];
  swift_beginAccess();
  v56 = *v55;
  if (*v55)
  {
    v57 = *(v55 + 1);

    v56(v58);
    sub_1000164A8(v56, v57);
  }
}

void sub_1001B89A8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unsigned __int8 a5, uint64_t a6)
{
  v7 = v6;
  v200 = a6;
  v208 = a2;
  v11 = a5;
  v12 = sub_10074F314();
  __chkstk_darwin(v12 - 8);
  v199 = &v183 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = sub_100747064();
  v197 = *(v198 - 8);
  __chkstk_darwin(v198);
  v196 = &v183 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = sub_10074F284();
  v194 = *(v195 - 8);
  __chkstk_darwin(v195);
  v193 = &v183 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = sub_10074F964();
  v191 = *(v192 - 8);
  __chkstk_darwin(v192);
  v190 = &v183 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v17 - 8);
  v189 = &v183 - v18;
  v212 = sub_10074ED34();
  v207 = *(v212 - 1);
  __chkstk_darwin(v212);
  v188 = &v183 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v211 = &v183 - v21;
  v22 = sub_10000C518(&unk_100925520, &unk_1007A8120);
  __chkstk_darwin(v22 - 8);
  v206 = &v183 - v23;
  v24 = sub_10000C518(&unk_100925990, qword_1007BB900);
  __chkstk_darwin(v24 - 8);
  v205 = &v183 - v25;
  v26 = sub_10000C518(&unk_1009259A0, &unk_1007B0610);
  __chkstk_darwin(v26 - 8);
  v204 = &v183 - v27;
  v28 = sub_10000C518(&unk_100925530, &unk_1007A8130);
  __chkstk_darwin(v28 - 8);
  v203 = &v183 - v29;
  v30 = sub_10000C518(&unk_1009259B0, &unk_1007B0620);
  __chkstk_darwin(v30 - 8);
  v202 = &v183 - v31;
  v32 = sub_10074D734();
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v201 = &v183 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10000C518(&unk_100925540, &qword_1007A8140);
  __chkstk_darwin(v35 - 8);
  v210 = &v183 - v36;
  v209 = sub_10074FB54();
  v215 = *(v209 - 8);
  __chkstk_darwin(v209);
  v187 = &v183 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v40 = &v183 - v39;
  v41 = v7[OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_sizeCategory];
  v7[OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_sizeCategory] = a5;
  if (v11 == 7)
  {
    if (v41 == 7)
    {
      goto LABEL_6;
    }

LABEL_5:
    [v7 setNeedsLayout];
    goto LABEL_6;
  }

  if (v41 == 7)
  {
    goto LABEL_5;
  }

  switch(v11)
  {
    case 6:
      if (v41 != 6)
      {
        goto LABEL_5;
      }

      break;
    case 5:
      if (v41 != 5)
      {
        goto LABEL_5;
      }

      break;
    case 4:
      if (v41 != 4)
      {
        goto LABEL_5;
      }

      break;
    default:
      if ((v41 - 7) > 0xFFFFFFFC || v41 != v11)
      {
        goto LABEL_5;
      }

      break;
  }

LABEL_6:
  v218 = a4;
  v42 = sub_10074FB24();
  [v7 setBackgroundColor:v42];

  v43 = [v7 traitCollection];
  if (v11 != 4)
  {
    sub_10074F694();
    sub_10074F694();
  }

  [v43 layoutDirection];
  sub_1007539B4();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;

  [v7 setLayoutMargins:{v45, v47, v49, v51}];
  v213 = a1;
  v52 = sub_10074D434();
  v214 = v7;
  v216 = v52;
  v217 = OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_lockupView;
  v53 = *&v7[OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_lockupView];
  v54 = sub_10074FAF4();
  v55 = v54;
  v56 = *&v53[OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_lockupView];
  v57 = *(v56 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_titleTextColor);
  *(v56 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_titleTextColor) = v54;
  if (v57)
  {
    sub_100016C60(0, &qword_100923500, UIColor_ptr);
    v58 = v55;
    v57 = v57;
    v59 = sub_100753FC4();

    if (v59)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v60 = v54;
  }

  sub_1005A3560();
  v58 = v55;
LABEL_13:

  v61 = v214;
  v62 = v217;
  v63 = *(*(*&v214[v217] + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_ordinalLabel);
  v64 = v218;
  v65 = sub_10074FAF4();
  [v63 setTextColor:v65];

  v66 = *(*(*(v61 + v62) + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel);
  v67 = sub_10074FB34();
  [v66 setTextColor:v67];

  [*(*(*(v61 + v62) + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerLabel) _setTextColorFollowsTintColor:1];
  v68 = *(*(v61 + v62) + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_crossLinkTitleLabel);
  v69 = sub_10074FB34();
  [v68 setTextColor:v69];

  v70 = *(*(v61 + v62) + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_crossLinkSubtitleLabel);
  v71 = sub_10074FAF4();
  [v70 setTextColor:v71];

  v72 = v215;
  v73 = *(v215 + 16);
  v74 = v209;
  v186 = v215 + 16;
  v185 = v73;
  v73(v40, v64, v209);
  v76 = *(v72 + 88);
  v75 = v72 + 88;
  v184 = v76;
  v77 = v76(v40, v74);
  v183 = __PAIR64__(enum case for TodayCard.Style.automatic(_:), enum case for TodayCard.Style.white(_:));
  if (v77 == enum case for TodayCard.Style.automatic(_:) || v77 == enum case for TodayCard.Style.white(_:))
  {
    v78 = v217;
    [*(v61 + v217) setOverrideUserInterfaceStyle:{0, v183}];
    [*(*(*(v61 + v78) + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerButton) setTintColor:0];
  }

  else
  {
    if (v77 == enum case for TodayCard.Style.dark(_:))
    {
      v78 = v217;
      [*(v61 + v217) setOverrideUserInterfaceStyle:{2, v183}];
    }

    else
    {
      v78 = v217;
      if (v77 != enum case for TodayCard.Style.light(_:))
      {
        goto LABEL_81;
      }

      [*(v61 + v217) setOverrideUserInterfaceStyle:{1, v183}];
    }

    v79 = *(*(*(v61 + v78) + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerButton);
    v80 = sub_10074FAF4();
    [v79 setTintColor:v80];
  }

  v215 = v75;
  v81 = *(v61 + v78);
  v82 = *(v33 + 104);
  v82(v201, enum case for OfferButtonPresenterViewAlignment.right(_:), v32);
  v83 = v202;
  v82(v202, enum case for OfferButtonPresenterViewAlignment.left(_:), v32);
  (*(v33 + 56))(v83, 0, 1, v32);
  sub_1001BB1A8(&unk_100925550, 255, &type metadata accessor for OfferButtonPresenterViewAlignment, &protocol conformance descriptor for OfferButtonPresenterViewAlignment);
  v84 = v81;
  v85 = v210;
  sub_10074A9C4();
  v86 = sub_10000C518(&unk_10092EEA0, qword_1007A8150);
  (*(*(v86 - 8) + 56))(v85, 0, 1, v86);
  v87 = *&v84[OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_artworkView];
  v88 = sub_10074EF24();
  if (v88)
  {
  }

  [v87 setHidden:v88 == 0];
  v89 = *&v84[OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_lockupView];
  v90 = sub_100742E24();
  v91 = v203;
  (*(*(v90 - 8) + 56))(v203, 1, 1, v90);
  v92 = sub_100745E94();
  v93 = v204;
  (*(*(v92 - 8) + 56))(v204, 1, 1, v92);
  v94 = sub_10000C518(&unk_100925560, &unk_1007A8E30);
  v95 = v205;
  (*(*(v94 - 8) + 56))(v205, 1, 1, v94);
  v96 = sub_10074F8B4();
  v97 = v206;
  (*(*(v96 - 8) + 56))(v206, 1, 1, v96);
  sub_100656038(v216, v89, v85, v208, 1, 0, v91, v93, v97, v95);
  sub_10000C8CC(v97, &unk_100925520, &unk_1007A8120);
  v89[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
  sub_1001CE71C();
  [v89 setNeedsLayout];
  sub_10000C8CC(v95, &unk_100925990, qword_1007BB900);
  sub_10000C8CC(v93, &unk_1009259A0, &unk_1007B0610);
  sub_10000C8CC(v91, &unk_100925530, &unk_1007A8130);
  v98 = v211;
  sub_10074EF44();
  v99 = sub_10074EE24();
  v101 = v100;
  v206 = sub_10074EE84();
  v103 = v102;
  v104 = sub_10074EE44();
  if (v101 && v103)
  {
    v105 = v104;
    v106 = v98;
    v107 = v207;
    v108 = v188;
    (*(v207 + 16))(v188, v106, v212);
    sub_10000C518(&unk_100925780, qword_1007AC630);
    sub_100752764();
    sub_100752D34();
    v110 = aBlock;
    v109 = v220;
    type metadata accessor for CrossLinkPresenter(0);
    swift_allocObject();
    v111 = v84;
    v112 = v99;
    v113 = v111;
    v182 = v110;
    v61 = v214;
    v114 = CrossLinkPresenter.init(adamId:title:subtitle:includeBetaApps:view:appStateController:)(v108, v112, v101, v206, v103, v105 & 1, v84, &off_10086C378, v182, v109);
    (*(v107 + 8))(v211, v212);
    sub_10000C8CC(v210, &unk_100925540, &qword_1007A8140);
    v115 = OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_crossLinkPresenter;
    swift_beginAccess();
    *&v113[v115] = v114;

    v116 = v218;

    v117 = &unk_10092D000;
    v118 = &selRef_initWithTitle_style_target_action_;
  }

  else
  {

    v119 = OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_crossLinkPresenter;
    swift_beginAccess();
    *&v84[v119] = 0;

    sub_1001F6890(0, 0);

    (*(v207 + 8))(v98, v212);
    sub_10000C8CC(v85, &unk_100925540, &qword_1007A8140);
    v117 = &unk_10092D000;
    v118 = &selRef_initWithTitle_style_target_action_;
    v116 = v218;
  }

  v120 = v217;
  v121 = *(*(v61 + v217) + v117[305]);
  v122 = *(v121 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_headingLabel);
  if (v122)
  {
    v123 = v122;
    v124 = sub_10074FB34();
    [v123 v118[107]];

    v121 = *(*&v120[v61] + v117[305]);
  }

  v125 = &OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_tertiaryTitleLabel;
  v126 = *(v121 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_tertiaryTitleLabel);
  if (!v126)
  {
    goto LABEL_39;
  }

  v127 = v126;
  v128 = sub_10074FB34();
  [v127 v118[107]];

  v129 = *(*(*&v120[v61] + v117[305]) + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_tertiaryTitleLabel);
  if (!v129)
  {
    goto LABEL_39;
  }

  v130 = qword_100920F28;
  isEscapingClosureAtFileLocation = v129;
  if (v130 != -1)
  {
    goto LABEL_80;
  }

  while (1)
  {
    v132 = sub_100750534();
    v133 = sub_10000D0FC(v132, qword_100980AC8);
    v134 = *(v132 - 8);
    v135 = v189;
    (*(v134 + 16))(v189, v133, v132);
    (*(v134 + 56))(v135, 0, 1, v132);
    sub_100745BA4();

    v136 = *(*(*&v120[v61] + v117[305]) + *v125);
    v118 = &selRef_initWithTitle_style_target_action_;
    if (v136)
    {
      [v136 setAccessibilityIgnoresInvertColors:1];
    }

LABEL_39:
    v137 = OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_paragraphLabel;
    v138 = *(v61 + OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_paragraphLabel);
    v139 = sub_10074FAF4();
    [v138 v118[107]];

    if (!sub_10074D444())
    {
      break;
    }

    v211 = *(v61 + v137);
    v140 = sub_10074F914();
    v141 = [v61 traitCollection];
    v61 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v140];
    v212 = [v140 length];
    v117 = swift_allocObject();
    v117[2] = 0;
    v117[3] = v141;
    v117[4] = v61;
    *(v117 + 40) = 1;
    v142 = swift_allocObject();
    *(v142 + 16) = sub_100047814;
    *(v142 + 24) = v117;
    v223 = sub_1000B18A8;
    v224 = v142;
    aBlock = _NSConcreteStackBlock;
    v220 = 1107296256;
    v221 = sub_100047044;
    v222 = &unk_10086B6C8;
    v116 = _Block_copy(&aBlock);
    v125 = v141;
    v120 = v61;

    [v140 enumerateAttributesInRange:0 options:v212 usingBlock:{0x100000, v116}];

    _Block_release(v116);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      v143 = v211;
      [v211 setAttributedText:v120];

      v61 = v214;
      v144 = *&v214[v137];
      v145 = v190;
      sub_10074F974();
      v146 = v191;
      v147 = v192;
      v148 = (*(v191 + 88))(v145, v192);
      if (v148 == enum case for Paragraph.Alignment.left(_:))
      {
        v149 = 0;
        v120 = v217;
        v116 = v218;
      }

      else
      {
        v120 = v217;
        v116 = v218;
        if (v148 == enum case for Paragraph.Alignment.center(_:))
        {
          v149 = 1;
        }

        else if (v148 == enum case for Paragraph.Alignment.right(_:))
        {
          v149 = 2;
        }

        else if (v148 == enum case for Paragraph.Alignment.justified(_:))
        {
          v149 = 3;
        }

        else if (v148 == enum case for Paragraph.Alignment.localized(_:))
        {
          v149 = 4;
        }

        else
        {
          (*(v146 + 8))(v145, v147);
          v149 = 0;
        }
      }

      [v144 setTextAlignment:v149];

      [v61 setNeedsLayout];
      if ((*(v61 + OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_isExpanded) & 1) == 0)
      {
        sub_1001B7828(3.0, 5.0);
      }

      break;
    }

    __break(1u);
LABEL_80:
    swift_once();
  }

  sub_10074D434();
  v150 = sub_10074EF24();

  if (v150)
  {
    v151 = v193;
    sub_10074F294();
    v152 = sub_10074F254();
    (*(v194 + 8))(v151, v195);
    v153 = *(*&v120[v61] + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_lockupView);
    v154 = OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_metrics;
    swift_beginAccess();
    v155 = v197;
    v156 = v153 + v154;
    v157 = v196;
    v158 = v198;
    (*(v197 + 16))(v196, v156, v198);
    sub_100746F34();
    (*(v155 + 8))(v157, v158);
    sub_10074F374();
    v159 = *(*&v120[v61] + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_artworkView);
    sub_10074F324();
    sub_100743364();
    [v159 setContentMode:sub_10074F184()];
    sub_100747FB4();
    sub_1007433A4();
    if (!sub_10074F1E4())
    {
      sub_100016C60(0, &qword_100923500, UIColor_ptr);
      sub_100753E34();
    }

    sub_100743224();

    [*(*&v120[v61] + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_artworkView) setContentMode:v152];
    v160 = *(*&v120[v61] + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_artworkView);
    sub_1007433C4();
    sub_1001BB1A8(&qword_100925570, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    v161 = v160;
    sub_100744204();

    v162 = sub_10074F1E4();
    if (v162 && (v163 = v162, [v162 _luminance], v165 = v164, v163, v165 >= 0.54))
    {
      v166 = objc_opt_self();
      v167 = v165 < 0.89;
    }

    else
    {
      v166 = objc_opt_self();
      v167 = 2;
    }

    v168 = [v166 effectWithBrightness:v167];
    v169 = sub_10074D424();
    [v168 setBackgroundColorForReducedTransparency:v169];

    v170 = *(v61 + OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_materialBackground);
    sub_10000C518(&unk_1009231A0, qword_1007A5810);
    v171 = swift_allocObject();
    *(v171 + 16) = xmmword_1007A5CF0;
    *(v171 + 32) = v168;
    sub_100016C60(0, &qword_10092BE10, UIVisualEffect_ptr);
    isa = sub_100753294().super.isa;

    [v170 setBackgroundEffects:isa];

    goto LABEL_78;
  }

  v173 = v187;
  v174 = v209;
  v185(v187, v116, v209);
  v175 = v184(v173, v174);
  if (v175 == HIDWORD(v183) || v175 == v183)
  {
    v170 = *(v61 + OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_materialBackground);
    [v170 setHidden:1];
LABEL_78:
    [v170 setHidden:sub_10074D414() & 1];

    return;
  }

  if (v175 == enum case for TodayCard.Style.dark(_:))
  {
    v176 = [objc_opt_self() effectWithBrightness:2];
LABEL_77:
    v177 = v176;
    v178 = sub_10074D424();
    [v177 setBackgroundColorForReducedTransparency:v178];

    v170 = *(v61 + OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_materialBackground);
    sub_10000C518(&unk_1009231A0, qword_1007A5810);
    v179 = swift_allocObject();
    *(v179 + 16) = xmmword_1007A5CF0;
    *(v179 + 32) = v177;
    sub_100016C60(0, &qword_10092BE10, UIVisualEffect_ptr);
    v180 = v177;
    v181 = sub_100753294().super.isa;

    [v170 setBackgroundEffects:v181];

    goto LABEL_78;
  }

  if (v175 == enum case for TodayCard.Style.light(_:))
  {
    v176 = [objc_opt_self() effectWithBrightness:0];
    goto LABEL_77;
  }

LABEL_81:
  aBlock = 0;
  v220 = 0xE000000000000000;
  sub_100754534(44);

  aBlock = 0xD00000000000002ALL;
  v220 = 0x800000010076F550;
  v225._countAndFlagsBits = sub_10074FB44();
  sub_1007531B4(v225);

  sub_100754644();
  __break(1u);
}

void sub_1001BA620()
{
  v1 = v0;
  v2 = sub_10074F314();
  v3 = __chkstk_darwin(v2);
  v5 = OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_lockupView;
  v6 = *(*(v0 + OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_lockupView) + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_artworkView);
  (*(v7 + 104))(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Artwork.Style.unspecified(_:), v3);
  v8 = v6;
  sub_100743364();

  v9 = *(*(v0 + v5) + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_artworkView);
  v14.value.super.isa = 0;
  v14.is_nil = 0;
  sub_100743384(v14, v10);

  v11 = *(*(v1 + v5) + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_artworkView);
  sub_1007433C4();
  sub_1001BB1A8(&qword_100925570, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v12 = v11;
  sub_100744274();
}

void sub_1001BA7BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000C518(&unk_100925380, qword_1007A8E40);
  __chkstk_darwin(v4 - 8);
  v6 = &v24[-v5 - 8];
  v7 = sub_100752914();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_10000C824(a3, v24);
      sub_10000C518(&qword_1009242A0, &qword_1007A6400);
      sub_10074FBB4();
      if ((swift_dynamicCast() & 1) != 0 && (v13 = sub_10074FBA4(), , v13))
      {
        sub_10074D454();
        if (swift_dynamicCastClass())
        {
          sub_10074D434();
          sub_10074EE94();

          if ((*(v8 + 48))(v6, 1, v7) == 1)
          {

            sub_10000C8CC(v6, &unk_100925380, qword_1007A8E40);
          }

          else
          {
            (*(v8 + 32))(v10, v6, v7);
            [*&v12[OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_lockupView] frame];
            v15 = v14;
            v17 = v16;
            v19 = v18;
            v21 = v20;
            v22 = [v12 superview];
            [v12 convertRect:v22 toView:{v15, v17, v19, v21}];

            sub_100749544();

            (*(v8 + 8))(v10, v7);
          }
        }

        else
        {
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_1001BAB28(char *a1, char a2)
{
  if (a2)
  {
    sub_1001B7D44(a1);
  }

  else
  {
    swift_unknownObjectWeakAssign();
  }
}

double sub_1001BAB60(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_clickActionHandler);
  v4 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_clickActionHandler);
  v5 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_clickActionHandler + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_1000164A8(v4, v5);
}

double sub_1001BABAC()
{
  v1 = sub_100747064();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(v0 + OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_lockupView) + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_lockupView);
  v6 = OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_metrics;
  swift_beginAccess();
  (*(v2 + 16))(v4, v5 + v6, v1);
  sub_100746F34();
  v8 = v7;
  (*(v2 + 8))(v4, v1);
  return v8;
}

double sub_1001BAD30(uint64_t a1)
{
  swift_beginAccess();
  swift_weakAssign();

  return result;
}

void (*sub_1001BAD90(uint64_t *a1))(void **a1, char a2, __n128 a3)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_impressionsCalculator;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_100091CAC;
}

uint64_t sub_1001BAE28()
{
  v1 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10001B5AC(*v1, v1[1]);
  return v2;
}

double sub_1001BAE84(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1000164A8(v6, v7);
}

void (*sub_1001BAF44(uint64_t a1, uint64_t a2))()
{
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  swift_weakInit();
  sub_10000C824(a1, v7);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  sub_100012160(v7, v5 + 32);
  return sub_1001BB318;
}

void sub_1001BB010(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_lockupView;
  v5 = *(*(v2 + OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_lockupView) + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_artworkView);
  sub_100743204();

  v6 = *(*(v3 + v4) + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_artworkView);
  sub_1007433C4();
  sub_1001BB1A8(&qword_100925570, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v7 = v6;
  sub_100744274();
}

uint64_t sub_1001BB104(uint64_t a1, uint64_t a2)
{
  result = sub_1001BB1A8(&qword_10092BD50, a2, type metadata accessor for TodayCardMarketingLockupOverlayView, &unk_1007B0524);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001BB1A8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1001BB1F0()
{

  return _swift_deallocObject(v0, 41, 7);
}

double sub_1001BB248(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1001BB260()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001BB298()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001BB2D0()
{

  sub_10000C620((v0 + 32));

  return _swift_deallocObject(v0, 72, 7);
}

void sub_1001BB324()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_tapGestureRecognizer;
  *(v0 + v1) = [objc_allocWithZone(UITapGestureRecognizer) init];
  swift_weakInit();
  v2 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_impressionsUpdateBlock);
  *v2 = 0;
  v2[1] = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_isExpanded) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_sizeCategory) = 7;
  v3 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_clickActionHandler);
  *v3 = 0;
  v3[1] = 0;
  sub_100754644();
  __break(1u);
}

BOOL sub_1001BB40C(void *a1)
{
  v2 = v1;
  [a1 locationInView:v1];
  v4 = v3;
  v6 = v5;
  v7 = [v1 hitTest:0 withEvent:?];
  [v2 bounds];
  v13.x = v4;
  v13.y = v6;
  if (CGRectContainsPoint(v14, v13))
  {
    if (!v7)
    {
      return *&v2[OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_clickActionHandler] != 0;
    }

    sub_100016C60(0, &qword_100922300, UIView_ptr);
    v8 = v7;
    v9 = v2;
    v10 = sub_100753FC4();

    if (v10)
    {

      return 0;
    }

    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();

    return !v12 && *&v2[OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_clickActionHandler] != 0;
  }

  else
  {

    return 0;
  }
}

char *sub_1001BB544(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  swift_getObjectType();
  v10 = sub_100750534();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10074AB44();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  v19 = __chkstk_darwin(v18 - 8);
  v21 = &v36 - v20;
  v22 = &v5[OBJC_IVAR____TtC22SubscribePageExtension17SearchHeadingView_metrics];
  *(v22 + 3) = &type metadata for CGFloat;
  *(v22 + 4) = &protocol witness table for CGFloat;
  *v22 = 0;
  *(v22 + 8) = &type metadata for CGFloat;
  *(v22 + 9) = &protocol witness table for CGFloat;
  *(v22 + 5) = 0;
  v23 = &v5[OBJC_IVAR____TtC22SubscribePageExtension17SearchHeadingView_detailButtonHandler];
  *v23 = 0;
  *(v23 + 1) = 0;
  *v21 = UIFontTextStyleBody;
  *(v21 + 2) = 0;
  (*(v11 + 104))(v21, enum case for FontUseCase.preferredFont(_:), v10, v19);
  (*(v11 + 56))(v21, 0, 1, v10);
  (*(v15 + 104))(v17, enum case for DirectionalTextAlignment.none(_:), v14);
  objc_allocWithZone(sub_100745C84());
  v24 = UIFontTextStyleBody;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension17SearchHeadingView_headingLabel] = sub_100745C74();
  type metadata accessor for HeaderButton(0);
  if (qword_100920EA0 != -1)
  {
    swift_once();
  }

  v25 = sub_10000D0FC(v10, qword_100980930);
  (*(v11 + 16))(v13, v25, v10);
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension17SearchHeadingView_detailButton] = sub_1007466B4();
  v26 = type metadata accessor for SearchHeadingView();
  v36.receiver = v5;
  v36.super_class = v26;
  v27 = objc_msgSendSuper2(&v36, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v31 = v27;
  [v31 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v31 addSubview:*&v31[OBJC_IVAR____TtC22SubscribePageExtension17SearchHeadingView_headingLabel]];
  v32 = OBJC_IVAR____TtC22SubscribePageExtension17SearchHeadingView_detailButton;
  v33 = *&v31[OBJC_IVAR____TtC22SubscribePageExtension17SearchHeadingView_detailButton];
  sub_100747764();

  [*&v31[v32] addTarget:v31 action:"didPressWithDetailButton:" forControlEvents:64];
  [v31 addSubview:*&v31[v32]];
  sub_10000C518(&unk_1009249D0, qword_1007A7B10);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1007A5A00;
  *(v34 + 32) = sub_100751554();
  *(v34 + 40) = &protocol witness table for UITraitLegibilityWeight;
  sub_100753D44();

  swift_unknownObjectRelease();

  return v31;
}

uint64_t sub_1001BBA8C(uint64_t a1)
{
  v3 = sub_100750534();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C518(&qword_10092BE70, qword_1007BC060);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = v26 - v9;
  v11 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v11 - 8);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v26 - v15;
  __chkstk_darwin(v17);
  v19 = v26 - v18;
  v27 = v1;
  v26[1] = *&v1[OBJC_IVAR____TtC22SubscribePageExtension17SearchHeadingView_headingLabel];
  sub_100745B94();
  v20 = *(v8 + 56);
  sub_10006A0D4(v19, v10);
  v28 = a1;
  sub_10006A0D4(a1, &v10[v20]);
  v21 = *(v4 + 48);
  if (v21(v10, 1, v3) != 1)
  {
    sub_10006A0D4(v10, v16);
    if (v21(&v10[v20], 1, v3) != 1)
    {
      (*(v4 + 32))(v6, &v10[v20], v3);
      sub_1001BDBD8(&qword_10092BE78, &type metadata accessor for FontUseCase, &protocol conformance descriptor for FontUseCase);
      v24 = sub_100753014();
      v25 = *(v4 + 8);
      v25(v6, v3);
      sub_10000C8CC(v19, &unk_100928A40, qword_1007A6630);
      v25(v16, v3);
      sub_10000C8CC(v10, &unk_100928A40, qword_1007A6630);
      v22 = v28;
      if (v24)
      {
        return sub_10000C8CC(v22, &unk_100928A40, qword_1007A6630);
      }

      goto LABEL_7;
    }

    sub_10000C8CC(v19, &unk_100928A40, qword_1007A6630);
    (*(v4 + 8))(v16, v3);
LABEL_6:
    sub_10000C8CC(v10, &qword_10092BE70, qword_1007BC060);
    v22 = v28;
LABEL_7:
    sub_10006A0D4(v22, v13);
    sub_100745BA4();
    [v27 setNeedsLayout];
    return sub_10000C8CC(v22, &unk_100928A40, qword_1007A6630);
  }

  sub_10000C8CC(v19, &unk_100928A40, qword_1007A6630);
  if (v21(&v10[v20], 1, v3) != 1)
  {
    goto LABEL_6;
  }

  sub_10000C8CC(v10, &unk_100928A40, qword_1007A6630);
  v22 = v28;
  return sub_10000C8CC(v22, &unk_100928A40, qword_1007A6630);
}

uint64_t sub_1001BBE78()
{
  v1 = sub_100750354();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SearchHeadingView();
  v16.receiver = v0;
  v16.super_class = v5;
  objc_msgSendSuper2(&v16, "layoutSubviews");
  sub_1001BD96C(&v0[OBJC_IVAR____TtC22SubscribePageExtension17SearchHeadingView_metrics], v11);
  v6 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension17SearchHeadingView_detailButton];
  v12 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension17SearchHeadingView_headingLabel];
  v13 = &protocol witness table for UIView;
  v14 = v6;
  v15 = &protocol witness table for UIView;
  v7 = v12;
  v8 = v6;
  sub_1007477B4();
  sub_1001BC7AC(v7, &protocol witness table for UIView, v8, &protocol witness table for UIView, v11, v0, v10);
  sub_10000C888(v10, v10[3]);
  sub_100751124();
  (*(v2 + 8))(v4, v1);
  sub_10000C620(v10);
  return sub_1001BDB68(v11);
}

uint64_t SearchHeadingLayout.placeChildren(relativeTo:in:)(void *a1, double a2, double a3, double a4, double a5)
{
  sub_1001BC7AC(*(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), v5, a1, v7);
  sub_10000C888(v7, v7[3]);
  sub_100751124();
  return sub_10000C620(v7);
}

double sub_1001BC148(void *a1, double a2, double a3)
{
  sub_1001BD96C(v3 + OBJC_IVAR____TtC22SubscribePageExtension17SearchHeadingView_metrics, v10);
  v5 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension17SearchHeadingView_detailButton);
  v11 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension17SearchHeadingView_headingLabel);
  v12 = &protocol witness table for UIView;
  v13 = v5;
  v14 = &protocol witness table for UIView;
  sub_1001BC7AC(v11, &protocol witness table for UIView, v5, &protocol witness table for UIView, v10, a1, v9);
  sub_10000C888(v9, v9[3]);
  sub_100750404();
  v7 = v6;
  sub_10000C620(v9);
  sub_1001BDB68(v10);
  return v7;
}

double SearchHeadingLayout.measurements(fitting:in:)(void *a1, double a2, double a3)
{
  sub_1001BC7AC(*(v3 + 80), *(v3 + 88), *(v3 + 96), *(v3 + 104), v3, a1, v7);
  sub_10000C888(v7, v7[3]);
  sub_100750404();
  v5 = v4;
  sub_10000C620(v7);
  return v5;
}

double sub_1001BC398(void *a1, uint64_t a2, NSString a3, double a4, double a5)
{
  v8 = [a1 traitCollection];
  if (qword_1009202A0 != -1)
  {
    swift_once();
  }

  v9 = qword_100928AB8;
  if (a3)
  {
    a3 = sub_100753064();
  }

  [v9 setTitle:a3 forState:0];

  [v9 setImage:0 forState:0];
  v10 = [v9 titleLabel];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
    v13 = [v12 font];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v8];
    }

    else
    {
      v15 = 0;
    }

    [v12 setFont:v15];
  }

  [v9 sizeThatFits:{a4, a5}];
  v17 = v16;

  [v9 setTitle:0 forState:0];
  [v9 setImage:0 forState:0];

  return v17 + 0.0;
}

double sub_1001BC56C(void *a1, uint64_t a2, void (*a3)(void, void), uint64_t a4, void (*a5)(void, void), double a6, double a7)
{
  v10 = *(a4 + 8);
  sub_1001BD96C(a2, v15);
  v16 = a3;
  v17 = v10;
  v18 = a5;
  v19 = &protocol witness table for LayoutViewPlaceholder;
  swift_unknownObjectRetain();

  sub_1001BC7AC(a3, v10, a5, &protocol witness table for LayoutViewPlaceholder, v15, a1, v14);
  sub_10000C888(v14, v14[3]);
  sub_100750404();
  v12 = v11;
  sub_10000C620(v14);
  sub_1001BDB68(v15);
  return v12;
}

id sub_1001BC6FC(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SearchHeadingView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1001BC7AC@<X0>(void (*a1)(void, void)@<X0>, void (*a2)(void, void)@<X1>, void (*a3)(void, void)@<X2>, void *a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t *a7@<X8>)
{
  v127 = a5;
  v125 = a4;
  v126 = a3;
  v119 = a2;
  v124 = a1;
  v128 = a7;
  v8 = sub_10074B454();
  v137 = *(v8 - 8);
  __chkstk_darwin(v8);
  v121 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_10074B464();
  v136 = *(v114 - 8);
  __chkstk_darwin(v114);
  v122 = (&v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v135 = sub_10074B434();
  v134 = *(v135 - 8);
  __chkstk_darwin(v135);
  v117 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_10074B4A4();
  v132 = *(v116 - 8);
  __chkstk_darwin(v116);
  v110 = (&v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v115 = sub_10074B494();
  v130 = *(v115 - 8);
  __chkstk_darwin(v115);
  v107 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_10074B484();
  v133 = *(v118 - 8);
  __chkstk_darwin(v118);
  v113 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_10074B4C4();
  v120 = *(v123 - 8);
  __chkstk_darwin(v123);
  v111 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v131 = &v95 - v17;
  v18 = sub_100750CB4();
  v109 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_100750CC4();
  v129 = *(v108 - 1);
  __chkstk_darwin(v108);
  v22 = &v95 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100750C64();
  v24 = *(v23 - 8);
  *&v25 = __chkstk_darwin(v23).n128_u64[0];
  v27 = &v95 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = [a6 traitCollection];
  v29 = sub_100753804();

  if (v29)
  {
    sub_10000C518(&unk_100923060, qword_1007A5CA0);
    v30 = *(sub_100750CF4() - 8);
    v135 = *(v30 + 72);
    v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1007A6580;
    v136 = v32;
    v137 = v32 + v31;
    v33 = v124;
    ObjectType = swift_getObjectType();
    v146 = v119;
    v144 = v33;
    *(&v142 + 1) = &type metadata for CGFloat;
    v143 = &protocol witness table for CGFloat;
    *&v141 = 0;
    v140 = 0;
    memset(v139, 0, sizeof(v139));
    v112 = v24;
    v34 = *(v24 + 13);
    v123 = (v24 + 104);
    v134 = v34;
    v106 = v23;
    (v34)(v27, enum case for VerticalFlowLayout.VerticalPlacement.top(_:), v23);
    LODWORD(v133) = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
    v35 = v129;
    v132 = *(v129 + 104);
    v36 = v108;
    (v132)(v22);
    v138 = _swiftEmptyArrayStorage;
    v131 = sub_1001BDBD8(&qword_100923050, &type metadata accessor for VerticalFlowLayout.ExclusionCondition, &protocol conformance descriptor for VerticalFlowLayout.ExclusionCondition);
    swift_unknownObjectRetain();
    v130 = sub_10000C518(&unk_100944F40, &unk_1007A5C90);
    v124 = sub_100016BFC();
    sub_1007543A4();
    sub_100750CE4();
    v122 = *(v109 + 8);
    v122(v20, v18);
    v121 = *(v35 + 8);
    v129 = v35 + 8;
    (v121)(v22, v36);
    v37 = *(v112 + 1);
    v112 += 8;
    v120 = v37;
    v38 = v18;
    v39 = v106;
    (v37)(v27, v106);
    sub_10000C8CC(v139, &qword_100931390, &qword_1007ABDE0);
    sub_10000C620(&v141);
    sub_10000C620(&v144);
    v40 = v126;
    ObjectType = swift_getObjectType();
    v146 = v125;
    v144 = v40;
    v143 = 0;
    v141 = 0u;
    v142 = 0u;
    (v134)(v27, enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:), v39);
    (v132)(v22, v133, v36);
    *&v139[0] = _swiftEmptyArrayStorage;
    swift_unknownObjectRetain();
    sub_1007543A4();
    sub_100750CE4();
    v122(v20, v38);
    (v121)(v22, v36);
    (v120)(v27, v39);
    sub_10000C8CC(&v141, &qword_100931390, &qword_1007ABDE0);
    sub_10000C620(&v144);
    v41 = sub_100750D04();
    v42 = v128;
    v128[3] = v41;
    v42[4] = &protocol witness table for VerticalFlowLayout;
    v42[5] = &protocol witness table for VerticalFlowLayout;
    sub_10000D134(v42);
    return sub_100750CD4();
  }

  else
  {
    ObjectType = &type metadata for CGFloat;
    v146 = &protocol witness table for CGFloat;
    v144 = 0;
    v44 = v130;
    v101 = *(v130 + 104);
    v129 = v130 + 104;
    v45 = v107;
    v46 = v115;
    v101(v107, enum case for HorizontalAlignmentLayout.ChildSourceOffset.minY(_:), v115);
    v47 = swift_allocObject();
    *(v47 + 16) = 0;
    v48 = v110;
    *v110 = v47;
    v49 = v8;
    v50 = v132;
    v51 = *(v132 + 104);
    v109 = v132 + 104;
    v112 = v51;
    v52 = v116;
    (v51)(v48, enum case for HorizontalAlignmentLayout.ContainerDestinationOffset.absolute(_:), v116);
    sub_10074B474();
    v53 = *(v50 + 8);
    v132 = v50 + 8;
    v108 = v53;
    (v53)(v48, v52);
    v54 = *(v44 + 8);
    v130 = v44 + 8;
    v106 = v54;
    v54(v45, v46);
    *(&v142 + 1) = &type metadata for Double;
    v143 = &protocol witness table for Double;
    *&v141 = 0;
    v55 = v134;
    v56 = v134[13];
    v104 = (v134 + 13);
    v105 = v56;
    v57 = v117;
    v56(v117, enum case for HorizontalAlignmentLayout.HorizontalGravity.leading(_:), v135);
    v58 = v136;
    v59 = v137;
    v60 = *(v137 + 104);
    v102 = v137 + 104;
    v103 = v60;
    v61 = v121;
    v96 = v49;
    v60(v121, enum case for HorizontalAlignmentLayout.SizingPolicy.Priority.default(_:), v49);
    v62 = v122;
    sub_10074B444();
    v63 = *(v59 + 8);
    v137 = v59 + 8;
    v100 = v63;
    v63(v61, v49);
    v64 = v113;
    sub_10074B4B4();
    v65 = *(v58 + 8);
    v136 = v58 + 8;
    v124 = v65;
    v65(v62, v114);
    v66 = v55[1];
    v134 = v55 + 1;
    v119 = v66;
    v66(v57, v135);
    v67 = *(v133 + 8);
    v133 += 8;
    v99 = v67;
    v68 = v64;
    v67(v64, v118);
    sub_10000C620(&v141);
    sub_10000C620(&v144);
    v69 = enum case for HorizontalAlignmentLayout.ChildSourceOffset.firstBaseline(_:);
    v70 = v115;
    v71 = v101;
    v101(v45, enum case for HorizontalAlignmentLayout.ChildSourceOffset.firstBaseline(_:), v115);
    v72 = sub_10000C518(&qword_10092BE80, &qword_1007B0780);
    v73 = swift_allocBox();
    v75 = v74;
    v76 = *(v72 + 48);
    v97 = v120[2];
    v98 = (v120 + 2);
    v97(v74, v131, v123);
    v71(v75 + v76, v69, v70);
    *v48 = v73;
    v77 = v116;
    (v112)(v48, enum case for HorizontalAlignmentLayout.ContainerDestinationOffset.relative(_:), v116);
    sub_10074B474();
    (v108)(v48, v77);
    v106(v45, v70);
    v78 = v117;
    v79 = v135;
    v105(v117, enum case for HorizontalAlignmentLayout.HorizontalGravity.trailing(_:), v135);
    v80 = v121;
    v81 = v96;
    v103(v121, enum case for HorizontalAlignmentLayout.SizingPolicy.Priority.high(_:), v96);
    v82 = v122;
    sub_10074B444();
    v100(v80, v81);
    v146 = &protocol witness table for Double;
    ObjectType = &type metadata for Double;
    v144 = 0;
    v83 = v111;
    sub_10074B4B4();
    v124(v82, v114);
    v119(v78, v79);
    v99(v68, v118);
    sub_10000C620(&v144);
    sub_10000C518(&qword_10092BE88, qword_1007B0788);
    v84 = v120;
    v85 = v120[9];
    v86 = (*(v120 + 80) + 32) & ~*(v120 + 80);
    v87 = swift_allocObject();
    *(v87 + 16) = xmmword_1007A6580;
    v88 = v87 + v86;
    v89 = v131;
    v90 = v123;
    v91 = v97;
    v97(v88, v131, v123);
    v91(v88 + v85, v83, v90);
    v92 = sub_10074B4E4();
    v93 = v128;
    v128[3] = v92;
    v93[4] = sub_1001BDBD8(&qword_10092BE90, &type metadata accessor for HorizontalAlignmentLayout, &protocol conformance descriptor for HorizontalAlignmentLayout);
    v93[5] = sub_1001BDBD8(&qword_10092BE98, &type metadata accessor for HorizontalAlignmentLayout, &protocol conformance descriptor for HorizontalAlignmentLayout);
    sub_10000D134(v93);
    sub_10074B4D4();
    v94 = v84[1];
    v94(v83, v90);
    return (v94)(v89, v90);
  }
}

__n128 sub_1001BD9C8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_1001BD9EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001BDA34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1001BDAA0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1001BDABC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001BDB04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001BDBD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001BDC20()
{
  sub_10000C4F0(v0 + 16);

  return swift_deallocClassInstance();
}

void sub_1001BDCB0(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = sub_1007417F4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100746994();
  v11 = sub_100741784();
  (*(v8 + 8))(v10, v7);
  if (!v11)
  {
    swift_getObjectType();
    v12 = swift_conformsToProtocol2();
    if (v12)
    {
      if (a1)
      {
        v13 = v12;
        ObjectType = swift_getObjectType();
        v15 = *(v13 + 8);
        v16 = a1;
        v17 = v15(ObjectType, v13);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v19 = Strong;
          v20 = [Strong view];

          if (!v20)
          {
            __break(1u);
            goto LABEL_19;
          }

          v21 = [v20 safeAreaLayoutGuide];

          [v21 layoutFrame];
          v23 = v22;
          v25 = v24;
          v27 = v26;
          v29 = v28;

          v50.origin.x = v23;
          v50.origin.y = v25;
          v50.size.width = v27;
          v50.size.height = v29;
          MinY = CGRectGetMinY(v50);
        }

        else
        {
          MinY = 0.0;
        }

        v31 = v17 - MinY;
        v32 = swift_unknownObjectWeakLoadStrong();
        if (v32)
        {
          v33 = v32;
          v34 = *(v4 + 24);
          v35 = swift_getObjectType();
          v36 = (*(v34 + 8))(v35, v34);

          if (v36)
          {
            sub_100430C6C(a3, v31);
          }
        }

        v37 = swift_unknownObjectWeakLoadStrong();
        if (!v37)
        {
          v38 = v16;
          goto LABEL_16;
        }

        v38 = v37;
        v39 = [v37 collectionView];
        if (v39)
        {
          v40 = v39;
          [v39 _pocketInsets];
          v42 = v41;
          v44 = v43;
          v46 = v45;

          v47 = [v38 collectionView];
          if (v47)
          {
            v48 = v47;
            [v47 _setPocketInsets:{v31, v42, v44, v46}];

LABEL_16:
            return;
          }

LABEL_20:
          __break(1u);
          return;
        }

LABEL_19:
        __break(1u);
        goto LABEL_20;
      }
    }
  }
}

uint64_t sub_1001BDFA4()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10074A704();
  sub_100039C50(v4, qword_10097E350);
  v30 = sub_10000D0FC(v4, qword_10097E350);
  v40[8] = &type metadata for Double;
  v40[9] = &protocol witness table for Double;
  v40[5] = 0x4030000000000000;
  if (qword_100921200 != -1)
  {
    swift_once();
  }

  v5 = sub_100750534();
  v6 = sub_10000D0FC(v5, qword_100981338);
  v7 = *(v5 - 8);
  v8 = *(v7 + 16);
  v9 = v7 + 16;
  v8(v3, v6, v5);
  v10 = enum case for FontSource.useCase(_:);
  v11 = v1 + 13;
  v29 = v1[13];
  v29(v3, enum case for FontSource.useCase(_:), v0);
  v28 = sub_100750B04();
  v40[3] = v28;
  v40[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v40);
  v38 = v0;
  v39 = &protocol witness table for FontSource;
  v12 = sub_10000D134(v37);
  v27 = v1[2];
  v27(v12, v3, v0);
  sub_100750B14();
  v13 = v1[1];
  v25 = v1 + 1;
  v26 = v13;
  v13(v3, v0);
  if (qword_100921208 != -1)
  {
    swift_once();
  }

  v14 = sub_10000D0FC(v5, qword_100981350);
  v22[0] = v8;
  v22[1] = v9;
  v8(v3, v14, v5);
  v15 = v29;
  v29(v3, v10, v0);
  v24 = v11;
  v16 = v28;
  v38 = v28;
  v39 = &protocol witness table for StaticDimension;
  sub_10000D134(v37);
  v23 = v10;
  v35 = v0;
  v36 = &protocol witness table for FontSource;
  v17 = sub_10000D134(v34);
  v18 = v27;
  v27(v17, v3, v0);
  sub_100750B14();
  v19 = v26;
  v26(v3, v0);
  (v22[0])(v3, v14, v5);
  v15(v3, v23, v0);
  v35 = v16;
  v36 = &protocol witness table for StaticDimension;
  sub_10000D134(v34);
  v32 = v0;
  v33 = &protocol witness table for FontSource;
  v20 = sub_10000D134(v31);
  v18(v20, v3, v0);
  sub_100750B14();
  v19(v3, v0);
  v33 = &protocol witness table for Double;
  v32 = &type metadata for Double;
  v31[0] = 0;
  return sub_10074A6E4();
}

uint64_t sub_1001BE42C()
{
  v0 = sub_10000C518(&qword_10092AC90, &qword_1007A8830);
  sub_100039C50(v0, qword_10092BF60);
  sub_10000D0FC(v0, qword_10092BF60);
  sub_10000C518(&unk_100923AE0, &qword_1007A8370);
  type metadata accessor for NSTextAlignment(0);
  return sub_100743474();
}

void sub_1001BE4C8()
{
  v0 = [objc_opt_self() systemFontOfSize:30.0];
  v1 = [objc_opt_self() configurationWithFont:v0];

  qword_10092BF78 = v1;
}

char *sub_1001BE540(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_100750534();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v49 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10074AB44();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v17 - 8);
  v19 = &v49 - v18;
  v20 = OBJC_IVAR____TtC22SubscribePageExtension21ProductCapabilityCell_itemLayoutContext;
  v21 = sub_1007469A4();
  (*(*(v21 - 8) + 56))(&v5[v20], 1, 1, v21);
  v22 = OBJC_IVAR____TtC22SubscribePageExtension21ProductCapabilityCell_iconImageView;
  *&v5[v22] = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v23 = OBJC_IVAR____TtC22SubscribePageExtension21ProductCapabilityCell_iconPositioningView;
  *&v5[v23] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v24 = OBJC_IVAR____TtC22SubscribePageExtension21ProductCapabilityCell_titleLabel;
  if (qword_100921200 != -1)
  {
    swift_once();
  }

  v25 = sub_10000D0FC(v10, qword_100981338);
  v26 = *(v11 + 16);
  v26(v19, v25, v10);
  (*(v11 + 56))(v19, 0, 1, v10);
  (*(v14 + 104))(v16, enum case for DirectionalTextAlignment.none(_:), v13);
  v27 = objc_allocWithZone(sub_100745C84());
  *&v5[v24] = sub_100745C74();
  v28 = OBJC_IVAR____TtC22SubscribePageExtension21ProductCapabilityCell_captionLabel;
  if (qword_100921208 != -1)
  {
    swift_once();
  }

  v29 = sub_10000D0FC(v10, qword_100981350);
  v30 = v49;
  v26(v49, v29, v10);
  v31 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel(0));
  *&v5[v28] = sub_10004DA8C(v30, 0, 0, 1);
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension21ProductCapabilityCell_icon] = 0;
  v52.receiver = v5;
  v52.super_class = ObjectType;
  v32 = objc_msgSendSuper2(&v52, "initWithFrame:", a1, a2, a3, a4);
  v33 = [v32 contentView];
  [v33 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v34 = OBJC_IVAR____TtC22SubscribePageExtension21ProductCapabilityCell_iconImageView;
  [*&v32[OBJC_IVAR____TtC22SubscribePageExtension21ProductCapabilityCell_iconImageView] setContentMode:1];
  [*&v32[v34] setAccessibilityIgnoresInvertColors:1];
  v35 = qword_100920540;
  v36 = *&v32[v34];
  if (v35 != -1)
  {
    swift_once();
  }

  [v36 setPreferredSymbolConfiguration:qword_10092BF78];

  v37 = OBJC_IVAR____TtC22SubscribePageExtension21ProductCapabilityCell_captionLabel;
  v38 = *&v32[OBJC_IVAR____TtC22SubscribePageExtension21ProductCapabilityCell_captionLabel];
  v39 = objc_opt_self();
  v40 = v38;
  v41 = [v39 systemGrayColor];
  [v40 setTextColor:v41];

  v42 = qword_100920538;
  v43 = *&v32[v37];
  if (v42 != -1)
  {
    swift_once();
  }

  v44 = sub_10000C518(&qword_10092AC90, &qword_1007A8830);
  sub_10000D0FC(v44, qword_10092BF60);
  v51 = v32;
  sub_100743464();

  sub_100753F54();
  v45 = [v32 contentView];
  [v45 addSubview:*&v32[v34]];

  v46 = [v32 contentView];
  [v46 addSubview:*&v32[OBJC_IVAR____TtC22SubscribePageExtension21ProductCapabilityCell_titleLabel]];

  v47 = [v32 contentView];
  [v47 addSubview:*&v32[v37]];

  return v32;
}

uint64_t sub_1001BEBE4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v37 = sub_100750354();
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_10074A724();
  v40 = *(v41 - 8);
  __chkstk_darwin(v41);
  v39 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10074A704();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = __chkstk_darwin(v10).n128_u64[0];
  v13 = &v34 - v12;
  v51.receiver = v1;
  v51.super_class = ObjectType;
  objc_msgSendSuper2(&v51, "layoutSubviews", v11);
  v35 = OBJC_IVAR____TtC22SubscribePageExtension21ProductCapabilityCell_icon;
  v14 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension21ProductCapabilityCell_icon];
  v15 = qword_100920530;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = sub_10000D0FC(v6, qword_10097E350);
  v38 = v7;
  v17 = *(v7 + 16);
  v17(v13, v16, v6);
  if (v14)
  {
    v18 = qword_100920540;

    if (v18 != -1)
    {
      swift_once();
    }

    v19 = sub_100743AC4();
    if (v19)
    {
      v20 = v19;
      [v19 size];
    }
  }

  sub_10074A6F4();

  v17(v9, v13, v6);
  v21 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension21ProductCapabilityCell_iconPositioningView];
  v49 = sub_100016C60(0, &qword_100922300, UIView_ptr);
  v50 = &protocol witness table for UIView;
  v48 = v21;
  v22 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension21ProductCapabilityCell_titleLabel];
  v46 = sub_100016C60(0, &qword_1009236D0, UILabel_ptr);
  v47 = &protocol witness table for UILabel;
  v45 = v22;
  v23 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension21ProductCapabilityCell_captionLabel];
  v43 = type metadata accessor for DynamicTypeLinkedLabel(0);
  v44 = &protocol witness table for UIView;
  v42 = v23;
  v24 = v21;
  v25 = v22;
  v26 = v23;
  v27 = v39;
  sub_10074A714();
  v28 = [v1 contentView];
  sub_1007477B4();

  sub_10074A6D4();
  (*(v36 + 8))(v4, v37);
  if (!*&v1[v35])
  {
    goto LABEL_16;
  }

  v29 = qword_100920540;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = sub_100743AC4();
  if (!v30)
  {

LABEL_16:
    v31 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension21ProductCapabilityCell_iconImageView];
    [v31 frame];
    [v31 setFrame:?];
    goto LABEL_17;
  }

  v31 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension21ProductCapabilityCell_iconImageView];
  v32 = v30;
  [v30 size];
  [v31 frame];
  [v31 setFrame:?];

LABEL_17:
  [v24 center];
  [v31 setCenter:?];
  (*(v40 + 8))(v27, v41);
  return (*(v38 + 8))(v13, v6);
}

double sub_1001BF220()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, "prepareForReuse");
  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension21ProductCapabilityCell_titleLabel] setText:0];
  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension21ProductCapabilityCell_captionLabel] setText:0];
  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension21ProductCapabilityCell_iconImageView] setImage:0];
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension21ProductCapabilityCell_icon] = 0;

  return result;
}

id sub_1001BF30C(void *a1)
{
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v4 != result))
  {
    if (qword_100920538 != -1)
    {
      swift_once();
    }

    v6 = sub_10000C518(&qword_10092AC90, &qword_1007A8830);
    sub_10000D0FC(v6, qword_10092BF60);
    v7 = v1;
    sub_100743464();

    return sub_100753F54();
  }

  return result;
}

uint64_t type metadata accessor for ProductCapabilityCell(uint64_t a1)
{
  result = qword_10092BFA8;
  if (!qword_10092BFA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001BF5AC(uint64_t a1)
{
  sub_100016898(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1001BF65C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100016C60(0, &qword_10092BFC0, UIImageView_ptr);
  sub_1000F04A0();
  return sub_100744274();
}

double sub_1001BF6CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, __n128 a6, double a7)
{
  v54 = a4;
  v52 = a3;
  v50 = a1;
  v62 = sub_10074A724();
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v59 = &v46[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v60 = sub_10074A704();
  v58 = *(v60 - 8);
  __chkstk_darwin(v60);
  v56 = &v46[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v57 = &v46[-v11];
  v12 = sub_10074CD14();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v51 = &v46[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v17 = &v46[-v16];
  v53 = sub_100750F34();
  v55 = sub_100750F24();
  v18 = sub_100016C60(0, &qword_100923AB0, UIFont_ptr);
  v19 = qword_100921200;

  if (v19 != -1)
  {
    swift_once();
  }

  v48 = sub_100750534();
  sub_10000D0FC(v48, qword_100981338);
  v63 = a5;
  v20 = [a5 traitCollection];
  v49 = v18;
  sub_100753C14();

  v21 = sub_10074F3F4();
  v72[3] = v21;
  v22 = sub_1001BFEF8(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v72[4] = v22;
  v23 = sub_10000D134(v72);
  v24 = *(*(v21 - 8) + 104);
  v47 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v24(v23);
  sub_10074FC74();
  sub_10000C620(v72);
  sub_10074CD04();
  sub_10074CCE4();
  v25 = *(v13 + 8);
  v25(v17, v12);
  if (v52)
  {
    v50 = sub_100743E84();
  }

  else
  {
    v50 = 0;
  }

  v52 = v12;
  if (qword_100921208 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v48, qword_100981350);
  v26 = [v63 traitCollection];
  sub_100753C14();

  v70 = v21;
  v71 = v22;
  v27 = sub_10000D134(&v69);
  (v24)(v27, v47, v21);
  sub_10074FC74();
  sub_10000C620(&v69);
  v28 = v51;
  sub_10074CD04();
  sub_10074CCE4();
  v25(v28, v52);
  if (qword_100920530 != -1)
  {
    swift_once();
  }

  v29 = v60;
  v30 = sub_10000D0FC(v60, qword_10097E350);
  v31 = v58;
  v32 = *(v58 + 16);
  v33 = v57;
  v32(v57, v30, v29);
  if (v54)
  {
    v34 = qword_100920540;

    if (v34 != -1)
    {
      swift_once();
    }

    v35 = sub_100743AC4();
    if (v35)
    {
      v36 = v35;
      [v35 size];
    }
  }

  sub_10074A6F4();
  v32(v56, v33, v29);
  v67 = v53;
  v68 = &protocol witness table for LayoutViewPlaceholder;
  v66 = v55;
  sub_10000C824(v72, v65);
  v37 = v70;
  v38 = v71;
  v39 = sub_10000C888(&v69, v70);
  v64[3] = v37;
  v64[4] = *(v38 + 8);
  v40 = sub_10000D134(v64);
  (*(*(v37 - 8) + 16))(v40, v39, v37);

  v41 = v59;
  sub_10074A714();
  sub_1001BFEF8(&qword_10092BFD0, &type metadata accessor for ProductCapabilityLayout, &protocol conformance descriptor for ProductCapabilityLayout);
  v42 = v62;
  sub_100750404();
  v44 = v43;

  (*(v61 + 8))(v41, v42);
  (*(v31 + 8))(v33, v29);
  sub_10000C620(v72);
  sub_10000C620(&v69);
  return v44;
}

uint64_t sub_1001BFEF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1001BFF40()
{
  v1 = v0;
  v2 = sub_100750534();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v25 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10074AB44();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v9 - 8);
  v11 = &v24 - v10;
  v12 = OBJC_IVAR____TtC22SubscribePageExtension21ProductCapabilityCell_itemLayoutContext;
  v13 = sub_1007469A4();
  (*(*(v13 - 8) + 56))(v1 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtC22SubscribePageExtension21ProductCapabilityCell_iconImageView;
  *(v1 + v14) = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v15 = OBJC_IVAR____TtC22SubscribePageExtension21ProductCapabilityCell_iconPositioningView;
  *(v1 + v15) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v16 = OBJC_IVAR____TtC22SubscribePageExtension21ProductCapabilityCell_titleLabel;
  if (qword_100921200 != -1)
  {
    swift_once();
  }

  v17 = sub_10000D0FC(v2, qword_100981338);
  v18 = *(v3 + 16);
  v18(v11, v17, v2);
  (*(v3 + 56))(v11, 0, 1, v2);
  (*(v6 + 104))(v8, enum case for DirectionalTextAlignment.none(_:), v5);
  v19 = objc_allocWithZone(sub_100745C84());
  *(v1 + v16) = sub_100745C74();
  v20 = OBJC_IVAR____TtC22SubscribePageExtension21ProductCapabilityCell_captionLabel;
  if (qword_100921208 != -1)
  {
    swift_once();
  }

  v21 = sub_10000D0FC(v2, qword_100981350);
  v22 = v25;
  v18(v25, v21, v2);
  v23 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel(0));
  *(v1 + v20) = sub_10004DA8C(v22, 0, 0, 1);
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension21ProductCapabilityCell_icon) = 0;
  sub_100754644();
  __break(1u);
}

char *sub_1001C0320(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_10000C518(&qword_100932560, qword_1007A7BB0);
  __chkstk_darwin(v10 - 8);
  v12 = &v59 - v11;
  v13 = sub_10074AB44();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v17 - 8);
  v19 = &v59 - v18;
  v20 = OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_itemLayoutContext;
  v21 = sub_1007469A4();
  (*(*(v21 - 8) + 56))(&v5[v20], 1, 1, v21);
  v22 = OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_titleLabel;
  if (qword_100921488 != -1)
  {
    swift_once();
  }

  v23 = sub_100750534();
  v24 = sub_10000D0FC(v23, qword_100981AD0);
  v25 = *(v23 - 8);
  v63 = *(v25 + 16);
  v64 = v24;
  v63(v19);
  v62 = *(v25 + 56);
  v62(v19, 0, 1, v23);
  (*(v14 + 104))(v16, enum case for DirectionalTextAlignment.none(_:), v13);
  v26 = objc_allocWithZone(sub_100745C84());
  *&v5[v22] = sub_100745C74();
  v27 = OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_shadowView;
  sub_100743034();
  *&v5[v27] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v28 = OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_roundedCornerView;
  sub_100746ED4();
  *&v5[v28] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v29 = &v5[OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_artworkSize];
  *v29 = 0;
  *(v29 + 1) = 0;
  v29[16] = 1;
  v5[OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_hasArtwork] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_clickAction] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_objectGraph] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_gestureRecognizer] = 0;
  v30 = &v5[OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_tapAction];
  *v30 = 0;
  v30[1] = 0;
  v31 = OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_artworkView;
  sub_1007433C4();
  *&v5[v31] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v65.receiver = v5;
  v65.super_class = ObjectType;
  v32 = objc_msgSendSuper2(&v65, "initWithFrame:", a1, a2, a3, a4);
  ObjectType = OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_roundedCornerView;
  v33 = *&v32[OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_roundedCornerView];
  sub_100016C60(0, &qword_100923500, UIColor_ptr);
  v34 = v32;
  v35 = v33;
  v36 = sub_100753E94();
  [v35 setBackgroundColor:v36];

  v60 = OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_shadowView;
  v37 = qword_100920478;
  v38 = *&v34[OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_shadowView];
  if (v37 != -1)
  {
    swift_once();
  }

  v39 = sub_10074F0C4();
  v40 = sub_10000D0FC(v39, qword_10097E128);
  v41 = *(v39 - 8);
  (*(v41 + 16))(v12, v40, v39);
  (*(v41 + 56))(v12, 0, 1, v39);
  sub_100743014();

  v42 = OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_titleLabel;
  [*&v34[OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_titleLabel] setNumberOfLines:1];
  v43 = *&v34[v42];
  v44 = objc_opt_self();
  v45 = v43;
  v46 = [v44 labelColor];
  [v45 setTextColor:v46];

  v47 = *&v34[v42];
  (v63)(v19, v64, v23);
  v62(v19, 0, 1, v23);
  v48 = v47;
  sub_100745BA4();

  v49 = OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_artworkView;
  v50 = *&v34[OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_artworkView];
  v51 = [v44 clearColor];
  sub_100743264();

  v52 = [v34 contentView];
  [v52 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v53 = [v34 contentView];
  [v53 addSubview:*&v34[v60]];

  v54 = [v34 contentView];
  [v54 addSubview:*(ObjectType + v32)];

  v55 = [v34 contentView];
  [v55 addSubview:*&v34[v49]];

  v56 = [v34 contentView];
  [v56 addSubview:*&v34[v42]];

  sub_10000C518(&unk_1009249D0, qword_1007A7B10);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1007A5620;
  *(v57 + 32) = sub_100751544();
  *(v57 + 40) = &protocol witness table for UITraitLayoutDirection;
  *(v57 + 48) = sub_1007519E4();
  *(v57 + 56) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(v57 + 64) = sub_100751624();
  *(v57 + 72) = &protocol witness table for UITraitUserInterfaceStyle;
  sub_100753D24();

  swift_unknownObjectRelease();

  return v34;
}

double sub_1001C0AFC(__n128 a1)
{
  v2 = v1;
  v3 = sub_10074A7B4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = __chkstk_darwin(v7).n128_u64[0];
  v10 = &v23 - v9;
  v11 = [v1 traitCollection];
  v12 = &v2[OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_artworkSize];
  v13 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_artworkSize];
  v14 = *(v12 + 1);
  v15 = v12[16];
  if (sub_100753804())
  {
    sub_1001C1510(v11, v6);
  }

  else if (v15)
  {
    sub_1001C1848();
  }

  else
  {
    sub_1001C18E8(v13, v14, 0, v16, v17, v18, v19);
  }

  (*(v4 + 32))(v10, v6, v3);
  sub_10074A794();
  v21 = v20;
  (*(v4 + 8))(v10, v3);
  return v21;
}

uint64_t sub_1001C0C9C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100743584();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v16[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.receiver = v1;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, "layoutSubviews", v5);
  sub_1001C0F00(v16);
  sub_10000C888(v16, v16[3]);
  [v1 bounds];
  v8 = [v1 traitCollection];
  sub_100751244();

  sub_10000C620(v16);
  v9 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_shadowView];
  [v1 bounds];
  [v9 setFrame:?];
  v10 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_roundedCornerView];
  [v1 bounds];
  [v10 setFrame:?];
  [v1 bounds];
  CGRectGetHeight(v18);
  v11 = enum case for CornerStyle.continuous(_:);
  v12 = *(v4 + 104);
  v12(v7, enum case for CornerStyle.continuous(_:), v3);
  sub_100746E34();
  v13 = *(v4 + 8);
  v13(v7, v3);
  v12(v7, v11, v3);
  sub_100743024();
  return (v13)(v7, v3);
}

uint64_t sub_1001C0F00@<X0>(uint64_t *a1@<X8>)
{
  v3 = v2;
  v5 = sub_10074A7B4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = __chkstk_darwin(v9).n128_u64[0];
  v12 = v30 - v11;
  v13 = [v2 traitCollection];
  v14 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_artworkSize];
  v15 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_artworkSize + 8];
  v16 = v3[OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_artworkSize + 16];
  if (sub_100753804())
  {
    sub_1001C1510(v13, v8);
  }

  else if (v16)
  {
    sub_1001C1848();
  }

  else
  {
    sub_1001C18E8(v14, v15, 0, v17, v18, v19, v20);
  }

  (*(v6 + 32))(v12, v8, v5);
  if (v3[OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_hasArtwork])
  {
    v21 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_artworkView];
    v22 = sub_1007433C4();
    v23 = sub_1001C3884(&qword_10092E370, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    v24 = v21;
  }

  else
  {
    v22 = 0;
    v23 = 0;
    v21 = 0;
    v30[6] = 0;
    v30[7] = 0;
  }

  v30[8] = v22;
  v30[9] = v23;
  v30[5] = v21;
  v25 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_titleLabel];
  v30[3] = sub_100745C84();
  v30[4] = &protocol witness table for UILabel;
  v30[0] = v25;
  v26 = sub_10074A7D4();
  swift_allocObject();
  v27 = v25;
  v28 = sub_10074A7C4();
  a1[3] = v26;
  result = sub_1001C3884(&qword_10092C070, &type metadata accessor for RibbonBarItemCellLayout, &protocol conformance descriptor for RibbonBarItemCellLayout);
  a1[4] = result;
  *a1 = v28;
  return result;
}