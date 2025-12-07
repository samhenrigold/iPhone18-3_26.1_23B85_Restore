void *sub_10005D3F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *))
{
  v15 = &_swiftEmptySetSingleton;
  v6 = a1 + 56;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 56);
  v10 = (v7 + 63) >> 6;

  for (i = 0; v9; i = v12)
  {
    v12 = i;
LABEL_8:
    v14 = *(*(a1 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
    sub_100020CD8(v14, *(&v14 + 1));
    sub_10005D53C(&v15, &v14, a2, a3);
    v9 &= v9 - 1;
    sub_100020D78(v14, *(&v14 + 1));
  }

  while (1)
  {
    v12 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      return v15;
    }

    v9 = *(v6 + 8 * v12);
    ++i;
    if (v9)
    {
      goto LABEL_8;
    }
  }

  __break(1u);

  sub_100020D78(v14, *(&v14 + 1));

  __break(1u);
  return result;
}

uint64_t sub_10005D53C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v8 = sub_100020818(&qword_100091B80, &unk_10006E488);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - v10;
  sub_100020CD8(*a2, a2[1]);
  Token.init(data:)();
  if (!*(a3 + OBJC_IVAR____TtC18UsageTrackingAgent10TokenCoder_decoder))
  {
    if (qword_100090D20 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100020D2C(v23, qword_100092EC8);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Failed to create token decoder", v26, 2u);

      return (*(v9 + 8))(v11, v8);
    }

    return (*(v9 + 8))(v11, v8);
  }

  v12 = a4(v11);
  if (!v4)
  {
    sub_10005E9F8(v29, v12, v13);

    return (*(v9 + 8))(v11, v8);
  }

  if (qword_100090D20 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100020D2C(v14, qword_100092EC8);
  swift_errorRetain();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v29[0] = v27;
    *v17 = 136446210;
    v29[3] = v4;
    swift_errorRetain();
    sub_100020818(&qword_100091370, &qword_10006D390);
    v18 = String.init<A>(describing:)();
    v28 = v8;
    v20 = v9;
    v21 = sub_100033140(v18, v19, v29);

    *(v17 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v15, v16, "Failed to decode token: %{public}s", v17, 0xCu);
    sub_1000208BC(v27);

    return (*(v20 + 8))(v11, v28);
  }

  else
  {

    return (*(v9 + 8))(v11, v8);
  }
}

Class sub_10005D9A0(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a1;
  a4(v6);

  sub_100062BE8();
  v8.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}

uint64_t sub_10005DA60(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  v5 = a1 + 56;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 56);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  v25 = _swiftEmptyArrayStorage;
  if (!v8)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v13 = (*(a1 + 48) + ((v11 << 10) | (16 * v12)));
      v14 = *v13;
      v15 = v13[1];

      v16 = sub_10005DD38(v14, v15, v2, a2);
      v18 = v17;

      if (v18 >> 60 != 15)
      {
        break;
      }

      if (!v8)
      {
        goto LABEL_6;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1000468F0(0, *(v25 + 2) + 1, 1, v25);
      v25 = result;
    }

    v21 = *(v25 + 2);
    v20 = *(v25 + 3);
    v22 = v21 + 1;
    if (v21 >= v20 >> 1)
    {
      result = sub_1000468F0((v20 > 1), v21 + 1, 1, v25);
      v22 = v21 + 1;
      v25 = result;
    }

    *(v25 + 2) = v22;
    v23 = &v25[16 * v21];
    *(v23 + 4) = v16;
    *(v23 + 5) = v18;
  }

  while (v8);
