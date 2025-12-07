uint64_t sub_100055D74(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1000BCD28(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_100055EAC((*a3 + 48 * *v4), (*a3 + 48 * *v9), (*a3 + 48 * v10), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_100055EAC(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 48;
  v9 = (a3 - a2) / 48;
  if (v8 < v9)
  {
    sub_10007105C(a1, (a2 - a1) / 48, a4);
    v10 = &v4[48 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*(v4 + 4) >> 14 >= *(v6 + 4) >> 14)
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 3;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 48;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 48;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = *v12;
    v15 = v12[2];
    *(v7 + 1) = v12[1];
    *(v7 + 2) = v15;
    *v7 = v14;
    goto LABEL_13;
  }

  sub_10007105C(a2, (a3 - a2) / 48, a4);
  v10 = &v4[48 * v9];
LABEL_15:
  for (v5 -= 48; v10 > v4 && v6 > v7; v5 -= 48)
  {
    if (*(v6 - 2) >> 14 < *(v10 - 2) >> 14)
    {
      v19 = v6 - 3;
      v13 = v5 + 48 == v6;
      v6 -= 3;
      if (!v13)
      {
        v20 = *v19;
        v21 = v19[2];
        *(v5 + 1) = v19[1];
        *(v5 + 2) = v21;
        *v5 = v20;
        v6 = v19;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 48)
    {
      v17 = *(v10 - 3);
      v18 = *(v10 - 1);
      *(v5 + 1) = *(v10 - 2);
      *(v5 + 2) = v18;
      *v5 = v17;
    }

    v10 -= 48;
  }

LABEL_28:
  v22 = (v10 - v4) / 48;
  if (v6 != v4 || v6 >= &v4[48 * v22])
  {
    memmove(v6, v4, 48 * v22);
  }

  return 1;
}

uint64_t sub_10005605C(uint64_t a1, uint64_t a2, int a3)
{
  HIDWORD(v40) = a3;
  v6 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v15 = ~(-1 << *(v6 + 32));
  v16 = 1;
  while (1)
  {
    v17 = v7 & v15;
    v18 = (v7 & v15) >> 6;
    v19 = 1 << (v7 & v15);
    v20 = v19 & *(v6 + 56 + 8 * v18);
    if (!v20)
    {
      break;
    }

    v21 = (*(v6 + 48) + 16 * v17);
    v8 = v21[1];
    v22 = *v21 == a1 && v8 == a2;
    if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v16 = 0;
      break;
    }

    v7 = v17 + 1;
  }

  v23 = *(v6 + 16);
  v24 = v23 + v16;
  if (__OFADD__(v23, v16))
  {
    __break(1u);
    goto LABEL_34;
  }

  v25 = *(v6 + 24);
  v26 = v41;
  if (v25 < v24 || (v40 & 0x100000000) == 0)
  {
    if ((v40 & 0x100000000) != 0)
    {
      sub_1000486E4(v24, v8, v9, v10, v11, v12, v13, v14, v39, v40, v41, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61);
      goto LABEL_20;
    }

    if (v25 < v24)
    {
      sub_100049DB0(v24, v8, v9, v10, v11, v12, v13, v14, v39, v40, v41, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61);
LABEL_20:
      v27 = *v26;
      Hasher.init(_seed:)();
      String.hash(into:)();
      v28 = Hasher._finalize()();
      v29 = ~(-1 << *(v27 + 32));
      while (1)
      {
        v17 = v28 & v29;
        v18 = (v28 & v29) >> 6;
        v19 = 1 << (v28 & v29);
        if ((v19 & *(v27 + 56 + 8 * v18)) == 0)
        {
          break;
        }

        v30 = (*(v27 + 48) + 16 * v17);
        v31 = *v30 == a1 && v30[1] == a2;
        if (v31 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v26 = v42;
          if (!v20)
          {
            goto LABEL_35;
          }

          goto LABEL_29;
        }

        v28 = v17 + 1;
      }

      v26 = v42;
      if (v20)
      {
        goto LABEL_35;
      }

      goto LABEL_31;
    }

    sub_100049818();
  }

  if (v20)
  {
LABEL_29:
    v32 = (*(*v26 + 48) + 16 * v17);
    result = *v32;
    *v32 = a1;
    v32[1] = a2;
    return result;
  }

LABEL_31:
  v34 = *v26;
  *(*v26 + 8 * v18 + 56) |= v19;
  v35 = (*(v34 + 48) + 16 * v17);
  *v35 = a1;
  v35[1] = a2;
  v36 = *(v34 + 16);
  v37 = __OFADD__(v36, 1);
  v38 = v36 + 1;
  if (!v37)
  {
    result = 0;
    *(v34 + 16) = v38;
    return result;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10005628C(void *a1, SEL *a2, unint64_t *a3, void *a4)
{
  v6 = [a1 *a2];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  sub_100003D44(0, a3, a4);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v8;
}

uint64_t sub_100056300(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return sub_1000077D8();
}

unint64_t sub_1000563F8()
{
  result = qword_100199668;
  if (!qword_100199668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100199668);
  }

  return result;
}

uint64_t sub_10005644C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_100013294(a1, a2, a3, a4);
  sub_10000482C();
  v5 = sub_1000077D8();
  v6(v5);
  return v4;
}

unint64_t sub_100056498()
{
  result = qword_100199690;
  if (!qword_100199690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100199690);
  }

  return result;
}

unint64_t sub_1000564EC()
{
  result = qword_1001996B0;
  if (!qword_1001996B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001996B0);
  }

  return result;
}

unint64_t sub_100056540()
{
  result = qword_1001996C8;
  if (!qword_1001996C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001996C8);
  }

  return result;
}

unint64_t sub_100056594()
{
  result = qword_1001996F0;
  if (!qword_1001996F0)
  {
    type metadata accessor for CharacterClass();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001996F0);
  }

  return result;
}

