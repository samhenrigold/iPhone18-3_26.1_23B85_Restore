void *sub_100087C24(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_100087C90(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = __DataStorage._offset.getter();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = __DataStorage._length.getter();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_100087D44(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      type metadata accessor for SHA256();
      sub_100089E20(&qword_10016BEE8, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_100087F24(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_100087F24(v5, v6);
  }

  type metadata accessor for SHA256();
  sub_100089E20(&qword_10016BEE8, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t sub_100087F24(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      type metadata accessor for SHA256();
      sub_100089E20(&qword_10016BEE8, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100088004@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = _StringGuts.copyUTF8(into:)();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100088054(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v34 = a1;
  v2 = type metadata accessor for JWT.Secret();
  v30 = *(v2 - 8);
  v31 = v2;
  __chkstk_darwin(v2);
  v29 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for JWT.Error();
  v32 = *(v4 - 8);
  __chkstk_darwin(v4);
  v5 = type metadata accessor for JWT();
  v27 = *(v5 - 8);
  v28 = v5;
  __chkstk_darwin(v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OSSignpostID();
  v36 = *(v8 - 8);
  v37 = v8;
  __chkstk_darwin(v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OSSignposter();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10016A4E0 != -1)
  {
    swift_once();
  }

  v15 = sub_10002FD14(v11, qword_10016BDB0);
  v16 = *(v12 + 16);
  v35 = v11;
  v16(v14, v15, v11);
  static OSSignpostID.exclusive.getter();
  v17 = swift_slowAlloc();
  *v17 = 0;
  v18 = OSSignposter.logHandle.getter();
  v19 = static os_signpost_type_t.begin.getter();
  v20 = OSSignpostID.rawValue.getter();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, v19, v20, "verifyAccessTokenSignature", "", v17, 2u);

  _s19OnDeviceStorageCore3JWTV4fromACSS_tAC5ErrorOYKcfC();
  v21 = v7;
  v23 = v29;
  v22 = v30;
  v24 = v31;
  (*(v30 + 104))(v29, enum case for JWT.Secret.derived(_:), v31);
  JWT.verifySignature(secret:)();
  (*(v22 + 8))(v23, v24);
  (*(v27 + 8))(v21, v28);
  LOBYTE(v22) = static os_signpost_type_t.end.getter();
  v25 = OSSignpostID.rawValue.getter();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, v22, v25, "verifyAccessTokenSignature", "", v17, 2u);

  (*(v36 + 8))(v10, v37);
  (*(v12 + 8))(v14, v35);
  return 0;
}

unint64_t sub_10008858C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100026F94(&qword_10016B000, &qword_100131BC0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_10009E660(v5, v6, v7, v8);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 32 * result);
      *v12 = v5;
      v12[1] = v6;
      v12[2] = v7;
      v12[3] = v8;
      *(v3[7] + 8 * result) = v9;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000886B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100026F94(&qword_10016BF90, &qword_1001321F0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10009E700(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
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

unint64_t sub_1000887C4(uint64_t a1)
{
  v2 = sub_100026F94(&qword_10016BF80, &qword_100131BE8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v19 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100026F94(&qword_10016BF88, &unk_100131BF0);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10002BA04(v9, v5, &qword_10016BF80, &qword_100131BE8);
      result = sub_10009E5F4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey(0);
      result = sub_100057720(v5, v14 + *(*(v15 - 8) + 72) * v13);
      *(v7[7] + 8 * v13) = *(v5 + v8);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100088994(uint64_t a1)
{
  v2 = sub_100026F94(&qword_10016BF70, &qword_100131BD8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v19 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100026F94(&qword_10016BF78, &qword_100131BE0);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10002BA04(v9, v5, &qword_10016BF70, &qword_100131BD8);
      result = sub_10009E5F4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey(0);
      result = sub_100057720(v5, v14 + *(*(v15 - 8) + 72) * v13);
      *(v7[7] + 8 * v13) = *(v5 + v8);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100088B64(uint64_t a1)
{
  v2 = sub_100026F94(&qword_10016BF60, &qword_100131BC8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v19 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100026F94(&qword_10016BF68, &qword_100131BD0);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10002BA04(v9, v5, &qword_10016BF60, &qword_100131BC8);
      result = sub_10009E5F4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey(0);
      result = sub_100057720(v5, v14 + *(*(v15 - 8) + 72) * v13);
      *(v7[7] + 8 * v13) = *(v5 + v8);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100088D34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100026F94(&qword_10016BF58, &qword_100131BB8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_10009E80C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
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

unint64_t sub_100088E10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100026F94(&qword_10016BF50, &qword_100131BA8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10002BA04(v4, v13, &qword_10016B898, &qword_100131BB0);
      result = sub_10009E850(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_100070144(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
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

unint64_t sub_100088F4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100026F94(&qword_10016BF28, &qword_100131B88);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10002BA04(v4, &v13, &qword_10016BF20, &qword_100131B80);
      v5 = v13;
      v6 = v14;
      result = sub_10009E700(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100070144(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
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

uint64_t sub_10008907C(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_100089134(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      __DataStorage.init(length:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

void *sub_1000891D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_100087C24(sub_100089350, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_10008923C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000822A0(result, a2);
  }

  return result;
}

uint64_t sub_100089250(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1000892CC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_100089370()
{
  result = qword_10016BF10;
  if (!qword_10016BF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BF10);
  }

  return result;
}

uint64_t sub_1000893C4(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for SHA256();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for SHA256Digest();
  v8 = *(v18 - 8);
  __chkstk_darwin(v18);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);

  v11 = sub_100084BF0(a1, a2);
  v13 = v12;
  sub_100089E20(&qword_10016BEE8, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  dispatch thunk of HashFunction.init()();
  sub_100087600(v11, v13);
  sub_100087D44(v11, v13, v7);
  sub_1000822A0(v11, v13);
  dispatch thunk of HashFunction.finalize()();
  sub_1000822A0(v11, v13);
  (*(v5 + 8))(v7, v4);
  v14 = sub_100085944(v10);
  (*(v8 + 8))(v10, v18);
  v19 = v14;
  sub_100026F94(&qword_10016AB28, &qword_100131390);
  sub_10002EFDC();
  v15 = BidirectionalCollection<>.joined(separator:)();

  return v15;
}

Class sub_100089640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100026F94(&qword_10016BF18, &qword_100131B78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100131AE0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v6;
  type metadata accessor for CFString(0);
  v8 = v7;
  *(inited + 72) = v7;
  *(inited + 48) = kSecClassGenericPassword;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v9;
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = a2;
  *(inited + 104) = a3;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v10;
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = a2;
  *(inited + 152) = a3;
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v11;
  v12 = qword_10016A510;
  swift_bridgeObjectRetain_n();
  v13 = kSecClassGenericPassword;
  if (v12 != -1)
  {
    swift_once();
  }

  v14 = qword_10016BFB0;
  v15 = *algn_10016BFB8;
  *(inited + 216) = &type metadata for String;
  *(inited + 192) = v14;
  *(inited + 200) = v15;
  *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 232) = v16;
  *(inited + 264) = v8;
  *(inited + 240) = kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
  *(inited + 272) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 280) = v17;
  *(inited + 312) = &type metadata for Bool;
  *(inited + 288) = 1;
  *(inited + 320) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 328) = v18;
  v19 = qword_10016A518;

  v20 = kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
  if (v19 != -1)
  {
    swift_once();
  }

  v21 = qword_10016BFC0;
  v22 = *algn_10016BFC8;
  *(inited + 360) = &type metadata for String;
  *(inited + 336) = v21;
  *(inited + 344) = v22;
  *(inited + 368) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 376) = v23;

  v24 = SecureEnclave.P256.KeyAgreement.PrivateKey.dataRepresentation.getter();
  *(inited + 408) = &type metadata for Data;
  *(inited + 384) = v24;
  *(inited + 392) = v25;
  *(inited + 416) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 424) = v26;
  *(inited + 456) = &type metadata for Bool;
  *(inited + 432) = 0;
  sub_100088F4C(inited);
  swift_setDeallocating();
  sub_100026F94(&qword_10016BF20, &qword_100131B80);
  swift_arrayDestroy();
  v27.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v28 = SecItemAdd(v27.super.isa, 0);

  if (v28)
  {
    _StringGuts.grow(_:)(24);

    v29 = SecCopyErrorMessageString(v28, 0);
    if (v29)
    {
      v30 = v29;
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      v34 = v31;
    }

    else
    {
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v35;
    }

    v36 = v33;
    String.append(_:)(*&v34);

    v27.super.isa = 0xD000000000000016;
    sub_100089370();
    swift_willThrowTypedImpl();
  }

  return v27.super.isa;
}

unint64_t sub_1000899F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100026F94(&qword_10016BF18, &qword_100131B78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100131AE0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v6;
  type metadata accessor for CFString(0);
  v8 = v7;
  *(inited + 72) = v7;
  *(inited + 48) = kSecClassGenericPassword;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v9;
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = a2;
  *(inited + 104) = a3;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v10;
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = a2;
  *(inited + 152) = a3;
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v11;
  v12 = qword_10016A510;
  swift_bridgeObjectRetain_n();
  v13 = kSecClassGenericPassword;
  if (v12 != -1)
  {
    swift_once();
  }

  v14 = qword_10016BFB0;
  v15 = *algn_10016BFB8;
  *(inited + 216) = &type metadata for String;
  *(inited + 192) = v14;
  *(inited + 200) = v15;
  *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 232) = v16;
  *(inited + 264) = v8;
  *(inited + 240) = kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
  *(inited + 272) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 280) = v17;
  *(inited + 312) = &type metadata for Bool;
  *(inited + 288) = 1;
  *(inited + 320) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 328) = v18;
  v19 = qword_10016A518;

  v20 = kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
  if (v19 != -1)
  {
    swift_once();
  }

  v21 = qword_10016BFC0;
  v22 = *algn_10016BFC8;
  *(inited + 360) = &type metadata for String;
  *(inited + 336) = v21;
  *(inited + 344) = v22;
  *(inited + 368) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 376) = v23;
  type metadata accessor for SymmetricKey();
  sub_100089E20(&qword_10016BEE0, &type metadata accessor for SymmetricKey, &protocol conformance descriptor for SymmetricKey);

  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  *(inited + 408) = &type metadata for Data;
  *(inited + 384) = v36;
  *(inited + 416) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 424) = v24;
  *(inited + 456) = &type metadata for Bool;
  *(inited + 432) = 0;
  sub_100088F4C(inited);
  swift_setDeallocating();
  sub_100026F94(&qword_10016BF20, &qword_100131B80);
  swift_arrayDestroy();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v26 = SecItemAdd(isa, 0);

  if (v26)
  {
    _StringGuts.grow(_:)(24);

    v27 = SecCopyErrorMessageString(v26, 0);
    if (v27)
    {
      v28 = v27;
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      v32 = v29;
    }

    else
    {
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v33;
    }

    v34 = v31;
    String.append(_:)(*&v32);

    v26 = 0xD000000000000016;
    sub_100089370();
    swift_willThrowTypedImpl();
  }

  return v26;
}

uint64_t sub_100089E20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100089E78(void *a1@<X8>)
{
  _StringGuts.grow(_:)(37);

  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0x2E736574796220;
  v3._object = 0xE700000000000000;
  String.append(_:)(v3);
  *a1 = 0xD00000000000001CLL;
  a1[1] = 0x800000010013B9F0;
}

void sub_100089F58(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      v5[2] = a1;
      LOWORD(v5[3]) = a2;
      BYTE2(v5[3]) = BYTE2(a2);
      BYTE3(v5[3]) = BYTE3(a2);
      BYTE4(v5[3]) = BYTE4(a2);
      BYTE5(v5[3]) = BYTE5(a2);
      sub_100089E78(v5);
      return;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    goto LABEL_7;
  }

  if (v2 == 2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
LABEL_7:
    sub_10008A550(v3, v4);
    return;
  }

  memset(&v5[2], 0, 14);
  sub_100089E78(v5);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SymmetricKey(uint64_t a1)
{
  sub_10008A508(&qword_10016BEE0, &type metadata accessor for SymmetricKey, &protocol conformance descriptor for SymmetricKey);
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  sub_100089F58(v4, v5);
  v2 = v1;
  sub_1000822A0(v4, v5);
  return v2;
}

uint64_t sub_10008A18C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v3 = a3(a1, a2);
  v5 = v4;
  sub_100089F58(v3, v4);
  v7 = v6;
  sub_1000822A0(v3, v5);
  return v7;
}

uint64_t sub_10008A1EC@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X1>, uint64_t *a4@<X8>)
{
  if (a1)
  {
    v5 = a2 - a1;
    if (a2 == a1)
    {
      result = 0;
      v7 = 0xC000000000000000;
    }

    else if (v5 < 15)
    {
      result = sub_10008907C(a1, a2);
      v7 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      v8 = __DataStorage.init(bytes:length:)();
      if (v5 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v5;
        v7 = v8 | 0x8000000000000000;
      }

      else
      {
        result = v5 << 32;
        v7 = v8 | 0x4000000000000000;
      }
    }
  }

  else
  {
    if (qword_10016A670 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    sub_100026F50(v10, v10[3]);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();

    sub_100026FDC(v10);
    result = 0;
    v7 = 0xC000000000000000;
  }

  *a4 = result;
  a4[1] = v7;
  return result;
}

uint64_t sub_10008A400(uint64_t a1)
{
  result = sub_10008A508(&qword_10016BF98, &type metadata accessor for SymmetricKey, &protocol conformance descriptor for SymmetricKey);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10008A458(uint64_t a1)
{
  result = sub_10008A508(&qword_10016BFA0, &type metadata accessor for SecureEnclave.P256.KeyAgreement.PrivateKey, &protocol conformance descriptor for SecureEnclave.P256.KeyAgreement.PrivateKey);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10008A4B0(uint64_t a1)
{
  result = sub_10008A508(&qword_10016BFA8, &type metadata accessor for SecureEnclave.P256.Signing.PrivateKey, &protocol conformance descriptor for SecureEnclave.P256.Signing.PrivateKey);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10008A508(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10008A550(uint64_t a1, uint64_t a2)
{
  if (!__DataStorage._bytes.getter() || !__OFSUB__(a1, __DataStorage._offset.getter()))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      sub_100089E78(&v4);
      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_10008A604()
{
  result = static Utils.daemonProcessName.getter();
  qword_10016BFB0 = result;
  *algn_10016BFB8 = v1;
  return result;
}

uint64_t sub_10008A628()
{
  result = static Utils.keychainAccessGroup.getter();
  qword_10016BFC0 = result;
  *algn_10016BFC8 = v1;
  return result;
}

uint64_t sub_10008A65C()
{
  v0 = type metadata accessor for ErrorCode.Daemon();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, enum case for ErrorCode.Daemon.keyStore(_:), v0);
  v4 = ErrorCode.Daemon.errorCode.getter();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_10008A748()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_10008A778(uint64_t a1)
{
  v2 = sub_10008A8FC();

  return RichError.description.getter(a1, v2);
}

uint64_t sub_10008A7B4(uint64_t a1)
{
  v2 = sub_10008A8FC();

  return RichError.debugDescription.getter(a1, v2);
}

unint64_t sub_10008A7F8()
{
  result = qword_10016BFD0;
  if (!qword_10016BFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BFD0);
  }

  return result;
}

unint64_t sub_10008A850()
{
  result = qword_10016BFD8;
  if (!qword_10016BFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BFD8);
  }

  return result;
}

unint64_t sub_10008A8A8()
{
  result = qword_10016BFE0;
  if (!qword_10016BFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BFE0);
  }

  return result;
}

unint64_t sub_10008A8FC()
{
  result = qword_10016BFE8;
  if (!qword_10016BFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BFE8);
  }

  return result;
}

uint64_t sub_10008A960()
{
  v0 = type metadata accessor for OSLogger.Subsystem();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10016A618 != -1)
  {
    swift_once();
  }

  v4 = sub_10002FD14(v0, qword_100173718);
  (*(v1 + 16))(v3, v4, v0);
  v5 = OSLogger.Subsystem.rawValue.getter();
  v7 = v6;
  result = (*(v1 + 8))(v3, v0);
  qword_100173660 = v5;
  *algn_100173668 = v7;
  return result;
}

uint64_t sub_10008AB60(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for OSSignposter();
  sub_10002FDA4(v5, a2);
  sub_10002FD14(v5, a2);
  if (qword_10016A520 != -1)
  {
    swift_once();
  }

  return OSSignposter.init(subsystem:category:)();
}

uint64_t sub_10008AC28(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

unint64_t sub_10008ACD4(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0xD00000000000004CLL;
  }

  _StringGuts.grow(_:)(70);
  v4._object = 0x800000010013BAA0;
  v4._countAndFlagsBits = 0xD000000000000043;
  String.append(_:)(v4);
  v5._countAndFlagsBits = a1;
  v5._object = a2;
  String.append(_:)(v5);
  v6._countAndFlagsBits = 46;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  return 0;
}

uint64_t sub_10008AD90()
{
  v1 = type metadata accessor for ErrorCode.Daemon();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = &enum case for ErrorCode.Daemon.missingEntitlements(_:);
  if (*(v0 + 8))
  {
    v5 = &enum case for ErrorCode.Daemon.bundleIdAccessDenied(_:);
  }

  (*(v2 + 104))(v4, *v5, v1);
  v6 = ErrorCode.Daemon.errorCode.getter();
  (*(v2 + 8))(v4, v1);
  return v6;
}

uint64_t sub_10008AE94(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (!v3)
  {
    return v4 == 0;
  }

  if (!v4)
  {
    return 0;
  }

  if (*a1 == *a2 && v3 == v4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_10008AEE8(uint64_t a1)
{
  v2 = sub_10008B498();

  return RichError.description.getter(a1, v2);
}

uint64_t sub_10008AF24(uint64_t a1)
{
  v2 = sub_10008B498();

  return RichError.debugDescription.getter(a1, v2);
}

uint64_t sub_10008AF60(uint64_t a1, uint64_t a2)
{
  if ((static Utils.isQaTool(bundleId:)() & 1) == 0)
  {
    v4 = AccessCredential.bundleIds.getter();
    if (v4)
    {
      v5 = v4;
      v9 = a1;
      v10 = a2;
      __chkstk_darwin(v4);
      v8[2] = &v9;
      v6 = sub_10008AC28(sub_10008B168, v8, v5);

      if ((v6 & 1) == 0)
      {
        v9 = a1;
        v10 = a2;
        sub_100042B50();
        swift_willThrowTypedImpl();
      }
    }
  }

  return a1;
}

uint64_t sub_10008B110(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_10008B168(uint64_t *a1)
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

uint64_t sub_10008B1C0(uint64_t a1, unsigned int a2)
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

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10008B210(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
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

uint64_t sub_10008B264(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_10008B27C(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

__n128 sub_10008B2BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10008B2E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_10008B328(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_10008B394()
{
  result = qword_10016BFF0;
  if (!qword_10016BFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BFF0);
  }

  return result;
}

unint64_t sub_10008B3EC()
{
  result = qword_10016BFF8;
  if (!qword_10016BFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BFF8);
  }

  return result;
}

unint64_t sub_10008B444()
{
  result = qword_10016C000;
  if (!qword_10016C000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016C000);
  }

  return result;
}

unint64_t sub_10008B498()
{
  result = qword_10016C008;
  if (!qword_10016C008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016C008);
  }

  return result;
}

__n128 sub_10008B4EC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_10008B500(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_10008B548(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_10008B5A4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  v8 = String.Iterator.next()();
  v9 = a1;
  if (v8.value._object)
  {
    countAndFlagsBits = v8.value._countAndFlagsBits;
    object = v8.value._object;
    v9 = a1;
    while ((v9 ^ a2) >= 0x4000)
    {
      v14 = Substring.subscript.getter();
      v16 = v15;
      v9 = Substring.index(after:)();
      if (countAndFlagsBits == v14 && object == v16)
      {
      }

      else
      {
        v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v12 & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      v13 = String.Iterator.next()();
      countAndFlagsBits = v13.value._countAndFlagsBits;
      object = v13.value._object;
      if (!v13.value._object)
      {
        goto LABEL_9;
      }
    }

    return 1;
  }

  else
  {
LABEL_9:

    if ((v9 ^ a2) >= 0x4000)
    {
      Substring.subscript.getter();
      Substring.index(after:)();
LABEL_13:

      return 0;
    }

    else
    {
      return 1;
    }
  }
}

uint64_t sub_10008B764(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{

  v4 = String.Iterator.next()();
  if (v4.value._object)
  {
    countAndFlagsBits = v4.value._countAndFlagsBits;
    object = v4.value._object;
    do
    {
      v9 = String.Iterator.next()();
      if (!v9.value._object)
      {

        return 1;
      }

      if (countAndFlagsBits == v9.value._countAndFlagsBits && object == v9.value._object)
      {
      }

      else
      {
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v7 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v8 = String.Iterator.next()();
      countAndFlagsBits = v8.value._countAndFlagsBits;
      object = v8.value._object;
    }

    while (v8.value._object);
  }

  v10 = String.Iterator.next()().value._object;

  if (!v10)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

uint64_t sub_10008B8C0()
{
  v0 = type metadata accessor for OSLogger.Subsystem();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OSLogger();
  sub_10002FDA4(v4, qword_10016C010);
  sub_10002FD14(v4, qword_10016C010);
  if (qword_10016A618 != -1)
  {
    swift_once();
  }

  v5 = sub_10002FD14(v0, qword_100173718);
  (*(v1 + 16))(v3, v5, v0);
  return OSLogger.init(subsystem:category:)();
}

uint64_t sub_10008BA18()
{
  *(v1 + 104) = v0;
  v2 = sub_100026F94(&qword_10016AFE8, &qword_100130F00);
  v3 = swift_task_alloc();
  *(v1 + 112) = v3;
  *v3 = v1;
  v3[1] = sub_10008BADC;

  return BaseObjectGraph.inject<A>(_:)(v1 + 64, v2, v2);
}

uint64_t sub_10008BADC()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_10008C18C;
  }

  else
  {
    v2 = sub_10008BBF0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10008BBF0()
{
  v1 = sub_100026F50(v0 + 8, v0[11]);
  v0[16] = v1;
  v2 = *v1;

  return _swift_task_switch(sub_10008BC60, v2, 0);
}

uint64_t sub_10008BC60()
{
  *(v0 + 136) = sub_100050B84();

  return _swift_task_switch(sub_10008BCD0, 0, 0);
}

uint64_t sub_10008BCD0()
{
  v1 = v0[13];
  v2 = sub_100026F50(v0 + 8, v0[11]);
  sub_10008E36C(v1, (v0 + 2));
  v3 = *v2;
  v0[18] = *v2;

  return _swift_task_switch(sub_10008BD54, v3, 0);
}

uint64_t sub_10008BD54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A3D0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey(0);
  v5 = sub_10002FD14(v4, qword_10016B3A0);
  v6 = swift_task_alloc();
  *(v3 + 152) = v6;
  *v6 = v3;
  v6[1] = sub_10008BE50;

  return sub_100050F58(v5, 0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
}

uint64_t sub_10008BE50(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 160) = a1;
  *(v4 + 168) = v1;

  v5 = *(v3 + 144);
  if (v1)
  {
    v6 = sub_10008C0B4;
  }

  else
  {
    v6 = sub_10008BF84;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10008BF84(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = v3[18];
  v5 = *(v4 + 216);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  v8 = v3[20];
  v9 = v3[17];
  *(v4 + 216) = v7;
  v3[22] = sub_10008E3D4(v8, v9);

  v10 = *(v4 + 216);
  v6 = __OFSUB__(v10, 1);
  v11 = v10 - 1;
  if (v6)
  {
LABEL_7:
    __break(1u);
    return _swift_task_switch(a1, a2, a3);
  }

  *(v4 + 216) = v11;
  sub_10008E3A4((v3 + 2));

  a1 = sub_10008C04C;
  a2 = 0;
  a3 = 0;

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_10008C04C()
{
  sub_100026FDC(v0 + 8);
  v1 = v0[1];
  v2 = v0[22];

  return v1(v2);
}

uint64_t sub_10008C0B4()
{
  sub_10008E3A4(v0 + 16);

  return _swift_task_switch(sub_10008C128, 0, 0);
}

uint64_t sub_10008C128()
{
  sub_100026FDC((v0 + 64));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10008C1A4(uint64_t a1)
{
  v3 = a1 + 64;
  v2 = *(a1 + 64);
  v33 = _swiftEmptyArrayStorage;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & v2;
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  if (v6)
  {
    while (1)
    {
      v9 = v8;
LABEL_9:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v11 = v10 | (v9 << 6);
      v12 = (*(a1 + 48) + 16 * v11);
      v14 = *v12;
      v13 = v12[1];
      v15 = (*(a1 + 56) + (v11 << 6));
      v17 = v15[1];
      v16 = v15[2];
      v18 = *v15;
      *(v35 + 9) = *(v15 + 41);
      v34[1] = v17;
      v35[0] = v16;
      v34[0] = v18;
      *&v28[9] = *(v15 + 41);
      v19 = v15[2];
      v27 = v15[1];
      *v28 = v19;
      v26 = *v15;
      v29[0] = v14;
      v29[1] = v13;
      *(v32 + 9) = *&v28[9];
      v31 = v27;
      v32[0] = v19;
      v30 = v26;

      sub_100092A0C(v34, v25);
      v20 = sub_100091984();
      sub_10002BA6C(v29, &qword_10016C040, &qword_1001321E8);
      sub_10007FEC0(v20);
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    if (v9 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }

  v21 = sub_10006A4E8(v33);

  if (v21[2])
  {
    sub_100026F94(&qword_10016BF90, &qword_1001321F0);
    v22 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v22 = _swiftEmptyDictionarySingleton;
  }

  v29[0] = v22;

  sub_100092A74(v23, 1, v29);

  return v29[0];
}

uint64_t sub_10008C3C8()
{
  v1 = sub_100026F94(&qword_10016B008, &unk_100130F30);
  v2 = swift_task_alloc();
  *(v0 + 272) = v2;
  *v2 = v0;
  v2[1] = sub_10008C484;

  return BaseObjectGraph.inject<A>(_:)(v0 + 144, v1, v1);
}

uint64_t sub_10008C484()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_10008CECC;
  }

  else
  {
    v2 = sub_10008C598;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10008C598()
{
  sub_100026F50(v0 + 18, v0[21]);
  v1 = swift_task_alloc();
  v0[36] = v1;
  *v1 = v0;
  v1[1] = sub_10008C63C;

  return sub_100064D70((v0 + 10));
}

uint64_t sub_10008C63C()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_10008CE68;
  }

  else
  {
    v2 = sub_10008C750;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10008C750()
{
  v1 = *(v0 + 80);
  if (!v1)
  {
    v32 = sub_1000886B0(_swiftEmptyArrayStorage);
LABEL_25:
    sub_100026FDC((v0 + 144));
    v62 = *(v0 + 8);

    return v62(v32);
  }

  *(v0 + 16) = v1;
  *(v0 + 24) = *(v0 + 88);
  *(v0 + 40) = *(v0 + 104);
  *(v0 + 56) = *(v0 + 120);
  *(v0 + 72) = *(v0 + 136);
  v2 = v0;
  v3 = sub_1000886B0(_swiftEmptyArrayStorage);
  *(v0 + 192) = *(v0 + 24);
  v67 = (v0 + 80);
  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  v6 = v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1000A1380(v4, v6, 0xD000000000000018, 0x800000010013BE60, isUniquelyReferenced_nonNull_native);
  *(v0 + 200) = *(v0 + 32);
  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  v10 = v9;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000A1380(v8, v10, 0xD000000000000019, 0x800000010013BE80, v11);
  *(v0 + 208) = *(v0 + 40);
  v12 = dispatch thunk of CustomStringConvertible.description.getter();
  v14 = v13;
  v15 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000A1380(v12, v14, 0xD00000000000001ALL, 0x800000010013BEA0, v15);
  *(v0 + 216) = *(v0 + 48);
  v16 = dispatch thunk of CustomStringConvertible.description.getter();
  v18 = v17;
  v19 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000A1380(v16, v18, 0xD00000000000001BLL, 0x800000010013BEC0, v19);
  *(v0 + 224) = *(v0 + 56);
  v20 = dispatch thunk of CustomStringConvertible.description.getter();
  v22 = v21;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000A1380(v20, v22, 0xD000000000000019, 0x800000010013BEE0, v23);
  *(v0 + 232) = *(v0 + 64);
  v24 = dispatch thunk of CustomStringConvertible.description.getter();
  v26 = v25;
  v27 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000A1380(v24, v26, 0xD00000000000001ALL, 0x800000010013BF00, v27);
  *(v0 + 240) = sub_1000F8A78();
  v28 = dispatch thunk of CustomStringConvertible.description.getter();
  v30 = v29;
  v31 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000A1380(v28, v30, 0x632E73726F727265, 0xEC000000746E756FLL, v31);
  v32 = v3;
  v64 = v2;
  v33 = *(v2 + 72);
  *(v2 + 184) = v33;
  v34 = *(v33 + 16);
  if (!v34)
  {
    sub_10002BA6C(v67, &qword_10016C048, &qword_1001321F8);
LABEL_24:
    v0 = v64;
    goto LABEL_25;
  }

  v63 = v3;

  sub_10007E9EC(0, v34, 0);
  v69 = _swiftEmptyArrayStorage;
  v35 = v33 + 64;
  result = _HashTable.startBucket.getter();
  v37 = result;
  v38 = 0;
  v39 = *(v33 + 36);
  v65 = v34;
  v66 = v39;
  while ((v37 & 0x8000000000000000) == 0 && v37 < 1 << *(v33 + 32))
  {
    v41 = v37 >> 6;
    if ((*(v35 + 8 * (v37 >> 6)) & (1 << v37)) == 0)
    {
      goto LABEL_29;
    }

    if (v39 != *(v33 + 36))
    {
      goto LABEL_30;
    }

    v68 = v38;
    v42 = *(*(v33 + 56) + 8 * v37);
    v67[21] = *(*(v33 + 48) + 8 * v37);
    v43._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v43);

    v44._countAndFlagsBits = 8250;
    v44._object = 0xE200000000000000;
    String.append(_:)(v44);
    v67[22] = v42;
    v45._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v45);

    v46 = v69;
    v48 = v69[2];
    v47 = v69[3];
    if (v48 >= v47 >> 1)
    {
      result = sub_10007E9EC((v47 > 1), v48 + 1, 1);
      v46 = v69;
    }

    v46[2] = v48 + 1;
    v49 = &v46[2 * v48];
    v49[4] = 2108681;
    v49[5] = 0xE300000000000000;
    v40 = 1 << *(v33 + 32);
    if (v37 >= v40)
    {
      goto LABEL_31;
    }

    v35 = v33 + 64;
    v50 = *(v33 + 64 + 8 * v41);
    if ((v50 & (1 << v37)) == 0)
    {
      goto LABEL_32;
    }

    v69 = v46;
    v39 = v66;
    if (v66 != *(v33 + 36))
    {
      goto LABEL_33;
    }

    v51 = v50 & (-2 << (v37 & 0x3F));
    if (v51)
    {
      v40 = __clz(__rbit64(v51)) | v37 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v52 = v41 << 6;
      v53 = (v33 + 72 + 8 * v41);
      v54 = v41 + 1;
      while (v54 < (v40 + 63) >> 6)
      {
        v56 = *v53++;
        v55 = v56;
        v52 += 64;
        ++v54;
        if (v56)
        {
          result = sub_1000579A0(v37, v66, 0);
          v40 = __clz(__rbit64(v55)) + v52;
          goto LABEL_5;
        }
      }

      result = sub_1000579A0(v37, v66, 0);
    }

LABEL_5:
    v38 = v68 + 1;
    v37 = v40;
    if (v68 + 1 == v65)
    {
      sub_10002BA6C(v67, &qword_10016C048, &qword_1001321F8);
      sub_10002BA6C((v67 + 13), &qword_10016C050, &unk_100132200);
      v67[23] = v69;
      sub_100026F94(&qword_10016AB28, &qword_100131390);
      sub_10002EFDC();
      v57 = BidirectionalCollection<>.joined(separator:)();
      v59 = v58;

      v60._countAndFlagsBits = v57;
      v60._object = v59;
      String.append(_:)(v60);

      v61 = swift_isUniquelyReferenced_nonNull_native();
      sub_1000A1380(10, 0xE100000000000000, 0x642E73726F727265, 0xEF64656C69617465, v61);
      v32 = v63;
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_10008CE68()
{
  sub_100026FDC((v0 + 144));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10008CEE4()
{
  v1 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v1 - 8);
  if (qword_10016A558 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for OSLogger();
  sub_10002FD14(v23, qword_10016C010);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 0xD00000000000002ELL;
  v2._object = 0x800000010013BDD0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v2);
  sub_100026F50(v0, v0[3]);
  v3 = type metadata accessor for ConfigurationStoreImplementation();
  v4 = sub_10004FE24(v3);
  v26 = &type metadata for Int64;
  v24 = v4;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(&v24, &qword_10016AB10, &unk_100130B10);
  v5._countAndFlagsBits = 0x695365676150202CLL;
  v5._object = 0xEC000000203A657ALL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  sub_100026F50(v0, v0[3]);
  v6 = sub_10004FEF0(v3);
  v26 = &type metadata for Int32;
  LODWORD(v24) = v6;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(&v24, &qword_10016AB10, &unk_100130B10);
  v7._countAndFlagsBits = 0x536568636143202CLL;
  v7._object = 0xED0000203A657A69;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  sub_100026F50(v0, v0[3]);
  v8 = sub_10004FFBC(v3);
  v26 = &type metadata for Int32;
  LODWORD(v24) = v8;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(&v24, &qword_10016AB10, &unk_100130B10);
  v9._countAndFlagsBits = 0x695479737542202CLL;
  v9._object = 0xEF203A74756F656DLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v9);
  sub_100026F50(v0, v0[3]);
  v10 = sub_100050088(v3);
  v26 = &type metadata for Int32;
  LODWORD(v24) = v10;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(&v24, &qword_10016AB10, &unk_100130B10);
  v11._countAndFlagsBits = 0xD000000000000013;
  v11._object = 0x800000010013BE00;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  sub_100026F50(v0, v0[3]);
  v12 = sub_100050154(v3);
  v26 = &type metadata for String;
  v24 = v12;
  v25 = v13;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(&v24, &qword_10016AB10, &unk_100130B10);
  v14._countAndFlagsBits = 0x616E72756F4A202CLL;
  v14._object = 0xEF203A65646F4D6CLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  sub_100026F50(v0, v0[3]);
  v15 = sub_100050238(v3);
  v26 = &type metadata for String;
  v24 = v15;
  v25 = v16;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(&v24, &qword_10016AB10, &unk_100130B10);
  v17._object = 0x800000010013BE20;
  v17._countAndFlagsBits = 0xD000000000000015;
  LogMessage.StringInterpolation.appendLiteral(_:)(v17);
  sub_100026F50(v0, v0[3]);
  v18 = sub_100050318(v3);
  v26 = &type metadata for Int32;
  LODWORD(v24) = v18;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(&v24, &qword_10016AB10, &unk_100130B10);
  v19._object = 0x800000010013BE40;
  v19._countAndFlagsBits = 0xD000000000000015;
  LogMessage.StringInterpolation.appendLiteral(_:)(v19);
  sub_100026F50(v0, v0[3]);
  v20 = sub_1000503E4(v3);
  v26 = &type metadata for Bool;
  LOBYTE(v24) = v20 & 1;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(&v24, &qword_10016AB10, &unk_100130B10);
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v21);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();
}

uint64_t sub_10008D458(uint64_t a1)
{
  v2[25] = a1;
  v2[26] = v1;
  type metadata accessor for LogMessage.StringInterpolation();
  v2[27] = swift_task_alloc();
  type metadata accessor for SystemStatusProvider.MemoryStats(0);
  v2[28] = swift_task_alloc();

  return _swift_task_switch(sub_10008D514, 0, 0);
}

uint64_t sub_10008D514()
{
  sub_100026F50(*(v0 + 208), *(*(v0 + 208) + 24));
  v1 = type metadata accessor for ConfigurationStoreImplementation();
  if (sub_1000503E4(v1))
  {
    v2 = sub_100026F94(&qword_10016AFE8, &qword_100130F00);
    v3 = swift_task_alloc();
    *(v0 + 232) = v3;
    *v3 = v0;
    v3[1] = sub_10008D658;

    return BaseObjectGraph.inject<A>(_:)(v0 + 64, v2, v2);
  }

  else
  {

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_10008D658()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_10008E110;
  }

  else
  {
    v2 = sub_10008D76C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10008D76C()
{
  v1 = sub_100026F50(v0 + 8, v0[11]);
  v0[31] = v1;
  v2 = *v1;

  return _swift_task_switch(sub_10008D7DC, v2, 0);
}

uint64_t sub_10008D7DC()
{
  *(v0 + 256) = sub_100050B84();

  return _swift_task_switch(sub_10008D84C, 0, 0);
}

uint64_t sub_10008D84C()
{
  v1 = v0[26];
  v2 = sub_100026F50(v0 + 8, v0[11]);
  sub_10008E36C(v1, (v0 + 2));
  v3 = *v2;
  v0[33] = *v2;

  return _swift_task_switch(sub_10008D8EC, v3, 0);
}

uint64_t sub_10008D8EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A3D0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey(0);
  v5 = sub_10002FD14(v4, qword_10016B3A0);
  v6 = swift_task_alloc();
  *(v3 + 272) = v6;
  *v6 = v3;
  v6[1] = sub_10008D9E8;

  return sub_100050F58(v5, 0x4D4541445F42425FLL, 0xED000044495F4E4FLL);
}

uint64_t sub_10008D9E8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 280) = a1;
  *(v4 + 288) = v1;

  v5 = *(v3 + 264);
  if (v1)
  {
    v6 = sub_10008DE54;
  }

  else
  {
    v6 = sub_10008DB1C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10008DB1C(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = v3[33];
  v5 = *(v4 + 216);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  v8 = v3[35];
  v9 = v3[32];
  *(v4 + 216) = v7;
  v3[37] = sub_10008E3D4(v8, v9);

  v10 = *(v4 + 216);
  v6 = __OFSUB__(v10, 1);
  v11 = v10 - 1;
  if (v6)
  {
LABEL_7:
    __break(1u);
    return _swift_task_switch(a1, a2, a3);
  }

  *(v4 + 216) = v11;
  sub_10008E3A4((v3 + 2));

  a1 = sub_10008DBE4;
  a2 = 0;
  a3 = 0;

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_10008DBE4()
{
  v1 = v0[32];
  sub_10008F0D4(v0[37]);
  v2 = *(v1 + 16);

  if (v2)
  {
    v3 = v0[28];
    sub_100090354(v0[37], v2, v3);

    sub_100090BC0(v3);
    sub_100092724(v3, type metadata accessor for SystemStatusProvider.MemoryStats);
  }

  else
  {
  }

  if (qword_10016A558 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for OSLogger();
  sub_10002FD14(v4, qword_10016C010);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._object = 0x800000010013BB30;
  v5._countAndFlagsBits = 0xD000000000000021;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  v0[20] = &type metadata for Int;
  v0[17] = v2;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C((v0 + 17), &qword_10016AB10, &unk_100130B10);
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100026FDC(v0 + 8);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10008DE54()
{
  sub_10008E3A4(v0 + 16);
  swift_bridgeObjectRelease_n();

  return _swift_task_switch(sub_10008DECC, 0, 0);
}

uint64_t sub_10008DECC()
{
  sub_100026FDC(v0 + 8);
  if (qword_10016A558 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for OSLogger();
  sub_10002FD14(v1, qword_10016C010);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._object = 0x800000010013BAF0;
  v2._countAndFlagsBits = 0xD000000000000030;
  LogMessage.StringInterpolation.appendLiteral(_:)(v2);
  swift_getErrorValue();
  v3 = v0[21];
  v4 = v0[22];
  v0[16] = v4;
  v5 = sub_100042BAC(v0 + 13);
  (*(*(v4 - 8) + 16))(v5, v3, v4);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C((v0 + 13), &qword_10016AB10, &unk_100130B10);
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  v7 = v0[1];

  return v7();
}

uint64_t sub_10008E110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A558 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for OSLogger();
  sub_10002FD14(v4, qword_10016C010);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._object = 0x800000010013BAF0;
  v5._countAndFlagsBits = 0xD000000000000030;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  swift_getErrorValue();
  v6 = v3[21];
  v7 = v3[22];
  v3[16] = v7;
  v8 = sub_100042BAC(v3 + 13);
  (*(*(v7 - 8) + 16))(v8, v6, v7);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C((v3 + 13), &qword_10016AB10, &unk_100130B10);
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v9);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  v10 = v3[1];

  return v10();
}

void *sub_10008E3D4(uint64_t a1, uint64_t a2)
{
  v2 = &_swiftEmptyDictionarySingleton;
  v3 = &off_1001641A0;
  for (i = 9; ; --i)
  {
    v5 = *(v3 - 8);
    v7 = *(v3 - 3);
    v6 = *(v3 - 2);
    v9 = *(v3 - 1);
    v8 = *v3;
    pCurrent[0] = 0;
    v134 = 0;

    v131 = v5;
    v10 = sqlite3_status(v5, pCurrent, &v134, 0);
    v129 = v9;
    v119 = v3;
    if (v10)
    {
      *&v142[0] = 0x203A726F727245;
      *(&v142[0] + 1) = 0xE700000000000000;

      v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v11);

      v121 = *(&v142[0] + 1);
      v125 = *&v142[0];
    }

    else
    {
      v125 = pCurrent[0] | (v134 << 32);

      v121 = 0;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = sub_10009E700(v7, v6);
    v15 = v14;
    v16 = *(&_swiftEmptyDictionarySingleton + 2);
    v17 = (v14 & 1) == 0;
    v18 = v16 + v17;
    if (__OFADD__(v16, v17))
    {
      goto LABEL_76;
    }

    if (*(&_swiftEmptyDictionarySingleton + 3) >= v18)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000A2D70();
      }
    }

    else
    {
      sub_1000A0258(v18, isUniquelyReferenced_nonNull_native);
      v13 = sub_10009E700(v7, v6);
      if ((v15 & 1) != (v19 & 1))
      {
        goto LABEL_80;
      }
    }

    v133 = v10 != 0;
    if ((v15 & 1) == 0)
    {
      break;
    }

    v20 = *(&_swiftEmptyDictionarySingleton + 7) + (v13 << 6);
    v22 = *(v20 + 16);
    v21 = *(v20 + 32);
    v23 = *v20;
    *(v143 + 9) = *(v20 + 41);
    v142[1] = v22;
    v143[0] = v21;
    v142[0] = v23;
    *v20 = v131;
    *(v20 + 8) = v7;
    *(v20 + 16) = v6;
    *(v20 + 24) = v129;
    *(v20 + 32) = v8;
    *(v20 + 40) = v125;
    *(v20 + 48) = v121;
    *(v20 + 56) = v133;
    sub_100092A44(v142);

    v24 = v119;
    if (!i)
    {
      goto LABEL_17;
    }

LABEL_16:
    v3 = v24 + 5;
  }

  *(&_swiftEmptyDictionarySingleton + (v13 >> 6) + 8) |= 1 << v13;
  v25 = (*(&_swiftEmptyDictionarySingleton + 6) + 16 * v13);
  *v25 = v7;
  v25[1] = v6;
  v26 = *(&_swiftEmptyDictionarySingleton + 7) + (v13 << 6);
  *v26 = v131;
  *(v26 + 8) = v7;
  *(v26 + 16) = v6;
  *(v26 + 24) = v129;
  *(v26 + 32) = v8;
  *(v26 + 40) = v125;
  *(v26 + 48) = v121;
  *(v26 + 56) = v133;

  v27 = *(&_swiftEmptyDictionarySingleton + 2);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (v28)
  {
    goto LABEL_79;
  }

  *(&_swiftEmptyDictionarySingleton + 2) = v29;
  v24 = v119;
  if (i)
  {
    goto LABEL_16;
  }

LABEL_17:
  v30 = 0;
  do
  {
    v32 = v2;
    v106 = v30;
    v33 = &off_100164310 + 5 * v30;
    v35 = v33[5];
    v34 = v33[6];
    v36 = v33[7];
    v37 = v33[8];
    v110 = *(v33 + 8);
    v134 = v110;
    v135 = v35;
    v136 = v34;
    v108 = v36;
    v137 = v36;
    v138 = v37;
    *pCurrent = 0x2E6E69616DLL;
    *&pCurrent[2] = 0xE500000000000000;
    swift_bridgeObjectRetain_n();
    v126 = v37;

    v114 = v35;
    v38._countAndFlagsBits = v35;
    v128 = v34;
    v38._object = v34;
    String.append(_:)(v38);

    v39 = *pCurrent;
    v40 = *&pCurrent[2];
    sub_100092784(a1, &v134, *pCurrent, *&pCurrent[2], v142);
    v41 = swift_isUniquelyReferenced_nonNull_native();
    *pCurrent = v32;
    sub_1000A16B4(v142, v39, v40, v41);
    v107 = v106 + 1;

    v2 = *pCurrent;
    v42 = 1 << *(a2 + 32);
    if (v42 < 64)
    {
      v43 = ~(-1 << v42);
    }

    else
    {
      v43 = -1;
    }

    v44 = v43 & *(a2 + 64);
    v45 = (v42 + 63) >> 6;

    v46 = 0;
    v112 = v45;
    v47 = a2 + 64;
    if (v44)
    {
      while (1)
      {
        v122 = v2;
        v52 = v46;
LABEL_30:
        v53 = (*(a2 + 48) + 16 * (__clz(__rbit64(v44)) | (v52 << 6)));
        v54 = v53[1];
        *pCurrent = *v53;
        *&pCurrent[2] = v54;
        swift_bridgeObjectRetain_n();

        v55._countAndFlagsBits = 46;
        v55._object = 0xE100000000000000;
        String.append(_:)(v55);

        v56._countAndFlagsBits = v114;
        v56._object = v128;
        String.append(_:)(v56);

        v130 = *pCurrent;
        v58 = *&pCurrent[2];
        __chkstk_darwin(v57);

        Connection.withUnsafeHandleUnchecked<A>(_:)();
        if (pCurrent[0])
        {
          *pCurrent = 0x203A726F727245;
          *&pCurrent[2] = 0xE700000000000000;

          v59._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v59);

          v117 = *&pCurrent[2];
          v118 = *pCurrent;
          v116 = 1;
        }

        else
        {
          v118 = 0;

          v116 = 0;
          v117 = 0;
        }

        v60 = swift_isUniquelyReferenced_nonNull_native();
        v61 = sub_10009E700(v130, v58);
        v63 = v62;
        v64 = v122[2];
        v65 = (v62 & 1) == 0;
        v66 = v64 + v65;
        if (__OFADD__(v64, v65))
        {
          break;
        }

        if (v122[3] >= v66)
        {
          v45 = v112;
          if ((v60 & 1) == 0)
          {
            sub_1000A2D70();
            v45 = v112;
          }
        }

        else
        {
          sub_1000A0258(v66, v60);
          v61 = sub_10009E700(v130, v58);
          v45 = v112;
          if ((v63 & 1) != (v67 & 1))
          {
            goto LABEL_80;
          }
        }

        v44 &= v44 - 1;
        if (v63)
        {

          v2 = v122;
          v48 = v122[7] + (v61 << 6);
          v50 = *(v48 + 16);
          v49 = *(v48 + 32);
          v51 = *v48;
          *(v141 + 9) = *(v48 + 41);
          v140 = v50;
          v141[0] = v49;
          *pCurrent = v51;
          *v48 = v110;
          *(v48 + 8) = v130;
          *(v48 + 16) = v58;
          *(v48 + 24) = v108;
          *(v48 + 32) = v126;
          *(v48 + 40) = v118;
          *(v48 + 48) = v117;
          *(v48 + 56) = v116;
          sub_100092A44(pCurrent);

          v46 = v52;
          v47 = a2 + 64;
          if (!v44)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v2 = v122;
          v122[(v61 >> 6) + 8] |= 1 << v61;
          v68 = (v122[6] + 16 * v61);
          *v68 = v130;
          v68[1] = v58;
          v69 = v122[7] + (v61 << 6);
          *v69 = v110;
          *(v69 + 8) = v130;
          *(v69 + 16) = v58;
          *(v69 + 24) = v108;
          *(v69 + 32) = v126;
          *(v69 + 40) = v118;
          *(v69 + 48) = v117;
          *(v69 + 56) = v116;

          v70 = v122[2];
          v28 = __OFADD__(v70, 1);
          v71 = v70 + 1;
          if (v28)
          {
            goto LABEL_75;
          }

          v122[2] = v71;
          v46 = v52;
          v47 = a2 + 64;
          if (!v44)
          {
            goto LABEL_26;
          }
        }
      }

LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
      __break(1u);
      goto LABEL_78;
    }

    while (1)
    {
LABEL_26:
      v52 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        __break(1u);
LABEL_72:
        __break(1u);
        goto LABEL_73;
      }

      if (v52 >= v45)
      {
        break;
      }

      v44 = *(v47 + 8 * v52);
      ++v46;
      if (v44)
      {
        v122 = v2;
        goto LABEL_30;
      }
    }

    v31 = a2;

    v30 = v107;
  }

  while (v107 != 13);
  v72 = 0;
  do
  {
    v73 = &off_100164538 + 5 * v72;
    v113 = *(v73 + 8);
    v74 = v73[6];
    v120 = v73[5];
    v75 = v73[8];
    v109 = v72 + 1;
    v111 = v73[7];
    v76 = 1 << *(v31 + 32);
    if (v76 < 64)
    {
      v77 = ~(-1 << v76);
    }

    else
    {
      v77 = -1;
    }

    v78 = v77 & *(v31 + 64);
    v115 = (v76 + 63) >> 6;

    v127 = v74;

    v123 = v75;

    v79 = 0;
LABEL_51:
    if (v78)
    {
      v84 = v2;
      v85 = v79;
      goto LABEL_57;
    }

    while (1)
    {
      v85 = v79 + 1;
      if (__OFADD__(v79, 1))
      {
        goto LABEL_72;
      }

      if (v85 >= v115)
      {
        break;
      }

      v78 = *(v47 + 8 * v85);
      ++v79;
      if (v78)
      {
        v84 = v2;
LABEL_57:
        v86 = (*(v31 + 48) + 16 * (__clz(__rbit64(v78)) | (v85 << 6)));
        v87 = v86[1];
        *pCurrent = *v86;
        *&pCurrent[2] = v87;
        swift_bridgeObjectRetain_n();

        v88._countAndFlagsBits = 46;
        v88._object = 0xE100000000000000;
        String.append(_:)(v88);

        v89._countAndFlagsBits = v120;
        v89._object = v127;
        String.append(_:)(v89);

        v132 = *pCurrent;
        v90 = *&pCurrent[2];
        v91._countAndFlagsBits = v120;
        v91._object = v127;
        String.append(_:)(v91);
        Connection.scalar(_:_:)();

        if (*(&v140 + 1))
        {
          sub_100026F94(&qword_10016C038, &qword_1001321C0);
          v2 = v84;
          if (swift_dynamicCast())
          {
LABEL_78:
            __break(1u);
LABEL_79:
            __break(1u);
LABEL_80:
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
          }
        }

        else
        {
          sub_10002BA6C(pCurrent, &qword_10016C030, &qword_1001321B8);
          v2 = v84;
        }

        v92 = swift_isUniquelyReferenced_nonNull_native();
        v93 = sub_10009E700(v132, v90);
        v95 = v94;
        v96 = v2[2];
        v97 = (v94 & 1) == 0;
        v98 = v96 + v97;
        if (__OFADD__(v96, v97))
        {
          goto LABEL_74;
        }

        if (v2[3] >= v98)
        {
          v31 = a2;
          if ((v92 & 1) == 0)
          {
            sub_1000A2D70();
            v31 = a2;
          }
        }

        else
        {
          sub_1000A0258(v98, v92);
          v93 = sub_10009E700(v132, v90);
          v31 = a2;
          if ((v95 & 1) != (v99 & 1))
          {
            goto LABEL_80;
          }
        }

        v78 &= v78 - 1;
        if (v95)
        {

          v80 = v2[7] + (v93 << 6);
          v82 = *(v80 + 16);
          v81 = *(v80 + 32);
          v83 = *v80;
          *(v141 + 9) = *(v80 + 41);
          v140 = v82;
          v141[0] = v81;
          *pCurrent = v83;
          *v80 = v113;
          *(v80 + 8) = v132;
          *(v80 + 16) = v90;
          *(v80 + 24) = v111;
          *(v80 + 32) = v123;
          *(v80 + 40) = 0;
          *(v80 + 48) = 1;
          *(v80 + 56) = 0;
          sub_100092A44(pCurrent);

          goto LABEL_50;
        }

        v2[(v93 >> 6) + 8] |= 1 << v93;
        v100 = (v2[6] + 16 * v93);
        *v100 = v132;
        v100[1] = v90;
        v101 = v2[7] + (v93 << 6);
        *v101 = v113;
        *(v101 + 8) = v132;
        *(v101 + 16) = v90;
        *(v101 + 24) = v111;
        *(v101 + 32) = v123;
        *(v101 + 40) = 0;
        *(v101 + 48) = 1;
        *(v101 + 56) = 0;

        v102 = v2[2];
        v28 = __OFADD__(v102, 1);
        v103 = v102 + 1;
        if (v28)
        {
          goto LABEL_77;
        }

        v2[2] = v103;
LABEL_50:
        v79 = v85;
        v47 = a2 + 64;
        goto LABEL_51;
      }
    }

    v72 = v109;
  }

  while (v109 != 4);
  return v2;
}

void sub_10008F0C8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_10008F0D4(uint64_t a1)
{
  v4 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v4 - 8);
  v152 = &v145 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (a1 + 64);
  v7 = 1 << *(a1 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;
  v154 = a1;

  v11 = 0;
  v153 = xmmword_10012FA10;
  v151 = (a1 + 64);
  v148 = v10;
LABEL_6:
  if (v9)
  {
    v12 = v11;
  }

  else
  {
    do
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_138;
      }

      if (v12 >= v10)
      {
        v36 = v154;

        if (!v36[2])
        {
          goto LABEL_31;
        }

        v37 = sub_10009E700(0x735579726F6D654DLL, 0xEA00000000006465);
        if ((v38 & 1) == 0)
        {
          goto LABEL_31;
        }

        v39 = (v36[7] + (v37 << 6));
        v41 = v39[1];
        v40 = v39[2];
        v42 = *v39;
        *(v175 + 9) = *(v39 + 41);
        v174 = v41;
        v175[0] = v40;
        v173 = v42;
        sub_100092A0C(&v173, &v170);
        v43 = sub_100091984();
        sub_100092A44(&v173);
        if (!*(v43 + 16))
        {

          goto LABEL_31;
        }

        v1 = 0xD000000000000016;
        v44 = sub_10009E700(0xD000000000000016, 0x800000010013BD20);
        if ((v45 & 1) == 0)
        {

          v36 = v154;
          goto LABEL_31;
        }

        v46 = (*(v43 + 56) + 16 * v44);
        v2 = *v46;
        v10 = v46[1];

        if (qword_10016A558 == -1)
        {
          goto LABEL_28;
        }

        goto LABEL_144;
      }

      v9 = v6[v12];
      ++v11;
    }

    while (!v9);
  }

  v149 = v12;
  v150 = ((v9 - 1) & v9);
  v13 = (v154[7] + ((v12 << 12) | (__clz(__rbit64(v9)) << 6)));
  v15 = v13[1];
  v14 = v13[2];
  v16 = *v13;
  *(v167 + 9) = *(v13 + 41);
  v166[1] = v15;
  v167[0] = v14;
  v166[0] = v16;
  sub_100092A0C(v166, &v173);
  v17 = sub_100091984();
  sub_100092A44(v166);
  v18 = 0;
  v20 = v17 + 64;
  v19 = *(v17 + 64);
  v155 = v17;
  v21 = 1 << *(v17 + 32);
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  else
  {
    v22 = -1;
  }

  v2 = v22 & v19;
  v23 = (v21 + 63) >> 6;
  if ((v22 & v19) != 0)
  {
    do
    {
LABEL_19:
      v25 = (v18 << 10) | (16 * __clz(__rbit64(v2)));
      v26 = *(v155 + 56);
      v27 = (*(v155 + 48) + v25);
      v28 = v27[1];
      v156 = *v27;
      v29 = (v26 + v25);
      v30 = v29[1];
      v160 = *v29;
      v31 = qword_10016A558;

      v159 = v30;

      if (v31 != -1)
      {
        swift_once();
      }

      v2 &= v2 - 1;
      v158 = type metadata accessor for OSLogger();
      v157 = sub_10002FD14(v158, qword_10016C010);
      sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
      v32 = *(type metadata accessor for LogMessage() - 8);
      v10 = (*(v32 + 80) + 32) & ~*(v32 + 80);
      *(swift_allocObject() + 16) = v153;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v33._countAndFlagsBits = 0x505F4554494C5153;
      v33._object = 0xED0000203A465245;
      LogMessage.StringInterpolation.appendLiteral(_:)(v33);
      *(&v174 + 1) = &type metadata for String;
      *&v173 = v156;
      *(&v173 + 1) = v28;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      v1 = &qword_10016AB10;
      sub_10002BA6C(&v173, &qword_10016AB10, &unk_100130B10);
      v34._countAndFlagsBits = 8250;
      v34._object = 0xE200000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v34);
      *(&v174 + 1) = &type metadata for String;
      *&v173 = v160;
      *(&v173 + 1) = v159;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002BA6C(&v173, &qword_10016AB10, &unk_100130B10);
      v35._countAndFlagsBits = 0;
      v35._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v35);
      LogMessage.init(stringInterpolation:)();
      Logger.info(_:)();
    }

    while (v2);
  }

  while (1)
  {
    v24 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v24 >= v23)
    {

      v10 = v148;
      v11 = v149;
      v9 = v150;
      v6 = v151;
      goto LABEL_6;
    }

    v2 = *(v20 + 8 * v24);
    ++v18;
    if (v2)
    {
      v18 = v24;
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
  while (2)
  {
    __break(1u);
LABEL_143:
    __break(1u);
LABEL_144:
    swift_once();
LABEL_28:
    v47 = type metadata accessor for OSLogger();
    sub_10002FD14(v47, qword_10016C010);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = v153;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v48._countAndFlagsBits = v1 + 14;
    v48._object = 0x800000010013BD80;
    LogMessage.StringInterpolation.appendLiteral(_:)(v48);
    *(&v171 + 1) = &type metadata for String;
    *&v170 = v2;
    *(&v170 + 1) = v10;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(&v170, &qword_10016AB10, &unk_100130B10);
    v49._countAndFlagsBits = 66;
    v49._object = 0xE100000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v49);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    v36 = v154;
    v6 = v151;
LABEL_31:
    v50 = 1 << *(v36 + 32);
    v51 = -1;
    if (v50 < 64)
    {
      v51 = ~(-1 << v50);
    }

    v2 = v51 & v36[8];
    v1 = (v50 + 63) >> 6;

    v52 = 0;
    v150 = _swiftEmptyArrayStorage;
    v10 = &type metadata for String;
LABEL_34:
    v53 = v52;
    if (!v2)
    {
      goto LABEL_36;
    }

    do
    {
      v52 = v53;
LABEL_39:
      v54 = (v154[6] + ((v52 << 10) | (16 * __clz(__rbit64(v2)))));
      v55 = *v54;
      v56 = v54[1];
      v2 &= v2 - 1;
      *&v170 = *v54;
      *(&v170 + 1) = v56;
      *&v168[0] = 0x7469486568636143;
      *(&v168[0] + 1) = 0xE800000000000000;
      sub_10002C5B0();

      if (StringProtocol.contains<A>(_:)())
      {
        v57 = v150;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v163 = v57;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10007E9EC(0, v57[2] + 1, 1);
          v57 = v163;
        }

        v60 = v57[2];
        v59 = v57[3];
        v61 = v60 + 1;
        if (v60 >= v59 >> 1)
        {
          v160 = v60 + 1;
          sub_10007E9EC((v59 > 1), v60 + 1, 1);
          v61 = v160;
          v57 = v163;
        }

        v57[2] = v61;
        v150 = v57;
        v62 = &v57[2 * v60];
        v62[4] = v55;
        v62[5] = v56;
        v6 = v151;
        goto LABEL_34;
      }

      v53 = v52;
      v6 = v151;
    }

    while (v2);
    while (1)
    {
LABEL_36:
      v52 = v53 + 1;
      if (__OFADD__(v53, 1))
      {
        goto LABEL_139;
      }

      if (v52 >= v1)
      {
        break;
      }

      v2 = v6[v52];
      ++v53;
      if (v2)
      {
        goto LABEL_39;
      }
    }

    v63 = v154;

    v64 = 1 << *(v63 + 32);
    v65 = -1;
    if (v64 < 64)
    {
      v65 = ~(-1 << v64);
    }

    v66 = v65 & v63[8];
    v1 = (v64 + 63) >> 6;

    v67 = 0;
    v158 = _swiftEmptyArrayStorage;
    v2 = 0xE900000000000073;
    if (v66)
    {
      while (1)
      {
        v68 = v67;
LABEL_54:
        v69 = (v154[6] + ((v68 << 10) | (16 * __clz(__rbit64(v66)))));
        v70 = *v69;
        v10 = v69[1];
        v66 &= v66 - 1;
        *&v170 = *v69;
        *(&v170 + 1) = v10;
        *&v168[0] = 0x73694D6568636143;
        *(&v168[0] + 1) = 0xE900000000000073;
        sub_10002C5B0();

        if (StringProtocol.contains<A>(_:)())
        {
          v71 = v158;
          v72 = swift_isUniquelyReferenced_nonNull_native();
          v163 = v71;
          if ((v72 & 1) == 0)
          {
            sub_10007E9EC(0, v71[2] + 1, 1);
            v71 = v163;
          }

          v74 = v71[2];
          v73 = v71[3];
          v75 = v74 + 1;
          if (v74 >= v73 >> 1)
          {
            v160 = v74 + 1;
            sub_10007E9EC((v73 > 1), v74 + 1, 1);
            v75 = v160;
            v71 = v163;
          }

          v71[2] = v75;
          v158 = v71;
          v76 = &v71[2 * v74];
          v76[4] = v70;
          v76[5] = v10;
        }

        else
        {
        }

        v67 = v68;
        v6 = v151;
        if (!v66)
        {
          goto LABEL_51;
        }
      }
    }

    while (1)
    {
LABEL_51:
      v68 = v67 + 1;
      if (__OFADD__(v67, 1))
      {
        goto LABEL_140;
      }

      if (v68 >= v1)
      {
        break;
      }

      v66 = v6[v68];
      ++v67;
      if (v66)
      {
        goto LABEL_54;
      }
    }

    v77 = v154;

    v10 = v150;
    v1 = v150[2];
    if (!v1 || (v78 = v158, (v156 = v158[2]) == 0))
    {
LABEL_135:
    }

    v79 = 0;
    v151 = v150 + 4;
    v157 = (v158 + 4);
    v147 = "sql.MemoryUsed.highwater";
    v149 = v1;
LABEL_69:
    if (v79 >= *(v10 + 16))
    {
      continue;
    }

    break;
  }

  if (!v77[2])
  {
LABEL_68:
    if (++v79 == v1)
    {
      goto LABEL_135;
    }

    goto LABEL_69;
  }

  v155 = v79;
  v80 = &v151[2 * v79];
  v82 = *v80;
  v81 = v80[1];

  v83 = sub_10009E700(v82, v81);
  if ((v84 & 1) == 0)
  {

LABEL_67:
    v79 = v155;
    goto LABEL_68;
  }

  v85 = (v77[7] + (v83 << 6));
  v87 = v85[1];
  v86 = v85[2];
  v88 = *v85;
  *(v172 + 9) = *(v85 + 41);
  v171 = v87;
  v172[0] = v86;
  v170 = v88;
  sub_100092A0C(&v170, &v163);
  v1 = 0;
  v89 = HIBYTE(v81) & 0xF;
  if ((v81 & 0x2000000000000000) == 0)
  {
    v89 = v82 & 0xFFFFFFFFFFFFLL;
  }

  v159 = v89;
  v90 = 4 * v89;
  while (1)
  {
    if (v1 >= v78[2])
    {
      goto LABEL_137;
    }

    v91 = (v157 + 16 * v1);
    v10 = v91[1];
    v160 = *v91;

    if (v159)
    {
      while (String.subscript.getter() != 46 || v92 != 0xE100000000000000)
      {
        v93 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v93 & 1) != 0 || v90 == String.index(after:)() >> 14)
        {
          goto LABEL_84;
        }
      }
    }

LABEL_84:
    v94 = String.subscript.getter();
    v96 = v95;
    v2 = v97;
    v99 = v98;

    LOBYTE(v94) = sub_10008B5A4(v94, v96, v2, v99, v160, v10);

    if (v94)
    {
      break;
    }

    ++v1;

    v78 = v158;
    if (v1 == v156)
    {
      sub_100092A44(&v170);

      v77 = v154;
      goto LABEL_87;
    }
  }

  v77 = v154;
  if (!v154[2])
  {
    sub_100092A44(&v170);

    goto LABEL_103;
  }

  v100 = sub_10009E700(v160, v10);
  v102 = v101;

  if ((v102 & 1) == 0)
  {
    sub_100092A44(&v170);
LABEL_103:

    v10 = v150;
    v78 = v158;
LABEL_104:
    v1 = v149;
    goto LABEL_67;
  }

  v103 = (v77[7] + (v100 << 6));
  v105 = v103[1];
  v104 = v103[2];
  v106 = *v103;
  *(v169 + 9) = *(v103 + 41);
  v168[1] = v105;
  v169[0] = v104;
  v168[0] = v106;
  sub_100092A0C(v168, &v163);
  v107 = sub_100091984();
  sub_100092A44(&v170);
  v148 = sub_100091984();
  sub_100092A44(v168);
  v1 = v107 + 64;
  v108 = 1 << *(v107 + 32);
  if (v108 < 64)
  {
    v109 = ~(-1 << v108);
  }

  else
  {
    v109 = -1;
  }

  v110 = v109 & *(v107 + 64);
  v111 = (v108 + 63) >> 6;
  v160 = v107;

  v112 = 0;
  if (!v110)
  {
LABEL_95:
    while (1)
    {
      v10 = v112 + 1;
      if (__OFADD__(v112, 1))
      {
        goto LABEL_141;
      }

      if (v10 >= v111)
      {
LABEL_105:

        goto LABEL_106;
      }

      v110 = *(v1 + 8 * v10);
      ++v112;
      if (v110)
      {
        goto LABEL_98;
      }
    }
  }

  while (1)
  {
    v10 = v112;
LABEL_98:
    v113 = (*(v160 + 56) + ((v10 << 10) | (16 * __clz(__rbit64(v110)))));
    v114 = v113[1];
    v159 = *v113;
    v163 = v159;
    v164 = v114;
    v161 = 0x746E6572727563;
    v162 = 0xE700000000000000;
    v2 = sub_10002C5B0();

    if (StringProtocol.contains<A>(_:)())
    {
      break;
    }

    v110 &= v110 - 1;

    v112 = v10;
    if (!v110)
    {
      goto LABEL_95;
    }
  }

  v163 = v159;
  v164 = v114;
  v161 = 8250;
  v162 = 0xE200000000000000;
  v115 = StringProtocol.components<A>(separatedBy:)();

  v116 = *(v115 + 16);
  if (!v116)
  {
    goto LABEL_121;
  }

  v117 = (v115 + 16 + 16 * v116);
  v118 = v117[1];
  v146 = *v117;
  v159 = v118;
  v160 = v2;

  v1 = v148 + 64;
  v119 = 1 << *(v148 + 32);
  if (v119 < 64)
  {
    v120 = ~(-1 << v119);
  }

  else
  {
    v120 = -1;
  }

  v121 = v120 & *(v148 + 64);
  v122 = (v119 + 63) >> 6;

  v123 = 0;
  if (!v121)
  {
LABEL_114:
    while (1)
    {
      v124 = v123 + 1;
      if (__OFADD__(v123, 1))
      {
        goto LABEL_143;
      }

      if (v124 >= v122)
      {
        goto LABEL_105;
      }

      v121 = *(v1 + 8 * v124);
      ++v123;
      if (v121)
      {
        goto LABEL_117;
      }
    }
  }

  while (1)
  {
    v124 = v123;
LABEL_117:
    v125 = (*(v148 + 56) + ((v124 << 10) | (16 * __clz(__rbit64(v121)))));
    v2 = *v125;
    v10 = v125[1];
    v163 = *v125;
    v164 = v10;
    v161 = 0x746E6572727563;
    v162 = 0xE700000000000000;

    if (StringProtocol.contains<A>(_:)())
    {
      break;
    }

    v121 &= v121 - 1;

    v123 = v124;
    if (!v121)
    {
      goto LABEL_114;
    }
  }

  v163 = v2;
  v164 = v10;
  v161 = 8250;
  v162 = 0xE200000000000000;
  v126 = StringProtocol.components<A>(separatedBy:)();

  v127 = *(v126 + 16);
  if (!v127)
  {
LABEL_121:

LABEL_106:

    v77 = v154;
    v10 = v150;
    v78 = v158;
LABEL_107:
    v1 = v149;
    v79 = v155;
    goto LABEL_68;
  }

  v128 = (v126 + 16 + 16 * v127);
  v130 = *v128;
  v129 = v128[1];

  v131 = sub_100091C40(v146, v159);
  v77 = v154;
  v78 = v158;
  if (v132)
  {

LABEL_87:
    v10 = v150;
    goto LABEL_104;
  }

  v133 = v131;
  result = sub_100091C40(v130, v129);
  if (v135)
  {

    goto LABEL_87;
  }

  v136 = v133 + result;
  if (!__OFADD__(v133, result))
  {
    if (v136 < 1)
    {
      v137 = 0.0;
    }

    else
    {
      v137 = v133 / v136 * 100.0;
    }

    if (qword_10016A558 != -1)
    {
      swift_once();
    }

    v138 = type metadata accessor for OSLogger();
    v160 = sub_10002FD14(v138, qword_10016C010);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    type metadata accessor for LogMessage();
    v2 = swift_allocObject();
    *(v2 + 16) = v153;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v139._countAndFlagsBits = 0xD00000000000001FLL;
    v139._object = (v147 | 0x8000000000000000);
    LogMessage.StringInterpolation.appendLiteral(_:)(v139);
    v165 = &type metadata for String;
    v163 = v82;
    v164 = v81;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(&v163, &qword_10016AB10, &unk_100130B10);
    v140._countAndFlagsBits = 0x20746948202D205DLL;
    v140._object = 0xEE00203A65746152;
    LogMessage.StringInterpolation.appendLiteral(_:)(v140);
    sub_100026F94(&qword_10016BF40, &qword_100131BA0);
    v141 = swift_allocObject();
    *(v141 + 16) = v153;
    *(v141 + 56) = &type metadata for Double;
    *(v141 + 64) = &protocol witness table for Double;
    *(v141 + 32) = v137;
    v142 = String.init(format:_:)();
    v165 = &type metadata for String;
    v163 = v142;
    v164 = v143;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(&v163, &qword_10016AB10, &unk_100130B10);
    v144._countAndFlagsBits = 37;
    v144._object = 0xE100000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v144);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    v77 = v154;
    v10 = v150;
    goto LABEL_107;
  }

  __break(1u);
  return result;
}

int *sub_100090354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!*(a1 + 16) || (v4 = sub_10009E700(0x735579726F6D654DLL, 0xEA00000000006465), (v5 & 1) == 0))
  {
    v100 = 0;
    v101 = 0;
    goto LABEL_19;
  }

  v6 = (*(a1 + 56) + (v4 << 6));
  v8 = v6[1];
  v7 = v6[2];
  v9 = *v6;
  *(v114 + 9) = *(v6 + 41);
  v113[1] = v8;
  v114[0] = v7;
  v113[0] = v9;
  sub_100092A0C(v113, v111);
  v10 = sub_100091984();
  sub_100092A44(v113);
  if (!*(v10 + 16))
  {
    v101 = 0;
    goto LABEL_18;
  }

  v11 = sub_10009E700(0xD000000000000016, 0x800000010013BD20);
  if ((v12 & 1) == 0)
  {
    v101 = 0;
    if (*(v10 + 16))
    {
      goto LABEL_13;
    }

LABEL_18:

    v100 = 0;
    goto LABEL_19;
  }

  v13 = (*(v10 + 56) + 16 * v11);
  v14 = *v13;
  v15 = v13[1];

  v16 = sub_100091C40(v14, v15);
  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = v16;
  }

  v101 = v18;
  if (!*(v10 + 16))
  {
    goto LABEL_18;
  }

LABEL_13:
  v19 = sub_10009E700(0xD000000000000018, 0x800000010013BD40);
  if ((v20 & 1) == 0)
  {
    goto LABEL_18;
  }

  v21 = (*(v10 + 56) + 16 * v19);
  v22 = *v21;
  v23 = v21[1];

  v24 = sub_100091C40(v22, v23);
  if (v25)
  {
    v26 = 0;
  }

  else
  {
    v26 = v24;
  }

  v100 = v26;
LABEL_19:
  v27 = a1 + 64;
  v28 = 1 << *(a1 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(a1 + 64);
  v31 = (v28 + 63) >> 6;

  v32 = 0;
  v106 = _swiftEmptyArrayStorage;
  while (1)
  {
    v33 = v32;
    if (!v30)
    {
      break;
    }

LABEL_26:
    v34 = (*(a1 + 48) + ((v32 << 10) | (16 * __clz(__rbit64(v30)))));
    v35 = *v34;
    v36 = v34[1];
    v30 &= v30 - 1;
    *&v111[0] = *v34;
    *(&v111[0] + 1) = v36;
    *&v109[0] = 0x7469486568636143;
    *(&v109[0] + 1) = 0xE800000000000000;
    sub_10002C5B0();

    if (StringProtocol.contains<A>(_:)())
    {
      v37 = v106;
      v107 = v106;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10007E9EC(0, v106[2] + 1, 1);
        v37 = v107;
      }

      v39 = *(v37 + 16);
      v38 = *(v37 + 24);
      v40 = v39 + 1;
      if (v39 >= v38 >> 1)
      {
        sub_10007E9EC((v38 > 1), v39 + 1, 1);
        v40 = v39 + 1;
        v37 = v107;
      }

      *(v37 + 16) = v40;
      v106 = v37;
      v41 = v37 + 16 * v39;
      *(v41 + 32) = v35;
      *(v41 + 40) = v36;
    }

    else
    {
    }
  }

  while (1)
  {
    v32 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:

      goto LABEL_71;
    }

    if (v32 >= v31)
    {
      break;
    }

    v30 = *(v27 + 8 * v32);
    ++v33;
    if (v30)
    {
      goto LABEL_26;
    }
  }

  v42 = 1 << *(a1 + 32);
  v43 = -1;
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  v44 = v43 & *(a1 + 64);
  v45 = (v42 + 63) >> 6;

  v46 = 0;
  v105 = _swiftEmptyArrayStorage;
  while (v44)
  {
    v47 = v46;
LABEL_41:
    v48 = (*(a1 + 48) + ((v47 << 10) | (16 * __clz(__rbit64(v44)))));
    v49 = *v48;
    v50 = v48[1];
    v44 &= v44 - 1;
    *&v111[0] = *v48;
    *(&v111[0] + 1) = v50;
    *&v109[0] = 0x73694D6568636143;
    *(&v109[0] + 1) = 0xE900000000000073;
    sub_10002C5B0();

    if (StringProtocol.contains<A>(_:)())
    {
      v51 = v105;
      v107 = v105;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10007E9EC(0, v105[2] + 1, 1);
        v51 = v107;
      }

      v53 = *(v51 + 16);
      v52 = *(v51 + 24);
      v54 = v53 + 1;
      if (v53 >= v52 >> 1)
      {
        sub_10007E9EC((v52 > 1), v53 + 1, 1);
        v54 = v53 + 1;
        v51 = v107;
      }

      *(v51 + 16) = v54;
      v105 = v51;
      v55 = v51 + 16 * v53;
      *(v55 + 32) = v49;
      *(v55 + 40) = v50;
      v46 = v47;
    }

    else
    {

      v46 = v47;
    }
  }

  while (1)
  {
    v47 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      goto LABEL_69;
    }

    if (v47 >= v45)
    {
      break;
    }

    v44 = *(v27 + 8 * v47);
    ++v46;
    if (v44)
    {
      goto LABEL_41;
    }
  }

  if (!v106[2])
  {

    goto LABEL_64;
  }

  v57 = v106[4];
  v56 = v106[5];

  if (!v105[2])
  {

LABEL_63:

LABEL_64:
    v92 = 0.0;
    goto LABEL_65;
  }

  v59 = v105[4];
  v58 = v105[5];

  if (!*(a1 + 16))
  {
    goto LABEL_61;
  }

  v60 = sub_10009E700(v57, v56);
  if ((v61 & 1) == 0)
  {
    goto LABEL_61;
  }

  v62 = (*(a1 + 56) + (v60 << 6));
  v64 = v62[1];
  v63 = v62[2];
  v65 = *v62;
  *(v112 + 9) = *(v62 + 41);
  v111[1] = v64;
  v112[0] = v63;
  v111[0] = v65;
  if (!*(a1 + 16))
  {
    sub_100092A0C(v111, v109);
    goto LABEL_67;
  }

  sub_100092A0C(v111, v109);
  v66 = sub_10009E700(v59, v58);
  if ((v67 & 1) == 0)
  {
LABEL_67:

    sub_100092A44(v111);
    goto LABEL_64;
  }

  v68 = (*(a1 + 56) + (v66 << 6));
  v70 = v68[1];
  v69 = v68[2];
  v71 = *v68;
  *&v110[9] = *(v68 + 41);
  v109[1] = v70;
  *v110 = v69;
  v109[0] = v71;
  sub_100092A0C(v109, &v107);
  v72 = sub_100091984();
  sub_100092A44(v111);
  v73 = sub_100091984();
  sub_100092A44(v109);
  v107 = 778858867;
  v108 = 0xE400000000000000;
  v74._countAndFlagsBits = v57;
  v74._object = v56;
  String.append(_:)(v74);

  v75._countAndFlagsBits = 0x746E65727275632ELL;
  v75._object = 0xE800000000000000;
  String.append(_:)(v75);
  if (!*(v72 + 16))
  {
    goto LABEL_70;
  }

  v76 = sub_10009E700(v107, v108);
  v78 = v77;

  if ((v78 & 1) == 0)
  {
LABEL_71:

    goto LABEL_63;
  }

  v79 = (*(v72 + 56) + 16 * v76);
  v81 = *v79;
  v80 = v79[1];

  v107 = 778858867;
  v108 = 0xE400000000000000;
  v82._countAndFlagsBits = v59;
  v82._object = v58;
  String.append(_:)(v82);

  v83._countAndFlagsBits = 0x746E65727275632ELL;
  v83._object = 0xE800000000000000;
  String.append(_:)(v83);
  if (!*(v73 + 16))
  {

    goto LABEL_61;
  }

  v84 = sub_10009E700(v107, v108);
  v86 = v85;

  if ((v86 & 1) == 0)
  {
LABEL_61:

    goto LABEL_63;
  }

  v87 = (*(v73 + 56) + 16 * v84);
  v89 = *v87;
  v88 = v87[1];

  v90 = sub_100091C40(v81, v80);
  if (v91)
  {
    goto LABEL_63;
  }

  v97 = v90;
  result = sub_100091C40(v89, v88);
  v92 = 0.0;
  if (v98)
  {
LABEL_65:
    Date.init()();
    sub_100026F50(v102, v102[3]);
    v93 = type metadata accessor for ConfigurationStoreImplementation();
    v94 = sub_10004FFBC(v93);
    sub_100026F50(v102, v102[3]);
    v95 = sub_10004FEF0(v93);
    result = type metadata accessor for SystemStatusProvider.MemoryStats(0);
    *(a3 + result[5]) = v101;
    *(a3 + result[6]) = v100;
    *(a3 + result[7]) = v94;
    *(a3 + result[8]) = v92;
    *(a3 + result[9]) = v95;
    *(a3 + result[10]) = a2;
  }

  else
  {
    v99 = result + v97;
    if (!__OFADD__(v97, result))
    {
      if (v99 >= 1)
      {
        v92 = v97 / v99 * 100.0;
      }

      goto LABEL_65;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100090BC0(uint64_t a1)
{
  v6 = sub_100026F94(&qword_10016C028, &qword_1001321A8);
  __chkstk_darwin(v6 - 8);
  v8 = &v55 - v7;
  v9 = type metadata accessor for SystemStatusProvider.ProcessMemoryFootprint(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for SystemStatusProvider.MemoryStats(0);
  v67 = *(v1 + 40);
  if ((v67 * 80) >> 64 != (80 * v67) >> 63)
  {
    __break(1u);
LABEL_16:
    swift_once();
    goto LABEL_12;
  }

  v62 = v10;
  v63 = v9;
  v56 = v12;
  v64 = v8;
  v65 = v1;
  v2 = 0xD000000000000022;
  v3 = &unk_10012F000;
  v68 = *(a1 + *(v14 + 20));
  v66 = v14;
  if (80 * v67 / 100 < v68)
  {
    *&v69 = a1;
    if (qword_10016A558 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for OSLogger();
    v61 = sub_10002FD14(v15, qword_10016C010);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v16._countAndFlagsBits = 0xD000000000000034;
    v16._object = 0x800000010013BC30;
    LogMessage.StringInterpolation.appendLiteral(_:)(v16);
    v72 = &type metadata for Int64;
    v70 = v68 / 1024;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(&v70, &qword_10016AB10, &unk_100130B10);
    v17._countAndFlagsBits = 0x202F20424BLL;
    v17._object = 0xE500000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v17);
    v72 = &type metadata for Int64;
    v70 = v67 / 1024;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    v3 = &unk_10012F000;
    sub_10002BA6C(&v70, &qword_10016AB10, &unk_100130B10);
    v18._countAndFlagsBits = 16971;
    v18._object = 0xE200000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v18);
    LogMessage.init(stringInterpolation:)();
    Logger.warning(_:)();

    a1 = v69;
    v14 = v66;
  }

  v4 = *(a1 + *(v14 + 32));
  if (v4 < 85.0 && v4 > 0.0)
  {
    if (qword_10016A558 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for OSLogger();
    sub_10002FD14(v19, qword_10016C010);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    type metadata accessor for LogMessage();
    v20 = swift_allocObject();
    v69 = xmmword_10012FA10;
    *(v20 + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v21._countAndFlagsBits = 0xD00000000000002ALL;
    v21._object = 0x800000010013BBE0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v21);
    sub_100026F94(&qword_10016BF40, &qword_100131BA0);
    v22 = swift_allocObject();
    *(v22 + 16) = v69;
    *(v22 + 56) = &type metadata for Double;
    *(v22 + 64) = &protocol witness table for Double;
    *(v22 + 32) = v4;
    v23 = String.init(format:_:)();
    v72 = &type metadata for String;
    v70 = v23;
    v71 = v24;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(&v70, &qword_10016AB10, &unk_100130B10);
    v2 = 0xD000000000000022;
    v25._countAndFlagsBits = 0xD00000000000001ELL;
    v25._object = 0x800000010013BC10;
    LogMessage.StringInterpolation.appendLiteral(_:)(v25);
    LogMessage.init(stringInterpolation:)();
    Logger.warning(_:)();
  }

  if (qword_10016A558 != -1)
  {
    goto LABEL_16;
  }

LABEL_12:
  v61 = type metadata accessor for OSLogger();
  v60 = sub_10002FD14(v61, qword_10016C010);
  v58 = sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v26 = *(type metadata accessor for LogMessage() - 8);
  v59 = *(v26 + 72);
  v57 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v27 = swift_allocObject();
  v69 = v3[161];
  *(v27 + 16) = v69;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v28._object = 0x800000010013BB60;
  v28._countAndFlagsBits = 0xD000000000000022;
  LogMessage.StringInterpolation.appendLiteral(_:)(v28);
  v72 = &type metadata for Int64;
  v70 = v68;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(&v70, &qword_10016AB10, &unk_100130B10);
  v29._countAndFlagsBits = 0x3A6B616550202C42;
  v29._object = 0xE900000000000020;
  LogMessage.StringInterpolation.appendLiteral(_:)(v29);
  v30 = v66;
  v31 = *(a1 + v66[6]);
  v72 = &type metadata for Int64;
  v70 = v31;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(&v70, &qword_10016AB10, &unk_100130B10);
  v32._countAndFlagsBits = v2 - 17;
  v32._object = 0x800000010013BB90;
  LogMessage.StringInterpolation.appendLiteral(_:)(v32);
  sub_100026F94(&qword_10016BF40, &qword_100131BA0);
  v33 = swift_allocObject();
  *(v33 + 16) = v69;
  *(v33 + 56) = &type metadata for Double;
  *(v33 + 64) = &protocol witness table for Double;
  *(v33 + 32) = v4;
  v34 = String.init(format:_:)();
  v72 = &type metadata for String;
  v70 = v34;
  v71 = v35;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(&v70, &qword_10016AB10, &unk_100130B10);
  v36._countAndFlagsBits = 0x5365676150202C25;
  v36._object = 0xED0000203A657A69;
  LogMessage.StringInterpolation.appendLiteral(_:)(v36);
  v37 = *(a1 + v30[9]);
  v72 = &type metadata for Int32;
  LODWORD(v70) = v37;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(&v70, &qword_10016AB10, &unk_100130B10);
  v38._countAndFlagsBits = 0x6568636143202C42;
  v38._object = 0xEE00203A657A6953;
  LogMessage.StringInterpolation.appendLiteral(_:)(v38);
  v39 = *(a1 + v30[7]);
  v72 = &type metadata for Int32;
  LODWORD(v70) = v39;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(&v70, &qword_10016AB10, &unk_100130B10);
  v40._countAndFlagsBits = 0x63656E6E6F43202CLL;
  v40._object = 0xEF203A736E6F6974;
  LogMessage.StringInterpolation.appendLiteral(_:)(v40);
  v41 = *(a1 + v30[10]);
  v72 = &type metadata for Int;
  v70 = v41;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(&v70, &qword_10016AB10, &unk_100130B10);
  v42._countAndFlagsBits = 0;
  v42._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v42);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  v43 = v67;
  v44 = v68 / v67 * 100.0;
  *(swift_allocObject() + 16) = v69;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v45._object = 0x800000010013BBB0;
  v45._countAndFlagsBits = 0xD000000000000022;
  LogMessage.StringInterpolation.appendLiteral(_:)(v45);
  v46 = swift_allocObject();
  *(v46 + 16) = v69;
  *(v46 + 56) = &type metadata for Double;
  *(v46 + 64) = &protocol witness table for Double;
  *(v46 + 32) = v44;
  v47 = String.init(format:_:)();
  v72 = &type metadata for String;
  v70 = v47;
  v71 = v48;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(&v70, &qword_10016AB10, &unk_100130B10);
  v49._countAndFlagsBits = 0x20666F2025;
  v49._object = 0xE500000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v49);
  v72 = &type metadata for Int64;
  v70 = v43 / 1024;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(&v70, &qword_10016AB10, &unk_100130B10);
  v50._countAndFlagsBits = 0x74696D696C20424BLL;
  v50._object = 0xE800000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v50);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  v51 = v64;
  sub_100091F40(v64);
  if ((*(v62 + 48))(v51, 1, v63) == 1)
  {
    return sub_10002BA6C(v51, &qword_10016C028, &qword_1001321A8);
  }

  v53 = v51;
  v54 = v56;
  sub_100092280(v53, v56);
  sub_1000922E4(v54);
  return sub_100092724(v54, type metadata accessor for SystemStatusProvider.ProcessMemoryFootprint);
}

uint64_t sub_100091704(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10009173C(double a1)
{
  v2 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v2 - 8);
  if (qword_10016A558 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for OSLogger();
  sub_10002FD14(v3, qword_10016C010);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._object = 0x800000010013BDB0;
  v4._countAndFlagsBits = 0xD00000000000001DLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v4);
  sub_100026F94(&qword_10016BF40, &qword_100131BA0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10012FA10;
  *(v5 + 56) = &type metadata for Double;
  *(v5 + 64) = &protocol witness table for Double;
  *(v5 + 32) = a1;
  v9[3] = &type metadata for String;
  v9[0] = String.init(format:_:)();
  v9[1] = v6;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(v9, &qword_10016AB10, &unk_100130B10);
  v7._countAndFlagsBits = 115;
  v7._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();
}

uint64_t sub_100091984()
{
  sub_100026F94(&qword_10016BBF0, &unk_1001318D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10012FA10;
  *&v33 = 778858867;
  *(&v33 + 1) = 0xE400000000000000;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4._countAndFlagsBits = v2;
  v4._object = v3;
  String.append(_:)(v4);
  *(inited + 32) = 778858867;
  *(inited + 40) = 0xE400000000000000;
  v33 = *(v0 + 24);
  *(inited + 48) = v33;
  sub_1000937A8(&v33, &v31);
  v5 = sub_1000886B0(inited);
  swift_setDeallocating();
  sub_10002BA6C(inited + 32, &qword_10016B730, &qword_1001321B0);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  if (*(v0 + 56))
  {
    v31 = 778858867;
    v32 = 0xE400000000000000;
    v8._countAndFlagsBits = v2;
    v8._object = v3;
    String.append(_:)(v8);
    v9._countAndFlagsBits = 0x746E65727275632ELL;
    v9._object = 0xE800000000000000;
    String.append(_:)(v9);
    v10 = v31;
    v11 = v32;
    v31 = 0x203A726F727245;
    v32 = 0xE700000000000000;
    v12._countAndFlagsBits = v6;
    v12._object = v7;
    String.append(_:)(v12);
    v13 = v31;
    v14 = v32;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = v5;
    v16 = v13;
  }

  else
  {
    v31 = 778858867;
    v32 = 0xE400000000000000;
    v17._countAndFlagsBits = v2;
    v17._object = v3;
    String.append(_:)(v17);
    v18._countAndFlagsBits = 0x746E65727275632ELL;
    v18._object = 0xE800000000000000;
    String.append(_:)(v18);
    v19 = v31;
    v20 = v32;
    LODWORD(v31) = v6;
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v31 = v5;
    sub_1000A1380(v21, v23, v19, v20, v24);

    result = v31;
    if (v7)
    {
      return result;
    }

    v31 = 0;
    v32 = 0xE000000000000000;
    v26 = result;
    _StringGuts.grow(_:)(16);

    v31 = 778858867;
    v32 = 0xE400000000000000;
    v27._countAndFlagsBits = v2;
    v27._object = v3;
    String.append(_:)(v27);
    v28._countAndFlagsBits = 0x746177686769682ELL;
    v28._object = 0xEA00000000007265;
    String.append(_:)(v28);
    v10 = v31;
    v11 = v32;
    LODWORD(v31) = HIDWORD(v6);
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = v26;
    v16 = v29;
  }

  sub_1000A1380(v16, v14, v10, v11, isUniquelyReferenced_nonNull_native);

  return v31;
}

unint64_t sub_100091C40(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_100092E24(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_100091F40@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v2 - 8);
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  memset(v13, 0, sizeof(v13));
  nullsub_1();
  v12 = 93;
  v3 = task_info(mach_task_self_, 0x16u, v13, &v12);
  if (v3)
  {
    if (qword_10016A558 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for OSLogger();
    sub_10002FD14(v4, qword_10016C010);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v5._object = 0x800000010013BCE0;
    v5._countAndFlagsBits = 0xD000000000000034;
    LogMessage.StringInterpolation.appendLiteral(_:)(v5);
    v30 = &type metadata for Int32;
    v29[0] = v3;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v29, &qword_10016AB10, &unk_100130B10);
    v6._countAndFlagsBits = 0;
    v6._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v6);
    LogMessage.init(stringInterpolation:)();
    Logger.error(_:)();

    v7 = type metadata accessor for SystemStatusProvider.ProcessMemoryFootprint(0);
    return (*(*(v7 - 8) + 56))(a1, 1, 1, v7);
  }

  else
  {
    Date.init()();
    v9 = *(&v15 + 1);
    if ((*(&v15 + 1) & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    v10 = v14;
    v11 = type metadata accessor for SystemStatusProvider.ProcessMemoryFootprint(0);
    *(a1 + *(v11 + 20)) = v10;
    *(a1 + *(v11 + 24)) = v9;
    return (*(*(v11 - 8) + 56))(a1, 0, 1, v11);
  }
}

void sub_100092274(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100092280(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SystemStatusProvider.ProcessMemoryFootprint(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000922E4(uint64_t a1)
{
  v2 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v2 - 8);
  if (qword_10016A558 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for OSLogger();
  sub_10002FD14(v21, qword_10016C010);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v3._object = 0x800000010013BC70;
  v3._countAndFlagsBits = 0xD00000000000002BLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v3);
  sub_100026F94(&qword_10016BF40, &qword_100131BA0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10012FA10;
  v5 = type metadata accessor for SystemStatusProvider.ProcessMemoryFootprint(0);
  v6 = *(a1 + *(v5 + 20));
  *(v4 + 56) = &type metadata for Double;
  *(v4 + 64) = &protocol witness table for Double;
  *(v4 + 32) = vcvtd_n_f64_u64(v6, 0x14uLL);
  v7 = String.init(format:_:)();
  v24 = &type metadata for String;
  v22 = v7;
  v23 = v8;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(&v22, &qword_10016AB10, &unk_100130B10);
  v9._countAndFlagsBits = 0x6B616550202C424DLL;
  v9._object = 0xEA0000000000203ALL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v9);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10012FA10;
  v11 = *(a1 + *(v5 + 24)) * 0.000000953674316;
  *(v10 + 56) = &type metadata for Double;
  *(v10 + 64) = &protocol witness table for Double;
  *(v10 + 32) = v11;
  v12 = String.init(format:_:)();
  v24 = &type metadata for String;
  v22 = v12;
  v23 = v13;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(&v22, &qword_10016AB10, &unk_100130B10);
  v14._countAndFlagsBits = 16973;
  v14._object = 0xE200000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  if (v6 >= 0x3200400)
  {
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v16._countAndFlagsBits = 0xD000000000000032;
    v16._object = 0x800000010013BCA0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v16);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_10012FA10;
    *(v17 + 56) = &type metadata for Double;
    *(v17 + 64) = &protocol witness table for Double;
    *(v17 + 32) = vcvtd_n_f64_u64(v6 >> 10, 0xAuLL);
    v18 = String.init(format:_:)();
    v24 = &type metadata for String;
    v22 = v18;
    v23 = v19;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(&v22, &qword_10016AB10, &unk_100130B10);
    v20._countAndFlagsBits = 16973;
    v20._object = 0xE200000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v20);
    LogMessage.init(stringInterpolation:)();
    Logger.warning(_:)();
  }

  return result;
}

uint64_t sub_100092724(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100092784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *pHighwater = 0;
  if (a1)
  {
    __chkstk_darwin(a1);

    Connection.withUnsafeHandleUnchecked<A>(_:)();

    if (!v16)
    {
      goto LABEL_6;
    }
  }

  else if (!sqlite3_status(*a2, &pHighwater[1], pHighwater, 0))
  {
LABEL_6:
    v10 = *(a2 + 24);
    v9 = *(a2 + 32);
    v12 = pHighwater[1] | (pHighwater[0] << 32);

    v14 = 0;
    v13 = 0;
    goto LABEL_7;
  }

  v10 = *(a2 + 24);
  v9 = *(a2 + 32);

  v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v11);

  v12 = 0x203A726F727245;
  v13 = 0xE700000000000000;
  v14 = 1;
LABEL_7:
  *a5 = *a2;
  *(a5 + 8) = a3;
  *(a5 + 16) = a4;
  *(a5 + 24) = v10;
  *(a5 + 32) = v9;
  *(a5 + 40) = v12;
  *(a5 + 48) = v13;
  *(a5 + 56) = v14;
}

void sub_100092964(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100092970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_100042680;

  return sub_10008D458(a5);
}

uint64_t sub_100092A74(void *a1, char a2, void *a3)
{
  v40 = a1[2];
  if (!v40)
  {
  }

  LOBYTE(v4) = a2;
  v6 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = *a3;

  v10 = sub_10009E700(v6, v5);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_10009FA64(v15, v4 & 1);
    v10 = sub_10009E700(v6, v5);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v4)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v19 = v10;
  sub_1000A2924();
  v10 = v19;
  if (v16)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_100026F94(&qword_10016ADB8, &qword_1001312C0);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_26;
  }

LABEL_11:
  v20 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v21 = (v20[6] + 16 * v10);
  *v21 = v6;
  v21[1] = v5;
  v22 = (v20[7] + 16 * v10);
  *v22 = v7;
  v22[1] = v8;
  v23 = v20[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    v38._object = 0x800000010013AA00;
    v38._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v38);
    _print_unlocked<A, B>(_:_:)();
    v39._countAndFlagsBits = 39;
    v39._object = 0xE100000000000000;
    String.append(_:)(v39);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v20[2] = v24;
  if (v40 != 1)
  {
    v4 = a1 + 11;
    v7 = 1;
    while (v7 < a1[2])
    {
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v25 = *(v4 - 1);
      v8 = *v4;
      v26 = *a3;

      v27 = sub_10009E700(v6, v5);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v28;
      if (v26[3] < v31)
      {
        sub_10009FA64(v31, 1);
        v27 = sub_10009E700(v6, v5);
        if ((v16 & 1) != (v32 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v33 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      v34 = (v33[6] + 16 * v27);
      *v34 = v6;
      v34[1] = v5;
      v35 = (v33[7] + 16 * v27);
      *v35 = v25;
      v35[1] = v8;
      v36 = v33[2];
      v14 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v7;
      v33[2] = v37;
      v4 += 4;
      if (v40 == v7)
      {
      }
    }

    goto LABEL_25;
  }
}

unsigned __int8 *sub_100092E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1000933B0(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1000933B0(uint64_t a1, unint64_t a2)
{
  v2 = String.subscript.getter();
  v6 = sub_100093430(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_100093430(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = sub_10006CFA4(v9, 0), v12 = sub_100093588(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_100093588(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1000876A8(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1000876A8(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_10009381C@<X0>(sqlite3 *a1@<X0>, _DWORD *a2@<X8>)
{
  result = sqlite3_db_status(a1, *v2[2], v2[3], v2[4], 0);
  *a2 = result;
  return result;
}

uint64_t sub_100093860(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for StatusCommand();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_100093930, 0, 0);
}

uint64_t sub_100093930()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  StatusRequest.command.getter();
  v4 = (*(v3 + 88))(v1, v2);
  if (v4 == enum case for StatusCommand.ping(_:))
  {
    v5 = sub_1000886B0(&off_100164628);
    sub_10002BA6C(&unk_100164648, &qword_10016B730, &qword_1001321B0);

    v6 = v0[1];

    return v6(v5);
  }

  if (v4 == enum case for StatusCommand.sql(_:))
  {
    v8 = swift_task_alloc();
    v0[9] = v8;
    *v8 = v0;
    v9 = sub_100093CBC;
LABEL_7:
    v8[1] = v9;

    return sub_10008BA18();
  }

  if (v4 == enum case for StatusCommand.stats(_:))
  {
    v10 = swift_task_alloc();
    v0[15] = v10;
    *v10 = v0;
    v10[1] = sub_10009401C;

    return sub_10008C3C8();
  }

  else
  {
    if (v4 == enum case for StatusCommand.all(_:))
    {
      v8 = swift_task_alloc();
      v0[12] = v8;
      *v8 = v0;
      v9 = sub_100093E6C;
      goto LABEL_7;
    }

    v11 = v0[7];
    v22 = v0[8];
    v12 = v0[5];
    v13 = v0[6];
    v14 = type metadata accessor for DaemonError();
    sub_100074354();
    swift_allocError();
    v16 = v15;
    StatusRequest.command.getter();
    v17 = StatusCommand.rawValue.getter();
    v19 = v18;
    v20 = *(v13 + 8);
    v20(v11, v12);
    *v16 = v17;
    v16[1] = v19;
    (*(*(v14 - 8) + 104))(v16, enum case for DaemonError.unsupportedStatusCommand(_:), v14);
    swift_willThrow();
    v20(v22, v12);

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_100093CBC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = sub_1000941B8;
  }

  else
  {
    *(v4 + 88) = a1;
    v5 = sub_100093DE4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100093DE4()
{
  v1 = sub_10008C1A4(*(v0 + 88));

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100093E6C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = sub_100094224;
  }

  else
  {
    *(v4 + 112) = a1;
    v5 = sub_100093F94;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100093F94()
{
  v1 = sub_10008C1A4(*(v0 + 112));

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10009401C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v5 = sub_100094290;
  }

  else
  {
    *(v4 + 136) = a1;
    v5 = sub_100094144;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100094144()
{
  v1 = *(v0 + 136);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1000941B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100094224()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100094290()
{

  v1 = *(v0 + 8);

  return v1();
}

__n128 sub_100094308(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100094324(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_10009436C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000943FC(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10009448C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10009450C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10009457C(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 sub_10009461C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100094630(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100094678(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

void *sub_1000946F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A668 != -1)
  {
    swift_once();
  }

  return TaskLocal.get()();
}

uint64_t sub_100094758()
{
  v0 = type metadata accessor for OSSignposter();
  sub_10002FDA4(v0, qword_10016C1C0);
  v1 = sub_10002FD14(v0, qword_10016C1C0);
  if (qword_10016A550 != -1)
  {
    swift_once();
  }

  v2 = sub_10002FD14(v0, qword_1001736E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100094820()
{
  v0 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v0);
  v1 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100096B74(0, &qword_10016C288, OS_dispatch_queue_ptr);
  v11 = 0;
  v12 = 0xE000000000000000;
  _StringGuts.grow(_:)(18);
  v6 = static Utils.daemonProcessName.getter();
  v8 = v7;

  v11 = v6;
  v12 = v8;
  v9._object = 0x800000010013C040;
  v9._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v9);
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v2);
  static DispatchQoS.unspecified.getter();
  v11 = _swiftEmptyArrayStorage;
  sub_100096BBC(&qword_10016C290, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100026F94(&qword_10016C298, &unk_1001323C0);
  sub_100096C04();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_10016C1D8 = result;
  return result;
}

uint64_t sub_100094AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  if (qword_10016A6C8 != -1)
  {
    swift_once();
  }

  type metadata accessor for DaemonActor();
  sub_100096BBC(&qword_10016ADA0, type metadata accessor for DaemonActor, &unk_100134054);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100094BA0, v7, v6);
}

uint64_t sub_100094BA0()
{
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[4];
  sub_100026F50(v1, v2);
  v7 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_100094CCC;
  v5 = v0[3];

  return v7(v5, v2, v3);
}

uint64_t sub_100094CCC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100094DC0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a2;
  v31 = a6;
  v29 = a4;
  v9 = sub_100026F94(&qword_10016AD80, &qword_1001311B0);
  __chkstk_darwin(v9 - 8);
  v11 = &v28 - v10;
  v12 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v12 - 8);
  if (qword_10016A560 != -1)
  {
    swift_once();
  }

  sub_100026F50(qword_10016C198, qword_10016C1B0);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._object = 0x800000010013BFB0;
  v13._countAndFlagsBits = 0xD000000000000023;
  LogMessage.StringInterpolation.appendLiteral(_:)(v13);
  v34 = sub_100096B74(0, &qword_10016C280, BGSystemTask_ptr);
  *&aBlock = a1;
  v14 = a1;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(&aBlock);
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v15);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  sub_100026EEC(v29, &aBlock);
  v17 = qword_10016A6C8;
  v18 = v14;

  if (v17 != -1)
  {
    swift_once();
  }

  v19 = qword_1001738A8;
  v20 = sub_100096BBC(&qword_10016ADA0, type metadata accessor for DaemonActor, &unk_100134054);
  v21 = swift_allocObject();
  v21[2] = v19;
  v21[3] = v20;
  v22 = v30;
  v21[4] = v30;
  v21[5] = a3;
  v21[6] = v18;
  sub_10002C604(&aBlock, (v21 + 7));
  v23 = v31;
  v21[12] = a5;
  v21[13] = v23;

  v24 = sub_10009C9B8(0, 0, v11, &unk_1001323B8, v21);
  v25 = swift_allocObject();
  v25[2] = v22;
  v25[3] = a3;
  v25[4] = v24;
  v25[5] = v23;
  v35 = sub_10009694C;
  v36 = v25;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v33 = sub_10008287C;
  v34 = &unk_100165728;
  v26 = _Block_copy(&aBlock);

  [v18 setExpirationHandler:v26];
  _Block_release(v26);
}

uint64_t sub_10009521C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = a7;
  v8[18] = a8;
  v8[15] = a5;
  v8[16] = a6;
  v8[14] = a4;
  type metadata accessor for LogMessage.StringInterpolation();
  v8[19] = swift_task_alloc();
  if (qword_10016A6C8 != -1)
  {
    swift_once();
  }

  type metadata accessor for DaemonActor();
  sub_100096BBC(&qword_10016ADA0, type metadata accessor for DaemonActor, &unk_100134054);
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[20] = v10;
  v8[21] = v9;

  return _swift_task_switch(sub_100095344, v10, v9);
}

uint64_t sub_100095344()
{
  v1 = v0[17];
  v2 = v1[3];
  v3 = v1[4];
  sub_100026F50(v1, v2);
  v7 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  v0[22] = v4;
  *v4 = v0;
  v4[1] = sub_100095470;
  v5 = v0[18];

  return v7(v5, v2, v3);
}

uint64_t sub_100095470()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 168);
  v4 = *(v2 + 160);
  if (v0)
  {
    v5 = sub_10009561C;
  }

  else
  {
    v5 = sub_1000955AC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000955AC()
{
  sub_100096970(*(v0 + 112), *(v0 + 120), *(v0 + 128));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10009561C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A560 != -1)
  {
    swift_once();
  }

  v4 = *(v3 + 112);
  v5 = *(v3 + 120);
  sub_100026F50(qword_10016C198, qword_10016C1B0);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._object = 0x800000010013C000;
  v6._countAndFlagsBits = 0xD00000000000001CLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  *(v3 + 40) = &type metadata for String;
  *(v3 + 16) = v4;
  *(v3 + 24) = v5;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(v3 + 16);
  v7._countAndFlagsBits = 2629678;
  v7._object = 0xE300000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  swift_getErrorValue();
  v8 = *(v3 + 80);
  v9 = *(v3 + 88);
  *(v3 + 72) = v9;
  v10 = sub_100042BAC((v3 + 48));
  (*(*(v9 - 8) + 16))(v10, v8, v9);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(v3 + 48);
  v11._countAndFlagsBits = 41;
  v11._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  sub_100096970(*(v3 + 112), *(v3 + 120), *(v3 + 128));

  v12 = *(v3 + 8);

  return v12();
}

void sub_100095898(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v4 - 8);
  if (qword_10016A560 != -1)
  {
    swift_once();
  }

  sub_100026F50(qword_10016C198, qword_10016C1B0);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._object = 0x800000010013BFE0;
  v5._countAndFlagsBits = 0xD000000000000019;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  v7[3] = &type metadata for String;
  v7[0] = a1;
  v7[1] = a2;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(v7);
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  Task.cancel()();
}

uint64_t sub_100095AAC(uint64_t a1, uint64_t a2)
{
  v2[15] = a1;
  v2[16] = a2;
  type metadata accessor for LogMessage.StringInterpolation();
  v2[17] = swift_task_alloc();
  v3 = type metadata accessor for OSSignpostID();
  v2[18] = v3;
  v2[19] = *(v3 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  if (qword_10016A6C8 != -1)
  {
    swift_once();
  }

  type metadata accessor for DaemonActor();
  sub_100096BBC(&qword_10016ADA0, type metadata accessor for DaemonActor, &unk_100134054);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[22] = v5;
  v2[23] = v4;

  return _swift_task_switch(sub_100095C30, v5, v4);
}

uint64_t sub_100095C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = v3;
  if (qword_10016A568 != -1)
  {
    swift_once();
  }

  v4 = *(v3 + 120);
  v5 = type metadata accessor for OSSignposter();
  sub_10002FD14(v5, qword_10016C1C0);
  sub_100026EEC(v4, v3 + 16);
  static OSSignpostID.exclusive.getter();
  v6 = OSSignposter.logHandle.getter();
  v7 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v31 = v9;
    *v8 = 136315138;
    sub_100026F50((v3 + 16), *(v3 + 40));
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    sub_100026FDC((v3 + 16));
    v13 = sub_10006CB64(v10, v12, &v31);

    *(v8 + 4) = v13;
    v14 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, v7, v14, "TaskCenter.run", "task=%s", v8, 0xCu);
    sub_100026FDC(v9);
  }

  else
  {

    sub_100026FDC((v3 + 16));
  }

  v15 = *(v3 + 168);
  v16 = *(v3 + 144);
  v17 = *(v3 + 152);
  (*(v17 + 16))(*(v3 + 160), v15, v16);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  *(v3 + 192) = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v17 + 8))(v15, v16);
  if (qword_10016A560 != -1)
  {
    swift_once();
  }

  v18 = *(v3 + 120);
  sub_100026F50(qword_10016C198, qword_10016C1B0);
  *(v3 + 200) = sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v19 = *(type metadata accessor for LogMessage() - 8);
  *(v3 + 208) = *(v19 + 72);
  *(v3 + 232) = *(v19 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v20._object = 0x800000010013BF60;
  v20._countAndFlagsBits = 0xD00000000000001ALL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v20);
  v21 = v18[3];
  v22 = sub_100026F50(v18, v21);
  *(v3 + 80) = v21;
  v23 = sub_100042BAC((v3 + 56));
  (*(*(v21 - 8) + 16))(v23, v22, v21);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(v3 + 56);
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v24);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  v25 = v18[3];
  v26 = v18[4];
  sub_100026F50(v18, v25);
  v30 = (*(v26 + 24) + **(v26 + 24));
  v27 = swift_task_alloc();
  *(v3 + 216) = v27;
  *v27 = v3;
  v27[1] = sub_100096108;
  v28 = *(v3 + 128);

  return v30(v28, v25, v26);
}

uint64_t sub_100096108()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  v3 = *(v2 + 184);
  v4 = *(v2 + 176);
  if (v0)
  {
    v5 = sub_100096420;
  }

  else
  {
    v5 = sub_100096244;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100096244()
{
  v1 = v0[24];
  v2 = v0[15];
  sub_100026F50(qword_10016C198, qword_10016C1B0);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v3._object = 0x800000010013BF80;
  v3._countAndFlagsBits = 0xD000000000000023;
  LogMessage.StringInterpolation.appendLiteral(_:)(v3);
  v4 = v2[3];
  v5 = sub_100026F50(v2, v4);
  v0[14] = v4;
  v6 = sub_100042BAC(v0 + 11);
  (*(*(v4 - 8) + 16))(v6, v5, v4);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504((v0 + 11));
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_1000964EC("TaskCenter.run", 14, 2, v1);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100096420()
{
  sub_1000964EC("TaskCenter.run", 14, 2, *(v0 + 192));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000964EC(const char *a1, uint64_t a2, int a3, uint64_t a4)
{
  v20 = a3;
  v5 = type metadata accessor for OSSignpostError();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OSSignpostID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10016A568 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for OSSignposter();
  sub_10002FD14(v13, qword_10016C1C0);
  v14 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v19 = static os_signpost_type_t.end.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((v20 & 1) == 0)
  {
    if (a1)
    {
LABEL_11:

      checkForErrorAndConsumeState(state:)();

      if ((*(v6 + 88))(v8, v5) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v16 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v8, v5);
        v16 = "";
      }

      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, v19, v18, a1, v16, v17, 2u);

LABEL_15:

      return (*(v10 + 8))(v12, v9);
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v21;
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000967C8()
{
  swift_unknownObjectRelease();

  sub_100026FDC((v0 + 56));

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_100096820(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[12];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100042680;

  return sub_10009521C(a1, v4, v5, v6, v7, v8, (v1 + 7), v9);
}

uint64_t sub_10009690C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100096958(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_100096970(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v6 - 8);
  if (qword_10016A560 != -1)
  {
    swift_once();
  }

  sub_100026F50(qword_10016C198, qword_10016C1B0);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._object = 0x800000010013C020;
  v7._countAndFlagsBits = 0xD00000000000001CLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  v12 = &type metadata for String;
  v10 = a1;
  v11 = a2;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(&v10);
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  return [a3 setTaskCompleted];
}

uint64_t sub_100096B74(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_100096BBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100096C04()
{
  result = qword_10016C2A0;
  if (!qword_10016C2A0)
  {
    sub_10002AD94(&qword_10016C298, &unk_1001323C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016C2A0);
  }

  return result;
}

uint64_t sub_100096C68()
{
  v0 = type metadata accessor for PreferenceNamespace();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002FDA4(v2, qword_100173700);
  sub_10002FD14(v0, qword_100173700);
  static PreferenceNamespace.jetEngine.getter();
  PreferenceNamespace.appending(_:)();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_100096D70(uint64_t a1)
{
  v3 = sub_100026F94(&qword_10016C2A8, &qword_1001323D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - v4;
  v6 = sub_100026F94(&qword_10016C2B0, &qword_1001323D8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - v8;
  type metadata accessor for LocalPreferences();
  static LocalPreferences.currentApplication.getter();
  v10 = type metadata accessor for MetricsSamplingLottery(0);
  (*(v7 + 16))(v9, v1 + *(v10 + 20), v6);
  sub_1000975A4(a1, v5);
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v5, 1, v11);
  if (v13 == 1)
  {
    sub_1000974A8(v5);
    v14 = 0;
  }

  else
  {
    Date.timeIntervalSinceReferenceDate.getter();
    v14 = v15;
    (*(v12 + 8))(v5, v11);
  }

  v17 = v14;
  v18 = v13 == 1;
  Preferences.subscript.setter();

  return sub_1000974A8(a1);
}

uint64_t sub_100096FB4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  type metadata accessor for LocalPreferences();
  static LocalPreferences.currentApplication.getter();
  type metadata accessor for MetricsSamplingLottery(0);
  Preferences.subscript.getter();

  if (v12)
  {
    v9 = 1;
  }

  else
  {
    Date.init(timeIntervalSinceReferenceDate:)();
    (*(v3 + 32))(v8, v6, v2);
    Date.addingTimeInterval(_:)();
    (*(v3 + 8))(v8, v2);
    v9 = 0;
  }

  return (*(v3 + 56))(a1, v9, 1, v2);
}

uint64_t sub_100097174()
{
  v1 = sub_100026F94(&qword_10016C2A8, &qword_1001323D0);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v20[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v2);
  v6 = &v20[-v5];
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v20[-v12];
  if (os_variant_has_internal_content())
  {
    type metadata accessor for LocalPreferences();
    static LocalPreferences.currentApplication.getter();
    Preferences.subscript.getter();

    if (v21 != 2 && (v21 & 1) != 0)
    {
      return 1;
    }
  }

  v14 = *(v0 + *(type metadata accessor for MetricsSamplingLottery(0) + 24));
  if (v14 <= 0.0)
  {
    return 0;
  }

  if (v14 < 1.0)
  {
    sub_100096FB4(v6);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_1000974A8(v6);
      goto LABEL_9;
    }

    (*(v8 + 32))(v13, v6, v7);
    Date.init()();
    v15 = static Date.< infix(_:_:)();
    v16 = *(v8 + 8);
    v16(v11, v7);
    v16(v13, v7);
    if ((v15 & 1) == 0)
    {
LABEL_9:
      v17 = vcvtd_n_f64_u64(sub_100097510(0x20000000000001uLL), 0x35uLL);
      if (v17 > 0.0 && v17 <= v14)
      {
        Date.init()();
        (*(v8 + 56))(v4, 0, 1, v7);
        sub_100096D70(v4);
        return 1;
      }

      return 0;
    }
  }

  return 1;
}

uint64_t type metadata accessor for MetricsSamplingLottery(uint64_t a1)
{
  result = qword_10016C310;
  if (!qword_10016C310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000974A8(uint64_t a1)
{
  v2 = sub_100026F94(&qword_10016C2A8, &qword_1001323D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100097510(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000975A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100026F94(&qword_10016C2A8, &qword_1001323D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100097628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100026F94(&qword_10016B328, &qword_100131030);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100026F94(&qword_10016C2B0, &qword_1001323D8);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100097744(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100026F94(&qword_10016B328, &qword_100131030);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100026F94(&qword_10016C2B0, &qword_1001323D8);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_100097858(uint64_t a1)
{
  sub_100097908(319, &qword_10016C320, &type metadata for Bool);
  if (v1 <= 0x3F)
  {
    sub_100097908(319, &unk_10016C328, &type metadata for Double);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100097908(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for PreferenceKey();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100097954(uint64_t *a1)
{
  v2 = v1;
  v3 = sub_10009E5F4(a1);
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
    sub_1000A259C();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey(0);
  sub_100054A78(v8 + *(*(v9 - 8) + 72) * v5);
  v10 = *(*(v7 + 56) + 8 * v5);
  sub_1000A0858(v5, v7);
  *v2 = v7;
  return v10;
}

uint64_t sub_100097A04(uint64_t *a1)
{
  v2 = v1;
  v3 = sub_10009E5F4(a1);
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
    sub_1000A216C();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey(0);
  sub_100054A78(v8 + *(*(v9 - 8) + 72) * v5);
  v10 = *(*(v7 + 56) + 8 * v5);
  sub_1000A0858(v5, v7);
  *v2 = v7;
  return v10;
}

uint64_t sub_100097AB4(uint64_t a1, char a2)
{
  *(v3 + 624) = v2;
  *(v3 + 1156) = a2;
  *(v3 + 616) = a1;
  v4 = sub_100026F94(&qword_10016C450, &unk_1001324B8);
  *(v3 + 632) = v4;
  *(v3 + 640) = *(v4 - 8);
  *(v3 + 648) = swift_task_alloc();
  v5 = type metadata accessor for Delete();
  *(v3 + 656) = v5;
  *(v3 + 664) = *(v5 - 8);
  *(v3 + 672) = swift_task_alloc();
  v6 = type metadata accessor for Setter();
  *(v3 + 680) = v6;
  *(v3 + 688) = *(v6 - 8);
  *(v3 + 696) = swift_task_alloc();
  v7 = sub_100026F94(&qword_10016AD18, &unk_100130C70);
  *(v3 + 704) = v7;
  *(v3 + 712) = *(v7 - 8);
  *(v3 + 720) = swift_task_alloc();
  v8 = type metadata accessor for Update();
  *(v3 + 728) = v8;
  *(v3 + 736) = *(v8 - 8);
  *(v3 + 744) = swift_task_alloc();
  v9 = sub_100026F94(&qword_10016AD28, &unk_1001318C0);
  *(v3 + 752) = v9;
  *(v3 + 760) = *(v9 - 8);
  *(v3 + 768) = swift_task_alloc();
  *(v3 + 776) = swift_task_alloc();
  v10 = type metadata accessor for Table();
  *(v3 + 784) = v10;
  *(v3 + 792) = *(v10 - 8);
  *(v3 + 800) = swift_task_alloc();
  *(v3 + 808) = swift_task_alloc();
  sub_100026F94(&qword_10016AD80, &qword_1001311B0);
  *(v3 + 816) = swift_task_alloc();
  type metadata accessor for LogMessage.StringInterpolation();
  *(v3 + 824) = swift_task_alloc();
  v11 = type metadata accessor for OSSignpostID();
  *(v3 + 832) = v11;
  *(v3 + 840) = *(v11 - 8);
  *(v3 + 848) = swift_task_alloc();
  *(v3 + 856) = swift_task_alloc();

  return _swift_task_switch(sub_100097EAC, v2, 0);
}

uint64_t sub_100097EAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A588 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for OSSignposter();
  sub_10002FD14(v4, qword_10016C388);
  static OSSignpostID.exclusive.getter();
  v5 = OSSignposter.logHandle.getter();
  v6 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v7 = *(v3 + 1156);
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = v7;
    v9 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, v6, v9, "AccessCredentialDataCleanupTask.cleanup", "forceCleanup=%{BOOL}d", v8, 8u);
  }

  v10 = *(v3 + 856);
  v11 = *(v3 + 848);
  v12 = *(v3 + 840);
  v13 = *(v3 + 832);

  (*(v12 + 16))(v11, v10, v13);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  *(v3 + 864) = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v12 + 8))(v10, v13);
  if (qword_10016A580 != -1)
  {
    swift_once();
  }

  v14 = *(v3 + 624);
  v15 = *(v3 + 1156);
  sub_100026F50(qword_10016C360, qword_10016C378);
  *(v3 + 872) = sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v16 = *(type metadata accessor for LogMessage() - 8);
  *(v3 + 880) = *(v16 + 72);
  *(v3 + 1152) = *(v16 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v17._countAndFlagsBits = 0xD000000000000031;
  v17._object = 0x800000010013C110;
  LogMessage.StringInterpolation.appendLiteral(_:)(v17);
  v18 = *(v14 + 112);
  *(v3 + 888) = v18;
  v19 = *(v14 + 120);
  *(v3 + 896) = v19;
  *(v3 + 296) = &type metadata for String;
  *(v3 + 272) = v18;
  *(v3 + 280) = v19;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(v3 + 272, &qword_10016AB10, &unk_100130B10);
  v20._object = 0x800000010013C150;
  v20._countAndFlagsBits = 0xD000000000000011;
  LogMessage.StringInterpolation.appendLiteral(_:)(v20);
  *(v3 + 328) = &type metadata for Bool;
  *(v3 + 304) = v15;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(v3 + 304, &qword_10016AB10, &unk_100130B10);
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v21);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  v22 = sub_100026F94(&qword_10016C458, &qword_1001324C8);
  v23 = swift_task_alloc();
  *(v3 + 904) = v23;
  *v23 = v3;
  v23[1] = sub_1000982C4;

  return BaseObjectGraph.inject<A>(_:)(v3 + 152, v22, v22);
}

uint64_t sub_1000982C4()
{
  v2 = *v1;
  *(*v1 + 912) = v0;

  v3 = *(v2 + 624);
  if (v0)
  {
    v4 = sub_10009BFB0;
  }

  else
  {
    v4 = sub_1000983F0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000983F0()
{
  if (*(v0 + 1156))
  {
    v1 = sub_100026F94(&qword_10016AFE8, &qword_100130F00);
    v2 = swift_task_alloc();
    *(v0 + 936) = v2;
    *v2 = v0;
    v2[1] = sub_100098D24;

    return BaseObjectGraph.inject<A>(_:)(v0 + 192, v1, v1);
  }

  else
  {
    sub_100026F50((v0 + 152), *(v0 + 176));
    v3 = swift_task_alloc();
    *(v0 + 920) = v3;
    *v3 = v0;
    v3[1] = sub_100098534;
    v4 = *(v0 + 896);
    v5 = *(v0 + 888);

    return sub_100033FEC(v5, v4);
  }
}

uint64_t sub_100098534(char a1)
{
  v4 = *v2;
  *(v4 + 928) = v1;

  v5 = *(v4 + 624);
  if (v1)
  {
    v6 = sub_100098AA8;
  }

  else
  {
    *(v4 + 1157) = a1 & 1;
    v6 = sub_100098674;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100098674()
{
  if (*(v0 + 1157) == 1)
  {
    v1 = *(v0 + 896);
    v2 = *(v0 + 888);
    v17 = *(v0 + 816);
    sub_100026F50(qword_10016C360, qword_10016C378);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v3._countAndFlagsBits = 0xD00000000000001ELL;
    v3._object = 0x800000010013C220;
    LogMessage.StringInterpolation.appendLiteral(_:)(v3);
    *(v0 + 520) = &type metadata for String;
    *(v0 + 496) = v2;
    *(v0 + 504) = v1;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v0 + 496, &qword_10016AB10, &unk_100130B10);
    v4._object = 0x800000010013C240;
    v4._countAndFlagsBits = 0xD000000000000010;
    LogMessage.StringInterpolation.appendLiteral(_:)(v4);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    sub_100026FDC((v0 + 152));
    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v17, 1, 1, v5);
    v6 = qword_10016A6C8;

    if (v6 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 864);
    v8 = *(v0 + 816);
    v9 = *(v0 + 616);
    v10 = qword_1001738A8;
    v11 = sub_1000A3FAC(&qword_10016ADA0, 255, type metadata accessor for DaemonActor, &unk_100134054);
    v12 = swift_allocObject();
    v12[2] = v10;
    v12[3] = v11;
    v12[4] = v9;

    sub_10009C9B8(0, 0, v8, &unk_100132550, v12);

    sub_1000A3A38("AccessCredentialDataCleanupTask.cleanup", 39, 2, v7);

    v13 = *(v0 + 8);

    return v13(0);
  }

  else
  {
    v15 = sub_100026F94(&qword_10016AFE8, &qword_100130F00);
    v16 = swift_task_alloc();
    *(v0 + 936) = v16;
    *v16 = v0;
    v16[1] = sub_100098D24;

    return BaseObjectGraph.inject<A>(_:)(v0 + 192, v15, v15);
  }
}

uint64_t sub_100098AA8()
{
  v1 = v0[102];
  sub_100026FDC(v0 + 19);
  v2 = type metadata accessor for TaskPriority();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = qword_10016A6C8;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = v0[108];
  v5 = v0[102];
  v6 = v0[77];
  v7 = qword_1001738A8;
  v8 = sub_1000A3FAC(&qword_10016ADA0, 255, type metadata accessor for DaemonActor, &unk_100134054);
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = v8;
  v9[4] = v6;

  sub_10009C9B8(0, 0, v5, &unk_1001324D8, v9);

  sub_1000A3A38("AccessCredentialDataCleanupTask.cleanup", 39, 2, v4);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100098D24()
{
  v2 = *v1;
  v2[118] = v0;

  if (v0)
  {
    v3 = v2[78];

    return _swift_task_switch(sub_10009C224, v3, 0);
  }

  else
  {
    v4 = sub_100026F94(&qword_10016B008, &unk_100130F30);
    v5 = swift_task_alloc();
    v2[119] = v5;
    *v5 = v2;
    v5[1] = sub_100098EC8;

    return BaseObjectGraph.inject<A>(_:)(v2 + 29, v4, v4);
  }
}

uint64_t sub_100098EC8()
{
  v2 = *v1;
  *(*v1 + 960) = v0;

  v3 = *(v2 + 624);
  if (v0)
  {
    v4 = sub_10009C4A0;
  }

  else
  {
    v4 = sub_100098FF4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100098FF4()
{
  sub_100026F50(v0 + 29, v0[32]);
  v1 = swift_task_alloc();
  v0[121] = v1;
  *v1 = v0;
  v1[1] = sub_10009909C;
  v2 = v0[112];
  v3 = v0[111];

  return sub_100060B24(v3, v2);
}

uint64_t sub_10009909C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 976) = a1;
  *(v4 + 984) = v1;

  v5 = *(v3 + 624);
  if (v1)
  {
    v6 = sub_100099890;
  }

  else
  {
    v6 = sub_1000991D4;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000991D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 976);
  v5 = *(v4 + 16);
  *(v3 + 992) = v5;
  if (v5)
  {
    *(v3 + 1000) = 0u;
    if (*(v4 + 16))
    {
      v34 = *(v3 + 888);
      sub_1000A3D14(v4 + 32, v3 + 16);
      sub_100026F50(qword_10016C360, qword_10016C378);
      *(swift_allocObject() + 16) = xmmword_10012FA10;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v6._countAndFlagsBits = 0xD00000000000001DLL;
      v6._object = 0x800000010013C170;
      LogMessage.StringInterpolation.appendLiteral(_:)(v6);
      v8 = *(v3 + 120);
      v7 = *(v3 + 128);
      *(v3 + 1016) = v8;
      *(v3 + 1024) = v7;
      *(v3 + 360) = &type metadata for String;
      *(v3 + 336) = v8;
      *(v3 + 344) = v7;

      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002BA6C(v3 + 336, &qword_10016AB10, &unk_100130B10);
      v9._countAndFlagsBits = 0x203A6E69202CLL;
      v9._object = 0xE600000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v9);
      v11 = *(v3 + 136);
      v10 = *(v3 + 144);
      *(v3 + 1032) = v11;
      *(v3 + 1040) = v10;
      *(v3 + 392) = &type metadata for String;
      *(v3 + 368) = v11;
      *(v3 + 376) = v10;

      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002BA6C(v3 + 368, &qword_10016AB10, &unk_100130B10);
      v12._countAndFlagsBits = 0;
      v12._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v12);
      LogMessage.init(stringInterpolation:)();
      Logger.info(_:)();

      sub_100026F50((v3 + 192), *(v3 + 216));
      *(v3 + 544) = 0;
      *(v3 + 552) = 0xE000000000000000;
      _StringGuts.grow(_:)(35);

      *(v3 + 528) = 0xD000000000000020;
      *(v3 + 536) = 0x800000010013C190;
      String.append(_:)(v34);
      v13._countAndFlagsBits = 41;
      v13._object = 0xE100000000000000;
      String.append(_:)(v13);
      v14 = *(v3 + 528);
      v15 = *(v3 + 536);
      *(v3 + 1048) = v15;
      v16 = swift_task_alloc();
      *(v3 + 1056) = v16;
      *v16 = v3;
      v16[1] = sub_100099B1C;

      return sub_10009D2E4(v3 + 16, v14, v15);
    }

    __break(1u);
    goto LABEL_11;
  }

  v18 = *(v3 + 896);
  v19 = *(v3 + 888);
  v33 = *(v3 + 1156);
  v35 = *(v3 + 816);

  sub_100026F50(qword_10016C360, qword_10016C378);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v20._countAndFlagsBits = 0xD00000000000003ALL;
  v20._object = 0x800000010013C1C0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v20);
  *(v3 + 424) = &type metadata for String;
  *(v3 + 400) = v19;
  *(v3 + 408) = v18;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(v3 + 400, &qword_10016AB10, &unk_100130B10);
  v21._object = 0x800000010013C150;
  v21._countAndFlagsBits = 0xD000000000000011;
  LogMessage.StringInterpolation.appendLiteral(_:)(v21);
  *(v3 + 456) = &type metadata for Bool;
  *(v3 + 432) = v33;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(v3 + 432, &qword_10016AB10, &unk_100130B10);
  v22._countAndFlagsBits = 0xD000000000000017;
  v22._object = 0x800000010013C200;
  LogMessage.StringInterpolation.appendLiteral(_:)(v22);
  *(v3 + 488) = &type metadata for Int;
  *(v3 + 464) = 0;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002BA6C(v3 + 464, &qword_10016AB10, &unk_100130B10);
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v23);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100026FDC((v3 + 232));
  sub_100026FDC((v3 + 192));
  sub_100026FDC((v3 + 152));
  v24 = type metadata accessor for TaskPriority();
  (*(*(v24 - 8) + 56))(v35, 1, 1, v24);
  v25 = qword_10016A6C8;

  if (v25 != -1)
  {
LABEL_11:
    swift_once();
  }

  v26 = *(v3 + 864);
  v27 = *(v3 + 816);
  v28 = *(v3 + 616);
  v29 = qword_1001738A8;
  v30 = sub_1000A3FAC(&qword_10016ADA0, 255, type metadata accessor for DaemonActor, &unk_100134054);
  v31 = swift_allocObject();
  v31[2] = v29;
  v31[3] = v30;
  v31[4] = v28;

  sub_10009C9B8(0, 0, v27, &unk_100132548, v31);

  sub_1000A3A38("AccessCredentialDataCleanupTask.cleanup", 39, 2, v26);

  v32 = *(v3 + 8);

  return v32(0);
}

uint64_t sub_100099890()
{
  v1 = v0[102];
  sub_100026FDC(v0 + 29);
  sub_100026FDC(v0 + 24);
  sub_100026FDC(v0 + 19);
  v2 = type metadata accessor for TaskPriority();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = qword_10016A6C8;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = v0[108];
  v5 = v0[102];
  v6 = v0[77];
  v7 = qword_1001738A8;
  v8 = sub_1000A3FAC(&qword_10016ADA0, 255, type metadata accessor for DaemonActor, &unk_100134054);
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = v8;
  v9[4] = v6;

  sub_10009C9B8(0, 0, v5, &unk_100132500, v9);

  sub_1000A3A38("AccessCredentialDataCleanupTask.cleanup", 39, 2, v4);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100099B1C(uint64_t a1)
{
  v3 = *v2;
  v3[133] = a1;
  v3[134] = v1;

  if (v1)
  {
    v4 = v3[78];

    v5 = sub_10009C724;
    v6 = v4;
  }

  else
  {
    v7 = v3[78];

    v5 = sub_100099C80;
    v6 = v7;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_100099C80()
{
  if (Connection.tableExists(_:)(*(v0 + 1016)))
  {
    v51 = *(v0 + 1072);
    v1 = *(v0 + 896);
    v2 = *(v0 + 888);
    v53 = *(v0 + 800);
    v57 = *(v0 + 792);
    v55 = *(v0 + 784);
    v46 = *(v0 + 768);
    v56 = *(v0 + 760);
    v43 = *(v0 + 752);
    v3 = *(v0 + 720);
    v4 = *(v0 + 712);
    v45 = *(v0 + 704);
    v47 = *(v0 + 696);
    v48 = *(v0 + 688);
    v49 = *(v0 + 680);

    Table.init(_:database:)();
    static Connection.ServiceColumns.requestIds.getter();
    *(v0 + 560) = 47;
    *(v0 + 568) = 0xE100000000000000;
    v5._countAndFlagsBits = v2;
    v5._object = v1;
    String.append(_:)(v5);
    v6._countAndFlagsBits = 47;
    v6._object = 0xE100000000000000;
    String.append(_:)(v6);
    sub_1000A3DC4();
    ExpressionType<>.like(_:escape:)();

    sub_1000A3FAC(&qword_10016AD20, 255, &type metadata accessor for Table, &protocol conformance descriptor for Table);
    QueryType.where(_:)();
    v44 = *(v4 + 8);
    v44(v3, v45);
    *(v0 + 576) = 47;
    *(v0 + 584) = 0xE100000000000000;
    v7._countAndFlagsBits = v2;
    v7._object = v1;
    String.append(_:)(v7);
    v8._countAndFlagsBits = 47;
    v8._object = 0xE100000000000000;
    String.append(_:)(v8);
    ExpressionType<>.replace(_:with:)();

    <- infix<A>(_:_:)();
    v9 = *(v56 + 8);
    *(v0 + 1080) = v9;
    *(v0 + 1088) = (v56 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v46, v43);
    QueryType.update(_:_:)();
    (*(v48 + 8))(v47, v49);
    v10 = *(v57 + 8);
    *(v0 + 1096) = v10;
    *(v0 + 1104) = (v57 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v53, v55);
    Connection.run(_:)();
    if (v51)
    {
      v52 = *(v0 + 816);
      v11 = *(v0 + 808);
      v12 = *(v0 + 784);
      v13 = *(v0 + 776);
      v14 = *(v0 + 752);
      v15 = *(v0 + 744);
      v16 = *(v0 + 736);
      v17 = *(v0 + 728);
      v50 = *(v0 + 624);

      (*(v16 + 8))(v15, v17);
      v9(v13, v14);
      v10(v11, v12);
      v18 = sub_100026F50((v0 + 192), *(v0 + 216));
      sub_1000A3848(*v18, v0 + 16, v50);

      sub_1000A3D70(v0 + 16);
      sub_100026FDC((v0 + 232));
      sub_100026FDC((v0 + 192));
      sub_100026FDC((v0 + 152));
      v19 = type metadata accessor for TaskPriority();
      (*(*(v19 - 8) + 56))(v52, 1, 1, v19);
      v20 = qword_10016A6C8;

      if (v20 != -1)
      {
        swift_once();
      }

      v35 = *(v0 + 864);
      v36 = *(v0 + 816);
      v37 = *(v0 + 616);
      v38 = qword_1001738A8;
      v39 = sub_1000A3FAC(&qword_10016ADA0, 255, type metadata accessor for DaemonActor, &unk_100134054);
      v40 = swift_allocObject();
      v40[2] = v38;
      v40[3] = v39;
      v40[4] = v37;

      sub_10009C9B8(0, 0, v36, &unk_100132520, v40);

      sub_1000A3A38("AccessCredentialDataCleanupTask.cleanup", 39, 2, v35);

      v41 = *(v0 + 8);

      return v41();
    }

    v30 = *(v0 + 800);
    v31 = *(v0 + 784);
    v32 = *(v0 + 720);
    v54 = *(v0 + 704);
    (*(*(v0 + 736) + 8))(*(v0 + 744), *(v0 + 728));
    *(v0 + 592) = 0;
    *(v0 + 600) = 0xE000000000000000;
    static Expression<A>.== infix<A>(_:_:)();
    QueryType.where(_:)();
    v44(v32, v54);
    QueryType.delete()();
    v10(v30, v31);
    v33 = Connection.run(_:)();
    v34 = *(v0 + 1000);
    result = (*(*(v0 + 664) + 8))(*(v0 + 672), *(v0 + 656));
    *(v0 + 1112) = v34 + v33;
    if (__OFADD__(v34, v33))
    {
      __break(1u);
      return result;
    }

    sub_1000A3FAC(&qword_10016AD68, 255, &type metadata accessor for Table, &protocol conformance descriptor for Table);
    SchemaType.count.getter();
    Connection.scalar<A>(_:)();
    (*(*(v0 + 640) + 8))(*(v0 + 648), *(v0 + 632));
    if (!*(v0 + 608))
    {
      v42 = default argument 0 of SchemaType.drop(ifExists:)();
      SchemaType.drop(ifExists:)(v42 & 1);
      Connection.run(_:_:)();
    }

    sub_100026F50((v0 + 232), *(v0 + 256));
    v21 = swift_task_alloc();
    *(v0 + 1120) = v21;
    *v21 = v0;
    v22 = sub_10009A960;
  }

  else
  {
    sub_100026F50((v0 + 232), *(v0 + 256));
    v21 = swift_task_alloc();
    *(v0 + 1136) = v21;
    *v21 = v0;
    v22 = sub_10009B4BC;
  }

  v21[1] = v22;
  v23 = *(v0 + 1040);
  v24 = *(v0 + 1032);
  v25 = *(v0 + 1024);
  v26 = *(v0 + 1016);
  v27 = *(v0 + 896);
  v28 = *(v0 + 888);

  return sub_10005EDF0(v28, v27, v0 + 32, v26, v25, v24, v23);
}

uint64_t sub_10009A960()
{
  v2 = *v1;
  *(*v1 + 1128) = v0;

  if (v0)
  {
    v3 = *(v2 + 624);

    v4 = sub_10009B1CC;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 624);
    v4 = sub_10009AA88;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_10009AA88()
{
  v1 = *(v0 + 1096);
  v2 = *(v0 + 992);
  v3 = *(v0 + 808);
  v4 = *(v0 + 784);
  v5 = *(v0 + 624);
  v6 = *(v0 + 1008) + 1;
  (*(v0 + 1080))(*(v0 + 776), *(v0 + 752));
  v1(v3, v4);
  v7 = sub_100026F50((v0 + 192), *(v0 + 216));
  sub_1000A3848(*v7, v0 + 16, v5);

  result = sub_1000A3D70(v0 + 16);
  if (v6 == v2)
  {
    v9 = *(v0 + 1112);
    v10 = *(v0 + 896);
    v11 = *(v0 + 888);
    v40 = *(v0 + 1156);
    v38 = *(v0 + 816);

    sub_100026F50(qword_10016C360, qword_10016C378);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v12._countAndFlagsBits = 0xD00000000000003ALL;
    v12._object = 0x800000010013C1C0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v12);
    *(v0 + 424) = &type metadata for String;
    *(v0 + 400) = v11;
    *(v0 + 408) = v10;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v0 + 400, &qword_10016AB10, &unk_100130B10);
    v13._object = 0x800000010013C150;
    v13._countAndFlagsBits = 0xD000000000000011;
    LogMessage.StringInterpolation.appendLiteral(_:)(v13);
    *(v0 + 456) = &type metadata for Bool;
    *(v0 + 432) = v40;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v0 + 432, &qword_10016AB10, &unk_100130B10);
    v14._countAndFlagsBits = 0xD000000000000017;
    v14._object = 0x800000010013C200;
    LogMessage.StringInterpolation.appendLiteral(_:)(v14);
    *(v0 + 488) = &type metadata for Int;
    *(v0 + 464) = v9;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v0 + 464, &qword_10016AB10, &unk_100130B10);
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v15);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    sub_100026FDC((v0 + 232));
    sub_100026FDC((v0 + 192));
    sub_100026FDC((v0 + 152));
    v16 = type metadata accessor for TaskPriority();
    (*(*(v16 - 8) + 56))(v38, 1, 1, v16);
    v17 = qword_10016A6C8;

    if (v17 != -1)
    {
      swift_once();
    }

    v18 = *(v0 + 864);
    v19 = *(v0 + 816);
    v20 = *(v0 + 616);
    v21 = qword_1001738A8;
    v22 = sub_1000A3FAC(&qword_10016ADA0, 255, type metadata accessor for DaemonActor, &unk_100134054);
    v23 = swift_allocObject();
    v23[2] = v21;
    v23[3] = v22;
    v23[4] = v20;

    sub_10009C9B8(0, 0, v19, &unk_100132548, v23);

    sub_1000A3A38("AccessCredentialDataCleanupTask.cleanup", 39, 2, v18);

    v24 = *(v0 + 8);

    return v24(v9);
  }

  else
  {
    v25 = *(v0 + 1008) + 1;
    *(v0 + 1000) = *(v0 + 1112);
    *(v0 + 1008) = v25;
    v26 = *(v0 + 976);
    if (v25 >= *(v26 + 16))
    {
      __break(1u);
    }

    else
    {
      v39 = *(v0 + 888);
      sub_1000A3D14(v26 + 136 * v25 + 32, v0 + 16);
      sub_100026F50(qword_10016C360, qword_10016C378);
      *(swift_allocObject() + 16) = xmmword_10012FA10;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v27._countAndFlagsBits = 0xD00000000000001DLL;
      v27._object = 0x800000010013C170;
      LogMessage.StringInterpolation.appendLiteral(_:)(v27);
      v29 = *(v0 + 120);
      v28 = *(v0 + 128);
      *(v0 + 1016) = v29;
      *(v0 + 1024) = v28;
      *(v0 + 360) = &type metadata for String;
      *(v0 + 336) = v29;
      *(v0 + 344) = v28;

      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002BA6C(v0 + 336, &qword_10016AB10, &unk_100130B10);
      v30._countAndFlagsBits = 0x203A6E69202CLL;
      v30._object = 0xE600000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v30);
      v32 = *(v0 + 136);
      v31 = *(v0 + 144);
      *(v0 + 1032) = v32;
      *(v0 + 1040) = v31;
      *(v0 + 392) = &type metadata for String;
      *(v0 + 368) = v32;
      *(v0 + 376) = v31;

      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002BA6C(v0 + 368, &qword_10016AB10, &unk_100130B10);
      v33._countAndFlagsBits = 0;
      v33._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v33);
      LogMessage.init(stringInterpolation:)();
      Logger.info(_:)();

      sub_100026F50((v0 + 192), *(v0 + 216));
      *(v0 + 544) = 0;
      *(v0 + 552) = 0xE000000000000000;
      _StringGuts.grow(_:)(35);

      *(v0 + 528) = 0xD000000000000020;
      *(v0 + 536) = 0x800000010013C190;
      String.append(_:)(v39);
      v34._countAndFlagsBits = 41;
      v34._object = 0xE100000000000000;
      String.append(_:)(v34);
      v35 = *(v0 + 528);
      v36 = *(v0 + 536);
      *(v0 + 1048) = v36;
      v37 = swift_task_alloc();
      *(v0 + 1056) = v37;
      *v37 = v0;
      v37[1] = sub_100099B1C;

      return sub_10009D2E4(v0 + 16, v35, v36);
    }
  }

  return result;
}

uint64_t sub_10009B1CC()
{
  v1 = *(v0 + 1096);
  v2 = *(v0 + 816);
  v3 = *(v0 + 808);
  v4 = *(v0 + 784);
  v5 = *(v0 + 624);
  (*(v0 + 1080))(*(v0 + 776), *(v0 + 752));
  v1(v3, v4);
  v6 = sub_100026F50((v0 + 192), *(v0 + 216));
  sub_1000A3848(*v6, v0 + 16, v5);

  sub_1000A3D70(v0 + 16);
  sub_100026FDC((v0 + 232));
  sub_100026FDC((v0 + 192));
  sub_100026FDC((v0 + 152));
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  v8 = qword_10016A6C8;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 864);
  v10 = *(v0 + 816);
  v11 = *(v0 + 616);
  v12 = qword_1001738A8;
  v13 = sub_1000A3FAC(&qword_10016ADA0, 255, type metadata accessor for DaemonActor, &unk_100134054);
  v14 = swift_allocObject();
  v14[2] = v12;
  v14[3] = v13;
  v14[4] = v11;

  sub_10009C9B8(0, 0, v10, &unk_100132538, v14);

  sub_1000A3A38("AccessCredentialDataCleanupTask.cleanup", 39, 2, v9);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_10009B4BC()
{
  v2 = *v1;
  *(*v1 + 1144) = v0;

  if (v0)
  {
    v3 = *(v2 + 624);

    v4 = sub_10009BCF0;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 624);
    v4 = sub_10009B5E4;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_10009B5E4()
{
  v1 = *(v0 + 992);
  v2 = *(v0 + 624);
  v3 = *(v0 + 1008) + 1;
  v4 = sub_100026F50((v0 + 192), *(v0 + 216));
  sub_1000A3848(*v4, v0 + 16, v2);

  result = sub_1000A3D70(v0 + 16);
  if (v3 == v1)
  {
    v6 = *(v0 + 1000);
    v7 = *(v0 + 896);
    v8 = *(v0 + 888);
    v37 = *(v0 + 1156);
    v35 = *(v0 + 816);

    sub_100026F50(qword_10016C360, qword_10016C378);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v9._countAndFlagsBits = 0xD00000000000003ALL;
    v9._object = 0x800000010013C1C0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v9);
    *(v0 + 424) = &type metadata for String;
    *(v0 + 400) = v8;
    *(v0 + 408) = v7;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v0 + 400, &qword_10016AB10, &unk_100130B10);
    v10._object = 0x800000010013C150;
    v10._countAndFlagsBits = 0xD000000000000011;
    LogMessage.StringInterpolation.appendLiteral(_:)(v10);
    *(v0 + 456) = &type metadata for Bool;
    *(v0 + 432) = v37;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v0 + 432, &qword_10016AB10, &unk_100130B10);
    v11._countAndFlagsBits = 0xD000000000000017;
    v11._object = 0x800000010013C200;
    LogMessage.StringInterpolation.appendLiteral(_:)(v11);
    *(v0 + 488) = &type metadata for Int;
    *(v0 + 464) = v6;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v0 + 464, &qword_10016AB10, &unk_100130B10);
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v12);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    sub_100026FDC((v0 + 232));
    sub_100026FDC((v0 + 192));
    sub_100026FDC((v0 + 152));
    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v35, 1, 1, v13);
    v14 = qword_10016A6C8;

    if (v14 != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 864);
    v16 = *(v0 + 816);
    v17 = *(v0 + 616);
    v18 = qword_1001738A8;
    v19 = sub_1000A3FAC(&qword_10016ADA0, 255, type metadata accessor for DaemonActor, &unk_100134054);
    v20 = swift_allocObject();
    v20[2] = v18;
    v20[3] = v19;
    v20[4] = v17;

    sub_10009C9B8(0, 0, v16, &unk_100132548, v20);

    sub_1000A3A38("AccessCredentialDataCleanupTask.cleanup", 39, 2, v15);

    v21 = *(v0 + 8);

    return v21(v6);
  }

  else
  {
    v22 = *(v0 + 1008) + 1;
    *(v0 + 1008) = v22;
    v23 = *(v0 + 976);
    if (v22 >= *(v23 + 16))
    {
      __break(1u);
    }

    else
    {
      v36 = *(v0 + 888);
      sub_1000A3D14(v23 + 136 * v22 + 32, v0 + 16);
      sub_100026F50(qword_10016C360, qword_10016C378);
      *(swift_allocObject() + 16) = xmmword_10012FA10;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v24._countAndFlagsBits = 0xD00000000000001DLL;
      v24._object = 0x800000010013C170;
      LogMessage.StringInterpolation.appendLiteral(_:)(v24);
      v26 = *(v0 + 120);
      v25 = *(v0 + 128);
      *(v0 + 1016) = v26;
      *(v0 + 1024) = v25;
      *(v0 + 360) = &type metadata for String;
      *(v0 + 336) = v26;
      *(v0 + 344) = v25;

      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002BA6C(v0 + 336, &qword_10016AB10, &unk_100130B10);
      v27._countAndFlagsBits = 0x203A6E69202CLL;
      v27._object = 0xE600000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v27);
      v29 = *(v0 + 136);
      v28 = *(v0 + 144);
      *(v0 + 1032) = v29;
      *(v0 + 1040) = v28;
      *(v0 + 392) = &type metadata for String;
      *(v0 + 368) = v29;
      *(v0 + 376) = v28;

      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002BA6C(v0 + 368, &qword_10016AB10, &unk_100130B10);
      v30._countAndFlagsBits = 0;
      v30._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v30);
      LogMessage.init(stringInterpolation:)();
      Logger.info(_:)();

      sub_100026F50((v0 + 192), *(v0 + 216));
      *(v0 + 544) = 0;
      *(v0 + 552) = 0xE000000000000000;
      _StringGuts.grow(_:)(35);

      *(v0 + 528) = 0xD000000000000020;
      *(v0 + 536) = 0x800000010013C190;
      String.append(_:)(v36);
      v31._countAndFlagsBits = 41;
      v31._object = 0xE100000000000000;
      String.append(_:)(v31);
      v32 = *(v0 + 528);
      v33 = *(v0 + 536);
      *(v0 + 1048) = v33;
      v34 = swift_task_alloc();
      *(v0 + 1056) = v34;
      *v34 = v0;
      v34[1] = sub_100099B1C;

      return sub_10009D2E4(v0 + 16, v32, v33);
    }
  }

  return result;
}

uint64_t sub_10009BCF0()
{
  v1 = v0[102];
  v2 = v0[78];
  v3 = sub_100026F50(v0 + 24, v0[27]);
  sub_1000A3848(*v3, (v0 + 2), v2);

  sub_1000A3D70((v0 + 2));
  sub_100026FDC(v0 + 29);
  sub_100026FDC(v0 + 24);
  sub_100026FDC(v0 + 19);
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = qword_10016A6C8;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = v0[108];
  v7 = v0[102];
  v8 = v0[77];
  v9 = qword_1001738A8;
  v10 = sub_1000A3FAC(&qword_10016ADA0, 255, type metadata accessor for DaemonActor, &unk_100134054);
  v11 = swift_allocObject();
  v11[2] = v9;
  v11[3] = v10;
  v11[4] = v8;

  sub_10009C9B8(0, 0, v7, &unk_100132518, v11);

  sub_1000A3A38("AccessCredentialDataCleanupTask.cleanup", 39, 2, v6);

  v12 = v0[1];

  return v12();
}

uint64_t sub_10009BFB0()
{
  v1 = v0[102];
  v2 = type metadata accessor for TaskPriority();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = qword_10016A6C8;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = v0[108];
  v5 = v0[102];
  v6 = v0[77];
  v7 = qword_1001738A8;
  v8 = sub_1000A3FAC(&qword_10016ADA0, 255, type metadata accessor for DaemonActor, &unk_100134054);
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = v8;
  v9[4] = v6;

  sub_10009C9B8(0, 0, v5, &unk_1001324D0, v9);

  sub_1000A3A38("AccessCredentialDataCleanupTask.cleanup", 39, 2, v4);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10009C224()
{
  v1 = v0[102];
  sub_100026FDC(v0 + 19);
  v2 = type metadata accessor for TaskPriority();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = qword_10016A6C8;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = v0[108];
  v5 = v0[102];
  v6 = v0[77];
  v7 = qword_1001738A8;
  v8 = sub_1000A3FAC(&qword_10016ADA0, 255, type metadata accessor for DaemonActor, &unk_100134054);
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = v8;
  v9[4] = v6;

  sub_10009C9B8(0, 0, v5, &unk_1001324E8, v9);

  sub_1000A3A38("AccessCredentialDataCleanupTask.cleanup", 39, 2, v4);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10009C4A0()
{
  v1 = v0[102];
  sub_100026FDC(v0 + 24);
  sub_100026FDC(v0 + 19);
  v2 = type metadata accessor for TaskPriority();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = qword_10016A6C8;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = v0[108];
  v5 = v0[102];
  v6 = v0[77];
  v7 = qword_1001738A8;
  v8 = sub_1000A3FAC(&qword_10016ADA0, 255, type metadata accessor for DaemonActor, &unk_100134054);
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = v8;
  v9[4] = v6;

  sub_10009C9B8(0, 0, v5, &unk_1001324F8, v9);

  sub_1000A3A38("AccessCredentialDataCleanupTask.cleanup", 39, 2, v4);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10009C724()
{
  v1 = v0[102];
  sub_1000A3D70((v0 + 2));
  sub_100026FDC(v0 + 29);
  sub_100026FDC(v0 + 24);
  sub_100026FDC(v0 + 19);
  v2 = type metadata accessor for TaskPriority();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = qword_10016A6C8;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = v0[108];
  v5 = v0[102];
  v6 = v0[77];
  v7 = qword_1001738A8;
  v8 = sub_1000A3FAC(&qword_10016ADA0, 255, type metadata accessor for DaemonActor, &unk_100134054);
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = v8;
  v9[4] = v6;

  sub_10009C9B8(0, 0, v5, &unk_100132510, v9);

  sub_1000A3A38("AccessCredentialDataCleanupTask.cleanup", 39, 2, v4);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10009C9B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100026F94(&qword_10016AD80, &qword_1001311B0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100042774(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10002BA6C(v11, &qword_10016AD80, &qword_1001311B0);
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

      sub_10002BA6C(a3, &qword_10016AD80, &qword_1001311B0);

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

  sub_10002BA6C(a3, &qword_10016AD80, &qword_1001311B0);
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

uint64_t sub_10009CCA8(uint64_t a1, uint64_t a2, uint64_t a3)
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

void *sub_10009CDA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10016A668 != -1)
  {
    swift_once();
  }

  return TaskLocal.get()();
}

uint64_t sub_10009CE00()
{
  v0 = type metadata accessor for OSSignposter();
  sub_10002FDA4(v0, qword_10016C388);
  v1 = sub_10002FD14(v0, qword_10016C388);
  if (qword_10016A550 != -1)
  {
    swift_once();
  }

  v2 = sub_10002FD14(v0, qword_1001736E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10009CEC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = v3;
  if (qword_10016A6C8 != -1)
  {
    swift_once();
  }

  v4[4] = qword_1001738A8;
  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = sub_10009CFB4;

  return BaseObjectGraph.injectIfAvailable<A>(_:)(v4 + 8, &type metadata for AccessCredentialDataCleanupTask.Config, &type metadata for AccessCredentialDataCleanupTask.Config);
}

uint64_t sub_10009CFB4()
{
  *(*v1 + 48) = v0;

  type metadata accessor for DaemonActor();
  sub_1000A3FAC(&qword_10016ADA0, 255, type metadata accessor for DaemonActor, &unk_100134054);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_10009D2CC;
  }

  else
  {
    v4 = sub_10009D13C;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_10009D13C()
{
  v1 = *(v0 + 64);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_10009D1D8;
  v3 = *(v0 + 16);

  return sub_100097AB4(v3, v1 & 1);
}

uint64_t sub_10009D1D8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10009D2E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey(0);
  v4[7] = swift_task_alloc();
  v5 = type metadata accessor for StorageCategory();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_10009D3D8, 0, 0);
}

uint64_t sub_10009D3D8()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[5];
  v5 = v0[2];
  v0[11] = *(v5 + 120);
  v0[12] = *(v5 + 128);
  (*(v2 + 104))(v1, enum case for StorageCategory.classC(_:), v3);

  return _swift_task_switch(sub_10009D474, v4, 0);
}

uint64_t sub_10009D474()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[7];
  v4 = v0[6];
  v5 = v0[2];
  (*(v0[9] + 16))(&v3[v4[5]], v0[10], v0[8]);
  v6 = *(v5 + 32);
  v7 = *(v5 + 40);
  *v3 = v2;
  *(v3 + 1) = v1;
  v8 = &v3[v4[6]];
  *v8 = v6;
  *(v8 + 1) = v7;
  v3[v4[7]] = 0;
  v3[v4[8]] = 1;

  v9 = swift_task_alloc();
  v0[13] = v9;
  *v9 = v0;
  v9[1] = sub_10009D588;
  v10 = v0[7];
  v11 = v0[4];
  v12 = v0[3];

  return sub_100050F58(v10, v12, v11);
}

uint64_t sub_10009D588(uint64_t a1)
{
  v4 = *v2;
  v4[14] = v1;

  if (v1)
  {
    v5 = v4[5];
    sub_100054A78(v4[7]);

    return _swift_task_switch(sub_10009D724, v5, 0);
  }

  else
  {
    v7 = v4[9];
    v6 = v4[10];
    v8 = v4[8];
    sub_100054A78(v4[7]);
    (*(v7 + 8))(v6, v8);

    v9 = v4[1];

    return v9(a1);
  }
}

uint64_t sub_10009D724()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  return _swift_task_switch(sub_10009D79C, 0, 0);
}

uint64_t sub_10009D79C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10009D80C()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10009D868(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100042680;

  return sub_10009CEC8(a1, v4, v5);
}

unint64_t sub_10009D900()
{
  v1 = *v0;
  _StringGuts.grow(_:)(35);

  String.append(_:)(v1[7]);
  v2._countAndFlagsBits = 41;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  return 0xD000000000000020;
}

uint64_t sub_10009D980(uint64_t a1, uint64_t a2)
{
  result = sub_1000A3FAC(&qword_10016C448, a2, type metadata accessor for AccessCredentialDataCleanupTask, &unk_100132430);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10009D9D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[23] = a6;
  v7[24] = v6;
  v7[21] = a4;
  v7[22] = a5;
  v7[19] = a2;
  v7[20] = a3;
  v7[18] = a1;
  type metadata accessor for LogMessage.StringInterpolation();
  v7[25] = swift_task_alloc();
  v7[26] = type metadata accessor for DatabaseConnectionManagerImplementation.ConnectionKey(0);
  v7[27] = swift_task_alloc();

  return _swift_task_switch(sub_10009DAA4, v6, 0);
}

uint64_t sub_10009DAA4()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 192);
  v4 = *(v0 + 160);
  v5 = *(v0 + 168);
  v7 = *(v0 + 144);
  v6 = *(v0 + 152);
  v8 = v2[5];
  v9 = type metadata accessor for StorageCategory();
  (*(*(v9 - 8) + 16))(&v1[v8], v4, v9);
  v10 = *(v5 + 16);
  v11 = *(v5 + 24);
  *v1 = v7;
  *(v1 + 1) = v6;
  v12 = &v1[v2[6]];
  *v12 = v10;
  *(v12 + 1) = v11;
  v1[v2[7]] = 0;
  v1[v2[8]] = 1;
  swift_beginAccess();
  v13 = *(v3 + 240);
  v14 = *(v13 + 16);

  if (!v14 || (v15 = sub_10009E5F4(*(v0 + 216)), (v16 & 1) == 0))
  {
    v27 = *(v0 + 216);
    swift_endAccess();
    v26 = v27;
LABEL_10:
    sub_100054A78(v26);
    goto LABEL_11;
  }

  v18 = *(v0 + 176);
  v17 = *(v0 + 184);
  v32 = *(*(v13 + 56) + 8 * v15);
  swift_endAccess();
  swift_bridgeObjectRetain_n();
  LOBYTE(v17) = sub_10009CCA8(v18, v17, v32);

  if (v17)
  {
    if (qword_10016A3B8 != -1)
    {
      swift_once();
    }

    v19 = *(v0 + 208);
    v20 = *(v0 + 216);
    v30 = *(v0 + 176);
    v31 = *(v0 + 184);
    sub_100026F50(qword_10016B350, qword_10016B368);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v21._object = 0x800000010013A900;
    v21._countAndFlagsBits = 0xD00000000000001CLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v21);
    *(v0 + 40) = v19;
    v22 = sub_100042BAC((v0 + 16));
    sub_100054A14(v20, v22);
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002BA6C(v0 + 16, &qword_10016AB10, &unk_100130B10);
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v23);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    sub_1000A3548(v30, v31);

    v24 = *(v0 + 216);
    if (*(v32 + 16))
    {
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = *(v3 + 240);
      *(v3 + 240) = 0x8000000000000000;
      sub_1000A11F0(v32, v24, isUniquelyReferenced_nonNull_native);
      *(v3 + 240) = v33;
      swift_endAccess();
    }

    else
    {

      swift_beginAccess();
      sub_100097954(v24);
      swift_endAccess();

      swift_beginAccess();
      sub_100097A04(v24);
      swift_endAccess();
    }

    v26 = v24;
    goto LABEL_10;
  }

  sub_100054A78(*(v0 + 216));

LABEL_11:

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_10009DEC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v8 = type metadata accessor for StorageCategory();
  v6[5] = v8;
  v6[6] = *(v8 - 8);
  v6[7] = swift_task_alloc();

  return _swift_task_switch(sub_10009DF8C, a6, 0);
}

uint64_t sub_10009DF8C()
{
  v1 = *(v0 + 32);
  v2 = sub_100026F50(*(v0 + 16), *(*(v0 + 16) + 24));
  _StringGuts.grow(_:)(35);

  String.append(_:)(v1[7]);
  v3._countAndFlagsBits = 41;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  *(v0 + 64) = 0xD000000000000020;
  *(v0 + 72) = 0x800000010013C190;
  *(v0 + 80) = *v2;

  return _swift_task_switch(sub_10009E06C, 0, 0);
}

uint64_t sub_10009E06C()
{
  v1 = v0[3];
  v3 = *(v1 + 120);
  v2 = *(v1 + 128);
  (*(v0[6] + 104))(v0[7], enum case for StorageCategory.classC(_:), v0[5]);
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_10009E158;
  v5 = v0[9];
  v6 = v0[7];
  v7 = v0[8];

  return sub_10009D9D8(v3, v2, v6, v1 + 16, v7, v5);
}

uint64_t sub_10009E158()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v6 = *v0;

  (*(v2 + 8))(v1, v3);

  v4 = *(v6 + 8);

  return v4();
}