LABEL_6:
  while (1)
  {
    v19 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v19 >= v9)
    {

      v24 = sub_100062B4C(v25);

      return v24;
    }

    v8 = *(v5 + 8 * v19);
    ++v11;
    if (v8)
    {
      v11 = v19;
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

Class sub_10005DC80(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = a1;
  v10 = sub_10005DD38(v6, v8, v9, a4);
  v12 = v11;

  if (v12 >> 60 == 15)
  {
    v13 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100020D64(v10, v12);
    v13 = isa;
  }

  return v13;
}

uint64_t sub_10005DD38(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v8 = sub_100020818(&qword_100091B80, &unk_10006E488);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - v10;
  if (*(a3 + OBJC_IVAR____TtC18UsageTrackingAgent10TokenCoder_encoder))
  {

    a4(a1, a2);
    v16 = Token.data.getter();

    (*(v9 + 8))(v11, v8);
    return v16;
  }

  else
  {
    if (qword_100090D20 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100020D2C(v12, qword_100092EC8);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Failed to create token encoder", v15, 2u);
    }

    return 0;
  }
}

id sub_10005E0A0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TokenCoder();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10005E158(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Application();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100062CA4(&qword_100091BC8, &type metadata accessor for Application, &protocol conformance descriptor for Application);
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
      sub_100062CA4(&qword_100091BD0, &type metadata accessor for Application, &protocol conformance descriptor for Application);
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
    sub_100060398(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_10005E438(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for ActivityCategory();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100062CA4(&qword_100091BB0, &type metadata accessor for ActivityCategory, &protocol conformance descriptor for ActivityCategory);
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
      sub_100062CA4(&qword_100091BB8, &type metadata accessor for ActivityCategory, &protocol conformance descriptor for ActivityCategory);
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
    sub_100060660(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_10005E718(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for WebDomain();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100062CA4(&qword_100091B98, &type metadata accessor for WebDomain, &protocol conformance descriptor for WebDomain);
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
      sub_100062CA4(&qword_100091BA0, &type metadata accessor for WebDomain, &protocol conformance descriptor for WebDomain);
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
    sub_100060928(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_10005E9F8(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_100060BF0(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_10005EB48(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v6 = *v3;
  Hasher.init(_seed:)();
  Data.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = v6 + 56;
  v9 = -1 << *(v6 + 32);
  v10 = v7 & ~v9;
  if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_141:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *__s1 = *v82;
    sub_100020CD8(a2, a3);
    sub_100060D70(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v82 = *__s1;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v11 = ~v9;
  v12 = a3 >> 62;
  if (a2)
  {
    v13 = 0;
  }

  else
  {
    v13 = a3 == 0xC000000000000000;
  }

  v14 = !v13;
  v88 = v14;
  v15 = __OFSUB__(HIDWORD(a2), a2);
  v85 = v15;
  v84 = v6;
  v80 = (a2 >> 32) - a2;
  v81 = a2 >> 32;
  v86 = v6 + 56;
  v87 = v11;
  while (1)
  {
    v16 = (*(v6 + 48) + 16 * v10);
    v18 = *v16;
    v17 = v16[1];
    v19 = v17 >> 62;
    if (v17 >> 62 == 3)
    {
      if (v18)
      {
        v20 = 0;
      }

      else
      {
        v20 = v17 == 0xC000000000000000;
      }

      v22 = !v20 || a3 >> 62 != 3;
      if (((v22 | v88) & 1) == 0)
      {
        v75 = 0;
        v76 = 0xC000000000000000;
LABEL_142:
        sub_100020D78(v75, v76);
LABEL_143:
        v77 = *(*(v6 + 48) + 16 * v10);
        *a1 = v77;
        sub_100020CD8(v77, *(&v77 + 1));
        return 0;
      }

LABEL_36:
      v23 = 0;
      if (v12 <= 1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    }

    if (v19 > 1)
    {
      if (v19 != 2)
      {
        goto LABEL_36;
      }

      v25 = *(v18 + 16);
      v24 = *(v18 + 24);
      v26 = __OFSUB__(v24, v25);
      v23 = v24 - v25;
      if (v26)
      {
        goto LABEL_147;
      }

      if (v12 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v19)
    {
      LODWORD(v23) = HIDWORD(v18) - v18;
      if (__OFSUB__(HIDWORD(v18), v18))
      {
        goto LABEL_146;
      }

      v23 = v23;
      if (v12 <= 1)
      {
LABEL_33:
        v27 = BYTE6(a3);
        if (v12)
        {
          v27 = HIDWORD(a2) - a2;
          if (v85)
          {
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
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v23 = BYTE6(v17);
      if (v12 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v12 != 2)
    {
      if (!v23)
      {
        goto LABEL_140;
      }

      goto LABEL_13;
    }

    v29 = *(a2 + 16);
    v28 = *(a2 + 24);
    v26 = __OFSUB__(v28, v29);
    v27 = v28 - v29;
    if (v26)
    {
      goto LABEL_145;
    }

LABEL_39:
    if (v23 != v27)
    {
      goto LABEL_13;
    }

    if (v23 < 1)
    {
      goto LABEL_140;
    }

    if (v19 > 1)
    {
      break;
    }

    if (v19)
    {
      if (v18 > v18 >> 32)
      {
        goto LABEL_148;
      }

      sub_100020CD8(v18, v17);
      v40 = __DataStorage._bytes.getter();
      if (v40)
      {
        v41 = v40;
        v42 = __DataStorage._offset.getter();
        if (__OFSUB__(v18, v42))
        {
          goto LABEL_150;
        }

        v39 = (v18 - v42 + v41);
      }

      else
      {
        v39 = 0;
      }

      __DataStorage._length.getter();
      v11 = v87;
      if (v12 == 2)
      {
        v67 = *(a2 + 16);
        v79 = *(a2 + 24);
        v49 = __DataStorage._bytes.getter();
        if (v49)
        {
          v68 = __DataStorage._offset.getter();
          if (__OFSUB__(v67, v68))
          {
            goto LABEL_164;
          }

          v49 += v67 - v68;
        }

        v26 = __OFSUB__(v79, v67);
        v69 = v79 - v67;
        if (v26)
        {
          goto LABEL_160;
        }

        result = __DataStorage._length.getter();
        if (result >= v69)
        {
          v52 = v69;
        }

        else
        {
          v52 = result;
        }

        if (!v39)
        {
          goto LABEL_176;
        }

        v8 = v86;
        v11 = v87;
        if (!v49)
        {
          goto LABEL_175;
        }
      }

      else
      {
        if (v12 != 1)
        {
          v8 = v86;
          *__s1 = a2;
          *&__s1[8] = a3;
          __s1[10] = BYTE2(a3);
          __s1[11] = BYTE3(a3);
          __s1[12] = BYTE4(a3);
          __s1[13] = BYTE5(a3);
          if (!v39)
          {
            goto LABEL_171;
          }

          goto LABEL_138;
        }

        if (v81 < a2)
        {
          goto LABEL_159;
        }

        v49 = __DataStorage._bytes.getter();
        if (v49)
        {
          v53 = __DataStorage._offset.getter();
          if (__OFSUB__(a2, v53))
          {
            goto LABEL_166;
          }

          v49 += a2 - v53;
        }

        result = __DataStorage._length.getter();
        v52 = (a2 >> 32) - a2;
        if (result < v80)
        {
          v52 = result;
        }

        if (!v39)
        {
          goto LABEL_180;
        }

        v8 = v86;
        if (!v49)
        {
          goto LABEL_179;
        }
      }

      goto LABEL_135;
    }

    *__s1 = v18;
    *&__s1[8] = v17;
    __s1[10] = BYTE2(v17);
    __s1[11] = BYTE3(v17);
    __s1[12] = BYTE4(v17);
    __s1[13] = BYTE5(v17);
    if (!v12)
    {
      goto LABEL_69;
    }

    if (v12 == 1)
    {
      if (v81 < a2)
      {
        goto LABEL_152;
      }

      sub_100020CD8(v18, v17);
      v30 = __DataStorage._bytes.getter();
      if (!v30)
      {
        goto LABEL_174;
      }

      v31 = v30;
      v32 = __DataStorage._offset.getter();
      if (__OFSUB__(a2, v32))
      {
        goto LABEL_156;
      }

      v33 = (a2 - v32 + v31);
      v34 = __DataStorage._length.getter();
      if (!v33)
      {
        goto LABEL_172;
      }

      goto LABEL_109;
    }

    v55 = *(a2 + 16);
    v54 = *(a2 + 24);
    sub_100020CD8(v18, v17);
    v45 = __DataStorage._bytes.getter();
    if (v45)
    {
      v56 = __DataStorage._offset.getter();
      if (__OFSUB__(v55, v56))
      {
        goto LABEL_161;
      }

      v45 += v55 - v56;
    }

    v26 = __OFSUB__(v54, v55);
    v47 = v54 - v55;
    if (v26)
    {
      goto LABEL_153;
    }

    v48 = __DataStorage._length.getter();
    v6 = v84;
    if (!v45)
    {
      goto LABEL_170;
    }

LABEL_100:
    if (v48 >= v47)
    {
      v57 = v47;
    }

    else
    {
      v57 = v48;
    }

    v58 = memcmp(__s1, v45, v57);
    sub_100020D78(v18, v17);
    v8 = v86;
    v11 = v87;
    if (!v58)
    {
LABEL_140:
      v75 = a2;
      v76 = a3;
      goto LABEL_142;
    }

LABEL_13:
    v10 = (v10 + 1) & v11;
    if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_141;
    }
  }

  if (v19 == 2)
  {
    v35 = *(v18 + 16);
    sub_100020CD8(v18, v17);
    v36 = __DataStorage._bytes.getter();
    if (v36)
    {
      v37 = v36;
      v38 = __DataStorage._offset.getter();
      if (__OFSUB__(v35, v38))
      {
        goto LABEL_149;
      }

      v39 = (v35 - v38 + v37);
    }

    else
    {
      v39 = 0;
    }

    __DataStorage._length.getter();
    v11 = v87;
    if (v12 != 2)
    {
      if (v12 == 1)
      {
        if (v81 < a2)
        {
          goto LABEL_155;
        }

        v49 = __DataStorage._bytes.getter();
        if (v49)
        {
          v50 = __DataStorage._offset.getter();
          if (__OFSUB__(a2, v50))
          {
            goto LABEL_165;
          }

          v49 += a2 - v50;
        }

        result = __DataStorage._length.getter();
        v52 = (a2 >> 32) - a2;
        if (result < v80)
        {
          v52 = result;
        }

        if (!v39)
        {
          goto LABEL_178;
        }

        v8 = v86;
        if (!v49)
        {
          goto LABEL_177;
        }

        goto LABEL_135;
      }

      v8 = v86;
      *__s1 = a2;
      *&__s1[8] = a3;
      __s1[10] = BYTE2(a3);
      __s1[11] = BYTE3(a3);
      __s1[12] = BYTE4(a3);
      __s1[13] = BYTE5(a3);
      if (!v39)
      {
        goto LABEL_169;
      }

LABEL_138:
      v72 = __s1;
      v71 = v39;
      v70 = BYTE6(a3);
LABEL_139:
      v73 = memcmp(v71, v72, v70);
      sub_100020D78(v18, v17);
      v6 = v84;
      if (!v73)
      {
        goto LABEL_140;
      }

      goto LABEL_13;
    }

    v64 = *(a2 + 16);
    v78 = *(a2 + 24);
    v49 = __DataStorage._bytes.getter();
    if (v49)
    {
      v65 = __DataStorage._offset.getter();
      if (__OFSUB__(v64, v65))
      {
        goto LABEL_163;
      }

      v49 += v64 - v65;
    }

    v26 = __OFSUB__(v78, v64);
    v66 = v78 - v64;
    if (v26)
    {
      goto LABEL_158;
    }

    result = __DataStorage._length.getter();
    if (result >= v66)
    {
      v52 = v66;
    }

    else
    {
      v52 = result;
    }

    if (!v39)
    {
      goto LABEL_182;
    }

    v8 = v86;
    v11 = v87;
    if (!v49)
    {
      goto LABEL_181;
    }

LABEL_135:
    if (v39 == v49)
    {
      sub_100020D78(v18, v17);
      sub_100020D78(a2, a3);
      v6 = v84;
      goto LABEL_143;
    }

    v70 = v52;
    v71 = v39;
    v72 = v49;
    goto LABEL_139;
  }

  *&__s1[6] = 0;
  *__s1 = 0;
  if (!v12)
  {
LABEL_69:
    __s2 = a2;
    v90 = a3;
    v91 = BYTE2(a3);
    v92 = BYTE3(a3);
    v93 = BYTE4(a3);
    v94 = BYTE5(a3);
    if (!memcmp(__s1, &__s2, BYTE6(a3)))
    {
      goto LABEL_140;
    }

    goto LABEL_13;
  }

  if (v12 == 2)
  {
    v44 = *(a2 + 16);
    v43 = *(a2 + 24);
    sub_100020CD8(v18, v17);
    v45 = __DataStorage._bytes.getter();
    if (v45)
    {
      v46 = __DataStorage._offset.getter();
      if (__OFSUB__(v44, v46))
      {
        goto LABEL_162;
      }

      v45 += v44 - v46;
    }

    v26 = __OFSUB__(v43, v44);
    v47 = v43 - v44;
    if (v26)
    {
      goto LABEL_154;
    }

    v48 = __DataStorage._length.getter();
    v6 = v84;
    if (!v45)
    {
      goto LABEL_173;
    }

    goto LABEL_100;
  }

  if (v81 < a2)
  {
    goto LABEL_151;
  }

  sub_100020CD8(v18, v17);
  v59 = __DataStorage._bytes.getter();
  if (v59)
  {
    v60 = v59;
    v61 = __DataStorage._offset.getter();
    if (__OFSUB__(a2, v61))
    {
      goto LABEL_157;
    }

    v33 = (a2 - v61 + v60);
    v34 = __DataStorage._length.getter();
    if (!v33)
    {
      goto LABEL_168;
    }

LABEL_109:
    if (v34 >= v80)
    {
      v62 = (a2 >> 32) - a2;
    }

    else
    {
      v62 = v34;
    }

    v63 = memcmp(__s1, v33, v62);
    sub_100020D78(v18, v17);
    v8 = v86;
    if (!v63)
    {
      goto LABEL_140;
    }

    goto LABEL_13;
  }

  __DataStorage._length.getter();
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
  result = __DataStorage._length.getter();
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
  return result;
}

uint64_t sub_10005F4C4(uint64_t a1)
{
  v2 = v1;
  v36 = type metadata accessor for Application();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_100020818(&qword_100091BD8, &unk_10006E4C0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_100062CA4(&qword_100091BC8, &type metadata accessor for Application, &protocol conformance descriptor for Application);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_10005F820(uint64_t a1)
{
  v2 = v1;
  v36 = type metadata accessor for ActivityCategory();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_100020818(&qword_100091BC0, &qword_10006E4B8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_100062CA4(&qword_100091BB0, &type metadata accessor for ActivityCategory, &protocol conformance descriptor for ActivityCategory);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_10005FB7C(uint64_t a1)
{
  v2 = v1;
  v36 = type metadata accessor for WebDomain();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_100020818(&qword_100091BA8, &qword_10006E4B0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_100062CA4(&qword_100091B98, &type metadata accessor for WebDomain, &protocol conformance descriptor for WebDomain);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

Swift::Int sub_10005FED8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100020818(&qword_100091B88, &qword_10006E498);
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

Swift::Int sub_100060138(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100020818(&qword_100091B78, &qword_10006E480);
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      Data.hash(into:)();
      result = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_100060398(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for Application();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10005F4C4(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_100061670(&type metadata accessor for Application, &qword_100091BD8, &unk_10006E4C0);
      goto LABEL_12;
    }

    sub_100061B60(v10 + 1);
  }

  v12 = *v3;
  sub_100062CA4(&qword_100091BC8, &type metadata accessor for Application, &protocol conformance descriptor for Application);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_100062CA4(&qword_100091BD0, &type metadata accessor for Application, &protocol conformance descriptor for Application);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100060660(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for ActivityCategory();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10005F820(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_100061670(&type metadata accessor for ActivityCategory, &qword_100091BC0, &qword_10006E4B8);
      goto LABEL_12;
    }

    sub_100061E7C(v10 + 1);
  }

  v12 = *v3;
  sub_100062CA4(&qword_100091BB0, &type metadata accessor for ActivityCategory, &protocol conformance descriptor for ActivityCategory);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_100062CA4(&qword_100091BB8, &type metadata accessor for ActivityCategory, &protocol conformance descriptor for ActivityCategory);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100060928(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for WebDomain();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10005FB7C(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_100061670(&type metadata accessor for WebDomain, &qword_100091BA8, &qword_10006E4B0);
      goto LABEL_12;
    }

    sub_100062198(v10 + 1);
  }

  v12 = *v3;
  sub_100062CA4(&qword_100091B98, &type metadata accessor for WebDomain, &protocol conformance descriptor for WebDomain);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_100062CA4(&qword_100091BA0, &type metadata accessor for WebDomain, &protocol conformance descriptor for WebDomain);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_100060BF0(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_10005FED8(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1000618A8();
      goto LABEL_16;
    }

    sub_1000624B4(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100060D70(uint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_143;
  }

  if (a4)
  {
    sub_100060138(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100061A04();
      goto LABEL_143;
    }

    sub_1000626EC(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  Data.hash(into:)();
  result = Hasher._finalize()();
  v11 = v10 + 56;
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
  {
LABEL_143:
    v70 = *v79;
    *(*v79 + 8 * (a3 >> 6) + 56) |= 1 << a3;
    v71 = (*(v70 + 48) + 16 * a3);
    *v71 = v7;
    v71[1] = a2;
    v72 = *(v70 + 16);
    v29 = __OFADD__(v72, 1);
    v73 = v72 + 1;
    if (!v29)
    {
      *(v70 + 16) = v73;
      return result;
    }

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
  }

  v13 = ~v12;
  v14 = a2 >> 62;
  if (v7)
  {
    v15 = 0;
  }

  else
  {
    v15 = a2 == 0xC000000000000000;
  }

  v16 = !v15;
  v83 = v16;
  v78 = v10;
  v17 = __OFSUB__(HIDWORD(v7), v7);
  v80 = v17;
  v76 = (v7 >> 32) - v7;
  v77 = v7 >> 32;
  v81 = v13;
  v82 = v10 + 56;
  while (1)
  {
    v18 = (*(v10 + 48) + 16 * a3);
    v20 = *v18;
    v19 = v18[1];
    v21 = v19 >> 62;
    if (v19 >> 62 == 3)
    {
      if (v20)
      {
        v22 = 0;
      }

      else
      {
        v22 = v19 == 0xC000000000000000;
      }

      v24 = !v22 || a2 >> 62 != 3;
      if (((v24 | v83) & 1) == 0)
      {
        goto LABEL_185;
      }

LABEL_32:
      v25 = 0;
      goto LABEL_33;
    }

    if (v21 > 1)
    {
      if (v21 != 2)
      {
        goto LABEL_32;
      }

      v36 = *(v20 + 16);
      v35 = *(v20 + 24);
      v29 = __OFSUB__(v35, v36);
      v25 = v35 - v36;
      if (v29)
      {
        goto LABEL_147;
      }
    }

    else if (v21)
    {
      LODWORD(v25) = HIDWORD(v20) - v20;
      if (__OFSUB__(HIDWORD(v20), v20))
      {
        goto LABEL_148;
      }

      v25 = v25;
    }

    else
    {
      v25 = BYTE6(v19);
    }

LABEL_33:
    if (v14 > 1)
    {
      if (v14 != 2)
      {
        if (!v25)
        {
          goto LABEL_185;
        }

        goto LABEL_20;
      }

      v28 = *(v7 + 16);
      v27 = *(v7 + 24);
      v29 = __OFSUB__(v27, v28);
      v26 = v27 - v28;
      if (v29)
      {
        goto LABEL_145;
      }
    }

    else
    {
      v26 = BYTE6(a2);
      if (v14)
      {
        v26 = HIDWORD(v7) - v7;
        if (v80)
        {
          __break(1u);
LABEL_145:
          __break(1u);
          goto LABEL_146;
        }
      }
    }

    if (v25 == v26)
    {
      break;
    }

LABEL_20:
    a3 = (a3 + 1) & v13;
    if (((*(v11 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
    {
      goto LABEL_143;
    }
  }

  if (v25 < 1)
  {
    goto LABEL_185;
  }

  if (v21 <= 1)
  {
    if (!v21)
    {
      *__s1 = v20;
      *&__s1[8] = v19;
      __s1[10] = BYTE2(v19);
      __s1[11] = BYTE3(v19);
      __s1[12] = BYTE4(v19);
      __s1[13] = BYTE5(v19);
      if (!v14)
      {
        goto LABEL_97;
      }

      if (v14 == 1)
      {
        if (v77 < v7)
        {
          goto LABEL_152;
        }

        sub_100020CD8(v20, v19);
        v30 = __DataStorage._bytes.getter();
        if (!v30)
        {
          goto LABEL_175;
        }

        v31 = v30;
        v32 = __DataStorage._offset.getter();
        if (__OFSUB__(v7, v32))
        {
          goto LABEL_158;
        }

        v33 = v7 - v32 + v31;
        v34 = __DataStorage._length.getter();
        if (!v33)
        {
          goto LABEL_174;
        }

LABEL_111:
        if (v34 >= v76)
        {
          v55 = (v7 >> 32) - v7;
        }

        else
        {
          v55 = v34;
        }

LABEL_114:
        v59 = __s1;
        v60 = v33;
LABEL_140:
        v69 = memcmp(v59, v60, v55);
        result = sub_100020D78(v20, v19);
LABEL_141:
        v13 = v81;
        v11 = v82;
        if (!v69)
        {
          goto LABEL_185;
        }

        goto LABEL_20;
      }

      v53 = *(v7 + 16);
      v52 = *(v7 + 24);
      sub_100020CD8(v20, v19);
      v33 = __DataStorage._bytes.getter();
      if (v33)
      {
        v54 = __DataStorage._offset.getter();
        if (__OFSUB__(v53, v54))
        {
          goto LABEL_162;
        }

        v33 += v53 - v54;
      }

      v29 = __OFSUB__(v52, v53);
      v50 = v52 - v53;
      if (v29)
      {
        goto LABEL_156;
      }

      v51 = __DataStorage._length.getter();
      v10 = v78;
      if (!v33)
      {
        goto LABEL_172;
      }

LABEL_104:
      if (v51 >= v50)
      {
        v55 = v50;
      }

      else
      {
        v55 = v51;
      }

      goto LABEL_114;
    }

    if (v20 > v20 >> 32)
    {
      goto LABEL_149;
    }

    sub_100020CD8(v20, v19);
    v38 = __DataStorage._bytes.getter();
    if (v38)
    {
      v44 = __DataStorage._offset.getter();
      if (__OFSUB__(v20, v44))
      {
        goto LABEL_151;
      }

      v38 += v20 - v44;
    }

    __DataStorage._length.getter();
    if (v14 == 2)
    {
      v65 = *(v7 + 16);
      v75 = *(v7 + 24);
      v40 = __DataStorage._bytes.getter();
      if (v40)
      {
        v66 = __DataStorage._offset.getter();
        if (__OFSUB__(v65, v66))
        {
          goto LABEL_166;
        }

        v40 += v65 - v66;
      }

      v29 = __OFSUB__(v75, v65);
      v67 = v75 - v65;
      if (v29)
      {
        goto LABEL_161;
      }

      v68 = __DataStorage._length.getter();
      if (v68 >= v67)
      {
        v43 = v67;
      }

      else
      {
        v43 = v68;
      }

      if (!v38)
      {
        goto LABEL_177;
      }

      if (!v40)
      {
        goto LABEL_176;
      }

      goto LABEL_136;
    }

    if (v14 == 1)
    {
      if (v77 < v7)
      {
        goto LABEL_160;
      }

      v40 = __DataStorage._bytes.getter();
      if (v40)
      {
        v45 = __DataStorage._offset.getter();
        if (__OFSUB__(v7, v45))
        {
          goto LABEL_167;
        }

        v40 += v7 - v45;
      }

      v46 = __DataStorage._length.getter();
      v43 = (v7 >> 32) - v7;
      if (v46 < v76)
      {
        v43 = v46;
      }

      if (!v38)
      {
        goto LABEL_181;
      }

      if (!v40)
      {
        goto LABEL_180;
      }

      goto LABEL_136;
    }

    *__s1 = v7;
    *&__s1[8] = a2;
    __s1[10] = BYTE2(a2);
    __s1[11] = BYTE3(a2);
    __s1[12] = BYTE4(a2);
    __s1[13] = BYTE5(a2);
    if (!v38)
    {
      goto LABEL_173;
    }

    goto LABEL_139;
  }

  if (v21 == 2)
  {
    v37 = *(v20 + 16);
    sub_100020CD8(v20, v19);
    v38 = __DataStorage._bytes.getter();
    if (v38)
    {
      v39 = __DataStorage._offset.getter();
      if (__OFSUB__(v37, v39))
      {
        goto LABEL_150;
      }

      v38 += v37 - v39;
    }

    __DataStorage._length.getter();
    if (v14 == 2)
    {
      v61 = *(v7 + 16);
      v74 = *(v7 + 24);
      v40 = __DataStorage._bytes.getter();
      if (v40)
      {
        v62 = __DataStorage._offset.getter();
        if (__OFSUB__(v61, v62))
        {
          goto LABEL_164;
        }

        v40 += v61 - v62;
      }

      v29 = __OFSUB__(v74, v61);
      v63 = v74 - v61;
      if (v29)
      {
        goto LABEL_159;
      }

      v64 = __DataStorage._length.getter();
      if (v64 >= v63)
      {
        v43 = v63;
      }

      else
      {
        v43 = v64;
      }

      if (!v38)
      {
        goto LABEL_183;
      }

      if (!v40)
      {
        goto LABEL_182;
      }

      goto LABEL_136;
    }

    if (v14 == 1)
    {
      if (v77 < v7)
      {
        goto LABEL_155;
      }

      v40 = __DataStorage._bytes.getter();
      if (v40)
      {
        v41 = __DataStorage._offset.getter();
        if (__OFSUB__(v7, v41))
        {
          goto LABEL_165;
        }

        v40 += v7 - v41;
      }

      v42 = __DataStorage._length.getter();
      v43 = (v7 >> 32) - v7;
      if (v42 < v76)
      {
        v43 = v42;
      }

      if (!v38)
      {
        goto LABEL_179;
      }

      if (!v40)
      {
        goto LABEL_178;
      }

LABEL_136:
      if (v38 == v40)
      {
        goto LABEL_184;
      }

      v69 = memcmp(v38, v40, v43);
      result = sub_100020D78(v20, v19);
      v10 = v78;
      goto LABEL_141;
    }

    *__s1 = v7;
    *&__s1[8] = a2;
    __s1[10] = BYTE2(a2);
    __s1[11] = BYTE3(a2);
    __s1[12] = BYTE4(a2);
    __s1[13] = BYTE5(a2);
    if (!v38)
    {
      goto LABEL_170;
    }

LABEL_139:
    v60 = __s1;
    v59 = v38;
    v55 = BYTE6(a2);
    goto LABEL_140;
  }

  *&__s1[6] = 0;
  *__s1 = 0;
  if (!v14)
  {
LABEL_97:
    __s2 = v7;
    v85 = a2;
    v86 = BYTE2(a2);
    v87 = BYTE3(a2);
    v88 = BYTE4(a2);
    v89 = BYTE5(a2);
    result = memcmp(__s1, &__s2, BYTE6(a2));
    if (!result)
    {
      goto LABEL_185;
    }

    goto LABEL_20;
  }

  if (v14 == 2)
  {
    v48 = *(v7 + 16);
    v47 = *(v7 + 24);
    sub_100020CD8(v20, v19);
    v33 = __DataStorage._bytes.getter();
    if (v33)
    {
      v49 = __DataStorage._offset.getter();
      if (__OFSUB__(v48, v49))
      {
        goto LABEL_163;
      }

      v33 += v48 - v49;
    }

    v29 = __OFSUB__(v47, v48);
    v50 = v47 - v48;
    if (v29)
    {
      goto LABEL_154;
    }

    v51 = __DataStorage._length.getter();
    v10 = v78;
    if (!v33)
    {
      goto LABEL_171;
    }

    goto LABEL_104;
  }

  if (v77 < v7)
  {
    goto LABEL_153;
  }

  sub_100020CD8(v20, v19);
  v56 = __DataStorage._bytes.getter();
  if (v56)
  {
    v57 = v56;
    v58 = __DataStorage._offset.getter();
    if (__OFSUB__(v7, v58))
    {
      goto LABEL_157;
    }

    v33 = v7 - v58 + v57;
    v34 = __DataStorage._length.getter();
    if (!v33)
    {
      goto LABEL_169;
    }

    goto LABEL_111;
  }

  __DataStorage._length.getter();
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
  __DataStorage._length.getter();
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  sub_100020D78(v20, v19);
LABEL_185:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_100061670(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - v9;
  sub_100020818(a2, a3);
  v11 = *v3;
  v12 = static _SetStorage.copy(original:)();
  v13 = v12;
  if (*(v11 + 16))
  {
    v27 = v6;
    result = (v12 + 56);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || result >= v11 + 56 + 8 * v15)
    {
      result = memmove(result, (v11 + 56), 8 * v15);
    }

    v17 = 0;
    *(v13 + 16) = *(v11 + 16);
    v18 = 1 << *(v11 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v11 + 56);
    v21 = (v18 + 63) >> 6;
    v28 = v8 + 32;
    for (i = v8 + 16; v20; result = (*(v8 + 32))(*(v13 + 48) + v25, v10, v7))
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v25 = *(v8 + 72) * (v22 | (v17 << 6));
      (*(v8 + 16))(v10, *(v11 + 48) + v25, v7);
    }

    v23 = v17;
    while (1)
    {
      v17 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v17 >= v21)
      {

        v6 = v27;
        goto LABEL_21;
      }

      v24 = *(v11 + 56 + 8 * v17);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v13;
  }

  return result;
}

void *sub_1000618A8()
{
  v1 = v0;
  sub_100020818(&qword_100091B88, &qword_10006E498);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
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

  return result;
}

void *sub_100061A04()
{
  v1 = v0;
  sub_100020818(&qword_100091B78, &qword_10006E480);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
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
        v18 = *(*(v2 + 48) + v17);
        *(*(v4 + 48) + v17) = v18;
        result = sub_100020CD8(v18, *(&v18 + 1));
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

  return result;
}

uint64_t sub_100061B60(uint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for Application();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_100020818(&qword_100091BD8, &unk_10006E4C0);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
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
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_100062CA4(&qword_100091BC8, &type metadata accessor for Application, &protocol conformance descriptor for Application);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
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

        v2 = v28;
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

  return result;
}

uint64_t sub_100061E7C(uint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for ActivityCategory();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_100020818(&qword_100091BC0, &qword_10006E4B8);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
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
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_100062CA4(&qword_100091BB0, &type metadata accessor for ActivityCategory, &protocol conformance descriptor for ActivityCategory);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
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

        v2 = v28;
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

  return result;
}

uint64_t sub_100062198(uint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for WebDomain();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_100020818(&qword_100091BA8, &qword_10006E4B0);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
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
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_100062CA4(&qword_100091B98, &type metadata accessor for WebDomain, &protocol conformance descriptor for WebDomain);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
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

        v2 = v28;
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

  return result;
}

Swift::Int sub_1000624B4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100020818(&qword_100091B88, &qword_10006E498);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
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
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
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

  return result;
}

Swift::Int sub_1000626EC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100020818(&qword_100091B78, &qword_10006E480);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
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
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();
      sub_100020CD8(v18, v19);
      Data.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
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

  return result;
}

id sub_100062928(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v8 = type metadata accessor for KeyRetriever();
  v21[3] = v8;
  v21[4] = &protocol witness table for KeyRetriever;
  v9 = sub_1000283C4(v21);
  (*(*(v8 - 8) + 32))(v9, a3, v8);
  v10 = &a4[OBJC_IVAR____TtC18UsageTrackingAgent10TokenCoder_teamIdentifier];
  *v10 = a1;
  *(v10 + 1) = a2;
  if (a2)
  {
    sub_100020F40(v21, v19);
    type metadata accessor for TokenDecoder();
    swift_allocObject();
    swift_bridgeObjectRetain_n();
    *&a4[OBJC_IVAR____TtC18UsageTrackingAgent10TokenCoder_decoder] = TokenDecoder.init(teamIdentifier:keyRetriever:)();
    sub_100020F40(v21, v19);
    type metadata accessor for TokenEncoder();
    swift_allocObject();
    v11 = TokenEncoder.init(teamIdentifier:keyRetriever:)();
  }

  else
  {
    if (qword_100090D20 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100020D2C(v12, qword_100092EC8);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Failed to create token coder with nil team identifier", v15, 2u);
    }

    v11 = 0;
    *&a4[OBJC_IVAR____TtC18UsageTrackingAgent10TokenCoder_decoder] = 0;
  }

  *&a4[OBJC_IVAR____TtC18UsageTrackingAgent10TokenCoder_encoder] = v11;
  v16 = type metadata accessor for TokenCoder();
  v20.receiver = a4;
  v20.super_class = v16;
  v17 = objc_msgSendSuper2(&v20, "init");
  sub_1000208BC(v21);
  return v17;
}

uint64_t sub_100062B4C(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_100062BE8();
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      sub_100020CD8(v6, *v4);
      sub_10005EB48(v7, v6, v5);
      sub_100020D78(v7[0], v7[1]);
      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_100062BE8()
{
  result = qword_100091B70;
  if (!qword_100091B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100091B70);
  }

  return result;
}

uint64_t sub_100062C3C(uint64_t a1)
{
  v2 = sub_100020818(&qword_100091360, &unk_10006D960);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100062CA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_100062D10()
{
  isa = Set._bridgeToObjectiveC()().super.isa;
  v2 = Set._bridgeToObjectiveC()().super.isa;
  v3 = Set._bridgeToObjectiveC()().super.isa;
  type metadata accessor for Identifier(0);
  sub_1000637A8();
  v4 = Set._bridgeToObjectiveC()().super.isa;
  v5 = DateInterval._bridgeToObjectiveC()().super.isa;
  v10 = 0;
  v6 = [v0 queryForApplications:isa exemptApplications:v2 webDomains:v3 categories:v4 interval:v5 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_100062E90(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 152) = a1;
  *(v2 + 160) = v3;
  return _swift_task_switch(sub_100062EB4, 0, 0);
}

uint64_t sub_100062EB4()
{
  v1 = v0[20];
  isa = DateInterval._bridgeToObjectiveC()().super.isa;
  v0[21] = isa;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10001FF38;
  v3 = swift_continuation_init();
  v0[17] = sub_100020818(&qword_100091BE8, &unk_10006E540);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100062FE8;
  v0[13] = &unk_100088018;
  v0[14] = v3;
  [v1 queryForUncategorizedLocalWebUsageDuringInterval:isa completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100062FE8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_100020908((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100020818(&qword_100091370, &qword_10006D390);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_100021848(0, &qword_1000914F0, NSNumber_ptr);
    **(*(v4 + 64) + 40) = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_1000630E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_100029CC0;
  v18.n128_f64[0] = a8;

  return (sub_100063284)(a1, a2, a3, a4, a5, a6, a7, v18);
}

void sub_1000631E8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_100063250(uint64_t a1)
{
  v1 = *sub_100020908((a1 + 32), *(a1 + 56));

  return _swift_continuation_resume(v1);
}

uint64_t sub_100063284(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, objc_class *a7, objc_class *a8)
{
  sub_100020818(&qword_1000913D0, &qword_10006D9C0);
  v12 = swift_task_alloc();
  v8[24].super.isa = v12;
  v23.super.isa = DateInterval._bridgeToObjectiveC()().super.isa;
  v8[25].super.isa = v23.super.isa;
  sub_100035814(a3, v12);
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  isa = 0;
  if ((*(v14 + 48))(v12, 1, v13) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v14 + 8))(v12, v13);
  }

  v8[26].super.isa = isa;
  v16 = Array._bridgeToObjectiveC()().super.isa;
  v8[27].super.isa = v16;
  sub_100021848(0, &qword_100090FB0, CTCategory_ptr);
  v17 = Dictionary._bridgeToObjectiveC()().super.isa;
  v8[28].super.isa = v17;
  v18 = Dictionary._bridgeToObjectiveC()().super.isa;
  v8[29].super.isa = v18;
  v8[22].super.isa = a7;
  v8[23].super.isa = a8;
  v8[18].super.isa = _NSConcreteStackBlock;
  v8[19].super.isa = 1107296256;
  v8[20].super.isa = sub_1000631E8;
  v8[21].super.isa = &unk_100087FC8;
  v19 = _Block_copy(&v8[18]);
  v8[30].super.isa = v19;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8[2].super.isa = v8;
  v8[3].super.isa = sub_1000635BC;
  v21 = swift_continuation_init();
  v8[17].super.isa = sub_100020818(&qword_100091BE0, &qword_10006E538);
  v8[14].super.isa = v21;
  v8[10].super.isa = _NSConcreteStackBlock;
  v8[11].super.isa = 1107296256;
  v8[12].super.isa = sub_100063250;
  v8[13].super.isa = &unk_100087FF0;

  [ObjCClassFromMetadata queryUsageDuringInterval:v23.super.isa partitionInterval:isa adjustedStartDate:v16 eventStreams:v17 categoryByBundleIdentifier:v18 categoryByWebDomain:v19 usageReportHandler:a1 completionHandler:&v8[10]];

  return _swift_continuation_await(&v8[2]);
}

uint64_t sub_1000635BC()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 224);
  v3 = *(*v0 + 216);
  v4 = *(*v0 + 208);
  v5 = *(*v0 + 200);
  v8 = *v0;
  _Block_release(*(*v0 + 240));

  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_100063778(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000637A8()
{
  result = qword_100090EB0;
  if (!qword_100090EB0)
  {
    type metadata accessor for Identifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100090EB0);
  }

  return result;
}

void sub_100063828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"USBudgetRegistration.m" lineNumber:146 description:{@"Failed to find Application Support directory, %@", a3}];
}

void sub_10006389C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = +[NSAssertionHandler currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"USBudgetRegistration.m" lineNumber:152 description:{@"Failed to create %@: %@", a3, a4}];
}

void sub_10006391C()
{
  sub_10000F1C8();
  sub_10000F1B8();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100063998()
{
  sub_10000F1D4(__stack_chk_guard);
  sub_10000F180();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100063A14(uint64_t a1, id *a2)
{
  v7 = [*a2 valueForKey:@"identifier"];
  sub_10000F1AC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_100063B1C()
{
  sub_10000F1C8();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100063B94()
{
  sub_10000F194(__stack_chk_guard);
  sub_10000F168();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100063C0C()
{
  sub_10000F168();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_100063CA0()
{
  sub_10000F194(__stack_chk_guard);
  sub_10000F168();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100063D18()
{
  sub_10000F194(__stack_chk_guard);
  sub_10000F168();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100063D90()
{
  sub_10000F1D4(__stack_chk_guard);
  sub_10000F180();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100063E0C()
{
  sub_10000F1D4(__stack_chk_guard);
  sub_10000F180();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100063E88(void *a1)
{
  v1 = [a1 predicate];
  sub_10000F1C8();
  sub_10000F1AC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100063FA8(void *a1)
{
  [a1 count];
  sub_10000F1C8();
  sub_10000F1E0(&_mh_execute_header, &_os_log_default, v1, "Looking up %lu application categories to find all equivalent applications and web domain budgets that are associated with applications", v2);
}

void sub_1000640A0(void *a1)
{
  [a1 count];
  sub_10000F1C8();
  sub_10000F1E0(&_mh_execute_header, &_os_log_default, v1, "Looking up %lu web domain categories to find application budgets that are associated with web domains", v2);
}

void sub_100064118()
{
  sub_10000F1C8();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_1000641A8()
{
  sub_10000F1C8();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100064220()
{
  sub_10000F194(__stack_chk_guard);
  sub_10000F168();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100064298()
{
  sub_10000F1D4(__stack_chk_guard);
  v1 = 138543362;
  v2 = v0;
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Failed to get managed object ID for budget URI: %{public}@", &v1, 0xCu);
}

void sub_100064318()
{
  sub_10000F1C8();
  sub_10000F1B8();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100064394()
{
  sub_10000F1C8();
  sub_10000F1B8();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000644B4(uint8_t *buf, uint64_t a2, void *a3)
{
  *buf = 138543362;
  *a3 = a2;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to delete local data from iCloud: %{public}@", buf, 0xCu);
}

void sub_100064500()
{
  sub_10000F1C8();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100064578()
{
  sub_10001C65C(__stack_chk_guard);
  sub_10000F180();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000645F4()
{
  sub_10000F1C8();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10006466C()
{
  sub_10000F1C8();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000646E4()
{
  sub_10000F1C8();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10006475C()
{
  sub_10000F1C8();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000647D4(uint64_t a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  [v2 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"USBudgetTracker.m" lineNumber:557 description:{@"Invalid parameter not satisfying: %@", @"[registrationIdentifier isEqualToString:RegistrationIdentifierApplication]"}];
}

void sub_100064848()
{
  sub_10000F1C8();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000648C0()
{
  sub_10000F1C8();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100064938()
{
  sub_10000F1C8();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000649B0()
{
  sub_10000F1C8();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100064A28(uint64_t a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  [v2 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"USBudgetTracker.m" lineNumber:672 description:{@"Invalid parameter not satisfying: %@", @"[registrationIdentifier isEqualToString:RegistrationIdentifierWebDomain]"}];
}

void sub_100064A9C()
{
  sub_10000F1C8();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100064B14()
{
  sub_10000F1C8();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100064B8C(uint64_t a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  [v2 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"USBudgetTracker.m" lineNumber:764 description:{@"Invalid parameter not satisfying: %@", @"[registrationIdentifier isEqualToString:RegistrationIdentifierNowPlaying]"}];
}

void sub_100064C00()
{
  sub_10000F1C8();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100064C78()
{
  sub_10000F1C8();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100064CF0()
{
  sub_10000F1C8();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100064D68()
{
  sub_10000F1C8();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100064DE0()
{
  sub_10000F1C8();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100064E58()
{
  sub_10000F1C8();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100064ED0(uint64_t a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  [v2 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"USBudgetTracker.m" lineNumber:905 description:{@"Invalid parameter not satisfying: %@", @"[registrationIdentifier isEqualToString:RegistrationIdentifierVideo]"}];
}

void sub_100064F44(uint64_t a1, void *a2)
{
  v7 = [a2 error];
  sub_10000F1AC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100064FEC()
{
  sub_10000F1C8();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100065064()
{
  sub_10000F180();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000650E4()
{
  sub_10000F1C8();
  v2 = 2082;
  v3 = v0;
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Failed to create budget URI from string: %{public}s for alarm: %{public}s", v1, 0x16u);
}

void sub_10006516C()
{
  sub_10000F180();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000651EC()
{
  sub_10000F1C8();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100065264()
{
  sub_10000F1C8();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000652DC()
{
  sub_10000F1C8();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100065354()
{
  sub_10000F1C8();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000653CC()
{
  sub_10001C65C(__stack_chk_guard);
  sub_10000F180();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100065448()
{
  sub_10001C65C(__stack_chk_guard);
  sub_10000F180();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000654C4()
{
  sub_10001C65C(__stack_chk_guard);
  sub_10000F180();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100065540()
{
  sub_10001C65C(__stack_chk_guard);
  sub_10000F180();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000655BC()
{
  sub_10001C65C(__stack_chk_guard);
  sub_10000F180();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000656B4()
{
  sub_10000F1C8();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10006572C(void *a1)
{
  v1 = [a1 name];
  sub_10000F1C8();
  sub_10000F1AC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000657BC(uint8_t *buf, uint64_t a2, void *a3)
{
  *buf = 138543362;
  *a3 = a2;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to calculate threshold adjust time: %{public}@", buf, 0xCu);
}

void sub_100065808()
{
  sub_10001C624();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100065880()
{
  sub_10001C624();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000658F8()
{
  sub_10001C624();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100065970()
{
  sub_10001C63C(__stack_chk_guard);
  sub_10000F180();
  sub_10001C64C();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_1000659EC()
{
  sub_10001C63C(__stack_chk_guard);
  sub_10000F180();
  sub_10001C64C();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_100065A68()
{
  sub_10001C63C(__stack_chk_guard);
  sub_10000F180();
  sub_10001C64C();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_100065AE4()
{
  sub_10001C63C(__stack_chk_guard);
  sub_10000F180();
  sub_10001C64C();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_100065B60()
{
  sub_10000F180();
  sub_10001C668();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_100065BE0()
{
  sub_10000F180();
  sub_10001C668();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_100065C60()
{
  sub_10000F180();
  sub_10001C668();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_100065CE0(void *a1, void *a2)
{
  v3 = [a1 threshold];
  v4 = [a2 name];
  v5 = [a2 clientIdentifier];
  sub_10001D080();
  v9 = v4;
  v10 = v6;
  v11 = v7;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Could not compute warning date for threshold: %{public}@ for %{public}@/%{public}@", v8, 0x20u);
}

void sub_100065DB4(void *a1)
{
  v2 = [a1 name];
  v3 = [a1 clientIdentifier];
  sub_10001D080();
  v6 = v4;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Could not compute next threshold date for %{public}@/%{public}@", v5, 0x16u);
}

void sub_100065E64(void *a1)
{
  v2 = [a1 name];
  v3 = [a1 clientIdentifier];
  sub_10001D080();
  v6 = v4;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Could not compute next interval for %{public}@/%{public}@", v5, 0x16u);
}

void sub_100065F28(uint64_t a1)
{
  v1 = *(*a1 + 40);
  v2 = 138412290;
  v3 = v1;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Recording the most uncategorized web domain of the day with DifferentialPrivacy: %@", &v2, 0xCu);
}

void sub_100065FF8(uint64_t a1)
{
  v1 = 138412290;
  v2 = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to query uncategorized local web usage, %@", &v1, 0xCu);
}

void sub_100066078(uint64_t a1, void *a2)
{
  v2 = 138543618;
  v3 = a1;
  v4 = 1024;
  v5 = [a2 processIdentifier];
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%{public}@ connection received from process %d", &v2, 0x12u);
}

void sub_100066118(uint64_t a1)
{
  v1 = 138412290;
  v2 = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unexpected Mach service name %@", &v1, 0xCu);
}

void sub_100066198(uint64_t a1)
{
  v1 = 138543618;
  v2 = a1;
  v3 = 2114;
  v4 = USUsageTrackingPrivateEntitlement;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%{public}@ is missing the %{public}@ entitlement.", &v1, 0x16u);
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DeviceActivityDataStore.localDeviceIdentifier()()
{
  v0 = DeviceActivityDataStore.localDeviceIdentifier()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}