unint64_t sub_10005663C()
{
  result = qword_100199700;
  if (!qword_100199700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100199700);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppShortcutInterpolator.Error(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for AppShortcutInterpolator.Error(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

__n128 sub_100056790(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10005679C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1000567DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10005682C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100056848(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_100056888(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10005690C(uint64_t a1)
{
  type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    sub_100056B04(319, &qword_100199770, &type metadata for LNAppShortcutRecord, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      sub_100056A50(319);
      if (v3 <= 0x3F)
      {
        sub_100056AA8();
        if (v4 <= 0x3F)
        {
          type metadata accessor for LNShortcutTileColor(319);
          if (v5 <= 0x3F)
          {
            sub_100056B04(319, &qword_100199788, &type metadata for String, &type metadata accessor for Optional);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_100056A50(uint64_t a1)
{
  if (!qword_100199778)
  {
    type metadata accessor for LNAppShortcutParameterRecord(255);
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &qword_100199778);
    }
  }
}

unint64_t sub_100056AA8()
{
  result = qword_100199780;
  if (!qword_100199780)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100199780);
  }

  return result;
}

void sub_100056B04(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

__n128 sub_100056B54(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100056B68(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_100056BA8(uint64_t result, int a2, int a3)
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

unint64_t sub_100056BFC()
{
  result = qword_1001997D0;
  if (!qword_1001997D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001997D0);
  }

  return result;
}

unint64_t sub_100056C58()
{
  result = qword_1001997D8;
  if (!qword_1001997D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001997D8);
  }

  return result;
}

uint64_t sub_100056D10()
{
  v0 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v1 = sub_100056DD4();
  return ExpressionType.init(_:)(0xD000000000000010, 0x8000000100154580, v0, v1);
}

uint64_t sub_100056D74()
{
  v0 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v1 = sub_100056DD4();
  return ExpressionType.init(_:)(0x617461646174656DLL, 0xE800000000000000, v0, v1);
}

unint64_t sub_100056DD4()
{
  result = qword_100198780;
  if (!qword_100198780)
  {
    sub_10002EC70(&unk_10019AAC0, &unk_10014BE40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100198780);
  }

  return result;
}

char *sub_100056E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a3;
  v6 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  __chkstk_darwin(v6 - 8);
  v8 = &v32 - v7;
  if (qword_100198110 != -1)
  {
    swift_once();
  }

  memcpy(v50, &unk_10019D958, 0xB0uLL);
  if (a2)
  {
    sub_1000196B0(v50, &v38);
    if (qword_100198118 != -1)
    {
      sub_100002A5C();
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

      if (v21[35] != -1)
      {
        sub_100002A5C();
        swift_once();
      }

      Row.get<A>(_:)();
      v22 = v38;
      v23 = v39;
      if (qword_100198120 != -1)
      {
        swift_once();
      }

      Row.get<A>(_:)();
      v35 = v22;
      sub_100057330();
      v24 = type metadata accessor for URL();
      sub_1000075C4(v8, 1, 1, v24);
      v25 = static LNAssistantAppEntityMetadata.fromJSON(_:bundleURL:effectiveBundleIdentifier:)();
      sub_1000209B0(v8);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000704F8(0, *(v34 + 2) + 1, 1, v34);
        v34 = v30;
      }

      v21 = &unk_100198000;
      v26 = v34;
      v28 = *(v34 + 2);
      v27 = *(v34 + 3);
      if (v28 >= v27 >> 1)
      {
        sub_1000704F8(v27 > 1, v28 + 1, 1, v34);
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

unint64_t sub_100057330()
{
  result = qword_10019C980;
  if (!qword_10019C980)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10019C980);
  }

  return result;
}

void sub_1000573B4(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = a4(a3);
  v7 = 0;
  while (1)
  {
    v8 = v7;
    if (v6 == v7)
    {
      break;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v9 = *(a3 + 8 * v7 + 32);
    }

    v10 = v9;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v13 = v9;
    v11 = a1(&v13);

    if (!v4)
    {
      v7 = v8 + 1;
      if ((v11 & 1) == 0)
      {
        continue;
      }
    }

    return;
  }
}

BOOL sub_1000574AC()
{
  sub_100061118();
  v3 = (v2 + 40);
  v5 = v4 + 1;
  do
  {
    if (!--v5)
    {
      break;
    }

    v6 = *v3;
    v10[0] = *(v3 - 1);
    v10[1] = v6;

    v7 = v1(v10);
    if (v0)
    {

      return v5 != 0;
    }

    v8 = v7;
    v3 += 2;
  }

  while ((v8 & 1) == 0);
  return v5 != 0;
}

BOOL sub_100057550(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = type metadata accessor for LNAppShortcutParameterRecord(0);
    sub_10000D33C(v9);
    v12 = a1(a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v11 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v12 & 1) == 0);
  return v7 != v8;
}

BOOL sub_10005761C(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = *(sub_10002EB80(&unk_10019B1E0, &unk_10014E3A0) - 8);
    v10 = a1(a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v10 & 1) == 0);
  return v7 != v8;
}

BOOL sub_10005770C()
{
  sub_100061118();
  v3 = (v2 + 56);
  v5 = v4 + 1;
  do
  {
    if (!--v5)
    {
      break;
    }

    v6 = *(v3 - 1);
    v7 = *v3;
    v11 = *(v3 - 3);
    v12 = v6;
    v13 = v7;

    v8 = v1(&v11);
    if (v0)
    {

      return v5 != 0;
    }

    v9 = v8;
    v3 += 4;
  }

  while ((v9 & 1) == 0);
  return v5 != 0;
}

void sub_1000577B8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

id sub_10005781C()
{
  v0 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v1 = [v0 Intents];
  swift_unknownObjectRelease();
  v2 = [v1 Transcript];
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_1000578B4()
{
  v0 = type metadata accessor for Logger();
  sub_100037CD8(v0, qword_10019DA38);
  v1 = sub_1000077D8();
  sub_10000347C(v1, v2);
  type metadata accessor for Transcript();
  sub_10002EB80(&qword_10019A250, &qword_10014DF40);
  String.init<A>(describing:)();
  result = LNLogSubsystem;
  if (LNLogSubsystem)
  {
    String.init(cString:)();
    return Logger.init(subsystem:category:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100057960(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC10LinkDaemon10Transcript_nextActionObserverConnections;
  type metadata accessor for UUID();
  sub_100003D44(0, &qword_100199BC8, NSXPCConnection_ptr);
  sub_100006A48();
  sub_100060C6C(v7, v8, &protocol conformance descriptor for UUID);
  *&v2[v6] = Dictionary.init(dictionaryLiteral:)();
  v9 = OBJC_IVAR____TtC10LinkDaemon10Transcript_nextActionLock;
  sub_10002EB80(&qword_100199D38, &qword_100151700);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *&v2[v9] = v10;
  *&v2[OBJC_IVAR____TtC10LinkDaemon10Transcript_streamManager] = a1;
  *&v2[OBJC_IVAR____TtC10LinkDaemon10Transcript_observers] = a2;
  v19.receiver = v2;
  v19.super_class = ObjectType;

  v11 = objc_msgSendSuper2(&v19, "init");
  v12 = qword_100198128;
  v13 = v11;
  if (v12 != -1)
  {
    sub_100002A70(&qword_100198128);
  }

  v14 = type metadata accessor for Logger();
  sub_100011AB8(v14, qword_10019DA38);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (sub_10000E7D4(v16))
  {
    v17 = sub_100011344();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Starting Transcript", v17, 2u);
    sub_100004D8C();
  }

  else
  {
  }

  return v13;
}

uint64_t sub_100057BE0()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  qword_10019DA50 = result;
  *algn_10019DA58 = v1;
  return result;
}

uint64_t sub_100057C10(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10002EB80(&qword_100198C20, &qword_10014D090);
  sub_100004B70(v7);
  sub_100003A54();
  __chkstk_darwin(v8);
  v10 = &v23 - v9;
  v11 = sub_100009D54();
  type metadata accessor for TaskPriority();
  sub_100007E2C();
  sub_1000075C4(v12, v13, v14, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v3;
  v16[5] = a1;
  v16[6] = v11;
  v16[7] = a2;
  v16[8] = a3;
  v17 = v3;
  v18 = a1;

  v19 = sub_10000EE44();
  sub_10003A6C0(v19, v20, v10, v21, v16);
}

uint64_t sub_100057D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a7;
  v8[3] = a8;
  v11 = swift_task_alloc();
  v8[4] = v11;
  *v11 = v8;
  v11[1] = sub_100057E00;

  return sub_100057EF8(a5, a6);
}

uint64_t sub_100057E00()
{
  sub_1000036A0();
  sub_1000036D0();
  sub_1000050EC();
  *v3 = v2;
  v4 = *v1;
  sub_10000298C();
  *v5 = v4;
  *(v6 + 40) = v0;

  sub_100009990();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100057EF8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_10001E094();
  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100057F24()
{
  sub_1000036A0();
  v0[5] = sub_10005FBE4(v0[2], 4);
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_100057FC4;
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return sub_1000581BC(v1, v2, v3, v4);
}

uint64_t sub_100057FC4()
{
  sub_1000036A0();
  sub_1000036D0();
  sub_1000050EC();
  *v3 = v2;
  v4 = *v1;
  sub_10000298C();
  *v5 = v4;
  *(v6 + 56) = v0;

  sub_100009990();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000580BC()
{
  sub_1000036A0();
  v0 = sub_100012720();
  sub_1000F1718(v0, v1);

  sub_100006734();

  return v2();
}

uint64_t sub_100058120()
{
  sub_1000036A0();
  v0 = sub_100012720();
  sub_1000F1718(v0, v1);

  sub_100003A00();

  return v2();
}

uint64_t sub_1000581BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v5 = type metadata accessor for Date();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();

  return _swift_task_switch(sub_100058280, 0, 0);
}

uint64_t sub_100058280()
{
  v78 = v1;
  if ((sub_100004250() & 1) == 0)
  {
    v2 = sub_10000B484();
    if (!v3)
    {
      if (qword_100198128 != -1)
      {
        sub_100002A70(&qword_100198128);
      }

      v52 = sub_100018A98();
      sub_100011AB8(v52, qword_10019DA38);
      v53 = v0;
      v54 = Logger.logObject.getter();
      static os_log_type_t.error.getter();

      if (sub_1000103CC())
      {
        sub_100007764();
        v55 = sub_100002688();
        sub_10000C0A8(v55, 5.7779e-34);
        sub_1000117B8();
        _os_log_impl(v56, v57, v58, v59, v60, 0xCu);
        sub_100003EFC(v55, &unk_10019A260, &unk_10014D030);
        sub_100004D8C();
        sub_100011FBC();
      }

      v36 = 3;
LABEL_31:
      v70 = sub_100060730();
      sub_100007978(&type metadata for TranscriptError, v70);
      *v71 = v36;
      swift_willThrow();

      sub_100003A00();
      sub_10000483C();

      __asm { BRAA            X1, X16 }
    }

    v4 = *(v1 + 32);
    sub_10000B274(v2, v3, v4);
    [v4 setSource:1];
  }

  v5 = sub_10000B2D8(*(v1 + 32));
  if (!v6)
  {
    if (qword_100198128 != -1)
    {
      sub_100002A70(&qword_100198128);
    }

    v27 = sub_100018A98();
    sub_100011AB8(v27, qword_10019DA38);
    v28 = v0;
    v29 = Logger.logObject.getter();
    static os_log_type_t.error.getter();

    if (sub_1000103CC())
    {
      sub_100007764();
      v30 = sub_100002688();
      sub_10000C0A8(v30, 5.7779e-34);
      sub_1000117B8();
      _os_log_impl(v31, v32, v33, v34, v35, 0xCu);
      sub_100003EFC(v30, &unk_10019A260, &unk_10014D030);
      sub_100004D8C();
      sub_100011FBC();
    }

    v36 = 2;
    goto LABEL_31;
  }

  v7 = v5;
  v8 = v6;
  v10 = *(v1 + 48);
  v9 = *(v1 + 56);
  v11 = *(v1 + 40);
  v12 = [*(v1 + 32) executionDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  Date.timeIntervalSinceNow.getter();
  v14 = v13;
  v15 = *(v10 + 8);
  v15(v9, v11);
  if (v14 >= 5.0)
  {

    if (qword_100198128 != -1)
    {
      sub_100002A70(&qword_100198128);
    }

    v37 = sub_100018A98();
    sub_100011AB8(v37, qword_10019DA38);
    v38 = v8;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    if (sub_10001A9A4())
    {
      v74 = v40;
      v41 = *(v1 + 56);
      v43 = *(v1 + 32);
      v42 = *(v1 + 40);
      sub_1000063EC();
      v75 = sub_100002688();
      v76 = sub_1000056E4();
      v77 = v76;
      *v38 = 136315394;
      v44 = [v43 executionDate];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1000099CC();
      sub_100060C6C(v45, v46, &protocol conformance descriptor for Date);
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v48;
      v15(v41, v42);
      v50 = sub_100004C50(v47, v49, &v77);

      *(v38 + 1) = v50;
      *(v38 + 6) = 2112;
      *(v38 + 14) = v43;
      *v75 = v43;
      v51 = v43;
      _os_log_impl(&_mh_execute_header, v39, v74, "Expected execution date to be recent, found %s. Discarding %@.", v38, 0x16u);
      sub_100003EFC(v75, &unk_10019A260, &unk_10014D030);
      sub_1000036AC(v75);
      sub_1000034F8(v76);
      sub_1000036AC(v76);
      sub_100011FBC();
    }

    goto LABEL_30;
  }

  v16 = sub_10000B5E4(v7, v8);
  v18 = v17;
  v20 = v19;

  *(v1 + 64) = v18;
  if (!v18)
  {
    if (qword_100198128 != -1)
    {
      sub_100002A70(&qword_100198128);
    }

    v61 = sub_100018A98();
    sub_100011AB8(v61, qword_10019DA38);
    v62 = v8;
    v63 = Logger.logObject.getter();
    static os_log_type_t.error.getter();

    if (sub_1000103CC())
    {
      sub_100007764();
      v64 = sub_100002688();
      sub_10000C0A8(v64, 5.7779e-34);
      sub_1000117B8();
      _os_log_impl(v65, v66, v67, v68, v69, 0xCu);
      sub_100003EFC(v64, &unk_10019A260, &unk_10014D030);
      sub_100004D8C();
      sub_100011FBC();
    }

LABEL_30:
    v36 = 1;
    goto LABEL_31;
  }

  *(v1 + 72) = v20;
  *(v1 + 80) = sub_10000B338(v16, v18, v20);
  v21 = swift_task_alloc();
  *(v1 + 88) = v21;
  *v21 = v1;
  v21[1] = sub_100058850;
  sub_10000483C();

  return sub_1000589BC(v22, v23, v24);
}

uint64_t sub_100058850()
{
  sub_1000036A0();
  sub_1000036D0();
  v1 = *v0;
  sub_10000298C();
  *v2 = v1;

  v3 = sub_10001E094();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100058950()
{
  sub_1000036A0();

  sub_100006734();

  return v1();
}

uint64_t sub_1000589BC(uint64_t a1, uint64_t a2, double a3)
{
  *(v4 + 176) = v3;
  *(v4 + 168) = a3;
  *(v4 + 152) = a1;
  *(v4 + 160) = a2;
  *(v4 + 184) = swift_getObjectType();

  return _swift_task_switch(sub_100058A34, 0, 0);
}

uint64_t sub_100058A34()
{
  sub_1000070C8();
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100058B4C;
  v2 = swift_continuation_init();
  v0[17] = sub_10002EB80(&qword_100199D20, &qword_10014E828);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10005D4D4;
  v0[13] = &unk_10018D018;
  v0[14] = v2;
  [v1 asBMAppIntentInvocationWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100058B4C()
{
  sub_1000036A0();
  v1 = *v0;
  sub_10000298C();
  *v2 = v1;
  sub_100009990();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100058C1C()
{
  v56 = v0;
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);
  v3 = sub_10005781C();
  v4 = [v3 source];

  v52 = v2;
  v5 = v2;
  v6 = v1;
  [v4 sendEvent:v5];

  v7 = *(v1 + 16);
  v8 = (v1 + 48);
  for (i = v7; i; --i)
  {
    v10 = v54[19];
    v11 = *v8;

    v12 = v11;
    sub_10005DE18(v10);

    v8 += 3;
  }

  v13 = _swiftEmptyArrayStorage;
  if (v7)
  {
    v55 = _swiftEmptyArrayStorage;
    sub_100011438(0, v7, 0);
    v13 = _swiftEmptyArrayStorage;
    v14 = _swiftEmptyArrayStorage[2];
    v15 = 2 * v14;
    v16 = (v6 + 40);
    do
    {
      v17 = *(v16 - 1);
      v18 = *v16;
      v55 = v13;
      v19 = v14 + 1;
      v20 = v13[3];

      if (v14 >= v20 >> 1)
      {
        sub_100011438(v20 > 1, v19, 1);
        v13 = v55;
      }

      v13[2] = v19;
      v21 = &v13[v15];
      v21[4] = v17;
      v21[5] = v18;
      v15 += 2;
      v16 += 3;
      ++v14;
      --v7;
    }

    while (v7);
  }

  if (qword_100198128 != -1)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v22 = type metadata accessor for Logger();
    sub_100011AB8(v22, qword_10019DA38);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (sub_1000103CC())
    {
      v25 = sub_100007764();
      v26 = sub_1000056E4();
      v55 = v26;
      *v25 = 136315138;
      v27 = Array.description.getter();
      v29 = sub_100004C50(v27, v28, &v55);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v23, v24, "Wrote action record to streams %s", v25, 0xCu);
      sub_1000034F8(v26);
      sub_100004D70();
      sub_100004D8C();
    }

    v30 = v54;
    v31 = v54[22];
    v32 = *(v31 + OBJC_IVAR____TtC10LinkDaemon10Transcript_observers);
    v33 = *(v32 + 16);
    if (v33)
    {
      v34 = v32 + 32;
      do
      {
        sub_100013334(v34, (v54 + 10));
        v35 = sub_1000034B4(v54 + 10, v54[13]);
        sub_1000BDEE8(v13, *v35);
        sub_1000034F8(v54 + 10);
        v34 += 40;
        --v33;
      }

      while (v33);
      v31 = v54[22];
    }

    v36 = OBJC_IVAR____TtC10LinkDaemon10Transcript_nextActionObserverConnections;
    swift_beginAccess();
    if (!*(*(v31 + v36) + 16))
    {
      break;
    }

    v37 = [v54[19] actionOutput];
    if (!v37)
    {
      break;
    }

    v38 = v37;
    v39 = [v37 nextAction];

    v53 = v39;
    if (!v39)
    {
      break;
    }

    sub_10000B2D8(v54[19]);
    if (!v40)
    {
LABEL_32:

      break;
    }

    v41 = sub_10005D190();
    v42 = sub_1000232F4(v41);
    for (j = 0; ; ++j)
    {
      if (v42 == j)
      {

        goto LABEL_32;
      }

      if ((v41 & 0xC000000000000001) != 0)
      {
        v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v44 = *(v41 + 8 * j + 32);
        swift_unknownObjectRetain();
      }

      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v30[19];
      v45 = [v13 action];
      v46 = String._bridgeToObjectiveC()();
      v47 = [v13 actionOutput];
      if (v47 && (sub_100060AA0(v47), v48))
      {
        v13 = v48;
        v49 = String._bridgeToObjectiveC()();
      }

      else
      {
        v49 = 0;
      }

      [v44 didReceiveNextAction:v53 baseAction:v45 forAppWithBundleIdentifier:v46 associatedLiveActivityIdentifier:v49];

      swift_unknownObjectRelease();
      v30 = v54;
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    sub_100002A70(&qword_100198128);
  }

  sub_100003A00();

  return v50();
}

uint64_t sub_1000590F4(uint64_t a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_10002EB80(&qword_100198C20, &qword_10014D090);
  sub_100004B70(v11);
  sub_100003A54();
  __chkstk_darwin(v12);
  v14 = &v26 - v13;
  v15 = sub_100009D54();
  type metadata accessor for TaskPriority();
  sub_100007E2C();
  sub_1000075C4(v16, v17, v18, v19);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  *(v20 + 32) = v5;
  *(v20 + 40) = a1;
  *(v20 + 48) = a2;
  *(v20 + 56) = a3 & 1;
  *(v20 + 64) = v15;
  *(v20 + 72) = a4;
  *(v20 + 80) = a5;
  v21 = v5;
  sub_1000098F0(a1, a2);

  v22 = sub_10000EE44();
  sub_10003A6C0(v22, v23, v14, v24, v20);
}

uint64_t sub_10005925C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = v12;
  v8[3] = v13;
  v9 = swift_task_alloc();
  v8[4] = v9;
  *v9 = v8;
  v9[1] = sub_100057E00;

  return sub_100059320();
}

uint64_t sub_100059320()
{
  sub_1000036A0();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = type metadata accessor for OSSignpostID();
  v1[6] = v5;
  sub_10000D33C(v5);
  v1[7] = v6;
  v1[8] = swift_task_alloc();
  v7 = sub_10001E094();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000593D0()
{
  sub_1000036A0();
  static OSSignpostID.exclusive.getter();
  v1 = sub_100012720();
  sub_1000C4378(v1, v2);
  v0[9] = v3;
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_100059478;
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[2];
  v8 = v0[3];

  return sub_100059764(v4, v7, v8, v5, v6);
}

uint64_t sub_100059478()
{
  sub_1000036A0();
  sub_1000036D0();
  sub_1000050EC();
  *v3 = v2;
  v4 = *v1;
  sub_10000298C();
  *v5 = v4;
  *(v6 + 88) = v0;

  sub_100009990();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100059570()
{
  sub_1000070C8();
  v0 = sub_100012720();
  sub_1000F1718(v0, v1);

  v2 = sub_100007500();
  v3(v2);

  sub_100006734();

  return v4();
}

uint64_t sub_1000595F8()
{
  sub_1000070C8();
  v0 = sub_100012720();
  sub_1000F1718(v0, v1);

  v2 = sub_100007500();
  v3(v2);

  sub_100003A00();

  return v4();
}

uint64_t sub_100059764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  v6 = type metadata accessor for Date();
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();

  return _swift_task_switch(sub_100059828, 0, 0);
}

uint64_t sub_100059828()
{
  v95 = v0;
  v1 = sub_100003D44(0, &qword_100199D10, NSKeyedUnarchiver_ptr);
  v2 = sub_100003D44(0, &qword_100199D18, LNTranscriptActionRecord_ptr);
  v3 = sub_100012F50(v2);
  *(v0 + 72) = v3;
  if (v1)
  {

LABEL_3:
    if (qword_100198128 != -1)
    {
      sub_100002A70(&qword_100198128);
    }

    v4 = type metadata accessor for Logger();
    sub_100011AB8(v4, qword_10019DA38);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (sub_10000E7D4(v6))
    {
      *sub_100011344() = 0;
      sub_1000117B8();
      _os_log_impl(v7, v8, v9, v10, v11, 2u);
      sub_100011FBC();
    }

    v12 = sub_100060730();
    v13 = sub_100007978(&type metadata for TranscriptError, v12);
    sub_1000610E8(v13, v14);
LABEL_52:

    sub_100003A00();
    sub_10000483C();

    __asm { BRAA            X1, X16 }
  }

  v15 = v3;
  if (!v3)
  {
    goto LABEL_3;
  }

  v16 = sub_10000B2D8(v3);
  if (!v17)
  {
    if (qword_100198128 != -1)
    {
      sub_100002A70(&qword_100198128);
    }

    v24 = type metadata accessor for Logger();
    sub_100011AB8(v24, qword_10019DA38);
    v25 = v15;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      sub_100007764();
      v28 = sub_100024674();
      sub_1000215A4(v28, 5.7779e-34);
      sub_100011AD0(&_mh_execute_header, v29, v27, "No bundle identifier set. Failed to record %@.");
      sub_100003EFC(v28, &unk_10019A260, &unk_10014D030);
      sub_100003A0C();
      sub_100004D70();
    }

    v30 = sub_100060730();
    sub_100007978(&type metadata for TranscriptError, v30);
    v32 = 2;
    goto LABEL_51;
  }

  v18 = v16;
  v19 = v17;

  v20 = sub_10000B484();
  if (!v21)
  {

    goto LABEL_23;
  }

  if (v18 == v20 && v19 == v21)
  {

    goto LABEL_29;
  }

  v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v23 & 1) == 0)
  {
LABEL_23:

    if (qword_100198128 != -1)
    {
      sub_100002A70(&qword_100198128);
    }

    v33 = type metadata accessor for Logger();
    sub_100011AB8(v33, qword_10019DA38);
    v25 = v15;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      sub_100007764();
      v36 = sub_100024674();
      sub_1000215A4(v36, 5.7779e-34);
      sub_100011AD0(&_mh_execute_header, v37, v35, "Client lacks application-identifier entitlement. Discarding %@.");
      sub_100003EFC(v36, &unk_10019A260, &unk_10014D030);
      sub_100003A0C();
      sub_100004D70();
    }

    v38 = sub_100060730();
    sub_100007978(&type metadata for TranscriptError, v38);
    v32 = 3;
    goto LABEL_51;
  }

LABEL_29:
  if ([v15 source] != 1)
  {

    if (qword_100198128 != -1)
    {
      sub_100002A70(&qword_100198128);
    }

    v60 = type metadata accessor for Logger();
    sub_100011AB8(v60, qword_10019DA38);
    v25 = v15;
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v61, v62))
    {
      goto LABEL_49;
    }

    sub_1000063EC();
    v63 = sub_100002688();
    v64 = sub_1000056E4();
    v94[0] = v64;
    *v19 = 136315394;
    *(v0 + 112) = [v25 source];
    type metadata accessor for LNTranscriptActionSource(0);
    v65 = String.init<A>(describing:)();
    v67 = sub_100004C50(v65, v66, v94);

    *(v19 + 4) = v67;
    *(v19 + 12) = 2112;
    *(v19 + 14) = v25;
    *v63 = v15;
    v68 = v25;
    _os_log_impl(&_mh_execute_header, v61, v62, "Expected source to be app, found %s. Discarding %@.", v19, 0x16u);
    sub_100003EFC(v63, &unk_10019A260, &unk_10014D030);
    sub_1000036AC(v63);
    sub_1000034F8(v64);
    sub_100003A0C();
    sub_100011FBC();

LABEL_43:
    v81 = sub_100060730();
    v82 = sub_100007978(&type metadata for TranscriptError, v81);
    sub_1000610E8(v82, v83);

    goto LABEL_52;
  }

  v40 = *(v0 + 56);
  v39 = *(v0 + 64);
  v41 = *(v0 + 48);
  v42 = [v15 executionDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  Date.timeIntervalSinceNow.getter();
  v44 = v43;
  v45 = *(v40 + 8);
  v45(v39, v41);
  if (v44 >= 5.0)
  {

    if (qword_100198128 != -1)
    {
      sub_100002A70(&qword_100198128);
    }

    v69 = type metadata accessor for Logger();
    sub_100011AB8(v69, qword_10019DA38);
    v25 = v15;
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v70, v71))
    {

LABEL_50:
      v88 = sub_100060730();
      sub_100007978(&type metadata for TranscriptError, v88);
      v32 = 1;
LABEL_51:
      *v31 = v32;
      swift_willThrow();

      goto LABEL_52;
    }

    v72 = *(v0 + 64);
    v91 = *(v0 + 48);
    sub_1000063EC();
    v92 = sub_100024674();
    v93 = sub_1000056E4();
    v94[0] = v93;
    *v41 = 136315394;
    v73 = [v25 executionDate];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1000099CC();
    sub_100060C6C(v74, v75, &protocol conformance descriptor for Date);
    v76 = dispatch thunk of CustomStringConvertible.description.getter();
    v77 = v45;
    v79 = v78;
    v77(v72, v91);
    v80 = sub_100004C50(v76, v79, v94);

    *(v41 + 4) = v80;
    *(v41 + 12) = 2112;
    *(v41 + 14) = v25;
    *v92 = v15;
    v68 = v25;
    _os_log_impl(&_mh_execute_header, v70, v71, "Expected execution date to be recent, found %s. Discarding %@.", v41, 0x16u);
    sub_100003EFC(v92, &unk_10019A260, &unk_10014D030);
    sub_1000036AC(v92);
    sub_1000034F8(v93);
    sub_1000036AC(v93);
    sub_100004D70();

    goto LABEL_43;
  }

  v46 = sub_10000B5E4(v18, v19);
  v48 = v47;
  v50 = v49;

  *(v0 + 80) = v48;
  if (!v48)
  {
    if (qword_100198128 != -1)
    {
      sub_100002A70(&qword_100198128);
    }

    v84 = type metadata accessor for Logger();
    sub_100011AB8(v84, qword_10019DA38);
    v25 = v15;
    v61 = Logger.logObject.getter();
    v85 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v61, v85))
    {
      sub_100007764();
      v86 = sub_100024674();
      sub_1000215A4(v86, 5.7779e-34);
      sub_100011AD0(&_mh_execute_header, v87, v85, "Stream reference nil. Failed to record %@.");
      sub_100003EFC(v86, &unk_10019A260, &unk_10014D030);
      sub_100003A0C();
      sub_100004D70();
    }

LABEL_49:

    goto LABEL_50;
  }

  v51 = *(v0 + 64);
  v52 = *(v0 + 48);
  *(v0 + 88) = v50;
  *(v0 + 96) = sub_10000B338(v46, v48, v50);
  v53 = [v15 executionDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  Date.timeIntervalSinceReferenceDate.getter();
  v45(v51, v52);
  v54 = swift_task_alloc();
  *(v0 + 104) = v54;
  *v54 = v0;
  v54[1] = sub_10005A148;
  sub_100017F74();
  sub_10000483C();

  return sub_1000589BC(v55, v56, v57);
}

uint64_t sub_10005A148()
{
  sub_1000036A0();
  sub_1000036D0();
  v1 = *v0;
  sub_10000298C();
  *v2 = v1;

  v3 = sub_10001E094();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10005A248()
{
  sub_1000070C8();
  v1 = *(v0 + 72);

  sub_100006734();

  return v2();
}

void sub_10005A2C0(uint64_t a1, void (**a2)(void, void, void))
{
  v3 = sub_100009D54();
  v4 = sub_10000B484();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    if (qword_100198128 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000347C(v8, qword_10019DA38);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v20 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_100004C50(v6, v7, &v20);
      _os_log_impl(&_mh_execute_header, v9, v10, "Transcript read access request from %s", v11, 0xCu);
      sub_1000034F8(v12);
    }

    v13 = sub_10000A01C(v6, v7);

    (a2)[2](a2, v13, 0);
  }

  else
  {
    if (qword_100198128 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000347C(v14, qword_10019DA38);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Connected client lacks application-identifier in entitlements.", v17, 2u);
    }

    sub_100060730();
    swift_allocError();
    *v18 = 3;
    v19 = _convertErrorToNSError(_:)();
    (a2)[2](a2, 0, v19);
  }

  _Block_release(a2);
}

uint64_t sub_10005A670(uint64_t a1)
{
  v1 = a1;
  v21 = a1;
  swift_errorRetain();
  v2 = sub_10002EB80(&unk_100198760, &qword_10014F3C0);
  if (sub_1000139BC(v2, v3, v4, &type metadata for TranscriptError, v5, v6, v7, v8, v18, v21))
  {

    v9 = v19;
  }

  else
  {

    if (!sub_1000139BC(v10, v11, v12, &type metadata for IssueSandboxExceptionError, v13, v14, v15, v16, v19, v1))
    {

      return 0;
    }

    if (v20)
    {
      v9 = 4;
    }

    else
    {
      v9 = 5;
    }
  }

  return v9;
}

uint64_t sub_10005A738(void (*a1)(void))
{
  swift_getObjectType();
  v2 = sub_10005781C();
  v3 = [v2 pruner];

  v4 = String._bridgeToObjectiveC()();
  aBlock[4] = sub_10005A9CC;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  sub_1000077E4();
  aBlock[2] = v5;
  aBlock[3] = &unk_10018D108;
  v6 = _Block_copy(aBlock);

  [v3 deleteWithPolicy:v4 eventsPassingTest:v6];

  _Block_release(v6);
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
    sub_100002A70(&qword_100198128);
    v7 = type metadata accessor for Logger();
    sub_100011AB8(v7, qword_10019DA38);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (sub_100010424())
    {
      sub_100007764();
      v10 = sub_100024674();
      *v6 = 138412290;
      swift_errorRetain();
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 1) = v11;
      *v10 = v11;
      sub_100011AD0(&_mh_execute_header, v12, v9, "Unexpected error. Failed to delete all records. Error: %@");
      sub_100003EFC(v10, &unk_10019A260, &unk_10014D030);
      sub_100003A0C();
      sub_100004D70();
    }

    v13 = sub_100060730();
    sub_100007978(&type metadata for TranscriptError, v13);
    *v14 = 1;
    a1();
  }

  else
  {
    sub_10005E19C(2, sub_10004DF34, 0);
    return (a1)(0);
  }
}

void sub_10005AA5C(void *a1, void (*a2)(void *, void))
{
  v3 = v2;
  swift_getObjectType();
  v108 = sub_100009D54();
  if ((sub_100004250() & 1) == 0)
  {
    v6 = sub_10000B484();
    if (!v7)
    {
      if (qword_100198128 != -1)
      {
        sub_100002A70(&qword_100198128);
      }

      v60 = type metadata accessor for Logger();
      sub_100011AB8(v60, qword_10019DA38);
      v61 = a1;
      v62 = Logger.logObject.getter();
      static os_log_type_t.error.getter();

      if (sub_10001A9A4())
      {
        sub_100007764();
        v63 = sub_100006418();
        sub_100011290(v63, 5.7779e-34);
        sub_100007AFC();
        _os_log_impl(v64, v65, v66, v67, v68, 0xCu);
        sub_100003EFC(v63, &unk_10019A260, &unk_10014D030);
        sub_100004D8C();
        sub_100013468();
      }

      v69 = sub_100060730();
      v36 = sub_100007978(&type metadata for TranscriptError, v69);
      v37 = 3;
      goto LABEL_32;
    }

    sub_10000B274(v6, v7, a1);
  }

  v8 = sub_10000B2D8(a1);
  if (v9)
  {
    v10 = sub_10000B5E4(v8, v9);
    v12 = v11;
    v14 = v13;

    if (v12)
    {
      v102 = v14;
      v106 = v10;
      v107 = v12;
      v103 = v3;
      v15 = sub_10000B338(v10, v12, v14);
      v16 = *(v15 + 16);
      v104 = a2;
      v105 = v15;
      if (v16)
      {
        v17 = v15;
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_100011438(0, v16, 0);
        v18 = _swiftEmptyArrayStorage;
        v19 = (v17 + 40);
        do
        {
          v20 = *(v19 - 1);
          v21 = *v19;
          aBlock[0] = v18;
          v23 = v18[2];
          v22 = v18[3];

          if (v23 >= v22 >> 1)
          {
            sub_100011438(v22 > 1, v23 + 1, 1);
            v18 = aBlock[0];
          }

          v18[2] = v23 + 1;
          v24 = &v18[2 * v23];
          v24[4] = v20;
          v24[5] = v21;
          v19 += 3;
          --v16;
        }

        while (v16);
      }

      if (qword_100198128 != -1)
      {
        sub_100002A70(&qword_100198128);
      }

      v38 = type metadata accessor for Logger();
      sub_10000347C(v38, qword_10019DA38);
      v39 = a1;

      v40 = Logger.logObject.getter();
      static os_log_type_t.default.getter();

      if (sub_100010424())
      {
        v41 = sub_1000063EC();
        v42 = sub_100006418();
        aBlock[0] = sub_1000056E4();
        v43 = aBlock[0];
        *v41 = 136315394;
        v44 = Array.description.getter();
        v46 = sub_100004C50(v44, v45, aBlock);

        *(v41 + 4) = v46;
        *(v41 + 12) = 2112;
        *(v41 + 14) = v39;
        *v42 = v39;
        v47 = v39;
        sub_10001D664(&_mh_execute_header, v48, v49, "Deleting from streams %s with %@");
        sub_100003EFC(v42, &unk_10019A260, &unk_10014D030);
        sub_100003A0C();
        sub_1000034F8(v43);
        sub_1000036AC(v43);
        sub_100013468();
      }

      v72 = sub_10000EF60();
      v74 = v73;
      v75 = sub_10005781C();
      v76 = [v75 pruner];

      v77 = String._bridgeToObjectiveC()();
      v78 = swift_allocObject();
      *(v78 + 16) = v72;
      *(v78 + 24) = v74;
      v79 = swift_allocObject();
      *(v79 + 16) = sub_10000F394;
      *(v79 + 24) = v78;
      aBlock[4] = sub_10000F300;
      aBlock[5] = v79;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      sub_1000077E4();
      aBlock[2] = v80;
      aBlock[3] = &unk_10018D0B8;
      v81 = _Block_copy(aBlock);

      [v76 deleteWithPolicy:v77 eventsPassingTest:v81];

      _Block_release(v81);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }

      else
      {
        sub_10000FD10();
        v83 = *(v105 + 16);

        v101 = v102;
        v100 = v103;

        v84 = (v105 + 48);
        for (i = _swiftEmptyArrayStorage; v83; --v83)
        {
          v86 = *v84;
          v87 = *(v84 - 2) == v106 && v107 == *(v84 - 1);
          if (v87 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            v88 = v86;
            v89 = sub_1000105A8();
            i = sub_1000100E0(v89, v90, v91, v92, v93, 1);
          }

          else
          {

            v94 = v86;
            v95 = sub_1000105A8();
            sub_1000100E0(v95, v96, v97, v98, v99, 0);
          }

          v84 += 3;
        }

        v104(i, 0);

        sub_10001310C();
      }

      return;
    }

    if (qword_100198128 != -1)
    {
      sub_100002A70(&qword_100198128);
    }

    v50 = type metadata accessor for Logger();
    sub_100011AB8(v50, qword_10019DA38);
    v51 = a1;
    v52 = Logger.logObject.getter();
    static os_log_type_t.error.getter();

    if (sub_10001A9A4())
    {
      sub_100007764();
      v53 = sub_100006418();
      sub_100011290(v53, 5.7779e-34);
      sub_100007AFC();
      _os_log_impl(v54, v55, v56, v57, v58, 0xCu);
      sub_100003EFC(v53, &unk_10019A260, &unk_10014D030);
      sub_100004D8C();
      sub_100013468();
    }

    v59 = sub_100060730();
    v36 = sub_100007978(&type metadata for TranscriptError, v59);
    v37 = 1;
  }

  else
  {
    if (qword_100198128 != -1)
    {
      sub_100002A70(&qword_100198128);
    }

    v25 = type metadata accessor for Logger();
    sub_100011AB8(v25, qword_10019DA38);
    v26 = a1;
    v27 = Logger.logObject.getter();
    static os_log_type_t.error.getter();

    if (sub_10001A9A4())
    {
      sub_100007764();
      v28 = sub_100006418();
      sub_100011290(v28, 5.7779e-34);
      sub_100007AFC();
      _os_log_impl(v29, v30, v31, v32, v33, 0xCu);
      sub_100003EFC(v28, &unk_10019A260, &unk_10014D030);
      sub_100004D8C();
      sub_100013468();
    }

    v34 = sub_100060730();
    v36 = sub_100007978(&type metadata for TranscriptError, v34);
    v37 = 2;
  }

LABEL_32:
  *v35 = v37;
  a2(_swiftEmptyArrayStorage, v36);

  sub_10001310C();
}

uint64_t sub_10005B50C(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(uint64_t))
{
  v10 = _Block_copy(aBlock);
  *(swift_allocObject() + 16) = v10;
  v11 = a3;
  v12 = a1;
  v13 = sub_10001832C();
  a7(v13);
}

void sub_10005B5B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for UUID();
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
  if (a2)
  {
    v6 = _convertErrorToNSError(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5.super.isa);
}

id sub_10005B648(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, double a8)
{
  v17 = sub_10002EB80(&qword_100198C20, &qword_10014D090);
  sub_100004B70(v17);
  sub_100003A54();
  __chkstk_darwin(v18);
  v20 = &v34 - v19;
  result = [objc_opt_self() currentConnection];
  if (result)
  {
    v22 = result;
    type metadata accessor for TaskPriority();
    sub_100007E2C();
    sub_1000075C4(v23, v24, v25, v26);
    v27 = swift_allocObject();
    v28 = a6;
    v29 = v27;
    *(v27 + 16) = 0;
    *(v27 + 24) = 0;
    *(v27 + 32) = v8;
    *(v27 + 40) = a1;
    *(v27 + 48) = a2;
    *(v27 + 56) = a3;
    *(v27 + 64) = a4;
    *(v27 + 72) = a8;
    *(v27 + 80) = a5 & 1;
    *(v27 + 88) = v22;
    *(v27 + 96) = v28;
    *(v27 + 104) = a7;
    v30 = v8;
    sub_1000098F0(a1, a2);

    v31 = sub_10000EE44();
    sub_10003A6C0(v31, v32, v20, v33, v29);
  }

  return result;
}

uint64_t sub_10005B7B8(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9[2] = v13;
  v9[3] = v14;
  v10 = swift_task_alloc();
  v9[4] = v10;
  *v10 = v9;
  v10[1] = sub_10005B8A4;

  return sub_10005BA80();
}

uint64_t sub_10005B8A4()
{
  sub_1000036A0();
  sub_1000036D0();
  sub_1000050EC();
  *v3 = v2;
  v4 = *v1;
  sub_10000298C();
  *v5 = v4;
  *(v6 + 40) = v0;

  sub_100009990();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10005B99C()
{
  sub_1000036A0();
  (*(v0 + 16))(0);
  sub_100003A00();

  return v1();
}

uint64_t sub_10005B9FC()
{
  sub_1000070C8();
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  swift_errorRetain();
  v2(v1);

  sub_100003A00();

  return v3();
}

uint64_t sub_10005BA80()
{
  sub_1000036A0();
  v1[7] = v2;
  v1[8] = v0;
  v1[6] = v3;
  v1[4] = v4;
  v1[5] = v5;
  v1[2] = v6;
  v1[3] = v7;
  v8 = type metadata accessor for OSSignpostID();
  v1[9] = v8;
  sub_10000D33C(v8);
  v1[10] = v9;
  v1[11] = swift_task_alloc();
  v10 = sub_10001E094();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_10005BB38()
{
  sub_1000036A0();
  static OSSignpostID.exclusive.getter();
  v1 = sub_100012720();
  sub_1000C4378(v1, v2);
  *(v0 + 12) = v3;
  v4 = swift_task_alloc();
  *(v0 + 13) = v4;
  *v4 = v0;
  v4[1] = sub_10005BBE8;
  v6 = *(v0 + 7);
  v5 = *(v0 + 8);
  v7 = v0[6];
  v8 = *(v0 + 4);
  v9 = *(v0 + 5);
  v10 = *(v0 + 2);
  v11 = *(v0 + 3);

  return sub_10005BF1C(v7, v4, v10, v11, v5, v8, v9, v6);
}

uint64_t sub_10005BBE8()
{
  sub_1000036A0();
  sub_1000036D0();
  sub_1000050EC();
  *v3 = v2;
  v4 = *v1;
  sub_10000298C();
  *v5 = v4;
  *(v6 + 112) = v0;

  sub_100009990();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10005BCE0()
{
  sub_1000070C8();
  v0 = sub_100012720();
  sub_1000F1718(v0, v1);

  v2 = sub_100007500();
  v3(v2);

  sub_100006734();

  return v4();
}

uint64_t sub_10005BD68()
{
  sub_1000070C8();
  v0 = sub_100012720();
  sub_1000F1718(v0, v1);

  v2 = sub_100007500();
  v3(v2);

  sub_100003A00();

  return v4();
}

uint64_t sub_10005BF1C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = a1;
  *(v8 + 48) = a7;
  *(v8 + 56) = a8;
  *(v8 + 32) = a5;
  *(v8 + 40) = a6;
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  return _swift_task_switch(sub_10005BF48, 0, 0);
}

uint64_t sub_10005BF48()
{
  v1 = sub_100003D44(0, &qword_100199D10, NSKeyedUnarchiver_ptr);
  v2 = sub_100003D44(0, &qword_100199D18, LNTranscriptActionRecord_ptr);
  v3 = sub_100012F50(v2);
  v0[9] = v3;
  if (v1)
  {

LABEL_3:
    if (qword_100198128 != -1)
    {
      sub_100002A70(&qword_100198128);
    }

    v4 = type metadata accessor for Logger();
    sub_100011AB8(v4, qword_10019DA38);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (sub_10000E7D4(v6))
    {
      *sub_100011344() = 0;
      sub_1000117B8();
      _os_log_impl(v7, v8, v9, v10, v11, 2u);
      sub_100011FBC();
    }

    v12 = sub_100060730();
    v13 = sub_100007978(&type metadata for TranscriptError, v12);
    sub_1000610E8(v13, v14);
LABEL_8:
    sub_100003A00();

    return v15();
  }

  v17 = v3;
  if (!v3)
  {
    goto LABEL_3;
  }

  v18 = sub_10000B5E4(v0[5], v0[6]);
  v0[10] = v19;
  if (!v19)
  {
    if (qword_100198128 != -1)
    {
      sub_100002A70(&qword_100198128);
    }

    v25 = type metadata accessor for Logger();
    sub_100011AB8(v25, qword_10019DA38);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (sub_10000E7D4(v27))
    {
      v28 = sub_100011344();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Stream reference nil. Failed to record serialized action record.", v28, 2u);
      sub_100004D8C();
    }

    v29 = sub_100060730();
    v30 = sub_100007978(&type metadata for TranscriptError, v29);
    sub_1000610E8(v30, v31);

    goto LABEL_8;
  }

  v0[11] = v20;
  v0[12] = sub_10000B338(v18, v19, v20);
  v21 = swift_task_alloc();
  v0[13] = v21;
  *v21 = v0;
  v21[1] = sub_10005C1DC;
  v22 = sub_100017F74();

  return sub_1000589BC(v22, v23, v24);
}

uint64_t sub_10005C1DC()
{
  sub_1000036A0();
  sub_1000036D0();
  v1 = *v0;
  sub_10000298C();
  *v2 = v1;

  v3 = sub_10001E094();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10005C2DC()
{
  sub_1000036A0();
  v1 = *(v0 + 72);

  sub_100006734();

  return v2();
}

void sub_10005C344(void *a1, void (**a2)(void, void, void))
{
  v4 = sub_10002EB80(&qword_100199C90, &qword_10014D060);
  __chkstk_darwin(v4 - 8);
  __chkstk_darwin(v5);
  __chkstk_darwin(v6);
  v61 = &v48 - v7;
  __chkstk_darwin(v8);
  v60 = &v48 - v9;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v48 - v15;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  v62 = a2;
  _Block_copy(a2);
  v49 = sub_100009D54();
  UUID.init()();
  v18 = *(v11 + 16);
  v50 = v11 + 16;
  v54 = v18;
  v18(v13, v16, v10);
  v19 = *(v11 + 80);
  v56 = ((v19 + 24) & ~v19) + v12;
  v20 = (v19 + 24) & ~v19;
  v58 = v20;
  v59 = v19;
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  v53 = v11;
  v22 = *(v11 + 32);
  v55 = v11 + 32;
  v57 = v22;
  v22(v21 + v20, v13, v10);
  v68 = sub_100060784;
  v69 = v21;
  aBlock = _NSConcreteStackBlock;
  v65 = 1107296256;
  v51 = &v66;
  v66 = sub_10000C13C;
  v67 = &unk_10018CF00;
  v23 = _Block_copy(&aBlock);
  v24 = a1;

  v25 = v49;
  [v49 setInvalidationHandler:v23];
  _Block_release(v23);
  v26 = v54;
  v52 = v17;
  v54(v13, v16, v10);
  v27 = swift_allocObject();
  *(v27 + 16) = v24;
  v57(v27 + v58, v13, v10);
  v68 = sub_100060784;
  v69 = v27;
  aBlock = _NSConcreteStackBlock;
  v65 = 1107296256;
  v66 = sub_10000C13C;
  v67 = &unk_10018CF50;
  v28 = _Block_copy(&aBlock);
  v29 = v24;

  [v25 setInterruptionHandler:v28];
  _Block_release(v28);
  __chkstk_darwin(v30);
  *(&v48 - 2) = v16;
  *(&v48 - 1) = v25;
  sub_10000C99C();
  v26(v13, v16, v10);
  v31 = (v56 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  *(v32 + 16) = v29;
  v33 = v13;
  v34 = v25;
  v57(v32 + v58, v33, v10);
  v35 = (v32 + v31);
  v36 = v52;
  *v35 = sub_100060728;
  v35[1] = v36;
  v68 = sub_1000608CC;
  v69 = v32;
  aBlock = _NSConcreteStackBlock;
  v65 = 1107296256;
  v66 = sub_1000A10D0;
  v67 = &unk_10018CFA0;
  v37 = _Block_copy(&aBlock);
  v38 = v29;

  v39 = [v25 remoteObjectProxyWithErrorHandler:v37];

  _Block_release(v37);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10002EB80(&unk_100199D00, &unk_10014E7F0);
  swift_dynamicCast();
  v40 = v63;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v40 observationDidStartWithConnectionUUID:isa];

  v42 = v60;
  v54(v60, v16, v10);
  sub_1000075C4(v42, 0, 1, v10);
  v43 = v61;
  sub_100009E90(v42, v61, &qword_100199C90, &qword_10014D060);
  if (sub_1000032C4(v43, 1, v10) == 1)
  {
    v44 = 0;
    v45 = v62;
    v46 = v53;
  }

  else
  {
    v44 = UUID._bridgeToObjectiveC()().super.isa;
    v47 = v53;
    (*(v53 + 8))(v43, v10);
    v45 = v62;
    v46 = v47;
  }

  (v45)[2](v45, v44, 0);
  swift_unknownObjectRelease();

  sub_100003EFC(v42, &qword_100199C90, &qword_10014D060);
  (*(v46 + 8))(v16, v10);

  _Block_release(v45);
}

void sub_10005CB8C(void *a1)
{
  sub_100045A18();
  if (v3)
  {
    v4 = v2;
    swift_isUniquelyReferenced_nonNull_native();
    sub_10000468C();
    v5 = sub_10002EB80(&qword_100199BC0, &unk_10014EEA0);
    sub_100018B88(v5, v6, v7, v8, v9, v10, v11, v12, v19, v20);
    v13 = *(v21 + 48);
    v14 = type metadata accessor for UUID();
    sub_10000482C();
    (*(v15 + 8))(v13 + *(v15 + 72) * v4, v14);
    v16 = *(*(v21 + 56) + 8 * v4);
    sub_100003D44(0, &qword_100199BC8, NSXPCConnection_ptr);
    sub_100006A48();
    sub_100060C6C(v17, v18, &protocol conformance descriptor for UUID);
    _NativeDictionary._delete(at:)();

    *a1 = v21;
  }
}

uint64_t sub_10005CD0C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v7 = sub_10002EB80(&qword_100199C90, &qword_10014D060);
  __chkstk_darwin(v7 - 8);
  v9 = &v14[-v8];
  v15 = a3;
  sub_10000C99C();
  v10 = type metadata accessor for UUID();
  sub_1000075C4(v9, 1, 1, v10);
  swift_errorRetain();
  LOBYTE(a3) = sub_10005A670(a1);
  sub_100060730();
  v11 = swift_allocError();
  *v12 = a3;
  a4(v9, v11);

  return sub_100003EFC(v9, &qword_100199C90, &qword_10014D060);
}

void sub_10005CE6C(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
}

void sub_10005CEE0(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_10002EB80(&qword_100199C90, &qword_10014D060);
  __chkstk_darwin(v6 - 8);
  v8 = &v11 - v7;
  sub_100009E90(a1, &v11 - v7, &qword_100199C90, &qword_10014D060);
  v9 = type metadata accessor for UUID();
  isa = 0;
  if (sub_1000032C4(v8, 1, v9) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(*(v9 - 8) + 8))(v8, v9);
  }

  if (a2)
  {
    a2 = _convertErrorToNSError(_:)();
  }

  (*(a3 + 16))(a3, isa, a2);
}

void sub_10005D018(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  sub_10000C99C();
  a3[2](a3, 0);
  _Block_release(a3);
}

uint64_t sub_10005D190()
{
  v1 = *(v0 + OBJC_IVAR____TtC10LinkDaemon10Transcript_nextActionLock);

  os_unfair_lock_lock(v1 + 4);
  sub_10005D210(v0, &v4);
  v2 = v4;
  os_unfair_lock_unlock(v1 + 4);

  return v2;
}

void sub_10005D210(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = OBJC_IVAR____TtC10LinkDaemon10Transcript_nextActionObserverConnections;
  swift_beginAccess();
  v5 = *(*(a1 + v4) + 16);
  if (v5)
  {
    v23 = a2;
    v26 = *(a1 + v4);

    specialized ContiguousArray.reserveCapacity(_:)();
    v7 = sub_100060B10(v26);
    v8 = v26;
    v10 = v9;
    v11 = 0;
    v27 = v26 + 64;
    v24 = v9;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v8 + 32))
    {
      v12 = v7 >> 6;
      if ((*(v27 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_21;
      }

      if (*(v8 + 36) != v10)
      {
        goto LABEL_22;
      }

      v25 = v6;
      v13 = *(*(v8 + 56) + 8 * v7);
      v14 = [v13 remoteObjectProxy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();

      sub_10002EB80(&unk_100199D00, &unk_10014E7F0);
      swift_dynamicCast();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v8 = v26;
      v15 = 1 << *(v26 + 32);
      if (v7 >= v15)
      {
        goto LABEL_23;
      }

      v16 = *(v27 + 8 * v12);
      if ((v16 & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      if (*(v26 + 36) != v10)
      {
        goto LABEL_25;
      }

      v17 = v16 & (-2 << (v7 & 0x3F));
      if (v17)
      {
        v15 = __clz(__rbit64(v17)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v18 = v12 << 6;
        v19 = v12 + 1;
        v20 = (v26 + 72 + 8 * v12);
        while (v19 < (v15 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            sub_100060B50(v7, v10, v25 & 1);
            v8 = v26;
            v15 = __clz(__rbit64(v21)) + v18;
            goto LABEL_17;
          }
        }

        sub_100060B50(v7, v10, v25 & 1);
        v8 = v26;
      }

LABEL_17:
      v6 = 0;
      ++v11;
      v7 = v15;
      v10 = v24;
      if (v11 == v5)
      {

        a2 = v23;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {
LABEL_19:
    *a2 = _swiftEmptyArrayStorage;
  }
}

uint64_t sub_10005D4D4(uint64_t a1, void *a2)
{
  v3 = *sub_1000034B4((a1 + 32), *(a1 + 56));
  v4 = a2;

  return sub_10006A0B4(v3, v4);
}

uint64_t sub_10005D520(uint64_t a1)
{
  v2 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  sub_100004B70(v2);
  sub_100003A54();
  __chkstk_darwin(v3);
  v5 = &v8 - v4;
  sub_100009E90(a1, &v8 - v4, &qword_1001990C0, &unk_10014E200);
  v6 = sub_10005D5EC(0xD000000000000010, 0x8000000100154FB0, v5);
  sub_100003EFC(a1, &qword_1001990C0, &unk_10014E200);
  return v6;
}

uint64_t sub_10005D5EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = 0;
  v7 = qword_10019E598;
  v8 = type metadata accessor for URL();
  sub_1000075C4(v3 + v7, 1, 1, v8);
  *(v3 + qword_10019C860) = _swiftEmptyDictionarySingleton;
  v9 = qword_10019C868;
  sub_10002EB80(&qword_100199D38, &qword_100151700);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v3 + v9) = v10;
  v11 = (v3 + qword_10019C850);
  *v11 = a1;
  v11[1] = a2;
  sub_100009E90(a3, v3 + qword_10019C858, &qword_1001990C0, &unk_10014E200);
  sub_10005D860();
  sub_100003EFC(a3, &qword_1001990C0, &unk_10014E200);
  return v3;
}

uint64_t sub_10005D6E8()
{
  sub_100003EFC(v0 + qword_10019E598, &qword_1001990C0, &unk_10014E200);

  sub_100003EFC(v0 + qword_10019C858, &qword_1001990C0, &unk_10014E200);

  return v0;
}

uint64_t sub_10005D788()
{
  v0 = sub_10005D6E8();

  return _swift_deallocClassInstance(v0);
}

uint64_t type metadata accessor for TranscriptActionRecordStreamManager(uint64_t a1)
{
  result = qword_100199970;
  if (!qword_100199970)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10005D860()
{
  v1 = v0;
  v2 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  __chkstk_darwin(v2 - 8);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v40 = &v39 - v6;
  __chkstk_darwin(v7);
  v9 = &v39 - v8;
  __chkstk_darwin(v10);
  v12 = &v39 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v41 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v39 - v17;
  __chkstk_darwin(v19);
  v21 = &v39 - v20;
  *(v1 + 16) = 0;
  sub_100009E90(v1 + qword_10019C858, v12, &qword_1001990C0, &unk_10014E200);
  if (sub_1000032C4(v12, 1, v13) == 1)
  {
    sub_100003EFC(v12, &qword_1001990C0, &unk_10014E200);
    v22 = [objc_opt_self() defaultManager];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10006B868(v23, v24);

    v9 = v40;
    URL.appendingPathComponent(_:)();
    v25 = *(v14 + 8);
    v25(v18, v13);
  }

  else
  {
    (*(v14 + 32))(v21, v12, v13);
    URL.appendingPathComponent(_:)();
    v25 = *(v14 + 8);
    v25(v21, v13);
  }

  sub_1000075C4(v9, 0, 1, v13);
  v26 = qword_10019E598;
  swift_beginAccess();
  sub_100060D78(v9, v1 + v26);
  swift_endAccess();
  v27 = qword_10019E598;
  swift_beginAccess();
  sub_100009E90(v1 + v27, v4, &qword_1001990C0, &unk_10014E200);
  if (sub_1000032C4(v4, 1, v13))
  {
    sub_100003EFC(v4, &qword_1001990C0, &unk_10014E200);
    sub_100039858();
    swift_allocError();
    *v28 = 1;
    swift_willThrow();
    if (qword_100198128 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_10000347C(v29, qword_10019DA38);
    swift_errorRetain();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v42[0] = v33;
      *v32 = 136315138;
      swift_getErrorValue();
      v34 = Error.localizedDescription.getter();
      v36 = sub_100004C50(v34, v35, v42);

      *(v32 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v30, v31, "StreamManager initialization failed due to %s", v32, 0xCu);
      sub_1000034F8(v33);
    }

    else
    {
    }
  }

  else
  {
    v37 = v41;
    (*(v14 + 16))(v41, v4, v13);
    sub_100003EFC(v4, &qword_1001990C0, &unk_10014E200);
    URL.path.getter();
    v25(v37, v13);

    v38 = qword_10019C860;
    swift_beginAccess();
    *(v1 + v38) = _swiftEmptyDictionarySingleton;

    *(v1 + 16) = 1;
  }
}

void sub_10005DE18(uint64_t a1)
{
  if (*(v1 + 16) == 1)
  {
    v2 = *(v1 + qword_10019C868);
    __chkstk_darwin(a1);
    __chkstk_darwin(v3);

    os_unfair_lock_lock(v2 + 4);
    sub_10000CAE0();
    os_unfair_lock_unlock(v2 + 4);
  }

  else
  {
    if (qword_100198128 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000347C(v4, qword_10019DA38);
    v8 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v9 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_100004C50(0xD00000000000001BLL, 0x8000000100154F30, &v9);
      _os_log_impl(&_mh_execute_header, v8, v5, "%s not executed due to failed initialization - nil config", v6, 0xCu);
      sub_1000034F8(v7);
    }

    else
    {
    }
  }
}

void sub_10005E040()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = sub_10000B5E4(v0, v1);
  v4 = v3;
  v6 = v5;

  if (v4)
  {
    v7 = CFAbsoluteTimeGetCurrent() + -86400.0;
    v8 = objc_autoreleasePoolPush();
    __chkstk_darwin(v8);
    v11 = v7;
    sub_10000F828(v2, v4, v6, 1, sub_1000610C0, v10);
    objc_autoreleasePoolPop(v8);
  }

  CFAbsoluteTimeGetCurrent();
  v11 = __chkstk_darwin(v9);
  sub_10005E19C(1, sub_1000606B8, v10);
}

void sub_10005E19C(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v4 = v3;
  v99 = a3;
  v98 = a2;
  v97 = a1;
  v92 = type metadata accessor for NSFastEnumerationIterator();
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v6 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  __chkstk_darwin(v7 - 8);
  v9 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v88 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  __chkstk_darwin(v15);
  v105 = &v88 - v16;
  __chkstk_darwin(v17);
  v109 = &v88 - v18;
  __chkstk_darwin(v19);
  v21 = &v88 - v20;
  __chkstk_darwin(v22);
  v95 = &v88 - v24;
  if (*(v4 + 16) != 1)
  {
    goto LABEL_4;
  }

  v96 = v23;
  v25 = qword_10019E598;
  swift_beginAccess();
  sub_100009E90(v4 + v25, v12, &qword_1001990C0, &unk_10014E200);
  if (sub_1000032C4(v12, 1, v13) == 1)
  {
    sub_100003EFC(v12, &qword_1001990C0, &unk_10014E200);
LABEL_4:
    if (qword_100198128 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_10000347C(v26, qword_10019DA38);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v113[0] = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_100004C50(0xD000000000000024, 0x8000000100154EB0, v113);
      _os_log_impl(&_mh_execute_header, v27, v28, "%s not executed due to failed initialization - nil directory", v29, 0xCu);
      sub_1000034F8(v30);
    }

    return;
  }

  v103 = *(v14 + 32);
  v104 = v14 + 32;
  v103(v95, v12, v13);
  v94 = objc_opt_self();
  v31 = [v94 defaultManager];
  v32 = NSFileManager.enumerator(at:includingPropertiesForKeys:options:errorHandler:)();

  if (v32)
  {
    v89 = v32;
    NSEnumerator.makeIterator()();
    v106 = (v14 + 16);
    v111 = (v14 + 8);
    *&v33 = 136315138;
    v100 = v33;
    *&v33 = 138412290;
    v90 = v33;
    v108 = v4;
    v102 = v6;
    v34 = v105;
    v35 = v109;
    v93 = v9;
    while (1)
    {
      NSFastEnumerationIterator.next()();
      if (!v113[3])
      {
        break;
      }

      if (swift_dynamicCast())
      {
        sub_1000075C4(v9, 0, 1, v13);
        v103(v35, v9, v13);
        if (qword_100198128 != -1)
        {
          swift_once();
        }

        v36 = type metadata accessor for Logger();
        v37 = sub_10000347C(v36, qword_10019DA38);
        v38 = *v106;
        (*v106)(v34, v35, v13);
        v107 = v37;
        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v112 = v42;
          *v41 = v100;
          sub_100060C6C(&qword_100198D68, &type metadata accessor for URL, &protocol conformance descriptor for URL);
          v43 = dispatch thunk of CustomStringConvertible.description.getter();
          v44 = v34;
          v46 = v45;
          v110 = *v111;
          (v110)(v44, v13);
          v47 = sub_100004C50(v43, v46, &v112);

          *(v41 + 4) = v47;
          _os_log_impl(&_mh_execute_header, v39, v40, "Evaluating stream reference at %s", v41, 0xCu);
          sub_1000034F8(v42);
        }

        else
        {

          v110 = *v111;
          (v110)(v34, v13);
        }

        v35 = v109;
        if (sub_10005EF28(v109))
        {
          v48 = objc_autoreleasePoolPush();
          v49 = URL.lastPathComponent.getter();
          v51 = sub_10000B5E4(v49, v50);
          v53 = v52;
          v55 = v54;

          if (v53)
          {
            sub_10000F828(v51, v53, v55, v97, v98, v99);
          }

          objc_autoreleasePoolPop(v48);
          (v110)(v35, v13);
          v6 = v102;
          v34 = v105;
        }

        else
        {
          v56 = v96;
          v38(v96, v35, v13);
          v57 = Logger.logObject.getter();
          v58 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v57, v58))
          {
            v59 = swift_slowAlloc();
            v60 = swift_slowAlloc();
            v112 = v60;
            *v59 = v100;
            sub_100060C6C(&qword_100198D68, &type metadata accessor for URL, &protocol conformance descriptor for URL);
            v61 = dispatch thunk of CustomStringConvertible.description.getter();
            v63 = v62;
            (v110)(v56, v13);
            v64 = sub_100004C50(v61, v63, &v112);

            *(v59 + 4) = v64;
            _os_log_impl(&_mh_execute_header, v57, v58, "Invalid streamURL detected, removing %s", v59, 0xCu);
            sub_1000034F8(v60);
          }

          else
          {

            (v110)(v56, v13);
          }

          v65 = [v94 defaultManager];
          v35 = v109;
          URL._bridgeToObjectiveC()(v66);
          v68 = v67;
          v112 = 0;
          v69 = [v65 removeItemAtURL:v67 error:&v112];

          v9 = v93;
          if (v69)
          {
            v70 = v112;
          }

          else
          {
            v71 = v112;
            _convertNSErrorToError(_:)();

            swift_willThrow();
            v101 = 0;
            swift_errorRetain();
            v72 = Logger.logObject.getter();
            v73 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v72, v73))
            {
              v74 = swift_slowAlloc();
              v75 = swift_slowAlloc();
              *v74 = v90;
              swift_errorRetain();
              v76 = _swift_stdlib_bridgeErrorToNSError();
              *(v74 + 4) = v76;
              *v75 = v76;
              _os_log_impl(&_mh_execute_header, v72, v73, "Failed to remove file %@", v74, 0xCu);
              sub_100003EFC(v75, &unk_10019A260, &unk_10014D030);
            }

            else
            {
            }

            v35 = v109;
          }

          (v110)(v35, v13);
          v6 = v102;
          v34 = v105;
        }
      }

      else
      {
        sub_1000075C4(v9, 1, 1, v13);
        sub_100003EFC(v9, &qword_1001990C0, &unk_10014E200);
      }
    }

    (*(v91 + 8))(v6, v92);
    (*v111)(v95, v13);
  }

  else
  {
    if (qword_100198128 != -1)
    {
      swift_once();
    }

    v77 = type metadata accessor for Logger();
    sub_10000347C(v77, qword_10019DA38);
    (*(v14 + 16))(v21, v95, v13);
    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v110 = v80;
      v111 = swift_slowAlloc();
      v113[0] = v111;
      *v80 = 136315138;
      sub_100060C6C(&qword_100198D68, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v81 = dispatch thunk of CustomStringConvertible.description.getter();
      v83 = v82;
      v84 = *(v14 + 8);
      v84(v21, v13);
      v85 = sub_100004C50(v81, v83, v113);

      v86 = v110;
      *(v110 + 4) = v85;
      _os_log_impl(&_mh_execute_header, v78, v79, "Failed to generate enumerator for directory %s", v86, 0xCu);
      sub_1000034F8(v111);
    }

    else
    {

      v84 = *(v14 + 8);
      v84(v21, v13);
    }

    sub_100039858();
    swift_allocError();
    *v87 = 0;
    swift_willThrow();
    v84(v95, v13);
  }
}

BOOL sub_10005EF28(uint64_t a1)
{
  sub_10002EB80(&unk_100199C50, &unk_10014E7B8);
  sub_10002EB80(&unk_10019B1E0, &unk_10014E3A0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10014E680;
  Regex.init(_regexString:version:)();
  Regex.init(_regexString:version:)();
  Regex.init(_regexString:version:)();
  Regex.init(_regexString:version:)();
  Regex.init(_regexString:version:)();
  Regex.init(_regexString:version:)();
  v4[2] = a1;
  LOBYTE(a1) = sub_10005761C(sub_1000606EC, v4, v2);
  swift_setDeallocating();
  sub_1000B306C();
  return (a1 & 1) == 0;
}

void *sub_10005F130(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = v3;
  v8 = qword_10019C860;
  swift_beginAccess();

  v9 = sub_1000B6338();

  if (v9)
  {

    sub_100010054(a1, a2, a3);
    v11 = v10;
    v13 = v12;
    if (qword_100198128 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000347C(v14, qword_10019DA38);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v42[0] = v18;
      *v17 = 136315138;
      v19 = sub_100004C50(v11, v13, v42);

      *(v17 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v15, v16, "Returned writer for %s", v17, 0xCu);
      sub_1000034F8(v18);
    }

    else
    {
    }
  }

  else
  {
    objc_allocWithZone(BMStreamDatastore);
    v20 = a3;
    v21 = sub_1000600CC(a1, a2, 1, a3);
    if (v21)
    {
      v9 = v21;
      sub_100010054(a1, a2, v20);
      v23 = v22;
      v25 = v24;
      if (qword_100198128 != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      sub_10000347C(v26, qword_10019DA38);

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v27, v28))
      {
        log = v27;
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v42[0] = v30;
        *v29 = 136315138;
        v31 = sub_100004C50(v23, v25, v42);

        *(v29 + 4) = v31;
        _os_log_impl(&_mh_execute_header, log, v28, "Created writer for %s", v29, 0xCu);
        sub_1000034F8(v30);
      }

      else
      {
      }

      sub_100003D44(0, &qword_100199D18, LNTranscriptActionRecord_ptr);
      [v9 updateMetadata:swift_getObjCClassFromMetadata()];
      swift_beginAccess();
      v38 = v9;
      swift_isUniquelyReferenced_nonNull_native();
      v41 = *(v4 + v8);
      sub_100068DFC(v38, a1, a2);
      *(v4 + v8) = v41;
      swift_endAccess();
    }

    else
    {
      if (qword_100198128 != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      sub_10000347C(v32, qword_10019DA38);

      v33 = v20;
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v42[0] = v37;
        *v36 = 136315138;
        *(v36 + 4) = sub_100004C50(a1, a2, v42);
        _os_log_impl(&_mh_execute_header, v34, v35, "Biome stream writer for %s returned nil", v36, 0xCu);
        sub_1000034F8(v37);
      }

      return 0;
    }
  }

  return v9;
}

uint64_t sub_10005F66C()
{
  sub_1000070C8();
  sub_10005E040();
  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_10005F6F0()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10005F768()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10005F7F8;

  return sub_10005F64C();
}

uint64_t sub_10005F7F8()
{
  sub_1000036A0();
  v3 = v2;
  sub_1000036D0();
  v4 = *v1;
  sub_10000298C();
  *v5 = v4;

  if (v0)
  {
    sub_100003A00();

    return v6();
  }

  else
  {
    v8 = *(v4 + 8);

    return v8(v3 & 1);
  }
}

uint64_t sub_10005F914()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  qword_10019DA60 = result;
  *algn_10019DA68 = v1;
  return result;
}

uint64_t sub_10005F958(uint64_t a1)
{
  if ((a1 - 1000) >= 7)
  {
    return 6;
  }

  else
  {
    return (0x4060503020100uLL >> (8 * (a1 + 24)));
  }
}

Swift::Int sub_10005F998(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_10014E9B8[a1]);
  return Hasher._finalize()();
}

Swift::Int sub_10005FA30(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_10014E9B8[a2]);
  return Hasher._finalize()();
}

