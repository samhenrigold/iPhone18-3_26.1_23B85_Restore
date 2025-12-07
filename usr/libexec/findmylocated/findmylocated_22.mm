uint64_t sub_10023ED68(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = type metadata accessor for Handle();
  v42 = *(v40 - 8);
  v8 = __chkstk_darwin(v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v39 = &v33 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 64;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_10023F00C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1002345CC(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_10023F0A4(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_100241384();
  result = Set.init(minimumCapacity:)();
  v11 = result;
  if (v2)
  {
    v4 = (a1 + 64);
    do
    {
      v6 = *(v4 - 4);
      v5 = *(v4 - 3);
      v8 = *(v4 - 2);
      v7 = *(v4 - 1);
      v9 = *v4;
      v4 += 5;
      v12[0] = v6;
      v12[1] = v5;
      v12[2] = v8;
      v12[3] = v7;
      v12[4] = v9;

      sub_10023471C(v10, v12);

      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

uint64_t sub_10023F15C(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_1000093F8(&qword_1005AECC0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  result = Set.init(minimumCapacity:)();
  v17 = result;
  if (v9)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v6, v14, v2);
      sub_10001CFF8(v8, v6);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t sub_10023F2F8(uint64_t a1)
{
  v2 = type metadata accessor for Friend();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_1000093F8(&qword_1005AE9B0, &type metadata accessor for Friend, &protocol conformance descriptor for Friend);
  result = Set.init(minimumCapacity:)();
  v17 = result;
  if (v9)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v6, v14, v2);
      sub_1000247D8(v8, v6);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t sub_10023F494(uint64_t a1)
{
  v2 = type metadata accessor for Device();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_1000093F8(&qword_1005A9250, &type metadata accessor for Device, &protocol conformance descriptor for Device);
  result = Set.init(minimumCapacity:)();
  v17 = result;
  if (v9)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v6, v14, v2);
      sub_100234A2C(v8, v6);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t sub_10023F630(uint64_t a1)
{
  v2 = type metadata accessor for Device();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_1000093F8(&qword_1005AE9C0, &type metadata accessor for Device, &protocol conformance descriptor for Device);
  result = Set.init(minimumCapacity:)();
  v17 = result;
  if (v9)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v6, v14, v2);
      sub_100234D0C(v8, v6);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t sub_10023F7CC(uint64_t a1)
{
  v2 = type metadata accessor for ClientID();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_1000093F8(&qword_1005AE9D0, &type metadata accessor for ClientID, &protocol conformance descriptor for ClientID);
  result = Set.init(minimumCapacity:)();
  v17 = result;
  if (v9)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v6, v14, v2);
      sub_10002F5B4(v8, v6);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t sub_10023F968(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    sub_1002414A8();
    sub_1000093F8(&qword_1005B05F0, sub_1002414A8, &protocol conformance descriptor for NSObject);
    result = Set.init(minimumCapacity:)();
    v9 = result;
    if (i)
    {
      break;
    }

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
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v6 = *(a1 + 8 * i + 32);
      }

      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_100234FEC(&v8, v6);

      if (v7 == v4)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    _CocoaArrayWrapper.endIndex.getter();
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

uint64_t sub_10023FAC8(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;

      sub_1002345CC(&v7, v5, v4);

      v3 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return a2;
}

uint64_t sub_10023FBE0(uint64_t a1, uint64_t a2)
{
  v55 = a2;
  v53 = a1;
  v2 = sub_10004B564(&qword_1005AFFF8, &unk_1004D2ED0);
  v3 = __chkstk_darwin(v2 - 8);
  v46 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v51 = &v41 - v5;
  v54 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
  v52 = *(v54 - 8);
  v6 = __chkstk_darwin(v54);
  v43 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v45 = &v41 - v8;
  v9 = type metadata accessor for HandleType();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v41 - v14;
  v16 = type metadata accessor for FriendshipAction();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v42 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v44 = &v41 - v21;
  __chkstk_darwin(v20);
  v23 = &v41 - v22;
  v47 = *(v17 + 104);
  v47(&v41 - v22, enum case for FriendshipAction.remove(_:), v16);
  v24 = sub_1000093F8(&qword_1005AFFE8, &type metadata accessor for FriendshipAction, &protocol conformance descriptor for FriendshipAction);
  dispatch thunk of RawRepresentable.rawValue.getter();
  v56 = v16;
  v48 = v24;
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v58 == v57)
  {
    v25 = 1;
  }

  else
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v49 = *(v17 + 8);
  v50 = v17 + 8;
  v49(v23, v56);

  if ((v25 & 1) == 0)
  {
    return 1;
  }

  v26 = v55;
  Friend.type.getter();
  v27 = *(v10 + 104);
  v27(v13, enum case for HandleType.futureFollower(_:), v9);
  v28 = static HandleType.== infix(_:_:)();
  v29 = *(v10 + 8);
  v29(v13, v9);
  v30 = (v29)(v15, v9);
  if (v28)
  {
    __chkstk_darwin(v30);
    *(&v41 - 2) = v26;
    v31 = v51;
    sub_1004501F8(sub_10024135C, (&v41 - 4), v53, v51);
    if ((*(v52 + 48))(v31, 1, v54) == 1)
    {
      v32 = v31;
LABEL_11:
      sub_100002CE0(v32, &qword_1005AFFF8, &unk_1004D2ED0);
      return 0;
    }

    v37 = v45;
    sub_1000176A8(v31, v45, &qword_1005AFFE0, &qword_1004D6060);
    v38 = enum case for FriendshipAction.add(_:);
    v39 = v44;
  }

  else
  {
    Friend.type.getter();
    v27(v13, enum case for HandleType.futureFollowing(_:), v9);
    v33 = static HandleType.== infix(_:_:)();
    v29(v13, v9);
    v34 = (v29)(v15, v9);
    if ((v33 & 1) == 0)
    {
      return 1;
    }

    __chkstk_darwin(v34);
    *(&v41 - 2) = v26;
    v35 = v46;
    sub_1004501F8(sub_100241334, (&v41 - 4), v53, v46);
    if ((*(v52 + 48))(v35, 1, v54) == 1)
    {
      v32 = v35;
      goto LABEL_11;
    }

    v37 = v43;
    sub_1000176A8(v35, v43, &qword_1005AFFE0, &qword_1004D6060);
    v38 = enum case for FriendshipAction.add(_:);
    v39 = v42;
  }

  v47(v39, v38, v56);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v58 == v57)
  {
    v49(v39, v56);
    sub_100002CE0(v37, &qword_1005AFFE0, &qword_1004D6060);
  }

  else
  {
    v40 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v49(v39, v56);
    sub_100002CE0(v37, &qword_1005AFFE0, &qword_1004D6060);

    if ((v40 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_10024031C(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v33 = a2;
  v48 = a4;
  v34 = a1;
  v47 = type metadata accessor for FriendshipAction();
  v5 = *(v47 - 8);
  __chkstk_darwin(v47);
  v45 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for Friend();
  result = __chkstk_darwin(v44);
  v42 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v49 = a3;
  v11 = *(a3 + 64);
  v35 = 0;
  v36 = a3 + 64;
  v12 = 1 << *(a3 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v11;
  v15 = (v12 + 63) >> 6;
  v40 = v5 + 16;
  v41 = v8 + 16;
  v46 = v5;
  v43 = v8;
  v38 = v8 + 8;
  v39 = v5 + 8;
  while (v14)
  {
    v16 = __clz(__rbit64(v14));
    v51 = (v14 - 1) & v14;
LABEL_11:
    v19 = v16 | (v10 << 6);
    v20 = v49;
    v21 = v42;
    v22 = v43;
    v23 = v44;
    (*(v43 + 16))(v42, v49[6] + *(v43 + 72) * v19, v44);
    v24 = v20[7];
    v26 = v45;
    v25 = v46;
    v27 = *(v46 + 72);
    v37 = v19;
    v28 = v24 + v27 * v19;
    v29 = v47;
    (*(v46 + 16))(v45, v28, v47);

    v50 = sub_10023FBE0(v30, v21);

    (*(v25 + 8))(v26, v29);
    result = (*(v22 + 8))(v21, v23);
    v14 = v51;
    if (v50)
    {
      *(v34 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
      if (__OFADD__(v35++, 1))
      {
        __break(1u);
        return sub_10023DBBC(v34, v33, v35, v49);
      }
    }
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
      return sub_10023DBBC(v34, v33, v35, v49);
    }

    v18 = *(v36 + 8 * v10);
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v51 = (v18 - 1) & v18;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10024063C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = *(a1 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;
  v12 = swift_retain_n();
  if (v9 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v15 = swift_slowAlloc();

      v13 = sub_10023C898(v15, v10, a1, a2, a3);

      return v13;
    }
  }

  __chkstk_darwin(v12);
  bzero(&v16 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v11);

  v13 = sub_10024031C((&v16 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0)), v10, a1, a3);

  if (v4)
  {
    swift_willThrow();
  }

  return v13;
}

uint64_t sub_100240804(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v68 = a4;
  v59[0] = a2;
  v60 = a1;
  v67 = type metadata accessor for Handle();
  v5 = *(v67 - 8);
  __chkstk_darwin(v67);
  v66 = v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for HandleType();
  v7 = *(v79 - 8);
  v8 = __chkstk_darwin(v79);
  v78 = v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v77 = v59 - v10;
  v89 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
  v11 = __chkstk_darwin(v89);
  v88 = v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v94 = v59 - v13;
  v14 = type metadata accessor for FriendshipAction();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v85 = v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v92 = v59 - v18;
  v99 = type metadata accessor for Friend();
  result = __chkstk_darwin(v99);
  v22 = v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = 0;
  v23 = 0;
  v80 = a3;
  v24 = *(a3 + 64);
  v63 = a3 + 64;
  v25 = 1 << *(a3 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & v24;
  v62 = (v25 + 63) >> 6;
  v75 = v20 + 2;
  v74 = v15 + 16;
  v90 = v20 + 1;
  v91 = v20;
  v73 = enum case for HandleType.pendingOffer(_:);
  v72 = (v7 + 104);
  v71 = (v7 + 8);
  v86 = v15 + 8;
  v70 = enum case for FriendshipAction.add(_:);
  v93 = v15;
  v69 = (v15 + 104);
  v65 = (v5 + 8);
  v87 = v14;
  v76 = v22;
  while (v27)
  {
    v36 = __clz(__rbit64(v27));
    v84 = (v27 - 1) & v27;
LABEL_13:
    v39 = v36 | (v23 << 6);
    v40 = v80;
    v41 = v91[2];
    v41(v22, v80[6] + v91[9] * v39, v99);
    v42 = v40[7];
    v43 = v93[9];
    v64 = v39;
    v44 = v93[2];
    v45 = v92;
    v44(v92, v42 + v43 * v39, v14);
    v46 = v94;
    v47 = v22;
    v48 = v99;
    v41(v94, v47, v99);
    v49 = v89;
    v82 = *(v89 + 48);
    v44((v46 + v82), v45, v14);
    v50 = v88;
    sub_100005F04(v46, v88, &qword_1005AFFE0, &qword_1004D6060);
    v51 = *(v49 + 48);
    v52 = v77;
    Friend.type.getter();
    v83 = v91[1];
    v83(v50, v48);
    v53 = v78;
    v54 = v79;
    (*v72)(v78, v73, v79);
    LOBYTE(v49) = static HandleType.== infix(_:_:)();
    v55 = *v71;
    (*v71)(v53, v54);
    v55(v52, v54);
    v56 = v93[1];
    v57 = v50 + v51;
    v14 = v87;
    v56(v57);
    if ((v49 & 1) == 0)
    {
LABEL_17:
      sub_100002CE0(v94, &qword_1005AFFE0, &qword_1004D6060);
      (v56)(v92, v14);
      v22 = v76;
      result = (v83)(v76, v99);
      v27 = v84;
      goto LABEL_18;
    }

    (*v69)(v85, v70, v14);
    sub_1000093F8(&qword_1005AFFE8, &type metadata accessor for FriendshipAction, &protocol conformance descriptor for FriendshipAction);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v97 == v95 && v98 == v96)
    {
      (v56)(v85, v14);
    }

    else
    {
      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();
      (v56)(v85, v14);

      if ((v28 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v29 = v94;
    v30 = v88;
    sub_100005F04(v94, v88, &qword_1005AFFE0, &qword_1004D6060);
    v82 = *(v89 + 48);
    v31 = v66;
    Friend.handle.getter();
    v32 = v99;
    v33 = v83;
    v83(v30, v99);
    v81 = sub_1002603C4(v31, v68);
    (*v65)(v31, v67);
    sub_100002CE0(v29, &qword_1005AFFE0, &qword_1004D6060);
    v34 = v30 + v82;
    v35 = v87;
    (v56)(v34, v87);
    v14 = v35;
    (v56)(v92, v35);
    v22 = v76;
    result = v33(v76, v32);
    v27 = v84;
    if (!v81)
    {
LABEL_18:
      *(v60 + ((v64 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v64;
      if (__OFADD__(v61++, 1))
      {
        __break(1u);
        return sub_10023DBBC(v60, v59[0], v61, v80);
      }
    }
  }

  v37 = v23;
  while (1)
  {
    v23 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v23 >= v62)
    {
      return sub_10023DBBC(v60, v59[0], v61, v80);
    }

    v38 = *(v63 + 8 * v23);
    ++v37;
    if (v38)
    {
      v36 = __clz(__rbit64(v38));
      v84 = (v38 - 1) & v38;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1002410F8(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();

      v10 = sub_10023C7FC(v12, v7, a1, a2);

      swift_bridgeObjectRelease_n();
      return v10;
    }
  }

  __chkstk_darwin(v9);
  bzero(&v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = sub_100240804((&v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v10;
}

uint64_t sub_1002412D8(uint64_t a1)
{
  v2 = type metadata accessor for FriendInfoOption(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100241384()
{
  result = qword_1005B05C0;
  if (!qword_1005B05C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B05C0);
  }

  return result;
}

uint64_t sub_1002413D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100241440(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1002414A8()
{
  result = qword_1005B33E0;
  if (!qword_1005B33E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1005B33E0);
  }

  return result;
}

void sub_100241560(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for HandleType();
  v116 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v112 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = (&v108 - v7);
  v9 = type metadata accessor for DarwinNotifications();
  v118 = *(v9 - 8);
  v119 = v9;
  __chkstk_darwin(v9);
  v117 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for Friend();
  v11 = *(v115 - 8);
  v12 = __chkstk_darwin(v115);
  v113 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v114 = &v108 - v14;
  v128 = sub_10004B564(&qword_1005B0650, &qword_1004D1F80);
  v15 = *(v128 - 8);
  __chkstk_darwin(v128);
  v127 = &v108 - v16;
  v126 = sub_10004B564(&qword_1005AC678, &qword_1004C6F20);
  v130 = *(v126 - 8);
  __chkstk_darwin(v126);
  v125 = &v108 - v17;
  v120 = type metadata accessor for DataManager.State(0);
  v18 = __chkstk_darwin(v120);
  v121 = &v108 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = &v108 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v108 - v24;
  __chkstk_darwin(v23);
  v27 = &v108 - v26;
  v28 = OBJC_IVAR____TtC13findmylocated11DataManager_state;
  swift_beginAccess();
  sub_1002434C4(v2 + v28, v27);
  v131 = a1;
  LOBYTE(a1) = sub_100207E2C(v27, a1);
  v129 = v27;
  sub_100243528(v27);
  if ((a1 & 1) == 0)
  {
    v29 = static SystemInfo.isInternalBuild.getter();
    v111 = v4;
    v110 = v8;
    v109 = v11;
    if (v29)
    {
      if (qword_1005A80B8 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_10000A6F0(v30, qword_1005DFF18);
      sub_1002434C4(v131, v25);

      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v124 = v31;
        v34 = v33;
        v133[0] = swift_slowAlloc();
        *v34 = 141558787;
        *(v34 + 4) = 1752392040;
        *(v34 + 12) = 2081;
        v35 = v129;
        sub_1002434C4(v2 + v28, v129);
        LODWORD(v123) = v32;
        v36 = sub_1001DA250();
        v38 = v37;
        sub_100243528(v35);
        v39 = sub_10000D01C(v36, v38, v133);

        *(v34 + 14) = v39;
        *(v34 + 22) = 2160;
        *(v34 + 24) = 1752392040;
        *(v34 + 32) = 2081;
        v40 = sub_1001DA250();
        v42 = v41;
        sub_100243528(v25);
        v43 = sub_10000D01C(v40, v42, v133);

        *(v34 + 34) = v43;
        v44 = v124;
        _os_log_impl(&_mh_execute_header, v124, v123, "State: %{private,mask.hash}s -> %{private,mask.hash}s", v34, 0x2Au);
        swift_arrayDestroy();
      }

      else
      {

        sub_100243528(v25);
      }

      v45 = v15;
    }

    else
    {
      v45 = v15;
      if (qword_1005A80B8 != -1)
      {
        swift_once();
      }

      v46 = type metadata accessor for Logger();
      sub_10000A6F0(v46, qword_1005DFF18);
      sub_1002434C4(v131, v22);

      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        LODWORD(v123) = v48;
        v50 = v49;
        v133[0] = swift_slowAlloc();
        v124 = v15;
        *v50 = 136446466;
        v51 = v129;
        sub_1002434C4(v2 + v28, v129);
        v52 = v47;
        v53 = sub_1001DA804();
        v55 = v54;
        sub_100243528(v51);
        v56 = sub_10000D01C(v53, v55, v133);

        *(v50 + 4) = v56;
        *(v50 + 12) = 2082;
        v57 = sub_1001DA804();
        v59 = v58;
        sub_100243528(v22);
        v60 = sub_10000D01C(v57, v59, v133);

        *(v50 + 14) = v60;
        _os_log_impl(&_mh_execute_header, v52, v123, "State: %{public}s -> %{public}s", v50, 0x16u);
        swift_arrayDestroy();
        v45 = v124;
      }

      else
      {

        sub_100243528(v22);
      }
    }

    swift_beginAccess();
    sub_100243584(v131, v2 + v28);
    swift_endAccess();
    v61 = OBJC_IVAR____TtC13findmylocated11DataManager_stateContinuations;
    swift_beginAccess();
    v62 = *(*(v2 + v61) + 16);
    if (v62)
    {
      if (qword_1005A80B8 != -1)
      {
        swift_once();
      }

      v63 = type metadata accessor for Logger();
      sub_10000A6F0(v63, qword_1005DFF18);
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        *v66 = 134217984;
        *(v66 + 4) = v62;
        _os_log_impl(&_mh_execute_header, v64, v65, "Publishing State change event to %ld subscribers", v66, 0xCu);
      }
    }

    v67 = *(v2 + v61);
    isa = (v67 + 64);
    v69 = 1 << *(v67 + 32);
    v70 = -1;
    if (v69 < 64)
    {
      v70 = ~(-1 << v69);
    }

    v71 = v70 & *(v67 + 64);
    v72 = (v69 + 63) >> 6;
    v73 = v45 + 1;
    v122 = v130 + 1;
    v123 = v130 + 2;
    v124 = v67;

    v74 = 0;
    v75 = v127;
    if (v71)
    {
      while (1)
      {
        v76 = v74;
LABEL_28:
        v77 = __clz(__rbit64(v71));
        v71 &= v71 - 1;
        v78 = v125;
        v62 = v130;
        v61 = v126;
        (v130[2].isa)(v125, v124[7].isa + v130[9].isa * (v77 | (v76 << 6)), v126);
        sub_1002434C4(v131, v129);
        AsyncStream.Continuation.yield(_:)();
        (v73->isa)(v75, v128);
        (v62[1].isa)(v78, v61);
        if (!v71)
        {
          goto LABEL_24;
        }
      }
    }

    while (1)
    {
LABEL_24:
      v76 = v74 + 1;
      if (__OFADD__(v74, 1))
      {
        __break(1u);
        goto LABEL_48;
      }

      if (v76 >= v72)
      {
        break;
      }

      v71 = *(isa + v76);
      ++v74;
      if (v71)
      {
        v74 = v76;
        goto LABEL_28;
      }
    }

    v79 = v121;
    sub_1002434C4(v131, v121);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if ((EnumCaseMultiPayload - 3) < 3)
      {
        return;
      }

      if (EnumCaseMultiPayload == 6)
      {
        v81 = &enum case for DarwinNotifications.initialized(_:);
      }

      else
      {
        v81 = &enum case for DarwinNotifications.devicesChanged(_:);
      }

      goto LABEL_41;
    }

    if ((EnumCaseMultiPayload - 1) >= 2)
    {
      v85 = v118;
      v84 = v119;
      v86 = v117;
      (*(v118 + 104))(v117, enum case for DarwinNotifications.meDeviceChanged(_:), v119);
      v87 = DarwinNotifications.rawValue.getter();
      v89 = v88;
      (*(v85 + 8))(v86, v84);
      sub_1002435E8(v87, v89);

      sub_100192D30(v79);
      return;
    }

    v62 = v109;
    isa = v109[4].isa;
    v61 = v114;
    v82 = v79;
    v71 = v115;
    isa(v114, v82, v115);
    v73 = v110;
    Friend.type.getter();
    v74 = v116;
    v75 = v111;
    v83 = (*(v116 + 88))(v73, v111);
    if (v83 == enum case for HandleType.follower(_:))
    {
      (v62[1].isa)(v61, v71);
      v81 = &enum case for DarwinNotifications.followersChanged(_:);
LABEL_41:
      v91 = v118;
      v90 = v119;
      v92 = v117;
      (*(v118 + 104))(v117, *v81, v119);
      v93 = DarwinNotifications.rawValue.getter();
      v95 = v94;
      (*(v91 + 8))(v92, v90);
      sub_1002435E8(v93, v95);

      return;
    }

    if (v83 == enum case for HandleType.following(_:))
    {
      (v62[1].isa)(v61, v71);
      v81 = &enum case for DarwinNotifications.followingsChanged(_:);
      goto LABEL_41;
    }

    if (v83 == enum case for HandleType.futureFollower(_:) || v83 == enum case for HandleType.futureFollowing(_:) || v83 == enum case for HandleType.pendingOffer(_:))
    {
      (v62[1].isa)(v61, v71);
      return;
    }

LABEL_48:
    if (qword_1005A80B8 != -1)
    {
      swift_once();
    }

    v96 = type metadata accessor for Logger();
    sub_10000A6F0(v96, qword_1005DFF18);
    v97 = v113;
    isa(v113, v61, v71);
    v98 = Logger.logObject.getter();
    v99 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      v131 = swift_slowAlloc();
      v132 = v131;
      *v100 = 136446466;
      *(v100 + 4) = sub_10000D01C(0x7328657461647075, 0xEE00293A65746174, &v132);
      *(v100 + 12) = 2080;
      v130 = v98;
      v101 = v112;
      LODWORD(v129) = v99;
      Friend.type.getter();
      sub_100243960(&qword_1005A9198, &type metadata accessor for HandleType, &protocol conformance descriptor for HandleType);
      v128 = dispatch thunk of CustomStringConvertible.description.getter();
      v102 = v71;
      v104 = v103;
      v105 = *(v74 + 8);
      v105(v101, v75);
      (v62[1].isa)(v97, v102);
      v106 = sub_10000D01C(v128, v104, &v132);

      *(v100 + 14) = v106;
      v107 = v130;
      _os_log_impl(&_mh_execute_header, v130, v129, "%{public}s Unexpected friend.type %s!", v100, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (v62[1].isa)(v97, v71);
      v105 = *(v74 + 8);
    }

    v105(v73, v75);
  }
}

uint64_t sub_100242458(uint64_t a1, uint64_t a2)
{
  v39 = a1;
  v38 = sub_10004B564(&qword_1005AC678, &qword_1004C6F20);
  v35 = *(v38 - 8);
  v2 = *(v35 + 64);
  __chkstk_darwin(v38);
  v4 = &v27 - v3;
  v5 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  __chkstk_darwin(v5 - 8);
  v7 = &v27 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  __chkstk_darwin(v11);
  v13 = &v27 - v12;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    v36 = v13;
    UUID.init()();
    v30 = v4;
    v31 = *(v9 + 16);
    v27 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v31(v27, v13, v8);
    v16 = *(v9 + 80);
    v34 = v9;
    v37 = v7;
    v32 = v16 | 7;
    v17 = swift_allocObject();
    v18 = v35;
    v28 = v8;
    v29 = v2;
    *(v17 + 16) = v15;
    v33 = *(v9 + 32);
    v19 = v27;
    v33(v17 + ((v16 + 24) & ~v16), v27, v8);

    v20 = v38;
    AsyncStream.Continuation.onTermination.setter();
    v21 = type metadata accessor for TaskPriority();
    (*(*(v21 - 8) + 56))(v37, 1, 1, v21);
    v22 = v30;
    (*(v18 + 16))(v30, v39, v20);
    v23 = v28;
    v31(v19, v36, v28);
    v24 = (*(v18 + 80) + 40) & ~*(v18 + 80);
    v25 = (v29 + v16 + v24) & ~v16;
    v26 = swift_allocObject();
    *(v26 + 2) = 0;
    *(v26 + 3) = 0;
    *(v26 + 4) = v15;
    (*(v18 + 32))(&v26[v24], v22, v38);
    v33(&v26[v25], v19, v23);

    sub_1001D7F30(0, 0, v37, &unk_1004D1F90, v26);

    return (*(v34 + 8))(v36, v23);
  }

  return result;
}

uint64_t sub_10024285C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  __chkstk_darwin(v8 - 8);
  v10 = &v15 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v6 + 16))(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v5);
  v12 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = a2;
  (*(v6 + 32))(&v13[v12], &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);

  sub_1001D7F30(0, 0, v10, &unk_1004D1FA0, v13);
}

uint64_t sub_100242A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_100242A5C, a4, 0);
}

uint64_t sub_100242A5C()
{
  sub_100242ABC(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100242ABC(uint64_t a1)
{
  v2 = sub_10004B564(&qword_1005AC670, &qword_1004C6F18);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - v3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v27 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v23 - v9;
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000A6F0(v11, qword_1005DFF18);
  v26 = *(v6 + 16);
  v26(v10, a1, v5);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v25 = v4;
    v15 = v14;
    v23 = swift_slowAlloc();
    v28[0] = v23;
    *v15 = 136446210;
    sub_100243960(&qword_1005A92C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = a1;
    v18 = v17;
    (*(v6 + 8))(v10, v5);
    v19 = sub_10000D01C(v16, v18, v28);
    a1 = v24;

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v12, v13, "Removing stateContinuation for %{public}s", v15, 0xCu);
    sub_100004984(v23);

    v4 = v25;
  }

  else
  {

    (*(v6 + 8))(v10, v5);
  }

  v20 = v27;
  v26(v27, a1, v5);
  v21 = sub_10004B564(&qword_1005AC678, &qword_1004C6F20);
  (*(*(v21 - 8) + 56))(v4, 1, 1, v21);
  swift_beginAccess();
  sub_100146188(v4, v20);
  return swift_endAccess();
}

uint64_t sub_100242E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v8 = sub_10004B564(&qword_1005B0650, &qword_1004D1F80);
  v6[8] = v8;
  v6[9] = *(v8 - 8);
  v6[10] = swift_task_alloc();
  type metadata accessor for DataManager.State(0);
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();

  return _swift_task_switch(sub_100242F68, a4, 0);
}

uint64_t sub_100242F68()
{
  v1 = v0[12];
  v2 = v0[5];
  sub_1002430EC(v0[6], v0[7]);
  v3 = OBJC_IVAR____TtC13findmylocated11DataManager_state;
  swift_beginAccess();
  sub_1002434C4(v2 + v3, v1);

  return _swift_task_switch(sub_10024300C, 0, 0);
}

uint64_t sub_10024300C(__n128 a1)
{
  v2 = v1[12];
  v4 = v1[9];
  v3 = v1[10];
  v5 = v1[8];
  sub_1002434C4(v2, v1[11]);
  sub_10004B564(&qword_1005AC678, &qword_1004C6F20);
  AsyncStream.Continuation.yield(_:)();
  (*(v4 + 8))(v3, v5);
  sub_100243528(v2);

  v6 = v1[1];

  return v6();
}

uint64_t sub_1002430EC(uint64_t a1, uint64_t a2)
{
  v31 = a1;
  v3 = sub_10004B564(&qword_1005AC670, &qword_1004C6F18);
  __chkstk_darwin(v3 - 8);
  v5 = &v25 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v30 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v25 - v10;
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000A6F0(v12, qword_1005DFF18);
  v29 = *(v7 + 16);
  v29(v11, a2, v6);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v28 = v5;
    v16 = v15;
    v26 = swift_slowAlloc();
    v32[0] = v26;
    *v16 = 136446210;
    sub_100243960(&qword_1005A92C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = a2;
    v19 = v18;
    (*(v7 + 8))(v11, v6);
    v20 = sub_10000D01C(v17, v19, v32);
    a2 = v27;

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v13, v14, "Storing stateContinuation for %{public}s", v16, 0xCu);
    sub_100004984(v26);

    v5 = v28;
  }

  else
  {

    (*(v7 + 8))(v11, v6);
  }

  v21 = v30;
  v29(v30, a2, v6);
  v22 = sub_10004B564(&qword_1005AC678, &qword_1004C6F20);
  v23 = *(v22 - 8);
  (*(v23 + 16))(v5, v31, v22);
  (*(v23 + 56))(v5, 0, 1, v22);
  swift_beginAccess();
  sub_100146188(v5, v21);
  return swift_endAccess();
}

uint64_t sub_1002434C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataManager.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100243528(uint64_t a1)
{
  v2 = type metadata accessor for DataManager.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100243584(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataManager.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_1002435E8(uint64_t a1, unint64_t a2)
{
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000A6F0(v4, qword_1005DFF18);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_10000D01C(a1, a2, &v11);
    _os_log_impl(&_mh_execute_header, v5, v6, "Posting notification: %s", v7, 0xCu);
    sub_100004984(v8);
  }

  v9 = CFNotificationCenterGetDarwinNotifyCenter();
  v10 = String._bridgeToObjectiveC()();
  CFNotificationCenterPostNotification(v9, v10, 0, 0, 1u);
}

uint64_t sub_100243780(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_10024285C(a1, v4, v5);
}

uint64_t sub_1002437F4(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10004B564(&qword_1005AC678, &qword_1004C6F20) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for UUID() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10000368C;

  return sub_100242E5C(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_100243960(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002439A8(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100003690;

  return sub_100242A3C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100243AA0()
{
  v1[2] = v0;
  v1[3] = *v0;
  type metadata accessor for DispatchQoS();
  v1[4] = swift_task_alloc();

  return _swift_task_switch(sub_100243B58, v0, 0);
}

uint64_t sub_100243B58()
{
  v14 = v0;
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFF18);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD000000000000024, 0x80000001004E59C0, &v13);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = v0[3];
  type metadata accessor for XPCActivity();
  static DispatchQoS.utility.getter();
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;

  v9 = swift_task_alloc();
  v0[5] = v9;
  *v9 = v0;
  v9[1] = sub_100243DC8;
  v10 = v0[4];
  v11 = v0[2];

  return XPCActivity.__allocating_init(name:qos:criteriaBlock:handler:)(0xD000000000000030, 0x80000001004E5980, v10, &unk_1004D1FB8, v11, &unk_1004D1FC8, v8);
}

uint64_t sub_100243DC8(uint64_t a1)
{
  v2 = *(*v1 + 16);
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_100243EE0, v2, 0);
}

uint64_t sub_100243EE0()
{
  *(v0[2] + 112) = v0[6];

  v1 = v0[1];

  return v1();
}

uint64_t sub_100243F58(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100003690;

  return sub_1002440B0(a1);
}

uint64_t sub_100244004(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100003690;

  return sub_100243F58(a1, a2);
}

uint64_t sub_1002440B0(uint64_t a1)
{
  v2[292] = v1;
  v2[291] = a1;
  v3 = type metadata accessor for XPCActivity.Criteria.Options();
  v2[293] = v3;
  v2[294] = *(v3 - 8);
  v2[295] = swift_task_alloc();
  v4 = type metadata accessor for XPCActivity.Priority();
  v2[296] = v4;
  v2[297] = *(v4 - 8);
  v2[298] = swift_task_alloc();

  return _swift_task_switch(sub_1002441D0, v1, 0);
}

uint64_t sub_1002441D0()
{
  v9 = v0;
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 2392) = sub_10000A6F0(v1, qword_1005DFF18);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD000000000000018, 0x80000001004E5A20, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = swift_task_alloc();
  *(v0 + 2400) = v6;
  *v6 = v0;
  v6[1] = sub_100244388;

  return sub_100245BB8(v0 + 496);
}

uint64_t sub_100244388()
{
  v1 = *v0;
  v2 = *(*v0 + 2336);

  memcpy((v1 + 976), (v1 + 496), 0x1E0uLL);

  return _swift_task_switch(sub_1002444A8, v2, 0);
}

uint64_t sub_1002444A8()
{
  v27 = v0;
  memcpy((v0 + 16), (v0 + 496), 0x1E0uLL);
  if (sub_100033B90(v0 + 16) == 1)
  {
    goto LABEL_2;
  }

  v6 = *(v0 + 384);
  *(v0 + 2192) = *(v0 + 368);
  *(v0 + 2208) = v6;
  *(v0 + 2224) = *(v0 + 400);
  v7 = *(v0 + 320);
  *(v0 + 2128) = *(v0 + 304);
  *(v0 + 2144) = v7;
  v8 = *(v0 + 352);
  *(v0 + 2160) = *(v0 + 336);
  *(v0 + 2176) = v8;
  v9 = *(v0 + 288);
  *(v0 + 2096) = *(v0 + 272);
  *(v0 + 2112) = v9;
  if (sub_10005A3B0(v0 + 2096) == 1 && (memcpy((v0 + 1456), (v0 + 976), 0x1E0uLL), v10 = *(v0 + 1184), *(v0 + 2032) = *(v0 + 1168), *(v0 + 2048) = v10, v11 = *(v0 + 1216), *(v0 + 2064) = *(v0 + 1200), *(v0 + 2080) = v11, v12 = *(v0 + 1120), *(v0 + 1968) = *(v0 + 1104), *(v0 + 1984) = v12, v13 = *(v0 + 1152), *(v0 + 2000) = *(v0 + 1136), *(v0 + 2016) = v13, v14 = *(v0 + 1088), *(v0 + 1936) = *(v0 + 1072), *(v0 + 1952) = v14, sub_10002D650(v0 + 1936) == 1))
  {
    sub_100245124(v0 + 1856, v0 + 2240);
    sub_100002CE0(v0 + 496, &qword_1005A90D8, &unk_1004C6AB0);
    if (!*(v0 + 1896))
    {
LABEL_2:
      v1 = *(v0 + 2384);
      v2 = *(v0 + 2376);
      v3 = *(v0 + 2368);
      sub_1004BA244(0xD000000000000021);
      (*(v2 + 104))(v1, enum case for XPCActivity.Priority.utility(_:), v3);
      sub_10004B564(&qword_1005B0658, &qword_1004D1FD8);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1004C2310;
      static XPCActivity.Criteria.Options.requiresClassC.getter();
      static XPCActivity.Criteria.Options.requiresNetwork.getter();
      *(v0 + 2320) = v4;
      sub_100245078(&qword_1005B0660, &type metadata accessor for XPCActivity.Criteria.Options, &protocol conformance descriptor for XPCActivity.Criteria.Options);
      sub_10004B564(&qword_1005B0668, &qword_1004D1FE0);
      sub_1002450C0();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      XPCActivity.Criteria.init(priority:repeating:delay:gracePeriod:interval:options:)();
      v5 = 0;
      goto LABEL_11;
    }

    v15 = &qword_1005AD7A8;
    v16 = &qword_1004CA280;
    v17 = v0 + 1856;
  }

  else
  {
    v15 = &qword_1005A90D8;
    v16 = &unk_1004C6AB0;
    v17 = v0 + 496;
  }

  sub_100002CE0(v17, v15, v16);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v26 = v21;
    *v20 = 136446210;
    *(v20 + 4) = sub_10000D01C(0xD000000000000018, 0x80000001004E5A20, &v26);
    _os_log_impl(&_mh_execute_header, v18, v19, "%{public}s not eligible, since we have non-nil serverSettings already.", v20, 0xCu);
    sub_100004984(v21);
  }

  v5 = 1;
LABEL_11:
  v22 = *(v0 + 2328);
  v23 = type metadata accessor for XPCActivity.Criteria();
  (*(*(v23 - 8) + 56))(v22, v5, 1, v23);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1002448B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = type metadata accessor for XPCActivity.State();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_10024497C, 0, 0);
}

uint64_t sub_10024497C()
{
  v20 = v0;
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  (*(v2 + 16))(v1, v0[6], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for XPCActivity.State.run(_:))
  {
    if (qword_1005A80B8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000A6F0(v5, qword_1005DFF18);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v19 = v9;
      *v8 = 136446210;
      *(v8 + 4) = sub_10000D01C(0xD000000000000024, 0x80000001004E59C0, &v19);
      _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s receive state .run", v8, 0xCu);
      sub_100004984(v9);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v0[11] = Strong;
    if (Strong)
    {
      v11 = swift_task_alloc();
      v0[12] = v11;
      *v11 = v0;
      v11[1] = sub_100244D0C;

      return sub_1001E31FC();
    }

    type metadata accessor for XPCActivity();
    sub_100245078(&qword_1005B0330, &type metadata accessor for XPCActivity, &protocol conformance descriptor for XPCActivity);
    v13 = dispatch thunk of Actor.unownedExecutor.getter();
    v15 = v18;
    v16 = sub_100244E98;
    goto LABEL_16;
  }

  if (v4 == enum case for XPCActivity.State.defer(_:))
  {
    type metadata accessor for XPCActivity();
    sub_100245078(&qword_1005B0330, &type metadata accessor for XPCActivity, &protocol conformance descriptor for XPCActivity);
    v13 = dispatch thunk of Actor.unownedExecutor.getter();
    v15 = v14;
    v16 = sub_100244F60;
LABEL_16:

    return _swift_task_switch(v16, v13, v15);
  }

  (*(v0[9] + 8))(v0[10], v0[8]);

  v17 = v0[1];

  return v17();
}

uint64_t sub_100244D0C()
{

  type metadata accessor for XPCActivity();
  sub_100245078(&qword_1005B0330, &type metadata accessor for XPCActivity, &protocol conformance descriptor for XPCActivity);
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100244E98, v1, v0);
}

uint64_t sub_100244E98()
{
  dispatch thunk of XPCActivity.done()();

  return _swift_task_switch(sub_100244F00, 0, 0);
}

uint64_t sub_100244F00()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100244F60()
{
  dispatch thunk of XPCActivity.defer()();

  return _swift_task_switch(sub_100245194, 0, 0);
}

uint64_t sub_100244FC8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000368C;

  return sub_1002448B8(a1, a2, v6);
}

uint64_t sub_100245078(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1002450C0()
{
  result = qword_1005B0670;
  if (!qword_1005B0670)
  {
    sub_10004B610(&qword_1005B0668, &qword_1004D1FE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B0670);
  }

  return result;
}

uint64_t sub_100245124(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005AD7A8, &qword_1004CA280);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100245198()
{
  *(v1 + 24) = v0;
  v2 = swift_task_alloc();
  *(v1 + 32) = v2;
  *v2 = v1;
  v2[1] = sub_10024522C;

  return daemon.getter();
}

uint64_t sub_10024522C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 40) = a1;

  v3 = swift_task_alloc();
  *(v2 + 48) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for LocalStorageService();
  v6 = sub_100009440(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100009440(&qword_1005AAB88, type metadata accessor for LocalStorageService, &unk_1004D5A30);
  *v3 = v9;
  v3[1] = sub_100245408;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100245408(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[7] = a1;
  v3[8] = v1;

  if (v1)
  {
    v5 = v3[3];

    return _swift_task_switch(sub_100245820, v5, 0);
  }

  else
  {

    v6 = swift_task_alloc();
    v3[9] = v6;
    *v6 = v4;
    v6[1] = sub_100245590;

    return sub_1003063B8();
  }
}

uint64_t sub_100245590(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 24);
  *(v3 + 80) = a1;
  *(v3 + 88) = v1;

  if (v1)
  {
    v5 = sub_1002459EC;
  }

  else
  {
    v5 = sub_1002456BC;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1002456BC()
{
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFF18);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 80);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = *(v5 + 16);

    _os_log_impl(&_mh_execute_header, v2, v3, "DataManager load LocalStorage All devices count:%ld", v6, 0xCu);
  }

  else
  {
  }

  v7 = *(v0 + 80);
  v8 = *(v0 + 8);

  return v8(v7);
}

uint64_t sub_100245820()
{
  v13 = v0;
  v1 = v0[8];

  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFF18);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000D01C(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "DataManager read all devices failed with error: %{public}s", v5, 0xCu);
    sub_100004984(v6);
  }

  v10 = v0[1];

  return v10(_swiftEmptyArrayStorage);
}

uint64_t sub_1002459EC()
{
  v13 = v0;
  v1 = v0[11];

  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFF18);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000D01C(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "DataManager read all devices failed with error: %{public}s", v5, 0xCu);
    sub_100004984(v6);
  }

  v10 = v0[1];

  return v10(_swiftEmptyArrayStorage);
}

uint64_t sub_100245BB8(uint64_t a1)
{
  v2[184] = v1;
  v2[183] = a1;
  v3 = swift_task_alloc();
  v2[185] = v3;
  *v3 = v2;
  v3[1] = sub_100245C50;

  return daemon.getter();
}

uint64_t sub_100245C50(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 1488) = a1;

  v3 = swift_task_alloc();
  *(v2 + 1496) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for LocalStorageService();
  v6 = sub_100009440(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100009440(&qword_1005AAB88, type metadata accessor for LocalStorageService, &unk_1004D5A30);
  *v3 = v9;
  v3[1] = sub_100245E2C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100245E2C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[188] = a1;
  v3[189] = v1;

  if (v1)
  {
    v5 = v3[184];

    return _swift_task_switch(sub_100245FBC, v5, 0);
  }

  else
  {

    v6 = swift_task_alloc();
    v3[190] = v6;
    *v6 = v4;
    v6[1] = sub_100035F5C;

    return sub_1003067FC((v3 + 62));
  }
}

uint64_t sub_100245FBC()
{
  v13 = v0;

  v1 = *(v0 + 1512);
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFF18);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    *(v0 + 1456) = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000D01C(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "DataManager read serverSettings fromLocalStorage failed with error: %{public}s", v5, 0xCu);
    sub_100004984(v6);
  }

  else
  {
  }

  sub_1002477BC((v0 + 16));
  memcpy(*(v0 + 1464), (v0 + 16), 0x1E0uLL);
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1002461AC()
{
  v13 = v0;

  v1 = *(v0 + 1528);
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFF18);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    *(v0 + 1456) = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000D01C(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "DataManager read serverSettings fromLocalStorage failed with error: %{public}s", v5, 0xCu);
    sub_100004984(v6);
  }

  else
  {
  }

  sub_1002477BC((v0 + 16));
  memcpy(*(v0 + 1464), (v0 + 16), 0x1E0uLL);
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10024639C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = swift_task_alloc();
  v2[5] = v3;
  *v3 = v2;
  v3[1] = sub_100246430;

  return daemon.getter();
}

