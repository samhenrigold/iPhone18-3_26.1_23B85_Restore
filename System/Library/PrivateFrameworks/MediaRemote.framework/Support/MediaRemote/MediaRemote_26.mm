uint64_t sub_10036A254(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_1001BC5A8(&qword_100527C80, &qword_100459F80);
  v8 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - v9;
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_1001BC5A8(&qword_100527EC8, &unk_10045A1B0);
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
    sub_10000462C(&qword_100527EB0, &qword_100527C80, &qword_100459F80, &protocol conformance descriptor for NearbyInvitation<A>.PendingMember);
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

uint64_t sub_10036A580(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_1001BC5A8(&qword_100527CB0, &qword_100459F88);
  v8 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - v9;
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_1001BC5A8(&qword_100527E78, &qword_10045A168);
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
    sub_10000462C(&qword_100527E60, &qword_100527CB0, &qword_100459F88, &protocol conformance descriptor for NearbyInvitationAdvertiser<A>.PendingMember);
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

void sub_10036A8AC(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = sub_1001BC5A8(a1, a2);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - v10;
  sub_1001BC5A8(a3, a4);
  v12 = *v4;
  v13 = static _SetStorage.copy(original:)();
  v14 = v13;
  if (*(v12 + 16))
  {
    v28 = v7;
    v15 = (v13 + 56);
    v16 = ((1 << *(v14 + 32)) + 63) >> 6;
    if (v14 != v12 || v15 >= v12 + 56 + 8 * v16)
    {
      memmove(v15, (v12 + 56), 8 * v16);
    }

    v18 = 0;
    *(v14 + 16) = *(v12 + 16);
    v19 = 1 << *(v12 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v12 + 56);
    v22 = (v19 + 63) >> 6;
    v29 = v9 + 32;
    v30 = v9 + 16;
    while (v21)
    {
      v23 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v26 = *(v9 + 72) * (v23 | (v18 << 6));
      (*(v9 + 16))(v11, *(v12 + 48) + v26, v8);
      (*(v9 + 32))(*(v14 + 48) + v26, v11, v8);
    }

    v24 = v18;
    while (1)
    {
      v18 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v18 >= v22)
      {

        v7 = v28;
        goto LABEL_21;
      }

      v25 = *(v12 + 56 + 8 * v18);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v14;
  }
}

void sub_10036AAD8(int64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, uint64_t a5)
{
  v41 = a4;
  v42 = a5;
  v39 = a2;
  v40 = a3;
  v7 = sub_1001BC5A8(a2, a3);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v36 - v9;
  v11 = *v5;
  v12 = *v5 + 56;
  v13 = -1 << *(*v5 + 32);
  v14 = (a1 + 1) & ~v13;
  if (((1 << v14) & *(v12 + 8 * (v14 >> 6))) != 0)
  {
    v15 = ~v13;

    v16 = _HashTable.previousHole(before:)();
    if ((*(v12 + 8 * (v14 >> 6)) & (1 << v14)) != 0)
    {
      v37 = (v16 + 1) & v15;
      v36 = *(v8 + 16);
      v43 = *(v8 + 72);
      v38 = v8 + 16;
      v17 = (v8 + 8);
      v18 = v11;
      v19 = v15;
      while (1)
      {
        v20 = v12;
        v21 = v43 * v14;
        v22 = v19;
        v36(v10, *(v18 + 48) + v43 * v14, v7);
        v23 = v18;
        sub_10000462C(v41, v39, v40, v42);
        v24 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v17)(v10, v7);
        v19 = v22;
        v25 = v24 & v22;
        if (a1 >= v37)
        {
          if (v25 < v37 || a1 < v25)
          {
LABEL_4:
            v18 = v23;
            goto LABEL_5;
          }
        }

        else if (v25 < v37 && a1 < v25)
        {
          goto LABEL_4;
        }

        v18 = v23;
        v28 = *(v23 + 48);
        v29 = v43 * a1;
        v30 = v28 + v43 * a1;
        v31 = v28 + v21 + v43;
        if (v43 * a1 < v21 || v30 >= v31)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_24:
          v19 = v22;
          a1 = v14;
          goto LABEL_5;
        }

        a1 = v14;
        if (v29 != v21)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_24;
        }

LABEL_5:
        v14 = (v14 + 1) & v19;
        v12 = v20;
        if (((*(v20 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v18 = v11;
LABEL_28:
    *(v12 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v12 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v18 = v11;
  }

  v33 = *(v18 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v35;
    ++*(v18 + 36);
  }
}

double sub_10036ADD8(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v8 = *(v16 - 8);
  __chkstk_darwin(v16);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = *&v1[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_queue];
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = v1;
  v11[4] = ObjectType;
  aBlock[4] = sub_10036C1EC;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003D98;
  aBlock[3] = &unk_1004CF8B0;
  v12 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  v13 = v1;
  static DispatchQoS.unspecified.getter();
  v17 = _swiftEmptyArrayStorage;
  sub_1000048A0(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  (*(v5 + 8))(v7, v4);
  (*(v8 + 8))(v10, v16);

  return result;
}

void sub_10036B0C4(int a1)
{
  v3 = *(sub_1001BC5A8(&qword_100527C80, &qword_100459F80) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + v6 + 8);
  v11 = *(v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8));

  sub_1003652DC(a1, v7, v1 + v4, v8, v9, v10, v11);
}

double sub_10036B18C()
{
  v1 = *(sub_1001BC5A8(&qword_100527C80, &qword_100459F80) - 8);
  v2 = (*(v1 + 80) + 41) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);
  v8 = *(v0 + v3);
  v9 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_100366258(v4, v5, v6, v7, v0 + v2, v8, v9);
}

uint64_t sub_10036B23C()
{
  sub_1001BC5A8(&qword_100527C80, &qword_100459F80);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100009F30;

  return sub_1003667AC();
}

uint64_t sub_10036B314()
{
  v2 = *(sub_1001BC5A8(&qword_100527C80, &qword_100459F80) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100009F30;

  return sub_1003664EC(v0 + v3, v4);
}

uint64_t sub_10036B424()
{
  v2 = *(sub_1001BC5A8(&qword_100527C80, &qword_100459F80) - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100009F34;

  return sub_100365AE4(v9, v10, v11, v4, v5, v0 + v3, v7, v8);
}

void sub_10036B568()
{
  v1 = *(sub_1001BC5A8(&qword_100527CB0, &qword_100459F88) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_100362A3C(v0 + v2, v4, v5);
}

double sub_10036B60C(int a1)
{
  v3 = *(sub_1001BC5A8(&qword_100527CB0, &qword_100459F88) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);

  return sub_100363238(a1, v6, v7, v1 + v4, v5);
}

void sub_10036B6B8()
{
  v1 = *(sub_1001BC5A8(&qword_100527CB0, &qword_100459F88) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + v3);
  v7 = *(v0 + (v3 & 0xFFFFFFFFFFFFFFF8) + 8);

  sub_100363624(v4, v5, v0 + v2, v6, v7);
}

uint64_t sub_10036B758()
{
  sub_1001BC5A8(&qword_100527CB0, &qword_100459F88);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100009F30;

  return sub_100364630();
}

unint64_t sub_10036B830()
{
  sub_1001BC5A8(&unk_100521B40, &unk_10044ED80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10044EC70;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v1;
  *(inited + 48) = Bool._bridgeToObjectiveC()();
  v2 = sub_1001D5788(inited);
  swift_setDeallocating();
  sub_1000038A4(inited + 32, &unk_1005228F0, &unk_100450070);
  return v2;
}

uint64_t sub_10036B8E4(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_1001BC5A8(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

uint64_t sub_10036B968()
{
  sub_1001BC5A8(&qword_100527CB0, &qword_100459F88);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100009F30;

  return sub_100364584();
}

uint64_t sub_10036BA40(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_1001BC5A8(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 48) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, ((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v5 | 7);
}

uint64_t sub_10036BB30()
{
  v2 = *(sub_1001BC5A8(&qword_100527CB0, &qword_100459F88) - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100009F30;

  return sub_100363D20(v9, v10, v11, v4, v5, v0 + v3, v7, v8);
}

uint64_t sub_10036BC74()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100009F30;

  return sub_100361D60(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t sub_10036BD20()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100009F30;

  return sub_10036104C(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_10036BE24(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v7 = v1[6];
  v6 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100009F30;

  return sub_10035FC08(a1, v8, v9, v4, v5, v7, v6);
}

uint64_t sub_10036BEF0()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100009F30;

  return sub_10036019C(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t sub_10036BFA8()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100009F30;

  return sub_10035F22C(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_10036C06C()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100009F30;

  return sub_10035D024(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_10036C130()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100009F34;

  return sub_10035DDF8(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_10036C1F8()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100009F30;

  return sub_10035B2B8(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_10036C394()
{
  v0 = swift_allocObject();
  v1 = swift_slowAlloc();
  *(v0 + 16) = v1;
  *v1 = 0;
  return v0;
}

uint64_t sub_10036C3DC()
{

  return swift_deallocClassInstance();
}

unint64_t sub_10036C4E4@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10036E90C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10036C51C(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x694472656461656CLL;
    v7 = 0xD000000000000012;
    v8 = 0x79537265626D656DLL;
    if (a1 != 3)
    {
      v8 = 0x456E6F6973736573;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x797469746E656469;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0xD000000000000012;
    v2 = 0xD000000000000013;
    if (a1 != 9)
    {
      v2 = 0xD000000000000016;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x6F4365746F6D6572;
    v4 = 0xD000000000000012;
    if (a1 != 6)
    {
      v4 = 0xD000000000000017;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_10036C6B8(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(_MRGroupSessionFastSyncMessageProtobuf);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = [v4 initWithData:isa];

  if (!v6)
  {
    sub_1001C4034(a1, a2);
    return 11;
  }

  v7 = [v6 messageType];
  if (v7 >= 0xB)
  {
    sub_1001C4034(a1, a2);

    return 11;
  }

  v8 = v7;
  result = [v6 payload];
  if (result)
  {
    v10 = result;
    static Data._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1001C4034(a1, a2);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10036C7D4(unsigned __int8 a1)
{
  result = [objc_allocWithZone(_MRGroupSessionFastSyncMessageProtobuf) init];
  if (result)
  {
    v3 = a1;
    v4 = result;
    [result setMessageType:v3];
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v4 setPayload:isa];

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10036C864(unsigned __int8 a1)
{
  v1 = sub_10036C7D4(a1);
  v2 = [v1 data];

  if (v2)
  {
    static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    __break(1u);
  }
}

void sub_10036C8D0(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_100018D7C(0, &qword_100528138, _MRGroupSessionLeaderDiscoveryMessageProtobuf_ptr);
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = Data._bridgeToObjectiveC()().super.isa;
  v8 = [v6 initWithData:isa];

  if (!v8)
  {
    sub_1001C4034(a1, a2);
    v11 = 0;
    v13 = 0xF000000000000000;
    goto LABEL_5;
  }

  v9 = [v8 signature];
  if (v9)
  {
    v10 = v9;
    v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
    sub_1001C4034(a1, a2);

LABEL_5:
    *a3 = v11;
    a3[1] = v13;
    return;
  }

  __break(1u);
}

void sub_10036C9C4(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_100018D7C(0, &qword_100528118, _MRGroupSessionIdentityShareReplyMessageProtobuf_ptr);
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = Data._bridgeToObjectiveC()().super.isa;
  v8 = [v6 initWithData:isa];

  if (!v8)
  {
    sub_1001C4034(a1, a2);
    *(a3 + 43) = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    return;
  }

  v9 = [v8 localParticipant];
  if (!v9)
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = v9;
  v36 = a1;
  v11 = [v9 identifier];
  if (!v11)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = v11;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v14;
  v35 = v13;

  v15 = [v10 identity];
  v16 = [objc_allocWithZone(MRUserIdentity) initWithProtobuf:v15];

  if (!v16)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v33 = a2;
  v17 = [v10 connected];
  v32 = [v10 guest];
  v31 = [v10 hidden];

  v18 = [v8 leaderParticipant];
  if (!v18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v19 = v18;
  v30 = v17;
  v20 = [v18 identifier];
  if (v20)
  {
    v21 = v20;
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25 = [v19 identity];
    v26 = [objc_allocWithZone(MRUserIdentity) initWithProtobuf:v25];

    if (v26)
    {
      v27 = [v19 connected];
      v28 = [v19 guest];
      v29 = [v19 hidden];

      sub_1001C4034(v36, v33);
      *a3 = v35;
      *(a3 + 8) = v34;
      *(a3 + 16) = v16;
      *(a3 + 24) = v30;
      *(a3 + 25) = v32;
      *(a3 + 26) = v31;
      *(a3 + 32) = v22;
      *(a3 + 40) = v24;
      *(a3 + 48) = v26;
      *(a3 + 56) = v27;
      *(a3 + 57) = v28;
      *(a3 + 58) = v29;
      return;
    }

    goto LABEL_15;
  }

LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
}

uint64_t sub_10036CC7C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  swift_getAssociatedTypeWitness();
  v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = Data._bridgeToObjectiveC()().super.isa;
  v12 = [v10 initWithData:isa];

  if (v12)
  {
    (*(a4 + 24))(v12, a3, a4);
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  sub_1001C4034(a1, a2);
  v14 = *(*(a3 - 8) + 56);

  return v14(a5, v13, 1, a3);
}

void sub_10036CD98(uint64_t a1, uint64_t a2, char a3)
{
  v4 = [objc_allocWithZone(_MRGroupSessionJoinResponseMessageProtobuf) init];
  if (v4)
  {
    v5 = v4;
    v6 = String._bridgeToObjectiveC()();
    [v5 setParticipantIdentifier:v6];

    [v5 setApproved:a3 & 1];
    v7 = [v5 data];

    if (v7)
    {
      static Data._unconditionallyBridgeFromObjectiveC(_:)();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_10036CE6C()
{
  v1 = [objc_allocWithZone(_MRGroupSessionIdentityShareReplyMessageProtobuf) init];
  if (v1)
  {
    v2 = v1;
    if (*(v0 + 25))
    {
      v3 = 256;
    }

    else
    {
      v3 = 0;
    }

    v4 = v3 | *(v0 + 24);
    if (*(v0 + 26))
    {
      v5 = 0x10000;
    }

    else
    {
      v5 = 0;
    }

    v6 = sub_10036D568(*v0, *(v0 + 8), *(v0 + 16), v4 | v5);
    [v2 setLocalParticipant:v6];

    if (*(v0 + 57))
    {
      v7 = 256;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7 | *(v0 + 56);
    if (*(v0 + 58))
    {
      v9 = 0x10000;
    }

    else
    {
      v9 = 0;
    }

    v10 = sub_10036D568(*(v0 + 32), *(v0 + 40), *(v0 + 48), v8 | v9);
    [v2 setLeaderParticipant:v10];

    v11 = [v2 data];
    if (v11)
    {
      static Data._unconditionallyBridgeFromObjectiveC(_:)();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_10036CFA0(uint64_t a1, NSString a2)
{
  v3 = [objc_allocWithZone(_MRGroupSessionErrorReplyMessageProtobuf) init];
  if (v3)
  {
    v4 = v3;
    if (a2)
    {
      a2 = String._bridgeToObjectiveC()();
    }

    [v4 setErrorMessage:a2];

    v5 = [v4 data];
    if (v5)
    {
      static Data._unconditionallyBridgeFromObjectiveC(_:)();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_10036D064(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 signature];
  if (v4)
  {
    v5 = v4;
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    *a2 = v6;
    a2[1] = v8;
  }

  else
  {
    __break(1u);
  }
}

void sub_10036D170(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [a1 identity];
  v5 = [objc_allocWithZone(MRUserIdentity) initWithProtobuf:v4];

  if (v5)
  {

    *a2 = v5;
  }

  else
  {
    __break(1u);
  }
}

id sub_10036D1E8()
{
  v1 = *v0;
  result = [objc_allocWithZone(_MRGroupSessionIdentityShareMessageProtobuf) init];
  if (result)
  {
    v3 = result;
    v4 = [v1 protobuf];
    [v3 setIdentity:v4];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10036D264(void *a1)
{
  result = [objc_allocWithZone(_MRGroupSessionIdentityShareMessageProtobuf) init];
  if (result)
  {
    v3 = result;
    v4 = [a1 protobuf];
    [v3 setIdentity:v4];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10036D2E0()
{
  v1 = *v0;
  v2 = [objc_allocWithZone(_MRGroupSessionIdentityShareMessageProtobuf) init];
  if (v2)
  {
    v3 = v2;
    v4 = [v1 protobuf];
    [v3 setIdentity:v4];

    v5 = [v3 data];
    if (v5)
    {
      static Data._unconditionallyBridgeFromObjectiveC(_:)();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_10036D3C8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_100018D7C(0, &qword_100527F78, _MRGroupSessionParticipantProtobuf_ptr);
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = Data._bridgeToObjectiveC()().super.isa;
  v8 = [v6 initWithData:isa];

  if (v8)
  {
    sub_10036EC08(v8);
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    result = sub_1001C4034(a1, a2);
    v18 = v16 & 0x10101;
  }

  else
  {
    result = sub_1001C4034(a1, a2);
    v10 = 0;
    v12 = 0;
    v14 = 0;
    v18 = 0;
  }

  *a3 = v10;
  *(a3 + 8) = v12;
  *(a3 + 16) = v14;
  *(a3 + 24) = v18;
  *(a3 + 26) = BYTE2(v18);
  return result;
}

void sub_10036D4C4(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10036EC08(a1);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v9;
  *(a2 + 24) = v11 & 1;
  *(a2 + 25) = BYTE1(v11) & 1;
  *(a2 + 26) = BYTE2(v11) & 1;
}

id sub_10036D530()
{
  if (*(v0 + 25))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  v2 = v1 | *(v0 + 24);
  if (*(v0 + 26))
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  return sub_10036D568(*v0, *(v0 + 8), *(v0 + 16), v2 | v3);
}

id sub_10036D568(uint64_t a1, uint64_t a2, void *a3, unsigned int a4)
{
  result = [objc_allocWithZone(_MRGroupSessionParticipantProtobuf) init];
  if (result)
  {
    v7 = result;
    v8 = String._bridgeToObjectiveC()();
    [v7 setIdentifier:v8];

    v9 = [a3 protobuf];
    [v7 setIdentity:v9];

    [v7 setConnected:a4 & 1];
    [v7 setGuest:(a4 >> 8) & 1];
    [v7 setHidden:HIWORD(a4) & 1];
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10036D674()
{
  if (*(v0 + 25))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  v2 = v1 | *(v0 + 24);
  if (*(v0 + 26))
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_10036D568(*v0, *(v0 + 8), *(v0 + 16), v2 | v3);
  v5 = [v4 data];

  if (v5)
  {
    static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    __break(1u);
  }
}

id sub_10036D71C@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, unint64_t a3@<X1>)
{
  result = sub_10036EA14(a2, a3);
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  return result;
}

void sub_10036D748(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 participantIdentifier];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    LOBYTE(v5) = [a1 approved];
    *a2 = v6;
    *(a2 + 8) = v8;
    *(a2 + 16) = v5;
  }

  else
  {
    __break(1u);
  }
}

id sub_10036D7CC()
{
  v1 = *(v0 + 16);
  result = [objc_allocWithZone(_MRGroupSessionJoinResponseMessageProtobuf) init];
  if (result)
  {
    v3 = result;
    v4 = String._bridgeToObjectiveC()();
    [v3 setParticipantIdentifier:v4];

    [v3 setApproved:v1];
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10036D85C(uint64_t a1, uint64_t a2, char a3)
{
  result = [objc_allocWithZone(_MRGroupSessionJoinResponseMessageProtobuf) init];
  if (result)
  {
    v5 = result;
    v6 = String._bridgeToObjectiveC()();
    [v5 setParticipantIdentifier:v6];

    [v5 setApproved:a3 & 1];
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10036D8FC@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, unint64_t a3@<X1>)
{
  result = sub_10036EB1C(a2, a3);
  *a1 = result;
  a1[1] = v5;
  return result;
}

void sub_10036D924(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 participantIdentifier];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    *a2 = v6;
    a2[1] = v8;
  }

  else
  {
    __break(1u);
  }
}

id sub_10036D9B8(uint64_t a1, uint64_t a2, Class *a3, uint64_t (*a4)(uint64_t, uint64_t), SEL *a5)
{
  v8 = *v5;
  v9 = v5[1];
  result = [objc_allocWithZone(*a3) init];
  if (result)
  {
    v11 = result;
    v12 = a4(v8, v9);
    [v11 *a5];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10036DA64(uint64_t a1, uint64_t a2, Class *a3, uint64_t (*a4)(uint64_t, uint64_t), SEL *a5)
{
  result = [objc_allocWithZone(*a3) init];
  if (result)
  {
    v10 = result;
    v11 = a4(a1, a2);
    [v10 *a5];

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10036DB14(uint64_t a1, uint64_t a2, Class *a3, uint64_t (*a4)(uint64_t, uint64_t), SEL *a5)
{
  v9 = *v5;
  v8 = v5[1];
  v10 = [objc_allocWithZone(*a3) init];
  if (v10)
  {
    v11 = v10;
    v12 = a4(v9, v8);
    [v11 *a5];

    v13 = [v11 data];
    if (v13)
    {
      static Data._unconditionallyBridgeFromObjectiveC(_:)();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_10036DBD8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4 & 1;
  *(a9 + 25) = BYTE1(a4) & 1;
  *(a9 + 26) = BYTE2(a4) & 1;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8 & 1;
  *(a9 + 57) = BYTE1(a8) & 1;
  *(a9 + 58) = BYTE2(a8) & 1;
  return result;
}

void sub_10036DC20(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 localParticipant];
  if (v4)
  {
    v5 = v4;
    sub_10036EC08(v4);
    v24 = v7;
    v25 = v6;
    v26 = v8;
    v10 = v9;

    v11 = [a1 leaderParticipant];
    if (v11)
    {
      v12 = v11;
      v13 = HIWORD(v10) & 1;
      v14 = (v10 >> 8) & 1;
      v15 = v10 & 1;
      sub_10036EC08(v11);
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;

      *a2 = v25;
      *(a2 + 8) = v24;
      *(a2 + 16) = v26;
      *(a2 + 24) = v15;
      *(a2 + 25) = v14;
      *(a2 + 26) = v13;
      *(a2 + 32) = v17;
      *(a2 + 40) = v19;
      *(a2 + 48) = v21;
      *(a2 + 56) = v23 & 1;
      *(a2 + 57) = BYTE1(v23) & 1;
      *(a2 + 58) = BYTE2(v23) & 1;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_10036DD28()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 25);
  v6 = *(v0 + 26);
  v21 = *(v0 + 40);
  v22 = *(v0 + 32);
  v20 = *(v0 + 48);
  v19 = *(v0 + 56);
  v7 = *(v0 + 57);
  v8 = *(v0 + 58);
  result = [objc_allocWithZone(_MRGroupSessionIdentityShareReplyMessageProtobuf) init];
  if (result)
  {
    v10 = result;
    if (v5)
    {
      v11 = 256;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11 | v4;
    if (v6)
    {
      v13 = 0x10000;
    }

    else
    {
      v13 = 0;
    }

    v14 = sub_10036D568(v1, v2, v3, v12 | v13);
    [v10 setLocalParticipant:v14];

    if (v7)
    {
      v15 = 256;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15 | v19;
    if (v8)
    {
      v17 = 0x10000;
    }

    else
    {
      v17 = 0;
    }

    v18 = sub_10036D568(v22, v21, v20, v16 | v17);
    [v10 setLeaderParticipant:v18];

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10036DE58()
{
  result = [objc_allocWithZone(_MRGroupSessionIdentityShareReplyMessageProtobuf) init];
  if (result)
  {
    v2 = result;
    if (*(v0 + 25))
    {
      v3 = 256;
    }

    else
    {
      v3 = 0;
    }

    v4 = v3 | *(v0 + 24);
    if (*(v0 + 26))
    {
      v5 = 0x10000;
    }

    else
    {
      v5 = 0;
    }

    v6 = sub_10036D568(*v0, *(v0 + 8), *(v0 + 16), v4 | v5);
    [v2 setLocalParticipant:v6];

    if (*(v0 + 57))
    {
      v7 = 256;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7 | *(v0 + 56);
    if (*(v0 + 58))
    {
      v9 = 0x10000;
    }

    else
    {
      v9 = 0;
    }

    v10 = sub_10036D568(*(v0 + 32), *(v0 + 40), *(v0 + 48), v8 | v9);
    [v2 setLeaderParticipant:v10];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10036DF90@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  sub_100018D7C(0, &qword_100528110, _MRGroupSessionMemberSyncMessageProtobuf_ptr);
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = Data._bridgeToObjectiveC()().super.isa;
  v8 = [v6 initWithData:isa];

  if (v8)
  {
    sub_10036EE18(v8);
    v8 = v9;
    v11 = v10;
    v13 = v12;
    result = sub_1001C4034(a1, a2);
  }

  else
  {
    result = sub_1001C4034(a1, a2);
    v11 = 0;
    v13 = 0;
  }

  *a3 = v8;
  a3[1] = v11;
  a3[2] = v13;
  return result;
}

void sub_10036E05C(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10036EE18(a1);
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
}

char *sub_10036E094(uint64_t a1, uint64_t a2, unint64_t a3)
{
  result = [objc_allocWithZone(_MRGroupSessionMemberSyncMessageProtobuf) init];
  if (result)
  {
    v7 = result;
    v64 = a3;
    v8 = *(a1 + 16);
    v63 = result;
    if (v8)
    {
      v62 = a2;
      v67 = _swiftEmptyArrayStorage;
      sub_1001D382C(0, v8, 0);
      v9 = _swiftEmptyArrayStorage;
      v10 = (a1 + 58);
      while (1)
      {
        v11 = *(v10 - 10);
        v12 = *(v10 - 2);
        v13 = *(v10 - 1);
        v14 = *v10;
        v15 = objc_allocWithZone(_MRGroupSessionParticipantProtobuf);

        v16 = v11;
        result = [v15 init];
        if (!result)
        {
          break;
        }

        v17 = result;
        v18 = String._bridgeToObjectiveC()();
        [v17 setIdentifier:v18];

        v19 = [v16 protobuf];
        [v17 setIdentity:v19];

        [v17 setConnected:v12];
        [v17 setGuest:v13];
        [v17 setHidden:v14];
        v66 = sub_100018D7C(0, &qword_100527F78, _MRGroupSessionParticipantProtobuf_ptr);

        *&v65 = v17;
        v67 = v9;
        v21 = v9[2];
        v20 = v9[3];
        if (v21 >= v20 >> 1)
        {
          sub_1001D382C((v20 > 1), v21 + 1, 1);
          v9 = v67;
        }

        v9[2] = v21 + 1;
        sub_1001C4088(&v65, &v9[4 * v21 + 4]);
        v10 += 32;
        if (!--v8)
        {
          a2 = v62;
          v7 = v63;
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      v22 = &kMRPlaybackQueueCapabilitiesChangedNotification_ptr;
      v23 = objc_allocWithZone(NSMutableArray);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v25 = &selRef_entitlements;
      v26 = [v23 initWithArray:isa];

      [v7 setParticipants:v26];
      v27 = *(a2 + 16);
      if (v27)
      {
        v67 = _swiftEmptyArrayStorage;
        sub_1001D382C(0, v27, 0);
        v28 = v67;
        v29 = (a2 + 58);
        while (1)
        {
          v30 = *(v29 - 10);
          v31 = *(v29 - 2);
          v32 = *(v29 - 1);
          v33 = *v29;
          v34 = objc_allocWithZone(_MRGroupSessionParticipantProtobuf);

          v35 = v30;
          result = [v34 init];
          if (!result)
          {
            goto LABEL_37;
          }

          v36 = result;
          v37 = String._bridgeToObjectiveC()();
          [v36 setIdentifier:v37];

          v38 = [v35 protobuf];
          [v36 setIdentity:v38];

          [v36 setConnected:v31];
          [v36 setGuest:v32];
          [v36 setHidden:v33];
          v66 = sub_100018D7C(0, &qword_100527F78, _MRGroupSessionParticipantProtobuf_ptr);

          *&v65 = v36;
          v67 = v28;
          v40 = v28[2];
          v39 = v28[3];
          if (v40 >= v39 >> 1)
          {
            sub_1001D382C((v39 > 1), v40 + 1, 1);
            v28 = v67;
          }

          v28[2] = v40 + 1;
          sub_1001C4088(&v65, &v28[4 * v40 + 4]);
          v29 += 32;
          if (!--v27)
          {
            v7 = v63;
            v22 = &kMRPlaybackQueueCapabilitiesChangedNotification_ptr;
            v25 = &selRef_entitlements;
            break;
          }
        }
      }

      v41 = objc_allocWithZone(NSMutableArray);
      v42 = Array._bridgeToObjectiveC()().super.isa;

      v43 = [v41 initWithArray:v42];

      [v7 setPendingParticipants:v43];
      v44 = v64;
      if (v64 >> 62)
      {
        goto LABEL_34;
      }

      for (i = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v61)
      {
        if (!i)
        {
LABEL_31:
          v57 = objc_allocWithZone(v22[191]);
          v58 = Array._bridgeToObjectiveC()().super.isa;

          v59 = [v57 v25[298]];

          [v7 setMembers:v59];
          return v7;
        }

        v46 = v44;
        v67 = _swiftEmptyArrayStorage;
        result = sub_1001D382C(0, i & ~(i >> 63), 0);
        if (i < 0)
        {
          break;
        }

        v47 = 0;
        v48 = v67;
        v49 = v46;
        v50 = v46 & 0xC000000000000001;
        v25 = (v46 & 0xFFFFFFFFFFFFFF8);
        v7 = &qword_100527F80;
        v22 = _MRUserIdentityProtobuf_ptr;
        while (1)
        {
          v51 = v47 + 1;
          if (__OFADD__(v47, 1))
          {
            break;
          }

          if (v50)
          {
            v52 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v47 >= v25[2])
            {
              goto LABEL_33;
            }

            v52 = *(v49 + 8 * v47 + 32);
          }

          v53 = v52;
          result = [v52 protobuf];
          if (!result)
          {
            goto LABEL_38;
          }

          v54 = result;
          v66 = sub_100018D7C(0, &qword_100527F80, _MRUserIdentityProtobuf_ptr);

          *&v65 = v54;
          v67 = v48;
          v56 = v48[2];
          v55 = v48[3];
          if (v56 >= v55 >> 1)
          {
            sub_1001D382C((v55 > 1), v56 + 1, 1);
            v48 = v67;
          }

          v48[2] = v56 + 1;
          sub_1001C4088(&v65, &v48[4 * v56 + 4]);
          ++v47;
          v49 = v64;
          if (v51 == i)
          {
            v7 = v63;
            v22 = &kMRPlaybackQueueCapabilitiesChangedNotification_ptr;
            v25 = &selRef_entitlements;
            goto LABEL_31;
          }
        }

        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        v60 = v44;
        v61 = _CocoaArrayWrapper.endIndex.getter();
        v44 = v60;
      }

      __break(1u);
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_10036E6EC()
{
  v1 = sub_10036E094(*v0, *(v0 + 8), *(v0 + 16));
  v2 = [v1 data];

  if (v2)
  {
    static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10036E760@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, unint64_t a3@<X1>)
{
  result = sub_10036ED14(a2, a3);
  *a1 = result;
  a1[1] = v5;
  return result;
}

void sub_10036E788(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 errorMessage];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {

    v6 = 0;
    v8 = 0;
  }

  *a2 = v6;
  a2[1] = v8;
}

id sub_10036E800()
{
  v1 = *(v0 + 8);
  result = [objc_allocWithZone(_MRGroupSessionErrorReplyMessageProtobuf) init];
  if (result)
  {
    v3 = result;
    if (v1)
    {
      v4 = String._bridgeToObjectiveC()();
    }

    else
    {
      v4 = 0;
    }

    [v3 setErrorMessage:v4];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10036E884(uint64_t a1, NSString a2)
{
  result = [objc_allocWithZone(_MRGroupSessionErrorReplyMessageProtobuf) init];
  if (result)
  {
    v4 = result;
    if (a2)
    {
      a2 = String._bridgeToObjectiveC()();
    }

    [v4 setErrorMessage:a2];

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_10036E90C(unint64_t result)
{
  if (result >= 0xB)
  {
    return 11;
  }

  return result;
}

void sub_10036E91C(uint64_t a1, unint64_t a2)
{
  sub_100018D7C(0, &qword_100528130, _MRGroupSessionIdentityShareMessageProtobuf_ptr);
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = [v4 initWithData:isa];

  if (v6)
  {
    v7 = [v6 identity];
    v8 = [objc_allocWithZone(MRUserIdentity) initWithProtobuf:v7];

    if (v8)
    {
      sub_1001C4034(a1, a2);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_1001C4034(a1, a2);
  }
}

id sub_10036EA14(uint64_t a1, unint64_t a2)
{
  sub_100018D7C(0, &qword_100528128, _MRGroupSessionJoinResponseMessageProtobuf_ptr);
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = [v4 initWithData:isa];

  if (!v6)
  {
    sub_1001C4034(a1, a2);
    return 0;
  }

  result = [v6 participantIdentifier];
  if (result)
  {
    v8 = result;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    [v6 approved];
    sub_1001C4034(a1, a2);

    return v9;
  }

  __break(1u);
  return result;
}

id sub_10036EB1C(uint64_t a1, unint64_t a2)
{
  sub_100018D7C(0, &qword_100528120, _MRGroupSessionRemoveRequestProtobuf_ptr);
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = [v4 initWithData:isa];

  if (!v6)
  {
    sub_1001C4034(a1, a2);
    return 0;
  }

  result = [v6 participantIdentifier];
  if (result)
  {
    v8 = result;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1001C4034(a1, a2);

    return v9;
  }

  __break(1u);
  return result;
}

void sub_10036EC08(void *a1)
{
  v2 = [a1 identifier];
  if (v2)
  {
    v3 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = [a1 identity];
    v5 = [objc_allocWithZone(MRUserIdentity) initWithProtobuf:v4];

    if (v5)
    {
      [a1 connected];
      [a1 guest];
      [a1 hidden];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_10036ED14(uint64_t a1, unint64_t a2)
{
  sub_100018D7C(0, &qword_100528108, _MRGroupSessionErrorReplyMessageProtobuf_ptr);
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = [v4 initWithData:isa];

  if (v6)
  {
    v7 = [v6 errorMessage];
    if (v7)
    {
      v8 = v7;
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_1001C4034(a1, a2);

      return v9;
    }

    else
    {
      sub_1001C4034(a1, a2);

      return 0;
    }
  }

  else
  {
    sub_1001C4034(a1, a2);
    return 0;
  }
}

void sub_10036EE18(void *a1)
{
  if ([a1 participants])
  {
    sub_100018D7C(0, &qword_100527F78, _MRGroupSessionParticipantProtobuf_ptr);
    static Array._forceBridgeFromObjectiveC(_:result:)();
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
}

uint64_t getEnumTagSinglePayload for FastSyncMessageType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FastSyncMessageType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10036F648(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF6 && a1[24])
  {
    return (*a1 + 246);
  }

  v3 = *a1;
  v4 = v3 >= 0xB;
  v5 = v3 - 11;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10036F68C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF5)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 246;
    if (a3 >= 0xF6)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF6)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 10;
    }
  }

  return result;
}

uint64_t sub_10036F6E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10036F734(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

__n128 sub_10036F7A0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 11) = *(a2 + 11);
  *a1 = result;
  return result;
}

uint64_t sub_10036F7B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 27))
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

uint64_t sub_10036F7FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 26) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 27) = 1;
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

    *(result + 27) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10036F854(uint64_t a1, int a2)
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

uint64_t sub_10036F89C(uint64_t result, int a2, int a3)
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

uint64_t sub_10036F8EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_10036F934(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 sub_10036F980(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 43) = *(a2 + 43);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10036F99C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 59))
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

uint64_t sub_10036F9E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 58) = 0;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 59) = 1;
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

    *(result + 59) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10036FA48(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_10036FA90(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10036FAE0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_10036FB3C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_10036FBA0()
{
  v0 = type metadata accessor for Logger();
  sub_1001C4098(v0, qword_100535DE8);
  sub_100015AFC(v0, qword_100535DE8);
  v1 = *sub_1001D8C64();
  return Logger.init(_:)();
}

uint64_t sub_10036FBFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10037778C();

  return _BridgedNSError.hash(into:)(a1, a2, v4);
}

unint64_t *sub_10036FC48@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_10036FC64(uint64_t a1)
{
  v2 = sub_10037778C();

  return _BridgedNSError._domain.getter(a1, v2);
}

uint64_t sub_10036FCA0(uint64_t a1)
{
  v2 = sub_10037778C();

  return _BridgedNSError._code.getter(a1, v2);
}

uint64_t sub_10036FCF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10037778C();

  return _BridgedNSError.init(_bridgedNSError:)(a1, a2, v4);
}

BOOL sub_10036FD5C(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 == 2)
  {
    return a2 == 2;
  }

  if (a2 == 2)
  {
    return 0;
  }

  return ((a2 ^ a1) & 1) == 0;
}

BOOL sub_10036FD9C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return ((v3 ^ v2) & 1) == 0;
}

void sub_10036FDDC()
{
  v1 = v0;
  if (qword_100535DE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100015AFC(v2, qword_100535DE8);

  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v4 = 136315650;
    v5 = _typeName(_:qualified:)();
    v7 = sub_10002C9C8(v5, v6, &v12);

    *(v4 + 4) = v7;
    *(v4 + 12) = 2082;
    *(v4 + 14) = sub_10002C9C8(*(v1 + 16), *(v1 + 24), &v12);
    *(v4 + 22) = 2080;
    swift_beginAccess();
    v8 = String.init<A>(describing:)();
    v10 = sub_10002C9C8(v8, v9, &v12);

    *(v4 + 24) = v10;
    _os_log_impl(&_mh_execute_header, oslog, v3, "[%s]<%{public}s> Updated transportType: %s", v4, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

void sub_100370038(char a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1 & 1;
  sub_10036FDDC();
}

uint64_t (*sub_100370080(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1003700D4;
}

void sub_1003700EC()
{
  v1 = v0;
  if (qword_100535DE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100015AFC(v2, qword_100535DE8);

  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v4 = 136315650;
    v5 = _typeName(_:qualified:)();
    v7 = sub_10002C9C8(v5, v6, &v12);

    *(v4 + 4) = v7;
    *(v4 + 12) = 2082;
    *(v4 + 14) = sub_10002C9C8(*(v1 + 16), *(v1 + 24), &v12);
    *(v4 + 22) = 2080;
    swift_beginAccess();
    v8 = String.init<A>(describing:)();
    v10 = sub_10002C9C8(v8, v9, &v12);

    *(v4 + 24) = v10;
    _os_log_impl(&_mh_execute_header, oslog, v3, "[%s]<%{public}s> Updated state: %s", v4, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

void sub_100370348(char a1)
{
  swift_beginAccess();
  *(v1 + 49) = a1;
  sub_1003700EC();
}

uint64_t (*sub_10037038C(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1003703E0;
}

uint64_t sub_1003703F8(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

uint64_t sub_10037061C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();
  *(v11 + 48) = 512;
  *(v11 + 64) = 0;
  *(v11 + 72) = 0;
  *(v11 + 56) = &_swiftEmptyDictionarySingleton;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  *(v11 + 88) = a6;
  swift_unknownObjectUnownedInit();
  swift_unknownObjectRelease();
  return v11;
}

void sub_1003706B8(uint64_t a1)
{
  sub_100020E0C(a1, v17);
  if (swift_dynamicCast())
  {
    v3 = v18[0];
    swift_unknownObjectUnownedLoadStrong();
    v4 = *(v1 + 88);
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(v1, v3, *(&v3 + 1), ObjectType, v4);
    swift_unknownObjectRelease();
    sub_1001C4034(v3, *(&v3 + 1));
    return;
  }

  sub_100020E0C(a1, v17);
  v6 = sub_1001BC5A8(&qword_1005229E0, &qword_10045A7D0);
  if (swift_dynamicCast())
  {
    v7 = *&v18[0];
    v8 = sub_10036C490();
    v9 = *(v8 + 1);
    *&v18[0] = *v8;
    *(&v18[0] + 1) = v9;
    swift_bridgeObjectRetain_n();
    AnyHashable.init<A>(_:)();
    if (*(v7 + 16))
    {
      v10 = v1;
      v11 = sub_10001BF64(v17);
      v13 = v12;

      if (v13)
      {
        sub_100020E0C(*(v7 + 56) + 32 * v11, v16);
        sub_10001BF10(v17);
        sub_1001C4088(v16, v18);
        swift_dynamicCast();
        v17[3] = v6;
        v17[0] = v7;
        v14 = (*(*v10 + 208))(v18);
        sub_1003708DC(v17, v15);
        v14(v18, 0);
        sub_1003709C0();
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

_OWORD *sub_1003708DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_1001C4088(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_100376700(v14, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    sub_100037768(a1);
    v7 = sub_100375A54(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_100376B20();
        v11 = v13;
      }

      sub_1001C4088((*(v11 + 56) + 32 * v9), v14);
      sub_1003763B0(v9, v11);
      *v3 = v11;
    }

    else
    {
      memset(v14, 0, sizeof(v14));
    }

    return sub_100037768(v14);
  }

  return result;
}

void sub_1003709C0()
{
  v1 = v0;
  v2 = *(*v0 + 240);
  v3 = v2();
  v4 = *(*v0 + 192);
  v5 = v4();
  if (*(v5 + 16))
  {
    v6 = sub_100375A54(v3);
    if (v7)
    {
      sub_100020E0C(*(v5 + 56) + 32 * v6, v41);

      v9 = (v2)(v8);
      memset(v39, 0, sizeof(v39));
      v10 = (*(*v1 + 208))(v40);
      sub_1003708DC(v39, v9);
      v10(v40, 0);
      sub_100020E0C(v41, v39);
      sub_1001BC5A8(&qword_1005229E0, &qword_10045A7D0);
      swift_dynamicCast();
      v11 = *&v40[0];
      v12 = sub_10036C484();
      v13 = *(v12 + 1);
      *&v40[0] = *v12;
      *(&v40[0] + 1) = v13;
      swift_bridgeObjectRetain_n();
      AnyHashable.init<A>(_:)();
      if (*(v11 + 16))
      {
        v14 = sub_10001BF64(v39);
        v16 = v15;

        if (v16)
        {
          sub_100020E0C(*(v11 + 56) + 32 * v14, v38);
          sub_10001BF10(v39);

          sub_1001C4088(v38, v40);
          swift_dynamicCast();
          swift_unknownObjectUnownedLoadStrong();
          v17 = v1[11];
          ObjectType = swift_getObjectType();
          (*(v17 + 8))(v1, v36, v37, ObjectType, v17);
          swift_unknownObjectRelease();
          v19 = (*(*v1 + 256))(v39);
          if (!__OFADD__(*v20, 1))
          {
            ++*v20;
            v21 = v19(v39, 0);
            v22 = *((v4)(v21) + 16);

            if (v22)
            {
              sub_1003709C0();
              sub_1001C4034(v36, v37);
              sub_100026A44(v41);
            }

            else
            {
              sub_100026A44(v41);
              sub_1001C4034(v36, v37);
            }

            return;
          }

LABEL_16:
          __break(1u);
          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  if (qword_100535DE0 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_100015AFC(v23, qword_100535DE8);
  swift_retain_n();
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *&v39[0] = swift_slowAlloc();
    *v26 = 136315906;
    v27 = _typeName(_:qualified:)();
    v29 = sub_10002C9C8(v27, v28, v39);

    *(v26 + 4) = v29;
    *(v26 + 12) = 2082;
    *(v26 + 14) = sub_10002C9C8(v1[2], v1[3], v39);
    *(v26 + 22) = 2050;
    v30 = v2();

    *(v26 + 24) = v30;

    *(v26 + 32) = 2082;
    (v4)(v31);
    v32 = Dictionary.Keys.description.getter();
    v34 = v33;

    v35 = sub_10002C9C8(v32, v34, v39);

    *(v26 + 34) = v35;
    _os_log_impl(&_mh_execute_header, v24, v25, "[%s]<%{public}s> still waiting for message: %{public}ld with reordered messages %{public}s", v26, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
  }
}

uint64_t sub_100370F14()
{
  v1 = v0;
  if (qword_100535DE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100015AFC(v2, qword_100535DE8);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v5 = 136315394;
    v6 = _typeName(_:qualified:)();
    v8 = sub_10002C9C8(v6, v7, &v11);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_10002C9C8(*(v1 + 16), *(v1 + 24), &v11);
    _os_log_impl(&_mh_execute_header, v3, v4, "[%s]<%s> resetting state.", v5, 0x16u);
    swift_arrayDestroy();
  }

  (*(*v1 + 224))(0);
  v9 = *(*v1 + 248);

  return v9(0);
}

uint64_t sub_10037112C()
{

  sub_100044EC4(v0 + 80);

  return swift_deallocClassInstance();
}

Swift::Int sub_10037117C()
{
  Hasher.init(_seed:)();
  (*(*v0 + 320))(v2);
  return Hasher._finalize()();
}

uint64_t sub_1003711E4(uint64_t *a1, uint64_t *a2)
{
  if (*(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == *(*a2 + 24))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

Swift::Int sub_1003712A8(uint64_t a1)
{
  Hasher.init(_seed:)();
  (*(**v1 + 320))(v3);
  return Hasher._finalize()();
}

void *sub_100371310(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  ObjectType = swift_getObjectType();

  return sub_100376F88(a1, a2, a4, v4, ObjectType, a3);
}

uint64_t sub_10037137C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = v3;
  swift_beginAccess();
  if (!*(*(v3 + 40) + 16) || (, sub_100375A98(a3), v10 = v9, , (v10 & 1) == 0))
  {
    swift_beginAccess();

    sub_1001C3FE0(a1, a2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v3 + 40);
    *(v3 + 40) = 0x8000000000000000;
    sub_10037682C(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *(v3 + 40) = v22;
    return swift_endAccess();
  }

  swift_beginAccess();
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v3 + 40);
  v24 = *(v5 + 40);
  *(v5 + 40) = 0x8000000000000000;
  v14 = sub_100375A98(a3);
  v15 = *(v12 + 16);
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
LABEL_15:
    sub_100376C9C();
    if ((v4 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  v4 = v13;
  if (*(v12 + 24) >= v17)
  {
    if (v11)
    {
      if ((v13 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_11;
    }

    goto LABEL_15;
  }

  sub_100375E44(v17, v11);
  v18 = sub_100375A98(a3);
  if ((v4 & 1) == (v19 & 1))
  {
    v14 = v18;
    if ((v4 & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_11:
    v23 = *(*(v24 + 56) + 16 * v14);
    if (*(&v23 + 1) >> 60 != 15)
    {
      Data.append(_:)();
      *(*(v24 + 56) + 16 * v14) = v23;
      sub_1001E5270(v23, *(&v23 + 1));
      sub_100045968(v23, *(&v23 + 1));
      *(v5 + 40) = v24;
      return swift_endAccess();
    }

LABEL_16:
    __break(1u);
  }

  type metadata accessor for ConnectedParticipant();
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1003715CC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  if (*(v3 + 16))
  {

    v4 = sub_100375A98(a1);
    if (v5)
    {
      v6 = *(v3 + 56) + 16 * v4;
      v7 = *v6;
      sub_1001C3FE0(*v6, *(v6 + 8));

      swift_beginAccess();

      sub_100375B2C(v8, &v10);

      sub_100045968(v10.n128_i64[0], v10.n128_u64[1]);
      swift_endAccess();
      return v7;
    }
  }

  return 0;
}

uint64_t sub_1003716B8()
{
  sub_100044EC4(v0 + 24);

  return swift_deallocClassInstance();
}

double sub_100371708()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_100371740(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 56) = a1;
}

void sub_100371788()
{
  if (qword_100535DE0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100015AFC(v0, qword_100535DE8);

  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v2 = 136315394;
    v3 = _typeName(_:qualified:)();
    v5 = sub_10002C9C8(v3, v4, &v10);

    *(v2 + 4) = v5;
    *(v2 + 12) = 2080;
    swift_beginAccess();
    v6 = String.init<A>(describing:)();
    v8 = sub_10002C9C8(v6, v7, &v10);

    *(v2 + 14) = v8;
    _os_log_impl(&_mh_execute_header, oslog, v1, "[%s] Updated transportType: %s", v2, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

void sub_1003719CC(char a1)
{
  swift_beginAccess();
  *(v1 + 64) = a1 & 1;
  sub_100371788();
}

void sub_100371A14()
{
  if (qword_100535DE0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100015AFC(v0, qword_100535DE8);

  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v2 = 136315394;
    v3 = _typeName(_:qualified:)();
    v5 = sub_10002C9C8(v3, v4, &v10);

    *(v2 + 4) = v5;
    *(v2 + 12) = 2080;
    swift_beginAccess();
    v6 = String.init<A>(describing:)();
    v8 = sub_10002C9C8(v6, v7, &v10);

    *(v2 + 14) = v8;
    _os_log_impl(&_mh_execute_header, oslog, v1, "[%s] Updated state: %s", v2, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

void sub_100371C58(char a1)
{
  swift_beginAccess();
  *(v1 + 65) = a1;
  sub_100371A14();
}

uint64_t sub_100371C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = a3;
  v11 = swift_allocObject();
  *(v11 + 48) = a2;
  *(v11 + 56) = &_swiftEmptyDictionarySingleton;
  *(v11 + 64) = 512;
  *(v11 + 72) = xmmword_10045A7C0;
  *(v11 + 88) = xmmword_10045A7C0;
  *(v11 + 104) = 0;
  *(v11 + 40) = a1;
  *(v11 + 24) = a5;
  swift_unknownObjectUnownedInit();
  *(v11 + 32) = a6;
  type metadata accessor for GroupSessionRemoteControlConnectionPushScheduler();
  v12 = swift_allocObject();
  v13 = a6;

  v14 = sub_100377000(v8, v11, v13, v12);
  swift_unknownObjectRelease();
  *(v11 + 104) = v14;

  return v11;
}

void sub_100371D90(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v31 = v2;
  if (v6)
  {
    while (1)
    {
      v9 = v8;
LABEL_8:
      v10 = __clz(__rbit64(v6)) | (v9 << 6);
      v11 = *(*(v2 + 48) + 8 * v10);
      v12 = (*(v2 + 56) + 16 * v10);
      v13 = *v12;
      v14 = v12[1];

      v33 = v14;
      v34 = v13;
      sub_1001C3FE0(v13, v14);
      if (qword_100535DE0 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_100015AFC(v15, qword_100535DE8);
      swift_retain_n();
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v35[0] = swift_slowAlloc();
        *v18 = 136315650;
        v19 = _typeName(_:qualified:)();
        v21 = sub_10002C9C8(v19, v20, v35);

        *(v18 + 4) = v21;
        *(v18 + 12) = 2050;
        v23 = (*(*v11 + 216))(v22);

        *(v18 + 14) = v23;

        *(v18 + 22) = 2082;
        v24 = v11[2];
        v25 = v11[3];

        v26 = sub_10002C9C8(v24, v25, v35);

        *(v18 + 24) = v26;
        _os_log_impl(&_mh_execute_header, v16, v17, "[%s] Send scheduled message: %{public}ld to: %{public}s", v18, 0x20u);
        swift_arrayDestroy();

        v2 = v31;
      }

      else
      {
      }

      swift_unknownObjectUnownedLoadStrong();
      v27 = *(v32 + 24);
      ObjectType = swift_getObjectType();
      (*(v27 + 16))(v32, v34, v33, v11, 1, ObjectType, v27);
      swift_unknownObjectRelease();
      v29 = (*(*v11 + 232))(v35);
      if (__OFADD__(*v30, 1))
      {
        break;
      }

      v6 &= v6 - 1;
      ++*v30;
      v29(v35, 0);
      sub_1001C4034(v34, v33);

      v8 = v9;
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v7)
      {

        return;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_100372154(uint64_t a1)
{
  v2 = v1;
  v92 = *(*v1 + 200);
  v4 = v92();
  v5 = sub_1001BDDB0(v4);

  v7 = sub_1001BDDB0(v6);
  if (sub_100218144(v5, v7))
  {

    return;
  }

  v8 = v5 + 56;
  v9 = 1 << *(v5 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v5 + 56);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  v93 = v2;
  v91 = a1;
  v89 = v5;
  if (!v11)
  {
    while (1)
    {
LABEL_11:
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_60;
      }

      if (v14 >= v12)
      {
        break;
      }

      v11 = *(v8 + 8 * v14);
      ++v13;
      if (v11)
      {
        v13 = v14;
        goto LABEL_15;
      }
    }

    v44 = a1 + 64;
    v45 = 1 << *(a1 + 32);
    v46 = -1;
    if (v45 < 64)
    {
      v46 = ~(-1 << v45);
    }

    v47 = v46 & *(a1 + 64);
    v48 = (v45 + 63) >> 6;

    v49 = 0;
    if (!v47)
    {
LABEL_37:
      while (1)
      {
        v50 = v49 + 1;
        if (__OFADD__(v49, 1))
        {
          break;
        }

        if (v50 >= v48)
        {

          if (qword_100535DE0 != -1)
          {
            goto LABEL_65;
          }

          goto LABEL_56;
        }

        v47 = *(v44 + 8 * v50);
        ++v49;
        if (v47)
        {
          v49 = v50;
          goto LABEL_41;
        }
      }

LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      swift_once();
LABEL_56:
      v77 = type metadata accessor for Logger();
      sub_100015AFC(v77, qword_100535DE8);

      v78 = Logger.logObject.getter();
      v79 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        v94[0] = swift_slowAlloc();
        *v80 = 136315394;
        v81 = _typeName(_:qualified:)();
        v83 = sub_10002C9C8(v81, v82, v94);

        *(v80 + 4) = v83;
        *(v80 + 12) = 2082;
        (v92)(v84);
        type metadata accessor for ConnectedParticipant();
        v85 = Dictionary.description.getter();
        v87 = v86;

        v88 = sub_10002C9C8(v85, v87, v94);

        *(v80 + 14) = v88;
        _os_log_impl(&_mh_execute_header, v78, v79, "[%s] Updated participants: %{public}s", v80, 0x16u);
        swift_arrayDestroy();
      }

      return;
    }

    while (1)
    {
LABEL_41:
      while (1)
      {
        v51 = __clz(__rbit64(v47));
        v47 &= v47 - 1;
        v52 = (v49 << 10) | (16 * v51);
        v53 = (*(a1 + 48) + v52);
        v55 = *v53;
        v54 = v53[1];
        v56 = (*(a1 + 56) + v52);
        v58 = *v56;
        v57 = v56[1];

        if (!*((v92)(v59) + 16))
        {
          break;
        }

        sub_10000698C(v55, v54);
        if ((v60 & 1) == 0)
        {
          break;
        }

        if (!v47)
        {
          goto LABEL_37;
        }
      }

      type metadata accessor for ConnectedParticipant();
      v61 = swift_allocObject();
      *(v61 + 48) = 512;
      *(v61 + 72) = 0;
      *(v61 + 56) = &_swiftEmptyDictionarySingleton;
      *(v61 + 64) = 0;
      *(v61 + 32) = v58;
      *(v61 + 40) = v57;
      *(v61 + 16) = v55;
      *(v61 + 24) = v54;
      *(v61 + 88) = &off_1004CFEC0;
      swift_unknownObjectUnownedInit();
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v63 = *(v93 + 56);
      *(v93 + 56) = 0x8000000000000000;
      v64 = sub_10000698C(v55, v54);
      v66 = v63[2];
      v67 = (v65 & 1) == 0;
      v68 = __OFADD__(v66, v67);
      v69 = v66 + v67;
      if (v68)
      {
        goto LABEL_63;
      }

      v70 = v65;
      if (v63[3] < v69)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_50;
      }

      v76 = v64;
      sub_100376E18();
      v64 = v76;
      v72 = v63;
      if (v70)
      {
LABEL_35:
        *(v72[7] + 8 * v64) = v61;

        goto LABEL_36;
      }

LABEL_51:
      v72[(v64 >> 6) + 8] |= 1 << v64;
      v73 = (v72[6] + 16 * v64);
      *v73 = v55;
      v73[1] = v54;
      *(v72[7] + 8 * v64) = v61;
      v74 = v72[2];
      v68 = __OFADD__(v74, 1);
      v75 = v74 + 1;
      if (v68)
      {
        goto LABEL_64;
      }

      v72[2] = v75;
LABEL_36:
      *(v93 + 56) = v72;
      swift_endAccess();
      a1 = v91;
      if (!v47)
      {
        goto LABEL_37;
      }
    }

    sub_100376108(v69, isUniquelyReferenced_nonNull_native);
    v64 = sub_10000698C(v55, v54);
    if ((v70 & 1) != (v71 & 1))
    {
      goto LABEL_67;
    }

LABEL_50:
    v72 = v63;
    if (v70)
    {
      goto LABEL_35;
    }

    goto LABEL_51;
  }

  while (1)
  {
LABEL_15:
    while (1)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v16 = (*(v5 + 48) + ((v13 << 10) | (16 * v15)));
      v17 = *v16;
      v18 = v16[1];
      v19 = *(a1 + 16);

      if (!v19)
      {
        break;
      }

      sub_10000698C(v17, v18);
      if ((v20 & 1) == 0)
      {
        break;
      }

      if (!v11)
      {
        goto LABEL_11;
      }
    }

    v21 = *(v2 + 104);
    if (!v21)
    {
      break;
    }

    v23 = (v92)(v22);
    if (!*(v23 + 16))
    {
      goto LABEL_61;
    }

    v24 = v23;
    v25 = sub_10000698C(v17, v18);
    if ((v26 & 1) == 0)
    {
      goto LABEL_62;
    }

    v90 = v17;
    v27 = *(*(v24 + 56) + 8 * v25);

    v28 = (*(*v21 + 224))(v27);
    v30 = v29;

    v31 = v30;
    v5 = v89;
    if (v31 >> 60 != 15)
    {
      sub_100045968(v28, v31);
      if (qword_100535DE0 != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      sub_100015AFC(v32, qword_100535DE8);

      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v94[0] = swift_slowAlloc();
        *v35 = 136315394;
        v36 = _typeName(_:qualified:)();
        v38 = sub_10002C9C8(v36, v37, v94);
        v2 = v93;

        *(v35 + 4) = v38;
        v5 = v89;
        *(v35 + 12) = 2082;
        *(v35 + 14) = sub_10002C9C8(v90, v18, v94);
        _os_log_impl(&_mh_execute_header, v33, v34, "[%s] remove enqueued messages for removed participant: %{public}s", v35, 0x16u);
        swift_arrayDestroy();
      }
    }

    swift_beginAccess();
    v39 = sub_10000698C(v90, v18);
    v41 = v40;

    if (v41)
    {
      v42 = swift_isUniquelyReferenced_nonNull_native();
      v43 = *(v2 + 56);
      *(v2 + 56) = 0x8000000000000000;
      if (!v42)
      {
        sub_100376E18();
      }

      sub_1001DEE44(v39, v43);
      *(v2 + 56) = v43;
    }

    swift_endAccess();
    a1 = v91;
    if (!v11)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_67:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_100372A54(char a1, uint64_t a2, unint64_t a3)
{
  v6 = v3[5] == a2 && v3[6] == a3;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    sub_100372D34(a1 & 1);
  }

  else
  {
    v8 = (*(*v3 + 200))();
    if (*(v8 + 16) && (v9 = sub_10000698C(a2, a3), (v10 & 1) != 0))
    {
      v11 = *(*(v8 + 56) + 8 * v9);

      sub_1003733C8(a1 & 1, v11);
    }

    else
    {

      if (qword_100535DE0 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      sub_100015AFC(v12, qword_100535DE8);

      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *v15 = 136315650;
        v16 = _typeName(_:qualified:)();
        v18 = sub_10002C9C8(v16, v17, &v20);

        *(v15 + 4) = v18;
        *(v15 + 12) = 2080;
        *(v15 + 14) = sub_10002C9C8(0xD00000000000001ELL, 0x8000000100443060, &v20);
        *(v15 + 22) = 2082;
        *(v15 + 24) = sub_10002C9C8(a2, a3, &v20);
        _os_log_impl(&_mh_execute_header, v13, v14, "[%s] %s Could not find participant: %{public}s.", v15, 0x20u);
        swift_arrayDestroy();
      }

      sub_100377358();
      swift_allocError();
      *v19 = 1;
      swift_willThrow();
    }
  }
}

void sub_100372D34(int a1)
{
  v2 = v1;
  v3 = a1;
  if ((((*(*v1 + 224))() ^ a1) & 1) == 0)
  {
    if (qword_100535DE0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100015AFC(v4, qword_100535DE8);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v45[0] = swift_slowAlloc();
      *v7 = 136315650;
      v8 = _typeName(_:qualified:)();
      v10 = sub_10002C9C8(v8, v9, v45);

      *(v7 + 4) = v10;
      *(v7 + 12) = 2080;
      *(v7 + 14) = sub_10002C9C8(0xD000000000000014, 0x8000000100443320, v45);
      *(v7 + 22) = 2080;
      LOBYTE(v44[0]) = v3 & 1;
      v11 = String.init<A>(describing:)();
      v13 = sub_10002C9C8(v11, v12, v45);

      *(v7 + 24) = v13;
      _os_log_impl(&_mh_execute_header, v5, v6, "[%s] %s Cannot transition to same transport type: %s.", v7, 0x20u);
      swift_arrayDestroy();
    }

    sub_100377358();
    swift_allocError();
    v15 = 0;
LABEL_15:
    *v14 = v15;
    swift_willThrow();
    return;
  }

  v16 = (*(*v1 + 200))();
  sub_1002FD8A8(v16);
  v18 = v17;
  v20 = v19;

  if (!v18)
  {
    if (qword_100535DE0 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100015AFC(v21, qword_100535DE8);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v45[0] = swift_slowAlloc();
      *v24 = 136315394;
      v25 = _typeName(_:qualified:)();
      v27 = sub_10002C9C8(v25, v26, v45);

      *(v24 + 4) = v27;
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_10002C9C8(0xD000000000000014, 0x8000000100443320, v45);
      _os_log_impl(&_mh_execute_header, v22, v23, "[%s] %s Could not find host participant.", v24, 0x16u);
      swift_arrayDestroy();
    }

    sub_100377358();
    swift_allocError();
    v15 = 1;
    goto LABEL_15;
  }

  swift_beginAccess();
  *(v2 + 65) = v3 & 1;
  sub_100371A14();
  if (v3)
  {
    (*(*v20 + 312))();
LABEL_26:

    return;
  }

  v28 = *(v2 + 104);
  if (v28)
  {
    v29 = *(*v28 + 224);

    v30 = v29(v20);
    v32 = v31;

    if (v32 >> 60 == 15)
    {
      goto LABEL_26;
    }

    if (qword_100535DE0 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100015AFC(v33, qword_100535DE8);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      buf = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v44[0] = v46;
      *buf = 136315138;
      v36 = _typeName(_:qualified:)();
      v38 = v30;
      v39 = v32;
      v40 = sub_10002C9C8(v36, v37, v44);

      *(buf + 4) = v40;
      v32 = v39;
      v30 = v38;
      _os_log_impl(&_mh_execute_header, v34, v35, "[%s] Moving enqueued messages to transition buffer.", buf, 0xCu);
      sub_100026A44(v46);
    }

    swift_beginAccess();
    if (*(v2 + 80) >> 60 == 15)
    {

      v41 = *(v2 + 72);
      v42 = *(v2 + 80);
      *(v2 + 72) = v30;
      *(v2 + 80) = v32;
      sub_100045968(v41, v42);
      return;
    }

    swift_beginAccess();
    if (*(v2 + 80) >> 60 != 15)
    {
      Data.append(_:)();
      swift_endAccess();
      sub_100045968(v30, v32);
      goto LABEL_26;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1003733C8(int a1, uint64_t *a2)
{
  v3 = v2;
  if ((*(*a2 + 168))() != 2)
  {
    if (qword_100535DE0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100015AFC(v14, qword_100535DE8);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_12;
    }

    v9 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v9 = 136315394;
    v15 = _typeName(_:qualified:)();
    v17 = sub_10002C9C8(v15, v16, &v35);

    *(v9 + 4) = v17;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_10002C9C8(0xD000000000000018, 0x8000000100443340, &v35);
    v13 = "[%s] %s Cannot begin transition while already transitioning.";
    goto LABEL_11;
  }

  if ((((*(*a2 + 144))() ^ a1) & 1) == 0)
  {
    if (qword_100535DE0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100015AFC(v6, qword_100535DE8);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_12;
    }

    v9 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v9 = 136315394;
    v10 = _typeName(_:qualified:)();
    v12 = sub_10002C9C8(v10, v11, &v35);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_10002C9C8(0xD000000000000018, 0x8000000100443340, &v35);
    v13 = "[%s] %s Cannot transition to current transport type.";
LABEL_11:
    _os_log_impl(&_mh_execute_header, v7, v8, v13, v9, 0x16u);
    swift_arrayDestroy();

LABEL_12:

    sub_100377358();
    swift_allocError();
    *v18 = 0;
    swift_willThrow();
    return;
  }

  v19 = (*(*a2 + 176))(a1 & 1);
  if (a1)
  {
    (*(*a2 + 312))(v19);
  }

  else
  {
    v20 = *(v2 + 104);
    if (v20)
    {
      v21 = *(*v20 + 224);

      v22 = v21(a2);
      v24 = v23;

      if (v24 >> 60 != 15)
      {
        if (qword_100535DE0 != -1)
        {
          swift_once();
        }

        v25 = type metadata accessor for Logger();
        sub_100015AFC(v25, qword_100535DE8);

        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v26, v27))
        {
          v34 = v27;
          v28 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          *v28 = 136315394;
          v29 = _typeName(_:qualified:)();
          v31 = sub_10002C9C8(v29, v30, &v35);

          *(v28 + 4) = v31;
          *(v28 + 12) = 2082;
          *(v28 + 14) = sub_10002C9C8(a2[2], a2[3], &v35);
          _os_log_impl(&_mh_execute_header, v26, v34, "[%s] Immediately sending scheduled messages for %{public}s.", v28, 0x16u);
          swift_arrayDestroy();
        }

        swift_unknownObjectUnownedLoadStrong();
        v32 = *(v3 + 24);
        ObjectType = swift_getObjectType();
        (*(v32 + 16))(v3, v22, v24, a2, 0, ObjectType, v32);
        swift_unknownObjectRelease();
        sub_100045968(v22, v24);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100373990(char a1, uint64_t a2, uint64_t a3)
{
  v6 = v3[5] == a2 && v3[6] == a3;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    sub_100373C3C(a1 & 1);
  }

  else
  {
    v8 = (*(*v3 + 200))();
    if (*(v8 + 16) && (v9 = sub_10000698C(a2, a3), (v10 & 1) != 0))
    {
      v11 = *(*(v8 + 56) + 8 * v9);

      sub_100374124(a1 & 1, v11);
    }

    else
    {

      if (qword_100535DE0 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      sub_100015AFC(v12, qword_100535DE8);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *v15 = 136315394;
        v16 = _typeName(_:qualified:)();
        v18 = sub_10002C9C8(v16, v17, &v20);

        *(v15 + 4) = v18;
        *(v15 + 12) = 2080;
        *(v15 + 14) = sub_10002C9C8(0xD00000000000001CLL, 0x8000000100443080, &v20);
        _os_log_impl(&_mh_execute_header, v13, v14, "[%s] %s Could not find host participant.", v15, 0x16u);
        swift_arrayDestroy();
      }

      sub_100377358();
      swift_allocError();
      *v19 = 1;
      swift_willThrow();
    }
  }
}

void sub_100373C3C(unsigned __int8 a1)
{
  v2 = v1;
  v4 = *(*v1 + 248);
  v5 = v4();
  if (v5 == 2 || ((v5 ^ a1) & 1) != 0)
  {
    if (qword_100535DE0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100015AFC(v11, qword_100535DE8);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v34[0] = v35;
      *v14 = 136315906;
      v15 = _typeName(_:qualified:)();
      v17 = sub_10002C9C8(v15, v16, v34);

      *(v14 + 4) = v17;
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_10002C9C8(0xD000000000000012, 0x80000001004432E0, v34);
      *(v14 + 22) = 2080;
      v18 = String.init<A>(describing:)();
      v20 = sub_10002C9C8(v18, v19, v34);

      *(v14 + 24) = v20;
      *(v14 + 32) = 2080;
      (v4)(v21);
      v22 = String.init<A>(describing:)();
      v24 = sub_10002C9C8(v22, v23, v34);

      *(v14 + 34) = v24;
      _os_log_impl(&_mh_execute_header, v12, v13, "[%s] %s Cannot end transition to: %s in state: %s.", v14, 0x2Au);
      swift_arrayDestroy();
    }

    sub_100377358();
    swift_allocError();
    v26 = 0;
  }

  else
  {
    v6 = (*(*v1 + 200))();
    sub_1002FD8A8(v6);
    v8 = v7;
    v10 = v9;

    if (v8)
    {

      swift_beginAccess();
      *(v2 + 65) = 2;
      sub_100371A14();
      swift_beginAccess();
      *(v2 + 64) = a1 & 1;
      sub_100371788();
      sub_100374A78(v10);

      return;
    }

    if (qword_100535DE0 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100015AFC(v27, qword_100535DE8);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v34[0] = swift_slowAlloc();
      *v30 = 136315394;
      v31 = _typeName(_:qualified:)();
      v33 = sub_10002C9C8(v31, v32, v34);

      *(v30 + 4) = v33;
      *(v30 + 12) = 2080;
      *(v30 + 14) = sub_10002C9C8(0xD000000000000012, 0x80000001004432E0, v34);
      _os_log_impl(&_mh_execute_header, v28, v29, "[%s] %s Could not find host participant.", v30, 0x16u);
      swift_arrayDestroy();
    }

    sub_100377358();
    swift_allocError();
    v26 = 1;
  }

  *v25 = v26;
  swift_willThrow();
}

uint64_t sub_100374124(unsigned __int8 a1, uint64_t a2)
{
  v4 = (*(*a2 + 168))();
  if (v4 == 2 || ((v4 ^ a1) & 1) != 0)
  {
    if (qword_100535DE0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100015AFC(v6, qword_100535DE8);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v9 = 136315906;
      v10 = _typeName(_:qualified:)();
      v12 = sub_10002C9C8(v10, v11, &v20);

      *(v9 + 4) = v12;
      *(v9 + 12) = 2080;
      *(v9 + 14) = sub_10002C9C8(0xD000000000000016, 0x8000000100443300, &v20);
      *(v9 + 22) = 2080;
      v13 = String.init<A>(describing:)();
      v15 = sub_10002C9C8(v13, v14, &v20);

      *(v9 + 24) = v15;
      *(v9 + 32) = 2080;
      type metadata accessor for ConnectedParticipant();

      v16 = String.init<A>(describing:)();
      v18 = sub_10002C9C8(v16, v17, &v20);

      *(v9 + 34) = v18;
      _os_log_impl(&_mh_execute_header, v7, v8, "[%s] %s Cannot end transition to: %s for participant: %s.", v9, 0x2Au);
      swift_arrayDestroy();
    }

    sub_100377358();
    swift_allocError();
    *v19 = 0;
    return swift_willThrow();
  }

  else
  {
    (*(*a2 + 176))(2);
    return (*(*a2 + 152))(a1 & 1);
  }
}

void sub_100374434(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *v3;
  if (v3[5] != a2 || v3[6] != a3)
  {
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      if (qword_100535DE0 != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      sub_100015AFC(v29, qword_100535DE8);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v45[0] = swift_slowAlloc();
        *v32 = 136315394;
        v33 = _typeName(_:qualified:)();
        v35 = sub_10002C9C8(v33, v34, v45);

        *(v32 + 4) = v35;
        *(v32 + 12) = 2080;
        *(v32 + 14) = sub_10002C9C8(0xD00000000000001FLL, 0x80000001004430A0, v45);
        _os_log_impl(&_mh_execute_header, v30, v31, "[%s] %s Should not cancel transition for another participant.", v32, 0x16u);
        swift_arrayDestroy();
      }

      goto LABEL_21;
    }

    v6 = *v3;
  }

  v8 = *(v6 + 248);
  v9 = v8();
  if (v9 == 2 || ((v9 ^ a1) & 1) != 0)
  {
    if (qword_100535DE0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100015AFC(v15, qword_100535DE8);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v45[0] = swift_slowAlloc();
      *v18 = 136315906;
      v19 = _typeName(_:qualified:)();
      v21 = sub_10002C9C8(v19, v20, v45);

      *(v18 + 4) = v21;
      *(v18 + 12) = 2080;
      *(v18 + 14) = sub_10002C9C8(0xD00000000000001FLL, 0x80000001004430A0, v45);
      *(v18 + 22) = 2080;
      v46 = a1 & 1;
      v22 = String.init<A>(describing:)();
      v24 = sub_10002C9C8(v22, v23, v45);

      *(v18 + 24) = v24;
      *(v18 + 32) = 2080;
      v46 = (v8)(v25);
      v26 = String.init<A>(describing:)();
      v28 = sub_10002C9C8(v26, v27, v45);

      *(v18 + 34) = v28;
      _os_log_impl(&_mh_execute_header, v16, v17, "[%s] %s Cannot cancel transition to: %s in state: %s.", v18, 0x2Au);
      swift_arrayDestroy();
    }

LABEL_21:
    sub_100377358();
    swift_allocError();
    v37 = 0;
    goto LABEL_22;
  }

  v10 = (*(*v3 + 200))();
  sub_1002FD8A8(v10);
  v12 = v11;
  v14 = v13;

  if (v12)
  {

    swift_beginAccess();
    *(v4 + 65) = 2;
    sub_100371A14();
    sub_100374A78(v14);

    return;
  }

  if (qword_100535DE0 != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  sub_100015AFC(v38, qword_100535DE8);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v45[0] = swift_slowAlloc();
    *v41 = 136315394;
    v42 = _typeName(_:qualified:)();
    v44 = sub_10002C9C8(v42, v43, v45);

    *(v41 + 4) = v44;
    *(v41 + 12) = 2080;
    *(v41 + 14) = sub_10002C9C8(0xD00000000000001FLL, 0x80000001004430A0, v45);
    _os_log_impl(&_mh_execute_header, v39, v40, "[%s] %s Could not find host participant.", v41, 0x16u);
    swift_arrayDestroy();
  }

  sub_100377358();
  swift_allocError();
  v37 = 1;
LABEL_22:
  *v36 = v37;
  swift_willThrow();
}

uint64_t sub_100374A78(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = v1[11];
  v5 = v1[12];
  if (v5 >> 60 != 15)
  {
    v27 = v1[11];
    v28 = v1[12];
    sub_1001C3FE0(v4, v5);
    if (qword_100535DE0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100015AFC(v6, qword_100535DE8);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v30[0] = v10;
      *v9 = 136315138;
      v11 = _typeName(_:qualified:)();
      v13 = sub_10002C9C8(v11, v12, v30);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "[%s] Flushing incoming message buffer.", v9, 0xCu);
      sub_100026A44(v10);
    }

    swift_unknownObjectUnownedLoadStrong();
    v14 = v2[3];
    ObjectType = swift_getObjectType();
    (*(v14 + 8))(v2, v27, v28, a1, ObjectType, v14);
    swift_unknownObjectRelease();
    sub_100045968(v27, v28);
    v4 = v2[11];
    v5 = v2[12];
  }

  *(v2 + 11) = xmmword_10045A7C0;
  sub_100045968(v4, v5);
  swift_beginAccess();
  v16 = v2[9];
  v17 = v2[10];
  if (v17 >> 60 != 15)
  {
    sub_1001C3FE0(v2[9], v2[10]);
    if (qword_100535DE0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100015AFC(v18, qword_100535DE8);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v29 = v22;
      *v21 = 136315138;
      v23 = _typeName(_:qualified:)();
      v25 = sub_10002C9C8(v23, v24, &v29);

      *(v21 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v19, v20, "[%s] Flushing outgoing message buffer.", v21, 0xCu);
      sub_100026A44(v22);
    }

    (*(*v2 + 440))(v16, v17, *(a1 + 16), *(a1 + 24));
    sub_100045968(v16, v17);
    v16 = v2[9];
    v17 = v2[10];
  }

  *(v2 + 9) = xmmword_10045A7C0;
  return sub_100045968(v16, v17);
}

void sub_100374E68(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  v5 = v4;
  v10 = (*(*v4 + 200))();
  if (*(v10 + 16) && (v11 = sub_10000698C(a2, a3), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 8 * v11);

    v15 = (*(*v5 + 248))(v14);
    if (v15 != 2 && ((v15 ^ a4) & 1) == 0)
    {
      if ((a4 & 1) == 0)
      {
        swift_beginAccess();
        if (v5[12] >> 60 == 15)
        {

          sub_100020E0C(a1, v40);
          swift_dynamicCast();
          v32 = v5[11];
          v33 = v5[12];
          *(v5 + 11) = v39[0];
          sub_100045968(v32, v33);
          return;
        }

        sub_100020E0C(a1, v40);
        swift_dynamicCast();
        v34 = v42;
        v35 = v43;
        swift_beginAccess();
        if (v5[12] >> 60 != 15)
        {
          Data.append(_:)();
          swift_endAccess();

          sub_1001C4034(v34, v35);
          return;
        }

        goto LABEL_31;
      }

      sub_100020E0C(a1, v40);
      sub_1001BC5A8(&qword_1005229E0, &qword_10045A7D0);
      swift_dynamicCast();
      v16 = v41;
      v17 = sub_10036C484();
      v18 = *(v17 + 1);
      *&v41 = *v17;
      *(&v41 + 1) = v18;
      swift_bridgeObjectRetain_n();
      AnyHashable.init<A>(_:)();
      if (*(v16 + 16))
      {
        v19 = sub_10001BF64(v40);
        v21 = v20;

        if (v21)
        {
          sub_100020E0C(*(v16 + 56) + 32 * v19, v39);
          sub_10001BF10(v40);
          sub_1001C4088(v39, &v41);
          swift_dynamicCast();
          v22 = v42;
          v23 = v43;
          swift_beginAccess();
          if (v5[12] >> 60 == 15)
          {

            v24 = v5[11];
            v25 = v5[12];
            v5[11] = v22;
            v5[12] = v23;
            sub_1001C3FE0(v22, v23);
            sub_100045968(v24, v25);
          }

          else
          {
            swift_beginAccess();
            if (v5[12] >> 60 == 15)
            {
LABEL_32:
              __break(1u);
              return;
            }

            Data.append(_:)();
            swift_endAccess();
          }

          v36 = (*(*v13 + 256))(v40);
          if (!__OFADD__(*v37, 1))
          {
            ++*v37;
            v36(v40, 0);

            sub_1001C4034(v22, v23);
            return;
          }

          goto LABEL_30;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    (*(*v13 + 296))(a1);
  }

  else
  {

    if (qword_100535DE0 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100015AFC(v26, qword_100535DE8);

    oslog = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v27))
    {
      v28 = swift_slowAlloc();
      v40[0] = swift_slowAlloc();
      *v28 = 136315650;
      v29 = _typeName(_:qualified:)();
      v31 = sub_10002C9C8(v29, v30, v40);

      *(v28 + 4) = v31;
      *(v28 + 12) = 2080;
      *(v28 + 14) = sub_10002C9C8(0xD000000000000019, 0x80000001004430C0, v40);
      *(v28 + 22) = 2080;
      *(v28 + 24) = sub_10002C9C8(a2, a3, v40);
      _os_log_impl(&_mh_execute_header, oslog, v27, "[%s] %s Could not find participant: %s.", v28, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

void sub_10037548C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = (*(*v4 + 200))();
  if (*(v10 + 16))
  {
    v11 = sub_10000698C(a3, a4);
    if (v12)
    {
      v13 = *(*(v10 + 56) + 8 * v11);

      if ((*(*v5 + 248))(v14) == 2)
      {
        if ((*(*v5 + 224))())
        {
          v15 = v5[13];
          if (v15)
          {
LABEL_6:
            v16 = *(*v15 + 216);

            v16(a1, a2, v13);

LABEL_24:

            return;
          }

          __break(1u);
          goto LABEL_26;
        }

        v26 = (*(*v13 + 168))();
        if (v26 == 2)
        {
          if ((*(*v13 + 144))())
          {
            v15 = v5[13];
            if (v15)
            {
              goto LABEL_6;
            }

            __break(1u);
            goto LABEL_18;
          }
        }

        else if (v26)
        {
          v15 = v5[13];
          if (v15)
          {
            goto LABEL_6;
          }

          __break(1u);
        }

        swift_unknownObjectUnownedLoadStrong();
        v27 = v5[3];
        ObjectType = swift_getObjectType();
        (*(v27 + 16))(v5, a1, a2, v13, 0, ObjectType, v27);
        swift_unknownObjectRelease();
        goto LABEL_24;
      }

      swift_beginAccess();
      if (v5[10] >> 60 == 15)
      {

        v24 = v5[9];
        v25 = v5[10];
        v5[9] = a1;
        v5[10] = a2;
        sub_1001C3FE0(a1, a2);
        sub_100045968(v24, v25);
        return;
      }

LABEL_18:
      swift_beginAccess();
      if (v5[10] >> 60 != 15)
      {
        Data.append(_:)();
        swift_endAccess();
        goto LABEL_24;
      }

LABEL_26:
      __break(1u);
      return;
    }
  }

  if (qword_100535DE0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100015AFC(v17, qword_100535DE8);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v29[0] = swift_slowAlloc();
    *v20 = 136315650;
    v21 = _typeName(_:qualified:)();
    v23 = sub_10002C9C8(v21, v22, v29);

    *(v20 + 4) = v23;
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_10002C9C8(0xD000000000000014, 0x80000001004430E0, v29);
    *(v20 + 22) = 2080;
    *(v20 + 24) = sub_10002C9C8(a3, a4, v29);
    _os_log_impl(&_mh_execute_header, v18, v19, "[%s] %s Could not find participant: %s.", v20, 0x20u);
    swift_arrayDestroy();
  }
}

uint64_t sub_100375904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectUnownedLoadStrong();
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  (*(v7 + 8))(v3, a2, a3, a1, ObjectType, v7);

  return swift_unknownObjectRelease();
}

uint64_t sub_100375994()
{
  sub_100044EC4(v0 + 16);

  sub_100045968(*(v0 + 72), *(v0 + 80));
  sub_100045968(*(v0 + 88), *(v0 + 96));

  return swift_deallocClassInstance();
}

unint64_t sub_100375A54(uint64_t a1)
{
  v2 = static Hasher._hash(seed:_:)();

  return sub_100376A04(a1, v2);
}

unint64_t sub_100375A98(uint64_t a1)
{
  Hasher.init(_seed:)();
  (*(*a1 + 320))(v4);
  v2 = Hasher._finalize()();

  return sub_100376A70(a1, v2);
}

double sub_100375B2C@<D0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v3 = v2;
  v5 = sub_100375A98(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100376C9C();
      v9 = v11;
    }

    *a2 = *(*(v9 + 56) + 16 * v7);
    sub_100376520(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = xmmword_10045A7C0;
  }

  return result;
}

void sub_100375BCC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1001BC5A8(&qword_100528658, qword_10045ACC8);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v3;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = (*(v5 + 56) + 32 * v19);
      if (v4)
      {
        sub_1001C4088(v21, v32);
      }

      else
      {
        sub_100020E0C(v21, v32);
      }

      v22 = static Hasher._hash(seed:_:)();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      sub_1001C4088(v32, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_100375E44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1001BC5A8(&qword_100528650, &qword_10045ACC0);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v30 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {

        sub_1001C3FE0(v30, *(&v30 + 1));
      }

      Hasher.init(_seed:)();
      (*(*v20 + 320))(v31);
      v21 = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v30;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_100376108(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1001BC5A8(&qword_100528648, &unk_10045ACB0);
  v35 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v25 = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

uint64_t sub_1003763B0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      result = static Hasher._hash(seed:_:)();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = (v10 + 8 * v3);
          if (v3 != v6 || v15 >= v11 + 1)
          {
            *v15 = *v11;
          }

          v16 = *(a2 + 56);
          v17 = (v16 + 32 * v3);
          v18 = (v16 + 32 * v6);
          if (v3 != v6 || v17 >= v18 + 2)
          {
            v9 = v18[1];
            *v17 = *v18;
            v17[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

void sub_100376520(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      Hasher.init(_seed:)();
      v10 = *(*v9 + 320);

      v10(v22);
      v11 = Hasher._finalize()();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }
}

_OWORD *sub_100376700(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_100375A54(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_100376B20();
      v9 = v17;
      goto LABEL_8;
    }

    sub_100375BCC(v14, a3 & 1);
    v9 = sub_100375A54(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = (v19[7] + 32 * v9);
    sub_100026A44(v20);

    return sub_1001C4088(a1, v20);
  }

  else
  {

    return sub_10037699C(v9, a2, a1, v19);
  }
}

void sub_10037682C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100375A98(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100375E44(v16, a4 & 1);
      v11 = sub_100375A98(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        type metadata accessor for ConnectedParticipant();
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_100376C9C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 16 * v11);
    v23 = *v22;
    v24 = v22[1];
    *v22 = a1;
    v22[1] = a2;

    sub_1001C4034(v23, v24);
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  *(v21[6] + 8 * v11) = a3;
  v25 = (v21[7] + 16 * v11);
  *v25 = a1;
  v25[1] = a2;
  v26 = v21[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v27;
}

_OWORD *sub_10037699C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1001C4088(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_100376A04(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100376A70(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      v7 = *(*(v2 + 48) + 8 * v4);
      if (*(v7 + 16) == *(a1 + 16) && *(v7 + 24) == *(a1 + 24))
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void sub_100376B20()
{
  v1 = v0;
  sub_1001BC5A8(&qword_100528658, qword_10045ACC8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        sub_100020E0C(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_1001C4088(v19, (*(v4 + 56) + 32 * v17));
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

      v16 = *(v2 + 64 + 8 * v8);
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

void sub_100376C9C()
{
  v1 = v0;
  sub_1001BC5A8(&qword_100528650, &qword_10045ACC0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;

        sub_1001C3FE0(v18, *(&v18 + 1));
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

      v16 = *(v2 + 64 + 8 * v8);
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

void sub_100376E18()
{
  v1 = v0;
  sub_1001BC5A8(&qword_100528648, &unk_10045ACB0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_100376F88(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a1;
  type metadata accessor for GroupSessionRemoteControlConnectionPushScheduler();
  v11 = swift_allocObject();

  return sub_10037718C(v10, a2, a3, v11, a5, a6);
}

void *sub_100377000(char a1, uint64_t a2, void *a3, void *a4)
{
  a4[5] = &_swiftEmptyDictionarySingleton;
  a4[6] = 0;
  a4[4] = &off_1004CFEB0;
  swift_unknownObjectUnownedInit();

  a4[2] = a3;
  if (a1)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.5;
  }

  v8 = swift_allocObject();
  swift_weakInit();
  v9 = objc_allocWithZone(MSVTimer);
  v15[4] = sub_10001722C;
  v15[5] = v8;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_100003D98;
  v15[3] = &unk_1004D0038;
  v10 = _Block_copy(v15);
  v11 = a3;

  v12 = [v9 initWithInterval:1 repeats:v11 queue:v10 block:v7];
  _Block_release(v10);

  v13 = a4[6];
  a4[6] = v12;

  return a4;
}

void *sub_10037718C(char a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  a4[6] = 0;
  a4[4] = a6;
  a4[5] = &_swiftEmptyDictionarySingleton;
  swift_unknownObjectUnownedInit();
  swift_unknownObjectRelease();
  a4[2] = a3;
  if (a1)
  {
    v9 = 1.0;
  }

  else
  {
    v9 = 0.5;
  }

  v10 = swift_allocObject();
  swift_weakInit();
  v11 = objc_allocWithZone(MSVTimer);
  v17[4] = sub_1003777E8;
  v17[5] = v10;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_100003D98;
  v17[3] = &unk_1004D0060;
  v12 = _Block_copy(v17);
  v13 = a3;

  v14 = [v11 initWithInterval:1 repeats:v13 queue:v12 block:v9];
  _Block_release(v12);

  v15 = a4[6];
  a4[6] = v14;

  return a4;
}

unint64_t sub_100377358()
{
  result = qword_100528140;
  if (!qword_100528140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100528140);
  }

  return result;
}

unint64_t sub_1003773B0()
{
  result = qword_100528148;
  if (!qword_100528148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100528148);
  }

  return result;
}

unint64_t sub_100377408()
{
  result = qword_100528150;
  if (!qword_100528150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100528150);
  }

  return result;
}

unint64_t sub_100377460()
{
  result = qword_100528158;
  if (!qword_100528158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100528158);
  }

  return result;
}

unint64_t sub_1003774B8()
{
  result = qword_100528160;
  if (!qword_100528160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100528160);
  }

  return result;
}

unint64_t sub_100377514()
{
  result = qword_100528168;
  if (!qword_100528168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100528168);
  }

  return result;
}

unint64_t sub_10037756C()
{
  result = qword_100528170;
  if (!qword_100528170)
  {
    type metadata accessor for ConnectedParticipant();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100528170);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GroupSessionRemoteControlConnectionState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = v7 - 2;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for GroupSessionRemoteControlConnectionState(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_100377734(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_100377748(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

unint64_t sub_10037778C()
{
  result = qword_100528640;
  if (!qword_100528640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100528640);
  }

  return result;
}

uint64_t sub_1003777F4()
{
  v0 = type metadata accessor for Logger();
  sub_1001C4098(v0, qword_100536388);
  sub_100015AFC(v0, qword_100536388);
  v1 = *sub_1001D8C64();
  return Logger.init(_:)();
}

void sub_100377908(uint64_t a1@<X0>, void *a3@<X8>)
{
  _StringGuts.grow(_:)(37);
  v5._countAndFlagsBits = 60;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  v6._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 8250;
  v7._object = 0xE200000000000000;
  String.append(_:)(v7);
  _print_unlocked<A, B>(_:_:)();
  v8._countAndFlagsBits = 0x747265737361200ALL;
  v8._object = 0xED00003D736E6F69;
  String.append(_:)(v8);
  swift_beginAccess();

  sub_100377BA8(v9);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v11 = MRCreateIndentedDebugDescriptionFromDictionary();

  if (v11)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15._countAndFlagsBits = v12;
    v15._object = v14;
    String.append(_:)(v15);

    v16._countAndFlagsBits = 0x76726573626F200ALL;
    v16._object = 0xEC0000003D737265;
    String.append(_:)(v16);
    v17 = [*(a1 + OBJC_IVAR___MRDGroupSessionAssertionManager_observers) allObjects];
    sub_1001BC5A8(&unk_1005286B0, &qword_10045AD18);
    v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100378070(v18);

    v19 = Array._bridgeToObjectiveC()().super.isa;

    v20 = MRCreateIndentedDebugDescriptionFromArray();

    if (v20)
    {
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      v24._countAndFlagsBits = v21;
      v24._object = v23;
      String.append(_:)(v24);

      v25._countAndFlagsBits = 62;
      v25._object = 0xE100000000000000;
      String.append(_:)(v25);
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_100377BA8(uint64_t a1)
{
  v46 = type metadata accessor for UUID();
  v47 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1001BC5A8(&unk_1005286E0, &unk_10045AD30);
  v3 = __chkstk_darwin(v44);
  v43 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v42 = v40 - v5;
  v48 = a1;
  if (*(a1 + 16))
  {
    sub_1001BC5A8(&qword_1005216C8, &unk_100450040);
    v6 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v6 = &_swiftEmptyDictionarySingleton;
  }

  v7 = v48 + 64;
  v8 = 1 << *(v48 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v48 + 64);
  v11 = (v8 + 63) >> 6;
  v40[1] = v47 + 16;
  v40[0] = v47 + 32;
  v12 = v6 + 64;

  v13 = 0;
  v41 = v6;
  while (v10)
  {
LABEL_15:
    v17 = __clz(__rbit64(v10)) | (v13 << 6);
    v18 = v48;
    v19 = v47;
    v20 = v42;
    v21 = v46;
    (*(v47 + 16))(v42, *(v48 + 48) + *(v47 + 72) * v17, v46);
    v22 = (*(v18 + 56) + 16 * v17);
    v23 = *v22;
    v24 = v22[1];
    v25 = v44;
    v26 = &v20[*(v44 + 48)];
    *v26 = v23;
    *(v26 + 1) = v24;
    v27 = v20;
    v28 = v43;
    sub_10037AFB4(v27, v43);
    v29 = (v28 + *(v25 + 48));
    (*(v19 + 32))(v45, v28, v21);

    swift_dynamicCast();
    v30 = v29[1];
    *&v57 = *v29;
    *(&v57 + 1) = v30;
    swift_dynamicCast();
    v53 = v49;
    v54 = v50;
    v55 = v51;
    sub_1001C4088(&v52, v56);
    v49 = v53;
    v50 = v54;
    v51 = v55;
    sub_1001C4088(v56, &v57);
    v31 = v41;
    v32 = AnyHashable._rawHashValue(seed:)(*(v41 + 5));
    v33 = -1 << v31[32];
    v34 = v32 & ~v33;
    v35 = v34 >> 6;
    if (((-1 << v34) & ~*&v12[8 * (v34 >> 6)]) == 0)
    {
      v36 = 0;
      v37 = (63 - v33) >> 6;
      while (++v35 != v37 || (v36 & 1) == 0)
      {
        v38 = v35 == v37;
        if (v35 == v37)
        {
          v35 = 0;
        }

        v36 |= v38;
        v39 = *&v12[8 * v35];
        if (v39 != -1)
        {
          v14 = __clz(__rbit64(~v39)) + (v35 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v14 = __clz(__rbit64((-1 << v34) & ~*&v12[8 * (v34 >> 6)])) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v10 &= v10 - 1;
    *&v12[(v14 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v14;
    v15 = *(v31 + 6) + 40 * v14;
    *v15 = v49;
    *(v15 + 16) = v50;
    *(v15 + 32) = v51;
    sub_1001C4088(&v57, (*(v31 + 7) + 32 * v14));
    ++*(v31 + 2);
  }

  while (1)
  {
    v16 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v16 >= v11)
    {

      return;
    }

    v10 = *(v7 + 8 * v16);
    ++v13;
    if (v10)
    {
      v13 = v16;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

char *sub_100378070(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v12 = _swiftEmptyArrayStorage;
  result = sub_1001D382C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v12;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        sub_1001BC5A8(&unk_1005286B0, &qword_10045AD18);
        swift_dynamicCast();
        v12 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_1001D382C((v6 > 1), v7 + 1, 1);
          v3 = v12;
        }

        v3[2] = v7 + 1;
        sub_1001C4088(v11, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = a1 + 32;
      do
      {
        swift_unknownObjectRetain();
        sub_1001BC5A8(&unk_1005286B0, &qword_10045AD18);
        swift_dynamicCast();
        v12 = v3;
        v10 = v3[2];
        v9 = v3[3];
        if (v10 >= v9 >> 1)
        {
          sub_1001D382C((v9 > 1), v10 + 1, 1);
          v3 = v12;
        }

        v3[2] = v10 + 1;
        sub_1001C4088(v11, &v3[4 * v10 + 4]);
        v8 += 8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1003782F0()
{
  v1 = *(v0 + OBJC_IVAR___MRDGroupSessionAssertionManager_lock);
  os_unfair_lock_lock(v1 + 4);
  sub_10037A898(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

void sub_100378368(uint64_t a1, uint64_t a2, double a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = (*((swift_isaMask & *v3) + 0xA8))(a1, a2);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 24) = v8;
  v13[4] = sub_10037A8B0;
  v13[5] = v9;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100003D98;
  v13[3] = &unk_1004D0100;
  v10 = _Block_copy(v13);

  v11 = [objc_opt_self() timerWithInterval:0 repeats:v10 block:a3];
  _Block_release(v10);
  swift_beginAccess();
  v12 = *(v8 + 16);
  *(v8 + 16) = v11;
}

void sub_1003785A0(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v8 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = aBlock - v9;
  sub_100378A78(a1, a2, aBlock - v9);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v5 + 16))(v8, v10, v4);
  v12 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  (*(v5 + 32))(v13 + v12, v8, v4);
  v14 = objc_allocWithZone(MRGroupSessionAssertion);
  aBlock[4] = sub_10037A948;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003D98;
  aBlock[3] = &unk_1004D0178;
  v15 = _Block_copy(aBlock);

  v16 = [v14 initWithCancellationHandler:v15];
  _Block_release(v15);

  if (v16)
  {
    (*(v5 + 8))(v10, v4);
  }

  else
  {
    __break(1u);
  }
}

void sub_100378860()
{
  v1 = *(v0 + OBJC_IVAR___MRDGroupSessionAssertionManager_lock);
  os_unfair_lock_lock(v1 + 4);
  sub_100006EA4();
  os_unfair_lock_unlock(v1 + 4);
}

void sub_10037896C()
{
  v1 = *(v0 + OBJC_IVAR___MRDGroupSessionAssertionManager_lock);
  os_unfair_lock_lock(v1 + 4);
  sub_100006E8C();
  os_unfair_lock_unlock(v1 + 4);
}

void sub_100378A78(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  swift_getObjectType();
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v12 = *(v4 + OBJC_IVAR___MRDGroupSessionAssertionManager_lock);
  v29 = v4;
  v30 = a3;
  v25 = a1;
  v31 = a1;
  v32 = a2;
  v26 = sub_10037AE8C;
  v27 = &v28;
  os_unfair_lock_lock(v12 + 4);
  sub_10037B0B4(v33);
  os_unfair_lock_unlock(v12 + 4);
  if (LOBYTE(v33[0]) == 1)
  {
    sub_100379444();
  }

  if (qword_100536380 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100015AFC(v13, qword_100536388);
  (*(v9 + 16))(v11, a3, v8);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v33[0] = swift_slowAlloc();
    *v16 = 136315650;
    v17 = _typeName(_:qualified:)();
    v19 = sub_10002C9C8(v17, v18, v33);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2082;
    sub_100004978(&qword_100521B38, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    (*(v9 + 8))(v11, v8);
    v23 = sub_10002C9C8(v20, v22, v33);

    *(v16 + 14) = v23;
    *(v16 + 22) = 2082;
    *(v16 + 24) = sub_10002C9C8(v25, a2, v33);
    _os_log_impl(&_mh_execute_header, v14, v15, "[%s] Began assertion: %{public}s because: %{public}s", v16, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }
}

void sub_100378DD4(uint64_t a1)
{
  swift_getObjectType();
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v38 - v8;
  v10 = *(v1 + OBJC_IVAR___MRDGroupSessionAssertionManager_lock);
  v45 = v1;
  v46 = a1;
  v42 = sub_10037ACFC;
  v43 = &v44;
  os_unfair_lock_lock(v10 + 4);
  sub_10037AD90(v47);
  os_unfair_lock_unlock(v10 + 4);
  v11 = LOBYTE(v47[0]);
  v12 = v48;
  if (v48)
  {
    v39 = v47[1];
    v40 = v1;
    if (qword_100536380 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100015AFC(v13, qword_100536388);
    (*(v4 + 16))(v9, a1, v3);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v41 = v11;
      v47[0] = v17;
      *v16 = 136315650;
      v18 = _typeName(_:qualified:)();
      v20 = sub_10002C9C8(v18, v19, v47);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2082;
      sub_100004978(&qword_100521B38, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      (*(v4 + 8))(v9, v3);
      v24 = sub_10002C9C8(v21, v23, v47);

      *(v16 + 14) = v24;
      *(v16 + 22) = 2082;
      v25 = sub_10002C9C8(v39, v12, v47);

      *(v16 + 24) = v25;
      _os_log_impl(&_mh_execute_header, v14, v15, "[%s] Ended assertion: %{public}s with reason: %{public}s", v16, 0x20u);
      swift_arrayDestroy();
      v26 = v41;

      if (!v26)
      {
        return;
      }

LABEL_15:
      sub_100379444();
      return;
    }

    (*(v4 + 8))(v9, v3);
    if (v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v41 = LOBYTE(v47[0]);
    if (qword_100536380 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100015AFC(v27, qword_100536388);
    (*(v4 + 16))(v7, a1, v3);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v47[0] = swift_slowAlloc();
      *v30 = 136315394;
      v31 = _typeName(_:qualified:)();
      v33 = sub_10002C9C8(v31, v32, v47);

      *(v30 + 4) = v33;
      *(v30 + 12) = 2082;
      sub_100004978(&qword_100521B38, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v36 = v35;
      (*(v4 + 8))(v7, v3);
      v37 = sub_10002C9C8(v34, v36, v47);

      *(v30 + 14) = v37;
      _os_log_impl(&_mh_execute_header, v28, v29, "[%s] Attempted to end unknown assertion: %{public}s", v30, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v4 + 8))(v7, v3);
    }

    if (v41)
    {
      goto LABEL_15;
    }
  }
}

uint64_t sub_100379368(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1001C6948(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_10037A3D4();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 16 * v5);
  sub_100379ED8(v5, v7);
  *v2 = v7;
  return v10;
}

double sub_100379444()
{
  v1 = v0;
  swift_getObjectType();
  v35 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v37 = *(v5 - 8);
  v38 = v5;
  __chkstk_darwin(v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *&v0[OBJC_IVAR___MRDGroupSessionAssertionManager_lock];
  v42 = v0;
  v39 = sub_10037AA88;
  v40 = &v41;
  os_unfair_lock_lock(v8 + 4);
  sub_10037AB08(&aBlock);
  os_unfair_lock_unlock(v8 + 4);
  v9 = aBlock;
  v10 = v45;
  if (qword_100536380 != -1)
  {
    swift_once();
  }

  v36 = v9;
  v11 = type metadata accessor for Logger();
  sub_100015AFC(v11, qword_100536388);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v34 = v2;
    aBlock = v15;
    *v14 = 136315394;
    v16 = _typeName(_:qualified:)();
    v18 = sub_10002C9C8(v16, v17, &aBlock);
    v33 = v1;
    v19 = v7;
    v20 = v10;
    v21 = v18;

    *(v14 + 4) = v21;
    *(v14 + 12) = 2080;
    v22 = v36;
    if (v36)
    {
      v23 = 0x7265737361207369;
    }

    else
    {
      v23 = 0x6573736120746F6ELL;
    }

    if (v36)
    {
      v24 = 0xEC000000676E6974;
    }

    else
    {
      v24 = 0xED0000676E697472;
    }

    v25 = sub_10002C9C8(v23, v24, &aBlock);
    v10 = v20;
    v7 = v19;
    v1 = v33;

    *(v14 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v12, v13, "[%s] Notifying observers: %s", v14, 0x16u);
    swift_arrayDestroy();
    v2 = v34;
  }

  else
  {

    v22 = v36;
  }

  v26 = MRGroupSessionSubsystemGetNotificationQueue();
  v27 = swift_allocObject();
  *(v27 + 16) = v10;
  *(v27 + 24) = v22;
  *(v27 + 32) = v1;
  v48 = sub_10037AB54;
  v49 = v27;
  aBlock = _NSConcreteStackBlock;
  v45 = 1107296256;
  v46 = sub_100003D98;
  v47 = &unk_1004D01C8;
  v28 = _Block_copy(&aBlock);
  v29 = v10;
  v30 = v1;
  static DispatchQoS.unspecified.getter();
  v43 = _swiftEmptyArrayStorage;
  sub_100004978(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10037AC98();
  v31 = v35;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v28);

  (*(v2 + 8))(v4, v31);
  (*(v37 + 8))(v7, v38);

  return result;
}

id sub_1003799D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GroupSessionAssertionManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100379AF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1001BC5A8(&qword_1005286C8, &unk_10045AD20);
  v45 = v4;
  v10 = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    v50 = v8;
    v41 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v42 = (v6 + 16);
    v43 = v9;
    v44 = v6;
    v46 = (v6 + 32);
    v18 = v10 + 64;
    while (v16)
    {
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v25 = v22 | (v12 << 6);
      v26 = *(v9 + 48);
      v49 = *(v44 + 72);
      v27 = v26 + v49 * v25;
      if (v45)
      {
        (*v46)(v50, v27, v5);
        v28 = (*(v9 + 56) + 16 * v25);
        v29 = *v28;
        v47 = v28[1];
        v48 = v29;
      }

      else
      {
        (*v42)(v50, v27, v5);
        v30 = (*(v9 + 56) + 16 * v25);
        v31 = *v30;
        v47 = v30[1];
        v48 = v31;
      }

      sub_100004978(&qword_1005286C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v32 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v33 = -1 << *(v11 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v18 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v18 + 8 * v35);
          if (v39 != -1)
          {
            v19 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v34) & ~*(v18 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v46)((*(v11 + 48) + v49 * v19), v50, v5);
      v20 = (*(v11 + 56) + 16 * v19);
      v21 = v47;
      *v20 = v48;
      v20[1] = v21;
      ++*(v11 + 16);
      v9 = v43;
    }

    v23 = v12;
    while (1)
    {
      v12 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v24 = v13[v12];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v16 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v13, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

unint64_t sub_100379ED8(int64_t a1, uint64_t a2)
{
  v40 = type metadata accessor for UUID();
  v4 = *(v40 - 8);
  result = __chkstk_darwin(v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = _HashTable.previousHole(before:)();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_100004978(&qword_1005286C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 16 * a1);
          v30 = (v28 + 16 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

uint64_t sub_10037A1F8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v28 = a1;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = sub_1001C6948(a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      sub_10037A3D4();
      goto LABEL_9;
    }

    sub_100379AF0(v18, a4 & 1);
    v21 = sub_1001C6948(a3);
    if ((v19 & 1) == (v22 & 1))
    {
      v15 = v21;
      goto LABEL_9;
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_9:
  v23 = v28;
  v24 = *v5;
  if (v19)
  {
    v25 = (v24[7] + 16 * v15);
    *v25 = v28;
    v25[1] = a2;
  }

  else
  {
    (*(v10 + 16))(v12, a3, v9);
    return sub_1001C7420(v15, v12, v23, a2, v24);
  }
}

void sub_10037A3D4()
{
  v1 = v0;
  v35 = type metadata accessor for UUID();
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001BC5A8(&qword_1005286C8, &unk_10045AD20);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v33 = v3;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v37;
        v20 = *(v37 + 72) * v18;
        v21 = v34;
        v22 = v35;
        (*(v37 + 16))(v34, *(v3 + 48) + v20, v35);
        v23 = 16 * v18;
        v24 = (*(v3 + 56) + 16 * v18);
        v25 = *v24;
        v26 = v24[1];
        v27 = v36;
        (*(v19 + 32))(*(v36 + 48) + v20, v21, v22);
        v28 = (*(v27 + 56) + v23);
        *v28 = v25;
        v28[1] = v26;
        v3 = v33;

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v29;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v30 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

unint64_t sub_10037A660(uint64_t a1)
{
  v2 = sub_1001BC5A8(&unk_1005286F0, &qword_10045AD40);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1001BC5A8(&qword_1005286C8, &unk_10045AD20);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10037B024(v9, v5);
      result = sub_1001C6948(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = (v7[7] + 16 * v13);
      v17 = *(v8 + 1);
      *v16 = *v8;
      v16[1] = v17;
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
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

void sub_10037A8B0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  v3 = *(v1 + 16);
  swift_beginAccess();
  swift_beginAccess();
  *(v1 + 16) = 0;

  swift_beginAccess();
  v4 = *(v2 + 16);
  *(v2 + 16) = 0;
}

void sub_10037A948()
{
  v1 = *(*(type metadata accessor for UUID() - 8) + 80);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_100378DD4(v0 + ((v1 + 24) & ~v1));
  }
}

id sub_10037AA88@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = OBJC_IVAR___MRDGroupSessionAssertionManager_assertions;
  swift_beginAccess();
  *a1 = *(*(v3 + v4) + 16) != 0;
  v5 = *(v3 + OBJC_IVAR___MRDGroupSessionAssertionManager_observers);
  *(a1 + 8) = v5;
  return v5;
}

void *sub_10037AB08@<X0>(uint64_t a1@<X8>)
{
  result = (*(v1 + 16))(v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 8) = v5;
  }

  return result;
}

void sub_10037AB54()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = [*(v0 + 16) allObjects];
  sub_1001BC5A8(&unk_1005286B0, &qword_10045AD18);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    return;
  }

  v6 = 0;
  do
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v7 = *(v4 + 8 * v6 + 32);
      swift_unknownObjectRetain();
    }

    ++v6;
    if (v1)
    {
      v8 = &selRef_groupSessionAssertionManagerDidAssert_;
    }

    else
    {
      v8 = &selRef_groupSessionAssertionManagerDidUnassert_;
    }

    [v7 *v8];
    swift_unknownObjectRelease();
  }

  while (v5 != v6);
LABEL_13:
}

unint64_t sub_10037AC98()
{
  result = qword_100527420;
  if (!qword_100527420)
  {
    sub_1001C2EC8(&unk_100522280, &unk_10044F590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100527420);
  }

  return result;
}

uint64_t sub_10037ACFC@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = OBJC_IVAR___MRDGroupSessionAssertionManager_assertions;
  swift_beginAccess();
  v6 = sub_100379368(v3);
  v8 = v7;
  result = swift_endAccess();
  *a1 = *(*(v4 + v5) + 16) == 0;
  *(a1 + 8) = v6;
  *(a1 + 16) = v8;
  return result;
}

__n128 sub_10037AD90@<Q0>(uint64_t a1@<X8>)
{
  (*(v1 + 16))(&v5);
  if (!v2)
  {
    result = v6;
    *a1 = v5;
    *(a1 + 8) = result;
  }

  return result;
}

void sub_10037ADDC(BOOL *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = OBJC_IVAR___MRDGroupSessionAssertionManager_assertions;
  swift_beginAccess();
  *a1 = *(*(v3 + v4) + 16) != 0;
}

void *sub_10037AE48@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_10037AE8C@<X0>(BOOL *a1@<X8>)
{
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = OBJC_IVAR___MRDGroupSessionAssertionManager_assertions;
  swift_beginAccess();
  v8 = *(*(v4 + v7) + 16) == 0;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v4 + v7);
  *(v4 + v7) = 0x8000000000000000;
  sub_10037A1F8(v5, v6, v3, isUniquelyReferenced_nonNull_native);
  *(v4 + v7) = v11;
  result = swift_endAccess();
  *a1 = v8;
  return result;
}

void *sub_10037AF70@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_10037AFB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BC5A8(&unk_1005286E0, &unk_10045AD30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10037B024(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BC5A8(&unk_1005286F0, &qword_10045AD40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10037B134()
{
  v0 = type metadata accessor for Logger();
  sub_1001C4098(v0, qword_1005363A8);
  sub_100015AFC(v0, qword_1005363A8);
  v1 = *sub_1001D8C64();
  return Logger.init(_:)();
}

id sub_10037B190()
{
  result = [objc_allocWithZone(type metadata accessor for GroupSessionHomeObserver()) init];
  qword_1005385B0 = result;
  return result;
}

uint64_t *sub_10037B1C0()
{
  if (qword_1005363C0 != -1)
  {
    swift_once();
  }

  return &qword_1005385B0;
}

uint64_t sub_10037B26C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_100018D7C(0, &qword_100528778, HMHomeManager_ptr);
  *v3 = v1;
  v3[1] = sub_100009F34;

  return withCheckedContinuation<A>(isolation:function:_:)(a1, 0, 0, 0xD000000000000018, 0x800000010045AD50, sub_10037B364, 0, v4);
}

void sub_10037B364(uint64_t a1)
{
  v30 = a1;
  v1 = sub_1001BC5A8(&qword_100528780, &unk_10045AE20);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v29 = &v27 - v4;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v27 - v10;
  if (qword_1005363A0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100015AFC(v12, qword_1005363A8);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v28 = v1;
    v16 = v15;
    v17 = swift_slowAlloc();
    aBlock[0] = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_10002C9C8(0xD000000000000018, 0x800000010045AD50, aBlock);
    _os_log_impl(&_mh_execute_header, v13, v14, "[%s] - Initializing HMHomeManager", v16, 0xCu);
    sub_100026A44(v17);

    v1 = v28;
  }

  v18 = [objc_allocWithZone(HMHomeManager) initWithOptions:9];
  static Date.now.getter();
  Date.addingTimeInterval(_:)();
  v19 = *(v6 + 8);
  v19(v9, v5);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v19(v11, v5);
  v21 = v29;
  (*(v2 + 16))(v29, v30, v1);
  v22 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v23 = swift_allocObject();
  (*(v2 + 32))(v23 + v22, v21, v1);
  *(v23 + ((v3 + v22 + 7) & 0xFFFFFFFFFFFFFFF8)) = v18;
  aBlock[4] = sub_10037EBF0;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001BC53C;
  aBlock[3] = &unk_1004D0328;
  v24 = _Block_copy(aBlock);
  v25 = v18;

  v26 = [v25 _refreshBeforeDate:isa completionHandler:v24];
  _Block_release(v24);

  swift_unknownObjectRelease();
}

uint64_t sub_10037B774()
{
  *(v1 + 24) = v0;
  *(v1 + 32) = swift_getObjectType();

  return _swift_task_switch(sub_10037B7E4, 0, 0);
}

uint64_t sub_10037B7E4()
{
  v3 = (*(**(*(v0 + 24) + OBJC_IVAR___MRDGroupSessionHomeObserver_managerWrapper) + 176) + **(**(*(v0 + 24) + OBJC_IVAR___MRDGroupSessionHomeObserver_managerWrapper) + 176));
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_10037B90C;

  return v3(v0 + 16);
}

uint64_t sub_10037B90C()
{

  return _swift_task_switch(sub_10037BA08, 0, 0);
}

uint64_t sub_10037BA08()
{
  v20 = v0;
  v1 = *(v0 + 16);
  v2 = [v1 homes];

  sub_100018D7C(0, &qword_100528710, HMHome_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = sub_10037BC8C(v3);

  v5 = sub_10037E818(v4);

  if (qword_1005363A0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100015AFC(v6, qword_1005363A8);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v19[0] = swift_slowAlloc();
    *v9 = 136315394;
    v10 = _typeName(_:qualified:)();
    v12 = sub_10002C9C8(v10, v11, v19);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    sub_10037C10C(v5);
    type metadata accessor for UUID();
    v13 = Array.description.getter();
    v15 = v14;

    v16 = sub_10002C9C8(v13, v15, v19);

    *(v9 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v7, v8, "[%s - Known users: %s]", v9, 0x16u);
    swift_arrayDestroy();
  }

  v17 = *(v0 + 8);

  return v17(v5);
}

void *sub_10037BC8C(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_54;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v34 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v35 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v33 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = _swiftEmptyArrayStorage;
    v32 = v1;
    while (1)
    {
      if (v35)
      {
        isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v2 >= *(v34 + 16))
        {
          goto LABEL_48;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v33 + 8 * v2);
      }

      v5 = isUniquelyReferenced_nonNull_bridgeObject;
      v6 = __OFADD__(v2++, 1);
      if (v6)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject users];
      sub_100018D7C(0, &qword_100528748, HMUser_ptr);
      v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v37[0] = v8;
      v9 = [v5 currentUser];
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v37[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v10 = v37[0];
      v11 = [v5 owner];
      if (v11)
      {
        v12 = v11;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v37[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v10 = v37[0];
      }

      if (v36)
      {

        return v3;
      }

      v13 = v10 >> 62;
      if (v10 >> 62)
      {
        v14 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v14 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v15 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = _CocoaArrayWrapper.endIndex.getter();
        v16 = isUniquelyReferenced_nonNull_bridgeObject + v14;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v14))
        {
          goto LABEL_49;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v16 = isUniquelyReferenced_nonNull_bridgeObject + v14;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v14))
        {
          goto LABEL_49;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v15)
        {
          v17 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v16 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_28;
          }

          goto LABEL_27;
        }

LABEL_26:
        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_27;
      }

      if (v15)
      {
        goto LABEL_26;
      }

LABEL_27:
      isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v17 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_28:
      v18 = *(v17 + 16);
      v19 = *(v17 + 24);
      if (v13)
      {
        v21 = v17;
        isUniquelyReferenced_nonNull_bridgeObject = _CocoaArrayWrapper.endIndex.getter();
        v17 = v21;
        v20 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_32:
          if (((v19 >> 1) - v18) < v14)
          {
            goto LABEL_51;
          }

          v22 = v17 + 8 * v18 + 32;
          v38 = v3;
          v31 = v17;
          if (v13)
          {
            if (v20 < 1)
            {
              goto LABEL_53;
            }

            sub_10037EB8C();
            for (i = 0; i != v20; ++i)
            {
              sub_1001BC5A8(&qword_100528768, &qword_10045AE18);
              v24 = sub_1002CD614(v37, i, v10);
              v26 = *v25;
              (v24)(v37, 0);
              *(v22 + 8 * i) = v26;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v3 = v38;
          v4 = v32;
          if (v14 >= 1)
          {
            v27 = *(v31 + 16);
            v6 = __OFADD__(v27, v14);
            v28 = v27 + v14;
            if (v6)
            {
              goto LABEL_52;
            }

            *(v31 + 16) = v28;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v20 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v20)
        {
          goto LABEL_32;
        }
      }

      v4 = v32;
      if (v14 > 0)
      {
        goto LABEL_50;
      }

LABEL_5:
      if (v2 == v4)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    v29 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = _CocoaArrayWrapper.endIndex.getter();
    isUniquelyReferenced_nonNull_bridgeObject = v29;
  }

  return _swiftEmptyArrayStorage;
}

void *sub_10037C10C(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v41 = v3;
  v42 = v4;
  __chkstk_darwin(v3);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = __CocoaSet.count.getter();
  }

  else
  {
    v7 = *(a1 + 16);
  }

  result = _swiftEmptyArrayStorage;
  if (v7)
  {
    v49 = _swiftEmptyArrayStorage;
    sub_10037E3FC(0, v7 & ~(v7 >> 63), 0);
    v44 = v49;
    if (v43)
    {
      result = __CocoaSet.startIndex.getter();
    }

    else
    {
      result = _HashTable.startBucket.getter();
      v9 = *(a1 + 36);
    }

    v46 = result;
    v47 = v9;
    v48 = v43 != 0;
    if ((v7 & 0x8000000000000000) == 0)
    {
      v10 = 0;
      v39 = v7;
      v40 = v42 + 32;
      v11 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v11 = a1;
      }

      v37 = a1 + 56;
      v38 = v11;
      v35[1] = v1;
      v36 = a1 + 64;
      while (v10 < v7)
      {
        if (__OFADD__(v10++, 1))
        {
          goto LABEL_37;
        }

        v14 = v46;
        v15 = v47;
        v16 = v48;
        v17 = a1;
        sub_10037E5F4(v46, v47, v48, a1);
        v19 = v18;
        v20 = [v18 uniqueIdentifier];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v21 = v44;
        v49 = v44;
        v23 = v44[2];
        v22 = v44[3];
        if (v23 >= v22 >> 1)
        {
          sub_10037E3FC((v22 > 1), v23 + 1, 1);
          v21 = v49;
        }

        v21[2] = v23 + 1;
        v24 = (*(v42 + 80) + 32) & ~*(v42 + 80);
        v44 = v21;
        result = (*(v42 + 32))(v21 + v24 + *(v42 + 72) * v23, v6, v41);
        if (v43)
        {
          if (!v16)
          {
            goto LABEL_42;
          }

          a1 = v17;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v7 = v39;
          sub_1001BC5A8(&qword_100528740, &qword_10045ADF8);
          v12 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          result = v12(v45, 0);
          if (v10 == v7)
          {
LABEL_34:
            sub_10000A16C(v46, v47, v48);
            return v44;
          }
        }

        else
        {
          if (v16)
          {
            goto LABEL_43;
          }

          if ((v14 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          a1 = v17;
          v25 = (1 << *(v17 + 32));
          if (v14 >= v25)
          {
            goto LABEL_38;
          }

          v26 = v14 >> 6;
          v27 = *(v37 + 8 * (v14 >> 6));
          if (((v27 >> v14) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v17 + 36) != v15)
          {
            goto LABEL_40;
          }

          v28 = v27 & (-2 << (v14 & 0x3F));
          if (v28)
          {
            v25 = (__clz(__rbit64(v28)) | v14 & 0x7FFFFFFFFFFFFFC0);
          }

          else
          {
            v29 = v26 << 6;
            v30 = v26 + 1;
            v31 = (v36 + 8 * v26);
            while (v30 < (v25 + 63) >> 6)
            {
              v33 = *v31++;
              v32 = v33;
              v29 += 64;
              ++v30;
              if (v33)
              {
                result = sub_10000A16C(v14, v15, 0);
                v25 = (__clz(__rbit64(v32)) + v29);
                goto LABEL_33;
              }
            }

            result = sub_10000A16C(v14, v15, 0);
          }

LABEL_33:
          v34 = *(v17 + 36);
          v46 = v25;
          v47 = v34;
          v48 = 0;
          v7 = v39;
          if (v10 == v39)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  return result;
}

void sub_10037C518(uint64_t a1)
{
  v43 = type metadata accessor for UUID();
  v3 = *(v43 - 8);
  __chkstk_darwin(v43);
  v42 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *(a1 + 16);
  }

  if (v5)
  {
    v51 = _swiftEmptyArrayStorage;
    sub_1000089FC(0, v5 & ~(v5 >> 63), 0);
    v46 = v51;
    if (v44)
    {
      v6 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v6 = _HashTable.startBucket.getter();
      v7 = *(a1 + 36);
    }

    v48 = v6;
    v49 = v7;
    v50 = v44 != 0;
    if ((v5 & 0x8000000000000000) == 0)
    {
      v8 = 0;
      v40 = v5;
      v41 = (v3 + 8);
      v9 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v9 = a1;
      }

      v38 = a1 + 56;
      v39 = v9;
      v36 = v1;
      v37 = a1 + 64;
      while (v8 < v5)
      {
        if (__OFADD__(v8++, 1))
        {
          goto LABEL_37;
        }

        v12 = v48;
        v13 = v50;
        v45 = v49;
        v14 = a1;
        sub_10037E5F4(v48, v49, v50, a1);
        v16 = v15;
        v17 = [v16 uniqueIdentifier];
        v18 = v42;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v19 = UUID.uuidString.getter();
        v21 = v20;
        (*v41)(v18, v43);

        v22 = v46;
        v51 = v46;
        v24 = v46[2];
        v23 = v46[3];
        if (v24 >= v23 >> 1)
        {
          sub_1000089FC((v23 > 1), v24 + 1, 1);
          v22 = v51;
        }

        v22[2] = v24 + 1;
        v25 = &v22[2 * v24];
        v25[4] = v19;
        v25[5] = v21;
        v46 = v22;
        if (v44)
        {
          if (!v13)
          {
            goto LABEL_42;
          }

          a1 = v14;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v5 = v40;
          sub_1001BC5A8(&qword_100528740, &qword_10045ADF8);
          v10 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v10(v47, 0);
          if (v8 == v5)
          {
LABEL_34:
            sub_10000A16C(v48, v49, v50);
            return;
          }
        }

        else
        {
          if (v13)
          {
            goto LABEL_43;
          }

          if ((v12 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          a1 = v14;
          v26 = 1 << *(v14 + 32);
          if (v12 >= v26)
          {
            goto LABEL_38;
          }

          v27 = v12 >> 6;
          v28 = *(v38 + 8 * (v12 >> 6));
          if (((v28 >> v12) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v14 + 36) != v45)
          {
            goto LABEL_40;
          }

          v29 = v28 & (-2 << (v12 & 0x3F));
          if (v29)
          {
            v26 = __clz(__rbit64(v29)) | v12 & 0x7FFFFFFFFFFFFFC0;
            v5 = v40;
          }

          else
          {
            v30 = v27 << 6;
            v31 = v27 + 1;
            v32 = (v37 + 8 * v27);
            v5 = v40;
            while (v31 < (v26 + 63) >> 6)
            {
              v34 = *v32++;
              v33 = v34;
              v30 += 64;
              ++v31;
              if (v34)
              {
                sub_10000A16C(v12, v45, 0);
                v26 = __clz(__rbit64(v33)) + v30;
                goto LABEL_33;
              }
            }

            sub_10000A16C(v12, v45, 0);
          }

LABEL_33:
          v35 = *(v14 + 36);
          v48 = v26;
          v49 = v35;
          v50 = 0;
          if (v8 == v5)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }
}

uint64_t sub_10037C938()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10037C9C4;

  return sub_10037B774();
}

uint64_t sub_10037C9C4(uint64_t a1)
{
  *(*v1 + 24) = a1;

  return _swift_task_switch(sub_10037CAC4, 0, 0);
}

uint64_t sub_10037CAC4()
{
  sub_10037C518(*(v0 + 24));
  v2 = v1;

  v3 = sub_100008280(v2);

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_10037CCCC(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_10037CD74;

  return sub_10037B774();
}

uint64_t sub_10037CD74(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_10037CE74, 0, 0);
}

uint64_t sub_10037CE74()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_10037C518(v0[5]);
  v4 = v3;

  sub_100008280(v4);

  isa = Set._bridgeToObjectiveC()().super.isa;

  (v1)[2](v1, isa);

  _Block_release(v1);
  v6 = v0[1];

  return v6();
}

uint64_t sub_10037CF58()
{
  v1[3] = v0;
  v2 = type metadata accessor for UUID();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_10037D018, 0, 0);
}

uint64_t sub_10037D018()
{
  v3 = (*(**(*(v0 + 24) + OBJC_IVAR___MRDGroupSessionHomeObserver_managerWrapper) + 176) + **(**(*(v0 + 24) + OBJC_IVAR___MRDGroupSessionHomeObserver_managerWrapper) + 176));
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_10037D140;

  return v3(v0 + 16);
}

uint64_t sub_10037D140()
{

  return _swift_task_switch(sub_10037D23C, 0, 0);
}

char *sub_10037D23C()
{
  v1 = v0[2];
  v2 = [v1 homes];

  sub_100018D7C(0, &qword_100528710, HMHome_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (!v4)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_13;
    }
  }

  result = sub_1000089FC(0, v4 & ~(v4 >> 63), 0);
  if (v4 < 0)
  {
    __break(1u);
    return result;
  }

  v6 = 0;
  v7 = v3;
  v23 = v3 & 0xC000000000000001;
  v24 = v4;
  v8 = (v0[5] + 8);
  v25 = v3;
  do
  {
    if (v23)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v9 = *(v7 + 8 * v6 + 32);
    }

    v10 = v0[6];
    v11 = v0[4];
    v12 = v9;
    v13 = [v12 currentUser];
    v14 = [v13 uniqueIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = UUID.uuidString.getter();
    v17 = v16;
    (*v8)(v10, v11);

    v19 = _swiftEmptyArrayStorage[2];
    v18 = _swiftEmptyArrayStorage[3];
    if (v19 >= v18 >> 1)
    {
      sub_1000089FC((v18 > 1), v19 + 1, 1);
    }

    ++v6;
    _swiftEmptyArrayStorage[2] = v19 + 1;
    v20 = &_swiftEmptyArrayStorage[2 * v19];
    v20[4] = v15;
    v20[5] = v17;
    v7 = v25;
  }

  while (v24 != v6);
LABEL_13:

  v21 = sub_100008280(_swiftEmptyArrayStorage);

  v22 = v0[1];

  return v22(v21);
}

uint64_t sub_10037D624(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_10037D6CC;

  return sub_10037CF58();
}

uint64_t sub_10037D6CC(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v3 = *(*v1 + 16);
  v7 = *v1;

  isa = Set._bridgeToObjectiveC()().super.isa;

  (v2)[2](v2, isa);

  _Block_release(v2);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_10037D8D8(uint64_t *a1, void *a2)
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

      sub_100018D7C(0, &qword_100528748, HMUser_ptr);
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

    v19 = sub_10037DB10(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      sub_10037DD00(v20 + 1);
    }

    v18 = v8;
    sub_1001E45EC(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_100018D7C(0, &qword_100528748, HMUser_ptr);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_10037DF28(v18, v13, isUniquelyReferenced_nonNull_native);
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

Swift::Int sub_10037DB10(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1001BC5A8(&qword_100528760, &qword_10045AE10);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_100018D7C(0, &qword_100528748, HMUser_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_10037DD00(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
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

void sub_10037DD00(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1001BC5A8(&qword_100528760, &qword_10045AE10);
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
      v18 = NSObject._rawHashValue(seed:)(*(v5 + 40));
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

void sub_10037DF28(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10037DD00(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_10037E098();
      goto LABEL_12;
    }

    sub_10037E1E8(v6 + 1);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_100018D7C(0, &qword_100528748, HMUser_ptr);
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

void sub_10037E098()
{
  v1 = v0;
  sub_1001BC5A8(&qword_100528760, &qword_10045AE10);
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