uint64_t sub_10005FA80@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10005F958(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10005FAAC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10005F944(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_10005FAD8(uint64_t a1)
{
  v2 = sub_100060FA8();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10005FB14(uint64_t a1)
{
  v2 = sub_100060FA8();
  v3 = sub_100060FFC();
  v4 = sub_100061050();

  return Error<>._code.getter(a1, v2, v3, v4);
}

uint64_t sub_10005FB70()
{
  if (qword_100198138 != -1)
  {
    swift_once();
  }

  v0 = qword_10019DA60;

  return v0;
}

uint64_t sub_10005FBE4(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v21 - v7;
  if (qword_100198438 != -1)
  {
    swift_once();
  }

  v9 = qword_10019E550;
  swift_unknownObjectRetain();
  OSSignpostID.init(log:object:)();
  if (qword_100198430 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for OSSignposter();
  sub_10000347C(v10, qword_10019E538);
  sub_10010FB90();
  v12 = v11;
  v14 = v13;
  v15 = OSSignposter.logHandle.getter();
  v16 = static os_signpost_type_t.begin.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
    goto LABEL_14;
  }

  if ((v14 & 1) == 0)
  {
    if (v12)
    {
LABEL_13:
      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, v16, v19, v12, "", v18, 2u);

LABEL_14:

      (*(v3 + 16))(v5, v8, v2);
      type metadata accessor for OSSignpostIntervalState();
      swift_allocObject();
      v20 = OSSignpostIntervalState.init(id:isOpen:)();
      (*(v3 + 8))(v8, v2);
      return v20;
    }

    __break(1u);
  }

  if (v12 >> 32)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((v12 & 0xFFFFF800) != 0xD800)
  {
    if (v12 >> 16 <= 0x10)
    {
      v12 = &v22;
      goto LABEL_13;
    }

    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
  return result;
}

id sub_10005FE98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = String._bridgeToObjectiveC()();

  v8 = [v6 initWithStoreBasePath:v7 segmentSize:a3 protectionClass:a4];

  return v8;
}

void sub_10005FF24(double a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, uint64_t a6)
{
  v11 = sub_10005F130(a3, a4, a5);
  if (v11)
  {
    v12 = v11;
    if (([v11 writeEventWithEventBody:a6 timestamp:a1] & 1) == 0)
    {
      if (qword_100198128 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_10000347C(v13, qword_10019DA38);

      v14 = a5;
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v19 = v18;
        *v17 = 136315138;
        *(v17 + 4) = sub_100004C50(a3, a4, &v19);
        _os_log_impl(&_mh_execute_header, v15, v16, "Biome stream writer for %s failed to write", v17, 0xCu);
        sub_1000034F8(v18);
      }
    }
  }
}

id sub_1000600CC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = String._bridgeToObjectiveC()();

  v8 = [v4 initWithStream:v7 permission:a3 config:a4];

  return v8;
}

void *sub_100060168(uint64_t a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = (a2)(&v4, a1);
  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_1000601A0()
{
  v1 = v0;
  sub_100045A18();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v0;
  v6 = *(*v0 + 24);
  sub_10002EB80(&qword_100199BC0, &unk_10014EEA0);
  _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v6);
  v7 = *(v11 + 48);
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 8))(v7 + *(*(v8 - 8) + 72) * v4, v8);
  v9 = *(*(v11 + 56) + 8 * v4);
  sub_100003D44(0, &qword_100199BC8, NSXPCConnection_ptr);
  sub_100060C6C(&qword_100199BD0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  _NativeDictionary._delete(at:)();
  *v1 = v11;
  return v9;
}