uint64_t sub_100246430(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 48) = a1;

  v3 = swift_task_alloc();
  *(v2 + 56) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for LocalStorageService();
  v6 = sub_100009440(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100009440(&qword_1005AAB88, type metadata accessor for LocalStorageService, &unk_1004D5A30);
  *v3 = v9;
  v3[1] = sub_10024660C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10024660C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[8] = a1;
  v3[9] = v1;

  if (v1)
  {
    v5 = v3[4];

    return _swift_task_switch(sub_100246A24, v5, 0);
  }

  else
  {

    v6 = swift_task_alloc();
    v3[10] = v6;
    *v6 = v4;
    v6[1] = sub_10024679C;
    v7 = v3[3];

    return sub_100306670(v7);
  }
}

uint64_t sub_10024679C()
{
  v2 = *(*v1 + 32);
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_100246BF8;
  }

  else
  {
    v3 = sub_1002468C4;
  }

  return _swift_task_switch(v3, v2, 0);
}

uint64_t sub_1002468C4()
{
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFF18);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 24);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = *(v5 + 16);

    _os_log_impl(&_mh_execute_header, v2, v3, "DataManager write AllDevices count:%ld into LocalStorage", v6, 0xCu);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100246A24()
{
  v13 = v0;
  v1 = v0[9];

  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFF18);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000D01C(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "DataManager writeAllDevices failed with error: %{public}s", v5, 0xCu);
    sub_100004984(v6);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_100246BF8()
{
  v13 = v0;
  v1 = v0[11];

  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFF18);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000D01C(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "DataManager writeAllDevices failed with error: %{public}s", v5, 0xCu);
    sub_100004984(v6);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_100246DCC(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = swift_task_alloc();
  v2[5] = v3;
  *v3 = v2;
  v3[1] = sub_100246E60;

  return daemon.getter();
}

uint64_t sub_100246E60(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 48) = a1;

  v3 = swift_task_alloc();
  *(v2 + 56) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for LocalStorageService();
  v6 = sub_100009440(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100009440(&qword_1005AAB88, type metadata accessor for LocalStorageService, &unk_1004D5A30);
  *v3 = v9;
  v3[1] = sub_10024703C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10024703C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[8] = a1;
  v3[9] = v1;

  if (v1)
  {
    v5 = v3[4];

    return _swift_task_switch(sub_100247414, v5, 0);
  }

  else
  {

    v6 = swift_task_alloc();
    v3[10] = v6;
    *v6 = v4;
    v6[1] = sub_1002471CC;
    v7 = v3[3];

    return sub_1003069F0(v7);
  }
}

uint64_t sub_1002471CC()
{
  v2 = *(*v1 + 32);
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_1002475E8;
  }

  else
  {
    v3 = sub_1002472F4;
  }

  return _swift_task_switch(v3, v2, 0);
}

