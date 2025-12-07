uint64_t sub_1000F49EC(uint64_t a1, void *a2, uint64_t (*a3)(void))
{
  v4 = a3();
  if (v5)
  {
    if (v4 == *a2 && v5 == a2[1])
    {

      v8 = 0;
    }

    else
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v8 = v7 ^ 1;
    }
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

void sub_1000F4A78(uint64_t a1@<X8>)
{
  v2 = sub_10002EB80(&qword_10019AC90, &qword_10014FB80);
  sub_100004B70(v2);
  sub_100003A54();
  __chkstk_darwin(v3);
  v5 = &v14 - v4;
  v6 = objc_allocWithZone(LSApplicationRecord);
  sub_1000FD610();

  v7 = sub_10001A998();
  v9 = sub_1000906C0(v7, v8, 0);
  if (v9)
  {
    v10 = v9;
    sub_10001F1EC();
    v11 = type metadata accessor for LSLinkBundleRecord(0);
    sub_100028670(v5, 1, v11);
    if (v12)
    {

      sub_1000FC404(v5, &qword_10019AC90);
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0;
    }

    else
    {
      *(a1 + 24) = v11;
      *(a1 + 32) = &off_10018F930;
      sub_100013234(a1);
      sub_100013CEC();
      sub_1000F9F3C(v5, v13);
    }
  }

  else
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }
}