uint64_t sub_1000602F0()
{
  sub_100061108();
  v4 = sub_10000C2A0(v2, v3);
  if (v5)
  {
    v6 = v4;
    swift_isUniquelyReferenced_nonNull_native();
    sub_100018700();
    v7 = sub_10002EB80(&qword_100199C68, &unk_10014E7D0);
    sub_10001D594(v7, v8, v9, v10, v11, v12, v13, v14, v23, v24);
    sub_10001CEA0();

    v15 = *(v1 + 56);
    v16 = type metadata accessor for UUID();
    sub_10000482C();
    (*(v17 + 32))(v0, v15 + *(v17 + 72) * v6, v16);
    sub_10001832C();
    _NativeDictionary._delete(at:)();
    v18 = sub_100019CE8();
    v21 = v16;
  }

  else
  {
    type metadata accessor for UUID();
    v18 = sub_10001A9BC();
  }

  return sub_1000075C4(v18, v19, v20, v21);
}

uint64_t sub_1000603E8()
{
  sub_100061108();
  v4 = sub_100045ADC(v2, v3);
  if (v5)
  {
    v6 = v4;
    swift_isUniquelyReferenced_nonNull_native();
    sub_100018700();
    v7 = sub_10002EB80(&qword_100199C78, &unk_10014E7E0);
    sub_10001D594(v7, v8, v9, v10, v11, v12, v13, v14, v24, v25);
    sub_10001CEA0();
    sub_100009B18(*v15, *(v15 + 8));
    v16 = *(v1 + 56);
    v17 = sub_10002EB80(&qword_100199C70, &unk_10014EE60);
    sub_10000482C();
    sub_10005644C(v16 + *(v18 + 72) * v6, v0, &qword_100199C70, &unk_10014EE60);
    sub_10002EB2C();
    sub_10001832C();
    _NativeDictionary._delete(at:)();
    v19 = sub_100019CE8();
    v22 = v17;
  }

  else
  {
    sub_10002EB80(&qword_100199C70, &unk_10014EE60);
    v19 = sub_10001A9BC();
  }

  return sub_1000075C4(v19, v20, v21, v22);
}

uint64_t sub_1000604FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_10000C2A0(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  swift_isUniquelyReferenced_nonNull_native();
  sub_10000468C();
  v7 = sub_10002EB80(&qword_100199C88, &qword_10014EE80);
  sub_100018B88(v7, v8, v9, v10, v11, v12, v13, v14, v17, v18);

  v15 = *(*(v19 + 56) + 24 * v6);
  _NativeDictionary._delete(at:)();
  *v3 = v19;
  return v15;
}

uint64_t sub_1000605D4()
{
  sub_100061108();
  v4 = sub_10000C2A0(v2, v3);
  if (v5)
  {
    v6 = v4;
    swift_isUniquelyReferenced_nonNull_native();
    sub_100018700();
    v7 = sub_10002EB80(&qword_100199C60, &qword_10014E7C8);
    sub_10001D594(v7, v8, v9, v10, v11, v12, v13, v14, v23, v24);
    sub_10001CEA0();

    v15 = *(v1 + 56);
    v16 = type metadata accessor for LNBundleRecord(0);
    sub_10000482C();
    sub_10004AEF0(v15 + *(v17 + 72) * v6, v0);
    sub_10001832C();
    _NativeDictionary._delete(at:)();
    v18 = sub_100019CE8();
    v21 = v16;
  }

  else
  {
    type metadata accessor for LNBundleRecord(0);
    v18 = sub_10001A9BC();
  }

  return sub_1000075C4(v18, v19, v20, v21);
}

BOOL sub_1000606B8(void *a1)
{
  v2 = *(v1 + 16);
  [a1 timestamp];
  return v3 < v2;
}

unint64_t sub_100060730()
{
  result = qword_100199C98;
  if (!qword_100199C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100199C98);
  }

  return result;
}

uint64_t sub_10006079C()
{
  type metadata accessor for UUID();
  sub_1000128D8();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v1 + v5, v0);

  return _swift_deallocObject(v1, v5 + v7, v4 | 7);
}

uint64_t sub_100060850(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = type metadata accessor for UUID();
  sub_100004B70(v2);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a1(v4, v5);
}

uint64_t sub_1000608CC(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  sub_10000D33C(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = *(v1 + 16);
  v10 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10005CD0C(a1, v9, v1 + v8, v10);
}

uint64_t sub_100060970()
{
  v1 = *(v0 + 7);
  v2 = *(v0 + 8);
  v3 = v0[9];
  v4 = swift_task_alloc();
  v5 = sub_100004DC8(v4);
  *v5 = v6;
  v5[1] = sub_10000BEC4;
  sub_10001298C();
  sub_100003AB4();

  return sub_10005B7B8(v3, v7, v8, v9, v10, v11, v12, v1, v2);
}

uint64_t sub_100060AA0(void *a1)
{
  v2 = [a1 activityIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100060B50(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_100060B8C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = swift_task_alloc();
  v4 = sub_100004DC8(v3);
  *v4 = v5;
  v4[1] = sub_10000BEC4;
  sub_10001298C();
  sub_100003AB4();

  return sub_10005925C(v6, v7, v8, v9, v10, v11, v1, v2);
}

uint64_t sub_100060C6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100060CB4()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = swift_task_alloc();
  v4 = sub_100004DC8(v3);
  *v4 = v5;
  v4[1] = sub_10000BEC4;
  sub_10001298C();
  sub_100003AB4();

  return sub_100057D50(v6, v7, v8, v9, v10, v11, v1, v2);
}

uint64_t sub_100060D78(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for TranscriptError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TranscriptError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100060F54()
{
  result = qword_100199D40;
  if (!qword_100199D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100199D40);
  }

  return result;
}

unint64_t sub_100060FA8()
{
  result = qword_100199D48;
  if (!qword_100199D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100199D48);
  }

  return result;
}

unint64_t sub_100060FFC()
{
  result = qword_100199D50;
  if (!qword_100199D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100199D50);
  }

  return result;
}

unint64_t sub_100061050()
{
  result = qword_100199D58;
  if (!qword_100199D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100199D58);
  }

  return result;
}

uint64_t sub_1000610E8(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

uint64_t sub_10006112C(uint64_t a1)
{

  return Logger.logObject.getter();
}

unint64_t sub_100061144(unint64_t a1, unint64_t a2)
{
  v2 = a2;
  v11[0] = 95;
  v11[1] = 0xE100000000000000;
  v10[2] = v11;
  v4 = sub_1000615E0(sub_10004BC6C, v10, a1, a2);
  if ((v5 & 1) != 0 || !(v4 >> 14))
  {
    goto LABEL_6;
  }

  v6 = String.index(after:)();
  v7 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 >> 14 == 4 * v7)
  {
LABEL_6:
    sub_1000616E4();
    swift_allocError();
    *v8 = a1;
    *(v8 + 8) = v2;
    *(v8 + 16) = 0;
    swift_willThrow();
  }

  else
  {
    String.subscript.getter();
    v2 = static String._fromSubstring(_:)();
  }

  return v2;
}

unint64_t sub_100061264(uint64_t a1, unint64_t a2, char a3)
{
  if (!a3)
  {
    _StringGuts.grow(_:)(36);

    v12 = 0xD000000000000022;
    v9 = a1;
    v10 = a2;
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v12 = 0;
    _StringGuts.grow(_:)(61);
    v5._countAndFlagsBits = 0xD00000000000002DLL;
    v5._object = 0x8000000100154FD0;
    String.append(_:)(v5);
    v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v6);

    v7._countAndFlagsBits = 0x6E615278616D202CLL;
    v7._object = 0xEB00000000203A6BLL;
    String.append(_:)(v7);
    v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v8);

    v9 = 41;
    v10 = 0xE100000000000000;
LABEL_5:
    String.append(_:)(*&v9);
    return v12;
  }

  return 0x6C616E7265746E49;
}