uint64_t sub_1002472F4()
{
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFF18);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "DataManager write server Settings into LocalStorage", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100247414()
{
  v13 = v0;
  v1 = v0[9];

  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFF18);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000D01C(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "DataManager write serverSettings failed with error: %{public}s", v5, 0xCu);
    sub_100004984(v6);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_1002475E8()
{
  v13 = v0;
  v1 = v0[11];

  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFF18);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000D01C(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "DataManager write serverSettings failed with error: %{public}s", v5, 0xCu);
    sub_100004984(v6);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

double sub_1002477BC(_OWORD *a1)
{
  result = 0.0;
  a1[28] = 0u;
  a1[29] = 0u;
  a1[26] = 0u;
  a1[27] = 0u;
  a1[24] = 0u;
  a1[25] = 0u;
  a1[22] = 0u;
  a1[23] = 0u;
  a1[20] = 0u;
  a1[21] = 0u;
  a1[18] = 0u;
  a1[19] = 0u;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void sub_100247800(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v211 = a1;
  v188 = a2;
  v4 = sub_10004B564(&qword_1005B3360, &unk_1004C6AA0);
  __chkstk_darwin(v4 - 8);
  v203 = v180 - v5;
  v217 = type metadata accessor for Friend();
  v204 = *(v217 - 8);
  __chkstk_darwin(v217);
  v214 = v180 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = type metadata accessor for Handle();
  v215 = *(v219 - 8);
  v7 = __chkstk_darwin(v219);
  v201 = v180 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v181 = v180 - v10;
  v11 = __chkstk_darwin(v9);
  v218 = v180 - v12;
  v13 = __chkstk_darwin(v11);
  v212 = v180 - v14;
  __chkstk_darwin(v13);
  v202 = v180 - v15;
  v216 = type metadata accessor for PersonHandle();
  v189 = *(v216 - 8);
  v16 = __chkstk_darwin(v216);
  v200 = v180 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v199 = v180 - v19;
  __chkstk_darwin(v18);
  v220 = v180 - v20;
  v210 = sub_10004B564(&qword_1005B0678, &qword_1004D2008);
  __chkstk_darwin(v210);
  v213 = v180 - v21;
  v197 = type metadata accessor for Fence.Participant();
  v196 = *(v197 - 8);
  v22 = __chkstk_darwin(v197);
  v195 = v180 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v194 = v180 - v25;
  v26 = __chkstk_darwin(v24);
  v209 = v180 - v27;
  __chkstk_darwin(v26);
  v208 = v180 - v28;
  v207 = type metadata accessor for Fence.Variant();
  v205 = *(v207 - 8);
  __chkstk_darwin(v207);
  v206 = (v180 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v193 = type metadata accessor for Fence.Trigger();
  v191 = *(v193 - 8);
  v30 = __chkstk_darwin(v193);
  v186 = v180 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v190 = v180 - v32;
  v33 = type metadata accessor for UUID();
  v34 = *(v33 - 8);
  v35 = __chkstk_darwin(v33);
  v37 = v180 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v39 = v180 - v38;
  v40 = type metadata accessor for Fence.ID();
  v41 = *(v40 - 8);
  __chkstk_darwin(v40);
  v43 = v180 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  Fence.id.getter();
  Fence.ID.uuid.getter();
  v44 = *(v41 + 8);
  v198 = v40;
  v44(v43, v40);
  static UUID.nilUUID.getter();
  v45 = static UUID.== infix(_:_:)();
  v46 = *(v34 + 8);
  v46(v37, v33);
  v46(v39, v33);
  v47 = 0;
  v192 = 0;
  if ((v45 & 1) == 0)
  {
    Fence.id.getter();
    v47 = Fence.ID.uuidString.getter();
    v192 = v48;
    v44(v43, v198);
  }

  v49 = v206;
  v198 = v3;
  Fence.variant.getter();
  v50 = v205;
  v51 = v207;
  v52 = (*(v205 + 88))(v49, v207);
  if (v52 == enum case for Fence.Variant.oneTime(_:) || v52 == enum case for Fence.Variant.recurring(_:))
  {
    (*(v50 + 96))(v49, v51);
    v55 = v191;
    v56 = v190;
    v57 = v193;
    (*(v191 + 4))(v190, v49, v193);
    v58 = v186;
    (*(v55 + 2))(v186, v56, v57);
    v59 = (*(v55 + 11))(v58, v57);
    v53 = v219;
    if (v59 != enum case for Fence.Trigger.arriving(_:))
    {
      v62 = v213;
      if (v59 != enum case for Fence.Trigger.leaving(_:))
      {
        goto LABEL_109;
      }

      (*(v55 + 1))(v56, v57);
      v186 = 0xE400000000000000;
      v185 = 1953069157;
      v60 = v197;
      v61 = v196;
      goto LABEL_12;
    }

    (*(v55 + 1))(v56, v57);
    v186 = 0xE500000000000000;
    v54 = 0x7265746E65;
  }

  else
  {
    v53 = v219;
    if (v52 != enum case for Fence.Variant.scheduled(_:))
    {
      goto LABEL_109;
    }

    (*(v50 + 8))(v49, v51);
    v186 = 0xE900000000000064;
    v54 = 0x656C756465686373;
  }

  v185 = v54;
  v60 = v197;
  v61 = v196;
  v62 = v213;
LABEL_12:
  v63 = v208;
  Fence.createdBy.getter();
  v64 = v209;
  Fence.finder.getter();
  v65 = *(v210 + 48);
  v66 = v61[4];
  v66(v62, v63, v60);
  v66(&v62[v65], v64, v60);
  v67 = v61[11];
  v68 = v67(v62, v60);
  v69 = v68;
  LODWORD(v190) = enum case for Fence.Participant.me(_:);
  v187 = v47;
  if (v68 == enum case for Fence.Participant.me(_:))
  {
    v70 = v67(&v62[v65], v60);
    if (v70 != v69)
    {
      if (v70 != enum case for Fence.Participant.other(_:))
      {
        goto LABEL_109;
      }

      goto LABEL_18;
    }

    goto LABEL_20;
  }

  if (v68 == enum case for Fence.Participant.other(_:))
  {
    v71 = v67(&v62[v65], v60);
    if (v71 == v190)
    {
LABEL_18:
      v183 = 0x744F796669746F4ELL;
      v72 = 0xEC00000073726568;
      v73 = &v216;
      goto LABEL_21;
    }

    if (v71 == v69)
    {
LABEL_20:
      v184 = 0xE800000000000000;
      v72 = 0x654D796669746F4ELL;
      v73 = &v215;
LABEL_21:
      *(v73 - 32) = v72;
      v74 = v61[1];
      v193 = (v61 + 1);
      v182 = v74;
      v74(v62, v60);
      v75 = v211;
      v76 = *(v211 + 16);
      v191 = _swiftEmptyArrayStorage;
      if (v76)
      {
        v221 = _swiftEmptyArrayStorage;
        sub_10000E8E0(0, v76, 0);
        v77 = v221;
        v213 = *(v204 + 16);
        v78 = v75 + ((*(v204 + 80) + 32) & ~*(v204 + 80));
        v211 = *(v204 + 72);
        v79 = (v204 + 8);
        v80 = v202;
        do
        {
          v81 = v214;
          v82 = v217;
          (v213)(v214, v78, v217);
          Friend.handle.getter();
          (*v79)(v81, v82);
          v221 = v77;
          v84 = *(v77 + 2);
          v83 = *(v77 + 3);
          if (v84 >= v83 >> 1)
          {
            sub_10000E8E0((v83 > 1), v84 + 1, 1);
            v77 = v221;
          }

          *(v77 + 2) = v84 + 1;
          v53 = v219;
          (*(v215 + 32))(&v77[((*(v215 + 80) + 32) & ~*(v215 + 80)) + *(v215 + 72) * v84], v80, v219);
          v78 += v211;
          --v76;
        }

        while (v76);
        v213 = v77;
        v60 = v197;
        v61 = v196;
      }

      else
      {
        v213 = _swiftEmptyArrayStorage;
      }

      v85 = Fence.others.getter();
      v86 = v203;
      v211 = *(v85 + 16);
      if (v211)
      {
        v87 = 0;
        v209 = *(v189 + 16);
        v88 = (*(v189 + 80) + 32) & ~*(v189 + 80);
        v180[1] = v85;
        v208 = (v85 + v88);
        v89 = *(v189 + 72);
        v217 = v215 + 16;
        v90 = (v215 + 8);
        v91 = (v215 + 32);
        v206 = (v215 + 56);
        v207 = v89;
        v210 = v189 + 16;
        v204 = v215 + 48;
        v205 = v189 + 8;
        v92 = _swiftEmptyArrayStorage;
        v93 = v218;
        v202 = (v215 + 32);
        (v209)(v220, v85 + v88, v216);
        while (1)
        {
          v94 = *(v213 + 2);
          if (v94)
          {
            v214 = v92;
            v95 = &v213[(*(v215 + 80) + 32) & ~*(v215 + 80)];
            v96 = *(v215 + 72);
            v97 = *(v215 + 16);
            while (1)
            {
              v97(v93, v95, v53);
              v98 = PersonHandle.id.getter();
              v100 = v99;
              if (v98 == Handle.identifier.getter() && v100 == v101)
              {
                break;
              }

              v102 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v102)
              {
                goto LABEL_42;
              }

              v93 = v218;
              v53 = v219;
              (*v90)(v218, v219);
              v95 += v96;
              if (!--v94)
              {
                v103 = 1;
                v92 = v214;
                v91 = v202;
                v86 = v203;
                goto LABEL_43;
              }
            }

LABEL_42:
            v91 = v202;
            v86 = v203;
            v93 = v218;
            v53 = v219;
            (*v202)(v203, v218, v219);
            v103 = 0;
            v92 = v214;
          }

          else
          {
            v103 = 1;
          }

LABEL_43:
          (*v206)(v86, v103, 1, v53);
          (*v205)(v220, v216);
          if ((*v204)(v86, 1, v53) == 1)
          {
            sub_100002CE0(v86, &qword_1005B3360, &unk_1004C6AA0);
          }

          else
          {
            v104 = *v91;
            (*v91)(v212, v86, v53);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v92 = sub_1001FCA0C(0, *(v92 + 2) + 1, 1, v92);
            }

            v106 = *(v92 + 2);
            v105 = *(v92 + 3);
            if (v106 >= v105 >> 1)
            {
              v92 = sub_1001FCA0C((v105 > 1), v106 + 1, 1, v92);
            }

            *(v92 + 2) = v106 + 1;
            v104(&v92[((*(v215 + 80) + 32) & ~*(v215 + 80)) + *(v215 + 72) * v106], v212, v53);
            v93 = v218;
          }

          if (++v87 == v211)
          {
            break;
          }

          (v209)(v220, &v208[v207 * v87], v216);
        }

        v214 = v92;

        v60 = v197;
        v61 = v196;
      }

      else
      {

        v214 = _swiftEmptyArrayStorage;
      }

      v107 = v194;
      Fence.findee.getter();
      v108 = enum case for Fence.Participant.other(_:);
      v109 = v61[13];
      v110 = v195;
      v109(v195, enum case for Fence.Participant.other(_:), v60);
      v111 = static Fence.Participant.== infix(_:_:)();
      v112 = v182;
      v182(v110, v60);
      v112(v107, v60);
      LODWORD(v220) = v108;
      if ((v111 & 1) != 0 && *(v214 + 2))
      {
        v113 = v215;
        v114 = v181;
        (*(v215 + 16))(v181, &v214[(*(v113 + 80) + 32) & ~*(v113 + 80)], v53);
        v217 = Handle.serverID.getter();
        v213 = v115;
        (*(v113 + 8))(v114, v53);
      }

      else
      {
        v217 = 0;
        v213 = 0;
      }

      v116 = v194;
      Fence.createdBy.getter();
      v117 = v195;
      v118 = v190;
      v109(v195, v190, v60);
      v119 = static Fence.Participant.== infix(_:_:)();
      v112(v117, v60);
      v112(v116, v60);
      if (v119)
      {
        Fence.findee.getter();
        v109(v117, v118, v60);
        LODWORD(v218) = static Fence.Participant.== infix(_:_:)();
        v112(v117, v60);
        v112(v116, v60);
      }

      else
      {
        LODWORD(v218) = 0;
      }

      Fence.createdBy.getter();
      v109(v117, v220, v60);
      v120 = static Fence.Participant.== infix(_:_:)();
      v112(v117, v60);
      v112(v116, v60);
      if (v120)
      {
        Fence.findee.getter();
        v109(v117, v118, v60);
        v121 = static Fence.Participant.== infix(_:_:)();
        v112(v117, v60);
        v112(v116, v60);
      }

      else
      {
        v121 = 0;
      }

      v221 = _swiftEmptyArrayStorage;
      if (v218)
      {
        LODWORD(v212) = v121;
        v122 = Fence.others.getter();
        v123 = *(v122 + 16);
        if (v123)
        {
          v220 = *(v189 + 16);
          v124 = *(v189 + 80);
          v218 = v122;
          v125 = v122 + ((v124 + 32) & ~v124);
          v126 = *(v189 + 72);
          v127 = (v189 + 8);
          v128 = _swiftEmptyArrayStorage;
          do
          {
            v130 = v199;
            v131 = v216;
            (v220)(v199, v125, v216);
            v132 = PersonHandle.email.getter();
            v134 = v133;
            (*v127)(v130, v131);
            if (v134)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v128 = sub_1001FC900(0, *(v128 + 2) + 1, 1, v128);
              }

              v136 = *(v128 + 2);
              v135 = *(v128 + 3);
              if (v136 >= v135 >> 1)
              {
                v128 = sub_1001FC900((v135 > 1), v136 + 1, 1, v128);
              }

              *(v128 + 2) = v136 + 1;
              v129 = &v128[16 * v136];
              *(v129 + 4) = v132;
              *(v129 + 5) = v134;
            }

            v125 += v126;
            --v123;
          }

          while (v123);
        }

        else
        {

          v128 = _swiftEmptyArrayStorage;
        }

        v221 = v128;

        v137 = Fence.others.getter();
        v138 = *(v137 + 16);
        if (v138)
        {
          v220 = *(v189 + 16);
          v139 = *(v189 + 80);
          v211 = v137;
          v140 = v137 + ((v139 + 32) & ~v139);
          v218 = *(v189 + 72);
          v141 = (v189 + 8);
          v142 = _swiftEmptyArrayStorage;
          do
          {
            v144 = v200;
            v145 = v216;
            (v220)(v200, v140, v216);
            v146 = PersonHandle.phoneNumber.getter();
            v148 = v147;
            (*v141)(v144, v145);
            if (v148)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v142 = sub_1001FC900(0, *(v142 + 2) + 1, 1, v142);
              }

              v150 = *(v142 + 2);
              v149 = *(v142 + 3);
              v151 = v142;
              if (v150 >= v149 >> 1)
              {
                v151 = sub_1001FC900((v149 > 1), v150 + 1, 1, v142);
              }

              v142 = v151;
              *(v151 + 2) = v150 + 1;
              v143 = &v151[16 * v150];
              *(v143 + 4) = v146;
              *(v143 + 5) = v148;
            }

            v140 += v218;
            --v138;
          }

          while (v138);
        }

        else
        {

          v142 = _swiftEmptyArrayStorage;
        }

        v152 = *(v128 + 2);

        v191 = v142;
        if (v152)
        {
          if ((v212 & 1) == 0)
          {
            goto LABEL_107;
          }

          goto LABEL_94;
        }

        if (qword_1005A80F0 != -1)
        {
          swift_once();
        }

        v153 = type metadata accessor for Logger();
        sub_10000A6F0(v153, qword_1005DFFA0);
        v154 = Logger.logObject.getter();
        v155 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v154, v155))
        {
          v156 = swift_slowAlloc();
          *v156 = 0;
          _os_log_impl(&_mh_execute_header, v154, v155, "FenceByMeOnMe: No emails. Adding phone numbers...", v156, 2u);
        }

        LOBYTE(v121) = v212;
        if (!*(v142 + 2))
        {
          v171 = Logger.logObject.getter();
          v172 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v171, v172))
          {
            v173 = swift_slowAlloc();
            *v173 = 0;
            _os_log_impl(&_mh_execute_header, v171, v172, "FenceByMeOnMe: No phone numbers either.", v173, 2u);
          }

          if ((v121 & 1) == 0)
          {
            goto LABEL_107;
          }

LABEL_94:
          v158 = *(v214 + 2);
          if (v158)
          {
            v220 = *(v215 + 16);
            v159 = &v214[(*(v215 + 80) + 32) & ~*(v215 + 80)];
            v160 = *(v215 + 72);
            v161 = (v215 + 8);
            v162 = _swiftEmptyArrayStorage;
            do
            {
              v164 = v201;
              v165 = v219;
              (v220)(v201, v159, v219);
              v166 = Handle.serverID.getter();
              v168 = v167;
              (*v161)(v164, v165);
              if (v168)
              {
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v162 = sub_1001FC900(0, *(v162 + 2) + 1, 1, v162);
                }

                v170 = *(v162 + 2);
                v169 = *(v162 + 3);
                if (v170 >= v169 >> 1)
                {
                  v162 = sub_1001FC900((v169 > 1), v170 + 1, 1, v162);
                }

                *(v162 + 2) = v170 + 1;
                v163 = &v162[16 * v170];
                *(v163 + 4) = v166;
                *(v163 + 5) = v168;
              }

              v159 += v160;
              --v158;
            }

            while (v158);

            goto LABEL_108;
          }

LABEL_107:

          v162 = _swiftEmptyArrayStorage;
LABEL_108:
          v174 = v221;
          v175 = v188;
          v176 = v192;
          *v188 = v187;
          v175[1] = v176;
          v177 = v213;
          v175[2] = v217;
          v175[3] = v177;
          v178 = v184;
          v175[4] = v183;
          v175[5] = v178;
          v179 = v186;
          v175[6] = v185;
          v175[7] = v179;
          v175[8] = v174;
          v175[9] = v191;
          v175[10] = v162;
          return;
        }

        sub_1002492B0(v157);
      }

      if ((v121 & 1) == 0)
      {
        goto LABEL_107;
      }

      goto LABEL_94;
    }
  }

LABEL_109:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100249050@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Fence.AcceptanceStatus();
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v15 = v7;
    if (a1 == 0x6465747065636341 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v10 = &enum case for Fence.AcceptanceStatus.accepted(_:);
LABEL_6:

LABEL_7:
      (*(v15 + 104))(v9, *v10, v6);
      (*(v15 + 32))(a3, v9, v6);
      return (*(v15 + 56))(a3, 0, 1, v6);
    }

    if (a1 == 0x6E6564646948 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v10 = &enum case for Fence.AcceptanceStatus.pendingHidden(_:);
      goto LABEL_6;
    }

    if (a1 == 0x676E69646E6550 && a2 == 0xE700000000000000)
    {
      v10 = &enum case for Fence.AcceptanceStatus.pending(_:);
      goto LABEL_6;
    }

    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v15;
    if (v12)
    {
      v10 = &enum case for Fence.AcceptanceStatus.pending(_:);
      goto LABEL_7;
    }
  }

  v13 = *(v7 + 56);

  return v13(a3, 1, 1, v6);
}