uint64_t sub_1000F4BFC(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 sub_1000F4C24(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000F4C38(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000F4C78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1000F4CFC(uint64_t a1)
{
  sub_1000F4DE8(319, &qword_10019BA88, &type metadata accessor for Date, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_1000F4DE8(319, &unk_10019BA90, type metadata accessor for LSPersistentIdentifier, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000F4DE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1000F4E4C(uint64_t a1)
{
  v2 = sub_10001317C();
  v8 = sub_10002EB80(v2, v3);
  v9 = sub_1000FC7C4(&unk_10019BB20);
  v7[0] = a1;
  v4 = sub_1000034B4(v7, v8);
  sub_1000F830C(*v4 + 32, *v4 + 32 + *(*v4 + 16), &v6);
  sub_1000034F8(v7);
  return sub_1000077D8();
}

uint64_t sub_1000F4F14(uint64_t a1, uint64_t a2)
{
  v8[3] = &type metadata for UnsafeRawBufferPointer;
  v8[4] = &protocol witness table for UnsafeRawBufferPointer;
  v8[0] = a1;
  v8[1] = a2;
  v2 = sub_1000034B4(v8, &type metadata for UnsafeRawBufferPointer);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = Data.InlineData.init(_:)();
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = Data.LargeSlice.init(_:)();
    }

    else
    {
      v6 = Data.InlineSlice.init(_:)();
    }
  }

  else
  {
    v6 = 0;
  }

  sub_1000034F8(v8);
  return v6;
}

uint64_t sub_1000F4FD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  swift_unknownObjectRetain();
  v4(v5, v7, a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1000F5094(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_1000F5120(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  return result;
}

uint64_t sub_1000F514C(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_1000F51D0(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

void sub_1000F525C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  sub_1000FD664();
  if (v6 != v7)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = a2 - v3;
  if (__OFSUB__(a2, v3))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = __OFSUB__(1, v8);
  v9 = 1 - v8;
  if (v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (__OFADD__(v5, v9))
  {
LABEL_13:
    __break(1u);
    return;
  }

  v10 = v4;
  sub_1000712A0(v5 + v9, 1);
  v11 = sub_100004F8C();

  sub_1000F56F8(v11, v12, 1, v10);
}

uint64_t sub_1000F52EC(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_10007130C(result, 1);
  v8 = *v2;
  v9 = *(sub_10002EB80(&unk_10019B280, &qword_1001504C0) - 8);
  v10 = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  v12 = v10 + v11 * v5;
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v13 = *(v8 + 16);
  if (__OFSUB__(v13, a2))
  {
    goto LABEL_16;
  }

  result = sub_100071160(v10 + v11 * a2, v13 - a2, v12);
  v14 = *(v8 + 16);
  v15 = __OFADD__(v14, v7);
  v16 = v14 - v6;
  if (!v15)
  {
    *(v8 + 16) = v16;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1000F5428(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1000712F4(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 48 * v5);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_100071128((v9 + 48 * a2), v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_1000F550C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1000FDCA4();
  if (v7 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v8 = v6;
  sub_1000FD664();
  if (v11 != v12)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v13 = v9;
  v14 = v8 - v9;
  if (__OFSUB__(v8, v9))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v9 - v8;
  if (__OFSUB__(0, v14))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v10, v15))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1000713E8(v10 - v14, 1);
  v16 = *v5;
  v17 = *(type metadata accessor for ObservationStatusRegistry.ObservationStatusChangeListener(0) - 8);
  v18 = v16 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v19 = *(v17 + 72);
  v20 = v18 + v19 * v13;
  sub_1000064C8();
  swift_arrayDestroy();
  if (!v14)
  {
LABEL_10:
    *v5 = v16;
    sub_1000FDC90();
    return;
  }

  v21 = *(v16 + 16);
  if (__OFSUB__(v21, v8))
  {
    goto LABEL_16;
  }

  sub_100071110(v18 + v19 * v8, v21 - v8, v20);
  v22 = *(v16 + 16);
  v12 = __OFADD__(v22, v15);
  v23 = v22 - v14;
  if (!v12)
  {
    *(v16 + 16) = v23;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

void sub_1000F5628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1000FDCA4();
  if (v7 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v8 = v6;
  sub_1000FD664();
  if (v11 != v12)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v13 = v9;
  v14 = v8 - v9;
  if (__OFSUB__(v8, v9))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v9 - v8;
  if (__OFSUB__(0, v14))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v10, v15))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_100071498(v10 - v14, 1);
  v16 = *v5;
  v17 = *v5 + 32;
  v18 = (v17 + 24 * v13);
  sub_1000064C8();
  swift_arrayDestroy();
  if (!v14)
  {
LABEL_10:
    *v5 = v16;
    sub_1000FDC90();
    return;
  }

  v19 = *(v16 + 16);
  if (__OFSUB__(v19, v8))
  {
    goto LABEL_16;
  }

  sub_100071690((v17 + 24 * v8), v19 - v8, v18);
  v20 = *(v16 + 16);
  v12 = __OFADD__(v20, v15);
  v21 = v20 - v14;
  if (!v12)
  {
    *(v16 + 16) = v21;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_1000F56F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = type metadata accessor for ConnectionTransactionSerializer.Transaction(0);
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_16;
  }

  v11 = *(*(result - 8) + 80);
  v14 = v9 + ((v11 + 32) & ~v11);
  v15 = v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v17 = v15 + v12 * a3;
  if (v16)
  {
    v18 = *(v9 + 16);
    if (!__OFSUB__(v18, a2))
    {
      result = sub_1000710BC(v14 + v12 * a2, v18 - a2, v15 + v12 * a3);
      v19 = *(v9 + 16);
      v20 = __OFADD__(v19, v16);
      v21 = v19 + v16;
      if (!v20)
      {
        *(v9 + 16) = v21;
        goto LABEL_7;
      }

LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_7:
  if (a3 < 1 || v12 * a3 < 1)
  {
    return sub_1000FC404(a4, &qword_10019AB18);
  }

  for (i = 0; (i & 1) == 0; i = 1)
  {
    result = sub_100027104(a4, v15);
    v15 += v12;
    if (v15 >= v17)
    {
      return sub_1000FC404(a4, &qword_10019AB18);
    }
  }

LABEL_19:
  __break(1u);
  return result;
}

void sub_1000F5868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1000FDCA4();
  v14 = v12 - v11;
  if (__OFSUB__(v12, v11))
  {
    __break(1u);
    goto LABEL_15;
  }

  v5 = v13;
  v8 = v12;
  v15 = *v6;
  v6 = (*v6 & 0xFFFFFFFFFFFFFF8);
  v9 = v6 + 4;
  v7 = &v6[v11 + 4];
  sub_100003D44(0, &qword_10019BBA0, LNProperty_ptr);
  sub_1000064C8();
  swift_arrayDestroy();
  v16 = __OFSUB__(v5, v14);
  v14 = v5 - v14;
  if (v16)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v14)
  {
    goto LABEL_12;
  }

  v10 = v15 >> 62;
  if (!(v15 >> 62))
  {
    v17 = v6[2];
    goto LABEL_6;
  }

LABEL_16:
  v17 = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:
  if (__OFSUB__(v17, v8))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_10002CD38(&v9[v8], v17 - v8, (v7 + 8 * v5));
  if (v10)
  {
    v18 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v18 = v6[2];
  }

  if (__OFADD__(v18, v14))
  {
    goto LABEL_18;
  }

  v6[2] = v18 + v14;
LABEL_12:
  if (v5 <= 0)
  {
    sub_1000FDC90();
    return;
  }

LABEL_19:
  __break(1u);
}

uint64_t sub_1000F5954()
{
  sub_100003D44(0, &qword_100199040, LNSystemProtocol_ptr);
  sub_10001832C();
  return static NSObject.== infix(_:_:)() & 1;
}

uint64_t sub_1000F59B4(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 == a7 && a4 == a8 && a1 >> 16 == a5 >> 16 && a2 >> 16 == a6 >> 16)
  {
    return 1;
  }

  else
  {
    return _stringCompareInternal(_:_:_:_:expecting:)() & 1;
  }
}

uint64_t sub_1000F5A38()
{
  sub_100003D44(0, &unk_10019BBF0, LNValueType_ptr);
  sub_10001832C();
  return static NSObject.== infix(_:_:)() & 1;
}

uint64_t sub_1000F5A98(uint64_t a1, char a2, void *a3)
{
  v55 = a3;
  v6 = type metadata accessor for LNBundleRecord(0);
  v52 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v46 - v10;
  __chkstk_darwin(v12);
  v14 = &v46 - v13;
  v15 = sub_10002EB80(&qword_10019A480, &qword_100150FE0);
  __chkstk_darwin(v15);
  v53 = (&v46 - v18);
  v51 = *(a1 + 16);
  if (!v51)
  {
  }

  v54 = v3;
  v19 = 0;
  v20 = *(v16 + 48);
  v49 = a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v50 = v20;
  v47 = v17;
  v48 = a1;
  v46 = v11;
  while (1)
  {
    if (v19 >= *(a1 + 16))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_24;
    }

    v21 = v8;
    v22 = v53;
    sub_100009E90(v49 + *(v17 + 72) * v19, v53, &qword_10019A480, &qword_100150FE0);
    v23 = v22[1];
    v58 = *v22;
    v24 = v58;
    v59 = v23;
    v25 = v14;
    sub_1000F9F3C(v22 + v50, v14);
    v26 = *v55;
    v28 = sub_10000C2A0(v24, v23);
    v29 = v26[2];
    v30 = (v27 & 1) == 0;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_21;
    }

    v31 = v27;
    if (v26[3] >= v29 + v30)
    {
      if ((a2 & 1) == 0)
      {
        sub_10002EB80(&qword_100199C60, &qword_10014E7C8);
        _NativeDictionary.copy()();
      }
    }

    else
    {
      sub_100047270();
      v32 = sub_10000C2A0(v24, v23);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_23;
      }

      v28 = v32;
    }

    v34 = *v55;
    if (v31)
    {
      break;
    }

    v34[(v28 >> 6) + 8] |= 1 << v28;
    v38 = (v34[6] + 16 * v28);
    *v38 = v24;
    v38[1] = v23;
    v39 = v34[7] + *(v52 + 72) * v28;
    v14 = v25;
    sub_1000F9F3C(v25, v39);
    v40 = v34[2];
    v41 = __OFADD__(v40, 1);
    v42 = v40 + 1;
    if (v41)
    {
      goto LABEL_22;
    }

    v34[2] = v42;
    v8 = v21;
LABEL_15:
    ++v19;
    a2 = 1;
    v17 = v47;
    a1 = v48;
    if (v51 == v19)
    {
    }
  }

  v35 = *(v52 + 72) * v28;
  v8 = v21;
  sub_100027104(v34[7] + v35, v21);
  v36 = v46;
  v37 = v54;
  sub_1000CC104(v8, v25, v46);
  v54 = v37;
  if (!v37)
  {
    sub_100027240(v8, type metadata accessor for LNBundleRecord);
    sub_100027240(v25, type metadata accessor for LNBundleRecord);

    sub_1000FA42C(v36, v34[7] + v35);
    v14 = v25;
    goto LABEL_15;
  }

  sub_100027240(v8, type metadata accessor for LNBundleRecord);
  v60 = v54;
  swift_errorRetain();
  sub_10002EB80(&unk_100198760, &qword_10014F3C0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_100027240(v25, type metadata accessor for LNBundleRecord);
  }

LABEL_24:
  v56 = 0;
  v57 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  v44._object = 0x8000000100155680;
  v44._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v44);
  _print_unlocked<A, B>(_:_:)();
  v45._countAndFlagsBits = 39;
  v45._object = 0xE100000000000000;
  String.append(_:)(v45);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_1000F5FF8(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_1000F6E54(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
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
        goto LABEL_10;
      }
    }
  }
}

void sub_1000F6124(uint64_t a1, uint64_t a2)
{
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (!__CocoaSet.count.getter())
    {
      return;
    }
  }

  else if (!*(*v2 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100003D44(0, &unk_10019BBE0, LNFullyQualifiedActionIdentifier_ptr);
    sub_1000FB58C(&unk_10019BC40);
    Set.Iterator.init(_cocoa:)();
    a1 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
    v7 = v23;
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

  v11 = (v5 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v12 = v6;
    v13 = v7;
    v14 = v6;
    if (!v7)
    {
      break;
    }

LABEL_16:
    v15 = (v13 - 1) & v13;
    v16 = *(*(a1 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
LABEL_22:
      sub_1000B6328(a1);
      return;
    }

    while (1)
    {
      v17 = sub_1000F6F7C(v16);

      v6 = v14;
      v7 = v15;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (__CocoaSet.Iterator.next()())
      {
        sub_100003D44(0, &unk_10019BBE0, LNFullyQualifiedActionIdentifier_ptr);
        swift_dynamicCast();
        v16 = v18;
        v14 = v6;
        v15 = v7;
        if (v18)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      goto LABEL_22;
    }

    v13 = *(v4 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

void *sub_1000F635C(uint64_t a1, void *a2)
{
  v5 = a2;
  if (a2[2])
  {
    v7 = a1 + 56;
    v6 = *(a1 + 56);
    v8 = -1;
    v9 = -1 << *(a1 + 32);
    v47 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v6;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 7;

    v15 = 0;
    v49 = v12;
    v50 = v7;
    v51 = v14;
    if (v11)
    {
      while (2)
      {
        v16 = v15;
LABEL_11:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v19 = (*(v14 + 48) + ((v16 << 10) | (16 * v18)));
        v3 = *v19;
        v2 = v19[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        v20 = Hasher._finalize()();
        v21 = ~(-1 << *(v5 + 32));
        while (1)
        {
          v7 = v20 & v21;
          v4 = (v20 & v21) >> 6;
          v8 = 1 << (v20 & v21);
          if ((v8 & v13[v4]) == 0)
          {
            break;
          }

          v22 = (v5[6] + 16 * v7);
          v23 = *v22 == v3 && v22[1] == v2;
          if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            v53 = v47;
            v54 = v16;
            v55 = v11;
            v3 = v50;
            v12 = v51;
            v52[0] = v51;
            v52[1] = v50;

            v25 = *(v5 + 32);
            v44 = ((1 << v25) + 63) >> 6;
            v2 = 8 * v44;
            if ((v25 & 0x3Fu) > 0xD)
            {
              goto LABEL_49;
            }

            while (1)
            {
              v45 = &v43;
              __chkstk_darwin(v24);
              v7 = &v43 - ((v2 + 15) & 0x3FFFFFFFFFFFFFF0);
              memcpy(v7, v5 + 7, v2);
              v26 = *(v7 + 8 * v4) & ~v8;
              v27 = v5[2];
              v48 = v7;
              *(v7 + 8 * v4) = v26;
              v28 = v27 - 1;
              v29 = v49;
              while (1)
              {
                v46 = v28;
LABEL_24:
                if (!v11)
                {
                  break;
                }

LABEL_29:
                v31 = __clz(__rbit64(v11));
                v11 &= v11 - 1;
                v32 = (*(v12 + 48) + ((v16 << 10) | (16 * v31)));
                v2 = *v32;
                v33 = v32[1];
                Hasher.init(_seed:)();

                String.hash(into:)();
                v34 = Hasher._finalize()();
                v35 = ~(-1 << *(v5 + 32));
                do
                {
                  v4 = v34 & v35;
                  v7 = (v34 & v35) >> 6;
                  v8 = 1 << (v34 & v35);
                  if ((v8 & v13[v7]) == 0)
                  {

                    v3 = v50;
                    v12 = v51;
                    v29 = v49;
                    goto LABEL_24;
                  }

                  v36 = (v5[6] + 16 * v4);
                  if (*v36 == v2 && v36[1] == v33)
                  {
                    break;
                  }

                  v38 = _stringCompareWithSmolCheck(_:_:expecting:)();
                  v34 = v4 + 1;
                }

                while ((v38 & 1) == 0);

                v39 = v48[v7];
                v48[v7] = v39 & ~v8;
                v3 = v50;
                v12 = v51;
                v29 = v49;
                if ((v39 & v8) == 0)
                {
                  goto LABEL_24;
                }

                v28 = v46 - 1;
                if (__OFSUB__(v46, 1))
                {
                  __break(1u);
                }

                if (v46 == 1)
                {

                  v5 = &_swiftEmptySetSingleton;
                  goto LABEL_43;
                }
              }

              while (1)
              {
                v30 = v16 + 1;
                if (__OFADD__(v16, 1))
                {
                  break;
                }

                if (v30 >= v29)
                {
                  v5 = sub_1000F763C(v48, v44, v46, v5);
                  goto LABEL_43;
                }

                v11 = *(v3 + 8 * v30);
                ++v16;
                if (v11)
                {
                  v16 = v30;
                  goto LABEL_29;
                }
              }

              __break(1u);
LABEL_48:
              __break(1u);
LABEL_49:

              if (!swift_stdlib_isStackAllocationSafe())
              {
                break;
              }
            }

            v41 = swift_slowAlloc();
            v42 = sub_1000F752C(v41, v44, v5 + 7, v44, v5, v7, v52);

            v12 = v52[0];
            v47 = v53;
            v5 = v42;
LABEL_43:
            v14 = v12;
            goto LABEL_45;
          }

          v20 = v7 + 1;
        }

        v15 = v16;
        v7 = v50;
        v14 = v51;
        v12 = v49;
        v8 = -1;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v17 = v15;
    while (1)
    {
      v16 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_48;
      }

      if (v16 >= v12)
      {
        break;
      }

      v11 = *(v7 + 8 * v16);
      ++v17;
      if (v11)
      {
        goto LABEL_11;
      }
    }

LABEL_45:
    sub_1000B6328(v14);
  }

  else
  {

    return &_swiftEmptySetSingleton;
  }

  return v5;
}

void *sub_1000F6834(uint64_t a1, void *a2)
{
  v4 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v5 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    v2 = __CocoaSet.makeIterator()();
    sub_100003D44(0, &unk_10019BBE0, LNFullyQualifiedActionIdentifier_ptr);
    sub_1000FB58C(&unk_10019BC40);
    Set.Iterator.init(_cocoa:)();
    v5 = v63;
    v6 = v64;
    v7 = v65;
    v8 = v66;
    v9 = v67;
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = a1 + 56;
    v11 = ~v10;
    v12 = -v10;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v9 = v13 & *(a1 + 56);

    v7 = v11;
    v8 = 0;
  }

  v58 = v5;
  v59 = v6;
  v60 = v7;
  v61 = v8;
  v49 = v7;
  v14 = (v7 + 64) >> 6;
  v55 = v4 + 7;
  v62 = v9;
  v51 = v6;
  v52 = v14;
  if (v5 < 0)
  {
    goto LABEL_17;
  }

LABEL_10:
  v15 = v8;
  v16 = v9;
  v17 = v8;
  if (v9)
  {
LABEL_14:
    v3 = ((v16 - 1) & v16);
    v2 = *(*(v5 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));
    v18 = v2;
    v15 = v17;
  }

  else
  {
    while (1)
    {
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_56;
      }

      if (v17 >= v14)
      {
        break;
      }

      v16 = *(v6 + 8 * v17);
      ++v15;
      if (v16)
      {
        goto LABEL_14;
      }
    }

    v2 = 0;
    v3 = 0;
  }

  v58 = v5;
  v59 = v6;
  v60 = v49;
  v61 = v15;
  v54 = v3;
  v62 = v3;
  if (!v2)
  {
LABEL_54:
    v41 = v5;
    goto LABEL_52;
  }

LABEL_19:
  v20 = v2;
  v21 = NSObject._rawHashValue(seed:)(v4[5]);
  v53 = ~(-1 << *(v4 + 32));
  while (1)
  {
    v8 = v21 & v53;
    v6 = (v21 & v53) >> 6;
    v14 = 1 << (v21 & v53);
    if ((v14 & v55[v6]) == 0)
    {

      v8 = v15;
      v9 = v54;
      v6 = v51;
      v14 = v52;
      if ((v5 & 0x8000000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_17:
      v19 = __CocoaSet.Iterator.next()();
      if (!v19)
      {
        goto LABEL_54;
      }

      v56 = v19;
      sub_100003D44(0, &unk_10019BBE0, LNFullyQualifiedActionIdentifier_ptr);
      swift_dynamicCast();
      v2 = v57;
      v15 = v8;
      v54 = v9;
      if (!v57)
      {
        goto LABEL_54;
      }

      goto LABEL_19;
    }

    sub_100003D44(0, &unk_10019BBE0, LNFullyQualifiedActionIdentifier_ptr);
    v3 = *(v4[6] + 8 * v8);
    v2 = static NSObject.== infix(_:_:)();

    if (v2)
    {
      break;
    }

    v21 = v8 + 1;
  }

  v23 = *(v4 + 32);
  v46 = ((1 << v23) + 63) >> 6;
  v2 = 8 * v46;
  v3 = v52;
  if ((v23 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (2)
  {
    v47 = &v45;
    __chkstk_darwin(v22);
    v24 = &v45 - ((v2 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v24, v55, v2);
    v45 = 0;
    v25 = *&v24[8 * v6] & ~v14;
    v26 = v4[2];
    v53 = v24;
    *&v24[8 * v6] = v25;
    v27 = v26 - 1;
    v28 = v51;
    v6 = v54;
    v50 = v5;
LABEL_28:
    v48 = v27;
LABEL_29:
    while (2)
    {
      if (v5 < 0)
      {
        v33 = __CocoaSet.Iterator.next()();
        if (!v33)
        {
          goto LABEL_50;
        }

        v56 = v33;
        swift_dynamicCast();
        v31 = v57;
        if (!v57)
        {
          goto LABEL_50;
        }

LABEL_40:
        v54 = v6;
        v2 = v31;
        v34 = NSObject._rawHashValue(seed:)(v4[5]);
        v35 = v4;
        v8 = ~(-1 << *(v4 + 32));
        do
        {
          v36 = v34 & v8;
          v37 = (v34 & v8) >> 6;
          v38 = 1 << (v34 & v8);
          if ((v38 & v55[v37]) == 0)
          {

            v4 = v35;
            v5 = v50;
            v28 = v51;
            v3 = v52;
            v6 = v54;
            goto LABEL_29;
          }

          v14 = *(v35[6] + 8 * v36);
          v2 = static NSObject.== infix(_:_:)();

          v34 = v36 + 1;
        }

        while ((v2 & 1) == 0);

        v3 = v52;
        v39 = *(v53 + 8 * v37);
        *(v53 + 8 * v37) = v39 & ~v38;
        v40 = (v39 & v38) == 0;
        v4 = v35;
        v5 = v50;
        v28 = v51;
        v6 = v54;
        if (v40)
        {
          continue;
        }

        v27 = v48 - 1;
        if (__OFSUB__(v48, 1))
        {
          __break(1u);
        }

        if (v48 == 1)
        {

          v4 = &_swiftEmptySetSingleton;
          goto LABEL_51;
        }

        goto LABEL_28;
      }

      break;
    }

    if (v6)
    {
LABEL_35:
      v30 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v31 = *(*(v5 + 48) + ((v15 << 9) | (8 * v30)));
      v32 = v31;
LABEL_36:
      v58 = v5;
      v59 = v28;
      v60 = v49;
      v61 = v15;
      v62 = v6;
      if (!v31)
      {
LABEL_50:
        v4 = sub_1000F7858(v53, v46, v48, v4);
        goto LABEL_51;
      }

      goto LABEL_40;
    }

    while (1)
    {
      v29 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v29 >= v3)
      {
        v31 = 0;
        v6 = 0;
        goto LABEL_36;
      }

      v6 = *(v28 + 8 * v29);
      ++v15;
      if (v6)
      {
        v15 = v29;
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v43 = swift_slowAlloc();
  v44 = sub_1000F75B4(v43, v46, v55, v46, v4, v8, &v58);

  v4 = v44;
LABEL_51:
  v41 = v58;
LABEL_52:
  sub_1000B6328(v41);
  return v4;
}

uint64_t sub_1000F6E54(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((*(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
    {
      return 0;
    }

    v9 = (*(v5 + 48) + 16 * v8);
    v10 = *v9 == a1 && v9[1] == a2;
    if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v6 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v15 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100049818();
    v12 = v15;
  }

  v13 = *(*(v12 + 48) + 16 * v8);
  sub_1000F7BA0(v8);
  *v2 = v15;
  return v13;
}

uint64_t sub_1000F6F7C(void *a1)
{
  v2 = v1;
  v4 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    sub_100003D44(0, &unk_10019BBE0, LNFullyQualifiedActionIdentifier_ptr);
    v9 = NSObject._rawHashValue(seed:)(*(v4 + 40));
    v10 = ~(-1 << *(v4 + 32));
    while (1)
    {
      v11 = v9 & v10;
      if (((*(v4 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
      {
        break;
      }

      v12 = *(*(v4 + 48) + 8 * v11);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v15 = *v2;
        v17 = *v2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100049A90();
          v15 = v17;
        }

        v8 = *(*(v15 + 48) + 8 * v11);
        sub_1000F7D58(v11);
        *v2 = v17;
        return v8;
      }

      v9 = v11 + 1;
    }

    return 0;
  }

  if (v4 < 0)
  {
    v5 = *v1;
  }

  else
  {
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
  }

  v6 = a1;
  v7 = __CocoaSet.contains(_:)();

  if ((v7 & 1) == 0)
  {

    return 0;
  }

  v8 = sub_1000F7A44(v5, v6);

  return v8;
}

unint64_t *sub_1000F70FC(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v27 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (1)
  {
    v26 = v8;
LABEL_3:
    v10 = a5[3];
    v11 = a5[4];
    if (!v11)
    {
      break;
    }

    v12 = a5[3];
LABEL_8:
    v13 = (*(*a5 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v11)))));
    v15 = *v13;
    v14 = v13[1];
    a5[3] = v12;
    a5[4] = (v11 - 1) & v11;
    Hasher.init(_seed:)();

    String.hash(into:)();
    v16 = Hasher._finalize()();
    v17 = ~(-1 << *(a3 + 32));
    do
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = 1 << (v16 & v17);
      if ((v20 & *(v9 + 8 * v19)) == 0)
      {

        goto LABEL_3;
      }

      v21 = (*(a3 + 48) + 16 * v18);
      if (*v21 == v15 && v21[1] == v14)
      {
        break;
      }

      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v16 = v18 + 1;
    }

    while ((v23 & 1) == 0);

    v24 = v27[v19];
    v27[v19] = v24 & ~v20;
    if ((v24 & v20) == 0)
    {
      goto LABEL_3;
    }

    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
      goto LABEL_23;
    }

    if (v26 == 1)
    {
      return &_swiftEmptySetSingleton;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((a5[2] + 64) >> 6))
    {
      a5[3] = v10;
      a5[4] = 0;

      return sub_1000F763C(v27, a2, v26, a3);
    }

    v11 = *(a5[1] + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

void sub_1000F72E8(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (1)
  {
    v26 = v8;
LABEL_3:
    if ((*v5 & 0x8000000000000000) != 0)
    {
      if (!__CocoaSet.Iterator.next()())
      {
        goto LABEL_25;
      }

      sub_100003D44(0, &unk_10019BBE0, LNFullyQualifiedActionIdentifier_ptr);
      swift_dynamicCast();
      v13 = v29;
      if (!v29)
      {
        goto LABEL_25;
      }

      goto LABEL_15;
    }

    v11 = v5[3];
    v10 = v5[4];
    if (!v10)
    {
      break;
    }

    v12 = v5[3];
LABEL_13:
    v14 = (v10 - 1) & v10;
    v13 = *(*(*v5 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v10)))));
    v15 = v13;
LABEL_14:
    v5[3] = v11;
    v5[4] = v14;
    if (!v13)
    {
LABEL_25:

      sub_1000F7858(a1, a2, v26, a3);
      return;
    }

LABEL_15:
    v16 = NSObject._rawHashValue(seed:)(*(a3 + 40));
    v17 = ~(-1 << *(a3 + 32));
    do
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = 1 << (v16 & v17);
      if ((v20 & *(v9 + 8 * v19)) == 0)
      {

        v5 = a5;
        goto LABEL_3;
      }

      sub_100003D44(0, &unk_10019BBE0, LNFullyQualifiedActionIdentifier_ptr);
      v21 = *(*(a3 + 48) + 8 * v18);
      v22 = static NSObject.== infix(_:_:)();

      v16 = v18 + 1;
    }

    while ((v22 & 1) == 0);

    v23 = a1[v19];
    a1[v19] = v23 & ~v20;
    v24 = (v23 & v20) == 0;
    v5 = a5;
    if (v24)
    {
      goto LABEL_3;
    }

    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
      goto LABEL_27;
    }

    if (v26 == 1)
    {
      return;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= ((v5[2] + 64) >> 6))
    {
      v13 = 0;
      v14 = 0;
      goto LABEL_14;
    }

    v10 = *(v5[1] + 8 * v12);
    ++v11;
    if (v10)
    {
      v11 = v12;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
}

unint64_t *sub_1000F752C(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_1000F70FC(a1, a2, a5, a6, a7);

  return v12;
}

uint64_t sub_1000F75B4(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  sub_1000F72E8(a1, a2, a5, a6, a7);
  v13 = v12;

  return v13;
}

Swift::Int sub_1000F763C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_10002EB80(&unk_10019BB30, &unk_10014DFA0);
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
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v19 = -1 << v9[32];
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 6) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v29;
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
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

Swift::Int sub_1000F7858(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_10002EB80(&unk_100199370, &qword_10014E060);
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
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(v9[6] + 8 * v21) = v17;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
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
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1000F7A44(uint64_t a1, uint64_t a2)
{

  v2 = __CocoaSet.count.getter();
  v3 = swift_unknownObjectRetain();
  v4 = sub_1000484E0(v3, v2);
  v14 = v4;
  v5 = *(v4 + 40);

  v6 = NSObject._rawHashValue(seed:)(v5);
  v7 = ~(-1 << *(v4 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((*(v4 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
    {
      break;
    }

    sub_100003D44(0, &unk_10019BBE0, LNFullyQualifiedActionIdentifier_ptr);
    v9 = *(*(v4 + 48) + 8 * v8);
    v10 = static NSObject.== infix(_:_:)();

    if (v10)
    {

      v11 = *(*(v4 + 48) + 8 * v8);
      sub_1000F7D58(v8);
      if (static NSObject.== infix(_:_:)())
      {
        *v13 = v14;
        return v11;
      }

      __break(1u);
      break;
    }

    v6 = v8 + 1;
  }

  __break(1u);
  return result;
}

unint64_t sub_1000F7BA0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
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
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 16 * v2);
            v16 = (v14 + 16 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1000F7D58(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(*(v3 + 48) + 8 * v6);
        v12 = NSObject._rawHashValue(seed:)(v10);

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 >= v9 && v2 >= v13)
          {
LABEL_15:
            v16 = *(v3 + 48);
            v17 = (v16 + 8 * v2);
            v18 = (v16 + 8 * v6);
            if (v2 != v6 || v17 >= v18 + 1)
            {
              *v17 = *v18;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v9 || v2 >= v13)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

void sub_1000F7EEC(uint64_t (*a1)(id *), uint64_t a2)
{
  v5 = *v2;
  sub_1000F8130(a1, a2, *v2);
  if (!v3)
  {
    if (v7)
    {
      sub_1000232F4(v5);
    }

    else
    {
      v8 = v6;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
LABEL_47:
        __break(1u);
      }

      else
      {
        while (1)
        {
          v10 = v5 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v9 == v10)
          {
            break;
          }

          if ((v5 & 0xC000000000000001) != 0)
          {
            v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if ((v9 & 0x8000000000000000) != 0)
            {
              goto LABEL_39;
            }

            if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_40;
            }

            v11 = *(v5 + 8 * v9 + 32);
          }

          v12 = v11;
          v25 = v11;
          v13 = a1(&v25);

          if ((v13 & 1) == 0)
          {
            if (v8 != v9)
            {
              if ((v5 & 0xC000000000000001) != 0)
              {
                v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if ((v8 & 0x8000000000000000) != 0)
                {
                  goto LABEL_44;
                }

                v15 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v8 >= v15)
                {
                  goto LABEL_45;
                }

                if (v9 >= v15)
                {
                  goto LABEL_46;
                }

                v16 = *(v5 + 32 + 8 * v9);
                v24 = *(v5 + 32 + 8 * v8);
                v14 = v16;
              }

              v17 = v14;
              if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
              {
                v5 = sub_1000F51D0(v5);
                v18 = (v5 >> 62) & 1;
              }

              else
              {
                LODWORD(v18) = 0;
              }

              v19 = v5 & 0xFFFFFFFFFFFFFF8;
              v20 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20);
              *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v17;

              if ((v5 & 0x8000000000000000) != 0 || v18)
              {
                v5 = sub_1000F51D0(v5);
                v19 = v5 & 0xFFFFFFFFFFFFFF8;
                if ((v9 & 0x8000000000000000) != 0)
                {
LABEL_38:
                  __break(1u);
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
                  goto LABEL_47;
                }
              }

              else if ((v9 & 0x8000000000000000) != 0)
              {
                goto LABEL_38;
              }

              if (v9 >= *(v19 + 16))
              {
                goto LABEL_43;
              }

              v21 = v19 + 8 * v9;
              v22 = *(v21 + 32);
              *(v21 + 32) = v24;

              *v2 = v5;
            }

            v23 = __OFADD__(v8++, 1);
            if (v23)
            {
              goto LABEL_42;
            }
          }

          v23 = __OFADD__(v9++, 1);
          if (v23)
          {
            goto LABEL_41;
          }
        }
      }
    }
  }
}

void sub_1000F8130(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v5 = sub_1000232F4(a3);
  v6 = 0;
  while (v5 != v6)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      v7 = *(a3 + 8 * v6 + 32);
    }

    v8 = v7;
    v12 = v7;
    v9 = a1(&v12);

    if (v3 || (v9 & 1) != 0)
    {
      return;
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_1000F8230(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  while (1)
  {
    if (v7 == v6)
    {
      return 0;
    }

    v8 = type metadata accessor for ObservationStatusRegistry.ObservationStatusChangeListener(0);
    sub_10000D33C(v8);
    result = a1(a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v10 + 72) * v6);
    if (v3)
    {
      return result;
    }

    if (result)
    {
      break;
    }

    ++v6;
  }

  return v6;
}

uint64_t sub_1000F830C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = Data.InlineData.init(_:)();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = Data.LargeSlice.init(_:)();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = Data.InlineSlice.init(_:)();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1000F8390(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = type metadata accessor for Logger();
  sub_10000D33C(v4);
  v5 = sub_100004F8C();

  return sub_1000D2BCC(v5, v6, a3, v7, v8);
}

uint64_t sub_1000F8438()
{
  sub_1000070C8();
  sub_1000FD3FC();
  v0 = swift_task_alloc();
  v1 = sub_100004DC8(v0);
  *v1 = v2;
  v1[1] = sub_10000BEC4;
  sub_1000079F8();

  return sub_1000D2E08();
}

uint64_t sub_1000F84E8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v119 = &type metadata for ConcreteXPCEvent;
  v120 = &off_10018C970;
  v6 = swift_allocObject();
  v118[0] = v6;
  v7 = *(a1 + 1);
  v121 = *(a1 + 3);
  v122 = v7;
  v8 = *(a1 + 1);
  *(v6 + 16) = *a1;
  *(v6 + 32) = v8;
  *(v6 + 48) = a1[4];
  v9 = sub_1000034B4(v118, &type metadata for ConcreteXPCEvent);
  v10 = *(v9 + 1);
  v125 = *v9;
  v126 = v10;
  v127 = v9[4];
  swift_unknownObjectRetain();
  sub_10004AD94(&v122, v123);
  sub_10004ADCC(&v121, v123);
  v11 = sub_100043034();
  v13 = "LNValueTypeSpecificMetadataKey";
  if (!v12)
  {
LABEL_18:
    if (qword_100198350 != -1)
    {
      goto LABEL_82;
    }

    goto LABEL_19;
  }

  v14 = v11;
  v15 = v12;
  v16 = sub_1000034B4(v118, v119);
  v123[0] = *v16;
  v123[1] = *(v16 + 1);
  v124 = v16[4];
  v17 = sub_1000430EC();
  if (!v17)
  {

    goto LABEL_18;
  }

  v18 = v17;
  sub_1000A0C5C(0x4449656C646E7562, 0xE900000000000073, v17, &v115);
  if (!*(&v116 + 1))
  {

    sub_1000FC404(&v115, &qword_1001992F0);
    goto LABEL_18;
  }

  sub_10002EB80(&unk_10019ACC0, &qword_1001507B0);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_17:

    v13 = "LNValueTypeSpecificMetadataKey";
    goto LABEL_18;
  }

  v106 = *(v112 + 16);
  if (!v106)
  {

    goto LABEL_17;
  }

  v105 = v112;
  sub_1000A0C5C(0x686563616C507369, 0xED00007265646C6FLL, v18, &v115);

  if (*(&v116 + 1))
  {
    if (swift_dynamicCast() & 1) != 0 && (v112)
    {

      if (qword_100198350 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_10000347C(v19, qword_10019E100);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "Event ignored: application is placeholder", v22, 2u);
        goto LABEL_21;
      }

      goto LABEL_22;
    }
  }

  else
  {
    sub_1000FC404(&v115, &qword_1001992F0);
  }

  if (qword_100198350 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  v29 = sub_10000347C(v28, qword_10019E100);

  v104 = v29;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();

  v101 = a2;
  v102 = a3;
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    *&v115 = v107;
    *v32 = 136315394;
    *(v32 + 4) = sub_100004C50(v14, v15, &v115);
    *(v32 + 12) = 2080;
    v33 = Array.description.getter();
    v35 = sub_100004C50(v33, v34, &v115);
    a3 = v102;

    *(v32 + 14) = v35;
    _os_log_impl(&_mh_execute_header, v30, v31, "%s => %s", v32, 0x16u);
    swift_arrayDestroy();
  }

  v36 = v14 == 0xD00000000000002ELL && 0x8000000100157680 == v15;
  if (!v36 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v91 = v14 == 0xD000000000000030 && 0x80000001001576B0 == v15;
    if (v91 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      sub_1000034B4((a3 + OBJC_IVAR____TtC10LinkDaemon8Registry_applicationSource), *(a3 + OBJC_IVAR____TtC10LinkDaemon8Registry_applicationSource + 24));
      v92 = sub_1000F1DFC();
      v94 = v93;
      sub_1000F0920();

      v89 = v92;
      v90 = v94;
LABEL_76:
      sub_100009B18(v89, v90);
      return sub_1000034F8(v118);
    }

    v20 = Logger.logObject.getter();
    v95 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v20, v95))
    {

      return sub_1000034F8(v118);
    }

    v96 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    *&v115 = v97;
    *v96 = 136315138;
    v98 = sub_100004C50(v14, v15, &v115);

    *(v96 + 4) = v98;
    _os_log_impl(&_mh_execute_header, v20, v95, "Event ignored: unknown event name - %s", v96, 0xCu);
    sub_1000034F8(v97);

LABEL_21:

LABEL_22:

    return sub_1000034F8(v118);
  }

  v37 = 0;
  v38 = (a3 + OBJC_IVAR____TtC10LinkDaemon8Registry_applicationSource);
  v39 = v105;
  v13 = v105 + 40;
  v40 = _swiftEmptyArrayStorage;
  *&v41 = 136315138;
  v103 = v41;
  while (v106 != v37)
  {
    if (v37 >= *(v39 + 2))
    {
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      swift_once();
LABEL_19:
      v23 = type metadata accessor for Logger();
      sub_10000347C(v23, qword_10019E100);
      v20 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v20, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *&v115 = v26;
        *v25 = *(v13 + 473);
        *(v25 + 4) = sub_100004C50(0x4449656C646E7562, 0xE900000000000073, &v115);
        _os_log_impl(&_mh_execute_header, v20, v24, "Event ignored: empty name, userInfo or %s", v25, 0xCu);
        sub_1000034F8(v26);

        goto LABEL_21;
      }

      goto LABEL_22;
    }

    v43 = *(v13 - 1);
    v42 = *v13;
    sub_1000034B4(v38, v38[3]);

    sub_1000F4A78(&v115);
    if (!*(&v116 + 1))
    {

      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v107 = v40;
        v48 = v38;
        v49 = v47;
        *&v109 = v47;
        *v46 = v103;
        *(v46 + 4) = sub_100004C50(v43, v42, &v109);
        _os_log_impl(&_mh_execute_header, v44, v45, "Failed to map %s", v46, 0xCu);
        sub_1000034F8(v49);
        v38 = v48;
        v40 = v107;

        v39 = v105;
      }
    }

    v112 = v115;
    v113 = v116;
    v114 = v117;

    if (*(&v113 + 1))
    {
      sub_10001A798(&v112, &v115);
      sub_10001A798(&v115, &v112);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000702B8(0, v40[2] + 1, 1, v40);
        v40 = v58;
      }

      v51 = v40[2];
      v50 = v40[3];
      if (v51 >= v50 >> 1)
      {
        sub_1000702B8(v50 > 1, v51 + 1, 1, v40);
        v40 = v59;
      }

      v52 = sub_10001C5D0(&v112, *(&v113 + 1));
      v53 = __chkstk_darwin(v52);
      v55 = &v99 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v56 + 16))(v55, v53);
      v110 = type metadata accessor for LSLinkBundleRecord(0);
      v111 = &off_10018F930;
      v57 = sub_100013234(&v109);
      sub_1000F9F3C(v55, v57);
      v40[2] = v51 + 1;
      sub_10001A798(&v109, &v40[5 * v51 + 4]);
      sub_1000034F8(&v112);
      v39 = v105;
    }

    else
    {
      sub_1000FC404(&v112, &unk_10019BB80);
    }

    v13 += 16;
    ++v37;
  }

  v100 = v38;

  v60 = 0;
  v106 = v40[2];
  v61 = _swiftEmptyArrayStorage;
  v107 = v40;
  v13 = (v40 + 4);
  while (v106 != v60)
  {
    if (v60 >= *(v107 + 16))
    {
      goto LABEL_81;
    }

    sub_100013334(v13, &v115);
    sub_1000034B4(&v115, *(&v116 + 1));
    sub_100003D44(0, &qword_10019ACD0, LSBundleRecord_ptr);
    v71 = static LSBundleRecord.with(bundleIdentifier:allowSystemAppPlaceholder:)();
    v72 = [v71 swift_isAppIntentsEnabled];
    if ((v72 & 1) == 0)
    {

LABEL_62:
      sub_100013334(&v115, &v112);
      v76 = Logger.logObject.getter();
      v77 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        *&v109 = v79;
        *v78 = v103;
        v105 = v13;
        v81 = *(&v113 + 1);
        v80 = v114;
        sub_1000034B4(&v112, *(&v113 + 1));
        v82 = (*(*(v80 + 8) + 8))(v81);
        v84 = v83;
        sub_1000034F8(&v112);
        v85 = sub_100004C50(v82, v84, &v109);
        v13 = v105;

        *(v78 + 4) = v85;
        _os_log_impl(&_mh_execute_header, v76, v77, "%s is not link enabled", v78, 0xCu);
        sub_1000034F8(v79);
      }

      else
      {

        sub_1000034F8(&v112);
      }

      sub_1000034F8(&v115);
      goto LABEL_66;
    }

    v73 = objc_opt_self();
    v74 = String._bridgeToObjectiveC()();
    v75 = [v73 applicationWithBundleIdentifier:v74];

    LOBYTE(v74) = [v75 isHidden];
    if (v74)
    {
      goto LABEL_62;
    }

    sub_10001A798(&v115, &v112);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v108 = v61;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1000B3538(0, v61[2] + 1, 1);
      v61 = v108;
    }

    v64 = v61[2];
    v63 = v61[3];
    if (v64 >= v63 >> 1)
    {
      sub_1000B3538((v63 > 1), v64 + 1, 1);
      v61 = v108;
    }

    v65 = sub_10001C5D0(&v112, *(&v113 + 1));
    v66 = __chkstk_darwin(v65);
    v68 = &v99 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v69 + 16))(v68, v66);
    v110 = type metadata accessor for LSLinkBundleRecord(0);
    v111 = &off_10018F930;
    v70 = sub_100013234(&v109);
    sub_1000F9F3C(v68, v70);
    v61[2] = v64 + 1;
    sub_10001A798(&v109, &v61[5 * v64 + 4]);
    sub_1000034F8(&v112);
LABEL_66:
    v13 += 40;
    ++v60;
  }

  if (v61[2])
  {
    sub_1000034B4(v100, v100[3]);
    v86 = sub_1000F1DFC();
    v88 = v87;
    sub_1000F0CF8();

    v89 = v86;
    v90 = v88;
    goto LABEL_76;
  }

  return sub_1000034F8(v118);
}