uint64_t sub_10006140C(uint64_t a1, unint64_t a2, char a3)
{
  v6 = Dictionary.init(dictionaryLiteral:)();
  v7 = sub_100061264(a1, a2, a3);
  v9 = v8;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v16 = &type metadata for String;
  *&v15 = v7;
  *(&v15 + 1) = v9;
  sub_1000398F4(&v15, v14);
  swift_isUniquelyReferenced_nonNull_native();
  sub_100068968(v14, v10, v12);

  return v6;
}

uint64_t sub_100061568(uint64_t a1)
{
  v2 = sub_100061800();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000615A4(uint64_t a1)
{
  v2 = sub_100061800();

  return Error<>._code.getter(a1, v2);
}

unint64_t sub_1000615E0(uint64_t (*a1)(void *), uint64_t a2, unint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3;
  }

  v7 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  while (1)
  {
    if (v8 < 0x4000)
    {
      return 0;
    }

    v8 = String.index(before:)();
    v13[0] = String.subscript.getter();
    v13[1] = v9;
    v10 = a1(v13);
    if (v4)
    {
      break;
    }

    v11 = v10;

    if (v11)
    {
      return v8;
    }
  }

  return v8;
}

unint64_t sub_1000616E4()
{
  result = qword_100199D60;
  if (!qword_100199D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100199D60);
  }

  return result;
}

uint64_t sub_100061738(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_100061754(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100061794(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_1000617D8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_100061800()
{
  result = qword_100199D68;
  if (!qword_100199D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100199D68);
  }

  return result;
}

uint64_t sub_100061858(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 4)
  {
    return 3;
  }

  else
  {
    return 0x2010003u >> (8 * v1);
  }
}

Swift::Int Connection.Operation.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t sub_100061918(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = 0;
  *(v4 + 24) = 1;
  *(v4 + 32) = a3;
  *(v4 + 40) = a4;
  *(v4 + 48) = a1;
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = a3;
  v9[4] = a4;
  v13[4] = sub_100061FB8;
  v13[5] = v9;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100061D24;
  v13[3] = &unk_10018D420;
  v10 = _Block_copy(v13);
  swift_retain_n();

  v11 = os_state_add_handler();

  _Block_release(v10);
  *(v4 + 16) = v11;
  *(v4 + 24) = 0;
  return v4;
}

char *sub_100061A58(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  if (*(Strong + 48) == 1 && (*(Strong + 24) & 1) == 0)
  {
    *(Strong + 16) = 0;
    *(Strong + 24) = 1;
    os_state_remove_handler();
  }

  v6 = sub_100061858(a1);
  v7 = a3(v6);
  if (v8)
  {
    v9 = sub_100061B18(v7, v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

char *sub_100061B18(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  __src[0] = 0;
  v6 = [v4 dataWithPropertyList:isa format:200 options:0 error:__src];

  v7 = __src[0];
  if (v6)
  {
    v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11 = Data.count.getter();
    v12 = __OFADD__(v11, 200);
    v13 = v11 + 200;
    if (v12)
    {
      __break(1u);
    }

    else
    {
      v14 = calloc(v13, 1uLL);
      if (!v14)
      {

        goto LABEL_9;
      }

      bzero(__src + 4, 0xC4uLL);
      LODWORD(__src[0]) = 1;
      sub_100061FF4(a1, a2, &__src[17], &v19);

      v15 = Data.count.getter();
      if ((v15 & 0x8000000000000000) == 0)
      {
        if (!HIDWORD(v15))
        {
          HIDWORD(__src[0]) = v15;
          memcpy(v14, __src, 0xC8uLL);
          Data.count.getter();
          Data.copyBytes(to:count:)();
LABEL_9:
          sub_100009B18(v8, v10);
          return v14;
        }

LABEL_13:
        __break(1u);
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  v16 = v7;

  _convertNSErrorToError(_:)();

  swift_willThrow();

  return 0;
}

uint64_t sub_100061D24(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v4 = v3(a2);

  return v4;
}

uint64_t sub_100061D74()
{
  if ((*(v0 + 24) & 1) == 0)
  {
    os_state_remove_handler();
  }

  return v0;
}

uint64_t sub_100061DA4()
{
  sub_100061D74();

  return _swift_deallocClassInstance(v0);
}

uint64_t getEnumTagSinglePayload for OSStateHandler.Hint(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for OSStateHandler.Hint(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100061F64()
{
  result = qword_100199E20;
  if (!qword_100199E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100199E20);
  }

  return result;
}

char *sub_100061FC4(char *__src, char *__dst, uint64_t a3)
{
  if (__dst)
  {
    return strncpy(__dst, __src, a3 - __dst);
  }

  __break(1u);
  return __src;
}

char *sub_100061FF4(uint64_t a1, uint64_t a2, char *__dst, uint64_t a4)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    return _StringGuts._slowWithCString<A>(_:)();
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *__src = a1;
    v7 = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
    return sub_100061FC4(v4, __dst, a4);
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
    return _StringGuts._slowWithCString<A>(_:)();
  }

  v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
  return sub_100061FC4(v4, __dst, a4);
}

void sub_10006209C(uint64_t a1)
{
  sub_100062140(319);
  if (v1 <= 0x3F)
  {
    sub_100003D44(319, &unk_10019AB20, LNActionMetadata_ptr);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100062140(uint64_t a1)
{
  if (!qword_10019A8C0)
  {
    type metadata accessor for URL();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10019A8C0);
    }
  }
}

void sub_100062198(uint64_t a1)
{
  v1 = a1;
  v39 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v47 = _swiftEmptyArrayStorage;
    sub_100011438(0, v2 & ~(v2 >> 63), 0);
    v41 = _swiftEmptyArrayStorage;
    v44 = sub_10006651C();
    v45 = v3;
    v46 = v4 & 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v37 = v1 + 56;
      v36 = v1 + 64;
      v38 = v2;
      while (!__OFADD__(v5++, 1))
      {
        v7 = v44;
        v8 = v46;
        v40 = v45;
        v9 = v1;
        sub_100066190(v44, v45, v46, v1);
        v11 = v10;
        v42 = 0x273D65756C6176;
        v43 = 0xE700000000000000;
        v12 = [v10 identifier];
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;

        v16._countAndFlagsBits = v13;
        v16._object = v15;
        String.append(_:)(v16);

        v17._countAndFlagsBits = 39;
        v17._object = 0xE100000000000000;
        String.append(_:)(v17);

        v18 = v42;
        v19 = v43;
        v20 = v41;
        v47 = v41;
        v22 = v41[2];
        v21 = v41[3];
        if (v22 >= v21 >> 1)
        {
          sub_100011438(v21 > 1, v22 + 1, 1);
          v20 = v47;
        }

        v20[2] = v22 + 1;
        v23 = &v20[2 * v22];
        v23[4] = v18;
        v23[5] = v19;
        v41 = v20;
        if (v39)
        {
          if (!v8)
          {
            goto LABEL_36;
          }

          v1 = v9;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v28 = v38;
          sub_10002EB80(&qword_100199ED8, &qword_10014ED28);
          v29 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v29(&v42, 0);
        }

        else
        {
          if (v8)
          {
            goto LABEL_37;
          }

          if ((v7 & 0x8000000000000000) != 0)
          {
            goto LABEL_32;
          }

          v1 = v9;
          v24 = 1 << *(v9 + 32);
          if (v7 >= v24)
          {
            goto LABEL_32;
          }

          v25 = v7 >> 6;
          v26 = *(v37 + 8 * (v7 >> 6));
          if (((v26 >> v7) & 1) == 0)
          {
            goto LABEL_33;
          }

          if (*(v9 + 36) != v40)
          {
            goto LABEL_34;
          }

          v27 = v26 & (-2 << (v7 & 0x3F));
          if (v27)
          {
            v24 = __clz(__rbit64(v27)) | v7 & 0x7FFFFFFFFFFFFFC0;
            v28 = v38;
          }

          else
          {
            v30 = v25 << 6;
            v31 = v25 + 1;
            v32 = (v36 + 8 * v25);
            v28 = v38;
            while (v31 < (v24 + 63) >> 6)
            {
              v34 = *v32++;
              v33 = v34;
              v30 += 64;
              ++v31;
              if (v34)
              {
                sub_100060B50(v7, v40, 0);
                v24 = __clz(__rbit64(v33)) + v30;
                goto LABEL_27;
              }
            }

            sub_100060B50(v7, v40, 0);
          }

LABEL_27:
          v35 = *(v9 + 36);
          v44 = v24;
          v45 = v35;
          v46 = 0;
        }

        if (v5 == v28)
        {
          sub_100060B50(v44, v45, v46);
          return;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }
}

void sub_1000624FC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v35._countAndFlagsBits = a4;
  v35._object = a5;
  v34._countAndFlagsBits = a1;
  v34._object = a2;
  v7 = *(a7 + 16);
  v8 = _swiftEmptyArrayStorage;
  v9 = (a7 + 56);
  v10 = v7;
  if (v7)
  {
    while (1)
    {
      v11 = *(v9 - 1);
      v12 = *v9;
      v14 = *(v9 - 3);
      v13 = *(v9 - 2);
      sub_10002EB80(&unk_100198B60, &qword_10014E3C0);
      inited = swift_initStackObject();
      *(inited + 32) = v14;
      *(inited + 16) = xmmword_10014BC40;
      *(inited + 40) = v13;
      *(inited + 48) = v11;
      *(inited + 56) = v12;
      v16 = v8[2];
      if (__OFADD__(v16, 2))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || (v17 = v8[3] >> 1, v17 < v16 + 2))
      {
        sub_100013A60();
        v8 = v18;
        v17 = v18[3] >> 1;
      }

      if (v17 - v8[2] < 2)
      {
        goto LABEL_16;
      }

      swift_arrayInitWithCopy();

      v19 = v8[2];
      v20 = __OFADD__(v19, 2);
      v21 = v19 + 2;
      if (v20)
      {
        goto LABEL_17;
      }

      v8[2] = v21;
      v9 += 4;
      if (!--v10)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }

  else
  {
LABEL_9:
    if (v7)
    {
      sub_100011438(0, v7, 0);
      v22 = _swiftEmptyArrayStorage[2];
      v23 = 2 * v22;
      do
      {
        v24 = _swiftEmptyArrayStorage[3];
        v25 = v22 + 1;
        if (v22 >= v24 >> 1)
        {
          sub_100011438(v24 > 1, v22 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v25;
        v26 = &_swiftEmptyArrayStorage[v23];
        v26[4] = 0x293F202C3F28;
        v26[5] = 0xE600000000000000;
        v23 += 2;
        v22 = v25;
        --v7;
      }

      while (v7);
    }

    _StringGuts.grow(_:)(27);

    String.append(_:)(v34);
    v27._countAndFlagsBits = 8236;
    v27._object = 0xE200000000000000;
    String.append(_:)(v27);
    String.append(_:)(v35);
    v28._countAndFlagsBits = 0x2028204E49202920;
    v28._object = 0xEF205345554C4156;
    String.append(_:)(v28);
    sub_10002EB80(&unk_10019ACC0, &qword_1001507B0);
    sub_100013EBC(&qword_10019BB00, &unk_10019ACC0, &qword_1001507B0, &protocol conformance descriptor for [A]);
    v29 = BidirectionalCollection<>.joined(separator:)();
    v31 = v30;

    v32._countAndFlagsBits = v29;
    v32._object = v31;
    String.append(_:)(v32);

    v33._countAndFlagsBits = 10528;
    v33._object = 0xE200000000000000;
    String.append(_:)(v33);
    sub_10006DF2C(v8);
  }
}

uint64_t sub_100062880()
{
  v0 = sub_1000077D8();
  v2 = sub_10002EB80(v0, v1);
  sub_100007108();
  v5 = sub_100013EBC(v3, &unk_10019AAC0, &unk_10014BE40, v4);
  return ExpressionType.init(_:)(0xD000000000000010, 0x8000000100154580, v2, v5);
}

uint64_t sub_10006294C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  sub_100007108();
  v9 = sub_100013EBC(v7, &unk_10019AAC0, &unk_10014BE40, v8);
  return ExpressionType.init(_:)(a3, a4, v6, v9);
}

uint64_t sub_1000629D8@<X0>(uint64_t *a1@<X8>)
{
  if (qword_100198140 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &unk_10019DA70, sizeof(__dst));
  memcpy(v12, &unk_10019DA70, sizeof(v12));
  if (qword_100198150 != -1)
  {
    swift_once();
  }

  memcpy(v11, __dst, sizeof(v11));
  QueryType.namespace<A>(_:)(qword_10019DB38, unk_10019DB40, qword_10019DB48, &type metadata for Table, &type metadata for String, &protocol witness table for Table, v2, v3, v11[0], v11[1], v11[2], v11[3], v11[4], v11[5], v11[6], v11[7], v11[8], v11[9], v11[10], v11[11], v11[12], v11[13], v11[14], v11[15], v11[16], v11[17], v11[18], v11[19], v11[20], v11[21], v12[0], v12[1], v12[2], v12[3], v12[4], v12[5], v12[6], v12[7], v12[8], v12[9], v12[10], v12[11], v12[12], v12[13], v12[14], v12[15]);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11[3] = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v11[4] = &protocol witness table for Expression<A>;
  v11[0] = v5;
  v11[1] = v7;
  v11[2] = v9;
  a1[3] = &type metadata for Table;
  a1[4] = &protocol witness table for Table;
  *a1 = swift_allocObject();
  SchemaType.select(_:_:)(v11, _swiftEmptyArrayStorage, &type metadata for Table, &protocol witness table for Table);
  return sub_1000034F8(v11);
}

uint64_t sub_100062B70(uint64_t a1, uint64_t a2, void (*a3)(void, uint64_t *), uint64_t a4, uint64_t a5)
{
  v46 = a3;
  v47 = a4;
  v8 = sub_10002EB80(&qword_100199EE0, &qword_1001507C0);
  __chkstk_darwin(v8 - 8);
  v10 = (&v42 - v9);
  v11 = type metadata accessor for LNActionRecord(0);
  sub_10000482C();
  __chkstk_darwin(v12);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a5;
  sub_100017580(v55);
  v15 = v56;
  v16 = v57;
  sub_1000034B4(v55, v56);
  if (qword_100198148 != -1)
  {
    sub_100002A90();
    swift_once();
  }

  sub_100003A8C(&qword_10019DB20);
  v50 = a1;
  v51 = a2;
  v17 = == infix<A>(_:_:)();
  v19 = v18;
  v21 = v20;
  v53 = v15;
  v54 = v16;
  sub_100013234(&v50);
  QueryType.filter(_:)(v17, v19, v21, v15, v16, v22, v23, v24, v42, v43, v44, v45, v46, v47, v48, v49, *(&v49 + 1), v50, v51, v52, v53, v54, v55[0], v55[1], v55[2], v56, v57, v58[0], v58[1], v58[2], v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, vars0, vars8);

  v25 = v53;
  v26 = v54;
  v43 = sub_1000034B4(&v50, v53);
  sub_10002EB80(&qword_1001987A0, &qword_10014BE50);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_10014CE90;
  if (qword_100198150 != -1)
  {
    sub_100007EAC();
    swift_once();
  }

  v48 = qword_10019DB38;
  v49 = unk_10019DB40;
  v28 = sub_1000077D8();
  v30 = sub_10002EB80(v28, v29);
  sub_100007108();
  v33 = sub_100013EBC(v31, &unk_10019AAC0, &unk_10014BE40, v32);
  ExpressionType.asc.getter(v30, v33, (v27 + 32));
  v59 = v25;
  v60 = v26;
  sub_100013234(v58);
  QueryType.order(_:)(v27, v25, v26);

  sub_1000034F8(&v50);
  sub_1000034F8(v55);
  v34 = v44;
  Connection.prepareRowIterator(_:)(v58);
  if (!v34)
  {
    v36 = v35;
    LOBYTE(v55[0]) = 0;
    while (1)
    {
      v37 = Statement.failableNext()();
      if (v38)
      {

        goto LABEL_16;
      }

      v39 = v37;
      if (!v37)
      {
        goto LABEL_16;
      }

      if (v55[0])
      {
        break;
      }

      v40 = objc_autoreleasePoolPush();
      sub_1000149DC(v36, v39, v10);

      if (sub_1000032C4(v10, 1, v11) == 1)
      {
        sub_100003EFC(v10, &qword_100199EE0, &qword_1001507C0);
      }

      else
      {
        sub_1000651AC(v10, v14);
        v46(*&v14[*(v11 + 24)], v55);
        sub_100065150(v14);
      }

      objc_autoreleasePoolPop(v40);
    }

LABEL_16:
  }

  return sub_1000034F8(v58);
}

void *sub_100062F80(uint64_t a1, unint64_t a2)
{
  v6 = sub_10002EB80(&qword_100199EE0, &qword_1001507C0);
  __chkstk_darwin(v6 - 8);
  v8 = (&v47 - v7);
  v9 = type metadata accessor for LNActionRecord(0);
  sub_10000482C();
  __chkstk_darwin(v10);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10004B2E4(a1, a2);
  if (!v2)
  {
    v17 = v13;
    v18 = v14;
    v19 = v15;
    v20 = v16;
    v50 = v12;
    v51 = v9;
    sub_100017580(v53);
    v22 = v54;
    v21 = v55;
    v57 = sub_1000034B4(v53, v54);
    v52 = "yBundleIdentifierV2";
    v56[3] = v22;
    v56[4] = v21;
    v23 = sub_100013234(v56);
    sub_10004B514(v17, v18, v19, v20, v23, v22, v21);

    sub_1000034F8(v53);
    Connection.prepareRowIterator(_:)(v56);
    sub_100003D44(0, &unk_10019AB20, LNActionMetadata_ptr);
    v3 = Dictionary.init(dictionaryLiteral:)();
    v24 = v51;
    while (1)
    {
      v25 = Statement.failableNext()();
      if (v26)
      {
        break;
      }

      v27 = v25;
      if (!v25)
      {

        sub_1000034F8(v56);
        return v3;
      }

      sub_1000149DC(v28, v27, v8);

      if (sub_1000032C4(v8, 1, v24) == 1)
      {
        sub_100003EFC(v8, &qword_100199EE0, &qword_1001507C0);
      }

      else
      {
        v29 = v50;
        sub_1000651AC(v8, v50);
        v30 = *(v29 + 8);
        v57 = *v29;
        v49 = *(v29 + *(v24 + 24));
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v52 = v30;
        v53[0] = v3;
        v47 = sub_10000C2A0(v57, v30);
        v32 = v3[2];
        v33 = (v31 & 1) == 0;
        v34 = v32 + v33;
        if (__OFADD__(v32, v33))
        {
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

        v35 = v31;
        sub_10002EB80(&qword_100198B90, &unk_10014D040);
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v34))
        {
          v36 = sub_10000C2A0(v57, v52);
          if ((v35 & 1) != (v37 & 1))
          {
            goto LABEL_24;
          }

          v38 = v36;
        }

        else
        {
          v38 = v47;
        }

        v3 = v53[0];
        if (v35)
        {
          v39 = *(v53[0] + 56);
          v40 = *(v39 + 8 * v38);
          *(v39 + 8 * v38) = v49;
        }

        else
        {
          *(v53[0] + 8 * (v38 >> 6) + 64) |= 1 << v38;
          v41 = (v3[6] + 16 * v38);
          v42 = v52;
          *v41 = v57;
          v41[1] = v42;
          *(v3[7] + 8 * v38) = v49;
          v43 = v3[2];
          v44 = __OFADD__(v43, 1);
          v45 = v43 + 1;
          if (v44)
          {
            goto LABEL_23;
          }

          v3[2] = v45;
        }

        sub_100065150(v50);
      }
    }

    sub_1000034F8(v56);
  }

  return v3;
}

void sub_100063560(void *a1@<X8>)
{
  if (qword_100198150 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  if (v1)
  {

    v3 = 0;
    v4 = 0;
  }

  else
  {
    v3 = v5;
    v4 = v6;
  }

  *a1 = v3;
  a1[1] = v4;
}

uint64_t sub_1000638E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, uint64_t a7@<X6>, uint64_t a8@<X7>)
{
  result = sub_100063A0C(a1, a2, a3, a4, 0x736E6F69746361, 0xE700000000000000, a7, a8, 0x696669746E656469, 0xEA00000000007265, 0x617461646174656DLL, 0xE800000000000000, 0xD000000000000023, 0x8000000100155290);
  if (!v8)
  {
    if (v14)
    {
      sub_100028F9C(a1, a2, result, v14, a5);

      sub_100065300();
    }

    else
    {
      v15 = type metadata accessor for LNActionRecord(0);
      return sub_1000075C4(a6, 1, 1, v15);
    }
  }

  return result;
}

uint64_t sub_100063A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v32[0] = 0;
  v32[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(90);
  v17._countAndFlagsBits = 0x200A5443454C4553;
  v17._object = 0xEB00000000202020;
  String.append(_:)(v17);
  v18._countAndFlagsBits = a9;
  v18._object = a10;
  String.append(_:)(v18);
  sub_1000117C8();
  v19._countAndFlagsBits = a5;
  v19._object = a6;
  String.append(_:)(v19);
  sub_100003764();
  v20._countAndFlagsBits = a5;
  v20._object = a6;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 46;
  v21._object = 0xE100000000000000;
  String.append(_:)(v21);
  v22._countAndFlagsBits = sub_100012014();
  String.append(_:)(v22);
  v23._countAndFlagsBits = 0x2E2427202CLL;
  v23._object = 0xE500000000000000;
  String.append(_:)(v23);
  v24._countAndFlagsBits = a13;
  v24._object = a14;
  String.append(_:)(v24);
  sub_100007510();
  v25._countAndFlagsBits = 0xD000000000000029;
  String.append(_:)(v25);
  sub_10002EB80(&unk_10019B450, &unk_10014ED30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014CE90;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = &protocol witness table for String;
  *(inited + 32) = a3;
  *(inited + 40) = a4;

  Connection.prepare(_:_:)();
  if (v32[16])
  {

    swift_setDeallocating();
    return sub_1000B30E8();
  }

  swift_setDeallocating();
  sub_1000B30E8();
  v28 = Statement.failableNext()();
  if (!v29)
  {
    if (v28)
    {
      if (*(v28 + 16) == 1)
      {
        sub_100009EDC(v28 + 32, v32, &qword_100199ED0, &qword_10014ED20);

        if (v32[3])
        {
          sub_10002EB80(&unk_10019ABC0, &qword_10014F8D0);
          if (swift_dynamicCast())
          {
            return v31;
          }
        }

        else
        {
          sub_100003EFC(v32, &qword_100199ED0, &qword_10014ED20);
        }

        return 0;
      }
    }

    return 0;
  }
}

void sub_100063EA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = type metadata accessor for LNActionRecord(0);
  v6 = *(v43 - 8);
  __chkstk_darwin(v43);
  v40 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v39 - v9;
  v11 = 0;
  v12 = *(a3 + 16);
  v46 = a1 & 0xC000000000000001;
  v13 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 < 0)
  {
    v13 = a1;
  }

  v50 = v13;
  v41 = _swiftEmptyArrayStorage;
  v39[4] = a2;
  v39[5] = a3;
  v39[2] = v39 - v9;
  v39[3] = v6;
  v39[1] = v12;
LABEL_4:
  for (i = v11; i != v12; i = v16)
  {
    v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v16 = i + 1;
    v44 = *(v6 + 72);
    v45 = v15;
    sub_1000650EC(a3 + v15 + v44 * i, v10);
    switch(a2)
    {
      case 2:
        v47 = v16;
        v28 = [sub_1000183D8() systemProtocols];
        v6 = sub_100003D44(0, &qword_100199040, LNSystemProtocol_ptr);
        v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        sub_1000232F4(v29);
        sub_100004E38();
        v10 = 0;
        v16 = v46;
        v42 = v28;
        while (v10 != v28)
        {
          if (a3)
          {
            v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v10 >= *(v49 + 16))
            {
              goto LABEL_57;
            }

            v30 = *(v48 + 8 * v10);
          }

          v12 = v30;
          v20 = __OFADD__(v10++, 1);
          if (v20)
          {
            __break(1u);
LABEL_55:
            __break(1u);
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
            return;
          }

          if (v16)
          {
            v31 = v30;
            a2 = __CocoaSet.contains(_:)();

            if (a2)
            {
              goto LABEL_46;
            }
          }

          else
          {
            if (*(a1 + 16))
            {
              NSObject._rawHashValue(seed:)(*(a1 + 40));
              sub_100013C6C();
              while (1)
              {
                sub_1000110C8();
                if ((v32 & 1) == 0)
                {
                  break;
                }

                a2 = **(a1 + 48);
                v33 = static NSObject.== infix(_:_:)();

                if (v33)
                {

                  goto LABEL_47;
                }
              }
            }

            v16 = v46;
            v28 = v42;
          }
        }

LABEL_43:

LABEL_44:

        sub_1000115D0();
        break;
      case 1:
        v24 = [sub_1000183D8() systemProtocols];
        sub_100003D44(0, &qword_100199040, LNSystemProtocol_ptr);
        v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        sub_1000C2C6C(v25);
        sub_100064BB4(v26, a1);
        LOBYTE(v25) = v27;

        if (v25)
        {
          goto LABEL_48;
        }

        break;
      case 0:
        v47 = v16;
        v17 = [sub_1000183D8() systemProtocols];
        v6 = sub_100003D44(0, &qword_100199040, LNSystemProtocol_ptr);
        v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        sub_1000232F4(v18);
        sub_100004E38();
        v10 = 0;
        v16 = v46;
        v42 = v17;
        while (v10 != v17)
        {
          if (a3)
          {
            v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v10 >= *(v49 + 16))
            {
              goto LABEL_56;
            }

            v19 = *(v48 + 8 * v10);
          }

          v12 = v19;
          v20 = __OFADD__(v10++, 1);
          if (v20)
          {
            goto LABEL_55;
          }

          if (v16)
          {
            v21 = v19;
            v12 = __CocoaSet.contains(_:)();

            if (v12)
            {
              goto LABEL_43;
            }
          }

          else
          {
            if (*(a1 + 16))
            {
              NSObject._rawHashValue(seed:)(*(a1 + 40));
              sub_100013C6C();
              while (1)
              {
                sub_1000110C8();
                if ((v22 & 1) == 0)
                {
                  break;
                }

                a2 = **(a1 + 48);
                v23 = static NSObject.== infix(_:_:)();

                if (v23)
                {

                  goto LABEL_44;
                }
              }
            }

            v16 = v46;
            v17 = v42;
          }
        }

LABEL_46:

LABEL_47:

        sub_1000115D0();
LABEL_48:
        sub_1000651AC(v10, v40);
        v34 = v41;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v36 = v34;
        v51 = v34;
        v47 = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1000B35D4(0, v34[2] + 1, 1);
          v36 = v51;
        }

        v38 = v36[2];
        v37 = v36[3];
        if (v38 >= v37 >> 1)
        {
          sub_1000B35D4(v37 > 1, v38 + 1, 1);
          v36 = v51;
        }

        v36[2] = v38 + 1;
        v41 = v36;
        sub_1000651AC(v40, v36 + v45 + v38 * v44);
        v11 = v47;
        goto LABEL_4;
    }

    sub_100065150(v10);
  }
}

uint64_t sub_100064420(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return __CocoaSet.count.getter();
  }

  else
  {
    return *(a1 + 16);
  }
}

void sub_100064440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_100012A48();
  a29 = v31;
  a30 = v32;
  v34 = v33;
  sub_100062198(v35);
  a14 = v36;
  sub_10002EB80(&unk_10019ACC0, &qword_1001507B0);
  sub_100013EBC(&qword_10019BB00, &unk_10019ACC0, &qword_1001507B0, &protocol conformance descriptor for [A]);
  v37 = BidirectionalCollection<>.joined(separator:)();
  v39 = v38;

  a14 = 0;
  a15 = 0xE000000000000000;
  _StringGuts.grow(_:)(97);
  sub_100007510();
  String.append(_:)(v40);
  sub_100007510();
  v41._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v41);
  v42._countAndFlagsBits = 8236;
  v42._object = 0xE200000000000000;
  String.append(_:)(v42);
  v43._countAndFlagsBits = 0x696669746E656469;
  v43._object = 0xEA00000000007265;
  String.append(_:)(v43);
  sub_1000117C8();
  v44._countAndFlagsBits = 0x736E6F69746361;
  v44._object = 0xE700000000000000;
  String.append(_:)(v44);
  sub_100003764();
  v45._countAndFlagsBits = 0x736E6F69746361;
  v45._object = 0xE700000000000000;
  String.append(_:)(v45);
  v46._countAndFlagsBits = 46;
  v46._object = 0xE100000000000000;
  String.append(_:)(v46);
  v47._countAndFlagsBits = 0x617461646174656DLL;
  v47._object = 0xE800000000000000;
  String.append(_:)(v47);
  sub_100007510();
  String.append(_:)(v48);
  v49._countAndFlagsBits = v37;
  v49._object = v39;
  String.append(_:)(v49);

  a20 = _swiftEmptyArrayStorage;
  Connection.prepare(_:_:)();

  if (v30)
  {
LABEL_20:
    sub_100013494();
    return;
  }

  v54 = _swiftEmptyArrayStorage;
  while (1)
  {
    while (1)
    {
      v50 = Statement.failableNext()();
      if (v51)
      {

        goto LABEL_20;
      }

      v52 = v50;
      if (!v50)
      {
        sub_100063624(v54, v34);

        goto LABEL_20;
      }

      if (*(v50 + 16) == 2)
      {
        sub_100009EDC(v50 + 32, &a14, &qword_100199ED0, &qword_10014ED20);
        if (!a17)
        {
          goto LABEL_13;
        }

        sub_10002EB80(&unk_10019ABC0, &qword_10014F8D0);
        if (swift_dynamicCast())
        {
          break;
        }
      }

LABEL_11:
    }

    if (*(v52 + 16) < 2uLL)
    {
      break;
    }

    sub_100009EDC(v52 + 72, &a14, &qword_100199ED0, &qword_10014ED20);

    if (a17)
    {
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_11;
      }

      v53 = objc_allocWithZone(LNFullyQualifiedActionIdentifier);
      sub_1000077D8();
      sub_10006500C();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((a20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((a20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v54 = a20;
    }

    else
    {
LABEL_13:

      sub_100003EFC(&a14, &qword_100199ED0, &qword_10014ED20);
    }
  }

  __break(1u);
}

uint64_t sub_100064864(uint64_t *a1)
{
  type metadata accessor for LNActionRecord(0);
  result = LNActionMetadata.asJson(prettyPrinted:)(0)._countAndFlagsBits;
  if (!v2)
  {
    if (qword_100198140 != -1)
    {
      sub_100006744();
      swift_once();
    }

    memcpy(__dst, &unk_10019DA70, sizeof(__dst));
    memcpy(__src, &unk_10019DA70, sizeof(__src));
    sub_1000196B0(__dst, v16);
    if (qword_100198148 != -1)
    {
      sub_100002A90();
      swift_once();
    }

    sub_100003A8C(&qword_10019DB20);
    <- infix<A>(_:_:)();
    sub_10002EB80(&unk_10019AAE0, &unk_10014BE30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10014CE90;
    if (qword_100198158 != -1)
    {
      sub_100007B0C();
      swift_once();
    }

    sub_100003A8C(&qword_10019DB50);
    <- infix<A>(_:_:)();

    v4 = QueryType.insert(_:_:)(v16, inited);
    v6 = v5;
    v8 = v7;
    swift_setDeallocating();
    sub_1000B3030();
    sub_10002EBC8(v16);
    memcpy(v19, __src, sizeof(v19));
    sub_10001970C(v19);
    v20.template._countAndFlagsBits = v4;
    v20.template._object = v6;
    v20.bindings._rawValue = v8;
    Connection.run(_:)(v20);
    if (v9)
    {

      v16[0] = v9;
      swift_errorRetain();
      sub_10002EB80(&unk_100198760, &qword_10014F3C0);
      if (swift_dynamicCast())
      {

        v10 = __src[1];
        v11 = __src[2];
        v12 = __src[3];
        if (LODWORD(__src[2]) == 19)
        {
          type metadata accessor for Schema.RuntimeError(0);
          sub_100065094();
          swift_allocError();
          *v13 = 0xD0000000000000FALL;
          v13[1] = 0x8000000100155110;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
        }

        else
        {
          v14 = __src[0];
          sub_10002EC1C();
          swift_allocError();
          *v15 = v14;
          *(v15 + 8) = v10;
          *(v15 + 16) = v11;
          *(v15 + 24) = v12;
          swift_willThrow();
        }
      }
    }

    else
    {
    }
  }

  return result;
}

void sub_100064BB4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = a2 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *(a2 + 16);
  }

  v6 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = __CocoaSet.count.getter();
  }

  else
  {
    v7 = *(a1 + 16);
  }

  if (v7 < v5)
  {
    return;
  }

  if (v4)
  {

    __CocoaSet.makeIterator()();
    sub_100003D44(0, &qword_100199040, LNSystemProtocol_ptr);
    sub_100065210();
    Set.Iterator.init(_cocoa:)();
    v2 = v30;
    v8 = v31;
    v9 = v32;
    v10 = v33;
    v11 = v34;
  }

  else
  {
    v12 = -1 << *(v2 + 32);
    v8 = v2 + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(v2 + 56);

    v10 = 0;
  }

  sub_100003D44(0, &qword_100199040, LNSystemProtocol_ptr);
  v15 = (v9 + 64) >> 6;
  v27 = v2;
  v26 = v8;
LABEL_15:
  while (v2 < 0)
  {
    if (!__CocoaSet.Iterator.next()())
    {
LABEL_34:
      sub_100014464(v2);
      return;
    }

    swift_dynamicCast();
    v20 = v11;
    v18 = v29;
    v28 = v20;
    if (!v6)
    {
LABEL_26:
      if (*(a1 + 16))
      {
        v21 = NSObject._rawHashValue(seed:)(*(a1 + 40));
        v22 = ~(-1 << *(a1 + 32));
        while (1)
        {
          v23 = v21 & v22;
          if (((*(a1 + 56 + (((v21 & v22) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v21 & v22)) & 1) == 0)
          {
            break;
          }

          v24 = *(*(a1 + 48) + 8 * v23);
          v25 = static NSObject.== infix(_:_:)();

          v21 = v23 + 1;
          if (v25)
          {

            v8 = v26;
            v2 = v27;
            v6 = a1 & 0xC000000000000001;
            v11 = v28;
            goto LABEL_15;
          }
        }
      }

      v2 = v27;
LABEL_32:
      sub_100014464(v2);
      return;
    }

LABEL_22:
    v19 = __CocoaSet.contains(_:)();

    v11 = v28;
    if ((v19 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  v16 = v11;
  if (v11)
  {
LABEL_21:
    v28 = (v16 - 1) & v16;
    v29 = *(*(v2 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v16)))));
    v18 = v29;
    if (!v6)
    {
      goto LABEL_26;
    }

    goto LABEL_22;
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
      goto LABEL_34;
    }

    v16 = *(v8 + 8 * v10);
    ++v17;
    if (v16)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
}

id sub_100064EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = String._bridgeToObjectiveC()();

  v9 = type metadata accessor for URL();
  v11 = 0;
  if (sub_1000032C4(a4, 1, v9) != 1)
  {
    URL._bridgeToObjectiveC()(v10);
    v11 = v12;
    (*(*(v9 - 8) + 8))(a4, v9);
  }

  v13 = [v5 initWithType:a1 bundleIdentifier:v8 url:v11];

  return v13;
}

id sub_100064FA0(void *a1)
{
  sub_1000034B4(a1, a1[3]);
  v3 = [v1 initWithObject:_bridgeAnythingToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  sub_1000034F8(a1);
  return v3;
}

id sub_10006500C()
{
  v1 = String._bridgeToObjectiveC()();

  v2 = String._bridgeToObjectiveC()();

  v3 = [v0 initWithActionIdentifier:v1 bundleIdentifier:v2];

  return v3;
}

unint64_t sub_100065094()
{
  result = qword_100198770;
  if (!qword_100198770)
  {
    type metadata accessor for Schema.RuntimeError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100198770);
  }

  return result;
}

uint64_t sub_1000650EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LNActionRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100065150(uint64_t a1)
{
  v2 = type metadata accessor for LNActionRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000651AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LNActionRecord(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100065210()
{
  result = qword_10019ABB0;
  if (!qword_10019ABB0)
  {
    sub_100003D44(255, &qword_100199040, LNSystemProtocol_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019ABB0);
  }

  return result;
}

uint64_t sub_100065278()
{
  sub_100007120();
  type metadata accessor for URL();
  if (v0)
  {
    v1 = sub_100007B20();
    v2(v1);
  }

  v3 = sub_100007EC0();

  return sub_1000075C4(v3, v4, v5, v6);
}

uint64_t sub_100065300()
{
  sub_100007120();
  v3 = type metadata accessor for LNActionRecord(0);
  if (v2)
  {
    sub_1000650EC(v1 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80)), v0);
  }

  v4 = sub_100007EC0();

  return sub_1000075C4(v4, v5, v6, v7);
}

uint64_t sub_100065394(uint64_t a1)
{
  result = sub_1000660F0(a1);
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_1000661A4(result, v3, 0, a1);
  }
}