void sub_1002492B0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
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

  v3 = sub_1001FC900(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_1002493A4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
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

  v3 = sub_1001FCA34(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_100249520(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(a1 + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(a1 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
}

void sub_100249664(unint64_t a1)
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
    v6 = v4 + v3;
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
  v6 = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_10024ADE4(v6, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_10024AE84(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
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
    return;
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
}

uint64_t sub_100249754()
{
  v0 = type metadata accessor for Fence.Participant();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v16 - v5;
  v7 = type metadata accessor for Fence.Variant();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Fence.variant.getter();
  v11 = (*(v8 + 88))(v10, v7);
  if (v11 == enum case for Fence.Variant.oneTime(_:))
  {
    (*(v8 + 8))(v10, v7);
    v12 = 0;
  }

  else
  {
    if (v11 != enum case for Fence.Variant.recurring(_:) && v11 != enum case for Fence.Variant.scheduled(_:))
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    (*(v8 + 8))(v10, v7);
    Fence.createdBy.getter();
    Fence.finder.getter();
    v12 = static Fence.Participant.== infix(_:_:)();
    v14 = *(v1 + 8);
    v14(v4, v0);
    v14(v6, v0);
  }

  return v12 & 1;
}

uint64_t sub_1002499DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Fence.MonitorRegion.Source();
  v14 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 48 && a2 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &enum case for Fence.MonitorRegion.Source.unknown(_:);
LABEL_5:
    (*(v14 + 104))(v8, *v9, v6);
    (*(v14 + 32))(a3, v8, v6);
    return (*(v14 + 56))(a3, 0, 1, v6);
  }

  if (a1 == 49 && a2 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &enum case for Fence.MonitorRegion.Source.currentLocation(_:);
    goto LABEL_5;
  }

  if (a1 == 50 && a2 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &enum case for Fence.MonitorRegion.Source.friendLocation(_:);
    goto LABEL_5;
  }

  if (a1 == 51 && a2 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &enum case for Fence.MonitorRegion.Source.labelledLocation(_:);
    goto LABEL_5;
  }

  if (a1 == 52 && a2 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &enum case for Fence.MonitorRegion.Source.addressBook(_:);
    goto LABEL_5;
  }

  if (a1 == 53 && a2 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &enum case for Fence.MonitorRegion.Source.custom(_:);
    goto LABEL_5;
  }

  if (a1 == 54 && a2 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = &enum case for Fence.MonitorRegion.Source.droppedPin(_:);
    goto LABEL_5;
  }

  if (a1 == 55 && a2 == 0xE100000000000000)
  {

LABEL_34:
    v9 = &enum case for Fence.MonitorRegion.Source.tool(_:);
    goto LABEL_5;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v11)
  {
    goto LABEL_34;
  }

  v12 = *(v14 + 56);

  return v12(a3, 1, 1, v6);
}

uint64_t sub_100249D6C@<X0>(uint64_t a1@<X8>)
{
  v134 = a1;
  v2 = sub_10004B564(&qword_1005AE5C0, &unk_1004D06D0);
  __chkstk_darwin(v2 - 8);
  v129 = &v99 - v3;
  v4 = type metadata accessor for Date();
  v125 = *(v4 - 8);
  v126 = v4;
  __chkstk_darwin(v4);
  v124 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PlaceMark();
  v122 = *(v6 - 8);
  v123 = v6;
  __chkstk_darwin(v6);
  v121 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for Fence.MonitorRegion.Source();
  v115 = *(v116 - 8);
  v8 = __chkstk_darwin(v116);
  v112 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v114 = &v99 - v10;
  v11 = type metadata accessor for Fence.MonitorRegion();
  v119 = *(v11 - 8);
  v120 = v11;
  v12 = __chkstk_darwin(v11);
  v118 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v117 = &v99 - v15;
  __chkstk_darwin(v14);
  v111 = &v99 - v16;
  v17 = sub_10004B564(&qword_1005A96E0, &qword_1004C2A80);
  __chkstk_darwin(v17 - 8);
  v19 = &v99 - v18;
  v128 = type metadata accessor for UUID();
  v20 = *(v128 - 8);
  v21 = __chkstk_darwin(v128);
  v131 = &v99 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v132 = &v99 - v23;
  v24 = type metadata accessor for Fence.Participant();
  v25 = *(v24 - 8);
  v26 = __chkstk_darwin(v24);
  v28 = &v99 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = &v99 - v29;
  v31 = type metadata accessor for Fence.Variant();
  v32 = *(v31 - 8);
  v33 = __chkstk_darwin(v31);
  v130 = &v99 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v36 = &v99 - v35;
  v133 = v1;
  Fence.variant.getter();
  v113 = *(v32 + 88);
  v37 = v113(v36, v31);
  if (v37 == enum case for Fence.Variant.oneTime(_:))
  {
    (*(v32 + 8))(v36, v31);
LABEL_8:
    v44 = type metadata accessor for FenceRecord(0);
    return (*(*(v44 - 8) + 56))(v134, 1, 1, v44);
  }

  v109 = enum case for Fence.Variant.oneTime(_:);
  v127 = v20;
  v108 = enum case for Fence.Variant.recurring(_:);
  if (v37 != enum case for Fence.Variant.recurring(_:) && v37 != enum case for Fence.Variant.scheduled(_:))
  {
    goto LABEL_37;
  }

  v107 = enum case for Fence.Variant.scheduled(_:);
  v38 = *(v32 + 8);
  v110 = v31;
  v106 = v32 + 8;
  v105 = v38;
  v38(v36, v31);
  Fence.createdBy.getter();
  Fence.finder.getter();
  v39 = static Fence.Participant.== infix(_:_:)();
  v40 = *(v25 + 8);
  v40(v28, v24);
  v40(v30, v24);
  if ((v39 & 1) == 0)
  {
    goto LABEL_8;
  }

  Fence.ckRecordIdentifier.getter();
  v41 = v127;
  v42 = v128;
  v43 = (*(v127 + 48))(v19, 1, v128);
  v104 = v32 + 88;
  if (v43 == 1)
  {
    sub_100002CE0(v19, &qword_1005A96E0, &qword_1004C2A80);
    UUID.init()();
  }

  else
  {
    (*(v41 + 32))(v132, v19, v42);
  }

  v46 = v115;
  v47 = v114;
  v48 = v111;
  Fence.region.getter();
  Fence.MonitorRegion.source.getter();
  v49 = *(v119 + 8);
  v50 = v48;
  v51 = v120;
  v49(v50, v120);
  v52 = v112;
  v53 = v116;
  (*(v46 + 16))(v112, v47, v116);
  v54 = (*(v46 + 88))(v52, v53);
  if (v54 == enum case for Fence.MonitorRegion.Source.unknown(_:))
  {
    v119 = 0;
  }

  else
  {
    if (v54 == enum case for Fence.MonitorRegion.Source.currentLocation(_:))
    {
      v55 = 1;
    }

    else if (v54 == enum case for Fence.MonitorRegion.Source.friendLocation(_:))
    {
      v55 = 2;
    }

    else if (v54 == enum case for Fence.MonitorRegion.Source.labelledLocation(_:))
    {
      v55 = 3;
    }

    else if (v54 == enum case for Fence.MonitorRegion.Source.addressBook(_:))
    {
      v55 = 4;
    }

    else if (v54 == enum case for Fence.MonitorRegion.Source.custom(_:))
    {
      v55 = 5;
    }

    else if (v54 == enum case for Fence.MonitorRegion.Source.droppedPin(_:))
    {
      v55 = 6;
    }

    else
    {
      if (v54 != enum case for Fence.MonitorRegion.Source.tool(_:))
      {
        goto LABEL_33;
      }

      v55 = 7;
    }

    v119 = v55;
  }

  (*(v46 + 8))(v47, v53);
  v56 = v121;
  Fence.placemark.getter();
  v116 = PlaceMark.locality.getter();
  v115 = v57;
  v114 = PlaceMark.administrativeArea.getter();
  v112 = v58;
  v111 = PlaceMark.country.getter();
  v103 = v59;
  v102 = PlaceMark.stateCode.getter();
  v101 = v60;
  v100 = PlaceMark.streetAddress.getter();
  v99 = v61;
  v62 = PlaceMark.streetName.getter();
  v64 = v63;
  (*(v122 + 8))(v56, v123);
  v65 = v117;
  Fence.region.getter();
  Fence.MonitorRegion.center.getter();
  v67 = v66;
  v69 = v68;
  v49(v65, v51);
  v70 = v118;
  Fence.region.getter();
  Fence.MonitorRegion.radius.getter();
  v72 = v71;
  v49(v70, v51);
  v73 = v124;
  static Date.now.getter();
  v74 = objc_allocWithZone(CLLocation);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v76 = [v74 initWithCoordinate:isa altitude:v67 horizontalAccuracy:v69 verticalAccuracy:0.0 timestamp:{v72, -1.0}];

  (*(v125 + 8))(v73, v126);
  (*(v127 + 16))(v131, v132, v42);
  v77 = Fence.label.getter();
  v79 = v78;
  v80 = v130;
  Fence.variant.getter();
  v81 = v80;
  v82 = v110;
  v83 = v113(v81, v110);
  if (v83 == v109 || v83 == v108)
  {
    v105(v130, v82);
    v88 = type metadata accessor for Fence.Schedule();
    v87 = v129;
    (*(*(v88 - 8) + 56))(v129, 1, 1, v88);
    goto LABEL_32;
  }

  if (v83 != v107)
  {
LABEL_37:
    while (1)
    {
LABEL_33:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  v84 = v130;
  (*(v32 + 96))(v130, v82);
  v85 = type metadata accessor for Fence.Schedule();
  v86 = *(v85 - 8);
  v87 = v129;
  (*(v86 + 32))(v129, v84, v85);
  (*(v86 + 56))(v87, 0, 1, v85);
LABEL_32:
  v89 = type metadata accessor for FenceRecord(0);
  v90 = v134;
  Fence.muteEndDate.getter();
  v91 = v127;
  (*(v127 + 8))(v132, v42);
  (*(v91 + 32))(v90, v131, v42);
  v92 = (v90 + v89[5]);
  *v92 = v77;
  v92[1] = v79;
  *(v90 + v89[6]) = v76;
  *(v90 + v89[7]) = v119;
  sub_10024AD74(v87, v90 + v89[8]);
  v93 = (v90 + v89[10]);
  v94 = v115;
  *v93 = v116;
  v93[1] = v94;
  v95 = v112;
  v93[2] = v114;
  v93[3] = v95;
  v96 = v103;
  v93[4] = v111;
  v93[5] = v96;
  v97 = v101;
  v93[6] = v102;
  v93[7] = v97;
  v98 = v99;
  v93[8] = v100;
  v93[9] = v98;
  v93[10] = v62;
  v93[11] = v64;
  return (*(*(v89 - 1) + 56))(v90, 0, 1, v89);
}

uint64_t sub_10024AAD4()
{
  v0 = type metadata accessor for Fence.Variant();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Fence.Participant();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v17 - v9;
  Fence.finder.getter();
  (*(v5 + 104))(v8, enum case for Fence.Participant.me(_:), v4);
  v11 = static Fence.Participant.== infix(_:_:)();
  v12 = *(v5 + 8);
  v12(v8, v4);
  v12(v10, v4);
  if ((v11 & 1) == 0)
  {
    return 0;
  }

  Fence.variant.getter();
  v13 = (*(v1 + 88))(v3, v0);
  v14 = v13 != enum case for Fence.Variant.oneTime(_:);
  if (v13 != enum case for Fence.Variant.oneTime(_:) && v13 != enum case for Fence.Variant.recurring(_:) && v13 != enum case for Fence.Variant.scheduled(_:))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  (*(v1 + 8))(v3, v0);
  return v14;
}

uint64_t sub_10024AD74(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005AE5C0, &unk_1004D06D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10024ADE4(uint64_t a1, char a2)
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

uint64_t sub_10024AE84(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_10024B08C();
          for (i = 0; i != v6; ++i)
          {
            sub_10004B564(&qword_1005B0680, &qword_1004D2010);
            v9 = sub_10024B004(v13, i, a3);
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
        sub_1002414A8();
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

void (*sub_10024B004(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
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
    return sub_10024B084;
  }

  __break(1u);
  return result;
}

unint64_t sub_10024B08C()
{
  result = qword_1005B0688;
  if (!qword_1005B0688)
  {
    sub_10004B610(&qword_1005B0680, &qword_1004D2010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B0688);
  }

  return result;
}

uint64_t sub_10024B0F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005B0690, &qword_1004D2018);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10024B160(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10024B1A8(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t sub_10024B20C()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

Swift::Int sub_10024B244(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for FenceServiceClient();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10024B2A0()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005DFF88);
  v1 = sub_10000A6F0(v0, qword_1005DFF88);
  if (qword_1005A80F0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A6F0(v0, qword_1005DFFA0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10024B368()
{
  v1[2] = v0;
  type metadata accessor for UUID();
  v1[3] = swift_task_alloc();
  sub_10004B564(&qword_1005B0370, &unk_1004D2410);
  v1[4] = swift_task_alloc();

  return _swift_task_switch(sub_10024B430, 0, 0);
}

uint64_t sub_10024B430()
{
  v1 = v0[4];
  v2 = v0[2];
  swift_defaultActor_initialize();
  strcpy((v2 + 112), "FenceService");
  *(v2 + 125) = 0;
  *(v2 + 126) = -5120;
  v3 = OBJC_IVAR____TtC13findmylocated12FenceService_serviceDescription;
  v4 = type metadata accessor for XPCServiceDescription();
  (*(*(v4 - 8) + 56))(v2 + v3, 1, 1, v4);
  *(v2 + OBJC_IVAR____TtC13findmylocated12FenceService_trampoline) = 0;
  v5 = OBJC_IVAR____TtC13findmylocated12FenceService_connectionPool;
  sub_10004B564(&qword_1005B0990, &qword_1004D2310);
  *(v2 + v5) = XPCClientConnectionPool.__allocating_init()();
  *(v2 + OBJC_IVAR____TtC13findmylocated12FenceService_systemClockDidChangeObserver) = 0;
  *(v2 + OBJC_IVAR____TtC13findmylocated12FenceService_systemTimeZoneDidChangeObserver) = 0;
  *(v2 + OBJC_IVAR____TtC13findmylocated12FenceService_darwinSignificantTimeChangeTask) = 0;
  *(v2 + OBJC_IVAR____TtC13findmylocated12FenceService_xpcAlarmHandlerTask) = 0;
  *(v2 + OBJC_IVAR____TtC13findmylocated12FenceService_significantTimeChangeDebounceTask) = 0;
  v6 = OBJC_IVAR____TtC13findmylocated12FenceService_triggerWorkItemQueue;
  type metadata accessor for WorkItemQueue();
  v7 = type metadata accessor for WorkItemQueue.WarningOptions();
  (*(*(v7 - 8) + 56))(v1, 1, 1, v7);
  UUID.init()();
  *(v2 + v6) = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
  type metadata accessor for XPCSessionManager();
  v8 = swift_task_alloc();
  v0[5] = v8;
  *v8 = v0;
  v8[1] = sub_10024B658;

  return XPCSessionManager.__allocating_init(name:)(0x72655365636E6546, 0xEC00000065636976);
}

uint64_t sub_10024B658(uint64_t a1)
{
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_10024B758, 0, 0);
}

uint64_t sub_10024B758()
{
  *(v0[2] + OBJC_IVAR____TtC13findmylocated12FenceService_xpcSessionManager) = v0[6];

  v1 = v0[1];
  v2 = v0[2];

  return v1(v2);
}

uint64_t sub_10024B7D8()
{
  v1[2] = v0;
  v1[3] = *v0;
  sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v1[4] = swift_task_alloc();

  return _swift_task_switch(sub_10024B89C, v0, 0);
}

uint64_t sub_10024B89C()
{
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFF88);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "FenceService: startup", v4, 2u);
  }

  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];

  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = sub_1000032D4(&qword_1005AF4A8, 255, type metadata accessor for FenceService, &unk_1004D2208);
  v10 = swift_allocObject();
  v10[2] = v7;
  v10[3] = v9;
  v10[4] = v7;
  v10[5] = v6;
  swift_retain_n();
  sub_1001D7F30(0, 0, v5, &unk_1004D23D8, v10);

  v0[5] = *(v7 + OBJC_IVAR____TtC13findmylocated12FenceService_connectionPool);
  v11 = swift_allocObject();
  v0[6] = v11;
  *(v11 + 16) = v7;
  *(v11 + 24) = v6;

  sub_10004B564(&qword_1005B0990, &qword_1004D2310);
  sub_10001534C();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[7] = v13;
  v0[8] = v12;

  return _swift_task_switch(sub_10024BB00, v13, v12);
}

uint64_t sub_10024BB00()
{
  dispatch thunk of XPCClientConnectionPool.setStopProcessing(_:)();

  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return _swift_task_switch(sub_10024BB84, v1, v2);
}

uint64_t sub_10024BB84()
{
  dispatch thunk of XPCClientConnectionPool.setRemoveHandler(_:)();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10024BC28()
{
  v9 = v0;
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 24) = sub_10000A6F0(v1, qword_1005DFF88);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0x2870757472617473, 0xE900000000000029, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s Waiting for first unlock", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = swift_task_alloc();
  *(v0 + 32) = v6;
  *v6 = v0;
  v6[1] = sub_10024BDD8;

  return daemon.getter();
}

uint64_t sub_10024BDD8(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 40) = a1;

  v3 = swift_task_alloc();
  *(v2 + 48) = v3;
  v4 = type metadata accessor for Daemon();
  UnlockService = type metadata accessor for FirstUnlockService();
  v6 = sub_1000032D4(&unk_1005AFA50, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1000032D4(&qword_1005AD510, 255, &type metadata accessor for FirstUnlockService, &protocol conformance descriptor for FirstUnlockService);
  *v3 = v9;
  v3[1] = sub_10024BFBC;

  return ActorServiceDaemon.getService<A>()(v4, UnlockService, v6, v7);
}

uint64_t sub_10024BFBC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[7] = a1;
  v3[8] = v1;

  if (v1)
  {
    v5 = v3[2];

    return _swift_task_switch(sub_10024C564, v5, 0);
  }

  else
  {

    v8 = (&async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock() + async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock());
    v6 = swift_task_alloc();
    v3[9] = v6;
    *v6 = v4;
    v6[1] = sub_10024C160;

    return v8();
  }
}

uint64_t sub_10024C160()
{
  v1 = *(*v0 + 16);

  return _swift_task_switch(sub_10024C270, v1, 0);
}

uint64_t sub_10024C270(uint64_t a1)
{
  v9 = v1;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0x2870757472617473, 0xE900000000000029, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s first unlock completed", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = swift_task_alloc();
  *(v1 + 80) = v6;
  *v6 = v1;
  v6[1] = sub_10024C3D8;

  return sub_10025345C();
}

uint64_t sub_10024C3D8()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 16);
  if (v0)
  {
    v4 = sub_10024C6C8;
  }

  else
  {
    v4 = sub_10024C504;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10024C504()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10024C564()
{

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error retryAllUnacceptedFenceShares: %{public}@", v3, 0xCu);
    sub_100002CE0(v4, &qword_1005A9670, &unk_1004C2480);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10024C6C8()
{

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error retryAllUnacceptedFenceShares: %{public}@", v3, 0xCu);
    sub_100002CE0(v4, &qword_1005A9670, &unk_1004C2480);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10024C82C(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10024C8C8, 0, 0);
}

uint64_t sub_10024C8C8()
{
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFF88);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "stopProcessing", v4, 2u);
  }

  v6 = v0[2];
  v5 = v0[3];

  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v6;

  sub_1001D7F30(0, 0, v5, &unk_1004D2400, v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10024CA7C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_10024D568();
}

uint64_t sub_10024CB0C()
{
  v1[12] = v0;
  sub_10004B564(&qword_1005B09F8, &qword_1004D23A8);
  v1[13] = swift_task_alloc();
  v2 = type metadata accessor for XPCServiceDescription();
  v1[14] = v2;
  v1[15] = *(v2 - 8);
  v1[16] = swift_task_alloc();
  v3 = type metadata accessor for MachServiceName();
  v1[17] = v3;
  v1[18] = *(v3 - 8);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();

  return _swift_task_switch(sub_10024CC6C, v0, 0);
}

uint64_t sub_10024CC6C()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);
  v22 = *(v0 + 152);
  v23 = *(v0 + 136);
  v3 = *(v0 + 120);
  v26 = *(v0 + 112);
  v24 = *(v0 + 128);
  v25 = *(v0 + 104);
  v4 = *(v0 + 96);
  v5 = type metadata accessor for FenceService.Trampoline();
  v6 = objc_allocWithZone(v5);
  swift_weakInit();
  swift_weakAssign();
  *(v0 + 80) = v6;
  *(v0 + 88) = v5;
  v7 = objc_msgSendSuper2((v0 + 80), "init");
  *(v0 + 168) = v7;
  v8 = objc_opt_self();
  v9 = [v8 interfaceWithProtocol:&OBJC_PROTOCOL____TtP12FindMyLocate21FenceServiceClientXPC_];
  *(v0 + 176) = v9;
  MachServiceName.init(_:)();
  v10 = [v8 interfaceWithProtocol:&OBJC_PROTOCOL____TtP12FindMyLocate21FenceServiceDaemonXPC_];
  *(v0 + 184) = v10;
  (*(v2 + 16))(v22, v1, v23);
  v11 = type metadata accessor for ServiceEntitlements();
  *(v0 + 40) = v11;
  *(v0 + 48) = sub_1000032D4(&qword_1005B0A00, 255, &type metadata accessor for ServiceEntitlements, &protocol conformance descriptor for ServiceEntitlements);
  v12 = sub_10000331C((v0 + 16));
  (*(*(v11 - 8) + 104))(v12, enum case for ServiceEntitlements.locationService(_:), v11);
  swift_allocObject();
  swift_weakInit();
  v13 = v7;
  v14 = v10;
  v15 = v9;
  XPCServiceDescription.init(name:exportedObject:exportedInterface:remoteObjectInterface:options:requiredEntitlement:shouldAccept:)();
  v16 = *(v4 + OBJC_IVAR____TtC13findmylocated12FenceService_trampoline);
  *(v4 + OBJC_IVAR____TtC13findmylocated12FenceService_trampoline) = v13;
  v17 = v13;

  (*(v3 + 16))(v25, v24, v26);
  (*(v3 + 56))(v25, 0, 1, v26);
  v18 = OBJC_IVAR____TtC13findmylocated12FenceService_serviceDescription;
  swift_beginAccess();
  sub_100251A44(v25, v4 + v18);
  swift_endAccess();
  *(v0 + 192) = *(v4 + OBJC_IVAR____TtC13findmylocated12FenceService_xpcSessionManager);
  type metadata accessor for XPCSessionManager();
  sub_1000032D4(&qword_1005B0A08, 255, &type metadata accessor for XPCSessionManager, &protocol conformance descriptor for XPCSessionManager);
  v20 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10024CFE8, v20, v19);
}

uint64_t sub_10024CFE8()
{
  dispatch thunk of XPCSessionManager.register(service:)();
  *(v0 + 200) = 0;
  v1 = swift_task_alloc();
  *(v0 + 208) = v1;
  *v1 = v0;
  v1[1] = sub_10024D0D4;

  return sub_100293A88();
}

uint64_t sub_10024D0D4()
{
  v1 = *(*v0 + 96);

  return _swift_task_switch(sub_10024D1E4, v1, 0);
}

uint64_t sub_10024D1E4()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  v4 = *(v0 + 144);
  v6 = *(v0 + 128);
  v5 = *(v0 + 136);
  v7 = *(v0 + 112);
  v8 = *(v0 + 120);

  (*(v8 + 8))(v6, v7);
  (*(v4 + 8))(v2, v5);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10024D2D8()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  v4 = *(v0 + 144);
  v6 = *(v0 + 128);
  v5 = *(v0 + 136);
  v7 = *(v0 + 112);
  v8 = *(v0 + 120);

  (*(v8 + 8))(v6, v7);
  (*(v4 + 8))(v2, v5);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10024D3CC()
{
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFF88);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    v6 = _convertErrorToNSError(_:)();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error adding connection: %{public}@", v4, 0xCu);
    sub_100002CE0(v5, &qword_1005A9670, &unk_1004C2480);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10024D584()
{
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFF88);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "FenceService: All client connections have been terminated. Invalidating...", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10024D698()
{

  sub_100002CE0(v0 + OBJC_IVAR____TtC13findmylocated12FenceService_serviceDescription, &qword_1005B09F8, &qword_1004D23A8);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10024D770()
{
  sub_10024D698();

  return _swift_defaultActor_deallocate(v0);
}

void sub_10024D7C4(uint64_t a1)
{
  sub_10024D88C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10024D88C(uint64_t a1)
{
  if (!qword_1005B07A0)
  {
    type metadata accessor for XPCServiceDescription();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1005B07A0);
    }
  }
}

uint64_t sub_10024D8E4(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for FenceService(0);
  *v4 = v2;
  v4[1] = sub_10000368C;

  return ActorServiceProtocol.initialLaunchProcessing()(v5, a2);
}

uint64_t sub_10024D990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for FenceService(0);
  *v8 = v4;
  v8[1] = sub_10000368C;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v9, a4);
}

uint64_t sub_10024DA58(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for FenceService(0);
  *v4 = v2;
  v4[1] = sub_100003690;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v5, a2);
}

uint64_t sub_10024DB04()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_10024B7D8();
}

uint64_t sub_10024DB90()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003690;

  return sub_10024CB0C();
}