uint64_t sub_1000F93C4(uint64_t *a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for LNBundleRecord(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  *&v99 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = &type metadata for ConcreteXPCEvent;
  v109 = &off_10018C970;
  v9 = swift_allocObject();
  v107[0] = v9;
  v10 = *(a1 + 1);
  v110 = *(a1 + 3);
  v111[0] = v10;
  v11 = *(a1 + 1);
  *(v9 + 16) = *a1;
  *(v9 + 32) = v11;
  *(v9 + 48) = a1[4];
  v12 = sub_1000034B4(v107, &type metadata for ConcreteXPCEvent);
  v13 = *(v12 + 1);
  v111[1] = *v12;
  v111[2] = v13;
  v112 = v12[4];
  swift_unknownObjectRetain();
  sub_10004AD94(v111, v102);
  sub_10004ADCC(&v110, v102);
  v14 = sub_1000430EC();
  if (v14)
  {
    sub_1000A0C5C(0x4449656C646E7562, 0xE900000000000073, v14, &v104);

    if (*(&v105 + 1))
    {
      sub_1000FC404(&v104, &qword_1001992F0);
      v15 = sub_1000034B4(v107, v108);
      v104 = *v15;
      v105 = *(v15 + 1);
      v106 = v15[4];
      sub_1000F84E8(&v104, a2, a3);
      return sub_1000034F8(v107);
    }
  }

  else
  {
    v104 = 0u;
    v105 = 0u;
  }

  sub_1000FC404(&v104, &qword_1001992F0);
  v16 = sub_1000034B4(v107, v108);
  v17 = v16[3];
  v18 = v16[4];
  if (v17 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
  {
  }

  else
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v21 & 1) == 0)
    {
      return sub_1000034F8(v107);
    }
  }

  if (qword_100198350 != -1)
  {
LABEL_58:
    swift_once();
  }

  v96 = a3;
  v22 = type metadata accessor for Logger();
  v23 = sub_10000347C(v22, qword_10019E100);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "Handling hidden app updates", v26, 2u);
  }

  v27 = [objc_opt_self() hiddenAppBundleIdentifiers];
  v28 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v29 = sub_10007ABAC();
  v95 = 0;
  v97 = v23;
  v30 = *(v29 + 16);
  if (v30)
  {
    *&v104 = _swiftEmptyArrayStorage;
    sub_100011438(0, v30, 0);
    v31 = v104;
    v32 = *(v7 + 80);
    v98 = v29;
    v33 = v29 + ((v32 + 32) & ~v32);
    v100 = *(v7 + 72);
    v34 = v99;
    do
    {
      sub_100027104(v33, v34);
      v7 = *v34;
      v35 = v34[1];

      sub_100027240(v34, type metadata accessor for LNBundleRecord);
      *&v104 = v31;
      v37 = v31[2];
      v36 = v31[3];
      if (v37 >= v36 >> 1)
      {
        sub_100011438(v36 > 1, v37 + 1, 1);
        v34 = v99;
        v31 = v104;
      }

      v31[2] = v37 + 1;
      v38 = &v31[2 * v37];
      v38[4] = v7;
      v38[5] = v35;
      v33 += v100;
      --v30;
    }

    while (v30);
  }

  else
  {

    v31 = _swiftEmptyArrayStorage;
  }

  a3 = v31[2];
  *&v99 = v31 + 4;
  swift_bridgeObjectRetain_n();
  v39 = 0;
  v100 = _swiftEmptyArrayStorage;
  v98 = a3;
LABEL_23:
  while (v39 != a3)
  {
    v40 = v39;
    if (v39 >= v31[2])
    {
      __break(1u);
      goto LABEL_58;
    }

    v39 = (v39 + 1);
    if (*(v28 + 16))
    {
      v41 = (v99 + 16 * v40);
      v7 = *v41;
      v42 = v41[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v43 = Hasher._finalize()();
      v44 = ~(-1 << *(v28 + 32));
      do
      {
        v45 = v43 & v44;
        if (((*(v28 + 56 + (((v43 & v44) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v43 & v44)) & 1) == 0)
        {

          goto LABEL_23;
        }

        v46 = (*(v28 + 48) + 16 * v45);
        if (*v46 == v7 && v46[1] == v42)
        {
          break;
        }

        v48 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v43 = v45 + 1;
      }

      while ((v48 & 1) == 0);
      v49 = v100;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v102[0] = v49;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100011438(0, v49[2] + 1, 1);
        v49 = v102[0];
      }

      v52 = v49[2];
      v51 = v49[3];
      if (v52 >= v51 >> 1)
      {
        sub_100011438(v51 > 1, v52 + 1, 1);
        v49 = v102[0];
      }

      v49[2] = v52 + 1;
      v100 = v49;
      v53 = &v49[2 * v52];
      v53[4] = v7;
      v53[5] = v42;
      a3 = v98;
    }
  }

  swift_bridgeObjectRelease_n();
  v103 = _swiftEmptyArrayStorage;
  v54 = (v96 + OBJC_IVAR____TtC10LinkDaemon8Registry_applicationSource);
  v55 = *sub_1000034B4((v96 + OBJC_IVAR____TtC10LinkDaemon8Registry_applicationSource), *(v96 + OBJC_IVAR____TtC10LinkDaemon8Registry_applicationSource + 24));

  v56 = v95;
  sub_1000F1FB4(v55, v31, v28, &v103);
  if (v56)
  {

    swift_errorRetain();
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *&v104 = v60;
      *v59 = 136315138;
      swift_getErrorValue();
      v61 = Error.localizedDescription.getter();
      v63 = sub_100004C50(v61, v62, &v104);

      *(v59 + 4) = v63;
      _os_log_impl(&_mh_execute_header, v57, v58, "Hidden apps update failed with error %s", v59, 0xCu);
      sub_1000034F8(v60);
    }

    else
    {
    }
  }

  else
  {
    v95 = v54;

    v65 = v100[2];
    if (v65)
    {
      v66 = v100 + 5;
      *&v64 = 136315138;
      v99 = v64;
      do
      {
        v68 = *(v66 - 1);
        v67 = *v66;

        v69 = Logger.logObject.getter();
        v70 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          *&v104 = v72;
          *v71 = v99;
          v73 = sub_100004C50(v68, v67, &v104);

          *(v71 + 4) = v73;
          _os_log_impl(&_mh_execute_header, v69, v70, "Will hide application %s", v71, 0xCu);
          sub_1000034F8(v72);
        }

        else
        {
        }

        v66 += 2;
        --v65;
      }

      while (v65);
    }

    swift_beginAccess();
    v98 = v103;
    v75 = v103[2];
    if (v75)
    {
      v76 = (v98 + 4);
      *&v74 = 136315138;
      v99 = v74;
      do
      {
        sub_100013334(v76, &v104);
        v77 = Logger.logObject.getter();
        v78 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v77, v78))
        {
          v79 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          v101 = v80;
          *v79 = v99;
          v82 = *(&v105 + 1);
          v81 = v106;
          sub_1000034B4(&v104, *(&v105 + 1));
          v83 = (*(*(v81 + 8) + 8))(v82);
          v85 = v84;
          sub_1000034F8(&v104);
          v86 = sub_100004C50(v83, v85, &v101);

          *(v79 + 4) = v86;
          _os_log_impl(&_mh_execute_header, v77, v78, "Will unhide application %s", v79, 0xCu);
          sub_1000034F8(v80);
        }

        else
        {

          sub_1000034F8(&v104);
        }

        v76 += 40;
        --v75;
      }

      while (v75);
    }

    v87 = v95;
    sub_1000034B4(v95, v95[3]);
    v88 = sub_1000F1DFC();
    v90 = v89;
    sub_1000F0920();

    sub_100009B18(v88, v90);
    sub_1000034B4(v87, v87[3]);
    v91 = sub_1000F1DFC();
    v93 = v92;
    sub_1000F0CF8();
    sub_100009B18(v91, v93);
  }

  return sub_1000034F8(v107);
}

double sub_1000F9E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_1000F9F3C(uint64_t a1, uint64_t a2)
{
  v3 = sub_100009A00();
  v4(v3);
  sub_10000482C();
  v5 = sub_1000077D8();
  v6(v5);
  return a2;
}

void sub_1000F9FFC(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1000C390C(a1);
  if (!v2)
  {
    *a2 = v4;
  }
}