uint64_t sub_1000653FC()
{
  sub_100007120();
  sub_10002EB80(&unk_10019B280, &qword_1001504C0);
  if (v0)
  {
    v1 = sub_100007B20();
    v2(v1);
  }

  v3 = sub_100007EC0();

  return sub_1000075C4(v3, v4, v5, v6);
}

void *sub_100065490()
{
  v0 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v0 - 8);
  sub_100002958();
  v3 = v2 - v1;
  static DispatchQoS.userInitiated.getter();
  sub_10002EB80(&qword_100199EF0, &qword_10014ED68);
  swift_allocObject();
  result = sub_10006580C(1, 300, v3);
  qword_10019DB68 = result;
  return result;
}

uint64_t sub_100065530()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  qword_10019DB70 = result;
  *algn_10019DB78 = v1;
  return result;
}

void *sub_100065560(uint64_t a1)
{

  v3 = sub_100065394(v2);
  if (v4)
  {
    v5 = v3;
    v6 = v4;
    sub_10002EB80(&qword_10019B230, &unk_100150470);
    type metadata accessor for Notification();
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_10014CE90;
    v8 = LNAppShortcutsChangedNotification;
    sub_10002EB80(&qword_100199EE8, &qword_10014ED60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10014BC40;
    v10 = v8;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = &type metadata for String;
    *(inited + 72) = v5;
    *(inited + 80) = v6;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    AnyHashable.init<A>(_:)();
    v11 = sub_100003D44(0, &qword_100199510, NSArray_ptr);
    v12 = sub_1000A1F48(a1);
    sub_10006DE3C(v12);

    v13 = sub_100034D2C();
    *(inited + 168) = v11;
    *(inited + 144) = v13;
    Dictionary.init(dictionaryLiteral:)();
    Notification.init(name:object:userInfo:)();
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v7;
}

uint64_t sub_100065798(uint64_t a1)
{
  v1._countAndFlagsBits = Set.description.getter();
  String.append(_:)(v1);

  return 0x676E697461647075;
}

void *sub_10006580C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v31 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v11);
  v32 = type metadata accessor for DispatchQoS();
  v12 = *(v32 - 8);
  __chkstk_darwin(v32);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + *(*v4 + 128)) = 0;
  *(v4 + *(*v4 + 136)) = 0;
  v15 = v4 + *(*v4 + 144);
  *v15 = 0;
  *(v15 + 1) = 0;
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v30 = a1;
    if (qword_1001982F0 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v28 = v8;
  v29 = a2;
  v16 = type metadata accessor for Logger();
  v17 = sub_10000347C(v16, qword_10019E008);
  (*(*(v16 - 8) + 16))(v4 + qword_10019E588, v17, v16);
  v27 = sub_100003D44(0, &qword_10019BAF0, OS_dispatch_queue_ptr);
  v33 = 0;
  v34 = 0xE000000000000000;
  _StringGuts.grow(_:)(28);

  v33 = 0xD000000000000010;
  v34 = 0x8000000100154B90;
  if (qword_100198168 != -1)
  {
    swift_once();
  }

  v19 = qword_10019DB70;
  v18 = *algn_10019DB78;

  v20._countAndFlagsBits = v19;
  v20._object = v18;
  String.append(_:)(v20);

  v21._countAndFlagsBits = 0x636E756F6265442ELL;
  v21._object = 0xEA00000000007265;
  String.append(_:)(v21);
  v22 = *(v12 + 16);
  v26 = a3;
  v22(v14, a3, v32);
  v33 = _swiftEmptyArrayStorage;
  sub_100066220();
  sub_10002EB80(&qword_1001992C8, &unk_10014DFF0);
  sub_10004AE28();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v31 + 104))(v10, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v28);
  *(v4 + qword_10019E590) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v23 = v30;
  v4[2] = v29;
  if (v23 <= 1)
  {
    v23 = [objc_opt_self() defaultCenter];
  }

  (*(v12 + 8))(v26, v32);
  v4[3] = v23;
  return v4;
}

void *sub_100065C94(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_100002944();
  v34 = v9;
  __chkstk_darwin(v10);
  sub_100002958();
  v13 = v12 - v11;
  v14 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v14);
  sub_100002958();
  v35 = type metadata accessor for DispatchQoS();
  sub_100002944();
  v16 = v15;
  __chkstk_darwin(v17);
  sub_100002958();
  v20 = v19 - v18;
  v21 = (v4 + *(*v4 + 128));
  *v21 = 0;
  v21[1] = 0;
  *(v4 + *(*v4 + 136)) = 0;
  v22 = v4 + *(*v4 + 144);
  *v22 = 0;
  *(v22 + 1) = 0;
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v33 = a1;
    if (qword_1001982F0 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v31 = v8;
  v32 = a2;
  v23 = type metadata accessor for Logger();
  v24 = sub_10000347C(v23, qword_10019E008);
  (*(*(v23 - 8) + 16))(v4 + qword_10019E588, v24, v23);
  sub_100003D44(0, &qword_10019BAF0, OS_dispatch_queue_ptr);
  _StringGuts.grow(_:)(28);

  if (qword_1001982B0 != -1)
  {
    swift_once();
  }

  v26 = qword_10019DEB8;
  v25 = qword_10019DEC0;

  v27._countAndFlagsBits = v26;
  v27._object = v25;
  String.append(_:)(v27);

  v28._countAndFlagsBits = 0x636E756F6265442ELL;
  v28._object = 0xEA00000000007265;
  String.append(_:)(v28);
  (*(v16 + 16))(v20, a3, v35);
  sub_100066220();
  sub_10002EB80(&qword_1001992C8, &unk_10014DFF0);
  sub_10004AE28();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v34 + 104))(v13, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v31);
  *(v4 + qword_10019E590) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v29 = v33;
  v4[2] = v32;
  if (v33 <= 1)
  {
    v29 = [objc_opt_self() defaultCenter];
  }

  (*(v16 + 8))(a3, v35);
  v4[3] = v29;
  return v4;
}

uint64_t sub_100066130(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return __CocoaSet.startIndex.getter();
  }

  else
  {
    return _HashTable.startBucket.getter();
  }
}

uint64_t sub_1000661A4(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = *(*(a4 + 48) + 16 * result);

    return v4;
  }

LABEL_8:
  __break(1u);
  return result;
}

unint64_t sub_100066220()
{
  result = qword_1001992C0;
  if (!qword_1001992C0)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001992C0);
  }

  return result;
}