uint64_t sub_10024DC1C()
{
  type metadata accessor for FenceService(0);
  sub_1000032D4(&qword_1005A9278, 255, type metadata accessor for FenceService, &unk_1004D21A8);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_10024DC8C()
{
  *(*v1 + 1064) = v0;

  if (v0)
  {
    v2 = sub_10024FF50;
  }

  else
  {
    v2 = sub_10024DDA0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10024DDA0()
{
  v1 = v0[128];
  v2 = v0[127];
  v3 = v0[125];
  v4 = v0[124];
  v5 = v0[123];
  v6 = v0[104];
  (*(v3 + 16))(v5, v2, v4);
  v7 = enum case for FenceResponse.fence(_:);
  v8 = type metadata accessor for FenceResponse();
  (*(*(v8 - 8) + 104))(v5, v7, v8);
  swift_storeEnumTagMultiPayload();
  v6(v5);
  sub_100002CE0(v5, &qword_1005B09D8, &qword_1004D2390);
  v9 = *(v3 + 8);
  v9(v2, v4);
  v9(v1, v4);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10024DFBC()
{
  *(*v1 + 1080) = v0;

  if (v0)
  {
    v2 = sub_10025027C;
  }

  else
  {
    v2 = sub_10024E0D0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10024E0D0()
{
  v1 = v0[123];
  v2 = v0[121];
  v3 = v0[118];
  v4 = v0[117];
  v5 = v0[104];
  v6 = enum case for FenceResponse.void(_:);
  v7 = type metadata accessor for FenceResponse();
  (*(*(v7 - 8) + 104))(v1, v6, v7);
  swift_storeEnumTagMultiPayload();
  v5(v1);
  sub_100002CE0(v1, &qword_1005B09D8, &qword_1004D2390);
  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10024E2B4(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 1096) = a1;

  v3 = swift_task_alloc();
  *(v2 + 1104) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for DataManager(0);
  v6 = sub_1000032D4(&unk_1005AFA50, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1000032D4(&qword_1005A90D0, 255, type metadata accessor for DataManager, &unk_1004D1410);
  *v3 = v9;
  v3[1] = sub_10024E498;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10024E498(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 1112) = v1;

  if (v1)
  {
    v6 = v4[103];

    return _swift_task_switch(sub_10024E96C, v6, 0);
  }

  else
  {

    v4[140] = a1;
    v7 = swift_task_alloc();
    v4[141] = v7;
    *v7 = v5;
    v7[1] = sub_10024E624;

    return sub_100006424();
  }
}

uint64_t sub_10024E624(uint64_t a1)
{
  v2 = *(*v1 + 824);
  *(*v1 + 1136) = a1;

  return _swift_task_switch(sub_10024E73C, v2, 0);
}

uint64_t sub_10024E73C()
{

  return _swift_task_switch(sub_10024E7A4, 0, 0);
}

uint64_t sub_10024E7A4()
{
  v1 = v0[123];
  v2 = v0[104];
  *v1 = v0[142];
  v3 = enum case for FenceResponse.fences(_:);
  v4 = type metadata accessor for FenceResponse();
  (*(*(v4 - 8) + 104))(v1, v3, v4);
  swift_storeEnumTagMultiPayload();
  v2(v1);
  sub_100002CE0(v1, &qword_1005B09D8, &qword_1004D2390);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10024E96C()
{

  return _swift_task_switch(sub_10024E9D4, 0, 0);
}

uint64_t sub_10024E9D4()
{
  v13 = v0;
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFF88);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v4 = 136446466;
    *(v4 + 4) = sub_10000D01C(0xD00000000000001CLL, 0x80000001004E5C50, &v12);
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s getFences Error: %{public}@", v4, 0x16u);
    sub_100002CE0(v5, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v6);
  }

  v8 = v0[123];
  v9 = v0[104];
  *v8 = v0[139];
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v9(v8);

  sub_100002CE0(v8, &qword_1005B09D8, &qword_1004D2390);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10024ECDC()
{
  *(*v1 + 1152) = v0;

  if (v0)
  {
    v2 = sub_1002505A8;
  }

  else
  {
    v2 = sub_10024EDF0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10024EDF0()
{
  v1 = v0[126];
  v2 = v0[125];
  v3 = v0[124];
  v4 = v0[123];
  v5 = v0[118];
  v11 = v0[117];
  v12 = v0[120];
  v6 = v0[104];
  (*(v2 + 16))(v4, v1, v3);
  v7 = enum case for FenceResponse.fence(_:);
  v8 = type metadata accessor for FenceResponse();
  (*(*(v8 - 8) + 104))(v4, v7, v8);
  swift_storeEnumTagMultiPayload();
  v6(v4);
  sub_100002CE0(v4, &qword_1005B09D8, &qword_1004D2390);
  (*(v2 + 8))(v1, v3);
  (*(v5 + 8))(v12, v11);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10024F018()
{
  v2 = *(*v1 + 896);
  *(*v1 + 1168) = v0;

  sub_100002CE0(v2, &qword_1005B09D0, &unk_1004D2380);
  if (v0)
  {
    v3 = sub_1002508D4;
  }

  else
  {
    v3 = sub_10024F158;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10024F158()
{
  v1 = v0[123];
  v2 = v0[116];
  v3 = v0[115];
  v4 = v0[114];
  v5 = v0[113];
  v6 = v0[104];
  v7 = enum case for FenceResponse.void(_:);
  v8 = type metadata accessor for FenceResponse();
  (*(*(v8 - 8) + 104))(v1, v7, v8);
  swift_storeEnumTagMultiPayload();
  v6(v1);
  sub_100002CE0(v1, &qword_1005B09D8, &qword_1004D2390);
  sub_100002CE0(v5, &unk_1005AE5B0, &qword_1004C32F0);
  (*(v3 + 8))(v2, v4);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10024F358()
{
  v2 = *(*v1 + 856);
  *(*v1 + 1184) = v0;

  sub_100002CE0(v2, &qword_1005A9148, &qword_1004D2370);
  if (v0)
  {
    v3 = sub_100250C1C;
  }

  else
  {
    v3 = sub_10024F498;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10024F498()
{
  v1 = v0[123];
  v2 = v0[118];
  v12 = v0[117];
  v13 = v0[119];
  v11 = v0[111];
  v3 = v0[110];
  v4 = v0[109];
  v5 = v0[108];
  v6 = v0[104];
  sub_100005F04(v5, v1, &qword_1005B09C8, &qword_1004D2378);
  v7 = enum case for FenceResponse.triggerID(_:);
  v8 = type metadata accessor for FenceResponse();
  (*(*(v8 - 8) + 104))(v1, v7, v8);
  swift_storeEnumTagMultiPayload();
  v6(v1);
  sub_100002CE0(v1, &qword_1005B09D8, &qword_1004D2390);
  sub_100002CE0(v5, &qword_1005B09C8, &qword_1004D2378);
  (*(v3 + 8))(v11, v4);
  (*(v2 + 8))(v13, v12);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10024F6DC(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 1200) = a1;

  v3 = swift_task_alloc();
  *(v2 + 1208) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for DataManager(0);
  v6 = sub_1000032D4(&unk_1005AFA50, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1000032D4(&qword_1005A90D0, 255, type metadata accessor for DataManager, &unk_1004D1410);
  *v3 = v9;
  v3[1] = sub_10024F8C0;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10024F8C0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 1216) = v1;

  if (v1)
  {
    v6 = v4[103];

    return _swift_task_switch(sub_10024FBE0, v6, 0);
  }

  else
  {

    v4[153] = a1;
    v7 = swift_task_alloc();
    v4[154] = v7;
    *v7 = v5;
    v7[1] = sub_10024FA50;

    return sub_1001E17C0((v4 + 2));
  }
}

uint64_t sub_10024FA50()
{
  v1 = *v0;
  v2 = *(*v0 + 824);

  sub_100002CE0(v1 + 16, &qword_1005B02C0, &unk_1004D5E90);

  return _swift_task_switch(sub_10024FB78, v2, 0);
}

uint64_t sub_10024FB78()
{

  return _swift_task_switch(sub_100252020, 0, 0);
}

uint64_t sub_10024FBE0()
{

  return _swift_task_switch(sub_10024FC48, 0, 0);
}

uint64_t sub_10024FC48()
{
  v13 = v0;
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFF88);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v4 = 136446466;
    *(v4 + 4) = sub_10000D01C(0xD00000000000001CLL, 0x80000001004E5C50, &v12);
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s, forceRefreshClient failed with error: %{public}@", v4, 0x16u);
    sub_100002CE0(v5, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v6);
  }

  v8 = v0[123];
  v9 = v0[104];
  *v8 = v0[152];
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v9(v8);

  sub_100002CE0(v8, &qword_1005B09D8, &qword_1004D2390);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10024FF50()
{
  v16 = v0;
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFF88);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v4 = 136446466;
    *(v4 + 4) = sub_10000D01C(0xD00000000000001CLL, 0x80000001004E5C50, &v15);
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s updateFence Error: %{public}@", v4, 0x16u);
    sub_100002CE0(v5, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v6);
  }

  v8 = v0[128];
  v9 = v0[125];
  v10 = v0[124];
  v11 = v0[123];
  v12 = v0[104];
  *v11 = v0[133];
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v12(v11);

  sub_100002CE0(v11, &qword_1005B09D8, &qword_1004D2390);
  (*(v9 + 8))(v8, v10);

  v13 = v0[1];

  return v13();
}

uint64_t sub_10025027C()
{
  v16 = v0;
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFF88);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v4 = 136446466;
    *(v4 + 4) = sub_10000D01C(0xD00000000000001CLL, 0x80000001004E5C50, &v15);
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s deleteFence Error: %{public}@", v4, 0x16u);
    sub_100002CE0(v5, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v6);
  }

  v8 = v0[123];
  v9 = v0[121];
  v10 = v0[118];
  v11 = v0[117];
  v12 = v0[104];
  *v8 = v0[135];
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v12(v8);

  sub_100002CE0(v8, &qword_1005B09D8, &qword_1004D2390);
  (*(v10 + 8))(v9, v11);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1002505A8()
{
  v16 = v0;
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFF88);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v4 = 136446466;
    *(v4 + 4) = sub_10000D01C(0xD00000000000001CLL, 0x80000001004E5C50, &v15);
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s acceptFence Error: %{public}@", v4, 0x16u);
    sub_100002CE0(v5, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v6);
  }

  v8 = v0[123];
  v9 = v0[120];
  v10 = v0[118];
  v11 = v0[117];
  v12 = v0[104];
  *v8 = v0[144];
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v12(v8);

  sub_100002CE0(v8, &qword_1005B09D8, &qword_1004D2390);
  (*(v10 + 8))(v9, v11);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1002508D4()
{
  v17 = v0;
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFF88);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v4 = 136446466;
    *(v4 + 4) = sub_10000D01C(0xD00000000000001CLL, 0x80000001004E5C50, &v16);
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s muteFences Error: %{public}@", v4, 0x16u);
    sub_100002CE0(v5, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v6);
  }

  v8 = v0[123];
  v9 = v0[116];
  v10 = v0[115];
  v11 = v0[114];
  v12 = v0[113];
  v13 = v0[104];
  *v8 = v0[146];
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v13(v8);

  sub_100002CE0(v8, &qword_1005B09D8, &qword_1004D2390);
  sub_100002CE0(v12, &unk_1005AE5B0, &qword_1004C32F0);
  (*(v10 + 8))(v9, v11);

  v14 = v0[1];

  return v14();
}

uint64_t sub_100250C1C()
{
  v19 = v0;
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFF88);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18 = v6;
    *v4 = 136446466;
    *(v4 + 4) = sub_10000D01C(0xD00000000000001CLL, 0x80000001004E5C50, &v18);
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s, triggerFence failed with error: %{public}@", v4, 0x16u);
    sub_100002CE0(v5, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v6);
  }

  v8 = v0[123];
  v17 = v0[119];
  v9 = v0[118];
  v10 = v0[117];
  v11 = v0[111];
  v12 = v0[110];
  v13 = v0[109];
  v14 = v0[104];
  *v8 = v0[148];
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v14(v8);

  sub_100002CE0(v8, &qword_1005B09D8, &qword_1004D2390);
  (*(v12 + 8))(v11, v13);
  (*(v9 + 8))(v17, v10);

  v15 = v0[1];

  return v15();
}

uint64_t sub_100250F70()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100250FD4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100251060()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002510E0()
{
  v11 = v0;

  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFF88);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v4 = 136446466;
    *(v4 + 4) = sub_10000D01C(0x75716552656B616DLL, 0xEF293A5F28747365, &v10);
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s error: %{public}@", v4, 0x16u);
    sub_100002CE0(v5, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v6);
  }

  swift_willThrow();
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1002512E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002519DC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100251314(uint64_t a1, uint64_t a2)
{
  v4 = sub_100251FCC();
  v5 = sub_10004E724();

  return Error<>._code.getter(a1, a2, v4, v5);
}

uint64_t sub_10025136C()
{

  v0[9] = v0[14];
  OnceCheckedContinuation.resume(throwing:)();

  v1 = v0[1];

  return v1();
}

uint64_t sub_100251594()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005DFFA0);
  sub_10000A6F0(v0, qword_1005DFFA0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10025165C()
{
  v3 = (&async function pointer to dispatch thunk of FM.XPCSession.connection.getter + async function pointer to dispatch thunk of FM.XPCSession.connection.getter);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_100251704;

  return v3();
}

uint64_t sub_100251704(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return _swift_task_switch(sub_100251804, 0, 0);
}

uint64_t sub_100251804()
{
  v19 = v0;
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFF88);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 32);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136446210;
    v10 = v7;
    v11 = [v10 description];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_10000D01C(v12, v14, &v18);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Fences Service: removed connection: %{public}s", v8, 0xCu);
    sub_100004984(v9);
  }

  else
  {
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1002519DC(uint64_t a1)
{
  if ((a1 - 1) >= 0x18)
  {
    return 24;
  }

  else
  {
    return a1 - 1;
  }
}

unint64_t sub_1002519F0()
{
  result = qword_1005B09B8;
  if (!qword_1005B09B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B09B8);
  }

  return result;
}

uint64_t sub_100251A44(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005B09F8, &qword_1004D23A8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100251AB4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000368C;

  return sub_10024BC08(a1, v4, v5, v6);
}

uint64_t sub_100251B74()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000368C;

  return sub_10024C82C(v2);
}

uint64_t sub_100251C0C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_10024CA7C();
}

uint64_t getEnumTagSinglePayload for FenceServiceClient.Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE9)
  {
    goto LABEL_17;
  }

  if (a2 + 23 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 23) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 23;
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

      return (*a1 | (v4 << 8)) - 23;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 23;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x18;
  v8 = v6 - 24;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FenceServiceClient.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 23) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE9)
  {
    v4 = 0;
  }

  if (a2 > 0xE8)
  {
    v5 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
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
    *result = a2 + 23;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_100251E20(uint64_t a1)
{
  type metadata accessor for FenceResponse();
  if (v1 <= 0x3F)
  {
    sub_100251ECC();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Fence.Variant();
      if (v3 <= 0x3F)
      {
        type metadata accessor for Fence.ID();
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_100251ECC()
{
  if (!qword_1005A9788)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1005A9788);
    }
  }
}

unint64_t sub_100251F20()
{
  result = qword_1005B0AB8;
  if (!qword_1005B0AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B0AB8);
  }

  return result;
}

unint64_t sub_100251F78()
{
  result = qword_1005B0AC0;
  if (!qword_1005B0AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B0AC0);
  }

  return result;
}

unint64_t sub_100251FCC()
{
  result = qword_1005B0AC8;
  if (!qword_1005B0AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B0AC8);
  }

  return result;
}

uint64_t sub_100252024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for ContinuousClock();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();

  return _swift_task_switch(sub_100252144, v3, 0);
}

uint64_t sub_100252144()
{
  v20 = v0;
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  sub_10000A6F0(v5, qword_1005DFF88);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[10];
  v9 = v0[11];
  v11 = v0[9];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v12 = 136446723;
    *(v12 + 4) = sub_10000D01C(0xD00000000000001ELL, 0x80000001004E5D60, &v19);
    *(v12 + 12) = 2160;
    *(v12 + 14) = 1752392040;
    *(v12 + 22) = 2081;
    sub_100009488(&qword_1005ADD18, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v10 + 8))(v9, v11);
    v16 = sub_10000D01C(v13, v15, &v19);

    *(v12 + 24) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s url:%{private,mask.hash}s", v12, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v17 = swift_task_alloc();
  v0[12] = v17;
  *v17 = v0;
  v17[1] = sub_100252400;

  return daemon.getter();
}

uint64_t sub_100252400(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 104) = a1;

  v3 = swift_task_alloc();
  *(v2 + 112) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for LocalStorageService();
  v6 = sub_100009488(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100009488(&qword_1005AAB88, type metadata accessor for LocalStorageService, &unk_1004D5A30);
  *v3 = v9;
  v3[1] = sub_1002525DC;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1002525DC(uint64_t a1)
{
  v3 = *v2;
  v3[15] = a1;
  v3[16] = v1;

  if (v1)
  {
    v4 = v3[5];
    v5 = sub_100253360;
  }

  else
  {
    v6 = v3[5];

    v5 = sub_100252704;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100252704()
{
  v0[17] = Data.init(base64Encoded:options:)();
  v0[18] = v1;
  if (v1 >> 60 == 15)
  {
    v3 = v0[3];
    v2 = v0[4];
    type metadata accessor for FenceServiceClient.Failure(0);
    sub_100009488(&qword_1005A9140, type metadata accessor for FenceServiceClient.Failure, &unk_1004D25C8);
    swift_allocError();
    *v4 = v3;
    v4[1] = v2;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v5 = v0[1];

    return v5();
  }

  else
  {

    return _swift_task_switch(sub_10025286C, 0, 0);
  }
}

uint64_t sub_10025286C()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[15];
  v4 = v0[2];
  v5 = swift_task_alloc();
  v0[19] = v5;
  v5[2] = v3;
  v5[3] = v4;
  v5[4] = v2;
  v5[5] = v1;
  v6 = swift_task_alloc();
  v0[20] = v6;
  *v6 = v0;
  v6[1] = sub_100252974;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v6, 0, 0, 0xD00000000000002BLL, 0x80000001004E5D00, sub_100257B28, v5, &type metadata for () + 1);
}

uint64_t sub_100252974()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_100252D20;
  }

  else
  {

    v2 = sub_100252A90;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100252AAC()
{
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 176) = v1;
  *v1 = v0;
  v1[1] = sub_100252B78;

  return sub_100291918(0x8AC7230489E80000, 0, 0, 0, 1);
}

uint64_t sub_100252B78()
{
  v2 = *v1;
  v2[23] = v0;

  if (v0)
  {
    v3 = v2[5];
    (*(v2[7] + 8))(v2[8], v2[6]);

    return _swift_task_switch(sub_100252F2C, v3, 0);
  }

  else
  {
    (*(v2[7] + 8))(v2[8], v2[6]);
    v4 = swift_task_alloc();
    v2[24] = v4;
    *v4 = v2;
    v4[1] = sub_100252E10;
    v5 = v2[17];
    v6 = v2[18];
    v7 = v2[2];

    return sub_100253F44(v7, v5, v6);
  }
}

uint64_t sub_100252D20()
{
  v1 = *(v0 + 40);

  return _swift_task_switch(sub_100252D8C, v1, 0);
}