void *sub_1000FA028@<X0>(uint64_t a1@<X0>, void *(*a2)(uint64_t *__return_ptr)@<X1>, void *a3@<X8>)
{
  result = sub_100060168(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1000FA054(uint64_t a1)
{
  v24 = type metadata accessor for LSLinkBundleSource();
  v25 = &off_10018EDB8;
  v23[0] = a1;
  sub_1000034B4(v23, v24);

  v2 = sub_1000F1DFC();
  v4 = v3;
  v5 = sub_10007AD78(0xD000000000000018, 0x80000001001577B0);
  v7 = v6;
  if (qword_100198200 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000347C(v8, qword_10019DBF0);
  sub_1000098F0(v2, v4);
  sub_1000FA61C(v5, v7);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  sub_100009B18(v2, v4);
  sub_10000D4DC(v5, v7);
  v11 = v7 >> 60;
  if (os_log_type_enabled(v9, v10))
  {
    v12 = swift_slowAlloc();
    v22[0] = swift_slowAlloc();
    *v12 = 136315394;
    v13 = sub_1000CCB28(v2, v4);
    v15 = sub_100004C50(v13, v14, v22);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    if (v7 >> 60 == 15)
    {
      v16 = 0xE400000000000000;
      v17 = 1701736302;
    }

    else
    {
      v17 = sub_1000CCB28(v5, v7);
      v16 = v18;
    }

    v19 = sub_100004C50(v17, v16, v22);

    *(v12 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v9, v10, "Application source version: %s\nMetadata store version: %s", v12, 0x16u);
    swift_arrayDestroy();

    v11 = v7 >> 60;
  }

  else
  {
  }

  if (v4 >> 60 != 15)
  {
    if (v11 <= 0xE)
    {
      sub_1000098F0(v2, v4);
      sub_1000098F0(v2, v4);
      sub_1000FA61C(v5, v7);
      v20 = static Data.== infix(_:_:)();
      sub_10000D4DC(v5, v7);
      sub_10000D4DC(v5, v7);
      sub_100009B18(v2, v4);
      sub_100009B18(v2, v4);
      sub_10000D4DC(v2, v4);
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (v11 <= 0xE)
  {
LABEL_13:
    sub_10000D4DC(v2, v4);
    sub_10000D4DC(v5, v7);
    v20 = 0;
    goto LABEL_15;
  }

  sub_10000D4DC(v2, v4);
  v20 = 1;
LABEL_15:
  sub_1000034F8(v23);
  return v20 & 1;
}

uint64_t sub_1000FA39C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t *, uint64_t))
{
  v13[3] = type metadata accessor for LSLinkBundleRecord(0);
  v13[4] = a4;
  sub_100013234(v13);
  sub_100013CEC();
  sub_1000F9F3C(a2, v10);
  v11 = *a3;
  *(v11 + 16) = a1 + 1;
  return a5(v13, v11 + 40 * a1 + 32);
}

uint64_t sub_1000FA42C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LNBundleRecord(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000FA490(uint64_t a1)
{
  sub_1000FDB84();
  sub_1000FCEF0();
  sub_100011414();
  v1 = swift_task_alloc();
  v2 = sub_100004DC8(v1);
  *v2 = v3;
  v2[1] = sub_10000BEC4;
  sub_1000079F8();
  sub_1000208A0();
  sub_1000FD244();

  return sub_1000F110C(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000FA534(uint64_t a1)
{
  sub_1000FDB84();
  sub_1000FCEF0();
  sub_100011414();
  v1 = swift_task_alloc();
  v2 = sub_100004DC8(v1);
  *v2 = v3;
  v2[1] = sub_10000BEC4;
  sub_1000079F8();
  sub_1000208A0();
  sub_1000FD244();

  return sub_1000F19DC(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1000FA61C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000098F0(result, a2);
  }

  return result;
}

uint64_t sub_1000FA630()
{
  sub_1000070C8();
  sub_1000FCFD8();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  v3 = sub_100004F6C(v1);

  return v4(v3);
}

uint64_t sub_1000FA6C0()
{
  sub_1000070C8();
  sub_1000FCFD8();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  v3 = sub_100004F6C(v1);

  return v4(v3);
}

uint64_t sub_1000FA750()
{
  sub_1000070C8();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  v3 = sub_100011638(v1);

  return v4(v3);
}

uint64_t sub_1000FA7E0()
{
  sub_1000070C8();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  v3 = sub_100011638(v1);

  return v4(v3);
}

uint64_t sub_1000FA870()
{
  sub_100027014();
  sub_1000036C4();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  v1[1] = sub_10000BEC4;
  sub_100091EFC();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000FA924()
{
  sub_1000070C8();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  v3 = sub_100011638(v1);

  return v4(v3);
}

uint64_t sub_1000FA9B4()
{
  sub_1000070C8();
  sub_1000FCFD8();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  v3 = sub_100004F6C(v1);

  return v4(v3);
}

uint64_t sub_1000FAA44()
{
  sub_1000070C8();
  sub_1000FCFD8();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  v3 = sub_100004F6C(v1);

  return v4(v3);
}

uint64_t sub_1000FAAD4()
{
  sub_1000070C8();
  sub_1000FCFD8();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  v3 = sub_100004F6C(v1);

  return v4(v3);
}

uint64_t sub_1000FAB64()
{
  sub_100027014();
  sub_1000036C4();
  sub_10001D3BC();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  sub_1000037F8(v1);
  sub_100091EFC();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000FABF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100013D88();
  sub_100004884();
  v10 = swift_task_alloc();
  v11 = sub_100004BD0(v10);
  *v11 = v12;
  v11[1] = sub_10000BEC4;
  sub_100012928();
  sub_100091FC0();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1000FACA8(uint64_t a1)
{
  sub_1000FDB84();
  sub_1000FCEF0();
  sub_100011414();
  v1 = swift_task_alloc();
  v2 = sub_100004DC8(v1);
  *v2 = v3;
  v2[1] = sub_10000BEC4;
  sub_1000079F8();
  sub_1000208A0();
  sub_1000FD244();

  return sub_1000E9E14(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1000FAD78()
{
  sub_100028788();
  sub_1000036C4();
  sub_100002704();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  sub_100007B80(v1);
  sub_10001A7B0();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000FAE08()
{
  sub_100013D88();
  sub_100004884();
  sub_100011414();
  v0 = swift_task_alloc();
  v1 = sub_100004DC8(v0);
  *v1 = v2;
  v1[1] = sub_10000BEC4;
  sub_1000079F8();
  sub_100091FC0();

  return sub_1000E9168(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1000FAECC()
{
  sub_100027014();
  sub_1000036C4();
  sub_10001D3BC();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  sub_1000037F8(v1);
  sub_100091EFC();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000FAF5C()
{
  sub_100028788();
  sub_1000036C4();
  sub_100002704();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  sub_100007B80(v1);
  sub_10001A7B0();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000FAFEC()
{
  sub_1000070C8();
  sub_1000FCFD8();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  v3 = sub_100004F6C(v1);

  return v4(v3);
}

uint64_t sub_1000FB07C()
{
  sub_1000070C8();
  sub_1000FCFD8();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  v3 = sub_100004F6C(v1);

  return v4(v3);
}

uint64_t sub_1000FB10C()
{
  sub_1000070C8();
  sub_1000FCFD8();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  v3 = sub_100004F6C(v1);

  return v4(v3);
}

uint64_t sub_1000FB19C()
{
  sub_1000070C8();
  sub_1000FCFD8();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  v3 = sub_100004F6C(v1);

  return v4(v3);
}

uint64_t sub_1000FB22C()
{
  sub_1000070C8();
  sub_1000FCFD8();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  v3 = sub_100004F6C(v1);

  return v4(v3);
}

uint64_t sub_1000FB2BC()
{
  sub_100028788();
  sub_1000036C4();
  sub_100002704();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  sub_100007B80(v1);
  sub_10001A7B0();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000FB34C()
{
  sub_100027014();
  sub_1000036C4();
  sub_10001D3BC();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  sub_1000037F8(v1);
  sub_100091EFC();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000FB3DC()
{
  sub_100027014();
  sub_1000036C4();
  sub_10001D3BC();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  sub_1000037F8(v1);
  sub_100091EFC();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000FB46C()
{
  sub_1000070C8();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  v3 = sub_100011638(v1);

  return v4(v3);
}

uint64_t sub_1000FB4FC()
{
  sub_1000070C8();
  sub_1000FCFD8();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  v3 = sub_100004F6C(v1);

  return v4(v3);
}

unint64_t sub_1000FB58C(uint64_t a1)
{
  result = sub_1000069E0(a1);
  if (!result)
  {
    sub_100003D44(255, v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1000FB5D8()
{
  sub_1000070C8();
  sub_1000FCFD8();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  v3 = sub_100004F6C(v1);

  return v4(v3);
}

uint64_t sub_1000FB668()
{
  sub_1000070C8();
  sub_1000FCFD8();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  v3 = sub_100004F6C(v1);

  return v4(v3);
}

uint64_t sub_1000FB6F8()
{
  sub_1000070C8();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  v3 = sub_100011638(v1);

  return v4(v3);
}

uint64_t sub_1000FB788()
{
  sub_1000070C8();
  sub_1000FCFD8();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  v3 = sub_100004F6C(v1);

  return v4(v3);
}

uint64_t sub_1000FB818()
{
  sub_100027014();
  sub_1000036C4();
  sub_10001D3BC();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  sub_1000037F8(v1);
  sub_100091EFC();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000FB8A8()
{
  sub_1000070C8();
  sub_1000FCFD8();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  v3 = sub_100004F6C(v1);

  return v4(v3);
}

uint64_t sub_1000FB938()
{
  sub_1000070C8();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  v3 = sub_100011638(v1);

  return v4(v3);
}

uint64_t sub_1000FB9C8()
{
  sub_1000070C8();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  v3 = sub_100011638(v1);

  return v4(v3);
}

uint64_t sub_1000FBA58()
{
  sub_1000070C8();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  v3 = sub_100011638(v1);

  return v4(v3);
}

uint64_t sub_1000FBAE8()
{
  sub_100028788();
  sub_1000036C4();
  sub_100002704();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  sub_100007B80(v1);
  sub_10001A7B0();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000FBB78()
{
  sub_100027014();
  sub_1000036C4();
  sub_10001D3BC();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  sub_1000037F8(v1);
  sub_100091EFC();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000FBC08()
{
  sub_1000070C8();
  sub_1000FCFD8();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  v3 = sub_100004F6C(v1);

  return v4(v3);
}

uint64_t sub_1000FBC98()
{
  sub_1000070C8();
  sub_1000FCFD8();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  v3 = sub_100004F6C(v1);

  return v4(v3);
}

uint64_t sub_1000FBD28()
{
  sub_1000070C8();
  sub_1000FCFD8();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  v3 = sub_100004F6C(v1);

  return v4(v3);
}

uint64_t sub_1000FBDB8()
{
  _Block_release(*(v0 + 24));

  v1 = sub_1000131F0();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_1000FBDF8()
{
  sub_1000070C8();
  sub_1000FCFD8();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  v3 = sub_100004F6C(v1);

  return v4(v3);
}

uint64_t sub_1000FBE88()
{
  sub_100028788();
  sub_1000036C4();
  sub_100002704();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  sub_100007B80(v1);
  sub_10001A7B0();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000FBF18()
{
  _Block_release(*(v0 + 40));

  v1 = sub_100029498();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_1000FBF60()
{
  sub_100028788();
  sub_1000036C4();
  sub_100002704();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  sub_100007B80(v1);
  sub_10001A7B0();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000FBFF0()
{
  _Block_release(*(v0 + 16));

  v1 = sub_10000EEA4();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_1000FC028()
{
  sub_1000070C8();
  v0 = swift_task_alloc();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  v3 = sub_100011638(v1);

  return v4(v3);
}

uint64_t sub_1000FC0B8()
{
  sub_1000036A0();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = sub_100004BD0(v2);
  *v3 = v4;
  v3[1] = sub_10000BFAC;

  return sub_1000D0310(v1, v0 + 24, v0 + 64);
}

void sub_1000FC1C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a2)
  {

    sub_10000D4DC(a4, a5);
  }
}

void sub_1000FC220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a2)
  {

    sub_1000FA61C(a4, a5);
  }
}

uint64_t sub_1000FC2B8()
{
  sub_1000070C8();
  sub_1000FD3FC();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = sub_100004DC8(v2);
  *v3 = v4;
  v3[1] = sub_10000BEC4;
  v5 = sub_1000079F8();

  return sub_1000CD49C(v5, v6, v7, v1);
}

uint64_t sub_1000FC358(uint64_t a1, __int128 *a2)
{
  v2 = a2[1];
  v4 = *a2;
  v5[0] = v2;
  *(v5 + 9) = *(a2 + 25);
  return sub_1000C3C7C(a1, &v4);
}

uint64_t sub_1000FC3A8(uint64_t a1, __int128 *a2)
{
  v2 = a2[1];
  v4 = *a2;
  v5[0] = v2;
  *(v5 + 9) = *(a2 + 25);
  return sub_1000C39D4(a1, &v4);
}

uint64_t sub_1000FC404(uint64_t a1, uint64_t x1_0)
{
  v4 = sub_1000FDAEC(a1, x1_0);
  sub_10002EB80(v4, v5);
  sub_10000482C();
  (*(v6 + 8))(a1);
  return a1;
}

uint64_t sub_1000FC468()
{
  sub_100027014();
  sub_1000036C4();
  sub_1000FD3FC();
  v0 = swift_task_alloc();
  v1 = sub_100004DC8(v0);
  *v1 = v2;
  v1[1] = sub_10000BEC4;
  sub_1000079F8();
  sub_100091EFC();

  return sub_1000C877C(v3, v4, v5, v6);
}

uint64_t sub_1000FC504(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_100013294(a1, a2, a3, a4);
  sub_10000482C();
  v5 = sub_1000077D8();
  v6(v5);
  return v4;
}

uint64_t sub_1000FC550()
{
  sub_100028788();
  sub_1000036C4();
  sub_100011414();
  v0 = swift_task_alloc();
  v1 = sub_100004DC8(v0);
  *v1 = v2;
  v1[1] = sub_10000BEC4;
  sub_1000079F8();
  sub_10001A7B0();

  return sub_1000C7E80(v3, v4, v5, v6, v7, v8);
}

unint64_t sub_1000FC5F0()
{
  result = qword_10019BC68;
  if (!qword_10019BC68)
  {
    sub_10002EC70(&qword_10019BC60, &qword_1001516B8);
    sub_1000FC674();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019BC68);
  }

  return result;
}

unint64_t sub_1000FC674()
{
  result = qword_10019BC70;
  if (!qword_10019BC70)
  {
    sub_10002EC70(&qword_10019BC78, &qword_1001516C0);
    sub_1000FC744(&unk_10019BC80);
    sub_1000FC7C4(&unk_10019BCA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019BC70);
  }

  return result;
}

unint64_t sub_1000FC744(uint64_t a1)
{
  result = sub_1000069E0(a1);
  if (!result)
  {
    v4 = sub_1000FDAEC(0, v3);
    sub_10002EC70(v4, v5);
    sub_100018788();
    sub_1000FC7C4(v6);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1000FC7C4(uint64_t a1)
{
  result = sub_1000069E0(a1);
  if (!result)
  {
    v4 = sub_1000FDAEC(0, v3);
    sub_10002EC70(v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1000FC804()
{
  result = qword_10019BCB8;
  if (!qword_10019BCB8)
  {
    sub_10002EC70(&qword_10019BCB0, &qword_1001516E0);
    sub_1000FC888();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019BCB8);
  }

  return result;
}

unint64_t sub_1000FC888()
{
  result = qword_10019BCC0;
  if (!qword_10019BCC0)
  {
    sub_10002EC70(&qword_10019BCC8, &qword_1001516E8);
    sub_1000FC744(&unk_10019BCD0);
    sub_1000FC7C4(&qword_10019BB00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019BCC0);
  }

  return result;
}

uint64_t sub_1000FC958(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }

  return result;
}

void sub_1000FC974(uint64_t a1)
{
  sub_1000FC9FC();
  if (v1 <= 0x3F)
  {
    sub_1000FCA24();
    if (v2 <= 0x3F)
    {
      sub_1000FCA6C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void *sub_1000FC9FC()
{
  result = qword_10019BD80;
  if (!qword_10019BD80)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_10019BD80);
  }

  return result;
}

void sub_1000FCA24()
{
  if (!qword_10019BD88)
  {
    v0 = type metadata accessor for UUID();
    if (!v1)
    {
      atomic_store(v0, &qword_10019BD88);
    }
  }
}

unint64_t sub_1000FCA6C()
{
  result = qword_10019BD90;
  if (!qword_10019BD90)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10019BD90);
  }

  return result;
}

void sub_1000FCAC8(uint64_t a1)
{
  sub_1000F4DE8(319, &qword_10019A8C0, &type metadata accessor for URL, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for LSLinkBundleRecord.RecordType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for LSLinkBundleRecord.RecordType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000FCD14()
{
  result = qword_10019BE68;
  if (!qword_10019BE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019BE68);
  }

  return result;
}

void sub_1000FCE34(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

void sub_1000FCE7C()
{
  v2 = *(v0 + 48);
}

uint64_t sub_1000FCE9C()
{

  return swift_arrayDestroy();
}

id sub_1000FCEB8(uint64_t a1)
{
  *(v1 + 4) = a1;
  *(v1 + 12) = 2082;

  return sub_100027F58();
}

uint64_t sub_1000FCED4()
{

  return swift_slowAlloc();
}

unint64_t sub_1000FCF18(float a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *v3 = a1;

  return sub_100004C50(v5, v4, va);
}

unint64_t sub_1000FCF70(float a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *v3 = a1;

  return sub_100004C50(v5, v4, va);
}

void sub_1000FCF90(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

void sub_1000FCFBC(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

uint64_t sub_1000FD060()
{

  return type metadata accessor for Logger();
}

id sub_1000FD0D4(uint64_t a1)
{
  *(v1 + 4) = a1;
  *(v1 + 12) = 2082;

  return sub_100027F58();
}

uint64_t sub_1000FD118()
{

  return sub_100061918(0, v0, sub_1000F84D0, v1);
}

void sub_1000FD150()
{
  v2 = (*(v0 + 464) + 200);

  os_unfair_lock_lock(v2);
}

void sub_1000FD178()
{
  v1[12] = sub_1000E825C;
  v1[13] = v0;
  v1[14] = v2;
}

uint64_t sub_1000FD190()
{

  return swift_slowAlloc();
}

unint64_t sub_1000FD228(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_100004C50(v2, v3, va);
}

void sub_1000FD260()
{
  v2 = v0[26];
  v3 = v0[27];
  v4 = v0[28];
  v5 = v0[29];
  v6 = v0[30];

  sub_1000FC1C0(v2, v3, v4, v5, v6);
}

void sub_1000FD280()
{
  *(v0 + 233) = 0u;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0u;

  os_unfair_lock_unlock((v0 + 200));
}

uint64_t sub_1000FD2F4()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 1024;
}

id sub_1000FD34C(uint64_t a1)
{
  *(v1 + 4) = a1;
  *(v1 + 12) = 2082;

  return sub_100027F58();
}

uint64_t sub_1000FD368()
{

  return swift_slowAlloc();
}

uint64_t sub_1000FD398()
{

  return type metadata accessor for Logger();
}

uint64_t sub_1000FD3C0(uint64_t a1)
{

  return swift_once();
}

void sub_1000FD3E0()
{
  v2 = *(v0 + 48);
}

unint64_t sub_1000FD494(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_100004C50(v3, v4, a3);
}

BOOL sub_1000FD4AC()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_1000FD4C4()
{
}

uint64_t sub_1000FD4DC()
{

  return type metadata accessor for Logger();
}

void sub_1000FD4F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  sub_1000C9340(v5, a2, a3, a4, a5);
}

void sub_1000FD554()
{
  v2 = v0[26];
  v3 = v0[27];
  v4 = v0[28];
  v5 = v0[29];
  v6 = v0[30];

  sub_1000FC1C0(v2, v3, v4, v5, v6);
}

void sub_1000FD574()
{
  *(v0 + 233) = 0u;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0u;

  os_unfair_lock_unlock((v0 + 200));
}

void sub_1000FD5E8()
{
  v2 = *(v0 + 48);
}

void sub_1000FD61C()
{
  v2 = *(v0 + 48);
}

double sub_1000FD634()
{
  *(v0 + 240) = 0;
  result = 0.0;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0u;
  return result;
}

double sub_1000FD684(void *a1)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = v6;
  a1[5] = v1;
  a1[6] = v5;
  a1[7] = v4;
  a1[8] = v3;
  a1[9] = v2;

  return result;
}

uint64_t sub_1000FD6AC()
{

  return type metadata accessor for Logger();
}

uint64_t sub_1000FD6C4()
{
  *(v0 + 16) = v1;
  sub_10001A798((v2 + 328), v0 + 40 * v3 + 32);
  sub_1000034F8((v2 + 288));
}

void sub_1000FD708(uint64_t a1@<X8>)
{
  v3 = v1 + 16 * a1;
  *(v2 + 592) = *(v3 + 32);
  *(v2 + 600) = *(v3 + 40);
}

void sub_1000FD720()
{
  v1 = *(v0[57] + 8);
  v0[79] = v1;
  v0[80] = *(v1 + 16);
}

void sub_1000FD75C()
{
  *(v0 + 16) = v1;
  v5 = v0 + 16 * v2;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
}

uint64_t sub_1000FD7C8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 632) + 40 * a1 + 32;

  return sub_100013334(v3, v1 + 248);
}

void *sub_1000FD7EC(int a1, int a2, int a3, void *aBlock)
{

  return _Block_copy(aBlock);
}

uint64_t sub_1000FD810()
{
}

void sub_1000FD82C()
{
  v1 = 34;
  v2 = 0xE100000000000000;

  String.append(_:)(*&v1);
}

uint64_t sub_1000FD848(uint64_t a1, unint64_t a2)
{
  v4 = *(*(v2 + 456) + 24);

  return sub_1000CCB28(v4, a2);
}

uint64_t sub_1000FD860()
{

  return swift_slowAlloc();
}

uint64_t sub_1000FD87C(double a1)
{
  *(v1 - 144) = a1;

  return Data.init(bytes:count:)(v1 - 144, 8);
}

double sub_1000FD898()
{

  return result;
}

uint64_t sub_1000FD8B0()
{

  return type metadata accessor for LSLinkBundleRecord(0);
}

void sub_1000FD8CC(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t sub_1000FD8E4(uint64_t a1)
{

  return BidirectionalCollection<>.joined(separator:)();
}

void sub_1000FD908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  sub_1000C9340(v5, a2, a3, a4, a5);
}

uint64_t sub_1000FD920()
{
}

uint64_t sub_1000FD938()
{
}

uint64_t sub_1000FD950()
{
}

uint64_t sub_1000FD994()
{
  sub_1000034F8((v0 + 248));
  v1 = *(v0 + 312);

  return sub_10001C5D0(v0 + 288, v1);
}

uint64_t sub_1000FDBBC()
{
  *(v1 + 656) = 1;

  return sub_100013334(v0 + 32, v1 + 248);
}

void sub_1000FDC0C(uint64_t a1)
{
  v4 = *(a1 + 20);
  v5 = *(v2 + v4);
  *(v2 + v4) = v1;
}

void sub_1000FDC2C()
{
  v2 = *(v0 + 48);
}

uint64_t sub_1000FDC78()
{

  return sub_10000D4DC(0, 0xF000000000000000);
}

uint64_t sub_1000FDED8(uint64_t a1, void *a2)
{
  type metadata accessor for CodingUserInfoKey();
  sub_10002EB80(&unk_100198750, &unk_1001518C0);
  v2 = Dictionary.init(dictionaryLiteral:)();
  LNExamplePhraseDescription.asJson(userInfo:)(v2);
  if (v3)
  {
  }

  if (qword_100198370 != -1)
  {
    sub_100007C04();
    swift_once();
  }

  memcpy(__dst, &unk_10019E150, sizeof(__dst));
  memcpy(__src, &unk_10019E150, sizeof(__src));
  sub_1000196B0(__dst, v18);
  if (qword_100198378 != -1)
  {
    sub_100002D08();
    swift_once();
  }

  sub_100003A8C(&qword_10019E200);
  <- infix<A>(_:_:)();
  sub_10002EB80(&unk_10019AAE0, &unk_10014BE30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014CE90;
  if (qword_100198388 != -1)
  {
    sub_10000726C();
    swift_once();
  }

  sub_100003A8C(&qword_10019E230);
  <- infix<A>(_:_:)();

  v6 = QueryType.insert(_:_:)(v18, inited);
  v8 = v7;
  v10 = v9;
  swift_setDeallocating();
  sub_1000B3030();
  sub_10002EBC8(v18);
  memcpy(v21, __src, sizeof(v21));
  sub_10001970C(v21);
  v22.template._countAndFlagsBits = v6;
  v22.template._object = v8;
  v22.bindings._rawValue = v10;
  Connection.run(_:)(v22);
  if (!v11)
  {
  }

  v18[0] = v11;
  swift_errorRetain();
  sub_10002EB80(&unk_100198760, &qword_10014F3C0);
  if (swift_dynamicCast())
  {

    v12 = __src[1];
    v13 = __src[2];
    v14 = __src[3];
    if (LODWORD(__src[2]) == 19)
    {
      type metadata accessor for Schema.RuntimeError(0);
      sub_100065094();
      swift_allocError();
      *v15 = 0xD0000000000000FALL;
      v15[1] = 0x8000000100155110;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    else
    {
      v16 = __src[0];
      sub_10002EC1C();
      swift_allocError();
      *v17 = v16;
      *(v17 + 8) = v12;
      *(v17 + 16) = v13;
      *(v17 + 24) = v14;
      swift_willThrow();
    }
  }
}

uint64_t sub_1000FE2C8()
{
  v0 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v1 = sub_100056DD4();
  return ExpressionType.init(_:)(0xD000000000000010, 0x8000000100154580, v0, v1);
}

uint64_t sub_1000FE32C()
{
  v0 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v1 = sub_100056DD4();
  return ExpressionType.init(_:)(0xD000000000000010, 0x8000000100155560, v0, v1);
}

uint64_t sub_1000FE390()
{
  v0 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v1 = sub_100056DD4();
  return ExpressionType.init(_:)(0x7470697263736564, 0xEB000000006E6F69, v0, v1);
}

uint64_t sub_1000FE3F8@<X0>(uint64_t a1@<X8>)
{
  if (qword_100198370 != -1)
  {
    sub_100007C04();
    swift_once();
  }

  memcpy(__dst, &unk_10019E150, sizeof(__dst));
  if (qword_1001983B0 != -1)
  {
    swift_once();
  }

  memcpy(__src, &unk_10019E338, sizeof(__src));
  v1 = memcpy(v138, __dst, 0xB0uLL);
  if (qword_100198378 != -1)
  {
    sub_100002D08();
    v1 = swift_once();
  }

  v9 = qword_10019E200;
  v10 = *algn_10019E208;
  v11 = qword_10019E210;
  sub_1000068AC(v1, v2, v3, v4, v5, v6, v7, v8, v70, v79, v88, a1, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129[0], v129[1], v129[2], v129[3], v129[4], v129[5], v129[6], v129[7], v129[8], v129[9], v129[10], v129[11], v129[12], v129[13], v129[14], v129[15], v129[16], v129[17], v129[18], v129[19], v129[20], v129[21], v130, v131, v132, v133, v134, v135[0]);
  QueryType.namespace<A>(_:)(v9, v10, v11, &type metadata for Table, &type metadata for String, &protocol witness table for Table, v12, v13, v71, v10, v9, v98, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129[0], v129[1], v129[2], v129[3], v129[4], v129[5], v129[6], v129[7], v129[8], v129[9], v129[10], v129[11]);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v129[3] = v20;
  v129[4] = &protocol witness table for Expression<A>;
  v129[0] = v15;
  v129[1] = v17;
  v129[2] = v19;
  sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
  v21 = swift_allocObject();
  v29 = v21;
  *(v21 + 16) = xmmword_10014E1F0;
  if (qword_100198380 != -1)
  {
    sub_1000080AC();
    v21 = swift_once();
  }

  v30 = qword_10019E218;
  v31 = unk_10019E220;
  v32 = qword_10019E228;
  sub_1000068AC(v21, v22, v23, v24, v25, v26, v27, v28, v72, v80, v89, v99, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129[0], v129[1], v129[2], v129[3], v129[4], v129[5], v129[6], v129[7], v129[8], v129[9], v129[10], v129[11], v129[12], v129[13], v129[14], v129[15], v129[16], v129[17], v129[18], v129[19], v129[20], v129[21], v130, v131, v132, v133, v134, v135[0]);
  QueryType.namespace<A>(_:)(v30, v31, v32, &type metadata for Table, &type metadata for String, &protocol witness table for Table, v33, v34, v73, v81, v90, v100, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129[0], v129[1], v129[2], v129[3], v129[4], v129[5], v129[6], v129[7], v129[8], v129[9], v129[10], v129[11]);
  v29[7] = v20;
  v29[8] = &protocol witness table for Expression<A>;
  v29[4] = v35;
  v29[5] = v36;
  v29[6] = v37;
  if (qword_100198388 != -1)
  {
    sub_10000726C();
    v35 = swift_once();
  }

  v44 = qword_10019E230;
  v43 = *algn_10019E238;
  v45 = qword_10019E240;
  sub_1000068AC(v35, v36, v37, v38, v39, v40, v41, v42, v74, v82, v91, v101, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129[0], v129[1], v129[2], v129[3], v129[4], v129[5], v129[6], v129[7], v129[8], v129[9], v129[10], v129[11], v129[12], v129[13], v129[14], v129[15], v129[16], v129[17], v129[18], v129[19], v129[20], v129[21], v130, v131, v132, v133, v134, v135[0]);
  QueryType.namespace<A>(_:)(v44, v43, v45, &type metadata for Table, &type metadata for String, &protocol witness table for Table, v46, v47, v75, v83, v92, v102, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129[0], v129[1], v129[2], v129[3], v129[4], v129[5], v129[6], v129[7], v129[8], v129[9], v129[10], v129[11]);
  v29[12] = v20;
  v29[13] = &protocol witness table for Expression<A>;
  v29[9] = v48;
  v29[10] = v49;
  v29[11] = v50;
  if (qword_1001983D8 != -1)
  {
    swift_once();
  }

  memcpy(v135, __src, sizeof(v135));
  QueryType.namespace<A>(_:)(qword_10019E418, unk_10019E420, qword_10019E428, &type metadata for Table, &type metadata for Int, &protocol witness table for Table, v51, v52, v76, v84, v93, v103, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129[0], v129[1], v129[2], v129[3], v129[4], v129[5], v129[6], v129[7], v129[8], v129[9], v129[10], v129[11]);
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v29[17] = sub_10002EB80(&qword_100199EC8, &unk_10014ED00);
  v29[18] = &protocol witness table for Expression<A>;
  v29[14] = v54;
  v29[15] = v56;
  v29[16] = v58;
  SchemaType.select(_:_:)(v129, v29, &type metadata for Table, &protocol witness table for Table);
  swift_setDeallocating();
  sub_100018898();
  sub_1000034F8(v129);
  memcpy(v138, v135, 0xB0uLL);
  v133 = &type metadata for Table;
  v134 = &protocol witness table for Table;
  v130 = swift_allocObject();
  memcpy((v130 + 16), __src, 0xB0uLL);
  memcpy(v129, __dst, sizeof(v129));
  sub_1000196B0(__src, &v107);
  QueryType.namespace<A>(_:)(v94, v85, v11, &type metadata for Table, &type metadata for String, &protocol witness table for Table, v59, v60, v77, v85, v94, v104, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129[0], v129[1], v129[2], v129[3], v129[4], v129[5], v129[6], v129[7], v129[8], v129[9], v129[10], v129[11]);
  if (qword_1001983B8 != -1)
  {
    swift_once();
  }

  memcpy(v129, __src, sizeof(v129));
  QueryType.namespace<A>(_:)(qword_10019E3E8, unk_10019E3F0, qword_10019E3F8, &type metadata for Table, &type metadata for String, &protocol witness table for Table, v61, v62, v78, v86, v95, v105, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129[0], v129[1], v129[2], v129[3], v129[4], v129[5], v129[6], v129[7], v129[8], v129[9], v129[10], v129[11]);
  v63 = == infix<A>(_:_:)();
  v65 = v64;
  v67 = v66;

  v106[3] = &type metadata for Table;
  v106[4] = &protocol witness table for Table;
  *v106 = swift_allocObject();
  memcpy(v129, v138, sizeof(v129));
  QueryType.join(_:_:on:)(1, &v130, v63, v65, v67, &type metadata for Table, &protocol witness table for Table, v68, &protocol witness table for String, v87, v96, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129[0], v129[1], v129[2], v129[3], v129[4], v129[5], v129[6], v129[7], v129[8], v129[9], v129[10], v129[11]);

  sub_10001970C(v138);
  return sub_1000034F8(&v130);
}

uint64_t sub_1000FE93C(void *a1, uint64_t a2)
{
  v4 = Connection.prepareRowIterator(_:)(a1);
  if (!v2)
  {
    __chkstk_darwin(v4);

    RowIterator.compactMap<A>(_:)();
    v3 = v6;
  }

  return v3;
}

uint64_t sub_1000FEA48()
{
  if (qword_100198378 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  if (qword_100198388 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  sub_1000FEBEC();
  static LNExamplePhraseDescription.fromJSON(_:)();

  return v1;
}

uint64_t sub_1000FEBB4@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

unint64_t sub_1000FEBEC()
{
  result = qword_10019B2B0;
  if (!qword_10019B2B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10019B2B0);
  }

  return result;
}

id sub_1000FEC40(uint64_t a1, uint64_t a2, char a3)
{
  v4 = String._bridgeToObjectiveC()();

  v9 = 0;
  v5 = [swift_getObjCClassFromMetadata() bundleRecordWithBundleIdentifier:v4 allowPlaceholder:a3 & 1 error:&v9];

  if (v5)
  {
    v6 = v9;
  }

  else
  {
    v7 = v9;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v5;
}

BOOL sub_1000FED2C(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v1 = __CocoaSet.count.getter();
  }

  else
  {
    v1 = *(a1 + 16);
  }

  return v1 == 0;
}

unint64_t sub_1000FED6C(uint64_t a1, void *a2, unint64_t a3)
{
  v182._countAndFlagsBits = a1;
  v182._object = a2;
  v4 = sub_10002EB80(&unk_10019BB40, &unk_100150FE8);
  __chkstk_darwin(v4 - 8);
  v179 = &v165 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v178 = &v165 - v7;
  v180 = sub_10002EB80(&unk_10019BB60, &qword_100150FF8);
  __chkstk_darwin(v180);
  v9 = &v165 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v165 - v11;
  __chkstk_darwin(v13);
  v15 = &v165 - v14;
  __chkstk_darwin(v16);
  v18 = &v165 - v17;
  __chkstk_darwin(v19);
  v21 = &v165 - v20;
  __chkstk_darwin(v22);
  v24 = &v165 - v23;
  __chkstk_darwin(v25);
  v27 = &v165 - v26;
  __chkstk_darwin(v28);
  v30 = &v165 - v29;
  v31 = *(a3 + OBJC_IVAR____TtC10LinkDaemon13MetadataStore_provider);
  v32 = v181;
  sub_1000A7FE8(v31);
  if (v32)
  {
    return a3;
  }

  a3 = v33;
  v176 = v27;
  v177 = v24;
  v173 = v9;
  v174 = v21;
  v170 = v30;
  v171 = v15;
  v175 = v12;
  v172 = v18;
  v181 = 0;
  v34 = sub_1000232F4(v33);
  v35 = 0;
  v36 = a3 & 0xC000000000000001;
  while (1)
  {
    if (v34 == v35)
    {

      v45 = _swiftEmptyArrayStorage;
      v46 = v181;
      goto LABEL_20;
    }

    if (v36)
    {
      v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v35 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_98;
      }

      v37 = *(a3 + 8 * v35 + 32);
    }

    v38 = v37;
    if (__OFADD__(v35, 1))
    {
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:

      (*(v34 + 8))(v173, v36);
LABEL_100:

      v59 = v179;
      v46 = v180;
      v60 = v172;
      sub_100103180(v175, v179);
      sub_1000075C4(v59, 0, 1, v46);
      v146 = v166;
LABEL_83:

      if (sub_1000032C4(v59, 1, v46) == 1)
      {
        sub_100003E9C(v59, &unk_10019BB40, &unk_100150FE8);
        v147 = *(v146 + 24);
        if (*(v146 + 16) >= v147 >> 1)
        {
          sub_100002AB8(v147);
          sub_100013A60();
          v146 = v164;
        }

        v148 = 0;
        sub_100007280();
        *(v151 + 32) = v149 + 25;
        *(v151 + 40) = v150;
        v187 = v146;
        goto LABEL_94;
      }

      sub_100103180(v59, v60);
      v152 = v181;
      v153 = sub_10010070C();
      v181 = v152;
      if (v152)
      {

        v145 = v60;
        goto LABEL_89;
      }

      sub_10006E3AC(v153);

      v154 = v60;
LABEL_92:
      sub_100003E9C(v154, &unk_10019BB60, &qword_100150FF8);
      goto LABEL_93;
    }

    v39 = [v37 bundleIdentifier];
    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    if (v40 == v182._countAndFlagsBits && v42 == v182._object)
    {
      break;
    }

    v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v35;
    if (v44)
    {
      goto LABEL_17;
    }
  }

LABEL_17:

  countAndFlagsBits = 0;
  v184 = 0xE000000000000000;
  _StringGuts.grow(_:)(24);
  object = v182._object;

  countAndFlagsBits = v182._countAndFlagsBits;
  v184 = object;
  v48._object = 0x80000001001579E0;
  v48._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v48);
  v49._countAndFlagsBits = countAndFlagsBits;
  v50 = v184;
  countAndFlagsBits = 0x6D32333B305B1BLL;
  v184 = 0xE700000000000000;
  v49._object = v50;
  String.append(_:)(v49);
  v51._countAndFlagsBits = 0x6D303B305B1BLL;
  v51._object = 0xE600000000000000;
  String.append(_:)(v51);

  v52 = countAndFlagsBits;
  v53 = v184;
  sub_100013A60();
  v45 = v54;
  v56 = v54[2];
  v55 = v54[3];
  v46 = v181;
  if (v56 >= v55 >> 1)
  {
    sub_100002AB8(v55);
    sub_100013A60();
    v45 = v161;
  }

  v45[2] = v56 + 1;
  v57 = &v45[2 * v56];
  v57[4] = v52;
  v57[5] = v53;
LABEL_20:
  countAndFlagsBits = 0;
  v184 = 0xE000000000000000;
  _StringGuts.grow(_:)(35);

  countAndFlagsBits = 0xD00000000000001ELL;
  v184 = 0x8000000100157A00;
  String.append(_:)(v182);
  v58._countAndFlagsBits = 3026478;
  v58._object = 0xE300000000000000;
  String.append(_:)(v58);
  v59 = countAndFlagsBits;
  v60 = v184;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_21;
  }

LABEL_105:
  sub_100013A60();
  v45 = v159;
LABEL_21:
  v62 = v45[2];
  v61 = v45[3];
  if (v62 >= v61 >> 1)
  {
    sub_100002AB8(v61);
    sub_100013A60();
    v45 = v160;
  }

  v45[2] = v62 + 1;
  v63 = &v45[2 * v62];
  v63[4] = v59;
  v63[5] = v60;
  v187 = v45;
  sub_100003D44(0, &qword_10019ACD0, LSBundleRecord_ptr);
  v64 = v182._object;

  v65 = v64;
  v66 = v46;
  v67 = sub_1000FEC40(v182._countAndFlagsBits, v65, 1);
  if (!v46)
  {
    v68 = v67;
    v69 = sub_1000FFD80(v67);
    v181 = 0;
    sub_10006E3AC(v69);

    goto LABEL_93;
  }

  v181 = 0;
  v186 = v46;
  swift_errorRetain();
  sub_10002EB80(&unk_100198760, &qword_10014F3C0);
  if (swift_dynamicCast())
  {

    v70 = countAndFlagsBits;
    a3 = v184;
    v71 = v185;
    sub_10010312C();
    swift_allocError();
    *v72 = v70;
    *(v72 + 8) = a3;
    *(v72 + 16) = v71;
    swift_willThrow();

    return a3;
  }

  v59 = v45[2];
  v73 = v45[3];
  v169 = v46;
  if (v59 >= v73 >> 1)
  {
    sub_100002AB8(v73);
    sub_100013A60();
    v45 = v162;
  }

  sub_100007280();
  *(v76 + 32) = v74 + 27;
  *(v76 + 40) = v75;
  v187 = v45;
  type metadata accessor for DaemonRecord();
  v46 = static DaemonRecord.enumerated.getter();
  v77 = sub_1000232F4(v46);
  v78 = 0;
  v60 = v46 & 0xC000000000000001;
  while (1)
  {
    if (v77 == v78)
    {

      v84 = v45;
      v59 = v45[2];
      v85 = v45[3];
      if (v59 >= v85 >> 1)
      {
        sub_100002AB8(v85);
        sub_100013A60();
        v84 = v163;
      }

      v86 = v176;
      v84[2] = v59 + 1;
      v87 = &v84[2 * v59];
      v87[4] = 0xD00000000000002CLL;
      v87[5] = 0x8000000100157A60;
      v166 = v84;
      v187 = v84;
      v165 = type metadata accessor for FrameworkRecord();
      v88 = static FrameworkRecord.enumerated.getter();
      sub_1000080C0();
      v60 = v90 & v89;
      v46 = (v91 + 63) >> 6;

      v93 = 0;
      v167 = v66;
      v168 = v92;
      if (v60)
      {
        while (1)
        {
          v94 = v93;
LABEL_49:
          v95 = __clz(__rbit64(v60)) | (v94 << 6);
          v96 = *(v88 + 48);
          v97 = type metadata accessor for URL();
          sub_100002944();
          v99 = v98;
          (*(v100 + 16))(v86, v96 + *(v100 + 72) * v95, v97);
          v101 = *(*(v88 + 56) + 8 * v95);
          v102 = v180;
          *(v86 + *(v180 + 48)) = v101;
          v103 = v86;
          v104 = v177;
          sub_100103180(v103, v177);
          v105 = v104;
          v106 = v174;
          sub_1001031F0(v105, v174);
          v107 = *(v106 + *(v102 + 48));
          v108 = v101;
          v109 = FrameworkRecord.bundleIdentifier.getter();
          v59 = v110;

          if (v109 == v182._countAndFlagsBits && v59 == v182._object)
          {
            break;
          }

          v112 = _stringCompareWithSmolCheck(_:_:expecting:)();

          (*(v99 + 8))(v106, v97);
          if (v112)
          {
            goto LABEL_63;
          }

          v60 &= v60 - 1;
          sub_100003E9C(v177, &unk_10019BB60, &qword_100150FF8);
          v93 = v94;
          v86 = v176;
          v66 = v167;
          v88 = v168;
          if (!v60)
          {
            goto LABEL_46;
          }
        }

        (*(v99 + 8))(v106, v97);
LABEL_63:

        v115 = v178;
        sub_100103180(v177, v178);
        v116 = v115;
        v117 = 0;
      }

      else
      {
        while (1)
        {
LABEL_46:
          v94 = v93 + 1;
          if (__OFADD__(v93, 1))
          {
            goto LABEL_103;
          }

          if (v94 >= v46)
          {
            break;
          }

          v60 = *(v66 + 8 * v94);
          ++v93;
          if (v60)
          {
            goto LABEL_49;
          }
        }

        v115 = v178;
        v116 = v178;
        v117 = 1;
      }

      v46 = v180;
      sub_1000075C4(v116, v117, 1, v180);
      v59 = v179;
      v60 = v172;
      a3 = v166;

      if (sub_1000032C4(v115, 1, v46) == 1)
      {
        sub_100003E9C(v115, &unk_10019BB40, &unk_100150FE8);
        a3 = v165;
        v118 = static FrameworkRecord.enumerated.getter();
        sub_1000080C0();
        v121 = v120 & v119;
        v123 = (v122 + 63) >> 6;

        v125 = 0;
        v177 = v66;
        v178 = v124;
        if (v121)
        {
          goto LABEL_70;
        }

LABEL_66:
        while (1)
        {
          v126 = v125 + 1;
          if (__OFADD__(v125, 1))
          {
            goto LABEL_104;
          }

          if (v126 >= v123)
          {

            sub_1000075C4(v59, 1, 1, v46);
            v146 = v166;
            goto LABEL_83;
          }

          v121 = *(v66 + 8 * v126);
          ++v125;
          if (v121)
          {
            v125 = v126;
            while (1)
            {
LABEL_70:
              v127 = __clz(__rbit64(v121)) | (v125 << 6);
              v128 = *(v118 + 48);
              v36 = type metadata accessor for URL();
              sub_100002944();
              v34 = v129;
              v131 = v128 + *(v130 + 72) * v127;
              v132 = v171;
              (*(v130 + 16))(v171, v131, v36);
              v133 = *(*(v118 + 56) + 8 * v127);
              *(v132 + *(v46 + 48)) = v133;
              v134 = v132;
              v135 = v175;
              sub_100103180(v134, v175);
              v136 = v173;
              sub_1001031F0(v135, v173);
              a3 = *(v136 + *(v46 + 48));
              v137 = v133;
              v138 = FrameworkRecord.hostBundleIdentifier.getter();
              v140 = v139;

              if (v140)
              {
                if (v138 == v182._countAndFlagsBits && v140 == v182._object)
                {
                  goto LABEL_99;
                }

                a3 = _stringCompareWithSmolCheck(_:_:expecting:)();

                (*(v34 + 8))(v173, v36);
                v118 = v178;
                if (a3)
                {
                  goto LABEL_100;
                }
              }

              else
              {
                (*(v34 + 8))(v136, v36);
                v118 = v178;
              }

              v121 &= v121 - 1;
              sub_100003E9C(v175, &unk_10019BB60, &qword_100150FF8);
              v59 = v179;
              v46 = v180;
              v60 = v172;
              v66 = v177;
              if (!v121)
              {
                goto LABEL_66;
              }
            }
          }
        }
      }

      v142 = v170;
      sub_100103180(v115, v170);
      v143 = v181;
      v144 = sub_10010070C();
      v181 = v143;
      if (v143)
      {

        v145 = v142;
LABEL_89:
        sub_100003E9C(v145, &unk_10019BB60, &qword_100150FF8);
        return a3;
      }

      sub_10006E3AC(v144);

      v154 = v142;
      goto LABEL_92;
    }

    if (v60)
    {
      v79 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v78 >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_102;
      }

      v79 = *(v46 + 8 * v78 + 32);
    }

    v80 = v79;
    if (__OFADD__(v78, 1))
    {
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
      goto LABEL_105;
    }

    v81 = DaemonRecord.bundleIdentifier.getter();
    a3 = v82;
    if (v81 == v182._countAndFlagsBits && v82 == v182._object)
    {

      goto LABEL_58;
    }

    v59 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v59)
    {
      break;
    }

    ++v78;
  }

  a3 = v46;
LABEL_58:

  v113 = v181;
  v114 = sub_1001001F8();
  v181 = v113;
  if (v113)
  {

    return a3;
  }

  sub_10006E3AC(v114);

LABEL_93:
  v148 = 1;
LABEL_94:
  countAndFlagsBits = v187;
  sub_10002EB80(&unk_10019ACC0, &qword_1001507B0);
  sub_10009153C();
  a3 = BidirectionalCollection<>.joined(separator:)();
  v156 = v155;

  if ((v148 & 1) == 0)
  {
    sub_10010312C();
    swift_allocError();
    *v157 = a3;
    *(v157 + 8) = v156;
    *(v157 + 16) = 1;
    swift_willThrow();
  }

  return a3;
}

uint64_t sub_1000FFBE0(uint64_t a1, uint64_t a2, char a3)
{
  sub_10002EB80(&qword_10019B0D0, &unk_100150350);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014BC40;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v7;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x706C6548776F6873;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 96) = a3;

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t sub_1000FFCC0()
{
  v0 = qword_10019BE80;

  return v0;
}

uint64_t sub_1000FFD08(uint64_t a1)
{
  v2 = sub_100103340();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000FFD44(uint64_t a1)
{
  v2 = sub_100103340();

  return Error<>._code.getter(a1, v2);
}

void *sub_1000FFD80(void *a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F8384(a1);
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      v12 = v11;
      v13 = a1;

      v14 = sub_100100984(v12);
    }

    else
    {
      sub_10002EB80(&unk_100198B60, &qword_10014E3C0);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_10014BC40;
      v48 = 0;
      v49 = 0xE000000000000000;
      _StringGuts.grow(_:)(28);

      v48 = 0xD000000000000011;
      v49 = 0x8000000100157B00;
      v17._countAndFlagsBits = v9;
      v17._object = v10;
      String.append(_:)(v17);

      v18._countAndFlagsBits = 544497952;
      v18._object = 0xE400000000000000;
      String.append(_:)(v18);
      v19 = [a1 URL];
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10003D5E8();
      v20._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v20);

      (*(v4 + 8))(v6, v3);
      v21._countAndFlagsBits = 32;
      v21._object = 0xE100000000000000;
      String.append(_:)(v21);
      v22 = [a1 description];
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      v26._countAndFlagsBits = v23;
      v26._object = v25;
      String.append(_:)(v26);

      v27._countAndFlagsBits = v48;
      v28 = v49;
      v48 = 0x6D32333B305B1BLL;
      v49 = 0xE700000000000000;
      v27._object = v28;
      String.append(_:)(v27);
      v29._countAndFlagsBits = 0x6D303B305B1BLL;
      v29._object = 0xE600000000000000;
      String.append(_:)(v29);

      v30 = v49;
      *(v16 + 32) = v48;
      *(v16 + 40) = v30;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0xE000000000000000;
      v50 = v16;
      v31 = sub_100103260(a1);
      if (v32)
      {
        v33 = v31;
        v34 = v32;
        v48 = 0;
        v49 = 0xE000000000000000;
        _StringGuts.grow(_:)(18);

        v48 = 0xD000000000000010;
        v49 = 0x8000000100157B40;
        v35._countAndFlagsBits = v33;
        v35._object = v34;
        String.append(_:)(v35);

        v36 = v48;
        v37 = v49;
        sub_100013A60();
        v16 = v38;
        v38[2] = 3;
        v38[8] = v36;
        v38[9] = v37;
        v50 = v38;
      }

      v14 = 0xD000000000000010;
      if ([a1 appProtectionHidden])
      {
        v48 = 0x6D33333B305B1BLL;
        v49 = 0xE700000000000000;
        v39._countAndFlagsBits = 0xD000000000000015;
        v39._object = 0x8000000100157B20;
        String.append(_:)(v39);
        v40._countAndFlagsBits = 0x6D303B305B1BLL;
        v40._object = 0xE600000000000000;
        String.append(_:)(v40);
        v41 = v48;
        v42 = v49;
        v43 = *(v16 + 16);
        v14 = v43 + 1;
        if (v43 >= *(v16 + 24) >> 1)
        {
          sub_100013A60();
          v16 = v47;
        }

        *(v16 + 16) = v14;
        v44 = v16 + 16 * v43;
        *(v44 + 32) = v41;
        *(v44 + 40) = v42;
        v50 = v16;
      }

      sub_100100FF0(a1);
      if (v1)
      {
      }

      else
      {
        sub_10006E3AC(v45);
        return v50;
      }
    }
  }

  else
  {
    v14 = 0x8000000100157AC0;
    sub_10010312C();
    swift_allocError();
    *v15 = 0xD000000000000039;
    *(v15 + 8) = 0x8000000100157AC0;
    *(v15 + 16) = 0;
    swift_willThrow();
  }

  return v14;
}

void *sub_1001001F8()
{
  v49 = type metadata accessor for URL();
  v47 = *(v49 - 8);
  __chkstk_darwin(v49);
  v48 = &v45 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = DaemonRecord.attributionBundleIdentifier.getter();
  v3 = v2;
  if (v2)
  {
    v4 = v1;
    v51[0] = 0;
    v51[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(18);

    v51[0] = 0x6269727474612820;
    v51[1] = 0xEF203A6E6F697475;
    v5._countAndFlagsBits = v4;
    v5._object = v3;
    String.append(_:)(v5);

    v6._countAndFlagsBits = 41;
    v6._object = 0xE100000000000000;
    String.append(_:)(v6);
    v3 = v51[0];
    v7 = v51[1];
  }

  else
  {
    v7 = 0xE000000000000000;
  }

  sub_10002EB80(&unk_100198B60, &qword_10014E3C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014E1F0;
  v51[0] = 0;
  v51[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(21);

  v51[0] = 0xD000000000000011;
  v51[1] = 0x8000000100157E50;
  v9._countAndFlagsBits = DaemonRecord.bundleIdentifier.getter();
  String.append(_:)(v9);

  v10._countAndFlagsBits = v3;
  v10._object = v7;
  String.append(_:)(v10);

  v11._countAndFlagsBits = v51[0];
  v12 = v51[1];
  strcpy(v51, "\x1B[0;32m");
  v51[1] = 0xE700000000000000;
  v11._object = v12;
  String.append(_:)(v11);
  v13._countAndFlagsBits = 0x6D303B305B1BLL;
  v13._object = 0xE600000000000000;
  String.append(_:)(v13);

  v14 = v51[1];
  *(inited + 32) = v51[0];
  *(inited + 40) = v14;
  *(inited + 48) = 0;
  *(inited + 56) = 0xE000000000000000;
  v51[0] = 0;
  v51[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(18);

  strcpy(v51, "Details for ");
  BYTE5(v51[1]) = 0;
  HIWORD(v51[1]) = -5120;
  v15._countAndFlagsBits = DaemonRecord.bundleIdentifier.getter();
  String.append(_:)(v15);

  v16._countAndFlagsBits = 8250;
  v16._object = 0xE200000000000000;
  String.append(_:)(v16);
  v17 = *(DaemonRecord.metadataURLs.getter() + 16);

  v52._countAndFlagsBits = 0xD000000000000013;
  v52._object = 0x8000000100157D50;
  v18._countAndFlagsBits = sub_100102904(v17 != 0, v52);
  String.append(_:)(v18);

  v19 = v51[1];
  *(inited + 64) = v51[0];
  *(inited + 72) = v19;
  v20 = *(DaemonRecord.metadataURLs.getter() + 16);

  if (v20)
  {
    sub_100013A60();
    v22 = v21;
    v21[2] = 4;
    v21[10] = 0x646174656D202D20;
    v21[11] = 0xEB00000000617461;
    v23 = DaemonRecord.metadataURLs.getter();
    v24 = *(v23 + 16);
    if (v24)
    {
      v25 = v47 + 16;
      v26 = *(v47 + 16);
      v27 = *(v47 + 80);
      v45 = v23;
      v28 = v23 + ((v27 + 32) & ~v27);
      v46 = *(v47 + 72);
      v47 = v26;
      v29 = (v25 - 8);
      do
      {
        v30 = v48;
        v31 = v49;
        (v47)(v48, v28, v49);
        v51[0] = 0x2020202020;
        v51[1] = 0xE500000000000000;
        v32 = URL.path(percentEncoded:)(1);
        (*v29)(v30, v31);
        String.append(_:)(v32);

        v33 = v51[0];
        v34 = v51[1];
        v35 = v22[2];
        if (v35 >= v22[3] >> 1)
        {
          sub_100013A60();
          v22 = v37;
        }

        v22[2] = v35 + 1;
        v36 = &v22[2 * v35];
        v36[4] = v33;
        v36[5] = v34;
        v28 += v46;
        --v24;
      }

      while (v24);
    }
  }

  else
  {
    v51[0] = 0;
    v51[1] = 0xE000000000000000;
    v38._object = 0xEC00000020617461;
    v38._countAndFlagsBits = 0x646174656D202D20;
    String.append(_:)(v38);
    v50._countAndFlagsBits = 0x6D31333B305B1BLL;
    v50._object = 0xE700000000000000;
    v39._countAndFlagsBits = 0x29656E6F6E28;
    v39._object = 0xE600000000000000;
    String.append(_:)(v39);
    v40._countAndFlagsBits = 0x6D303B305B1BLL;
    v40._object = 0xE600000000000000;
    String.append(_:)(v40);
    String.append(_:)(v50);

    v41 = v51[0];
    v42 = v51[1];
    sub_100013A60();
    v22 = v43;
    v43[2] = 4;
    v43[10] = v41;
    v43[11] = v42;
  }

  return v22;
}

uint64_t sub_10010070C()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002EB80(&unk_100198B60, &qword_10014E3C0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10014ECA0;
  v21 = 0;
  v22 = 0xE000000000000000;
  _StringGuts.grow(_:)(40);

  v21 = 0xD000000000000026;
  v22 = 0x8000000100157E20;
  v5._countAndFlagsBits = FrameworkRecord.bundleIdentifier.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = v21;
  v7 = v22;
  v21 = 0x6D32333B305B1BLL;
  v22 = 0xE700000000000000;
  v6._object = v7;
  String.append(_:)(v6);
  v8._countAndFlagsBits = 0x6D303B305B1BLL;
  v8._object = 0xE600000000000000;
  String.append(_:)(v8);

  v9 = v22;
  *(v4 + 32) = v21;
  *(v4 + 40) = v9;
  strcpy((v4 + 48), " - hosted by");
  *(v4 + 61) = 0;
  *(v4 + 62) = -5120;
  v21 = 538976288;
  v22 = 0xE400000000000000;
  v10 = FrameworkRecord.hostBundleIdentifier.getter();
  if (v11)
  {
    v19 = v10;
    v20 = v11;

    v12._countAndFlagsBits = 32;
    v12._object = 0xE100000000000000;
    String.append(_:)(v12);

    v13 = v19;
    v14 = v20;
  }

  else
  {
    v13 = 0;
    v14 = 0xE000000000000000;
  }

  v15 = v14;
  String.append(_:)(*&v13);

  FrameworkRecord.bundleURL.getter();
  v16 = URL.path(percentEncoded:)(1);
  (*(v1 + 8))(v3, v0);
  String.append(_:)(v16);

  v17 = v22;
  *(v4 + 64) = v21;
  *(v4 + 72) = v17;
  *(v4 + 80) = 0;
  *(v4 + 88) = 0xE000000000000000;
  return v4;
}

uint64_t sub_100100984(void *a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F8384(a1);
  if (!v8)
  {
    sub_10010312C();
    swift_allocError();
    *v48 = 0xD000000000000047;
    *(v48 + 8) = 0x8000000100157B60;
    *(v48 + 16) = 0;
    return swift_willThrow();
  }

  v9 = v7;
  v10 = v8;
  v71 = v1;
  sub_10002EB80(&unk_100198B60, &qword_10014E3C0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10014BC40;
  v72 = 0;
  v73 = 0xE000000000000000;
  _StringGuts.grow(_:)(35);

  v72 = 0xD00000000000001BLL;
  v73 = 0x8000000100157BB0;
  v12._countAndFlagsBits = v9;
  v12._object = v10;
  String.append(_:)(v12);

  v13._countAndFlagsBits = 544497952;
  v13._object = 0xE400000000000000;
  String.append(_:)(v13);
  v14 = [a1 URL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10003D5E8();
  v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v15);

  (*(v4 + 8))(v6, v3);
  v16._countAndFlagsBits = v72;
  v17 = v73;
  v72 = 0x6D32333B305B1BLL;
  v73 = 0xE700000000000000;
  v16._object = v17;
  String.append(_:)(v16);
  v18._countAndFlagsBits = 0x6D303B305B1BLL;
  v18._object = 0xE600000000000000;
  String.append(_:)(v18);

  v19 = v73;
  *(v11 + 32) = v72;
  *(v11 + 40) = v19;
  *(v11 + 48) = 0;
  *(v11 + 56) = 0xE000000000000000;
  v20 = sub_100103260(a1);
  if (v21)
  {
    v22 = v20;
    v23 = v21;
    v72 = 0;
    v73 = 0xE000000000000000;
    _StringGuts.grow(_:)(18);

    v72 = 0xD000000000000010;
    v73 = 0x8000000100157B40;
    v24._countAndFlagsBits = v22;
    v24._object = v23;
    String.append(_:)(v24);

    v25 = v72;
    v26 = v73;
    sub_100013A60();
    v11 = v27;
    v27[2] = 3;
    v27[8] = v25;
    v27[9] = v26;
  }

  if ([a1 appProtectionHidden])
  {
    v72 = 0x6D33333B305B1BLL;
    v73 = 0xE700000000000000;
    v28._countAndFlagsBits = 0xD000000000000015;
    v28._object = 0x8000000100157B20;
    String.append(_:)(v28);
    v29._countAndFlagsBits = 0x6D303B305B1BLL;
    v29._object = 0xE600000000000000;
    String.append(_:)(v29);
    v30 = v72;
    v31 = v73;
    v32 = *(v11 + 16);
    if (v32 >= *(v11 + 24) >> 1)
    {
      sub_100013A60();
      v11 = v67;
    }

    *(v11 + 16) = v32 + 1;
    v33 = v11 + 16 * v32;
    *(v33 + 32) = v30;
    *(v33 + 40) = v31;
  }

  v34 = v71;
  v35 = sub_100102844(a1);
  if (!v34)
  {
    v37 = v35;
    v38 = v36;
    v40 = LSApplicationExtensionRecord.attributionBundleIdentifier.getter();
    v41 = v39;
    if (v38)
    {
      v72 = 0;
      v73 = 0xE000000000000000;
      if (v39)
      {
        _StringGuts.grow(_:)(83);
        v42._object = 0x8000000100157C70;
        v42._countAndFlagsBits = 0xD000000000000017;
        String.append(_:)(v42);
        v43._countAndFlagsBits = v37;
        v43._object = v38;
        String.append(_:)(v43);

        v44._countAndFlagsBits = 0xD00000000000001CLL;
        v44._object = 0x8000000100157C90;
        String.append(_:)(v44);
        v45._countAndFlagsBits = v40;
        v45._object = v41;
        String.append(_:)(v45);

        v46 = ", but is also attributed to ";
        v47 = 0xD00000000000001CLL;
      }

      else
      {
        _StringGuts.grow(_:)(62);
        v55._object = 0x8000000100157C70;
        v55._countAndFlagsBits = 0xD000000000000017;
        String.append(_:)(v55);
        v56._countAndFlagsBits = v37;
        v56._object = v38;
        String.append(_:)(v56);

        v46 = "nsion is attributed to ";
        v47 = 0xD000000000000025;
      }

      v57 = v46 | 0x8000000000000000;
      String.append(_:)(*&v47);
      v53 = v72;
      v54 = v73;
      v72 = 0x6D31333B305B1BLL;
      v73 = 0xE700000000000000;
    }

    else
    {
      if (!v39)
      {
        v65 = *(v11 + 16);
        if (v65 >= *(v11 + 24) >> 1)
        {
          sub_100013A60();
          v11 = v69;
        }

        *(v11 + 16) = v65 + 1;
        v66 = v11 + 16 * v65;
        *(v66 + 32) = 0xD000000000000031;
        *(v66 + 40) = 0x8000000100157BD0;
        goto LABEL_20;
      }

      v72 = 0;
      v73 = 0xE000000000000000;
      _StringGuts.grow(_:)(78);
      v50._countAndFlagsBits = 0xD000000000000027;
      v50._object = 0x8000000100157C10;
      String.append(_:)(v50);
      v51._countAndFlagsBits = v40;
      v51._object = v41;
      String.append(_:)(v51);

      v52._countAndFlagsBits = 0xD000000000000025;
      v52._object = 0x8000000100157C40;
      String.append(_:)(v52);
      v53 = v72;
      v54 = v73;
      v72 = 0x6D31333B305B1BLL;
      v73 = 0xE700000000000000;
    }

    v58 = v54;
    String.append(_:)(*&v53);
    v59._countAndFlagsBits = 0x6D303B305B1BLL;
    v59._object = 0xE600000000000000;
    String.append(_:)(v59);

    v60 = v72;
    v61 = v73;
    v62 = *(v11 + 16);
    if (v62 >= *(v11 + 24) >> 1)
    {
      sub_100013A60();
      v11 = v68;
    }

    *(v11 + 16) = v62 + 1;
    v63 = v11 + 16 * v62;
    *(v63 + 32) = v60;
    *(v63 + 40) = v61;
LABEL_20:
    v74 = v11;
    sub_100100FF0(a1);
    sub_10006E3AC(v64);
    return v74;
  }
}

void sub_100100FF0(void *a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v217 = &v206 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v206 - v7;
  v9 = sub_1000F8384(a1);
  if (!v10)
  {
    *&v225[0] = 0xD000000000000020;
    *(&v225[0] + 1) = 0x8000000100157D20;
    v39 = [a1 URL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10003D5E8();
    v40._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v40);

    (*(v4 + 8))(v8, v3);
    v41 = v225[0];
    sub_10010312C();
    swift_allocError();
    *v42 = v41;
    *(v42 + 16) = 0;
    swift_willThrow();
    return;
  }

  v11 = v10;
  v206 = v1;
  v12 = v9;
  v13 = swift_allocObject();
  v207 = v13;
  *(v13 + 16) = _swiftEmptyArrayStorage;
  v14 = (v13 + 16);
  v15 = [a1 swift_isAppIntentsEnabled];
  v220 = v3;
  v16 = v15;
  *&v225[0] = 0;
  *(&v225[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(18);

  strcpy(v225, "Details for ");
  BYTE13(v225[0]) = 0;
  HIWORD(v225[0]) = -5120;
  v221 = v12;
  v17._countAndFlagsBits = v12;
  v216 = v11;
  v17._object = v11;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 8250;
  v18._object = 0xE200000000000000;
  String.append(_:)(v18);
  v232._object = 0x8000000100157D50;
  v232._countAndFlagsBits = 0xD000000000000013;
  v19._countAndFlagsBits = sub_100102904(v16, v232);
  String.append(_:)(v19);

  v20 = v225[0];
  sub_1000F507C();
  v21 = *(*v14 + 16);
  sub_1000F5108(v21);
  v22 = *v14;
  *(v22 + 16) = v21 + 1;
  *(v22 + 16 * v21 + 32) = v20;
  *v14 = v22;
  LOBYTE(v21) = [a1 isLinkEnabled];
  *&v225[0] = 8237;
  *(&v225[0] + 1) = 0xE200000000000000;
  v23 = [a1 URL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v24 = URL.path(percentEncoded:)(1);
  v210 = v4;
  v25 = *(v4 + 8);
  v215 = v8;
  v218 = v25;
  v219 = v4 + 8;
  v25();
  String.append(_:)(v24);

  v26._countAndFlagsBits = 32;
  v26._object = 0xE100000000000000;
  String.append(_:)(v26);
  v233._countAndFlagsBits = 0x6E49707041736168;
  v233._object = 0xED000073746E6574;
  v27._countAndFlagsBits = sub_100102904(v21, v233);
  String.append(_:)(v27);

  v28 = v225[0];
  sub_1000F507C();
  v29 = *(*v14 + 16);
  sub_1000F5108(v29);
  v30 = *v14;
  *(v30 + 16) = v29 + 1;
  *(v30 + 16 * v29 + 32) = v28;
  v231 = v14;
  *v14 = v30;
  sub_100003D44(0, &qword_10019ACD0, LSBundleRecord_ptr);
  v31 = static LSBundleRecord.appIntentsBundleRelativePathsEntitlementName.getter();
  v32 = v207;
  sub_100102A20(v31, v33, a1, v207);

  v34 = static LSBundleRecord.appIntentsBundleAbsolutePathsEntitlementName.getter();
  sub_100102A20(v34, v35, a1, v32);

  v213 = a1;
  v36 = [a1 entitlements];
  static LSBundleRecord.appIntentsEnabledEntitlementName.getter();
  v37 = String._bridgeToObjectiveC()();

  sub_100003D44(0, &qword_100198E20, NSNumber_ptr);
  v38 = [v36 objectForKey:v37 ofClass:swift_getObjCClassFromMetadata()];

  if (v38)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v223 = 0;
    v224 = 0u;
  }

  v225[0] = v223;
  v225[1] = v224;
  v43 = v216;
  if (!*(&v224 + 1))
  {
    sub_100003E9C(v225, &qword_1001992F0, &qword_10014E000);
LABEL_11:
    strcpy(v225, "- entitlement:");
    HIBYTE(v225[0]) = -18;
    v55._countAndFlagsBits = static LSBundleRecord.appIntentsEnabledEntitlementName.getter();
    String.append(_:)(v55);

    v56._countAndFlagsBits = 0x6F727020746F6E20;
    v56._object = 0xEF202C6465646976;
    String.append(_:)(v56);
    v223._countAndFlagsBits = 0;
    v223._object = 0xE000000000000000;
    v57._countAndFlagsBits = 0x6E49707041736168;
    v57._object = 0xED000073746E6574;
    String.append(_:)(v57);
    v58._countAndFlagsBits = 61;
    v58._object = 0xE100000000000000;
    String.append(_:)(v58);
    v222._countAndFlagsBits = 0x6D31333B305B1BLL;
    v222._object = 0xE700000000000000;
    v59._countAndFlagsBits = 0x65736C6166;
    v59._object = 0xE500000000000000;
    String.append(_:)(v59);
    v60._countAndFlagsBits = 0x6D303B305B1BLL;
    v60._object = 0xE600000000000000;
    String.append(_:)(v60);
    String.append(_:)(v222);

    object = v223._object;
    v61._countAndFlagsBits = v223._countAndFlagsBits;
    v223._countAndFlagsBits = 1831951131;
    v223._object = 0xE400000000000000;
    v61._object = object;
    String.append(_:)(v61);
    v54 = 0x6D303B305B1BLL;
    goto LABEL_12;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  countAndFlagsBits = v222._countAndFlagsBits;
  v45 = [v222._countAndFlagsBits BOOLValue];

  if (!v45)
  {
    goto LABEL_11;
  }

  strcpy(v225, "- entitlement:");
  HIBYTE(v225[0]) = -18;
  v46._countAndFlagsBits = static LSBundleRecord.appIntentsEnabledEntitlementName.getter();
  String.append(_:)(v46);

  v47._countAndFlagsBits = 32;
  v47._object = 0xE100000000000000;
  String.append(_:)(v47);
  v223._countAndFlagsBits = 0;
  v223._object = 0xE000000000000000;
  v48._countAndFlagsBits = 0x6E49707041736168;
  v48._object = 0xED000073746E6574;
  String.append(_:)(v48);
  v49._countAndFlagsBits = 61;
  v49._object = 0xE100000000000000;
  String.append(_:)(v49);
  v222._countAndFlagsBits = 0x6D32333B305B1BLL;
  v222._object = 0xE700000000000000;
  v50._countAndFlagsBits = 1702195828;
  v50._object = 0xE400000000000000;
  String.append(_:)(v50);
  v51._countAndFlagsBits = 0x6D303B305B1BLL;
  v51._object = 0xE600000000000000;
  String.append(_:)(v51);
  String.append(_:)(v222);

  v53 = v223._object;
  v52._countAndFlagsBits = v223._countAndFlagsBits;
  v223._countAndFlagsBits = 1831951131;
  v223._object = 0xE400000000000000;
  v52._object = v53;
  String.append(_:)(v52);
  v54 = 0x6D303B305B1BLL;
LABEL_12:
  v63 = 0xE600000000000000;
  String.append(_:)(*&v54);

  String.append(_:)(v223);

  v64 = v225[0];
  v65 = v231;
  swift_beginAccess();
  sub_1000F507C();
  v66 = *(*v65 + 16);
  sub_1000F5108(v66);
  v67 = *v65;
  *(v67 + 16) = v66 + 1;
  *(v67 + 16 * v66 + 32) = v64;
  *v65 = v67;
  swift_endAccess();
  objc_opt_self();
  v68 = swift_dynamicCastObjCClass();
  if (v68)
  {
    v69 = [v68 applicationExtensionRecords];
    v70 = sub_100003D44(0, &unk_10019BB50, LSApplicationExtensionRecord_ptr);
    sub_1001032C4();
    v211 = v70;
    v71 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    if (sub_1000FED2C(v71))
    {

      *&v225[0] = 0;
      *(&v225[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(24);
      v72._countAndFlagsBits = 0xD000000000000016;
      v72._object = 0x8000000100157DD0;
      String.append(_:)(v72);
      v223._countAndFlagsBits = 1831951131;
      v223._object = 0xE400000000000000;
      v73._countAndFlagsBits = 0x29656E6F6E28;
      v73._object = 0xE600000000000000;
      String.append(_:)(v73);
      v74._countAndFlagsBits = 0x6D303B305B1BLL;
      v74._object = 0xE600000000000000;
      String.append(_:)(v74);
      String.append(_:)(v223);

      v75 = v225[0];
      swift_beginAccess();
      sub_1000F507C();
      v76 = *(*v65 + 16);
      sub_1000F5108(v76);
      v77 = *v65;
      *(v77 + 16) = v76 + 1;
      *(v77 + 16 * v76 + 32) = v75;
      *v65 = v77;
      swift_endAccess();
    }

    else
    {
      swift_beginAccess();
      sub_1000F507C();
      v78 = *(*v65 + 16);
      sub_1000F5108(v78);
      v79 = *v65;
      *(v79 + 16) = v78 + 1;
      v80 = v79 + 16 * v78;
      *(v80 + 32) = 0xD000000000000015;
      *(v80 + 40) = 0x8000000100157DB0;
      *v65 = v79;
      swift_endAccess();
      v81 = v71;
      if ((v71 & 0xC000000000000001) != 0)
      {
        __CocoaSet.makeIterator()();
        Set.Iterator.init(_cocoa:)();
        v81 = v226;
        v82 = v227;
        v83 = v228;
        v84 = v229;
        v85 = v230;
      }

      else
      {
        v84 = 0;
        v86 = -1 << *(v71 + 32);
        v82 = v71 + 56;
        v83 = ~v86;
        v87 = -v86;
        if (v87 < 64)
        {
          v88 = ~(-1 << v87);
        }

        else
        {
          v88 = -1;
        }

        v85 = v88 & *(v71 + 56);
      }

      v209 = v83;
      v89 = (v83 + 64) >> 6;
      v212 = v81;
      if (v81 < 0)
      {
        goto LABEL_28;
      }

      while (1)
      {
        v90 = v84;
        v91 = v85;
        v92 = v84;
        if (!v85)
        {
          break;
        }

LABEL_26:
        v93 = (v91 - 1) & v91;
        v94 = *(*(v81 + 48) + ((v92 << 9) | (8 * __clz(__rbit64(v91)))));
        if (!v94)
        {
          goto LABEL_39;
        }

        while (1)
        {
          v214 = v93;
          v96 = v94;
          v97 = [v96 swift_isAppIntentsEnabled];
          *&v225[0] = 538976288;
          *(&v225[0] + 1) = 0xE400000000000000;
          v98 = sub_100090B70(v96);
          if (v99)
          {
            v100 = v99;
          }

          else
          {
            v98 = 0x6E776F6E6B6E753CLL;
            v100 = 0xE90000000000003ELL;
          }

          v101 = v100;
          String.append(_:)(*&v98);

          v102._countAndFlagsBits = 32;
          v102._object = 0xE100000000000000;
          String.append(_:)(v102);
          v234._countAndFlagsBits = 0x6E49707041736168;
          v234._object = 0xED000073746E6574;
          v103._countAndFlagsBits = sub_100102904(v97, v234);
          String.append(_:)(v103);

          v104 = v225[0];
          swift_beginAccess();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100013A60();
            v79 = v106;
          }

          v105 = *(v79 + 16);
          if (v105 >= *(v79 + 24) >> 1)
          {
            sub_100013A60();
            v79 = v107;
          }

          *(v79 + 16) = v105 + 1;
          *(v79 + 16 * v105 + 32) = v104;
          *v231 = v79;
          swift_endAccess();

          v84 = v92;
          v85 = v214;
          v43 = v216;
          v81 = v212;
          if ((v212 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_28:
          v95 = __CocoaSet.Iterator.next()();
          if (v95)
          {
            v223._countAndFlagsBits = v95;
            swift_dynamicCast();
            v94 = *&v225[0];
            v92 = v84;
            v93 = v85;
            if (*&v225[0])
            {
              continue;
            }
          }

          goto LABEL_39;
        }
      }

      while (1)
      {
        v92 = v90 + 1;
        if (__OFADD__(v90, 1))
        {
          goto LABEL_122;
        }

        if (v92 >= v89)
        {
          break;
        }

        v91 = *(v82 + 8 * v92);
        ++v90;
        if (v91)
        {
          goto LABEL_26;
        }
      }

LABEL_39:
      sub_100014464(v81);
    }
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    goto LABEL_75;
  }

  sub_100003D44(0, &unk_10019BB50, LSApplicationExtensionRecord_ptr);
  v108 = static LSApplicationExtensionRecord.enumeratedStandaloneAppIntentsExtensions.getter();
  *&v225[0] = _swiftEmptyArrayStorage;
  v109 = sub_1000232F4(v108);
  for (i = 0; v109 != i; ++i)
  {
    if ((v108 & 0xC000000000000001) != 0)
    {
      v111 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_121;
      }

      v111 = *(v108 + 8 * i + 32);
    }

    v112 = v111;
    if (__OFADD__(i, 1))
    {
      goto LABEL_120;
    }

    v113 = LSApplicationExtensionRecord.attributionBundleIdentifier.getter();
    if (!v114)
    {
LABEL_53:

      continue;
    }

    if (v113 == v221 && v114 == v43)
    {
    }

    else
    {
      v116 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v116 & 1) == 0)
      {
        goto LABEL_53;
      }
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  v117 = *&v225[0];
  if (sub_1000232F4(*&v225[0]))
  {
    v118 = v231;
    swift_beginAccess();
    sub_1000F507C();
    v119 = *(*v118 + 16);
    sub_1000F5108(v119);
    v120 = *v118;
    *(v120 + 16) = v119 + 1;
    v121 = v120 + 16 * v119;
    *(v121 + 32) = 0xD000000000000017;
    *(v121 + 40) = 0x8000000100157D70;
    *v118 = v120;
    swift_endAccess();
    v122 = sub_1000232F4(v117);
    if (v122)
    {
      if (v122 < 1)
      {
        goto LABEL_124;
      }

      v123 = 0;
      v214 = v117 & 0xC000000000000001;
      v124 = v117;
      v125 = v122;
      do
      {
        if (v214)
        {
          v126 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v126 = *(v117 + 8 * v123 + 32);
        }

        *&v225[0] = 538976288;
        *(&v225[0] + 1) = 0xE400000000000000;
        v127 = v126;
        v128 = sub_100090B70(v127);
        if (v129)
        {
          v130 = v129;
        }

        else
        {
          v128 = 0x6E776F6E6B6E753CLL;
          v130 = 0xE90000000000003ELL;
        }

        v131 = v130;
        String.append(_:)(*&v128);

        v132._countAndFlagsBits = 32;
        v132._object = 0xE100000000000000;
        String.append(_:)(v132);
        v133 = [v127 URL];

        v134 = v215;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v135 = URL.path(percentEncoded:)(1);
        (v218)(v134, v220);
        String.append(_:)(v135);

        v136._countAndFlagsBits = 32;
        v136._object = 0xE100000000000000;
        String.append(_:)(v136);
        v223._countAndFlagsBits = 0;
        v223._object = 0xE000000000000000;
        v137._countAndFlagsBits = 0x6E49707041736168;
        v137._object = 0xED000073746E6574;
        String.append(_:)(v137);
        v138._countAndFlagsBits = 61;
        v138._object = 0xE100000000000000;
        String.append(_:)(v138);
        v222._countAndFlagsBits = 0x6D32333B305B1BLL;
        v222._object = 0xE700000000000000;
        v139._countAndFlagsBits = 1702195828;
        v139._object = 0xE400000000000000;
        String.append(_:)(v139);
        v140._countAndFlagsBits = 0x6D303B305B1BLL;
        v140._object = 0xE600000000000000;
        String.append(_:)(v140);
        String.append(_:)(v222);

        v142 = v223._object;
        v141._countAndFlagsBits = v223._countAndFlagsBits;
        v223._countAndFlagsBits = 1831951131;
        v223._object = 0xE400000000000000;
        v141._object = v142;
        String.append(_:)(v141);
        v143._countAndFlagsBits = 0x6D303B305B1BLL;
        v143._object = 0xE600000000000000;
        String.append(_:)(v143);

        String.append(_:)(v223);

        v144 = v225[0];
        swift_beginAccess();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100013A60();
          v120 = v146;
        }

        v145 = *(v120 + 16);
        if (v145 >= *(v120 + 24) >> 1)
        {
          sub_100013A60();
          v120 = v147;
        }

        ++v123;
        *(v120 + 16) = v145 + 1;
        *(v120 + 16 * v145 + 32) = v144;
        *v231 = v120;
        swift_endAccess();

        v43 = v216;
        v117 = v124;
      }

      while (v125 != v123);
    }
  }

  else
  {

    *&v225[0] = 0;
    *(&v225[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(26);
    v148._countAndFlagsBits = 0xD000000000000018;
    v148._object = 0x8000000100157D90;
    String.append(_:)(v148);
    v223._countAndFlagsBits = 1831951131;
    v223._object = 0xE400000000000000;
    v149._countAndFlagsBits = 0x29656E6F6E28;
    v149._object = 0xE600000000000000;
    String.append(_:)(v149);
    v150._countAndFlagsBits = 0x6D303B305B1BLL;
    v150._object = 0xE600000000000000;
    String.append(_:)(v150);
    String.append(_:)(v223);

    v151 = v225[0];
    v152 = v231;
    swift_beginAccess();
    sub_1000F507C();
    v153 = *(*v152 + 16);
    sub_1000F5108(v153);
    v154 = *v152;
    *(v154 + 16) = v153 + 1;
    *(v154 + 16 * v153 + 32) = v151;
    *v152 = v154;
    swift_endAccess();
  }

LABEL_75:
  type metadata accessor for DaemonRecord();
  v155 = static DaemonRecord.enumerated.getter();
  *&v225[0] = _swiftEmptyArrayStorage;
  v156 = sub_1000232F4(v155);
  v157 = 0;
  while (2)
  {
    if (v156 == v157)
    {

      v164 = *&v225[0];
      if (sub_1000232F4(*&v225[0]))
      {
        v165 = v231;
        swift_beginAccess();
        sub_1000F507C();
        v166 = *(*v165 + 16);
        sub_1000F5108(v166);
        v167 = *v165;
        *(v167 + 16) = v166 + 1;
        v168 = v167 + 16 * v166;
        *(v168 + 32) = 0x6E6F6D656164202DLL;
        *(v168 + 40) = 0xE900000000000073;
        *v165 = v167;
        swift_endAccess();
        v212 = sub_1000232F4(v164);
        if (v212)
        {
          v169 = 0;
          v211 = v164 & 0xC000000000000001;
          v208 = v164 + 32;
          v170 = v210;
          v216 = (v210 + 16);
          v209 = v164;
          do
          {
            if (v211)
            {
              v171 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v169 >= *(v164 + 16))
              {
                goto LABEL_123;
              }

              v171 = *(v208 + 8 * v169);
            }

            if (__OFADD__(v169++, 1))
            {
              goto LABEL_119;
            }

            *&v225[0] = 538976288;
            *(&v225[0] + 1) = 0xE400000000000000;
            v215 = v171;
            v173._countAndFlagsBits = DaemonRecord.bundleIdentifier.getter();
            String.append(_:)(v173);

            v174._countAndFlagsBits = 32;
            v174._object = 0xE100000000000000;
            String.append(_:)(v174);
            v223._countAndFlagsBits = 0;
            v223._object = 0xE000000000000000;
            v175._countAndFlagsBits = 0x6E49707041736168;
            v175._object = 0xED000073746E6574;
            String.append(_:)(v175);
            v176._countAndFlagsBits = 61;
            v176._object = 0xE100000000000000;
            String.append(_:)(v176);
            v222._countAndFlagsBits = 0x6D32333B305B1BLL;
            v222._object = 0xE700000000000000;
            v177._countAndFlagsBits = 1702195828;
            v177._object = 0xE400000000000000;
            String.append(_:)(v177);
            v178._countAndFlagsBits = 0x6D303B305B1BLL;
            v178._object = 0xE600000000000000;
            String.append(_:)(v178);
            String.append(_:)(v222);

            v180 = v223._object;
            v179._countAndFlagsBits = v223._countAndFlagsBits;
            v223._countAndFlagsBits = 1831951131;
            v223._object = 0xE400000000000000;
            v179._object = v180;
            String.append(_:)(v179);
            v181._countAndFlagsBits = 0x6D303B305B1BLL;
            v181._object = 0xE600000000000000;
            String.append(_:)(v181);

            String.append(_:)(v223);

            v182 = v225[0];
            swift_beginAccess();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_100013A60();
              v167 = v197;
            }

            v183 = *(v167 + 16);
            if (v183 >= *(v167 + 24) >> 1)
            {
              sub_100013A60();
              v167 = v198;
            }

            *(v167 + 16) = v183 + 1;
            *(v167 + 16 * v183 + 32) = v182;
            *v165 = v167;
            swift_endAccess();
            v184 = v215;
            v185 = DaemonRecord.metadataURLs.getter();
            v186 = *(v185 + 16);
            if (v186)
            {
              v214 = v169;
              v187 = (*(v170 + 80) + 32) & ~*(v170 + 80);
              v213 = v185;
              v188 = v185 + v187;
              v221 = *(v170 + 72);
              v189 = *(v170 + 16);
              do
              {
                v190 = v217;
                v191 = v220;
                v189(v217, v188, v220);
                *&v225[0] = 0x7275202020202020;
                *(&v225[0] + 1) = 0xEB00000000203A6CLL;
                v192 = URL.path(percentEncoded:)(1);
                (v218)(v190, v191);
                String.append(_:)(v192);

                v193 = v225[0];
                swift_beginAccess();
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_100013A60();
                  v167 = v195;
                }

                v194 = *(v167 + 16);
                if (v194 >= *(v167 + 24) >> 1)
                {
                  sub_100013A60();
                  v167 = v196;
                }

                *(v167 + 16) = v194 + 1;
                *(v167 + 16 * v194 + 32) = v193;
                v165 = v231;
                *v231 = v167;
                swift_endAccess();
                v188 += v221;
                --v186;
              }

              while (v186);

              v170 = v210;
              v164 = v209;
              v169 = v214;
              v184 = v215;
            }

            else
            {
            }
          }

          while (v169 != v212);
        }
      }

      else
      {

        *&v225[0] = 0;
        *(&v225[0] + 1) = 0xE000000000000000;
        v199._countAndFlagsBits = 0x6E6F6D656164202DLL;
        v199._object = 0xEA00000000002073;
        String.append(_:)(v199);
        v223._countAndFlagsBits = 1831951131;
        v223._object = 0xE400000000000000;
        v200._countAndFlagsBits = 0x29656E6F6E28;
        v200._object = 0xE600000000000000;
        String.append(_:)(v200);
        v201._countAndFlagsBits = 0x6D303B305B1BLL;
        v201._object = 0xE600000000000000;
        String.append(_:)(v201);
        String.append(_:)(v223);

        v202 = v225[0];
        v203 = v231;
        swift_beginAccess();
        sub_1000F507C();
        v204 = *(*v203 + 16);
        sub_1000F5108(v204);
        v205 = *v203;
        *(v205 + 16) = v204 + 1;
        *(v205 + 16 * v204 + 32) = v202;
        *v203 = v205;
        swift_endAccess();
      }

      return;
    }

    if ((v155 & 0xC000000000000001) != 0)
    {
      v158 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v157 >= *((v155 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_118;
      }

      v158 = *(v155 + 8 * v157 + 32);
    }

    v159 = v158;
    if (!__OFADD__(v157, 1))
    {
      v160 = DaemonRecord.attributionBundleIdentifier.getter();
      if (!v161)
      {
        goto LABEL_87;
      }

      if (v160 == v221 && v161 == v43)
      {
      }

      else
      {
        v163 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v163 & 1) == 0)
        {
LABEL_87:

LABEL_90:
          ++v157;
          continue;
        }
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      goto LABEL_90;
    }

    break;
  }

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
}

unint64_t sub_100102844(void *a1)
{
  v1 = [a1 containingBundleRecord];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1000F8384(v1);
  if (v4)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x8000000100157CD0;
    sub_10010312C();
    swift_allocError();
    *v6 = 0xD000000000000041;
    *(v6 + 8) = 0x8000000100157CD0;
    *(v6 + 16) = 0;
    swift_willThrow();
  }

  return v5;
}

uint64_t sub_100102904(char a1, Swift::String a2)
{
  String.append(_:)(a2);
  v3._countAndFlagsBits = 61;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  v4 = (a1 & 1) == 0;
  if (a1)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v4)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v4)
  {
    v7 = 3;
  }

  else
  {
    v7 = 1;
  }

  v14._countAndFlagsBits = sub_1001030A4(v7);
  v14._object = v8;
  v9._countAndFlagsBits = v5;
  v9._object = v6;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0x6D303B305B1BLL;
  v10._object = 0xE600000000000000;
  String.append(_:)(v10);
  String.append(_:)(v14);

  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 0x6D303B305B1BLL;
  v12._object = 0xE600000000000000;
  String.append(_:)(v12);

  return 1831951131;
}

uint64_t sub_100102A20(uint64_t a1, void *a2, id a3, uint64_t a4)
{
  v7 = [a3 entitlements];
  v8 = String._bridgeToObjectiveC()();
  sub_100003D44(0, &qword_100199510, NSArray_ptr);
  v9 = [v7 objectForKey:v8 ofClass:swift_getObjCClassFromMetadata()];

  if (!v9)
  {
    goto LABEL_11;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100004D14(v65, &v63);
  sub_10002EB80(&unk_10019ACC0, &qword_1001507B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1000034F8(v65);
LABEL_11:
    v65[0] = 0;
    v65[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(33);

    strcpy(v65, "- entitlement:");
    HIBYTE(v65[1]) = -18;
    v37._countAndFlagsBits = a1;
    v37._object = a2;
    String.append(_:)(v37);
    v38._countAndFlagsBits = 0x6F727020746F6E20;
    v38._object = 0xEF202C6465646976;
    String.append(_:)(v38);
    v63._countAndFlagsBits = 0;
    v63._object = 0xE000000000000000;
    v39._countAndFlagsBits = 0x6E49707041736168;
    v39._object = 0xED000073746E6574;
    String.append(_:)(v39);
    v40._countAndFlagsBits = 61;
    v40._object = 0xE100000000000000;
    String.append(_:)(v40);
    v64._countAndFlagsBits = 0x6D31333B305B1BLL;
    v64._object = 0xE700000000000000;
    v41._countAndFlagsBits = 0x65736C6166;
    v41._object = 0xE500000000000000;
    String.append(_:)(v41);
    v42._countAndFlagsBits = 0x6D303B305B1BLL;
    v42._object = 0xE600000000000000;
    String.append(_:)(v42);
    String.append(_:)(v64);

    v43._countAndFlagsBits = v63._countAndFlagsBits;
    object = v63._object;
    v63._countAndFlagsBits = 1831951131;
    v63._object = 0xE400000000000000;
    v43._object = object;
    String.append(_:)(v43);
    v45._countAndFlagsBits = 0x6D303B305B1BLL;
    v45._object = 0xE600000000000000;
    String.append(_:)(v45);

    String.append(_:)(v63);

    v46 = v65[0];
    v47 = v65[1];
    swift_beginAccess();
    sub_1000F507C();
    v48 = *(*(a4 + 16) + 16);
    sub_1000F5108(v48);
    v49 = *(a4 + 16);
    *(v49 + 16) = v48 + 1;
    v50 = v49 + 16 * v48;
    *(v50 + 32) = v46;
    *(v50 + 40) = v47;
    *(a4 + 16) = v49;
    return swift_endAccess();
  }

  countAndFlagsBits = v64._countAndFlagsBits;
  if (*(v64._countAndFlagsBits + 16))
  {
    v63._countAndFlagsBits = 0;
    v63._object = 0xE000000000000000;
    _StringGuts.grow(_:)(20);

    v63._countAndFlagsBits = 0x6C7469746E65202DLL;
    v63._object = 0xEF3A73746E656D65;
    v11._countAndFlagsBits = a1;
    v11._object = a2;
    String.append(_:)(v11);
    v12._countAndFlagsBits = 32;
    v12._object = 0xE100000000000000;
    String.append(_:)(v12);
    v64._countAndFlagsBits = 0;
    v64._object = 0xE000000000000000;
    v13._countAndFlagsBits = 0x6E49707041736168;
    v13._object = 0xED000073746E6574;
    String.append(_:)(v13);
    v14._countAndFlagsBits = 61;
    v14._object = 0xE100000000000000;
    String.append(_:)(v14);
    v15._countAndFlagsBits = 1702195828;
    v15._object = 0xE400000000000000;
    String.append(_:)(v15);
    v16._countAndFlagsBits = 0x6D303B305B1BLL;
    v16._object = 0xE600000000000000;
    String.append(_:)(v16);
    v17._countAndFlagsBits = 0x6D32333B305B1BLL;
    v17._object = 0xE700000000000000;
    String.append(_:)(v17);

    v18._countAndFlagsBits = v64._countAndFlagsBits;
    v19 = v64._object;
    v64._countAndFlagsBits = 1831951131;
    v64._object = 0xE400000000000000;
    v18._object = v19;
    String.append(_:)(v18);
    v20._countAndFlagsBits = 0x6D303B305B1BLL;
    v20._object = 0xE600000000000000;
    String.append(_:)(v20);

    String.append(_:)(v64);

    v21 = v63._countAndFlagsBits;
    v22 = v63._object;
    swift_beginAccess();
    sub_1000F507C();
    v23 = *(*(a4 + 16) + 16);
    sub_1000F5108(v23);
    v24 = *(a4 + 16);
    *(v24 + 16) = v23 + 1;
    v25 = v24 + 16 * v23;
    *(v25 + 32) = v21;
    *(v25 + 40) = v22;
    *(a4 + 16) = v24;
    swift_endAccess();
    v26 = *(countAndFlagsBits + 16);
    if (v26)
    {
      v64._countAndFlagsBits = _swiftEmptyArrayStorage;
      sub_100011438(0, v26, 0);
      v27 = v64._countAndFlagsBits;
      v28 = (countAndFlagsBits + 40);
      do
      {
        v29 = *(v28 - 1);
        v30 = *v28;
        v63._countAndFlagsBits = 538976288;
        v63._object = 0xE400000000000000;

        v31._countAndFlagsBits = v29;
        v31._object = v30;
        String.append(_:)(v31);

        v33 = v63._countAndFlagsBits;
        v32 = v63._object;
        v64._countAndFlagsBits = v27;
        v35 = v27[2];
        v34 = v27[3];
        if (v35 >= v34 >> 1)
        {
          sub_100011438(v34 > 1, v35 + 1, 1);
          v27 = v64._countAndFlagsBits;
        }

        v27[2] = v35 + 1;
        v36 = &v27[2 * v35];
        v36[4] = v33;
        v36[5] = v32;
        v28 += 2;
        --v26;
      }

      while (v26);
    }

    else
    {

      v27 = _swiftEmptyArrayStorage;
    }

    swift_beginAccess();
    sub_10006E3AC(v27);
  }

  else
  {

    v63._countAndFlagsBits = 0;
    v63._object = 0xE000000000000000;
    _StringGuts.grow(_:)(56);
    v52._object = 0xEE003A746E656D65;
    v52._countAndFlagsBits = 0x6C7469746E65202DLL;
    String.append(_:)(v52);
    v53._countAndFlagsBits = a1;
    v53._object = a2;
    String.append(_:)(v53);
    v54._object = 0x8000000100157DF0;
    v54._countAndFlagsBits = 0xD000000000000028;
    String.append(_:)(v54);
    v55._countAndFlagsBits = v63._countAndFlagsBits;
    v56 = v63._object;
    v63._countAndFlagsBits = 0x6D31333B305B1BLL;
    v63._object = 0xE700000000000000;
    v55._object = v56;
    String.append(_:)(v55);
    v57._countAndFlagsBits = 0x6D303B305B1BLL;
    v57._object = 0xE600000000000000;
    String.append(_:)(v57);

    v58 = v63._countAndFlagsBits;
    v59 = v63._object;
    swift_beginAccess();
    sub_1000F507C();
    v60 = *(*(a4 + 16) + 16);
    sub_1000F5108(v60);
    v61 = *(a4 + 16);
    *(v61 + 16) = v60 + 1;
    v62 = v61 + 16 * v60;
    *(v62 + 32) = v58;
    *(v62 + 40) = v59;
    *(a4 + 16) = v61;
  }

  swift_endAccess();
  return sub_1000034F8(v65);
}

uint64_t sub_1001030A4(char a1)
{
  result = 1831951131;
  switch(a1)
  {
    case 1:
      v3 = 0x32333B305B1BLL;
      goto LABEL_6;
    case 2:
      v3 = 0x33333B305B1BLL;
      goto LABEL_6;
    case 3:
      v3 = 0x31333B305B1BLL;
LABEL_6:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6D000000000000;
      break;
    case 4:
      result = 0x6D303B305B1BLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10010312C()
{
  result = qword_10019BE90;
  if (!qword_10019BE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019BE90);
  }

  return result;
}

uint64_t sub_100103180(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002EB80(&unk_10019BB60, &qword_100150FF8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001031F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002EB80(&unk_10019BB60, &qword_100150FF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100103260(void *a1)
{
  v1 = [a1 bundleVersion];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t sub_1001032C4()
{
  result = qword_10019BE98;
  if (!qword_10019BE98)
  {
    sub_100003D44(255, &unk_10019BB50, LSApplicationExtensionRecord_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019BE98);
  }

  return result;
}

unint64_t sub_100103340()
{
  result = qword_10019BEA0;
  if (!qword_10019BEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019BEA0);
  }

  return result;
}

char *sub_100103394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a3;
  v6 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  __chkstk_darwin(v6 - 8);
  v8 = &v32 - v7;
  if (qword_100198390 != -1)
  {
    swift_once();
  }

  memcpy(v50, &unk_10019E248, 0xB0uLL);
  if (a2)
  {
    sub_1000196B0(v50, &v38);
    if (qword_100198398 != -1)
    {
      sub_100002D1C();
      swift_once();
    }

    v38 = a1;
    v39 = a2;
    v9 = == infix<A>(_:_:)();
    v11 = v10;
    v13 = v12;
    memcpy(v37, v50, sizeof(v37));
    QueryType.filter(_:)(v9, v11, v13, &type metadata for Table, &protocol witness table for Table, v14, v15, v16, v32, v33, v34, v35, v36, v37[0], v37[1], v37[2], v37[3], v37[4], v37[5], v37[6], v37[7], v37[8], v37[9], v37[10], v37[11], v37[12], v37[13], v37[14], v37[15], v37[16], v37[17], v37[18], v37[19], v37[20], v37[21], v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48);

    sub_10001970C(v50);
    v17 = &v38;
  }

  else
  {
    sub_1000196B0(v50, &v38);
    v17 = v50;
  }

  memcpy(v49, v17, sizeof(v49));
  v41 = &type metadata for Table;
  v42 = &protocol witness table for Table;
  v38 = swift_allocObject();
  memcpy((v38 + 16), v49, 0xB0uLL);
  v18 = Connection.prepare(_:)(&v38);
  result = sub_1000034F8(&v38);
  if (!v3)
  {
    swift_retain_n();
    v33 = v18;
    v20 = dispatch thunk of _AnySequenceBox._makeIterator()();
    v34 = _swiftEmptyArrayStorage;
    v21 = &unk_100198000;
    v51 = v20;
    while (1)
    {
      dispatch thunk of _AnyIteratorBoxBase.next()();
      if (!v38)
      {
        break;
      }

      if (v21[115] != -1)
      {
        sub_100002D1C();
        swift_once();
      }

      Row.get<A>(_:)();
      v22 = v38;
      v23 = v39;
      if (qword_1001983A0 != -1)
      {
        swift_once();
      }

      Row.get<A>(_:)();
      v35 = v22;
      sub_1001039B4();
      v24 = type metadata accessor for URL();
      sub_1000075C4(v8, 1, 1, v24);
      v25 = static LNAssistantIntentNegativePhrases.fromJSON(_:bundleURL:effectiveBundleIdentifier:)();
      sub_1000209B0(v8);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100070710(0, *(v34 + 2) + 1, 1, v34);
        v34 = v30;
      }

      v21 = &unk_100198000;
      v26 = v34;
      v28 = *(v34 + 2);
      v27 = *(v34 + 3);
      if (v28 >= v27 >> 1)
      {
        sub_100070710(v27 > 1, v28 + 1, 1, v34);
        v26 = v31;
      }

      *(v26 + 2) = v28 + 1;
      v34 = v26;
      v29 = &v26[24 * v28];
      *(v29 + 4) = v35;
      *(v29 + 5) = v23;
      *(v29 + 6) = v25;
    }

    return v34;
  }

  return result;
}

uint64_t sub_1001038E4()
{
  v0 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v1 = sub_100056DD4();
  return ExpressionType.init(_:)(0xD000000000000010, 0x8000000100154580, v0, v1);
}

uint64_t sub_100103948()
{
  v0 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v1 = sub_100056DD4();
  return ExpressionType.init(_:)(0x657669746167656ELL, 0xEF73657361726850, v0, v1);
}

unint64_t sub_1001039B4()
{
  result = qword_10019BEA8;
  if (!qword_10019BEA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10019BEA8);
  }

  return result;
}

uint64_t sub_100103A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  *(v6 + 112) = a6;
  v7 = sub_100007C18(a1, a2, a3, a4, a5);
  sub_10000729C(v7);
  *(v6 + 88) = v8;
  *(v6 + 96) = swift_task_alloc();
  *(v6 + 104) = swift_task_alloc();

  return _swift_task_switch(sub_100103AC4, 0, 0);
}

uint64_t sub_100103AC4(__n128 a1)
{
  v43 = v1;
  UUID.init()();
  if (qword_100198308 != -1)
  {
    sub_1000029BC();
    swift_once();
  }

  v2 = *(v1 + 96);
  v3 = *(v1 + 104);
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  v6 = type metadata accessor for Logger();
  sub_10000347C(v6, qword_10019E050);
  (*(v5 + 16))(v2, v3, v4);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  v9 = os_log_type_enabled(v7, v8);
  v11 = *(v1 + 88);
  v10 = *(v1 + 96);
  v12 = *(v1 + 80);
  if (v9)
  {
    v40 = v8;
    v13 = *(v1 + 112);
    v37 = *(v1 + 56);
    v38 = *(v1 + 64);
    v15 = *(v1 + 40);
    v14 = *(v1 + 48);
    v16 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v42[0] = v39;
    *v16 = 67109890;
    *(v16 + 4) = v13;
    *(v16 + 8) = 2080;
    *(v16 + 10) = sub_100004C50(v15, v14, v42);
    *(v16 + 18) = 2080;
    *(v1 + 16) = v37;
    *(v1 + 24) = v38;

    sub_10002EB80(&unk_100199100, &qword_10014E230);
    v17 = String.init<A>(describing:)();
    v19 = sub_100004C50(v17, v18, v42);

    *(v16 + 20) = v19;
    *(v16 + 28) = 2080;
    sub_10010575C();
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    v23 = *(v11 + 8);
    v23(v10, v12);
    v24 = sub_100004C50(v20, v22, v42);

    *(v16 + 30) = v24;
    _os_log_impl(&_mh_execute_header, v7, v40, "%d Registering for observation status changes for %s/%s: %s", v16, 0x26u);
    swift_arrayDestroy();
    sub_1000036AC(v39);
    sub_1000036AC(v16);
  }

  else
  {

    v23 = *(v11 + 8);
    v23(v10, v12);
  }

  v25 = *(v1 + 104);
  v27 = *(v1 + 64);
  v26 = *(v1 + 72);
  v28 = *(v1 + 112);
  v29 = *(v1 + 56);
  v41 = *(v1 + 40);
  v30 = *(v1 + 32);
  v31 = *(v26 + OBJC_IVAR____TtC10LinkDaemon25ObservationStatusRegistry_observationEntriesPerBundleIdentifier);
  v32 = swift_task_alloc();
  *(v32 + 16) = v41;
  *(v32 + 32) = v25;
  *(v32 + 40) = v28;
  *(v32 + 48) = v29;
  *(v32 + 56) = v27;
  *(v32 + 64) = v26;
  os_unfair_lock_lock((v31 + 24));
  sub_100105848((v31 + 16), v30);
  v33 = *(v1 + 104);
  v34 = *(v1 + 80);
  os_unfair_lock_unlock((v31 + 24));

  v23(v33, v34);

  v35 = *(v1 + 8);

  return v35();
}

uint64_t sub_100103E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  *(v6 + 104) = a6;
  v7 = sub_100007C18(a1, a2, a3, a4, a5);
  sub_10000729C(v7);
  *(v6 + 88) = v8;
  *(v6 + 96) = swift_task_alloc();

  return _swift_task_switch(sub_100103F0C, 0, 0);
}

uint64_t sub_100103F0C()
{
  v35 = v0;
  if (qword_100198308 != -1)
  {
    sub_1000029BC();
    swift_once();
  }

  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = *(v0 + 64);
  v5 = type metadata accessor for Logger();
  sub_10000347C(v5, qword_10019E050);
  (*(v2 + 16))(v1, v4, v3);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v0 + 88);
  v9 = *(v0 + 96);
  v11 = *(v0 + 80);
  if (v8)
  {
    v12 = *(v0 + 104);
    v29 = *(v0 + 48);
    v30 = *(v0 + 56);
    v27 = *(v0 + 32);
    v28 = *(v0 + 40);
    v13 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v34[0] = v32;
    *v13 = 67109890;
    *(v13 + 4) = v12;
    *(v13 + 8) = 2080;
    sub_10010575C();
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_100004C50(v14, v16, v34);

    *(v13 + 10) = v17;
    *(v13 + 18) = 2080;
    *(v13 + 20) = sub_100004C50(v27, v28, v34);
    *(v13 + 28) = 2080;
    *(v0 + 16) = v29;
    *(v0 + 24) = v30;

    sub_10002EB80(&unk_100199100, &qword_10014E230);
    v18 = String.init<A>(describing:)();
    v20 = sub_100004C50(v18, v19, v34);

    *(v13 + 30) = v20;
    _os_log_impl(&_mh_execute_header, v6, v7, "%d Unregistering %s for observation status changes for %s/%s", v13, 0x26u);
    swift_arrayDestroy();
    sub_1000036AC(v32);
    sub_1000036AC(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v22 = *(v0 + 64);
  v21 = *(v0 + 72);
  v31 = *(v0 + 32);
  v33 = *(v0 + 48);
  v23 = *(v21 + OBJC_IVAR____TtC10LinkDaemon25ObservationStatusRegistry_observationEntriesPerBundleIdentifier);
  v24 = swift_task_alloc();
  *(v24 + 16) = v31;
  *(v24 + 32) = v33;
  *(v24 + 48) = v22;
  *(v24 + 56) = v21;
  os_unfair_lock_lock((v23 + 24));
  sub_100105738((v23 + 16));
  os_unfair_lock_unlock((v23 + 24));

  v25 = *(v0 + 8);

  return v25();
}

void sub_100104254(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v40 = a1;
  v41 = a3;
  v8 = type metadata accessor for UUID();
  __chkstk_darwin(v8);
  v50 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a5 + 56;
  v12 = 1 << *(a5 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a5 + 56);
  v15 = (v12 + 63) >> 6;
  v46 = 0x8000000100157E70;
  v47 = v9 + 16;
  v51 = v9;
  v52 = a5;
  v45 = v9 + 8;

  v16 = 0;
  *&v17 = 136315650;
  v39 = v17;
  v48 = v15;
  v49 = a5 + 56;
  if (v14)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v15)
    {

      return;
    }

    v14 = *(v11 + 8 * v18);
    ++v16;
    if (v14)
    {
      v16 = v18;
      do
      {
LABEL_8:
        v19 = v51;
        v20 = v50;
        (*(v51 + 16))(v50, *(v52 + 48) + *(v51 + 72) * (__clz(__rbit64(v14)) | (v16 << 6)), v8);
        v54 = 0;
        v55 = 0xE000000000000000;
        _StringGuts.grow(_:)(36);

        v54 = 0xD000000000000022;
        v55 = v46;
        v21 = UUID.uuidString.getter();
        v23 = v22;
        (*(v19 + 8))(v20, v8);
        v24._countAndFlagsBits = v21;
        v24._object = v23;
        String.append(_:)(v24);

        v25 = v54;
        v26 = v55;
        if (qword_100198308 != -1)
        {
          sub_1000029BC();
          swift_once();
        }

        v27 = type metadata accessor for Logger();
        sub_10000347C(v27, qword_10019E050);

        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v43 = v28;
          v42 = v29;
          v31 = v30;
          v44 = swift_slowAlloc();
          v53 = v44;
          *v31 = v39;
          *(v31 + 4) = sub_100004C50(v25, v26, &v53);
          *(v31 + 12) = 2080;
          *(v31 + 14) = sub_100004C50(v40, a2, &v53);
          *(v31 + 22) = 2080;
          v54 = v41;
          v55 = a4;

          sub_10002EB80(&unk_100199100, &qword_10014E230);
          v32 = String.init<A>(describing:)();
          v34 = sub_100004C50(v32, v33, &v53);

          *(v31 + 24) = v34;
          v35 = v43;
          _os_log_impl(&_mh_execute_header, v43, v42, "Posting observation status change notification %s for %s/%s", v31, 0x20u);
          v36 = v44;
          swift_arrayDestroy();
          sub_1000036AC(v36);
          sub_1000036AC(v31);
        }

        else
        {
        }

        v11 = v49;
        v14 &= v14 - 1;
        v37 = [objc_opt_self() defaultCenter];
        v38 = String._bridgeToObjectiveC()();

        [v37 postNotificationName:v38 object:0];

        v15 = v48;
      }

      while (v14);
    }
  }

  __break(1u);
}

uint64_t sub_1001046B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v73 = a8;
  v74 = a9;
  LODWORD(v67) = a5;
  v15 = type metadata accessor for ObservationStatusRegistry.ObservationStatusChangeListener(0);
  v16 = v15 - 8;
  v68 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v72 = a1;
  v20 = *a1;
  v22 = &v66 - v21;
  v76 = a2;
  v78 = a3;
  v23 = sub_10000E898(a2, a3, v20);
  if (v23)
  {
    v26 = v23;
  }

  else
  {
    v26 = _swiftEmptyArrayStorage;
  }

  v77 = v26;
  if (v23)
  {
    v27 = v24;
  }

  else
  {
    v27 = _swiftEmptyArrayStorage;
  }

  if (v23)
  {
    v28 = v25;
  }

  else
  {
    v28 = _swiftEmptyDictionarySingleton;
  }

  v29 = type metadata accessor for UUID();
  v30 = *(v29 - 8);
  v31 = *(v30 + 16);
  v75 = a4;
  v70 = v31;
  v71 = v29;
  v69 = v30 + 16;
  (v31)(v22, a4);
  *&v22[*(v16 + 28)] = v67;
  if (a7)
  {
    v66 = v27;
    v32 = a7;
    v33 = sub_1000A0E7C(a6, a7, v28);
    if (v33)
    {
      v35 = v33;
    }

    else
    {
      v35 = _swiftEmptyArrayStorage;
    }

    v67 = v35;
    if (v33)
    {
      v36 = v34;
    }

    else
    {
      v36 = _swiftEmptyArrayStorage;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100070EEC(0, v36[2] + 1, 1, v36);
      v36 = v62;
    }

    v38 = v36[2];
    v37 = v36[3];
    if (v38 >= v37 >> 1)
    {
      sub_100070EEC(v37 > 1, v38 + 1, 1, v36);
      v36 = v63;
    }

    v36[2] = v38 + 1;
    v39 = v36 + ((v68[80] + 32) & ~v68[80]) + *(v68 + 9) * v38;
    v68 = v22;
    sub_10004092C(v22, v39);

    swift_isUniquelyReferenced_nonNull_native();
    v79[0] = v28;
    v40 = a6;
    sub_10006971C();
    if (qword_100198308 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_10000347C(v41, qword_10019E050);

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v79[0] = swift_slowAlloc();
      *v44 = 136315906;
      *(v44 + 4) = sub_100004C50(v76, v78, v79);
      *(v44 + 12) = 2080;
      *(v44 + 14) = sub_100004C50(v40, v32, v79);
      *(v44 + 22) = 2048;
      *(v44 + 24) = v67[2];
      *(v44 + 32) = 2048;
      *(v44 + 34) = v36[2];
      _os_log_impl(&_mh_execute_header, v42, v43, "%s/%s: # of event listeners for %ld # of observation status change clients): %ld", v44, 0x2Au);
      swift_arrayDestroy();
    }

    v22 = v68;
  }

  else
  {
    v66 = a6;
    v67 = v28;
    sub_10004092C(v22, v18);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100070EEC(0, v27[2] + 1, 1, v27);
      v27 = v64;
    }

    v45 = v78;
    v47 = v27[2];
    v46 = v27[3];
    if (v47 >= v46 >> 1)
    {
      sub_100070EEC(v46 > 1, v47 + 1, 1, v27);
      v27 = v65;
    }

    v27[2] = v47 + 1;
    sub_1000C2A64(v18, v27 + ((v68[80] + 32) & ~v68[80]) + *(v68 + 9) * v47);
    v48 = qword_100198308;

    if (v48 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_10000347C(v49, qword_10019E050);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();

    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.info.getter();

    v52 = os_log_type_enabled(v50, v51);
    v53 = v76;
    if (v52)
    {
      v54 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      *v54 = 136315906;
      *(v54 + 4) = sub_100004C50(v53, v45, &v80);
      *(v54 + 12) = 2080;
      v79[0] = v66;
      v79[1] = 0;
      sub_10002EB80(&unk_100199100, &qword_10014E230);
      v55 = String.init<A>(describing:)();
      v57 = sub_100004C50(v55, v56, &v80);

      *(v54 + 14) = v57;
      *(v54 + 22) = 2048;
      v58 = v77[2];

      *(v54 + 24) = v58;

      *(v54 + 32) = 2048;
      v59 = v27[2];

      *(v54 + 34) = v59;

      _os_log_impl(&_mh_execute_header, v50, v51, "%s/%s: # of event listeners for %ld # of observation status change clients): %ld", v54, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }
  }

  v60 = v72;
  swift_isUniquelyReferenced_nonNull_native();
  v79[0] = *v60;
  sub_1000695E0();
  *v60 = v79[0];
  sub_1000C0A28();
  sub_100040990(v22);
  v70(v74, v75, v71);
}

uint64_t sub_100104E38(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  v83 = a7;
  v13 = type metadata accessor for ObservationStatusRegistry.ObservationStatusChangeListener(0);
  v93 = *(v13 - 8);
  __chkstk_darwin(v13 - 8);
  v88 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v89 = &v78 - v16;
  __chkstk_darwin(v17);
  v19 = &v78 - v18;
  __chkstk_darwin(v20);
  v22 = &v78 - v21;
  __chkstk_darwin(v23);
  v92 = &v78 - v24;
  v82 = a1;
  v25 = sub_10000E898(a2, a3, *a1);
  v28 = v25 == 0;
  if (v25)
  {
    v29 = v26;
  }

  else
  {
    v25 = _swiftEmptyArrayStorage;
    v29 = _swiftEmptyArrayStorage;
  }

  if (v28)
  {
    v27 = _swiftEmptyDictionarySingleton;
  }

  v86 = v27;
  v87 = a3;
  v90 = a2;
  v91 = a6;
  v85 = v25;
  if (!a5)
  {
    v88 = v22;
    v80 = &v78;
    v94 = v25;
    v95 = v29;
    __chkstk_darwin(v25);
    *(&v78 - 2) = a6;

    v41 = v84;
    result = sub_1000F8230(sub_1001057B4, (&v78 - 4), v29);
    v84 = v41;
    if (v42)
    {
      v43 = v29[2];
      a6 = v29;
    }

    else
    {
      v43 = result;
      v89 = v19;
      v81 = v29;
      v19 = result + 1;
      if (__OFADD__(result, 1))
      {
        goto LABEL_75;
      }

      a6 = v81;
      while (1)
      {
        v57 = *(a6 + 16);
        if (v19 == v57)
        {
          break;
        }

        if (v19 >= v57)
        {
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
          goto LABEL_71;
        }

        v58 = v92;
        v59 = (*(v93 + 80) + 32) & ~*(v93 + 80);
        v60 = a6 + v59;
        v61 = *(v93 + 72);
        a5 = v61 * v19;
        sub_10004092C(a6 + v59 + v61 * v19, v92);
        v22 = static UUID.== infix(_:_:)();
        sub_100040990(v58);
        if ((v22 & 1) == 0)
        {
          if (v19 != v43)
          {
            if (v43 < 0)
            {
              goto LABEL_66;
            }

            v62 = *(a6 + 16);
            if (v43 >= v62)
            {
              goto LABEL_67;
            }

            v22 = v61 * v43;
            v63 = v60 + v61 * v43;
            v64 = v88;
            sub_10004092C(v63, v88);
            if (v19 >= v62)
            {
              goto LABEL_68;
            }

            sub_10004092C(v60 + a5, v89);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1000F5234(a6);
              a6 = v65;
            }

            sub_1001057E4(v89, a6 + v59 + v22);
            if (v19 >= *(a6 + 16))
            {
              goto LABEL_69;
            }

            sub_1001057E4(v64, a6 + v59 + a5);
            v95 = a6;
          }

          ++v43;
        }

        a2 = v90;
        ++v19;
      }
    }

    v69 = *(a6 + 16);
    if (v69 < v43)
    {
      __break(1u);
    }

    else
    {
      sub_1000F550C(v43, v69, v66, v67, v68);
      v70 = v95;
      v71 = qword_100198308;

      v22 = v70;

      if (v71 == -1)
      {
LABEL_56:
        v72 = type metadata accessor for Logger();
        sub_10000347C(v72, qword_10019E050);

        v73 = Logger.logObject.getter();
        v74 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v73, v74))
        {
          v75 = swift_slowAlloc();
          v76 = swift_slowAlloc();
          v96 = v76;
          *v75 = 136315650;
          *(v75 + 4) = sub_100004C50(a2, v87, &v96);
          *(v75 + 12) = 2048;
          *(v75 + 14) = v85[2];
          *(v75 + 22) = 2048;
          *(v75 + 24) = *(v22 + 16);
          _os_log_impl(&_mh_execute_header, v73, v74, "%s: # of event listeners for  %ld # of observation status change clients): %ld", v75, 0x20u);
          sub_1000034F8(v76);
        }

LABEL_59:

        v77 = v82;
        swift_isUniquelyReferenced_nonNull_native();
        v94 = *v77;
        sub_1000695E0();
        *v77 = v94;
        sub_1000C0A28();
      }
    }

    swift_once();
    goto LABEL_56;
  }

  v80 = a5;
  v81 = v29;
  v79 = a4;
  v30 = sub_1000A0E7C(a4, a5, v27);
  v78 = &v78;
  if (v30)
  {
    v32 = v30;
  }

  else
  {
    v32 = _swiftEmptyArrayStorage;
  }

  if (v30)
  {
    a5 = v31;
  }

  else
  {
    a5 = _swiftEmptyArrayStorage;
  }

  v94 = v32;
  v95 = a5;
  __chkstk_darwin(v30);
  *(&v78 - 2) = a6;
  v33 = v84;
  result = sub_1000F8230(sub_100105874, (&v78 - 4), a5);
  v84 = v33;
  if (v38)
  {
    v39 = *(a5 + 16);
    v40 = v39;
LABEL_34:
    sub_1000F550C(v39, v40, v35, v36, v37);
    a6 = v94;
    a5 = v95;

    v50 = v86;
    swift_isUniquelyReferenced_nonNull_native();
    v96 = v50;
    v19 = v79;
    v43 = v80;
    sub_10006971C();
    v86 = v96;
    if (qword_100198308 != -1)
    {
LABEL_71:
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    sub_10000347C(v51, qword_10019E050);

    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.info.getter();

    v54 = os_log_type_enabled(v52, v53);
    v55 = v90;
    if (v54)
    {
      v56 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      *v56 = 136315906;
      *(v56 + 4) = sub_100004C50(v55, v87, &v96);
      *(v56 + 12) = 2080;
      *(v56 + 14) = sub_100004C50(v19, v43, &v96);
      *(v56 + 22) = 2048;
      *(v56 + 24) = *(a6 + 16);
      *(v56 + 32) = 2048;
      *(v56 + 34) = *(a5 + 16);
      _os_log_impl(&_mh_execute_header, v52, v53, "%s/%s: # of event listeners for  %ld # of observation status change clients): %ld", v56, 0x2Au);
      swift_arrayDestroy();
    }

    goto LABEL_59;
  }

  v39 = result;
  v40 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v43 = a6;
    while (1)
    {
      v44 = *(a5 + 16);
      if (v40 == v44)
      {
        break;
      }

      if (v40 >= v44)
      {
        __break(1u);
        goto LABEL_61;
      }

      v45 = v92;
      v19 = (*(v93 + 80) + 32) & ~*(v93 + 80);
      v46 = a5 + v19;
      v47 = *(v93 + 72);
      a6 = v47 * v40;
      sub_10004092C(a5 + v19 + v47 * v40, v92);
      v43 = static UUID.== infix(_:_:)();
      sub_100040990(v45);
      if (v43)
      {
        v43 = v91;
      }

      else
      {
        if (v40 != v39)
        {
          if (v39 < 0)
          {
            goto LABEL_62;
          }

          v48 = *(a5 + 16);
          if (v39 >= v48)
          {
            goto LABEL_63;
          }

          v43 = v47 * v39;
          sub_10004092C(v46 + v47 * v39, v89);
          if (v40 >= v48)
          {
            goto LABEL_64;
          }

          sub_10004092C(v46 + a6, v88);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1000F5234(a5);
            a5 = v49;
          }

          sub_1001057E4(v88, a5 + v19 + v43);
          if (v40 >= *(a5 + 16))
          {
            goto LABEL_65;
          }

          sub_1001057E4(v89, a5 + v19 + a6);
          v95 = a5;
        }

        v43 = v91;
        ++v39;
      }

      ++v40;
    }

    if (v40 < v39)
    {
      goto LABEL_70;
    }

    goto LABEL_34;
  }

  __break(1u);
LABEL_75:
  __break(1u);
  return result;
}

unint64_t sub_10010575C()
{
  result = qword_10019BAD0;
  if (!qword_10019BAD0)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019BAD0);
  }

  return result;
}

uint64_t sub_1001057E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ObservationStatusRegistry.ObservationStatusChangeListener(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_100105914(void *a1)
{
  v2 = [a1 processIdentifier];
  v3 = LNDaemonObservationStatusRegistryXPCInterface();
  [a1 setExportedInterface:v3];

  sub_100004738(aBlock);
  v4 = v16;
  if (v16)
  {
    v5 = sub_1000034B4(aBlock, v16);
    v6 = *(v4 - 1);
    v7 = __chkstk_darwin(v5);
    v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9, v7);
    v10 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v6 + 8))(v9, v4);
    sub_1000034F8(aBlock);
  }

  else
  {
    v10 = 0;
  }

  [a1 setExportedObject:v10];
  swift_unknownObjectRelease();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v2;
  *(v13 + 24) = v11;
  *(v13 + 32) = v12;
  v17 = sub_100107570;
  v18 = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C13C;
  v16 = &unk_10018FD78;
  v14 = _Block_copy(aBlock);

  [a1 setInvalidationHandler:v14];
  _Block_release(v14);
}

void sub_100105B88(void *a1)
{
  swift_getObjectType();
  v2 = [a1 processIdentifier];
  v3 = sub_10006A1C4();
  [a1 setExportedInterface:v3];

  sub_100004738(aBlock);
  v4 = v16;
  if (v16)
  {
    v5 = sub_1000034B4(aBlock, v16);
    v6 = *(v4 - 1);
    v7 = __chkstk_darwin(v5);
    v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9, v7);
    v10 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v6 + 8))(v9, v4);
    sub_1000034F8(aBlock);
  }

  else
  {
    v10 = 0;
  }

  [a1 setExportedObject:v10];
  swift_unknownObjectRelease();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v2;
  *(v13 + 24) = v11;
  *(v13 + 32) = v12;
  v17 = sub_100107600;
  v18 = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C13C;
  v16 = &unk_10018FE68;
  v14 = _Block_copy(aBlock);

  [a1 setInvalidationHandler:v14];
  _Block_release(v14);
}

void sub_100105E10(void *a1)
{
  v2 = [a1 processIdentifier];
  v3 = LNDaemonSuggestionsXPCInterface();
  [a1 setExportedInterface:v3];

  sub_100004738(aBlock);
  v4 = v16;
  if (v16)
  {
    v5 = sub_1000034B4(aBlock, v16);
    v6 = *(v4 - 1);
    v7 = __chkstk_darwin(v5);
    v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9, v7);
    v10 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v6 + 8))(v9, v4);
    sub_1000034F8(aBlock);
  }

  else
  {
    v10 = 0;
  }

  [a1 setExportedObject:v10];
  swift_unknownObjectRelease();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v2;
  *(v13 + 24) = v11;
  *(v13 + 32) = v12;
  v17 = sub_10010760C;
  v18 = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C13C;
  v16 = &unk_10018FEE0;
  v14 = _Block_copy(aBlock);

  [a1 setInvalidationHandler:v14];
  _Block_release(v14);
}

uint64_t sub_100106084()
{
  sub_1000036A0();
  v0 = sub_1000080E8();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  v10 = sub_100002D30(v1, v3, v4, v5, v6, v7, v8, v9, v12);

  return v10();
}

uint64_t sub_100106108()
{
  sub_1000036A0();
  v0 = sub_1000080E8();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  v10 = sub_100002D30(v1, v3, v4, v5, v6, v7, v8, v9, v12);

  return v10();
}

uint64_t sub_10010618C()
{
  sub_1000036A0();
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1001062A0()
{
  sub_1000036A0();
  v0 = sub_1000080E8();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  v10 = sub_100002D30(v1, v3, v4, v5, v6, v7, v8, v9, v12);

  return v10();
}

uint64_t sub_100106348()
{
  sub_1000036A0();
  v0 = sub_1000080E8();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  v10 = sub_100002D30(v1, v3, v4, v5, v6, v7, v8, v9, v12);

  return v10();
}

uint64_t sub_1001063CC()
{
  sub_1000036A0();
  v0 = sub_1000080E8();
  v1 = sub_100004BD0(v0);
  *v1 = v2;
  v10 = sub_100002D30(v1, v3, v4, v5, v6, v7, v8, v9, v12);

  return v10();
}

uint64_t sub_100106450()
{
  sub_1000036A0();
  v1[2] = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  v1[3] = swift_isaMask & *v0;
  v1[4] = *((v3 & v2) + 0x50);
  sub_10000518C();
  v1[5] = v4;
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_100106548, v0, 0);
}

uint64_t sub_100106548()
{
  v1 = v0[6];
  [*(v0[2] + 112) invalidate];
  sub_100002794(v1);
  v2 = *(v0[3] + 88);
  v6 = (*(v2 + 32) + **(v2 + 32));
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1001066D4;
  v4 = v0[4];

  return v6(v4, v2);
}

uint64_t sub_1001066D4()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *v1;
  v5[8] = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v6 = v5[2];

    return _swift_task_switch(sub_10010687C, v6, 0);
  }

  else
  {

    v7 = v5[1];

    return v7();
  }
}

uint64_t sub_10010687C()
{
  sub_1000036A0();

  v1 = *(v0 + 8);

  return v1();
}

void sub_1001068DC()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_10010692C()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10010695C()
{
  sub_10010692C();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1001069A0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100106A34()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10010762C;

  return sub_100106450();
}

void sub_100106AC4(int a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[0] = type metadata accessor for ObservationStatusRegistry();
  sub_10002EB80(&qword_10019A250, &qword_10014DF40);
  String.init<A>(describing:)();
  if (LNLogSubsystem)
  {
    String.init(cString:)();
    Logger.init(subsystem:category:)();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v19[1] = a3;
      v13 = v12;
      v20[0] = v12;
      *v11 = 67109378;
      *(v11 + 4) = a1;
      *(v11 + 8) = 2080;
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = sub_100004C50(v14, v15, v20);

      *(v11 + 10) = v16;
      _os_log_impl(&_mh_execute_header, v9, v10, "Invalidated XPC connection from PID %d for service %s", v11, 0x12u);
      sub_1000034F8(v13);
    }

    (*(v6 + 8))(v8, v5);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v18 = Strong;
      swift_beginAccess();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100106D28(int a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15[0] = type metadata accessor for ConstraintValidationService();
  sub_10002EB80(&qword_10019A250, &qword_10014DF40);
  String.init<A>(describing:)();
  if (LNLogSubsystem)
  {
    String.init(cString:)();
    Logger.init(subsystem:category:)();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v15[0] = v11;
      *v10 = 67109378;
      *(v10 + 4) = a1;
      *(v10 + 8) = 2080;
      if (qword_1001981B8 != -1)
      {
        swift_once();
      }

      *(v10 + 10) = sub_100004C50(qword_10019DB80, *algn_10019DB88, v15);
      _os_log_impl(&_mh_execute_header, v8, v9, "Invalidated XPC connection from PID %d for service %s", v10, 0x12u);
      sub_1000034F8(v11);
    }

    (*(v5 + 8))(v7, v4);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      swift_beginAccess();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100106FA0(int a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15[0] = type metadata accessor for SuggestedActionsService();
  sub_10002EB80(&qword_10019A250, &qword_10014DF40);
  String.init<A>(describing:)();
  if (LNLogSubsystem)
  {
    String.init(cString:)();
    Logger.init(subsystem:category:)();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v15[0] = v11;
      *v10 = 67109378;
      *(v10 + 4) = a1;
      *(v10 + 8) = 2080;
      if (qword_1001981F8 != -1)
      {
        swift_once();
      }

      *(v10 + 10) = sub_100004C50(qword_10019DBD8, qword_10019DBE0, v15);
      _os_log_impl(&_mh_execute_header, v8, v9, "Invalidated XPC connection from PID %d for service %s", v10, 0x12u);
      sub_1000034F8(v11);
    }

    (*(v5 + 8))(v7, v4);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      swift_beginAccess();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100107218(int a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15[0] = type metadata accessor for ExtensionService();
  sub_10002EB80(&qword_10019A250, &qword_10014DF40);
  String.init<A>(describing:)();
  if (LNLogSubsystem)
  {
    String.init(cString:)();
    Logger.init(subsystem:category:)();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v15[0] = v11;
      *v10 = 67109378;
      *(v10 + 4) = a1;
      *(v10 + 8) = 2080;
      if (qword_1001983A8 != -1)
      {
        swift_once();
      }

      *(v10 + 10) = sub_100004C50(qword_10019E328, unk_10019E330, v15);
      _os_log_impl(&_mh_execute_header, v8, v9, "Invalidated XPC connection from PID %d for service %s", v10, 0x12u);
      sub_1000034F8(v11);
    }

    (*(v5 + 8))(v7, v4);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      swift_beginAccess();
    }
  }

  else
  {
    __break(1u);
  }
}