void sub_10006628C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, void *a6)
{
  v7 = a5;
  v9 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_100003D44(0, v7, a6);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_100003D44(0, a5, a6);
    if (__CocoaSet.Index.age.getter() == *(a4 + 36))
    {
      __CocoaSet.Index.element.getter();
      swift_dynamicCast();
      v7 = v16;
      v10 = NSObject._rawHashValue(seed:)(*(a4 + 40));
      v11 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v9 = v10 & v11;
        if (((*(a4 + 56 + (((v10 & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v11)) & 1) == 0)
        {
          goto LABEL_22;
        }

        v12 = *(*(a4 + 48) + 8 * v9);
        v13 = static NSObject.== infix(_:_:)();

        if (v13)
        {
          goto LABEL_15;
        }

        v10 = v9 + 1;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  if (a1 < 0 || 1 << *(a4 + 32) <= a1)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:

    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_15:
  }

  v14 = *(*(a4 + 48) + 8 * v9);

  v15 = v14;
}

unint64_t sub_1000664A0(uint64_t a1)
{
  result = sub_1000664C8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000664C8()
{
  result = qword_100199EF8;
  if (!qword_100199EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100199EF8);
  }

  return result;
}

uint64_t sub_100066520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10002EB80(&qword_100199C90, &qword_10014D060);
  __chkstk_darwin(v8 - 8);
  v10 = &v17 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1000032C4(a1, 1, v11) == 1)
  {
    sub_100003EFC(a1, &qword_100199C90, &qword_10014D060);
    sub_1000602F0();

    return sub_100003EFC(v10, &qword_100199C90, &qword_10014D060);
  }

  else
  {
    (*(v12 + 32))(v14, a1, v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v4;
    sub_100069084(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v4 = v18;
  }

  return result;
}

uint64_t sub_1000666EC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = sub_10002EB80(&qword_10019A0B8, &qword_10014EE58);
  __chkstk_darwin(v8 - 8);
  sub_10002EB80(&qword_100199C70, &unk_10014EE60);
  sub_10000482C();
  __chkstk_darwin(v9);
  v11 = &v22 - v10;
  if (sub_1000032C4(a1, 1, v12) == 1)
  {
    sub_100003EFC(a1, &qword_10019A0B8, &qword_10014EE58);
    sub_10001A9E8();
    sub_1000603E8();
    v13 = sub_10001A9E8();
    sub_100009B18(v13, v14);
    v15 = sub_100006768();
    return sub_100003EFC(v15, v16, v17);
  }

  else
  {
    sub_100069DF0(a1, v11, &qword_100199C70, &unk_10014EE60);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v4;
    sub_1000691F8(v11, a2, a3, isUniquelyReferenced_nonNull_native);
    v20 = sub_10001A9E8();
    result = sub_100009B18(v20, v21);
    *v4 = v23;
  }

  return result;
}

void *sub_10006687C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10002EB80(&qword_100199318, &unk_10014E020);
    v3 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v3 = _swiftEmptyDictionarySingleton;
  }

  v6 = v3;
  sub_1000233AC(a1, 1, &v6, sub_100046DF8, &qword_100198B90, &unk_10014D040);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

void *sub_100066938(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10002EB80(&qword_100199310, &qword_10014EE40);
    v3 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v3 = _swiftEmptyDictionarySingleton;
  }

  v6 = v3;
  sub_1000233AC(a1, 1, &v6, sub_100046DE4, &qword_10019B490, &qword_10014EE48);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

void sub_1000669F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100006A04();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = sub_10002EB80(&qword_100199C90, &qword_10014D060);
  __chkstk_darwin(v29 - 8);
  v31 = &a9 - v30;
  v32 = type metadata accessor for UUID();
  sub_100002944();
  v34 = v33;
  __chkstk_darwin(v35);
  v37 = &a9 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *v20;
  if (*(v38 + 16) && (v39 = sub_10000C2A0(v26, v24), (v40 & 1) != 0))
  {
    (*(v34 + 16))(v37, *(v38 + 56) + *(v34 + 72) * v39, v32);
    (*(v34 + 32))(v28, v37, v32);
  }

  else
  {
    UUID.init()();
    (*(v34 + 16))(v31, v28, v32);
    sub_1000075C4(v31, 0, 1, v32);

    v41 = sub_1000246A8();
    sub_100066520(v41, v42, v24);
  }

  sub_1000069EC();
}

uint64_t sub_100066BF8()
{
  v0 = sub_10002EB80(&qword_10019A070, &qword_10014EE18);
  v1 = sub_100013F58(&qword_10019A078, &qword_10019A070, &qword_10014EE18);
  return ExpressionType.init(_:)(0xD000000000000016, 0x8000000100155390, v0, v1);
}

uint64_t sub_100066C94()
{
  v0 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v1 = sub_100013F58(&qword_100198780, &unk_10019AAC0, &unk_10014BE40);
  return ExpressionType.init(_:)(0xD000000000000010, 0x8000000100154580, v0, v1);
}

uint64_t sub_100066D30()
{
  v0 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v1 = sub_100013F58(&qword_100198780, &unk_10019AAC0, &unk_10014BE40);
  return ExpressionType.init(_:)(0xD000000000000012, 0x8000000100155370, v0, v1);
}

uint64_t sub_100066DE8()
{
  v0 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v1 = sub_100013F58(&qword_100198780, &unk_10019AAC0, &unk_10014BE40);
  return ExpressionType.init(_:)(0xD000000000000010, 0x8000000100155350, v0, v1);
}

uint64_t sub_100066E94(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = sub_10002EB80(&unk_10019AAC0, &unk_10014BE40);
  v5 = sub_100013F58(&qword_100198780, &unk_10019AAC0, &unk_10014BE40);
  return ExpressionType.init(_:)(0x79747265706F7270, a3, v4, v5);
}

uint64_t sub_100066F38()
{
  v0 = sub_10002EB80(&qword_100199518, &unk_10014ED10);
  v1 = sub_100013F58(&qword_100199520, &qword_100199518, &unk_10014ED10);
  return ExpressionType.init(_:)(0xD000000000000016, 0x8000000100155330, v0, v1);
}

uint64_t sub_100066FD4()
{
  v0 = sub_10002EB80(&qword_100199518, &unk_10014ED10);
  v1 = sub_100013F58(&qword_100199520, &qword_100199518, &unk_10014ED10);
  return ExpressionType.init(_:)(0xD000000000000020, 0x8000000100155300, v0, v1);
}

void sub_100067070()
{
  sub_100004DF0();
  v66 = v1;
  v3 = v2;
  if (qword_100198170 != -1)
  {
    sub_100007ED0(&qword_100198170);
  }

  memcpy(__dst, &unk_100199F00, 0xB0uLL);
  memcpy(v103, &unk_100199F00, sizeof(v103));
  sub_1000196B0(__dst, &v72);
  if (qword_100198178 != -1)
  {
    sub_100007B38(&qword_100198178);
  }

  type metadata accessor for UUID();
  sub_1000077D8();
  <- infix<A>(_:_:)();
  sub_10002EB80(&unk_10019AAE0, &unk_10014BE30);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10014EE00;
  if (qword_100198180 != -1)
  {
    sub_100007130(&qword_100198180);
  }

  v5 = type metadata accessor for LNAppShortcutParameterRecord(0);
  v6 = (v3 + v5[5]);
  v8 = *v6;
  v7 = v6[1];
  v72._countAndFlagsBits = v8;
  v72._object = v7;
  <- infix<A>(_:_:)();
  if (qword_100198188 != -1)
  {
    swift_once();
  }

  sub_100003A8C(&qword_100199FE0);
  v9 = (v3 + v5[6]);
  v11 = *v9;
  v10 = v9[1];
  v72._countAndFlagsBits = v11;
  v72._object = v10;
  <- infix<A>(_:_:)();
  if (qword_100198190 != -1)
  {
    swift_once();
  }

  v12 = v3;
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v13 = LNStaticDeferredLocalizedString.asLocalizedStringResourceJSON(encoder:)();
  if (v0)
  {

    v15 = sub_10002EBC8(&v93);
    sub_1000115E4(v15, v16, v17, v18, v19, v20, v21, v22, v59, v60, v62, v64, v65, v66, v4, v68, v70, v72._countAndFlagsBits, v72._object, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103[0]);
    sub_10001970C(&v72);
    sub_10002EBC8(v67 + 112);
    sub_10002EBC8(v67 + 32);
    *(v67 + 16) = 0;
    swift_setDeallocating();
    sub_1000B3030();
  }

  else
  {
    v23 = v13;
    v24 = v14;

    v72._countAndFlagsBits = v23;
    v72._object = v24;
    <- infix<A>(_:_:)();

    if (qword_100198198 != -1)
    {
      swift_once();
    }

    sub_100003A8C(&qword_10019A010);
    v25 = (v12 + v5[8]);
    v27 = *v25;
    v26 = v25[1];
    v72._countAndFlagsBits = v27;
    v72._object = v26;
    <- infix<A>(_:_:)();
    if (qword_1001981A0 != -1)
    {
      swift_once();
    }

    v61 = qword_10019A038;
    v63 = qword_10019A028;
    sub_10002EB80(&qword_10019A090, &qword_10014EE28);
    v28 = (sub_10002EB80(&qword_10019A098, &unk_10014EE30) - 8);
    v29 = (*(*v28 + 80) + 32) & ~*(*v28 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_10014CE90;
    v31 = (v30 + v29 + v28[14]);
    static CodingUserInfoKey.includeLocalizedStringResource.getter();
    v74 = &type metadata for Bool;
    LOBYTE(v72._countAndFlagsBits) = 1;
    v32 = sub_1000034B4(&v72, &type metadata for Bool);
    v31[3] = &type metadata for Bool;
    v33 = sub_100013234(v31);
    (*(*(&type metadata for Bool - 1) + 16))(v33, v32, &type metadata for Bool);
    sub_1000034F8(&v72);
    type metadata accessor for CodingUserInfoKey();
    sub_10002EB80(&unk_100198750, &unk_1001518C0);
    v34 = Dictionary.init(dictionaryLiteral:)();
    v35 = LNProperty.asJson(userInfo:)(v34);
    if (v36)
    {

      v37 = sub_10002EBC8(&v93);
      sub_1000115E4(v37, v38, v39, v40, v41, v42, v43, v44, v59, v61, v63, v5, v12, v66, v4, v68, v70, v72._countAndFlagsBits, v72._object, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103[0]);
      sub_10001970C(&v72);
      sub_10002EBC8(v4 + 272);
      sub_10002EBC8(v4 + 192);
      sub_10002EBC8(v4 + 112);
      sub_10002EBC8(v4 + 32);
      *(v4 + 16) = 0;
      swift_setDeallocating();
      sub_1000B3030();
    }

    else
    {

      v72 = v35;
      <- infix<A>(_:_:)();

      if (qword_1001981A8 != -1)
      {
        swift_once();
      }

      if (*(v12 + v5[10]))
      {
        swift_allocObject();
        JSONEncoder.init()();
        LNStaticDeferredLocalizedString.asLocalizedStringResourceJSON(encoder:)();
      }

      <- infix<A>(_:_:)();

      if (qword_1001981B0 != -1)
      {
        swift_once();
      }

      v45 = (v12 + v5[11]);
      v69 = *v45;
      v71 = v45[1];

      <- infix<A>(_:_:)();

      v46 = QueryType.insert(_:_:)(&v93, v4);
      v48 = v47;
      v50 = v49;
      swift_setDeallocating();
      sub_1000B3030();
      v51 = sub_10002EBC8(&v93);
      sub_1000115E4(v51, v52, v53, v54, v55, v56, v57, v58, v59, v61, v63, v5, v12, v66, v4, v69, v71, v72._countAndFlagsBits, v72._object, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103[0]);
      sub_10001970C(&v72);
      v105.template._countAndFlagsBits = v46;
      v105.template._object = v48;
      v105.bindings._rawValue = v50;
      Connection.run(_:)(v105);
    }
  }

  sub_100004674();
}

void sub_100067878()
{
  sub_100004DF0();
  v2 = v1;
  if (qword_100198170 != -1)
  {
    sub_100007ED0(&qword_100198170);
  }

  memcpy(__dst, &unk_100199F00, sizeof(__dst));
  if (qword_100198178 != -1)
  {
    sub_100007B38(&qword_100198178);
  }

  type metadata accessor for UUID();
  sub_1000110E0();
  == infix<A>(_:_:)();
  memcpy(v11, __dst, sizeof(v11));
  v3 = sub_1000110E0();
  QueryType.filter(_:)(v3, v4, v5, &type metadata for Table, &protocol witness table for Table, v6, v7, v8, v10, v11[0], v11[1], v11[2], v11[3], v11[4], v11[5], v11[6], v11[7], v11[8], v11[9], v11[10], v11[11], v11[12], v11[13], v11[14], v11[15], v11[16], v11[17], v11[18], v11[19], v11[20], v11[21], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14]);

  memcpy(v14, __src, sizeof(v14));
  __src[3] = &type metadata for Table;
  __src[4] = &protocol witness table for Table;
  sub_100003A98();
  __src[0] = swift_allocObject();
  memcpy((__src[0] + 16), v14, 0xB0uLL);
  Connection.pluck(_:)(__src);
  sub_100006430();
  sub_1000034F8(__src);
  if (!v0)
  {
    v9 = type metadata accessor for LNAppShortcutParameterRecord(0);
    sub_1000075C4(v2, 1, 1, v9);
  }

  sub_100004674();
}