uint64_t sub_100252D8C()
{
  sub_10001A794(v0[17], v0[18]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100252E10()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = sub_1002533D8;
  }

  else
  {
    v4 = sub_100252FB0;
    v3 = 0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100252F2C()
{
  sub_10001A794(v0[17], v0[18]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100252FB0()
{
  v1 = v0[15];
  v2 = v0[2];
  v3 = swift_task_alloc();
  v0[26] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[27] = v4;
  *v4 = v0;
  v4[1] = sub_1002530A8;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000025, 0x80000001004E5D30, sub_100257B34, v3, &type metadata for () + 1);
}

uint64_t sub_1002530A8()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_100253270;
  }

  else
  {

    v2 = sub_1002531C4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002531E0()
{
  sub_10001A794(v0[17], v0[18]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100253270()
{
  v1 = *(v0 + 40);

  return _swift_task_switch(sub_1002532DC, v1, 0);
}

uint64_t sub_1002532DC()
{
  sub_10001A794(v0[17], v0[18]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100253360()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002533D8()
{
  sub_10001A794(v0[17], v0[18]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10025345C()
{
  v1[3] = v0;
  v1[4] = *v0;
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_100253518;

  return daemon.getter();
}

uint64_t sub_100253518(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 48) = a1;

  v3 = swift_task_alloc();
  *(v2 + 56) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for LocalStorageService();
  v6 = sub_100009488(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100009488(&qword_1005AAB88, type metadata accessor for LocalStorageService, &unk_1004D5A30);
  *v3 = v9;
  v3[1] = sub_1002536F4;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1002536F4(uint64_t a1)
{
  v3 = *v2;
  v3[8] = a1;
  v3[9] = v1;

  if (v1)
  {
    v4 = v3[3];
    v5 = sub_100253EE0;
  }

  else
  {

    v5 = sub_100253818;
    v4 = 0;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100253818()
{
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  v2 = sub_10004B564(&qword_1005B0AF0, &qword_1004D2650);
  *v1 = v0;
  v1[1] = sub_100253900;
  v3 = *(v0 + 64);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000025, 0x80000001004E5DB0, sub_100257CD4, v3, v2);
}

uint64_t sub_100253900()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_100253CAC;
  }

  else
  {
    v2 = sub_100253A14;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100253A14()
{
  v1 = v0[3];
  v0[12] = v0[2];
  return _swift_task_switch(sub_100253A34, v1, 0);
}

uint64_t sub_100253A34()
{
  v16 = v0;
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFF88);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[12];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136446466;
    *(v6 + 4) = sub_10000D01C(0xD00000000000001FLL, 0x80000001004E5DE0, &v15);
    *(v6 + 12) = 2050;
    *(v6 + 14) = *(v5 + 16);

    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s retrying %{public}ld share invites.", v6, 0x16u);
    sub_100004984(v7);
  }

  else
  {
  }

  v8 = v0[12];
  v9 = v0[8];
  v10 = v0[3];
  v11 = v0[4];
  sub_100009488(&qword_1005AF4A8, type metadata accessor for FenceService, &unk_1004D2208);
  v12 = swift_task_alloc();
  v0[13] = v12;
  v12[2] = v8;
  v12[3] = v10;
  v12[4] = v9;
  v12[5] = v11;
  v13 = swift_task_alloc();
  v0[14] = v13;
  *v13 = v0;
  v13[1] = sub_100253D2C;

  return withDiscardingTaskGroup<A>(returning:isolation:body:)();
}

uint64_t sub_100253CC8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100253D2C()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_100253E7C, v1, 0);
}

uint64_t sub_100253E7C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100253EE0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100253F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[26] = a3;
  v4[27] = v3;
  v4[24] = a1;
  v4[25] = a2;
  v4[28] = *v3;
  v5 = type metadata accessor for URL();
  v4[29] = v5;
  v6 = *(v5 - 8);
  v4[30] = v6;
  v4[31] = *(v6 + 64);
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();

  return _swift_task_switch(sub_100254078, v3, 0);
}

uint64_t sub_100254078()
{
  v21 = v0;
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v1 = v0[33];
  v2 = v0[29];
  v3 = v0[30];
  v4 = v0[24];
  v5 = type metadata accessor for Logger();
  sub_10000A6F0(v5, qword_1005DFF88);
  v6 = *(v3 + 16);
  v0[34] = v6;
  v0[35] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[33];
  v11 = v0[29];
  v12 = v0[30];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v13 = 136446723;
    *(v13 + 4) = sub_10000D01C(0xD000000000000021, 0x80000001004E5D80, &v20);
    *(v13 + 12) = 2160;
    *(v13 + 14) = 1752392040;
    *(v13 + 22) = 2081;
    sub_100009488(&qword_1005ADD18, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v12 + 8))(v10, v11);
    v17 = sub_10000D01C(v14, v16, &v20);

    *(v13 + 24) = v17;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s accepting share invite for url: %{private,mask.hash}s", v13, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v12 + 8))(v10, v11);
  }

  v18 = swift_task_alloc();
  v0[36] = v18;
  *v18 = v0;
  v18[1] = sub_10025436C;

  return daemon.getter();
}

uint64_t sub_10025436C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[37] = a1;

  v3 = swift_task_alloc();
  v2[38] = v3;
  v4 = type metadata accessor for Daemon();
  v2[39] = v4;
  v5 = type metadata accessor for LocalStorageService();
  v6 = sub_100009488(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[40] = v6;
  v7 = sub_100009488(&qword_1005AAB88, type metadata accessor for LocalStorageService, &unk_1004D5A30);
  *v3 = v9;
  v3[1] = sub_100254584;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100254584(uint64_t a1)
{
  v3 = *v2;
  v3[41] = a1;
  v3[42] = v1;

  if (v1)
  {
    v4 = v3[27];

    return _swift_task_switch(sub_10025529C, v4, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v3[43] = v5;
    *v5 = v3;
    v5[1] = sub_100254748;

    return daemon.getter();
  }
}

uint64_t sub_100254748(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 352) = a1;

  v5 = swift_task_alloc();
  *(v3 + 360) = v5;
  v6 = type metadata accessor for CloudStorageService();
  v7 = sub_100009488(&qword_1005AD568, type metadata accessor for CloudStorageService, &unk_1004D03B0);
  *v5 = v4;
  v5[1] = sub_100254928;
  v8 = *(v2 + 320);
  v9 = *(v2 + 312);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_100254928(uint64_t a1)
{
  v3 = *v2;
  v3[46] = a1;
  v3[47] = v1;

  if (v1)
  {
    v4 = v3[27];
    v5 = sub_100255344;
  }

  else
  {
    v6 = v3[27];

    v5 = sub_100254A9C;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100254A9C()
{
  sub_10004B564(&qword_1005AE320, &qword_1004D38D0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1004C1900;
  v2 = sub_100257B3C();
  *(v1 + 56) = sub_10004B564(&qword_1005B0AD8, &qword_1004D2620);
  *(v1 + 32) = v2;
  v3 = objc_allocWithZone(NSSet);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = [v3 initWithArray:isa];

  static Set._conditionallyBridgeFromObjectiveC(_:result:)();
  sub_10005CF04();
  swift_allocError();
  *v6 = 9;
  swift_willThrow();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100255058()
{
  v2 = *v1;
  *(*v1 + 416) = v0;

  v3 = *(v2 + 216);

  if (v0)
  {
    v4 = sub_1002553F8;
  }

  else
  {
    v4 = sub_1002551CC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1002551CC()
{
  v1 = *(v0 + 384);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10025529C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100255344()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002553F8()
{
  v1 = *(v0 + 384);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1002554BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[8] = a3;
  v6[9] = a4;
  v6[7] = a2;
  v7 = type metadata accessor for URL();
  v6[12] = v7;
  v6[13] = *(v7 - 8);
  v6[14] = swift_task_alloc();

  return _swift_task_switch(sub_100255584, 0, 0);
}

void sub_100255584()
{
  v1 = v0[7];
  os_unfair_lock_lock((v1 + 16));
  v2 = *(v1 + 24);
  v0[15] = v2;
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v5 = v0[7];
    *(v1 + 24) = v4;
    os_unfair_lock_unlock(v5 + 4);
    v0[16] = sub_10025F0A0(&off_10058BBC8);
    v6 = swift_task_alloc();
    v0[17] = v6;
    *v6 = v0;
    v6[1] = sub_10025565C;
    v8 = v0[9];
    v7 = v0[10];

    sub_1001C1044(v8, v7);
  }
}

uint64_t sub_10025565C()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_100255C44;
  }

  else
  {

    v2 = sub_100255778;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100255778()
{
  v23 = v0;
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[9];
  v5 = type metadata accessor for Logger();
  sub_10000A6F0(v5, qword_1005DFF88);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[13];
  v9 = v0[14];
  v11 = v0[12];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v12 = 136446723;
    *(v12 + 4) = sub_10000D01C(0xD000000000000021, 0x80000001004E5D80, &v22);
    *(v12 + 12) = 2160;
    *(v12 + 14) = 1752392040;
    *(v12 + 22) = 2081;
    sub_100009488(&qword_1005ADD18, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v10 + 8))(v9, v11);
    v16 = sub_10000D01C(v13, v15, &v22);

    *(v12 + 24) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s accepted url: %{private,mask.hash}s", v12, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v17 = sub_10004CBC0(v0[15], v0[15] < 5, 0, 0);
  sub_10001157C(v17, v18, v19);

  v20 = v0[1];

  return v20();
}

uint64_t sub_100255A3C()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_100255BCC;
  }

  else
  {

    v2 = sub_100255B58;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100255B58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100255BCC()
{
  v1 = *(v0 + 152);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100255C44()
{
  v45 = v0;
  v0[2] = v0[18];
  swift_errorRetain();
  sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {
    v1 = v0[3];
    v0[5] = v1;
    v2 = v0[16];
    v0[19] = v1;
    sub_100009488(&qword_1005A8858, type metadata accessor for CKError, &unk_1004C16CC);
    _BridgedStoredNSError.code.getter();
    v3 = sub_10021B7D0(v0[6], v2);

    if (v3)
    {

      if (qword_1005A80E8 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      sub_10000A6F0(v4, qword_1005DFF88);
      v5 = v1;
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = v0[15];
        v9 = swift_slowAlloc();
        v44[0] = swift_slowAlloc();
        *v9 = 136446722;
        *(v9 + 4) = sub_10000D01C(0xD000000000000021, 0x80000001004E5D80, v44);
        *(v9 + 12) = 2082;
        v10 = v5;
        v11 = related decl 'e' for CKErrorCode.description.getter();
        v13 = v12;

        v14 = sub_10000D01C(v11, v13, v44);

        *(v9 + 14) = v14;
        *(v9 + 22) = 2048;
        *(v9 + 24) = v8;
        _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s accept fence failed with unrecoverable error: %{public}s; attempt #%ld. The invitation will be removed.", v9, 0x20u);
        swift_arrayDestroy();
      }

      v15 = v0[15];
      v16 = v0[11];
      v17 = v0[9];
      v18 = v5;
      v19 = sub_10004CBC0(v15, 0, v5, 1);
      v21 = v20;
      v23 = v22;

      sub_10001157C(v19, v21, v23);

      v24 = swift_task_alloc();
      v0[20] = v24;
      *(v24 + 16) = v16;
      *(v24 + 24) = v17;
      v25 = swift_task_alloc();
      v0[21] = v25;
      *v25 = v0;
      v25[1] = sub_100255A3C;

      return withCheckedThrowingContinuation<A>(isolation:function:_:)(v25, 0, 0, 0xD000000000000025, 0x80000001004E5D30, sub_100257FA0, v24, &type metadata for () + 1);
    }
  }

  else
  {
  }

  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_10000A6F0(v26, qword_1005DFF88);
  swift_errorRetain();
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = v0[18];
    v30 = v0[15];
    v31 = swift_slowAlloc();
    v44[0] = swift_slowAlloc();
    *v31 = 136446978;
    *(v31 + 4) = sub_10000D01C(0xD000000000000021, 0x80000001004E5D80, v44);
    *(v31 + 12) = 2082;
    v0[4] = v29;
    swift_errorRetain();
    v32 = String.init<A>(describing:)();
    v34 = sub_10000D01C(v32, v33, v44);

    *(v31 + 14) = v34;
    *(v31 + 22) = 2048;
    *(v31 + 24) = v30;
    *(v31 + 32) = 1024;
    *(v31 + 34) = v30 < 5;
    _os_log_impl(&_mh_execute_header, v27, v28, "%{public}s accept fence failed with error: %{public}s; attempt #%ld, will retry again: %{BOOL}d", v31, 0x26u);
    swift_arrayDestroy();
  }

  v35 = v0[18];
  v36 = v0[15];
  swift_errorRetain();
  v37 = sub_10004CBC0(v36, v36 < 5, v35, 1);
  v39 = v38;
  v41 = v40;

  sub_10001157C(v37, v39, v41);

  swift_willThrow();

  v42 = v0[1];

  return v42();
}

uint64_t sub_100256250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = type metadata accessor for Handle();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();

  return _swift_task_switch(sub_100256344, v4, 0);
}

uint64_t sub_100256344()
{
  v20 = v0;
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[4];
  v5 = type metadata accessor for Logger();
  sub_10000A6F0(v5, qword_1005DFF88);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[9];
  v9 = v0[10];
  v11 = v0[8];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v12 = 136446723;
    *(v12 + 4) = sub_10000D01C(0xD000000000000040, 0x80000001004DEBA0, &v19);
    *(v12 + 12) = 2160;
    *(v12 + 14) = 1752392040;
    *(v12 + 22) = 2081;
    v13 = Handle.identifier.getter();
    v15 = v14;
    (*(v10 + 8))(v9, v11);
    v16 = sub_10000D01C(v13, v15, &v19);

    *(v12 + 24) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s to handle %{private,mask.hash}s!", v12, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v17 = swift_task_alloc();
  v0[11] = v17;
  *v17 = v0;
  v17[1] = sub_1002565F0;

  return daemon.getter();
}

uint64_t sub_1002565F0(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 96) = a1;

  v3 = swift_task_alloc();
  *(v2 + 104) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for CommandManager(0);
  v6 = sub_100009488(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100009488(&qword_1005A90C8, type metadata accessor for CommandManager, &unk_1004C23F8);
  *v3 = v9;
  v3[1] = sub_1002567F8;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1002567F8(uint64_t a1)
{
  v3 = *v2;
  v3[14] = a1;
  v3[15] = v1;

  if (v1)
  {
    v4 = v3[7];
    v5 = sub_100256D50;
  }

  else
  {
    v6 = v3[7];

    v5 = sub_10025696C;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10025696C()
{
  v1 = *(v0 + 24);
  v2 = objc_opt_self();
  *(v0 + 16) = 0;
  v3 = [v2 archivedDataWithRootObject:v1 requiringSecureCoding:1 error:v0 + 16];
  v4 = *(v0 + 16);
  if (v3)
  {
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v8 = Data.base64EncodedString(options:)(0);
    *(v0 + 128) = v8._object;
    sub_1000049D0(v5, v7);
    v9 = swift_task_alloc();
    *(v0 + 136) = v9;
    *v9 = v0;
    v9[1] = sub_100256B48;
    v10 = *(v0 + 40);
    v11 = *(v0 + 48);
    v12 = *(v0 + 32);

    return sub_100077FD4(v8._countAndFlagsBits, v8._object, v12, v10, v11);
  }

  else
  {
    v14 = v4;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_100256B48()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_100256DE8;
  }

  else
  {
    v4 = sub_100256CA0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100256CA0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100256D50()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100256DE8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100256E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[10] = a3;
  v6[11] = a4;
  v6[9] = a2;
  v8 = *(type metadata accessor for ShareInvitationRecord(0) - 8);
  v6[14] = v8;
  v6[15] = *(v8 + 64);
  v6[16] = swift_task_alloc();
  sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();

  return _swift_task_switch(sub_100256FA0, a4, 0);
}

uint64_t sub_100256FA0()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 112);
    v29 = **(v0 + 72);
    v4 = *(v3 + 80);
    v5 = v1 + ((v4 + 32) & ~v4);
    v28 = *(v3 + 72);
    v27 = (v4 + 40) & ~v4;
    v26 = (*(v0 + 120) + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v6 = type metadata accessor for TaskPriority();
    v7 = *(v6 - 8);
    v25 = *(v7 + 56);
    v24 = (v7 + 48);
    v23 = (v7 + 8);
    do
    {
      v31 = v2;
      v11 = *(v0 + 136);
      v10 = *(v0 + 144);
      v12 = *(v0 + 128);
      v13 = *(v0 + 96);
      v30 = *(v0 + 104);
      v14 = *(v0 + 88);
      v25(v10, 1, 1, v6);
      sub_100257DA4(v5, v12);
      v15 = swift_allocObject();
      v15[2] = 0;
      v15[3] = 0;
      v15[4] = v14;
      sub_100257E08(v12, v15 + v27);
      *(v15 + v26) = v13;
      *(v15 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8)) = v30;
      sub_10007CE68(v10, v11);
      LODWORD(v11) = (*v24)(v11, 1, v6);

      v16 = *(v0 + 136);
      if (v11 == 1)
      {
        sub_100002CE0(*(v0 + 136), &qword_1005A9690, &qword_1004C2A00);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*v23)(v16, v6);
      }

      if (v15[2])
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v17 = dispatch thunk of Actor.unownedExecutor.getter();
        v19 = v18;
        swift_unknownObjectRelease();
      }

      else
      {
        v17 = 0;
        v19 = 0;
      }

      v20 = swift_allocObject();
      *(v20 + 16) = &unk_1004D2670;
      *(v20 + 24) = v15;

      if (v19 | v17)
      {
        v8 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v17;
        *(v0 + 40) = v19;
      }

      else
      {
        v8 = 0;
      }

      v9 = *(v0 + 144);
      *(v0 + 48) = 1;
      *(v0 + 56) = v8;
      *(v0 + 64) = v29;
      swift_task_create();

      sub_100002CE0(v9, &qword_1005A9690, &qword_1004C2A00);
      v5 += v28;
      v2 = v31 - 1;
    }

    while (v31 != 1);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_100257320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a3;
  return _swift_task_switch(sub_100257344, 0, 0);
}

uint64_t sub_100257344()
{
  v1 = *(v0 + 24);
  v2 = (v1 + *(type metadata accessor for ShareInvitationRecord(0) + 20));
  v4 = *v2;
  v3 = v2[1];
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = sub_100257400;
  v6 = *(v0 + 24);

  return sub_100253F44(v6, v4, v3);
}

uint64_t sub_100257400()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_100257928;
  }

  else
  {
    v2 = sub_100257514;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100257514()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_100257604;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v2, 0, 0, 0xD000000000000025, 0x80000001004E5D30, sub_100257FA0, v1, &type metadata for () + 1);
}

uint64_t sub_100257604()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_100257720;
  }

  else
  {

    v2 = sub_1000161BC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100257720()
{
  v11 = v0;

  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFF88);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v4 = 136446466;
    *(v4 + 4) = sub_10000D01C(0xD00000000000001FLL, 0x80000001004E5DE0, &v10);
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s failure: %{public}@", v4, 0x16u);
    sub_100002CE0(v5, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v6);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100257928()
{
  v11 = v0;
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFF88);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v4 = 136446466;
    *(v4 + 4) = sub_10000D01C(0xD00000000000001FLL, 0x80000001004E5DE0, &v10);
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s failure: %{public}@", v4, 0x16u);
    sub_100002CE0(v5, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v6);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8();
}

unint64_t sub_100257B3C()
{
  result = qword_1005B0AD0;
  if (!qword_1005B0AD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1005B0AD0);
  }

  return result;
}

uint64_t sub_100257B88(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + v7);
  v11 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100003690;

  return sub_1002554BC(a1, v8, v9, v1 + v6, v10, v11);
}

uint64_t sub_100257CDC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_100003690;

  return sub_100256E8C(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_100257DA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShareInvitationRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100257E08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShareInvitationRecord(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100257E6C()
{
  v2 = *(type metadata accessor for ShareInvitationRecord(0) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_10000368C;

  return sub_100257320(v4, v5, v6, v0 + v3, v7);
}

uint64_t sub_100257FA4()
{
  v0 = type metadata accessor for LocalizationUtility.Table();
  v47 = *(v0 - 8);
  v48 = v0;
  __chkstk_darwin(v0);
  v2 = &v43 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for PlaceMark();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v43 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v43 - v12;
  __chkstk_darwin(v11);
  v15 = &v43 - v14;
  v16 = Fence.label.getter();
  v18 = v17;

  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {
    return Fence.label.getter();
  }

  v45 = v7;
  v46 = v10;
  v44 = v2;
  Fence.placemark.getter();
  v21 = PlaceMark.streetAddress.getter();
  v23 = v22;
  v24 = *(v4 + 8);
  v24(v15, v3);
  v25 = v3;
  if (v23)
  {
    v26 = HIBYTE(v23) & 0xF;
    if ((v23 & 0x2000000000000000) == 0)
    {
      v26 = v21 & 0xFFFFFFFFFFFFLL;
    }

    if (v26)
    {
      return v21;
    }
  }

  Fence.placemark.getter();
  v21 = PlaceMark.streetName.getter();
  v28 = v27;
  v24(v13, v3);
  v29 = v46;
  if (v28)
  {
    v30 = HIBYTE(v28) & 0xF;
    if ((v28 & 0x2000000000000000) == 0)
    {
      v30 = v21 & 0xFFFFFFFFFFFFLL;
    }

    if (v30)
    {
      return v21;
    }
  }

  Fence.placemark.getter();
  v21 = PlaceMark.locality.getter();
  v32 = v31;
  v24(v29, v3);
  v33 = v45;
  if (v32)
  {
    v34 = HIBYTE(v32) & 0xF;
    if ((v32 & 0x2000000000000000) == 0)
    {
      v34 = v21 & 0xFFFFFFFFFFFFLL;
    }

    if (v34)
    {
      return v21;
    }
  }

  Fence.placemark.getter();
  v21 = PlaceMark.administrativeArea.getter();
  v36 = v35;
  v24(v33, v25);
  v37 = v36;
  v39 = v47;
  v38 = v48;
  v40 = v44;
  if (!v37)
  {
LABEL_27:
    (*(v39 + 104))(v40, enum case for LocalizationUtility.Table.default(_:), v38);
    v42 = static LocalizationUtility.localizedString(key:table:)();
    (*(v39 + 8))(v40, v38);
    return v42;
  }

  v41 = HIBYTE(v37) & 0xF;
  if ((v37 & 0x2000000000000000) == 0)
  {
    v41 = v21 & 0xFFFFFFFFFFFFLL;
  }

  if (!v41)
  {

    goto LABEL_27;
  }

  return v21;
}

uint64_t sub_100258360(uint64_t a1)
{
  v2 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10025887C(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100002CE0(v4, &unk_1005AE5B0, &qword_1004C32F0);
    return 0;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v10 = objc_opt_self();
    isa = Date._bridgeToObjectiveC()().super.isa;
    v12 = [v10 localizedStringFromDate:isa dateStyle:0 timeStyle:1];

    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v6 + 8))(v8, v5);
    return v13;
  }
}

void *sub_10025854C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v13 = _swiftEmptyArrayStorage;
    sub_1002393DC(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v13 = v2;
      v7 = v2[2];
      v8 = v2[3];

      if (v7 >= v8 >> 1)
      {
        sub_1002393DC((v8 > 1), v7 + 1, 1);
        v2 = v13;
      }

      v11 = &type metadata for String;
      v12 = sub_1000588B8();
      *&v10 = v6;
      *(&v10 + 1) = v5;
      v2[2] = v7 + 1;
      sub_100010BD4(&v10, &v2[5 * v7 + 4]);
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_100258648(uint64_t a1)
{
  v2 = type metadata accessor for PublicKey();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10004B564(&qword_1005B0608, &qword_1004D1F38);
  v6 = *(v19 - 8);
  __chkstk_darwin(v19);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    v20 = _swiftEmptyArrayStorage;
    sub_1002397C4(0, v9, 0);
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v10 = v20;
    v13 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v17 = *(v11 + 56);
    v18 = v12;
    do
    {
      v18(v5, v13, v2);
      swift_dynamicCast();
      v20 = v10;
      v15 = v10[2];
      v14 = v10[3];
      if (v15 >= v14 >> 1)
      {
        sub_1002397C4((v14 > 1), v15 + 1, 1);
        v10 = v20;
      }

      v10[2] = v15 + 1;
      sub_100260160(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15);
      v13 += v17;
      --v9;
    }

    while (v9);
  }

  return v10;
}

uint64_t sub_10025887C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v19 = a1;
  v20 = type metadata accessor for Date();
  v2 = *(v20 - 8);
  __chkstk_darwin(v20);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DateComponents();
  v16 = *(v5 - 8);
  v17 = v5;
  __chkstk_darwin(v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004B564(&qword_1005B0B10, &qword_1004D26B0);
  v8 = type metadata accessor for Calendar.Component();
  v9 = *(v8 - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1004C2300;
  v13 = v12 + v11;
  v14 = *(v9 + 104);
  v14(v13, enum case for Calendar.Component.era(_:), v8);
  v14(v13 + v10, enum case for Calendar.Component.year(_:), v8);
  v14(v13 + 2 * v10, enum case for Calendar.Component.month(_:), v8);
  v14(v13 + 3 * v10, enum case for Calendar.Component.day(_:), v8);
  v14(v13 + 4 * v10, enum case for Calendar.Component.hour(_:), v8);
  v14(v13 + 5 * v10, enum case for Calendar.Component.minute(_:), v8);
  sub_10025A52C(v12);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  static Date.now.getter();
  Calendar.dateComponents(_:from:)();

  (*(v2 + 8))(v4, v20);
  result = Fence.TimeOfDay.hour.getter();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    DateComponents.hour.setter();
    result = Fence.TimeOfDay.minute.getter();
    if ((result & 0x8000000000000000) == 0)
    {
      DateComponents.minute.setter();
      Calendar.date(from:)();
      return (*(v16 + 8))(v7, v17);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100258BFC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for LocalizationUtility.Table();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for Fence.Participant();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v5 = type metadata accessor for Destination();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  v6 = type metadata accessor for PersonHandle();
  v2[14] = v6;
  v2[15] = *(v6 - 8);
  v2[16] = swift_task_alloc();
  v7 = type metadata accessor for Fence.ID();
  v2[17] = v7;
  v2[18] = *(v7 - 8);
  v2[19] = swift_task_alloc();
  v8 = type metadata accessor for Fence();
  v2[20] = v8;
  v2[21] = *(v8 - 8);
  v2[22] = swift_task_alloc();
  v9 = type metadata accessor for Fence.TriggerPosition();
  v2[23] = v9;
  v2[24] = *(v9 - 8);
  v2[25] = swift_task_alloc();

  return _swift_task_switch(sub_100258EF0, 0, 0);
}

uint64_t sub_100258EF0()
{
  v49 = v0;
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  (*(v2 + 16))(v1, v0[3], v3);
  v4 = (*(v2 + 88))(v1, v3);
  v5 = enum case for Fence.TriggerPosition.inside(_:);
  (*(v2 + 8))(v1, v3);
  if (v4 == v5)
  {
    if (qword_1005A80E8 != -1)
    {
      swift_once();
    }

    v7 = v0[21];
    v6 = v0[22];
    v8 = v0[20];
    v9 = v0[2];
    v10 = type metadata accessor for Logger();
    sub_10000A6F0(v10, qword_1005DFF88);
    (*(v7 + 16))(v6, v9, v8);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    v13 = os_log_type_enabled(v11, v12);
    v15 = v0[21];
    v14 = v0[22];
    v16 = v0[20];
    if (v13)
    {
      v45 = v0[20];
      v17 = v0[18];
      v18 = v0[19];
      v19 = v0[17];
      v20 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v48 = v47;
      *v20 = 136446210;
      v46 = v12;
      Fence.id.getter();
      sub_100260118(&qword_1005AE800, &type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      (*(v17 + 8))(v18, v19);
      (*(v15 + 8))(v14, v45);
      v24 = sub_10000D01C(v21, v23, &v48);

      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v11, v46, "Invalid position inside for leaving fence with id %{public}s", v20, 0xCu);
      sub_100004984(v47);
    }

    else
    {

      (*(v15 + 8))(v14, v16);
    }
  }

  v25 = Fence.others.getter();
  if (*(v25 + 16))
  {
    (*(v0[15] + 16))(v0[16], v25 + ((*(v0[15] + 80) + 32) & ~*(v0[15] + 80)), v0[14]);

    sub_100279044(v26);
    v27 = swift_task_alloc();
    v0[26] = v27;
    *v27 = v0;
    v27[1] = sub_1002594A0;

    return sub_1004559B4(0);
  }

  else
  {

    v30 = v0[9];
    v29 = v0[10];
    v31 = v0[7];
    v32 = v0[8];
    v33 = v0[5];
    v44 = v0[6];
    v34 = v0[4];
    Fence.findee.getter();
    (*(v32 + 104))(v30, enum case for Fence.Participant.me(_:), v31);
    static Fence.Participant.== infix(_:_:)();
    v35 = *(v32 + 8);
    v35(v30, v31);
    v35(v29, v31);
    (*(v33 + 104))(v44, enum case for LocalizationUtility.Table.default(_:), v34);
    static LocalizationUtility.localizedString(key:table:)();
    (*(v33 + 8))(v44, v34);
    sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1004C2310;
    *(v36 + 56) = &type metadata for String;
    v37 = sub_1000588B8();
    *(v36 + 64) = v37;
    *(v36 + 32) = 0;
    *(v36 + 40) = 0xE000000000000000;
    v38 = sub_100257FA4();
    *(v36 + 96) = &type metadata for String;
    *(v36 + 104) = v37;
    *(v36 + 72) = v38;
    *(v36 + 80) = v39;
    v40 = String.init(format:arguments:)();
    v42 = v41;

    v43 = v0[1];

    return v43(v40, v42);
  }
}

uint64_t sub_1002594A0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 104);
  v5 = *(*v2 + 96);
  v6 = *(*v2 + 88);
  *(v3 + 216) = a1;
  *(v3 + 224) = a2;

  (*(v5 + 8))(v4, v6);

  return _swift_task_switch(sub_100259600, 0, 0);
}

uint64_t sub_100259600()
{
  (*(v0[15] + 8))(v0[16], v0[14]);
  v18 = v0[27];
  v19 = v0[28];
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[5];
  v17 = v0[6];
  v6 = v0[4];
  Fence.findee.getter();
  (*(v4 + 104))(v2, enum case for Fence.Participant.me(_:), v3);
  static Fence.Participant.== infix(_:_:)();
  v7 = *(v4 + 8);
  v7(v2, v3);
  v7(v1, v3);
  (*(v5 + 104))(v17, enum case for LocalizationUtility.Table.default(_:), v6);
  static LocalizationUtility.localizedString(key:table:)();
  (*(v5 + 8))(v17, v6);
  sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1004C2310;
  *(v8 + 56) = &type metadata for String;
  v9 = sub_1000588B8();
  *(v8 + 64) = v9;
  *(v8 + 32) = v18;
  *(v8 + 40) = v19;
  v10 = sub_100257FA4();
  *(v8 + 96) = &type metadata for String;
  *(v8 + 104) = v9;
  *(v8 + 72) = v10;
  *(v8 + 80) = v11;
  v12 = String.init(format:arguments:)();
  v14 = v13;

  v15 = v0[1];

  return v15(v12, v14);
}

uint64_t sub_100259894(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for LocalizationUtility.Table();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for Fence.Participant();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v5 = type metadata accessor for Destination();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  v6 = type metadata accessor for PersonHandle();
  v2[14] = v6;
  v2[15] = *(v6 - 8);
  v2[16] = swift_task_alloc();
  v7 = type metadata accessor for Fence.ID();
  v2[17] = v7;
  v2[18] = *(v7 - 8);
  v2[19] = swift_task_alloc();
  v8 = type metadata accessor for Fence();
  v2[20] = v8;
  v2[21] = *(v8 - 8);
  v2[22] = swift_task_alloc();
  v9 = type metadata accessor for Fence.TriggerPosition();
  v2[23] = v9;
  v2[24] = *(v9 - 8);
  v2[25] = swift_task_alloc();

  return _swift_task_switch(sub_100259B88, 0, 0);
}

uint64_t sub_100259B88()
{
  v49 = v0;
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  (*(v2 + 16))(v1, v0[3], v3);
  v4 = (*(v2 + 88))(v1, v3);
  v5 = enum case for Fence.TriggerPosition.outside(_:);
  (*(v2 + 8))(v1, v3);
  if (v4 == v5)
  {
    if (qword_1005A80E8 != -1)
    {
      swift_once();
    }

    v7 = v0[21];
    v6 = v0[22];
    v8 = v0[20];
    v9 = v0[2];
    v10 = type metadata accessor for Logger();
    sub_10000A6F0(v10, qword_1005DFF88);
    (*(v7 + 16))(v6, v9, v8);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    v13 = os_log_type_enabled(v11, v12);
    v15 = v0[21];
    v14 = v0[22];
    v16 = v0[20];
    if (v13)
    {
      v45 = v0[20];
      v17 = v0[18];
      v18 = v0[19];
      v19 = v0[17];
      v20 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v48 = v47;
      *v20 = 136446210;
      v46 = v12;
      Fence.id.getter();
      sub_100260118(&qword_1005AE800, &type metadata accessor for Fence.ID, &protocol conformance descriptor for Fence.ID);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      (*(v17 + 8))(v18, v19);
      (*(v15 + 8))(v14, v45);
      v24 = sub_10000D01C(v21, v23, &v48);

      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v11, v46, "Invalid position outside for arriving fence with id %{public}s", v20, 0xCu);
      sub_100004984(v47);
    }

    else
    {

      (*(v15 + 8))(v14, v16);
    }
  }

  v25 = Fence.others.getter();
  if (*(v25 + 16))
  {
    (*(v0[15] + 16))(v0[16], v25 + ((*(v0[15] + 80) + 32) & ~*(v0[15] + 80)), v0[14]);

    sub_100279044(v26);
    v27 = swift_task_alloc();
    v0[26] = v27;
    *v27 = v0;
    v27[1] = sub_10025A138;

    return sub_1004559B4(0);
  }

  else
  {

    v30 = v0[9];
    v29 = v0[10];
    v31 = v0[7];
    v32 = v0[8];
    v33 = v0[5];
    v44 = v0[6];
    v34 = v0[4];
    Fence.findee.getter();
    (*(v32 + 104))(v30, enum case for Fence.Participant.me(_:), v31);
    static Fence.Participant.== infix(_:_:)();
    v35 = *(v32 + 8);
    v35(v30, v31);
    v35(v29, v31);
    (*(v33 + 104))(v44, enum case for LocalizationUtility.Table.default(_:), v34);
    static LocalizationUtility.localizedString(key:table:)();
    (*(v33 + 8))(v44, v34);
    sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1004C2310;
    *(v36 + 56) = &type metadata for String;
    v37 = sub_1000588B8();
    *(v36 + 64) = v37;
    *(v36 + 32) = 0;
    *(v36 + 40) = 0xE000000000000000;
    v38 = sub_100257FA4();
    *(v36 + 96) = &type metadata for String;
    *(v36 + 104) = v37;
    *(v36 + 72) = v38;
    *(v36 + 80) = v39;
    v40 = String.init(format:arguments:)();
    v42 = v41;

    v43 = v0[1];

    return v43(v40, v42);
  }
}

uint64_t sub_10025A138(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 104);
  v5 = *(*v2 + 96);
  v6 = *(*v2 + 88);
  *(v3 + 216) = a1;
  *(v3 + 224) = a2;

  (*(v5 + 8))(v4, v6);

  return _swift_task_switch(sub_10025A298, 0, 0);
}

uint64_t sub_10025A298()
{
  (*(v0[15] + 8))(v0[16], v0[14]);
  v18 = v0[27];
  v19 = v0[28];
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[5];
  v17 = v0[6];
  v6 = v0[4];
  Fence.findee.getter();
  (*(v4 + 104))(v2, enum case for Fence.Participant.me(_:), v3);
  static Fence.Participant.== infix(_:_:)();
  v7 = *(v4 + 8);
  v7(v2, v3);
  v7(v1, v3);
  (*(v5 + 104))(v17, enum case for LocalizationUtility.Table.default(_:), v6);
  static LocalizationUtility.localizedString(key:table:)();
  (*(v5 + 8))(v17, v6);
  sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1004C2310;
  *(v8 + 56) = &type metadata for String;
  v9 = sub_1000588B8();
  *(v8 + 64) = v9;
  *(v8 + 32) = v18;
  *(v8 + 40) = v19;
  v10 = sub_100257FA4();
  *(v8 + 96) = &type metadata for String;
  *(v8 + 104) = v9;
  *(v8 + 72) = v10;
  *(v8 + 80) = v11;
  v12 = String.init(format:arguments:)();
  v14 = v13;

  v15 = v0[1];

  return v15(v12, v14);
}

void *sub_10025A52C(uint64_t a1)
{
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_10004B564(&qword_1005B0B18, &qword_1004D26B8);
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
      sub_100260118(&qword_1005B0B20, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
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
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_100260118(&qword_1005B0B28, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v6, v2);
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

  return &_swiftEmptySetSingleton;
}

uint64_t sub_10025A84C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = sub_10004B564(&qword_1005B0AF8, &qword_1004D2698);
  v4[7] = swift_task_alloc();
  v5 = type metadata accessor for LocalizationUtility.Table();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v6 = type metadata accessor for Fence.Participant();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  sub_10004B564(&qword_1005B0B00, &qword_1004D26A0);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = sub_10004B564(&qword_1005B0B08, &qword_1004D26A8);
  v4[19] = swift_task_alloc();
  v7 = type metadata accessor for Destination();
  v4[20] = v7;
  v4[21] = *(v7 - 8);
  v4[22] = swift_task_alloc();
  v8 = type metadata accessor for PersonHandle();
  v4[23] = v8;
  v4[24] = *(v8 - 8);
  v4[25] = swift_task_alloc();
  v9 = type metadata accessor for Fence.DaysOfWeek();
  v4[26] = v9;
  v4[27] = *(v9 - 8);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v10 = type metadata accessor for Fence.TimeOfDay();
  v4[30] = v10;
  v4[31] = *(v10 - 8);
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v11 = type metadata accessor for Date();
  v4[34] = v11;
  v4[35] = *(v11 - 8);
  v4[36] = swift_task_alloc();
  v12 = type metadata accessor for Calendar();
  v4[37] = v12;
  v4[38] = *(v12 - 8);
  v4[39] = swift_task_alloc();

  return _swift_task_switch(sub_10025AC80, 0, 0);
}

uint64_t sub_10025AC80()
{
  v235 = v0;
  v1 = v0[39];
  v2 = v0[35];
  v3 = v0[36];
  v5 = v0[33];
  v4 = v0[34];
  v6 = v0[31];
  v212 = v0[30];
  v223 = v0[29];
  v7 = v0[27];
  v227 = v0[26];
  static Calendar.current.getter();
  v8 = objc_opt_self();
  sub_1002787C8(v3);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v10 = v3;
  v11 = v0;
  (*(v2 + 8))(v10, v4);
  v12 = [v8 localizedStringFromDate:isa dateStyle:0 timeStyle:1];

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v0[40] = v13;
  v0[41] = v15;
  Fence.Schedule.start.getter();
  v0[42] = sub_100258360(v1);
  v0[43] = v16;
  v17 = *(v6 + 8);
  v0[44] = v17;
  v0[45] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v5, v212);
  Fence.Schedule.end.getter();
  v0[46] = sub_100258360(v1);
  v0[47] = v18;
  v17(v5, v212);
  Fence.Schedule.daysOfWeek.getter();
  v0[48] = sub_100057620(v1);
  v0[49] = v19;
  v20 = *(v7 + 8);
  v0[50] = v20;
  v0[51] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v223, v227);
  v0[52] = sub_100257FA4();
  v0[53] = v21;
  v22 = Fence.others.getter();
  if (*(v22 + 16))
  {
    (*(v0[24] + 16))(v0[25], v22 + ((*(v0[24] + 80) + 32) & ~*(v0[24] + 80)), v0[23]);

    sub_100279044(v23);
    v24 = swift_task_alloc();
    v0[54] = v24;
    *v24 = v0;
    v24[1] = sub_10025C45C;

    return sub_1004559B4(0);
  }

  v26 = v0[19];
  v28 = v0[4];
  v27 = v11[5];
  v29 = *(v11[18] + 48);
  v30 = type metadata accessor for Fence.TriggerPosition();
  v31 = *(v30 - 8);
  (*(v31 + 16))(v26, v28, v30);
  sub_10025EBA8(v27, v26 + v29);
  v32 = *(v31 + 88);
  v33 = v32(v26, v30);
  v34 = v33;
  v35 = enum case for Fence.TriggerPosition.inside(_:);
  if (v33 != enum case for Fence.TriggerPosition.inside(_:))
  {
    if (v33 == enum case for Fence.TriggerPosition.outside(_:))
    {
      v49 = (*(v31 + 48))(v26 + v29, 1, v30);
      v50 = v26;
      if (v49 == 1)
      {
        goto LABEL_10;
      }

      v78 = v11 + 17;
      v108 = v11[17];
      v228 = v50;
      sub_10025EBA8(v50 + v29, v108);
      v109 = v32(v108, v30);
      if (v109 == v35)
      {
        v231 = v29;
        v110 = v11[14];
        v111 = v11[15];
        v112 = v11[11];
        v113 = v11[12];
        v114 = v11[9];
        v219 = v11[10];
        v226 = v11[17];
        v208 = v11[8];

        v196 = *(v31 + 8);
        v115 = v226;
        v224 = v30;
        v196(v115, v30);
        Fence.findee.getter();
        (*(v113 + 104))(v110, enum case for Fence.Participant.me(_:), v112);
        static Fence.Participant.== infix(_:_:)();
        v116 = *(v113 + 8);
        v116(v110, v112);
        v116(v111, v112);
        (*(v114 + 104))(v219, enum case for LocalizationUtility.Table.default(_:), v208);
        v117 = (v114 + 8);
        v118 = v11[52];
        v119 = v11[53];
        v209 = v11[40];
        v220 = v11[41];
        v120 = v11[38];
        v185 = v11[37];
        v190 = v11[39];
        v121 = v11[10];
        v122 = v11[8];
        goto LABEL_34;
      }

      if (v109 == v34)
      {
        v231 = v29;

        goto LABEL_15;
      }

      v159 = enum case for Fence.TriggerPosition.undetermined(_:);
      v160 = v109;
      (*(v31 + 8))(*v78, v30);
      v50 = v228;
      if (v160 == v159)
      {
LABEL_10:
        v51 = v11[44];
        v52 = v30;
        v54 = v11[32];
        v53 = v11[33];
        v55 = v11;
        v56 = v11[30];
        v57 = v55[27];
        v204 = v55[28];
        v225 = v55[26];
        v58 = v55[19];
        v187 = v55[13];
        v59 = v29;
        v60 = v55[12];
        v215 = v55[11];
        v229 = v55[7];
        v198 = v55[6];
        v232 = v55;
        sub_100002CE0(v50 + v59, &qword_1005B0B00, &qword_1004D26A0);
        (*(v31 + 8))(v58, v52);
        Fence.Schedule.start.getter();
        Fence.Schedule.end.getter();
        v61 = static Fence.TimeOfDay.== infix(_:_:)();
        v51(v54, v56);
        v51(v53, v56);
        Fence.findee.getter();
        Fence.Schedule.daysOfWeek.getter();
        v62 = v229 + *(v198 + 48);
        v63 = *(v198 + 64);
        (*(v60 + 32))(v62, v187, v215);
        (*(v57 + 32))(v229 + v63, v204, v225);
        v194 = v62;
        v64 = (*(v60 + 88))(v62, v215);
        if (v64 == enum case for Fence.Participant.me(_:))
        {

          v65 = v232[50];
          v184 = v63;
          if (v61)
          {
            v66 = v232[29];
            v67 = v232[26];
            v69 = v232[9];
            v68 = v232[10];
            v70 = v232[8];

            static Fence.DaysOfWeek.all.getter();
            sub_100260118(&qword_1005A8F28, &type metadata accessor for Fence.DaysOfWeek, &protocol conformance descriptor for Fence.DaysOfWeek);
            dispatch thunk of static Equatable.== infix(_:_:)();
            v65(v66, v67);
            (*(v69 + 104))(v68, enum case for LocalizationUtility.Table.default(_:), v70);
            v71 = v232[52];
            v216 = v232[49];
            v199 = v232[50];
            v205 = v232[48];
            v72 = v232[42];
            v172 = v232[43];
            v175 = v232[53];
            v73 = v232[38];
            v178 = v232[37];
            v181 = v232[39];
            v188 = v232[26];
            v74 = v232[12];
            v75 = v232[10];
            v76 = v232[8];
            static LocalizationUtility.localizedString(key:table:)();
            (*(v69 + 8))(v75, v76);
            sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
            v161 = swift_allocObject();
            *(v161 + 16) = xmmword_1004C0BB0;
            *(v161 + 56) = &type metadata for String;
            v162 = sub_1000588B8();
            *(v161 + 32) = 0;
            *(v161 + 40) = 0xE000000000000000;
            *(v161 + 96) = &type metadata for String;
            *(v161 + 104) = v162;
            *(v161 + 64) = v162;
            *(v161 + 72) = v71;
            *(v161 + 80) = v175;
            *(v161 + 136) = &type metadata for String;
            *(v161 + 144) = v162;
            *(v161 + 112) = v72;
            *(v161 + 120) = v172;
            *(v161 + 176) = &type metadata for String;
            *(v161 + 184) = v162;
            *(v161 + 152) = v205;
            *(v161 + 160) = v216;
            v163 = String.init(format:arguments:)();
            v207 = v164;
            v218 = v163;

            (*(v73 + 8))(v181, v178);
            v199(v229 + v184, v188);
            v105 = *(v74 + 8);
          }

          else
          {
            v142 = v232[29];
            v143 = v232[26];
            v145 = v232[9];
            v144 = v232[10];
            v146 = v232[8];
            static Fence.DaysOfWeek.all.getter();
            sub_100260118(&qword_1005A8F28, &type metadata accessor for Fence.DaysOfWeek, &protocol conformance descriptor for Fence.DaysOfWeek);
            dispatch thunk of static Equatable.== infix(_:_:)();
            v65(v142, v143);
            (*(v145 + 104))(v144, enum case for LocalizationUtility.Table.default(_:), v146);
            v147 = (v145 + 8);
            v148 = v232[52];
            v222 = v232[49];
            v202 = v232[50];
            v211 = v232[48];
            v177 = v232[47];
            v171 = v232[53];
            v174 = v232[46];
            v149 = v232[42];
            v150 = v232[43];
            v151 = v232[38];
            v180 = v232[37];
            v183 = v232[39];
            v192 = v232[26];
            v152 = v232[12];
            v153 = v232[10];
            v154 = v232[8];
            static LocalizationUtility.localizedString(key:table:)();
            (*v147)(v153, v154);
            sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
            v165 = swift_allocObject();
            *(v165 + 16) = xmmword_1004C0BC0;
            *(v165 + 56) = &type metadata for String;
            v166 = sub_1000588B8();
            *(v165 + 32) = 0;
            *(v165 + 40) = 0xE000000000000000;
            *(v165 + 96) = &type metadata for String;
            *(v165 + 104) = v166;
            *(v165 + 64) = v166;
            *(v165 + 72) = v148;
            *(v165 + 80) = v171;
            *(v165 + 136) = &type metadata for String;
            *(v165 + 144) = v166;
            *(v165 + 112) = v149;
            *(v165 + 120) = v150;
            *(v165 + 176) = &type metadata for String;
            *(v165 + 184) = v166;
            *(v165 + 152) = v174;
            *(v165 + 160) = v177;
            *(v165 + 216) = &type metadata for String;
            *(v165 + 224) = v166;
            *(v165 + 192) = v211;
            *(v165 + 200) = v222;
            v167 = String.init(format:arguments:)();
            v207 = v168;
            v218 = v167;

            (*(v151 + 8))(v183, v180);
            v202(v229 + v184, v192);
            v105 = *(v152 + 8);
          }

          v107 = v232;
          v224 = v232[11];
          v106 = v194;
          goto LABEL_37;
        }

        if (v64 == enum case for Fence.Participant.other(_:))
        {
          v210 = v232[52];
          v221 = v232[53];
          v191 = v232[50];
          v170 = v232[42];
          v173 = v232[43];
          v133 = v63;
          v134 = v232[38];
          v176 = v232[37];
          v179 = v232[39];
          v182 = v232[26];
          v201 = v232[12];
          v135 = v232[9];
          v136 = v232[10];
          v137 = v232[8];

          (*(v135 + 104))(v136, enum case for LocalizationUtility.Table.default(_:), v137);
          static LocalizationUtility.localizedString(key:table:)();
          (*(v135 + 8))(v136, v137);
          sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
          v138 = swift_allocObject();
          *(v138 + 16) = xmmword_1004C0BD0;
          *(v138 + 56) = &type metadata for String;
          v139 = sub_1000588B8();
          *(v138 + 32) = 0;
          *(v138 + 40) = 0xE000000000000000;
          *(v138 + 96) = &type metadata for String;
          *(v138 + 104) = v139;
          *(v138 + 64) = v139;
          *(v138 + 72) = v210;
          *(v138 + 80) = v221;
          *(v138 + 136) = &type metadata for String;
          *(v138 + 144) = v139;
          *(v138 + 112) = v170;
          *(v138 + 120) = v173;
          v140 = String.init(format:arguments:)();
          v207 = v141;
          v218 = v140;

          (*(v134 + 8))(v179, v176);
          v107 = v232;
          v191(v229 + v133, v182);
          v106 = v62;
          v105 = *(v201 + 8);
          v224 = v232[11];
          goto LABEL_37;
        }
      }
    }

    else if (v33 == enum case for Fence.TriggerPosition.undetermined(_:))
    {
      v217 = v11[53];
      v224 = v30;
      v206 = v11[43];
      v189 = v11[42];
      v195 = v11[52];
      v93 = v11[38];
      v230 = v11[39];
      v200 = v11[37];
      v233 = v29;
      v94 = v11[9];
      v95 = v11[10];
      v96 = v11[8];

      (*(v94 + 104))(v95, enum case for LocalizationUtility.Table.default(_:), v96);
      static LocalizationUtility.localizedString(key:table:)();
      (*(v94 + 8))(v95, v96);
      sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
      v97 = swift_allocObject();
      *(v97 + 16) = xmmword_1004C0BD0;
      *(v97 + 56) = &type metadata for String;
      v98 = sub_1000588B8();
      *(v97 + 32) = 0;
      *(v97 + 40) = 0xE000000000000000;
      *(v97 + 96) = &type metadata for String;
      *(v97 + 104) = v98;
      *(v97 + 64) = v98;
      *(v97 + 72) = v195;
      *(v97 + 80) = v217;
      *(v97 + 136) = &type metadata for String;
      *(v97 + 144) = v98;
      *(v97 + 112) = v189;
      *(v97 + 120) = v206;
      v99 = String.init(format:arguments:)();
      v207 = v100;
      v218 = v99;

      (*(v93 + 8))(v230, v200);
      v107 = v11;
      sub_100002CE0(v26 + v233, &qword_1005B0B00, &qword_1004D26A0);
      v105 = *(v31 + 8);
      v106 = v11[19];
      goto LABEL_37;
    }

    return _assertionFailure(_:_:file:line:flags:)();
  }

  v231 = v29;

  v228 = v26;
  if ((*(v31 + 48))(v26 + v29, 1, v30) == 1)
  {
LABEL_7:
    v37 = v11[14];
    v36 = v11[15];
    v39 = v11[11];
    v38 = v11[12];
    v213 = v11[10];
    v224 = v30;
    v40 = v11;
    v41 = v11[9];
    v42 = v40[8];
    Fence.findee.getter();
    (*(v38 + 104))(v37, enum case for Fence.Participant.me(_:), v39);
    static Fence.Participant.== infix(_:_:)();
    v43 = *(v38 + 8);
    v43(v37, v39);
    v43(v36, v39);
    (*(v41 + 104))(v213, enum case for LocalizationUtility.Table.default(_:), v42);
    v44 = (v41 + 8);
    v45 = v40[52];
    v203 = v40[40];
    v214 = v40[41];
    v46 = v40[38];
    v197 = v40[39];
    v186 = v40[53];
    v193 = v40[37];
    v47 = v40[10];
    v48 = v40[8];
    static LocalizationUtility.localizedString(key:table:)();
    (*v44)(v47, v48);
    sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
    v101 = swift_allocObject();
    *(v101 + 16) = xmmword_1004C0BD0;
    *(v101 + 56) = &type metadata for String;
    v102 = sub_1000588B8();
    *(v101 + 32) = 0;
    *(v101 + 40) = 0xE000000000000000;
    *(v101 + 96) = &type metadata for String;
    *(v101 + 104) = v102;
    *(v101 + 64) = v102;
    *(v101 + 72) = v45;
    *(v101 + 80) = v186;
    *(v101 + 136) = &type metadata for String;
    *(v101 + 144) = v102;
    *(v101 + 112) = v203;
    *(v101 + 120) = v214;
    v103 = String.init(format:arguments:)();
    v207 = v104;
    v218 = v103;

    (*(v46 + 8))(v197, v193);
    sub_100002CE0(v228 + v231, &qword_1005B0B00, &qword_1004D26A0);
    v105 = *(v31 + 8);
    v106 = v40[19];
    v107 = v40;
LABEL_37:
    v105(v106, v224);

    v169 = v107[1];

    return v169(v218, v207);
  }

  v78 = v11 + 16;
  v77 = v11[16];
  sub_10025EBA8(v228 + v29, v77);
  v79 = v32(v77, v30);
  if (v79 != v34)
  {
    v123 = v79;
    v124 = enum case for Fence.TriggerPosition.outside(_:);
    v196 = *(v31 + 8);
    v196(*v78, v30);
    if (v123 != v124)
    {
      goto LABEL_7;
    }

    v224 = v30;
    v126 = v11[14];
    v125 = v11[15];
    v128 = v11[11];
    v127 = v11[12];
    v129 = v11[9];
    v130 = v11[10];
    v131 = v11[8];
    Fence.findee.getter();
    (*(v127 + 104))(v126, enum case for Fence.Participant.me(_:), v128);
    static Fence.Participant.== infix(_:_:)();
    v132 = *(v127 + 8);
    v132(v126, v128);
    v132(v125, v128);
    (*(v129 + 104))(v130, enum case for LocalizationUtility.Table.default(_:), v131);
    v117 = (v129 + 8);
    v118 = v11[52];
    v119 = v11[53];
    v209 = v11[40];
    v220 = v11[41];
    v120 = v11[38];
    v185 = v11[37];
    v190 = v11[39];
    v121 = v11[10];
    v122 = v11[8];
LABEL_34:
    static LocalizationUtility.localizedString(key:table:)();
    (*v117)(v121, v122);
    sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
    v155 = swift_allocObject();
    *(v155 + 16) = xmmword_1004C0BD0;
    *(v155 + 56) = &type metadata for String;
    v156 = sub_1000588B8();
    *(v155 + 32) = 0;
    *(v155 + 40) = 0xE000000000000000;
    *(v155 + 96) = &type metadata for String;
    *(v155 + 104) = v156;
    *(v155 + 64) = v156;
    *(v155 + 72) = v118;
    *(v155 + 80) = v119;
    *(v155 + 136) = &type metadata for String;
    *(v155 + 144) = v156;
    *(v155 + 112) = v209;
    *(v155 + 120) = v220;
    v157 = String.init(format:arguments:)();
    v207 = v158;
    v218 = v157;

    (*(v120 + 8))(v190, v185);
    sub_100002CE0(v228 + v231, &qword_1005B0B00, &qword_1004D26A0);
    v106 = v11[19];
    v107 = v11;
    v105 = v196;
    goto LABEL_37;
  }

LABEL_15:
  v80 = *v78;
  v81 = v11[19];

  v82 = *(v31 + 8);
  v82(v80, v30);
  sub_100002CE0(v228 + v231, &qword_1005B0B00, &qword_1004D26A0);
  v82(v81, v30);
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v83 = type metadata accessor for Logger();
  sub_10000A6F0(v83, qword_1005DFF88);
  v84 = Logger.logObject.getter();
  v85 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v234 = v87;
    *v86 = 136446210;
    *(v86 + 4) = sub_10000D01C(0xD00000000000004DLL, 0x80000001004E5FF0, &v234);
    _os_log_impl(&_mh_execute_header, v84, v85, "%{public}s Trying to trigger scheduled fence with same placement twice", v86, 0xCu);
    sub_100004984(v87);
  }

  v88 = v11[38];
  v89 = v11[39];
  v90 = v11[37];
  sub_10005CF04();
  swift_allocError();
  *v91 = 6;
  swift_willThrow();
  (*(v88 + 8))(v89, v90);

  v92 = v11[1];

  return v92();
}

uint64_t sub_10025C45C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 176);
  v5 = *(*v2 + 168);
  v6 = *(*v2 + 160);
  *(v3 + 440) = a1;
  *(v3 + 448) = a2;

  (*(v5 + 8))(v4, v6);

  return _swift_task_switch(sub_10025C5BC, 0, 0);
}

uint64_t sub_10025C5BC()
{
  v219 = v0;
  (*(v0[24] + 8))(v0[25], v0[23]);
  v1 = v0[55];
  v214 = v0[56];
  v2 = v0[19];
  v4 = v0[4];
  v3 = v0[5];
  v5 = *(v0[18] + 48);
  v6 = type metadata accessor for Fence.TriggerPosition();
  v7 = *(v6 - 8);
  v8 = v4;
  v9 = v5;
  (*(v7 + 16))(v2, v8, v6);
  sub_10025EBA8(v3, v2 + v5);
  v10 = *(v7 + 88);
  v11 = v10(v2, v6);
  v12 = v11;
  v13 = enum case for Fence.TriggerPosition.inside(_:);
  v216 = v9;
  if (v11 != enum case for Fence.TriggerPosition.inside(_:))
  {
    if (v11 == enum case for Fence.TriggerPosition.outside(_:))
    {
      v26 = (*(v7 + 48))(v2 + v9, 1, v6);
      v27 = v2;
      v28 = v9;
      if (v26 == 1)
      {
        goto LABEL_6;
      }

      v57 = v0 + 17;
      v88 = v0[17];
      v211 = v27;
      sub_10025EBA8(v27 + v28, v88);
      v89 = v10(v88, v6);
      if (v89 == v13)
      {
        v206 = v1;
        v210 = v0[17];
        v90 = v0[14];
        v91 = v0[15];
        v93 = v0[11];
        v92 = v0[12];
        v94 = v0[9];
        v177 = v0[8];
        v185 = v0[10];

        v192 = *(v7 + 8);
        v95 = v210;
        v208 = v6;
        v192(v95, v6);
        Fence.findee.getter();
        (*(v92 + 104))(v90, enum case for Fence.Participant.me(_:), v93);
        static Fence.Participant.== infix(_:_:)();
        v96 = *(v92 + 8);
        v96(v90, v93);
        v96(v91, v93);
        (*(v94 + 104))(v185, enum case for LocalizationUtility.Table.default(_:), v177);
        v97 = (v94 + 8);
        v98 = v0[52];
        v99 = v0[53];
        v165 = v0[40];
        v170 = v0[41];
        v100 = v0[38];
        v178 = v0[37];
        v186 = v0[39];
        v101 = v0[10];
        v102 = v0[8];
        static LocalizationUtility.localizedString(key:table:)();
        (*v97)(v101, v102);
        sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
        v142 = swift_allocObject();
        *(v142 + 16) = xmmword_1004C0BD0;
        *(v142 + 56) = &type metadata for String;
        v143 = sub_1000588B8();
        *(v142 + 32) = v206;
        *(v142 + 40) = v214;
        *(v142 + 96) = &type metadata for String;
        *(v142 + 104) = v143;
        *(v142 + 64) = v143;
        *(v142 + 72) = v98;
        *(v142 + 80) = v99;
        goto LABEL_30;
      }

      if (v89 == v12)
      {

        goto LABEL_11;
      }

      v145 = enum case for Fence.TriggerPosition.undetermined(_:);
      v146 = v89;
      (*(v7 + 8))(*v57, v6);
      v27 = v211;
      v28 = v216;
      if (v146 == v145)
      {
LABEL_6:
        v203 = v1;
        v163 = v0[44];
        v30 = v0[32];
        v29 = v0[33];
        v31 = v0[30];
        v32 = v0[27];
        v209 = v0[26];
        v33 = v0[19];
        v34 = v0[12];
        v174 = v0[13];
        v189 = v0[28];
        v197 = v0[11];
        v212 = v0[7];
        v182 = v0[6];
        sub_100002CE0(v27 + v28, &qword_1005B0B00, &qword_1004D26A0);
        (*(v7 + 8))(v33, v6);
        Fence.Schedule.start.getter();
        Fence.Schedule.end.getter();
        v35 = static Fence.TimeOfDay.== infix(_:_:)();
        v163(v30, v31);
        v163(v29, v31);
        Fence.findee.getter();
        Fence.Schedule.daysOfWeek.getter();
        v36 = v212 + *(v182 + 48);
        v37 = *(v182 + 64);
        (*(v34 + 32))(v36, v174, v197);
        (*(v32 + 32))(v212 + v37, v189, v209);
        v217 = v36;
        v38 = (*(v34 + 88))(v36, v197);
        if (v38 == enum case for Fence.Participant.me(_:))
        {

          v39 = v0[50];
          v40 = v0;
          v183 = v37;
          if (v35)
          {
            v41 = v0[29];
            v42 = v0[26];
            v43 = v0[9];
            v44 = v40[10];
            v45 = v40[8];

            static Fence.DaysOfWeek.all.getter();
            sub_100260118(&qword_1005A8F28, &type metadata accessor for Fence.DaysOfWeek, &protocol conformance descriptor for Fence.DaysOfWeek);
            dispatch thunk of static Equatable.== infix(_:_:)();
            v39(v41, v42);
            (*(v43 + 104))(v44, enum case for LocalizationUtility.Table.default(_:), v45);
            v46 = (v43 + 8);
            v47 = v40[52];
            v48 = v40[50];
            v49 = v40[49];
            v157 = v40[53];
            v160 = v40[48];
            v50 = v40[42];
            v155 = v40[43];
            v175 = v40[39];
            v51 = v40;
            v52 = v40[38];
            v164 = v49;
            v168 = v51[37];
            v190 = v51[26];
            v198 = v48;
            v53 = v51[12];
            v54 = v51[10];
            v55 = v51[8];
            static LocalizationUtility.localizedString(key:table:)();
            (*v46)(v54, v55);
            sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
            v147 = swift_allocObject();
            *(v147 + 16) = xmmword_1004C0BB0;
            *(v147 + 56) = &type metadata for String;
            v148 = sub_1000588B8();
            *(v147 + 32) = v203;
            *(v147 + 40) = v214;
            *(v147 + 96) = &type metadata for String;
            *(v147 + 104) = v148;
            *(v147 + 64) = v148;
            *(v147 + 72) = v47;
            *(v147 + 80) = v157;
            *(v147 + 136) = &type metadata for String;
            *(v147 + 144) = v148;
            *(v147 + 112) = v50;
            *(v147 + 120) = v155;
            *(v147 + 176) = &type metadata for String;
            *(v147 + 184) = v148;
            *(v147 + 152) = v160;
            *(v147 + 160) = v164;
            v215 = String.init(format:arguments:)();
            v205 = v149;

            (*(v52 + 8))(v175, v168);
            v198(v212 + v183, v190);
            v85 = *(v53 + 8);
          }

          else
          {
            v127 = v0[29];
            v128 = v0[26];
            v129 = v0[9];
            v130 = v40[10];
            v131 = v40[8];
            static Fence.DaysOfWeek.all.getter();
            sub_100260118(&qword_1005A8F28, &type metadata accessor for Fence.DaysOfWeek, &protocol conformance descriptor for Fence.DaysOfWeek);
            dispatch thunk of static Equatable.== infix(_:_:)();
            v39(v127, v128);
            (*(v129 + 104))(v130, enum case for LocalizationUtility.Table.default(_:), v131);
            v132 = (v129 + 8);
            v133 = v40[52];
            v134 = v40[50];
            v162 = v40[48];
            v167 = v40[49];
            v159 = v40[47];
            v154 = v40[53];
            v156 = v40[46];
            v135 = v40[42];
            v136 = v40[43];
            v137 = v40[39];
            v51 = v40;
            v138 = v40[38];
            v172 = v51[37];
            v180 = v137;
            v194 = v51[26];
            v201 = v134;
            v139 = v51[12];
            v140 = v51[10];
            v141 = v51[8];
            static LocalizationUtility.localizedString(key:table:)();
            (*v132)(v140, v141);
            sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
            v150 = swift_allocObject();
            *(v150 + 16) = xmmword_1004C0BC0;
            *(v150 + 56) = &type metadata for String;
            v151 = sub_1000588B8();
            *(v150 + 32) = v203;
            *(v150 + 40) = v214;
            *(v150 + 96) = &type metadata for String;
            *(v150 + 104) = v151;
            *(v150 + 64) = v151;
            *(v150 + 72) = v133;
            *(v150 + 80) = v154;
            *(v150 + 136) = &type metadata for String;
            *(v150 + 144) = v151;
            *(v150 + 112) = v135;
            *(v150 + 120) = v136;
            *(v150 + 176) = &type metadata for String;
            *(v150 + 184) = v151;
            *(v150 + 152) = v156;
            *(v150 + 160) = v159;
            *(v150 + 216) = &type metadata for String;
            *(v150 + 224) = v151;
            *(v150 + 192) = v162;
            *(v150 + 200) = v167;
            v215 = String.init(format:arguments:)();
            v205 = v152;

            (*(v138 + 8))(v180, v172);
            v201(v212 + v183, v194);
            v85 = *(v139 + 8);
          }

          v208 = v51[11];
          v86 = v217;
          v87 = v51;
          goto LABEL_33;
        }

        if (v38 == enum case for Fence.Participant.other(_:))
        {
          v158 = v0[52];
          v161 = v0[53];
          v118 = v0[42];
          v119 = v0[43];
          v120 = v0[38];
          v166 = v0[37];
          v171 = v0[39];
          v179 = v0[26];
          v187 = v37;
          v193 = v0[50];
          v200 = v0[12];
          v121 = v0[9];
          v122 = v0[10];
          v123 = v0[8];

          (*(v121 + 104))(v122, enum case for LocalizationUtility.Table.default(_:), v123);
          static LocalizationUtility.localizedString(key:table:)();
          v87 = v0;
          (*(v121 + 8))(v122, v123);
          sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
          v124 = swift_allocObject();
          *(v124 + 16) = xmmword_1004C0BD0;
          *(v124 + 56) = &type metadata for String;
          v125 = sub_1000588B8();
          *(v124 + 32) = v203;
          *(v124 + 40) = v214;
          *(v124 + 96) = &type metadata for String;
          *(v124 + 104) = v125;
          *(v124 + 64) = v125;
          *(v124 + 72) = v158;
          *(v124 + 80) = v161;
          *(v124 + 136) = &type metadata for String;
          *(v124 + 144) = v125;
          *(v124 + 112) = v118;
          *(v124 + 120) = v119;
          v215 = String.init(format:arguments:)();
          v205 = v126;

          (*(v120 + 8))(v171, v166);
          v193(v212 + v187, v179);
          v85 = *(v200 + 8);
          v208 = v0[11];
          v86 = v36;
          goto LABEL_33;
        }
      }
    }

    else if (v11 == enum case for Fence.TriggerPosition.undetermined(_:))
    {
      v204 = v0[53];
      v208 = v6;
      v176 = v0[52];
      v184 = v0[43];
      v169 = v0[42];
      v73 = v0[38];
      v191 = v0[37];
      v199 = v0[39];
      v74 = v0;
      v75 = v1;
      v213 = v2;
      v76 = v0[9];
      v77 = v0[10];
      v78 = v0[8];

      (*(v76 + 104))(v77, enum case for LocalizationUtility.Table.default(_:), v78);
      static LocalizationUtility.localizedString(key:table:)();
      (*(v76 + 8))(v77, v78);
      sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
      v79 = swift_allocObject();
      *(v79 + 16) = xmmword_1004C0BD0;
      *(v79 + 56) = &type metadata for String;
      v80 = sub_1000588B8();
      *(v79 + 32) = v75;
      *(v79 + 40) = v214;
      *(v79 + 96) = &type metadata for String;
      *(v79 + 104) = v80;
      *(v79 + 64) = v80;
      *(v79 + 72) = v176;
      *(v79 + 80) = v204;
      *(v79 + 136) = &type metadata for String;
      *(v79 + 144) = v80;
      *(v79 + 112) = v169;
      *(v79 + 120) = v184;
      v215 = String.init(format:arguments:)();
      v205 = v81;
      v87 = v74;

      (*(v73 + 8))(v199, v191);
      sub_100002CE0(v213 + v216, &qword_1005B0B00, &qword_1004D26A0);
      v85 = *(v7 + 8);
      v86 = v74[19];
      goto LABEL_33;
    }

    return _assertionFailure(_:_:file:line:flags:)();
  }

  v211 = v2;
  if ((*(v7 + 48))(v2 + v9, 1, v6) == 1)
  {
LABEL_3:
    v202 = v1;
    v208 = v6;
    v15 = v0[14];
    v14 = v0[15];
    v17 = v0[11];
    v16 = v0[12];
    v18 = v0[9];
    v195 = v0[10];
    v19 = v0[8];
    Fence.findee.getter();
    (*(v16 + 104))(v15, enum case for Fence.Participant.me(_:), v17);
    static Fence.Participant.== infix(_:_:)();
    v20 = *(v16 + 8);
    v20(v15, v17);
    v20(v14, v17);
    (*(v18 + 104))(v195, enum case for LocalizationUtility.Table.default(_:), v19);
    v21 = v0[52];
    v22 = v0[53];
    v173 = v0[40];
    v181 = v0[41];
    v23 = v0[38];
    v188 = v0[37];
    v196 = v0[39];
    v24 = v0[10];
    v25 = v0[8];
    static LocalizationUtility.localizedString(key:table:)();
    (*(v18 + 8))(v24, v25);
    sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
    v82 = swift_allocObject();
    *(v82 + 16) = xmmword_1004C0BD0;
    *(v82 + 56) = &type metadata for String;
    v83 = sub_1000588B8();
    *(v82 + 32) = v202;
    *(v82 + 40) = v214;
    *(v82 + 96) = &type metadata for String;
    *(v82 + 104) = v83;
    *(v82 + 64) = v83;
    *(v82 + 72) = v21;
    *(v82 + 80) = v22;
    *(v82 + 136) = &type metadata for String;
    *(v82 + 144) = v83;
    *(v82 + 112) = v173;
    *(v82 + 120) = v181;
    v215 = String.init(format:arguments:)();
    v205 = v84;

    (*(v23 + 8))(v196, v188);
    sub_100002CE0(v211 + v216, &qword_1005B0B00, &qword_1004D26A0);
    v85 = *(v7 + 8);
    v86 = v0[19];
    v87 = v0;
LABEL_33:
    v85(v86, v208);

    v153 = v87[1];

    return v153(v215, v205);
  }

  v57 = v0 + 16;
  v56 = v0[16];
  sub_10025EBA8(v211 + v9, v56);
  v58 = v10(v56, v6);
  if (v58 != v12)
  {
    v103 = v58;
    v104 = enum case for Fence.TriggerPosition.outside(_:);
    v192 = *(v7 + 8);
    v192(*v57, v6);
    if (v103 != v104)
    {
      goto LABEL_3;
    }

    v207 = v1;
    v208 = v6;
    v106 = v0[14];
    v105 = v0[15];
    v108 = v0[11];
    v107 = v0[12];
    v109 = v0[9];
    v110 = v0[10];
    v111 = v0[8];
    Fence.findee.getter();
    (*(v107 + 104))(v106, enum case for Fence.Participant.me(_:), v108);
    static Fence.Participant.== infix(_:_:)();
    v112 = *(v107 + 8);
    v112(v106, v108);
    v112(v105, v108);
    (*(v109 + 104))(v110, enum case for LocalizationUtility.Table.default(_:), v111);
    v113 = (v109 + 8);
    v114 = v0[52];
    v115 = v0[53];
    v165 = v0[40];
    v170 = v0[41];
    v100 = v0[38];
    v178 = v0[37];
    v186 = v0[39];
    v116 = v0[10];
    v117 = v0[8];
    static LocalizationUtility.localizedString(key:table:)();
    (*v113)(v116, v117);
    sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
    v142 = swift_allocObject();
    *(v142 + 16) = xmmword_1004C0BD0;
    *(v142 + 56) = &type metadata for String;
    v143 = sub_1000588B8();
    *(v142 + 32) = v207;
    *(v142 + 40) = v214;
    *(v142 + 96) = &type metadata for String;
    *(v142 + 104) = v143;
    *(v142 + 64) = v143;
    *(v142 + 72) = v114;
    *(v142 + 80) = v115;
LABEL_30:
    *(v142 + 136) = &type metadata for String;
    *(v142 + 144) = v143;
    *(v142 + 112) = v165;
    *(v142 + 120) = v170;
    v215 = String.init(format:arguments:)();
    v205 = v144;

    (*(v100 + 8))(v186, v178);
    sub_100002CE0(v211 + v216, &qword_1005B0B00, &qword_1004D26A0);
    v86 = v0[19];
    v87 = v0;
    v85 = v192;
    goto LABEL_33;
  }

LABEL_11:
  v59 = *v57;
  v60 = v0[19];

  v61 = *(v7 + 8);
  v61(v59, v6);
  sub_100002CE0(v211 + v216, &qword_1005B0B00, &qword_1004D26A0);
  v61(v60, v6);
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v62 = type metadata accessor for Logger();
  sub_10000A6F0(v62, qword_1005DFF88);
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v218 = v66;
    *v65 = 136446210;
    *(v65 + 4) = sub_10000D01C(0xD00000000000004DLL, 0x80000001004E5FF0, &v218);
    _os_log_impl(&_mh_execute_header, v63, v64, "%{public}s Trying to trigger scheduled fence with same placement twice", v65, 0xCu);
    sub_100004984(v66);
  }

  v67 = v0[38];
  v68 = v0[39];
  v69 = v0[37];
  sub_10005CF04();
  swift_allocError();
  *v70 = 6;
  swift_willThrow();
  (*(v67 + 8))(v68, v69);

  v71 = v0[1];

  return v71();
}