uint64_t sub_100067A44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  __chkstk_darwin(v6 - 8);
  v8 = &v29 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v29 - v14;
  if (qword_100198178 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  if (qword_100198180 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  v16 = v43;
  v41 = v42;
  if (qword_100198188 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  v39 = v42;
  v40 = v43;
  if (qword_100198190 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  v37 = v42;
  v38 = v43;
  if (qword_100198198 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  v35 = v42;
  v36 = v43;
  if (qword_1001981A0 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)();
  v33 = v42;
  v34 = v43;
  if (qword_1001981A8 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)(qword_10019A040, *algn_10019A048, a1, a2, &type metadata for String, &protocol witness table for String, &v42);
  v31 = v42;
  v32 = v43;
  if (qword_1001981B0 != -1)
  {
    swift_once();
  }

  Row.get<A>(_:)(qword_10019A058, unk_10019A060, a1, a2, &type metadata for String, &protocol witness table for String, &v42);
  v29 = v42;
  v30 = v43;
  (*(v10 + 16))(v12, v15, v9);
  v37 = sub_100003D44(0, &qword_10019AD00, LNStaticDeferredLocalizedString_ptr);
  v38 = LNStaticDeferredLocalizedString.init(localizedStringResourceJSON:)();
  sub_100003D44(0, &qword_10019BBA0, LNProperty_ptr);
  v18 = type metadata accessor for URL();
  sub_1000075C4(v8, 1, 1, v18);
  v33 = static LNProperty.fromJSON(_:bundleURL:effectiveBundleIdentifier:)();
  v19 = v30;
  sub_100003EFC(v8, &qword_1001990C0, &unk_10014E200);

  if (v32)
  {
    v20 = LNStaticDeferredLocalizedString.init(localizedStringResourceJSON:)();
  }

  else
  {
    v20 = 0;
  }

  v21 = v38;
  (*(v10 + 8))(v15, v9);
  (*(v10 + 32))(a3, v12, v9);
  v22 = type metadata accessor for LNAppShortcutParameterRecord(0);
  v23 = (a3 + v22[5]);
  *v23 = v41;
  v23[1] = v16;
  v24 = (a3 + v22[6]);
  v25 = v40;
  *v24 = v39;
  v24[1] = v25;
  *(a3 + v22[7]) = v21;
  v26 = (a3 + v22[8]);
  v27 = v36;
  *v26 = v35;
  v26[1] = v27;
  *(a3 + v22[9]) = v33;
  *(a3 + v22[10]) = v20;
  v28 = (a3 + v22[11]);
  *v28 = v29;
  v28[1] = v19;
  return sub_1000075C4(a3, 0, 1, v22);
}

void sub_10006821C()
{
  sub_100004DF0();
  v2 = v1;
  if (qword_100198170 != -1)
  {
    sub_100007ED0(&qword_100198170);
  }

  memcpy(v19, &unk_100199F00, sizeof(v19));
  v18[0] = v2;
  if (qword_100198178 != -1)
  {
    sub_100007B38(&qword_100198178);
  }

  v3 = sub_10002EB80(&qword_10019A080, &qword_10014EE20);
  sub_100013F58(&qword_10019A088, &qword_10019A080, &qword_10014EE20);
  v4 = sub_1000110E0();
  Collection<>.contains(_:)(v4, v5, v6, v3, v7, v8);
  memcpy(v17, v19, sizeof(v17));
  v9 = sub_1000110E0();
  QueryType.filter(_:)(v9, v10, v11, &type metadata for Table, &protocol witness table for Table, v12, v13, v14, v16, v17[0], v17[1], v17[2], v17[3], v17[4], v17[5], v17[6], v17[7], v17[8], v17[9], v17[10], v17[11], v17[12], v17[13], v17[14], v17[15], v17[16], v17[17], v17[18], v17[19], v17[20], v17[21], v18[0], v18[1], v18[2], v18[3], v18[4], v18[5], v18[6], v18[7], v18[8], v18[9], v18[10], v18[11], v18[12], v18[13], v18[14]);

  memcpy(v20, v18, sizeof(v20));
  v18[3] = &type metadata for Table;
  v18[4] = &protocol witness table for Table;
  sub_100003A98();
  v18[0] = swift_allocObject();
  memcpy((v18[0] + 16), v20, 0xB0uLL);
  Connection.prepareRowIterator(_:)(v18);
  sub_100006430();
  v15 = sub_1000034F8(v18);
  if (!v0)
  {
    __chkstk_darwin(v15);

    sub_10002EB80(&qword_10019B410, &unk_10014E360);
    RowIterator.compactMap<A>(_:)();
  }

  sub_100004674();
}

uint64_t sub_1000684AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, uint64_t, double)@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_10002EB80(&qword_10019B410, &unk_10014E360);
  __chkstk_darwin(v8);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v14 = v18 - v13;
  a3(a1, a2, v12);
  v15 = type metadata accessor for LNAppShortcutParameterRecord(0);
  v16 = 1;
  if (sub_1000032C4(v14, 1, v15) != 1)
  {
    sub_10005550C(v14, v10);
    sub_1000075C4(v10, 0, 1, v15);
    sub_100069DF0(v10, a4, &qword_10019B410, &unk_10014E360);
    v16 = 0;
  }

  return sub_1000075C4(a4, v16, 1, v8);
}

void sub_100068610()
{
  sub_100004DF0();
  v2 = v1;
  v4 = v3;
  if (qword_100198170 != -1)
  {
    sub_100007ED0(&qword_100198170);
  }

  memcpy(v32, &unk_100199F00, sizeof(v32));
  if (v2)
  {
    sub_1000196B0(v32, &v15);
    if (qword_100198180 != -1)
    {
      sub_100007130(&qword_100198180);
    }

    sub_100003A8C(&qword_100199FC8);
    v15 = v4;
    v16 = v2;
    == infix<A>(_:_:)();
    sub_100006430();
    memcpy(v14, v32, sizeof(v14));
    v5 = sub_100006768();
    QueryType.filter(_:)(v5, v6, v7, v8, v9, v10, v11, v12, v14[0], v14[1], v14[2], v14[3], v14[4], v14[5], v14[6], v14[7], v14[8], v14[9], v14[10], v14[11], v14[12], v14[13], v14[14], v14[15], v14[16], v14[17], v14[18], v14[19], v14[20], v14[21], v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30);

    sub_10001970C(v32);
    v13 = &v15;
  }

  else
  {
    sub_1000196B0(v32, &v15);
    v13 = v32;
  }

  memcpy(__dst, v13, sizeof(__dst));
  v18 = &type metadata for Table;
  v19 = &protocol witness table for Table;
  sub_100003A98();
  v15 = swift_allocObject();
  memcpy((v15 + 16), __dst, 0xB0uLL);
  Connection.prepareRowIterator(_:)(&v15);
  sub_1000034F8(&v15);
  if (!v0)
  {
    type metadata accessor for LNAppShortcutParameterRecord(0);

    RowIterator.compactMap<A>(_:)();
  }

  sub_100004674();
}

id sub_100068864(void *a1, void *a2, void *a3)
{
  sub_1000034B4(a1, a1[3]);
  v7 = [v3 initWithValue:_bridgeAnythingToObjectiveC<A>(_:)() valueType:a2 displayRepresentation:a3];
  swift_unknownObjectRelease();

  sub_1000034F8(a1);
  return v7;
}

id sub_1000688F0(void *a1, void *a2)
{
  sub_1000034B4(a1, a1[3]);
  v5 = [v2 initWithValue:_bridgeAnythingToObjectiveC<A>(_:)() valueType:a2];
  swift_unknownObjectRelease();

  sub_1000034F8(a1);
  return v5;
}

void sub_100068968(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100006758(a1, a2);
  sub_10000C2A0(v7, v8);
  sub_100002AA4();
  if (v11)
  {
    __break(1u);
LABEL_14:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v12 = v9;
  v13 = v10;
  sub_10002EB80(&qword_10019A100, &qword_10014EED8);
  if (sub_100004E68())
  {
    sub_10000C2A0(a2, a3);
    sub_1000051A8();
    if (!v15)
    {
      goto LABEL_14;
    }

    v12 = v14;
  }

  if (v13)
  {
    sub_1000034F8((*(*v3 + 56) + 32 * v12));
    v16 = sub_1000077D8();

    sub_1000398F4(v16, v17);
  }

  else
  {
    v18 = sub_1000246A8();
    sub_10006996C(v18, v19, a3, a1, v20);
  }
}

void sub_100068A90()
{
  sub_100006A04();
  sub_10000C8C8();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_100006758(v9, v7);
  sub_1000459A8();
  sub_100002AA4();
  if (v13)
  {
    __break(1u);
LABEL_14:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v14 = v11;
  v15 = v12;
  sub_10002EB80(&qword_10019A0F8, &unk_10014EEC8);
  if (sub_1000117F4())
  {
    sub_100011AEC();
    sub_1000459A8();
    sub_100013C80();
    if (!v17)
    {
      goto LABEL_14;
    }

    v14 = v16;
  }

  v18 = *v0;
  if (v15)
  {
    *(v18[7] + 8 * v14) = v10;
    sub_1000069EC();
  }

  else
  {
    sub_1000699D8(v14, v8, v6, v4, v2, v10, v18);

    sub_1000069EC();
  }
}

void sub_100068BC8()
{
  sub_100006A04();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = sub_100006758(v7, v9);
  sub_10000C2A0(v10, v11);
  sub_100002AA4();
  if (v14)
  {
    __break(1u);
LABEL_14:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v15 = v12;
  v16 = v13;
  sub_10002EB80(v4, v2);
  if (sub_100004E68())
  {
    v17 = sub_10001A9E8();
    sub_10000C2A0(v17, v18);
    sub_1000051A8();
    if (!v20)
    {
      goto LABEL_14;
    }

    v15 = v19;
  }

  if (v16)
  {
    *(*(*v0 + 56) + 8 * v15) = v8;
    sub_1000069EC();
  }

  else
  {
    v22 = sub_1000246A8();
    sub_100069A70(v22, v23, v6, v8, v24);
    sub_1000069EC();
  }
}

void sub_100068CEC()
{
  sub_100006A04();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_100004B7C(v8, v6, v4, v2);
  sub_100002AA4();
  if (v11)
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v9;
  v13 = v10;
  sub_10002EB80(&qword_100199670, &unk_10014E370);
  if (!sub_10001CEB0())
  {
    goto LABEL_5;
  }

  v14 = sub_10000C2A0(v5, v3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v12 = v14;
LABEL_5:
  v16 = *v0;
  if (v13)
  {
    v17 = (v16[7] + 16 * v12);
    *v17 = v1;
    v17[1] = v7;
    sub_1000069EC();
  }

  else
  {
    sub_100069A24(v12, v5, v3, v1, v7, v16);
    sub_1000069EC();
  }
}

void sub_100068DFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100006758(a1, a2);
  sub_10000C2A0(v6, v7);
  sub_100002AA4();
  if (v10)
  {
    __break(1u);
LABEL_14:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v11 = v8;
  v12 = v9;
  sub_10002EB80(&qword_100199B90, &qword_10014E788);
  if (sub_100004E68())
  {
    v13 = sub_10001A9E8();
    sub_10000C2A0(v13, v14);
    sub_1000051A8();
    if (!v16)
    {
      goto LABEL_14;
    }

    v11 = v15;
  }

  if (v12)
  {
    v17 = *(*v3 + 56);
    v18 = *(v17 + 8 * v11);
    *(v17 + 8 * v11) = a1;
  }

  else
  {
    v19 = sub_1000246A8();
    sub_100069A70(v19, v20, a3, a1, v21);
  }
}

void sub_100068F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100006A04();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = type metadata accessor for UUID();
  sub_100002944();
  v29 = v28;
  __chkstk_darwin(v30);
  v32 = &a9 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100045A18();
  sub_100002AA4();
  if (v35)
  {
    __break(1u);
    goto LABEL_11;
  }

  v36 = v33;
  v37 = v34;
  sub_10002EB80(&qword_100199BC0, &unk_10014EEA0);
  if (!sub_100004E68())
  {
    goto LABEL_5;
  }

  sub_100045A18();
  if ((v37 & 1) != (v39 & 1))
  {
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v36 = v38;
LABEL_5:
  v40 = *v20;
  if (v37)
  {
    *(v40[7] + 8 * v36) = v26;
    sub_1000069EC();
  }

  else
  {
    (*(v29 + 16))(v32, v24, v27);
    sub_100069AB8(v36, v32, v26, v40);
    sub_1000069EC();
  }
}

void sub_100069084(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000C2A0(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v11;
  v17 = v12;
  sub_10002EB80(&qword_100199C68, &unk_10014E7D0);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = sub_10000C2A0(a2, a3);
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_13:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v16 = v18;
LABEL_5:
  v20 = *v5;
  if (v17)
  {
    v21 = v20[7];
    v22 = type metadata accessor for UUID();
    v23 = *(v22 - 8);
    v24 = *(v23 + 40);
    v25 = v22;
    v26 = v21 + *(v23 + 72) * v16;

    v24(v26, a1, v25);
  }

  else
  {
    sub_100069B70(v16, a2, a3, a1, v20);
  }
}

uint64_t sub_1000691F8(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100045ADC(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v11;
  v17 = v12;
  sub_10002EB80(&qword_100199C78, &unk_10014E7E0);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = sub_100045ADC(a2, a3);
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v18;
LABEL_5:
  v20 = *v5;
  if (v17)
  {
    v21 = v20[7];
    v22 = v21 + *(*(sub_10002EB80(&qword_100199C70, &unk_10014EE60) - 8) + 72) * v16;

    return sub_100069E4C(a1, v22);
  }

  else
  {
    sub_100069C20(v16, a2, a3, a1, v20);

    return sub_1000098F0(a2, a3);
  }
}

id sub_100069360(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  sub_10004B2BC();
  sub_100002AA4();
  if (v12)
  {
    __break(1u);
LABEL_14:
    type metadata accessor for LNSuggestedActionDialogParameterKey(0);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v13 = v10;
  v14 = v11;
  sub_10002EB80(&qword_10019A0B0, &qword_10014EE50);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v9))
  {
    sub_10004B2BC();
    sub_1000051A8();
    if (!v16)
    {
      goto LABEL_14;
    }

    v13 = v15;
  }

  v17 = *v5;
  if (v14)
  {
    v18 = (v17[7] + 16 * v13);
    *v18 = a1;
    v18[1] = a2;
  }

  else
  {
    sub_100069CDC(v13, a3, a1, a2, v17);

    return a3;
  }
}

void sub_1000694A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  sub_10000C8C8();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v27 = v18;
  v28 = v17;
  sub_100006758(v17, v15);
  sub_10004592C();
  sub_100002AA4();
  if (v21)
  {
    __break(1u);
LABEL_14:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v22 = v19;
  v23 = v20;
  sub_10002EB80(a7, a8);
  if (sub_1000117F4())
  {
    sub_100011AEC();
    sub_10004592C();
    sub_100013C80();
    if (!v25)
    {
      goto LABEL_14;
    }

    v22 = v24;
  }

  v26 = *v8;
  if (v23)
  {
    *(v26[7] + 8 * v22) = v28;
  }

  else
  {
    sub_1000699D8(v22, v16, v14, v27, v12, v28, v26);
  }
}

void sub_1000695E0()
{
  sub_100006A04();
  sub_10000C8C8();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_10000C2A0(v3, v1);
  sub_100002AA4();
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v11;
  v15 = v12;
  sub_10002EB80(&qword_100199C88, &qword_10014EE80);
  if (!sub_1000117F4())
  {
    goto LABEL_5;
  }

  v16 = sub_100011AEC();
  v17 = sub_10000C2A0(v16, v2);
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_13:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v14 = v17;
LABEL_5:
  v19 = *v0;
  if (v15)
  {
    v20 = (v19[7] + 24 * v14);
    *v20 = v10;
    v20[1] = v8;
    v20[2] = v6;

    sub_1000069EC();
  }

  else
  {
    sub_100069D24(v14, v4, v2, v10, v8, v6, v19);
    sub_1000069EC();
  }
}

void sub_10006971C()
{
  sub_100006A04();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_100004B7C(v8, v6, v4, v2);
  sub_100002AA4();
  if (v11)
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v9;
  v13 = v10;
  sub_10002EB80(&qword_10019A0C0, &qword_10014EE70);
  if (!sub_10001CEB0())
  {
    goto LABEL_5;
  }

  v14 = sub_10000C2A0(v5, v3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v12 = v14;
LABEL_5:
  v16 = *v0;
  if (v13)
  {
    v17 = (v16[7] + 16 * v12);
    *v17 = v1;
    v17[1] = v7;

    sub_1000069EC();
  }

  else
  {
    sub_100069A24(v12, v5, v3, v1, v7, v16);
    sub_1000069EC();
  }
}

void sub_100069834()
{
  sub_100006A04();
  sub_10000C8C8();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_100006758(v9, v7);
  sub_100045C54();
  sub_100002AA4();
  if (v13)
  {
    __break(1u);
LABEL_14:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v14 = v11;
  v15 = v12;
  sub_10002EB80(&qword_10019A0C8, &qword_10014EE78);
  if (sub_1000117F4())
  {
    sub_100011AEC();
    sub_100045C54();
    sub_100013C80();
    if (!v17)
    {
      goto LABEL_14;
    }

    v14 = v16;
  }

  v18 = *v0;
  if (v15)
  {
    *(v18[7] + 8 * v14) = v10;
    sub_1000069EC();
  }

  else
  {
    sub_1000699D8(v14, v8, v6, v4, v2, v10, v18);

    sub_1000069EC();
  }
}

_OWORD *sub_10006996C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1000398F4(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_1000699D8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 32 * result);
  *v7 = a2;
  v7[1] = a3;
  v7[2] = a4;
  v7[3] = a5;
  *(a7[7] + 8 * result) = a6;
  v8 = a7[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v10;
  }

  return result;
}

unint64_t sub_100069A24(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t sub_100069A70(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_100069AB8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_100069B70(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for UUID();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_100069C20(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_10002EB80(&qword_100199C70, &unk_10014EE60);
  result = sub_100069DF0(a4, v9 + *(*(v10 - 8) + 72) * a1, &qword_100199C70, &unk_10014EE60);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_100069CDC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_100069D24(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 16 * result);
  *v7 = a2;
  v7[1] = a3;
  v8 = (a7[7] + 24 * result);
  *v8 = a4;
  v8[1] = a5;
  v8[2] = a6;
  v9 = a7[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v11;
  }

  return result;
}

uint64_t sub_100069D78(void *a1)
{
  v2 = [a1 synonyms];

  if (!v2)
  {
    return 0;
  }

  sub_100003D44(0, &qword_10019AD00, LNStaticDeferredLocalizedString_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100069DF0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_10002EB80(a3, a4);
  sub_10000482C();
  v5 = sub_1000077D8();
  v6(v5);
  return a2;
}

uint64_t sub_100069E4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002EB80(&qword_100199C70, &unk_10014EE60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_100069EE4(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_100003D44(319, &qword_10019AD00, LNStaticDeferredLocalizedString_ptr);
    if (v2 <= 0x3F)
    {
      sub_100003D44(319, &qword_10019BBA0, LNProperty_ptr);
      if (v3 <= 0x3F)
      {
        sub_100069FE0(319);
        if (v4 <= 0x3F)
        {
          sub_10006A048();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100069FE0(uint64_t a1)
{
  if (!qword_10019A170)
  {
    sub_100003D44(255, &qword_10019AD00, LNStaticDeferredLocalizedString_ptr);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10019A170);
    }
  }
}

void sub_10006A048()
{
  if (!qword_100199788)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100199788);
    }
  }
}

uint64_t sub_10006A0D4(uint64_t a1, _OWORD *a2)
{
  sub_1000398F4(a2, *(*(a1 + 64) + 40));

  return _swift_continuation_resume(a1);
}

uint64_t sub_10006A12C()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  qword_10019DB80 = result;
  *algn_10019DB88 = v1;
  return result;
}

uint64_t sub_10006A15C()
{
  if (qword_1001981B8 != -1)
  {
    swift_once();
  }

  v0 = qword_10019DB80;

  return v0;
}

id sub_10006A1C4()
{
  if (qword_1001981C0 != -1)
  {
    sub_100002ACC(&qword_1001981C0);
  }

  v0 = type metadata accessor for Logger();
  sub_10000347C(v0, qword_10019DB90);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v7 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_100004C50(0xD000000000000017, 0x8000000100155430, &v7);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s", v3, 0xCu);
    sub_1000034F8(v4);
    sub_1000036AC(v4);
    sub_1000036AC(v3);
  }

  v5 = LNDaemonConstraintValidationXPCInterface();

  return v5;
}

uint64_t sub_10006A2F4(uint64_t a1)
{
  *(v1 + 208) = a1;

  return _swift_task_switch(sub_10006A384, 0, 0);
}

uint64_t sub_10006A384()
{
  if (qword_1001981C0 != -1)
  {
    sub_100002ACC(&qword_1001981C0);
  }

  v1 = v0[26];
  v2 = type metadata accessor for Logger();
  v0[27] = sub_10000347C(v2, qword_10019DB90);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[26];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "Validating constraints on action %@", v7, 0xCu);
    sub_10006AEBC(v8);
    sub_1000036AC(v8);
    sub_1000036AC(v7);
  }

  v10 = v0[26];

  v11 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 22;
  v0[3] = sub_10006A5CC;
  v12 = swift_continuation_init();
  v0[17] = sub_10002EB80(&qword_10019A258, &qword_10014EF78);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10006A88C;
  v0[13] = &unk_10018D580;
  v0[14] = v12;
  [v11 contextForAction:v10 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10006A5CC()
{
  v1 = *v0;
  sub_10000298C();
  *v2 = v1;

  return _swift_task_switch(sub_10006A6D0, 0, 0);
}

uint64_t sub_10006A6D0()
{
  v1 = *(v0 + 208);
  sub_1000398F4((v0 + 176), (v0 + 144));
  sub_1000034B4((v0 + 144), *(v0 + 168));
  v2 = _bridgeAnythingToObjectiveC<A>(_:)();
  *(v0 + 80) = 0;
  v3 = [v1 evaluateConstraintsInContext:v2 error:v0 + 80];
  swift_unknownObjectRelease();
  v4 = *(v0 + 80);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = v3;
    _os_log_impl(&_mh_execute_header, v5, v6, "Validating constraints finished with result: %ld", v7, 0xCu);
    sub_1000036AC(v7);
  }

  if (v4)
  {
    v8 = [v4 localizedDescription];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  sub_1000034F8((v0 + 144));

  v12 = *(v0 + 8);

  return v12(v3, v9, v11);
}

uint64_t sub_10006A88C(uint64_t a1, uint64_t a2)
{
  v3 = *sub_1000034B4((a1 + 32), *(a1 + 56));
  ObjectType = swift_getObjectType();
  *&v5 = a2;
  swift_unknownObjectRetain();
  return sub_10006A0D4(v3, &v5);
}

uint64_t sub_10006A970(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_10006AA30;

  return sub_10006A2F4(v6);
}

uint64_t sub_10006AA30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = *(*v3 + 24);
  v8 = *(*v3 + 16);
  v9 = *v3;
  sub_10000298C();
  *v10 = v9;

  if (a3)
  {

    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  v12 = *(v6 + 32);
  (v12)[2](v12, a1, v11);

  _Block_release(v12);

  v13 = *(v9 + 8);

  return v13();
}

id sub_10006ABD0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

uint64_t sub_10006AC08()
{
  v0 = type metadata accessor for Logger();
  sub_100037CD8(v0, qword_10019DB90);
  sub_10000347C(v0, qword_10019DB90);
  type metadata accessor for ConstraintValidationService();
  sub_10002EB80(&qword_10019A250, &qword_10014DF40);
  String.init<A>(describing:)();
  result = LNLogSubsystem;
  if (LNLogSubsystem)
  {
    String.init(cString:)();
    return Logger.init(subsystem:category:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10006AD1C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10006ADD0;

  return sub_10006A970(v2, v3, v4);
}

uint64_t sub_10006ADD0()
{
  v1 = *v0;
  sub_10000298C();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_10006AEBC(uint64_t a1)
{
  v2 = sub_10002EB80(&unk_10019A260, &unk_10014D030);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_10006AF24(int64_t a1, uint64_t a2)
{
  v4 = sub_1000232F4(a2);
  v5 = 0;
  v6 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return _swiftEmptyArrayStorage;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_34;
      }

      v7 = *(a2 + 8 * v5 + 32);
    }

    v2 = v7;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v8 = [v7 orderedPhrases];
    sub_100003D44(0, &qword_100198B98, LNAutoShortcutLocalizedPhrase_ptr);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v9 >> 62)
    {
      v10 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = __OFADD__(v6, v10);
    v6 += v10;
    if (v11)
    {
      goto LABEL_35;
    }

    if (v6 > a1)
    {
      v12 = [v2 orderedPhrases];
      v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (!__OFSUB__(v6, a1))
      {
        v14 = sub_10006B3C4(v6 - a1, v13);
        v16 = v15;
        v18 = v17;
        v20 = v19;
        if ((v19 & 1) == 0)
        {
          goto LABEL_19;
        }

        type metadata accessor for __ContiguousArrayStorageBase();
        swift_unknownObjectRetain_n();
        v22 = swift_dynamicCastClass();
        if (!v22)
        {
          swift_unknownObjectRelease();
          v22 = _swiftEmptyArrayStorage;
        }

        v23 = v22[2];

        if (__OFSUB__(v20 >> 1, v18))
        {
          __break(1u);
        }

        else if (v23 == (v20 >> 1) - v18)
        {
          v24 = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          v54 = v24;
          if (!v24)
          {
            v54 = _swiftEmptyArrayStorage;
            goto LABEL_29;
          }

          goto LABEL_30;
        }

        swift_unknownObjectRelease();
LABEL_19:
        sub_10006B774(v14, v16, v18, v20, &qword_100198B98, LNAutoShortcutLocalizedPhrase_ptr);
        v54 = v21;
LABEL_29:
        swift_unknownObjectRelease();
LABEL_30:
        v25 = [v2 bundleIdentifier];
        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v51 = v27;
        v52 = v26;

        v28 = [v2 localeIdentifier];
        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v49 = v30;
        v50 = v29;

        v31 = [v2 actionIdentifier];
        v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v33 = v32;

        v34 = sub_10000F2A0(v2, &selRef_localizedShortTitle);
        v36 = v35;
        v37 = sub_10000F2A0(v2, &selRef_localizedAutoShortcutDescription);
        v39 = v38;
        v40 = [v2 systemImageName];
        v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v43 = v42;

        v44 = [v2 shortcutTileColor];
        v45 = [v2 parameterPresentation];
        v46 = objc_allocWithZone(LNAutoShortcut);
        sub_10006B504(v52, v51, v50, v49, v48, v33, v54, v34, v36, v37, v39, v41, v43, v44, v45);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) < *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
LABEL_31:
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          return _swiftEmptyArrayStorage;
        }

LABEL_37:
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        goto LABEL_31;
      }

LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (v6 == a1)
    {
      break;
    }

    v2 = v2;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    ++v5;
  }

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return _swiftEmptyArrayStorage;
}

unint64_t sub_10006B3C4(uint64_t a1, unint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v10 = _CocoaArrayWrapper.subscript.getter();

    return v10;
  }

  v4 = sub_1000232F4(a2);
  v5 = sub_100108A58(v4, -a1, 0, a2);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  if (v7 < 0)
  {
    goto LABEL_16;
  }

  sub_1001089FC(0, a2);
  sub_1001089FC(v7, a2);
  if ((a2 & 0xC000000000000001) != 0 && v7)
  {
    sub_100003D44(0, &qword_100198B98, LNAutoShortcutLocalizedPhrase_ptr);

    v8 = 0;
    do
    {
      v9 = v8 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v8);
      v8 = v9;
    }

    while (v7 != v9);
  }

  else
  {
  }

  if (a2 >> 62)
  {
    goto LABEL_17;
  }

  return a2 & 0xFFFFFFFFFFFFFF8;
}

id sub_10006B504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  v23 = String._bridgeToObjectiveC()();

  v15 = String._bridgeToObjectiveC()();

  v16 = String._bridgeToObjectiveC()();

  sub_100003D44(0, &qword_100198B98, LNAutoShortcutLocalizedPhrase_ptr);
  v17.super.isa = Array._bridgeToObjectiveC()().super.isa;

  if (a9)
  {
    v18 = String._bridgeToObjectiveC()();
  }

  else
  {
    v18 = 0;
  }

  if (a11)
  {
    v19 = String._bridgeToObjectiveC()();
  }

  else
  {
    v19 = 0;
  }

  v20 = String._bridgeToObjectiveC()();

  v21 = [v24 initWithBundleIdentifier:v23 localeIdentifier:v15 actionIdentifier:v16 orderedPhrases:v17.super.isa localizedShortTitle:v18 localizedAutoShortcutDescription:v19 systemImageName:v20 shortcutTileColor:a14 parameterPresentation:a15];

  return v21;
}

void *sub_10006B6A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = sub_1000B3180(*(a1 + 16), 0);
  sub_1000B5980();
  v4 = v3;

  sub_100014464(v6);
  if (v4 != v1)
  {
    __break(1u);
    return _swiftEmptyArrayStorage;
  }

  return v2;
}

void sub_10006B774(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t *a5, void *a6)
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v7)
  {
    if (v7 >= 1)
    {
      sub_10002EB80(&qword_100198B70, &qword_10014DDB0);
      v11 = swift_allocObject();
      v12 = j__malloc_size(v11);
      v11[2] = v7;
      v11[3] = (2 * ((v12 - 32) / 8)) | 1;
    }

    if (v6 != a3)
    {
      sub_100003D44(0, a5, a6);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void sub_10006B868(uint64_t a1, uint64_t a2)
{
  v2 = sub_10002EB80(&qword_1001990C0, &unk_10014E200);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v9 = 1;
  String.utf8CString.getter();
  v5 = container_system_path_for_identifier();

  if (v5)
  {
    v6 = type metadata accessor for URL();
    sub_1000075C4(v4, 1, 1, v6);
    URL.init(fileURLWithFileSystemRepresentation:isDirectory:relativeTo:)();
    sub_1000209B0(v4);
    free(v5);
  }

  else
  {
    v7 = v9;
    sub_10006B9D0();
    swift_allocError();
    *v8 = v7;
    swift_willThrow();
  }
}

unint64_t sub_10006B9D0()
{
  result = qword_10019A270;
  if (!qword_10019A270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10019A270);
  }

  return result;
}

uint64_t sub_10006BA34(uint64_t a1, void (*a2)(uint64_t *, void *, __n128), uint64_t a3, uint64_t a4)
{
  v13 = a1;
  v6 = *(a4 + 16);
  v7 = (a4 + 56);
  if (!v6)
  {
    return v13;
  }

  while (1)
  {
    v8 = *(v7 - 1);
    v9 = *v7;
    v10 = *(v7 - 2);
    v12[0] = *(v7 - 3);
    v12[1] = v10;
    v12[2] = v8;
    v12[3] = v9;

    (a2)(&v13, v12);
    if (v4)
    {
      break;
    }

    v7 += 4;
    if (!--v6)
    {
      return v13;
    }
  }
}

uint64_t sub_10006BB00(uint64_t a1, void (*a2)(uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v14 = a1;
  v5 = v4;
  v7 = *(a4 + 16);
  v8 = (a4 + 48);
  if (!v7)
  {
    return v14;
  }

  while (1)
  {
    v10 = *(v8 - 1);
    v9 = *v8;
    v13[0] = *(v8 - 2);
    v13[1] = v10;
    v13[2] = v9;

    v11 = v9;
    a2(&v14, v13);
    if (v5)
    {
      break;
    }

    v8 += 3;
    if (!--v7)
    {
      return v14;
    }
  }
}