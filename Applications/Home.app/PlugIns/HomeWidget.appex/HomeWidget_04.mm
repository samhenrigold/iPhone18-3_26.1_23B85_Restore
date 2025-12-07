uint64_t sub_10005FA2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryAndSceneEntity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005FA90(uint64_t a1)
{
  v2 = type metadata accessor for AccessoryAndSceneEntity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10005FAEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

void sub_10005FB00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4)
  {
  }
}

unint64_t sub_10005FB98()
{
  result = qword_1000C1E38;
  if (!qword_1000C1E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1E38);
  }

  return result;
}

uint64_t sub_10005FC40(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000375C(&qword_1000C1E28, &qword_1000A1EA8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10005FCB8()
{
  result = qword_1000C1E48;
  if (!qword_1000C1E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1E48);
  }

  return result;
}

uint64_t sub_10005FD0C(uint64_t a1, int a2)
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

uint64_t sub_10005FD54(uint64_t result, int a2, int a3)
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

unint64_t sub_10005FDB0()
{
  result = qword_1000C1E58;
  if (!qword_1000C1E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1E58);
  }

  return result;
}

uint64_t sub_10005FE04(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7361487865646E69 && a2 == 0xE900000000000068;
  if (v4 || (sub_10009ED34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001000A5060 == a2 || (sub_10009ED34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001000A5080 == a2 || (sub_10009ED34() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001000A50A0 == a2 || (sub_10009ED34() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69)
  {

    return 4;
  }

  else
  {
    v6 = sub_10009ED34();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_10005FFCC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100003714(&qword_1000C1E68, &qword_1000A1F78);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - v7;
  sub_100024330(a1, a1[3]);
  sub_10005FDB0();
  sub_10009EE14();
  if (v2)
  {
    return sub_100015F44(a1);
  }

  v25 = 0;
  v9 = sub_10009EC64();
  v24 = 1;
  v10 = sub_10009EC34();
  v23 = 2;
  v19 = sub_10009EC44();
  sub_100003714(&qword_1000C1E18, "ƃ");
  v22 = 3;
  sub_10006027C(&qword_1000C1E70, &protocol witness table for String, &protocol witness table for Int, &protocol conformance descriptor for <> [A : B]);
  sub_10009EC54();
  v18 = v20;
  v21 = 4;
  v11 = sub_10009EC24();
  v12 = v8;
  v14 = v13;
  (*(v6 + 8))(v12, v5);
  result = sub_100015F44(a1);
  *a2 = v9;
  *(a2 + 8) = v10 & 1;
  v16 = v18;
  *(a2 + 16) = v19;
  *(a2 + 24) = v16;
  *(a2 + 32) = v11;
  *(a2 + 40) = v14;
  return result;
}

uint64_t sub_10006027C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10000375C(&qword_1000C1E18, "ƃ");
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WidgetMetricsInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WidgetMetricsInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100060440()
{
  result = qword_1000C1E78;
  if (!qword_1000C1E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1E78);
  }

  return result;
}

unint64_t sub_100060498()
{
  result = qword_1000C1E80;
  if (!qword_1000C1E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1E80);
  }

  return result;
}

unint64_t sub_1000604F0()
{
  result = qword_1000C1E88;
  if (!qword_1000C1E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1E88);
  }

  return result;
}

uint64_t sub_100060544(uint64_t a1, void *a2)
{
  v3 = sub_100024330((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_100003714(&qword_1000C1D30, &qword_1000A1DB8);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

void *sub_1000605F0(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v15 = _swiftEmptyArrayStorage;
  if (a3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10009EBA4())
  {
    v6 = 0;
    v11 = _swiftEmptyArrayStorage;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = sub_10009EAE4();
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v14 = v7;
      a1(&v13, &v14);
      if (v3)
      {

        return v11;
      }

      if (v13)
      {
        sub_10009E684();
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10009E6C4();
        }

        sub_10009E6E4();
        v11 = v15;
      }

      ++v6;
      if (v9 == i)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return _swiftEmptyArrayStorage;
}

void *sub_10006079C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v7 = sub_100003714(&qword_1000C1258, &unk_1000A08D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v23 - v8;
  v10 = type metadata accessor for AccessoryAndSceneEntity(0);
  v11 = __chkstk_darwin(v10);
  v29 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v27 = &v23 - v14;
  v15 = *(a3 + 16);
  if (!v15)
  {
    return _swiftEmptyArrayStorage;
  }

  v24 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = a3 + v24;
  v28 = (v13 + 48);
  v17 = _swiftEmptyArrayStorage;
  v18 = *(v13 + 72);
  v25 = v10;
  v26 = a2;
  while (1)
  {
    a1(v16);
    if (v3)
    {
      break;
    }

    if ((*v28)(v9, 1, v10) == 1)
    {
      sub_1000160CC(v9, &qword_1000C1258, &unk_1000A08D0);
    }

    else
    {
      v19 = v27;
      sub_100065D58(v9, v27, type metadata accessor for AccessoryAndSceneEntity);
      sub_100065D58(v19, v29, type metadata accessor for AccessoryAndSceneEntity);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_100064FC4(0, v17[2] + 1, 1, v17, &qword_1000C0EC0, &qword_10009FCE8, type metadata accessor for AccessoryAndSceneEntity);
      }

      v21 = v17[2];
      v20 = v17[3];
      if (v21 >= v20 >> 1)
      {
        v17 = sub_100064FC4((v20 > 1), v21 + 1, 1, v17, &qword_1000C0EC0, &qword_10009FCE8, type metadata accessor for AccessoryAndSceneEntity);
      }

      v17[2] = v21 + 1;
      sub_100065D58(v29, v17 + v24 + v21 * v18, type metadata accessor for AccessoryAndSceneEntity);
      v10 = v25;
    }

    v16 += v18;
    if (!--v15)
    {
      return v17;
    }
  }

  return v17;
}

void *sub_100060AB0(void (*a1)(void **__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v5 = v3;
  if (a3 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10009EBA4())
  {
    result = _swiftEmptyArrayStorage;
    if (!i)
    {
      break;
    }

    v15 = _swiftEmptyArrayStorage;
    sub_10009EB54();
    if (i < 0)
    {
      __break(1u);
LABEL_19:

      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v11 = sub_10009EAE4();
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v11 = *(a3 + 8 * j + 32);
      }

      v4 = v11;
      v13 = v11;
      a1(&v14, &v13);
      if (v5)
      {
        goto LABEL_19;
      }

      v5 = 0;

      v4 = v14;
      sub_10009EB34();
      sub_10009EB64();
      sub_10009EB74();
      sub_10009EB44();
      if (v10 == i)
      {
        return v15;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return result;
}

void *sub_100060C24(void (*a1)(__int16 *), uint64_t a2, uint64_t a3)
{
  v29 = a1;
  v30 = a2;
  v28 = sub_10009D204();
  __chkstk_darwin(v28);
  v34 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a3 + 16);
  result = _swiftEmptyArrayStorage;
  if (v7)
  {
    v37 = _swiftEmptyArrayStorage;
    v9 = v5;
    sub_10001BD4C(0, v7, 0);
    v35 = v37;
    v33 = a3 + 64;
    v10 = sub_10009E994();
    v11 = 0;
    v26[1] = v9 + 32;
    v27 = v9;
    v26[0] = a3 + 72;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a3 + 32))
    {
      v13 = v10 >> 6;
      if ((*(v33 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_23;
      }

      v31 = v11;
      v14 = *(a3 + 36);
      v36 = *(*(a3 + 48) + 2 * v10);
      v29(&v36);
      v32 = v3;
      if (v3)
      {
        goto LABEL_27;
      }

      v15 = v35;
      v37 = v35;
      v17 = v35[2];
      v16 = v35[3];
      if (v17 >= v16 >> 1)
      {
        sub_10001BD4C((v16 > 1), v17 + 1, 1);
        v15 = v37;
      }

      v15[2] = v17 + 1;
      v18 = (*(v27 + 80) + 32) & ~*(v27 + 80);
      v35 = v15;
      (*(v27 + 32))(v15 + v18 + *(v27 + 72) * v17, v34, v28);
      v12 = 1 << *(a3 + 32);
      if (v10 >= v12)
      {
        goto LABEL_24;
      }

      v19 = *(v33 + 8 * v13);
      if ((v19 & (1 << v10)) == 0)
      {
        goto LABEL_25;
      }

      if (v14 != *(a3 + 36))
      {
        goto LABEL_26;
      }

      v20 = v19 & (-2 << (v10 & 0x3F));
      if (v20)
      {
        v12 = __clz(__rbit64(v20)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v13 << 6;
        v22 = v13 + 1;
        v23 = (v26[0] + 8 * v13);
        while (v22 < (v12 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            sub_100015F90(v10, v14, 0);
            v12 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        sub_100015F90(v10, v14, 0);
      }

LABEL_4:
      v3 = v32;
      v11 = v31 + 1;
      v10 = v12;
      if (v31 + 1 == v7)
      {
        return v35;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:

    __break(1u);
  }

  return result;
}

uint64_t sub_100060F3C(uint64_t a1)
{
  v66 = type metadata accessor for WidgetTileInfo(0);
  v4 = *(v66 - 8);
  __chkstk_darwin(v66);
  v64 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003714(&qword_1000C0C20, &qword_1000A1E30);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v63 = &v53 - v11;
  result = __chkstk_darwin(v10);
  v14 = &v53 - v13;
  v15 = *(a1 + 16);
  v16 = *v2;
  v17 = *(*v2 + 16);
  v18 = v17 + v15;
  if (__OFADD__(v17, v15))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v65 = v9;
  if (!isUniquelyReferenced_nonNull_native || (v20 = v16[3] >> 1, v20 < v18))
  {
    if (v17 <= v18)
    {
      v21 = v17 + v15;
    }

    else
    {
      v21 = v17;
    }

    v16 = sub_100064FC4(isUniquelyReferenced_nonNull_native, v21, 1, v16, &qword_1000C0EB8, &qword_10009FCE0, type metadata accessor for WidgetTileInfo);
    v20 = v16[3] >> 1;
  }

  v22 = v16[2];
  v18 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v17 = *(v4 + 72);
  v23 = v20 - v22;
  result = sub_10002C054(&v67, v16 + v18 + v17 * v22, v20 - v22, a1);
  if (result < v15)
  {
    goto LABEL_16;
  }

  if (result)
  {
    v25 = v16[2];
    v26 = __OFADD__(v25, result);
    v27 = v25 + result;
    if (v26)
    {
      __break(1u);
      goto LABEL_20;
    }

    v16[2] = v27;
  }

  if (result != v23)
  {
    result = sub_100015F9C(v67);
LABEL_14:
    *v2 = v16;
    return result;
  }

LABEL_17:
  v62 = v16[2];
  v24 = v68;
  v55 = v68;
  v56 = v67;
  v27 = v70;
  v53 = v69;
  v28 = v71;
  if (v71)
  {
    v29 = v70;
LABEL_27:
    v33 = (v28 - 1) & v28;
    sub_100006850(*(v56 + 48) + (__clz(__rbit64(v28)) | (v29 << 6)) * v17, v14);
    v58 = *(v1 + 56);
    v58(v14, 0, 1, v66);
    v32 = v29;
    while (1)
    {
      v34 = v63;
      sub_100065CE8(v14, v63);
      v35 = *(v1 + 48);
      v1 += 48;
      v61 = v35;
      if (v35(v34, 1, v66) == 1)
      {
        break;
      }

      v54 = (v53 + 64) >> 6;
      v57 = v4 + 56;
      v36 = v62;
      while (1)
      {
        sub_1000160CC(v34, &qword_1000C0C20, &qword_1000A1E30);
        v40 = v16[3];
        v41 = v40 >> 1;
        v62 = v36;
        if ((v40 >> 1) < v36 + 1)
        {
          v16 = sub_100064FC4((v40 > 1), v36 + 1, 1, v16, &qword_1000C0EB8, &qword_10009FCE0, type metadata accessor for WidgetTileInfo);
          v41 = v16[3] >> 1;
        }

        v42 = v65;
        sub_100065CE8(v14, v65);
        if (v61(v42, 1, v66) != 1)
        {
          break;
        }

        v43 = v32;
        v44 = v65;
LABEL_37:
        sub_1000160CC(v44, &qword_1000C0C20, &qword_1000A1E30);
        v37 = v62;
        v32 = v43;
LABEL_32:
        v38 = v66;
        v16[2] = v37;
        v34 = v63;
        sub_100065CE8(v14, v63);
        v39 = v61(v34, 1, v38);
        v36 = v62;
        if (v39 == 1)
        {
          goto LABEL_29;
        }
      }

      v59 = v16 + v18;
      v45 = v62;
      if (v62 <= v41)
      {
        v45 = v41;
      }

      v60 = v45;
      v44 = v65;
      while (1)
      {
        v49 = v64;
        sub_100065D58(v44, v64, type metadata accessor for WidgetTileInfo);
        if (v62 == v60)
        {
          sub_100006918(v49);
          v37 = v60;
          v62 = v60;
          goto LABEL_32;
        }

        v4 = v62;
        sub_1000160CC(v14, &qword_1000C0C20, &qword_1000A1E30);
        sub_100065D58(v49, &v59[v4 * v17], type metadata accessor for WidgetTileInfo);
        if (!v33)
        {
          break;
        }

        v50 = v32;
LABEL_52:
        v52 = __clz(__rbit64(v33));
        v33 &= v33 - 1;
        sub_100006850(*(v56 + 48) + (v52 | (v50 << 6)) * v17, v14);
        v46 = 0;
        v32 = v50;
LABEL_42:
        v62 = v4 + 1;
        v47 = v66;
        v58(v14, v46, 1, v66);
        v44 = v65;
        sub_100065CE8(v14, v65);
        v48 = v61(v44, 1, v47);
        v43 = v32;
        if (v48 == 1)
        {
          goto LABEL_37;
        }
      }

      if (v54 <= (v32 + 1))
      {
        v51 = v32 + 1;
      }

      else
      {
        v51 = v54;
      }

      while (1)
      {
        v50 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          break;
        }

        if (v50 >= v54)
        {
          v33 = 0;
          v46 = 1;
          v32 = v51 - 1;
          goto LABEL_42;
        }

        v33 = *(v55 + 8 * v50);
        ++v32;
        if (v33)
        {
          goto LABEL_52;
        }
      }

      __break(1u);
LABEL_54:
      v58 = *(v1 + 56);
      v58(v14, 1, 1, v66);
      v33 = 0;
    }

LABEL_29:
    sub_1000160CC(v14, &qword_1000C0C20, &qword_1000A1E30);
    sub_100015F9C(v56);
    result = sub_1000160CC(v34, &qword_1000C0C20, &qword_1000A1E30);
    goto LABEL_14;
  }

LABEL_20:
  v30 = (v53 + 64) >> 6;
  if (v30 <= v27 + 1)
  {
    v31 = v27 + 1;
  }

  else
  {
    v31 = (v53 + 64) >> 6;
  }

  v32 = v31 - 1;
  while (1)
  {
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v29 >= v30)
    {
      goto LABEL_54;
    }

    v28 = *(v24 + 8 * v29);
    ++v27;
    if (v28)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100061624(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v6 = *(result + 16);
  v7 = *v5;
  v8 = *(*v5 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v9 <= v7[3] >> 1)
  {
    if (*(v14 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v8 <= v9)
  {
    v20 = v8 + v6;
  }

  else
  {
    v20 = v8;
  }

  v7 = sub_100064FC4(isUniquelyReferenced_nonNull_native, v20, 1, v7, a2, a3, a4);
  if (!*(v14 + 16))
  {
LABEL_13:

    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v16 = (v7[3] >> 1) - v7[2];
  result = a5(0);
  if (v16 < v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v6)
  {
LABEL_14:
    *v5 = v7;
    return result;
  }

  v17 = v7[2];
  v18 = __OFADD__(v17, v6);
  v19 = v17 + v6;
  if (!v18)
  {
    v7[2] = v19;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100061780(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_10009EBA4();
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

  v13 = sub_10009EBA4();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1000657F4(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_100065894(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
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

uint64_t sub_100061870()
{
  v1[2] = v0;
  v1[3] = type metadata accessor for WidgetTileInfo(0);
  v1[4] = swift_task_alloc();

  return _swift_task_switch(sub_100061904, 0, 0);
}

uint64_t sub_100061904()
{
  v1 = v0[2];
  v2 = v1 + *(v0[3] + 60);
  v3 = *v2;
  v0[5] = *v2;
  v4 = *(v2 + 8);
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      sub_100006850(v1, v0[4]);
      v9 = v3;
      v10 = swift_task_alloc();
      v0[11] = v10;
      *v10 = v0;
      v10[1] = sub_100061FE4;

      return sub_100065A24();
    }

    else
    {
      v0[13] = _swiftEmptyArrayStorage;
      v13 = swift_task_alloc();
      v0[14] = v13;
      *v13 = v0;
      v13[1] = sub_10006221C;

      return sub_100063F0C(_swiftEmptyArrayStorage);
    }
  }

  else if (v4 >= 2)
  {
    v11 = v3;
    v12 = swift_task_alloc();
    v0[6] = v12;
    *v12 = v0;
    v12[1] = sub_100061B74;

    return sub_100062514(v11);
  }

  else
  {
    v5 = sub_1000187B0();
    v0[8] = v5;
    if (v5)
    {
      v6 = v5;
      v7 = swift_task_alloc();
      v0[9] = v7;
      *v7 = v0;
      v7[1] = sub_100061DAC;

      return sub_100062890(v6);
    }

    else
    {

      v14 = v0[1];

      return v14();
    }
  }
}

uint64_t sub_100061B74(uint64_t a1)
{
  *(*v1 + 56) = a1;

  return _swift_task_switch(sub_100061C74, 0, 0);
}

uint64_t sub_100061C74()
{
  v1 = v0[5];
  if (v0[7] >> 62)
  {
    sub_100007330(0, &qword_1000C1E90, HMRequestBase_ptr);

    v2 = sub_10009EB94();
  }

  else
  {

    sub_10009ED44();

    sub_100007330(0, &qword_1000C1E90, HMRequestBase_ptr);
    v2 = v0[7];
  }

  v0[13] = v2;
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_10006221C;

  return sub_100063F0C(v2);
}

uint64_t sub_100061DAC(uint64_t a1)
{
  *(*v1 + 80) = a1;

  return _swift_task_switch(sub_100061EAC, 0, 0);
}

uint64_t sub_100061EAC()
{
  v1 = v0[8];
  if (v0[10] >> 62)
  {
    sub_100007330(0, &qword_1000C1E90, HMRequestBase_ptr);

    v2 = sub_10009EB94();
  }

  else
  {

    sub_10009ED44();

    sub_100007330(0, &qword_1000C1E90, HMRequestBase_ptr);
    v2 = v0[10];
  }

  v0[13] = v2;
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_10006221C;

  return sub_100063F0C(v2);
}

uint64_t sub_100061FE4(uint64_t a1)
{
  *(*v1 + 96) = a1;

  return _swift_task_switch(sub_1000620E4, 0, 0);
}

uint64_t sub_1000620E4()
{
  v1 = v0[5];
  if (v0[12] >> 62)
  {
    sub_100007330(0, &qword_1000C1E90, HMRequestBase_ptr);

    v2 = sub_10009EB94();
  }

  else
  {

    sub_10009ED44();

    sub_100007330(0, &qword_1000C1E90, HMRequestBase_ptr);
    v2 = v0[12];
  }

  v0[13] = v2;
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_10006221C;

  return sub_100063F0C(v2);
}

uint64_t sub_10006221C()
{
  v2 = *v1;
  *(v2 + 120) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100062360, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100062360()
{

  if (qword_1000C0A90 != -1)
  {
    swift_once();
  }

  v1 = sub_10009D924();
  sub_100015B68(v1, qword_1000C8278);
  swift_errorRetain();
  v2 = sub_10009D904();
  v3 = sub_10009E824();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error %@", v4, 0xCu);
    sub_1000160CC(v5, &qword_1000C0E28, &qword_1000A1DC0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100062514(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100062534, 0, 0);
}

uint64_t sub_100062534()
{
  v1 = *(v0 + 24);
  v2 = *(type metadata accessor for WidgetTileInfo(0) + 64);
  *(v0 + 56) = v2;
  v3 = *(v1 + v2);
  *(v0 + 32) = v3;
  if (*(v3 + 16))
  {
    v4 = *(v0 + 16);
    sub_100017C60();
    sub_100003714(&qword_1000C0E20, &unk_1000A0940);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_10009FA10;
    *(v5 + 32) = [objc_opt_self() executeRequestWithActionSet:v4];
    v6 = *(v0 + 8);

    return v6(v5);
  }

  else
  {
    v8 = swift_task_alloc();
    *(v0 + 40) = v8;
    *v8 = v0;
    v8[1] = sub_1000626A0;

    return sub_1000188E0();
  }
}

uint64_t sub_1000626A0(uint64_t a1)
{
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_1000627A0, 0, 0);
}

uint64_t sub_1000627A0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 24);

  *(v3 + v2) = v1;
  v4 = *(v0 + 16);
  sub_100017C60();
  sub_100003714(&qword_1000C0E20, &unk_1000A0940);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10009FA10;
  *(v5 + 32) = [objc_opt_self() executeRequestWithActionSet:v4];
  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_100062890(uint64_t a1)
{
  v2[34] = a1;
  v2[35] = v1;
  v2[36] = type metadata accessor for WidgetTileInfo(0);
  v2[37] = swift_task_alloc();
  v3 = sub_10009D464();
  v2[38] = v3;
  v2[39] = *(v3 - 8);
  v2[40] = swift_task_alloc();
  v4 = sub_10009D1C4();
  v2[41] = v4;
  v2[42] = *(v4 - 8);
  v2[43] = swift_task_alloc();

  return _swift_task_switch(sub_1000629DC, 0, 0);
}

uint64_t sub_1000629DC(uint64_t a1)
{
  v2 = *(v1 + 280);
  v3 = *(*(v1 + 288) + 64);
  *(v1 + 376) = v3;
  v4 = *(v2 + v3);
  *(v1 + 352) = v4;
  if (*(v4 + 16))
  {
    v6 = *(v1 + 336);
    v5 = *(v1 + 344);
    v7 = *(v1 + 328);
    v102 = _swiftEmptyArrayStorage;
    sub_10009E904();
    v8 = (*(v6 + 88))(v5, v7);
    if (v8 == enum case for ServiceKind.door(_:))
    {
      goto LABEL_3;
    }

    if (v8 == enum case for ServiceKind.garageDoorOpener(_:))
    {
      v28 = *(v1 + 312);
      v27 = *(v1 + 320);
      v29 = *(v1 + 304);
      v30 = *(v28 + 104);
      v30(v27, enum case for CharacteristicKind.currentDoorState(_:), v29);
      v31 = sub_100016C54(v27, v4);
      v33 = v32;
      v34 = *(v28 + 8);
      v34(v27, v29);
      if (v33)
      {
        goto LABEL_32;
      }

      v17 = (v1 + 144);
      if (v31 > 4)
      {
        v35 = 0;
      }

      else
      {
        v35 = qword_1000A20F0[v31];
      }

      v66 = *(v1 + 320);
      v67 = *(v1 + 304);
      v68 = *(v1 + 280);
      *(v1 + 168) = &type metadata for Int;
      *(v1 + 144) = v35;
      v30(v66, enum case for CharacteristicKind.targetDoorState(_:), v67);
      v69 = sub_100064D48(v68, v66);
      v70 = swift_task_alloc();
      *(v70 + 16) = v17;
      v24 = sub_100060AB0(sub_100065DC0, v70, v69);

      v71 = v66;
      v72 = v67;
    }

    else
    {
      if (v8 == enum case for ServiceKind.lightbulb(_:))
      {
        v37 = *(v1 + 312);
        v36 = *(v1 + 320);
        v38 = *(v1 + 304);
        v39 = *(v1 + 280);
        v40 = sub_100017C60();
        *(v1 + 232) = &type metadata for Bool;
        *(v1 + 208) = (v40 & 1) == 0;
        v99 = *(v37 + 104);
        v99(v36, enum case for CharacteristicKind.powerState(_:), v38);
        v41 = sub_100064D48(v39, v36);
        v42 = swift_task_alloc();
        *(v42 + 16) = v1 + 208;
        v97 = sub_100060AB0(sub_100065DC0, v42, v41);

        v43 = *(v37 + 8);
        v43(v36, v38);
        sub_100015F44((v1 + 208));
        v102 = v97;
        v44 = enum case for CharacteristicKind.brightness(_:);
        v99(v36, enum case for CharacteristicKind.brightness(_:), v38);
        v45 = sub_100016C54(v36, v4);
        v47 = v46;
        v43(v36, v38);
        if ((v47 & 1) == 0 && !v45 && (sub_100017C60() & 1) == 0)
        {
          v48 = *(v1 + 320);
          v49 = *(v1 + 304);
          v50 = *(v1 + 280);
          *(v1 + 264) = &type metadata for Int;
          *(v1 + 240) = 100;
          v99(v48, v44, v49);
          v51 = sub_100064D48(v50, v48);
          v52 = swift_task_alloc();
          *(v52 + 16) = v1 + 240;
          v53 = sub_100060AB0(sub_100065DC0, v52, v51);

          v43(v48, v49);
          sub_100015F44((v1 + 240));
          sub_100061780(v53);
        }

        goto LABEL_32;
      }

      if (v8 == enum case for ServiceKind.lockMechanism(_:))
      {
        v55 = *(v1 + 312);
        v54 = *(v1 + 320);
        v56 = *(v1 + 304);
        v57 = *(v55 + 104);
        v57(v54, enum case for CharacteristicKind.currentLockMechanismState(_:), v56);
        v58 = sub_100016C54(v54, v4);
        v60 = v59;
        v34 = *(v55 + 8);
        v34(v54, v56);
        if (v60)
        {
          goto LABEL_32;
        }

        v17 = (v1 + 112);
        v61 = *(v1 + 320);
        v62 = *(v1 + 304);
        v63 = *(v1 + 280);
        *(v1 + 136) = &type metadata for Int;
        *(v1 + 112) = v58 == 0;
        v57(v61, enum case for CharacteristicKind.targetLockMechanismState(_:), v62);
        v64 = sub_100064D48(v63, v61);
        v65 = swift_task_alloc();
        *(v65 + 16) = v1 + 112;
      }

      else
      {
        if (v8 != enum case for ServiceKind.securitySystem(_:))
        {
          if (v8 != enum case for ServiceKind.window(_:) && v8 != enum case for ServiceKind.windowCovering(_:))
          {
            v98 = *(v1 + 336);
            v83 = *(v1 + 320);
            v100 = *(v1 + 328);
            v101 = *(v1 + 344);
            v84 = *(v1 + 304);
            v85 = *(v1 + 312);
            v86 = *(v1 + 280);
            v87 = sub_100017C60();
            *(v1 + 40) = &type metadata for Bool;
            *(v1 + 16) = (v87 & 1) == 0;
            v96 = *(v85 + 104);
            v96(v83, enum case for CharacteristicKind.powerState(_:), v84);
            v88 = sub_100064D48(v86, v83);
            v89 = swift_task_alloc();
            *(v89 + 16) = v1 + 16;
            v90 = sub_100060AB0(sub_100065C08, v89, v88);

            v91 = *(v85 + 8);
            v91(v83, v84);
            sub_100015F44((v1 + 16));
            sub_100061780(v90);
            v92 = sub_100017C60();
            *(v1 + 72) = &type metadata for Bool;
            *(v1 + 48) = (v92 & 1) == 0;
            v96(v83, enum case for CharacteristicKind.active(_:), v84);
            v93 = sub_100064D48(v86, v83);
            v94 = swift_task_alloc();
            *(v94 + 16) = v1 + 48;
            v95 = sub_100060AB0(sub_100065DC0, v94, v93);

            v91(v83, v84);
            sub_100015F44((v1 + 48));
            sub_100061780(v95);
            (*(v98 + 8))(v101, v100);
            goto LABEL_32;
          }

LABEL_3:
          v10 = *(v1 + 312);
          v9 = *(v1 + 320);
          v11 = *(v1 + 304);
          v12 = *(v10 + 104);
          v12(v9, enum case for CharacteristicKind.currentPosition(_:), v11);
          v13 = sub_100016C54(v9, v4);
          v15 = v14;
          v16 = *(v10 + 8);
          v16(v9, v11);
          if ((v15 & 1) == 0)
          {
            v17 = (v1 + 176);
            v18 = *(v1 + 320);
            v19 = *(v1 + 296);
            v20 = *(v1 + 304);
            sub_100006850(*(v1 + 280), v19);
            v21 = 100;
            if (v13 > 0)
            {
              v21 = 0;
            }

            *(v1 + 200) = &type metadata for Int;
            *(v1 + 176) = v21;
            v12(v18, enum case for CharacteristicKind.targetPosition(_:), v20);
            v22 = sub_100064D48(v19, v18);
            v23 = swift_task_alloc();
            *(v23 + 16) = v17;
            v24 = sub_100060AB0(sub_100065DC0, v23, v22);

            v16(v18, v20);
            sub_100006918(v19);
            goto LABEL_31;
          }

LABEL_32:

          v82 = *(v1 + 8);

          return v82(v102);
        }

        v74 = *(v1 + 312);
        v73 = *(v1 + 320);
        v75 = *(v1 + 304);
        v76 = *(v74 + 104);
        v76(v73, enum case for CharacteristicKind.currentSecuritySystemState(_:), v75);
        v77 = sub_100016C54(v73, v4);
        v79 = v78;
        v34 = *(v74 + 8);
        v34(v73, v75);
        if (v79)
        {
          goto LABEL_32;
        }

        v17 = (v1 + 80);
        v61 = *(v1 + 320);
        v62 = *(v1 + 304);
        v80 = *(v1 + 280);
        v81 = 3;
        if (v77 == 3)
        {
          v81 = 0;
        }

        *(v1 + 104) = &type metadata for Int;
        *(v1 + 80) = v81;
        v76(v61, enum case for CharacteristicKind.targetSecuritySystemState(_:), v62);
        v64 = sub_100064D48(v80, v61);
        v65 = swift_task_alloc();
        *(v65 + 16) = v17;
      }

      v24 = sub_100060AB0(sub_100065DC0, v65, v64);

      v71 = v61;
      v72 = v62;
    }

    v34(v71, v72);
LABEL_31:
    sub_100015F44(v17);
    v102 = v24;
    goto LABEL_32;
  }

  v25 = swift_task_alloc();
  *(v1 + 360) = v25;
  *v25 = v1;
  v25[1] = sub_100063430;

  return sub_1000188E0();
}

uint64_t sub_100063430(uint64_t a1)
{
  *(*v1 + 368) = a1;

  return _swift_task_switch(sub_100063530, 0, 0);
}

uint64_t sub_100063530()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 376);
  v3 = *(v0 + 280);

  *(v3 + v2) = v1;
  v4 = *(v0 + 368);
  v6 = *(v0 + 336);
  v5 = *(v0 + 344);
  v7 = *(v0 + 328);
  v101 = _swiftEmptyArrayStorage;
  sub_10009E904();
  v8 = (*(v6 + 88))(v5, v7);
  if (v8 == enum case for ServiceKind.door(_:))
  {
    goto LABEL_2;
  }

  if (v8 == enum case for ServiceKind.garageDoorOpener(_:))
  {
    v26 = *(v0 + 312);
    v25 = *(v0 + 320);
    v27 = *(v0 + 304);
    v28 = *(v26 + 104);
    v28(v25, enum case for CharacteristicKind.currentDoorState(_:), v27);
    v29 = sub_100016C54(v25, v4);
    v31 = v30;
    v32 = *(v26 + 8);
    v32(v25, v27);
    if (v31)
    {
      goto LABEL_28;
    }

    v17 = (v0 + 144);
    if (v29 > 4)
    {
      v33 = 0;
    }

    else
    {
      v33 = qword_1000A20F0[v29];
    }

    v64 = *(v0 + 320);
    v65 = *(v0 + 304);
    v66 = *(v0 + 280);
    *(v0 + 168) = &type metadata for Int;
    *(v0 + 144) = v33;
    v28(v64, enum case for CharacteristicKind.targetDoorState(_:), v65);
    v67 = sub_100064D48(v66, v64);
    v68 = swift_task_alloc();
    *(v68 + 16) = v17;
    v24 = sub_100060AB0(sub_100065DC0, v68, v67);

    v69 = v64;
    v70 = v65;
    goto LABEL_26;
  }

  if (v8 == enum case for ServiceKind.lightbulb(_:))
  {
    v35 = *(v0 + 312);
    v34 = *(v0 + 320);
    v36 = *(v0 + 304);
    v37 = *(v0 + 280);
    v38 = sub_100017C60();
    *(v0 + 232) = &type metadata for Bool;
    *(v0 + 208) = (v38 & 1) == 0;
    v98 = *(v35 + 104);
    v98(v34, enum case for CharacteristicKind.powerState(_:), v36);
    v39 = sub_100064D48(v37, v34);
    v40 = swift_task_alloc();
    *(v40 + 16) = v0 + 208;
    v96 = sub_100060AB0(sub_100065DC0, v40, v39);

    v41 = *(v35 + 8);
    v41(v34, v36);
    sub_100015F44((v0 + 208));
    v101 = v96;
    v42 = enum case for CharacteristicKind.brightness(_:);
    v98(v34, enum case for CharacteristicKind.brightness(_:), v36);
    v43 = sub_100016C54(v34, v4);
    v45 = v44;
    v41(v34, v36);
    if ((v45 & 1) == 0 && !v43 && (sub_100017C60() & 1) == 0)
    {
      v46 = *(v0 + 320);
      v47 = *(v0 + 304);
      v48 = *(v0 + 280);
      *(v0 + 264) = &type metadata for Int;
      *(v0 + 240) = 100;
      v98(v46, v42, v47);
      v49 = sub_100064D48(v48, v46);
      v50 = swift_task_alloc();
      *(v50 + 16) = v0 + 240;
      v51 = sub_100060AB0(sub_100065DC0, v50, v49);

      v41(v46, v47);
      sub_100015F44((v0 + 240));
      sub_100061780(v51);
    }

    goto LABEL_28;
  }

  if (v8 == enum case for ServiceKind.lockMechanism(_:))
  {
    v53 = *(v0 + 312);
    v52 = *(v0 + 320);
    v54 = *(v0 + 304);
    v55 = *(v53 + 104);
    v55(v52, enum case for CharacteristicKind.currentLockMechanismState(_:), v54);
    v56 = sub_100016C54(v52, v4);
    v58 = v57;
    v32 = *(v53 + 8);
    v32(v52, v54);
    if (v58)
    {
      goto LABEL_28;
    }

    v17 = (v0 + 112);
    v59 = *(v0 + 320);
    v60 = *(v0 + 304);
    v61 = *(v0 + 280);
    *(v0 + 136) = &type metadata for Int;
    *(v0 + 112) = v56 == 0;
    v55(v59, enum case for CharacteristicKind.targetLockMechanismState(_:), v60);
    v62 = sub_100064D48(v61, v59);
    v63 = swift_task_alloc();
    *(v63 + 16) = v0 + 112;
LABEL_25:
    v24 = sub_100060AB0(sub_100065DC0, v63, v62);

    v69 = v59;
    v70 = v60;
LABEL_26:
    v32(v69, v70);
LABEL_27:
    sub_100015F44(v17);
    v101 = v24;
    goto LABEL_28;
  }

  if (v8 == enum case for ServiceKind.securitySystem(_:))
  {
    v72 = *(v0 + 312);
    v71 = *(v0 + 320);
    v73 = *(v0 + 304);
    v74 = *(v72 + 104);
    v74(v71, enum case for CharacteristicKind.currentSecuritySystemState(_:), v73);
    v75 = sub_100016C54(v71, v4);
    v77 = v76;
    v32 = *(v72 + 8);
    v32(v71, v73);
    if (v77)
    {
      goto LABEL_28;
    }

    v17 = (v0 + 80);
    v59 = *(v0 + 320);
    v60 = *(v0 + 304);
    v78 = *(v0 + 280);
    v79 = 3;
    if (v75 == 3)
    {
      v79 = 0;
    }

    *(v0 + 104) = &type metadata for Int;
    *(v0 + 80) = v79;
    v74(v59, enum case for CharacteristicKind.targetSecuritySystemState(_:), v60);
    v62 = sub_100064D48(v78, v59);
    v63 = swift_task_alloc();
    *(v63 + 16) = v17;
    goto LABEL_25;
  }

  if (v8 == enum case for ServiceKind.window(_:) || v8 == enum case for ServiceKind.windowCovering(_:))
  {
LABEL_2:
    v10 = *(v0 + 312);
    v9 = *(v0 + 320);
    v11 = *(v0 + 304);
    v12 = *(v10 + 104);
    v12(v9, enum case for CharacteristicKind.currentPosition(_:), v11);
    v13 = sub_100016C54(v9, v4);
    v15 = v14;
    v16 = *(v10 + 8);
    v16(v9, v11);
    if (v15)
    {
      goto LABEL_28;
    }

    v17 = (v0 + 176);
    v18 = *(v0 + 320);
    v19 = *(v0 + 296);
    v20 = *(v0 + 304);
    sub_100006850(*(v0 + 280), v19);
    v21 = 100;
    if (v13 > 0)
    {
      v21 = 0;
    }

    *(v0 + 200) = &type metadata for Int;
    *(v0 + 176) = v21;
    v12(v18, enum case for CharacteristicKind.targetPosition(_:), v20);
    v22 = sub_100064D48(v19, v18);
    v23 = swift_task_alloc();
    *(v23 + 16) = v17;
    v24 = sub_100060AB0(sub_100065DC0, v23, v22);

    v16(v18, v20);
    sub_100006918(v19);
    goto LABEL_27;
  }

  v97 = *(v0 + 336);
  v82 = *(v0 + 320);
  v99 = *(v0 + 328);
  v100 = *(v0 + 344);
  v83 = *(v0 + 304);
  v84 = *(v0 + 312);
  v85 = *(v0 + 280);
  v86 = sub_100017C60();
  *(v0 + 40) = &type metadata for Bool;
  *(v0 + 16) = (v86 & 1) == 0;
  v95 = *(v84 + 104);
  v95(v82, enum case for CharacteristicKind.powerState(_:), v83);
  v87 = sub_100064D48(v85, v82);
  v88 = swift_task_alloc();
  *(v88 + 16) = v0 + 16;
  v89 = sub_100060AB0(sub_100065C08, v88, v87);

  v90 = *(v84 + 8);
  v90(v82, v83);
  sub_100015F44((v0 + 16));
  sub_100061780(v89);
  v91 = sub_100017C60();
  *(v0 + 72) = &type metadata for Bool;
  *(v0 + 48) = (v91 & 1) == 0;
  v95(v82, enum case for CharacteristicKind.active(_:), v83);
  v92 = sub_100064D48(v85, v82);
  v93 = swift_task_alloc();
  *(v93 + 16) = v0 + 48;
  v94 = sub_100060AB0(sub_100065DC0, v93, v92);

  v90(v82, v83);
  sub_100015F44((v0 + 48));
  sub_100061780(v94);
  (*(v97 + 8))(v100, v99);
LABEL_28:

  v80 = *(v0 + 8);

  return v80(v101);
}

uint64_t sub_100063F2C()
{
  v64 = v0;
  if (qword_1000C0A90 != -1)
  {
LABEL_24:
    swift_once();
  }

  v1 = sub_10009D924();
  *(v0 + 23) = sub_100015B68(v1, qword_1000C8278);

  v2 = sub_10009D904();
  v3 = sub_10009E844();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 22);
    v5 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v62 = v55;
    buf = v5;
    *v5 = 136315138;
    v63 = _swiftEmptyArrayStorage;
    if (v4 >> 62)
    {
      v6 = v4 & 0xFFFFFFFFFFFFFF8;
      v7 = sub_10009EBA4();
      v59 = v3;
      if (!v7)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v6 = v4 & 0xFFFFFFFFFFFFFF8;
      v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v59 = v3;
      if (!v7)
      {
        goto LABEL_26;
      }
    }

    v8 = 0;
    v9 = v4 & 0xC000000000000001;
    v10 = *(v0 + 22) + 32;
    v52 = v2;
    while (1)
    {
      v11 = v8;
      while (1)
      {
        if (v9)
        {
          v12 = sub_10009EAE4();
        }

        else
        {
          if (v11 >= *(v6 + 16))
          {
            goto LABEL_23;
          }

          v12 = *(v10 + 8 * v11);
        }

        v13 = v12;
        v8 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        objc_opt_self();
        v14 = swift_dynamicCastObjCClass();
        if (v14)
        {
          break;
        }

LABEL_8:
        ++v11;
        if (v8 == v7)
        {
          v2 = v52;
          goto LABEL_26;
        }
      }

      v15 = [v14 characteristic];

      if (!v15)
      {
        goto LABEL_8;
      }

      sub_10009E684();
      if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10009E6C4();
      }

      sub_10009E6E4();
      v2 = v52;
      if (v8 == v7)
      {
LABEL_26:
        sub_100007330(0, &qword_1000C0C00, HMCharacteristic_ptr);
        v16 = sub_10009E6B4();
        v18 = v17;

        v19 = sub_10002AD68(v16, v18, &v62);

        *(buf + 4) = v19;
        _os_log_impl(&_mh_execute_header, v2, v59, "Writing characteristics: %s", buf, 0xCu);
        sub_100015F44(v55);

        break;
      }
    }
  }

  v20 = sub_10009D904();
  v21 = sub_10009E844();

  if (!os_log_type_enabled(v20, v21))
  {

    goto LABEL_51;
  }

  v61 = v21;
  v22 = *(v0 + 22);
  v23 = swift_slowAlloc();
  bufa = swift_slowAlloc();
  v63 = bufa;
  v60 = v23;
  *v23 = 136315138;
  if (v22 >> 62)
  {
LABEL_49:
    v24 = v22 & 0xFFFFFFFFFFFFFF8;
    v25 = sub_10009EBA4();
    v54 = v0;
    if (v25)
    {
LABEL_30:
      v26 = 0;
      v27 = v22 & 0xC000000000000001;
      v28 = *(v0 + 22) + 32;
      v0 = _swiftEmptyArrayStorage;
      v22 = &objc_retain_ptr;
      do
      {
        v29 = v26;
        while (1)
        {
          if (v27)
          {
            v30 = sub_10009EAE4();
          }

          else
          {
            if (v29 >= *(v24 + 16))
            {
              goto LABEL_48;
            }

            v30 = *(v28 + 8 * v29);
          }

          v31 = v30;
          v26 = v29 + 1;
          if (__OFADD__(v29, 1))
          {
            __break(1u);
LABEL_48:
            __break(1u);
            goto LABEL_49;
          }

          objc_opt_self();
          v32 = swift_dynamicCastObjCClass();
          if (v32)
          {
            break;
          }

          ++v29;
          if (v26 == v25)
          {
            goto LABEL_50;
          }
        }

        v56 = v20;
        v33 = [v32 actionSet];
        v34 = [v33 name];

        v35 = sub_10009E5C4();
        v53 = v36;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v0 = sub_100065390(0, *(v0 + 2) + 1, 1, v0);
        }

        v37 = v0;
        v38 = *(v0 + 2);
        v39 = v37;
        v40 = *(v37 + 3);
        v20 = v56;
        if (v38 >= v40 >> 1)
        {
          v39 = sub_100065390((v40 > 1), v38 + 1, 1, v39);
        }

        *(v39 + 2) = v38 + 1;
        v41 = &v39[16 * v38];
        v0 = v39;
        *(v41 + 4) = v35;
        *(v41 + 5) = v53;
      }

      while (v26 != v25);
    }
  }

  else
  {
    v24 = v22 & 0xFFFFFFFFFFFFFF8;
    v25 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v54 = v0;
    if (v25)
    {
      goto LABEL_30;
    }
  }

LABEL_50:
  v42 = sub_10009E6B4();
  v44 = v43;

  v45 = sub_10002AD68(v42, v44, &v63);

  *(v60 + 4) = v45;
  _os_log_impl(&_mh_execute_header, v20, v61, "Executing actionSets: %s", v60, 0xCu);
  sub_100015F44(bufa);

  v0 = v54;
LABEL_51:
  type metadata accessor for HomeWidget();
  *(v0 + 24) = static HomeWidget.shared.getter();
  v46 = sub_10009D224();
  *(v0 + 25) = v47;
  *(v0 + 26) = v48;
  *(v0 + 18) = v46;
  *(v0 + 19) = v47;
  *(v0 + 20) = v49;
  *(v0 + 21) = v48;
  v50 = swift_task_alloc();
  *(v0 + 27) = v50;
  *v50 = v0;
  v50[1] = sub_1000645BC;

  return HomeWidget.synchronizeWithHomeKit<A>(configuration:)((v0 + 144), &type metadata for BasicIdentity, &protocol witness table for BasicIdentity);
}

uint64_t sub_1000645BC(uint64_t a1)
{
  *(*v1 + 224) = a1;

  return _swift_task_switch(sub_10006471C, 0, 0);
}

uint64_t sub_10006471C()
{
  v13 = v0;
  v1 = v0[28];
  if (v1)
  {
    v2 = [v1 widgetManager];
    v0[29] = v2;
    sub_100007330(0, &qword_1000C1E90, HMRequestBase_ptr);
    isa = sub_10009E694().super.isa;
    v0[30] = isa;
    v4 = sub_10009E5B4();
    v0[31] = v4;
    v0[2] = v0;
    v0[3] = sub_1000649C0;
    v5 = swift_continuation_init();
    v0[17] = sub_100003714(&qword_1000C1EB0, &qword_1000A20D0);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_100060544;
    v0[13] = &unk_1000BBE08;
    v0[14] = v5;
    [v2 performRequests:isa forKind:v4 completion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    v6 = sub_10009D904();
    v7 = sub_10009E824();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v12 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_10002AD68(0x3A5F286574697277, 0xE900000000000029, &v12);
      _os_log_impl(&_mh_execute_header, v6, v7, "%s unable to get shared HMHomeManager instance", v8, 0xCu);
      sub_100015F44(v9);
    }

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_1000649C0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 256) = v1;
  if (v1)
  {
    v2 = sub_100064BCC;
  }

  else
  {
    v2 = sub_100064AD0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100064AD0()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);

  v3 = sub_10009D904();
  v4 = sub_10009E844();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 224);
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Write request complete.", v7, 2u);
  }

  else
  {

    v3 = v6;
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100064BCC()
{
  v1 = v0[31];
  v3 = v0[29];
  v2 = v0[30];
  swift_willThrow();

  swift_errorRetain();
  v4 = sub_10009D904();
  v5 = sub_10009E824();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error on write: %@", v6, 0xCu);
    sub_1000160CC(v7, &qword_1000C0E28, &qword_1000A1DC0);
  }

  v9 = v0[28];

  swift_willThrow();
  v10 = v0[1];

  return v10();
}

void *sub_100064D48(uint64_t a1, uint64_t a2)
{
  v3 = a1 + *(type metadata accessor for WidgetTileInfo(0) + 60);
  v4 = *(v3 + 8);
  if ((v4 - 2) < 3)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = *v3;
  if (v4)
  {
    v11 = v6;
    v12 = [v11 services];
    sub_100007330(0, &qword_1000C0C48, HMService_ptr);
    v13 = sub_10009E6A4();

    __chkstk_darwin(v14);
    v16[2] = a2;
    v15 = sub_1000605F0(sub_100065C8C, v16, v13);

    return v15;
  }

  else
  {
    v7 = v6;
    v8 = sub_10009E914();
    if (!v8)
    {

      return _swiftEmptyArrayStorage;
    }

    v9 = v8;
    sub_100003714(&qword_1000C0E20, &unk_1000A0940);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_10009FA10;
    *(v10 + 32) = v9;

    return v10;
  }
}

uint64_t sub_100064EC4@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  sub_100024330(a2, a2[3]);
  v5 = sub_10009ED24();
  v6 = [objc_opt_self() writeRequestWithCharacteristic:v4 value:v5];
  result = swift_unknownObjectRelease();
  *a3 = v6;
  return result;
}

void *sub_100064FC4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100003714(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_1000651A0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100003714(&qword_1000C1EB8, &qword_1000A20D8);
  v10 = *(sub_100003714(&qword_1000C1240, &unk_1000A0898) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100003714(&qword_1000C1240, &unk_1000A0898) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_100065390(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003714(&qword_1000C0E58, &qword_10009FCA8);
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
    v10 = _swiftEmptyArrayStorage;
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10006549C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003714(&qword_1000C1EC8, &qword_1000A20E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1000655A0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003714(&qword_1000C1E20, "ȃ");
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000656C0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003714(&qword_1000C1EC0, &qword_1000A20E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100003714(&unk_1000C15B0, &unk_1000A1360);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1000657F4(uint64_t a1, char a2)
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

  sub_10009EBA4();
LABEL_9:
  result = sub_10009EAF4();
  *v2 = result;
  return result;
}

uint64_t sub_100065894(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_10009EBA4();
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
      result = sub_10009EBA4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100065C28();
          for (i = 0; i != v6; ++i)
          {
            sub_100003714(&qword_1000C1EA0, &qword_1000A20C8);
            v9 = sub_10001C6AC(v13, i, a3);
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
        sub_100007330(0, &qword_1000C1E98, HMCharacteristicWriteRequest_ptr);
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

uint64_t sub_100065A24()
{
  sub_100006918(v0);

  return _swift_task_switch(sub_100065A8C, 0, 0);
}

uint64_t sub_100065A8C()
{
  v9 = v0;
  if (qword_1000C0A90 != -1)
  {
    swift_once();
  }

  v1 = sub_10009D924();
  sub_100015B68(v1, qword_1000C8278);
  v2 = sub_10009D904();
  v3 = sub_10009E824();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_10002AD68(0xD000000000000022, 0x80000001000A50C0, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s Write attempted on a Native Matter device without client support.", v4, 0xCu);
    sub_100015F44(v5);
  }

  v6 = *(v0 + 8);

  return v6(_swiftEmptyArrayStorage);
}

unint64_t sub_100065C28()
{
  result = qword_1000C1EA8;
  if (!qword_1000C1EA8)
  {
    sub_10000375C(&qword_1000C1EA0, &qword_1000A20C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1EA8);
  }

  return result;
}

uint64_t sub_100065C8C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10009E914();
  *a1 = result;
  return result;
}

uint64_t sub_100065CE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003714(&qword_1000C0C20, &qword_1000A1E30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100065D58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100065E04@<X0>(uint64_t a1@<X8>)
{
  v77 = a1;
  v1 = sub_10009E344();
  v75 = *(v1 - 8);
  v76 = v1;
  __chkstk_darwin(v1);
  v74 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_10009CD34();
  v80 = *(v64 - 8);
  __chkstk_darwin(v64);
  v61 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10009CF54();
  __chkstk_darwin(v4 - 8);
  v58 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10009E5A4();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10009CD54();
  v8 = *(v7 - 8);
  v78 = v7;
  v79 = v8;
  __chkstk_darwin(v7);
  v54 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_100003714(&qword_1000C1EE0, &qword_1000A2168);
  v57 = *(v55 - 8);
  __chkstk_darwin(v55);
  v11 = &v48 - v10;
  v62 = sub_100003714(&qword_1000C1EE8, &qword_1000A2170);
  v63 = *(v62 - 8);
  __chkstk_darwin(v62);
  v53 = &v48 - v12;
  v65 = sub_100003714(&qword_1000C1EF0, &qword_1000A2178);
  v66 = *(v65 - 8);
  __chkstk_darwin(v65);
  v56 = &v48 - v13;
  v67 = sub_100003714(&qword_1000C1EF8, &qword_1000A2180);
  v68 = *(v67 - 8);
  __chkstk_darwin(v67);
  v59 = &v48 - v14;
  v15 = sub_100003714(&qword_1000C1F00, &qword_1000A2188);
  v16 = *(v15 - 8);
  v70 = v15;
  v71 = v16;
  __chkstk_darwin(v15);
  v60 = &v48 - v17;
  v18 = sub_100003714(&qword_1000C1F08, &qword_1000A2190);
  v19 = *(v18 - 8);
  v72 = v18;
  v73 = v19;
  __chkstk_darwin(v18);
  v69 = &v48 - v20;
  sub_10009D894();

  sub_100003714(&qword_1000C1F10, &qword_1000A2198);
  v21 = sub_10000375C(&qword_1000C1F18, &qword_1000A21A0);
  v22 = sub_10001CDC8(&qword_1000C1F20, &qword_1000C1F18, &qword_1000A21A0, &protocol conformance descriptor for ControlWidgetToggle<A, B, C>);
  v83 = v21;
  v84 = v22;
  swift_getOpaqueTypeConformance2();
  sub_100068E68();
  sub_10009E494();
  sub_10009E554();
  v52 = "LaunchHomeAppControlDisplayName";
  sub_10009CF44();
  v51 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v23 = *(v80 + 104);
  v80 += 104;
  v50 = v23;
  v24 = v61;
  v25 = v64;
  v23(v61);
  v26 = v54;
  sub_10009CD64();
  v27 = sub_10001CDC8(&qword_1000C1F30, &qword_1000C1EE0, &qword_1000A2168, &protocol conformance descriptor for AppIntentControlConfiguration<A, B>);
  v28 = v55;
  sub_10009DE44();
  v29 = *(v79 + 8);
  v79 += 8;
  v49 = v29;
  v29(v26, v78);
  (*(v57 + 8))(v11, v28);
  sub_10009E554();
  sub_10009CF44();
  v50(v24, v51, v25);
  sub_10009CD64();
  v83 = v28;
  v84 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = v56;
  v32 = v62;
  v33 = v53;
  sub_10009DE34();
  v49(v26, v78);
  (*(v63 + 8))(v33, v32);
  v34 = v74;
  sub_10009E334();
  v83 = v32;
  v84 = OpaqueTypeConformance2;
  v35 = swift_getOpaqueTypeConformance2();
  v36 = v59;
  v37 = v65;
  sub_10009DE24();
  (*(v75 + 8))(v34, v76);
  (*(v66 + 8))(v31, v37);
  v83 = v37;
  v84 = v35;
  v38 = swift_getOpaqueTypeConformance2();
  v39 = v60;
  v40 = v67;
  sub_10009DE14();
  (*(v68 + 8))(v36, v40);
  v41 = sub_10009D034();
  v85 = v41;
  v86 = sub_10006A2C8(&qword_1000C1F38, &type metadata accessor for HomeAppFeatures, &protocol conformance descriptor for HomeAppFeatures);
  v42 = sub_100031E00(&v83);
  (*(*(v41 - 8) + 104))(v42, enum case for HomeAppFeatures.controlsAPI(_:), v41);
  v81 = v40;
  v82 = v38;
  v43 = swift_getOpaqueTypeConformance2();
  v45 = v69;
  v44 = v70;
  sub_10009DE54();
  (*(v71 + 8))(v39, v44);
  sub_100015F44(&v83);
  v83 = v44;
  v84 = v43;
  swift_getOpaqueTypeConformance2();
  v46 = v72;
  sub_10009DE64();
  return (*(v73 + 8))(v45, v46);
}

uint64_t sub_100066938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = _s5StateVMa(0);
  v44 = *(v3 - 1);
  v4 = *(v44 + 64);
  v5 = __chkstk_darwin(v3);
  v46 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v43 = &v43 - v6;
  v7 = sub_100003714(&qword_1000C1470, &qword_1000A1108);
  __chkstk_darwin(v7 - 8);
  v9 = &v43 - v8;
  v10 = sub_100003714(&qword_1000C0C78, &qword_1000A0390);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v43 - v14;
  v16 = sub_100003714(&qword_1000C1F18, &qword_1000A21A0);
  v48 = *(v16 - 8);
  v49 = v16;
  __chkstk_darwin(v16);
  v47 = &v43 - v17;
  v18 = sub_100003714(&qword_1000C1F40, &qword_1000A21A8);
  __chkstk_darwin(v18 - 8);
  v20 = &v43 - v19;
  v45 = sub_100066FEC();
  sub_10001E0A8(a1 + v3[5], v20, &qword_1000C1F40, &qword_1000A21A8);
  v21 = sub_10009D964();
  v22 = (*(*(v21 - 8) + 48))(v20, 1, v21);
  sub_1000160CC(v20, &qword_1000C1F40, &qword_1000A21A8);
  if (v22 == 1)
  {
    sub_10001E0A8(a1, v51, &qword_1000C1F48, &qword_1000A21B0);
    v23 = v51[3] == 0;
    sub_1000160CC(v51, &qword_1000C1F48, &qword_1000A21B0);
  }

  else
  {
    v23 = 0;
  }

  sub_10001E0A8(a1 + v3[6], v9, &qword_1000C1470, &qword_1000A1108);
  v24 = sub_10009CF94();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v9, 1, v24) == 1)
  {
    sub_1000160CC(v9, &qword_1000C1470, &qword_1000A1108);
    v26 = 1;
  }

  else
  {
    sub_10009CF64();
    (*(v25 + 8))(v9, v24);
    v26 = 0;
  }

  v27 = sub_10009CF14();
  (*(*(v27 - 8) + 56))(v15, v26, 1, v27);
  sub_1000671A4(v13);
  v28 = sub_100067304();
  sub_100068EBC(a1 + v3[8], &v52);
  sub_100023744(v15, v13, v28 & 1, &v52, v51);
  v29 = v43;
  sub_100069BB8(a1, v43);
  v30 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v31 = v30 + v4;
  v32 = swift_allocObject();
  sub_100069C20(v29, v32 + v30);
  *(v32 + v31) = v23;
  v33 = v46;
  sub_100069BB8(a1, v46);
  v34 = swift_allocObject();
  sub_100069C20(v33, v34 + v30);
  *(v34 + v31) = v23;
  sub_100003714(&qword_1000C1F50, &qword_1000A21B8);
  sub_100003714(&qword_1000C1F58, &qword_1000A21C0);
  sub_100069FE0();
  v35 = sub_10000375C(&qword_1000C1F68, &qword_1000A21C8);
  v36 = sub_10000375C(&qword_1000C1F70, &qword_1000A21D0);
  v37 = sub_10006A094();
  v38 = sub_1000037A4();
  v52 = v36;
  v53 = &type metadata for String;
  v54 = v37;
  v55 = v38;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v52 = v35;
  v53 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_10006A18C();
  v40 = v47;
  sub_10009E364();
  sub_100068CD4();
  sub_10001CDC8(&qword_1000C1F20, &qword_1000C1F18, &qword_1000A21A0, &protocol conformance descriptor for ControlWidgetToggle<A, B, C>);
  v41 = v49;
  sub_10009DDA4();

  return (*(v48 + 8))(v40, v41);
}

uint64_t sub_100066FEC()
{
  v1 = sub_100003714(&qword_1000C1F40, &qword_1000A21A8);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  sub_10001E0A8(v0, &v11, &qword_1000C1F48, &qword_1000A21B0);
  if (!v12)
  {
    sub_1000160CC(&v11, &qword_1000C1F48, &qword_1000A21B0);
LABEL_8:
    v9 = 0;
    return v9 & 1;
  }

  sub_100031E64(&v11, v13);
  v4 = _s5StateVMa(0);
  sub_10001E0A8(v0 + *(v4 + 20), v3, &qword_1000C1F40, &qword_1000A21A8);
  v5 = sub_10009D964();
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5);
  sub_1000160CC(v3, &qword_1000C1F40, &qword_1000A21A8);
  if (v6 != 1)
  {
    sub_100015F44(v13);
    goto LABEL_8;
  }

  sub_100024330(v13, v14);
  v7 = sub_10009D344();
  sub_100024330(v13, v14);
  v8 = sub_10009D2F4();
  v9 = v8;
  if (v7)
  {
    v9 = v8 ^ 1;
  }

  sub_100015F44(v13);
  return v9 & 1;
}

uint64_t sub_1000671A4@<X0>(uint64_t a2@<X8>)
{
  if (sub_100067304())
  {
    sub_10001E0A8(v2, v9, &qword_1000C1F48, &qword_1000A21B0);
    if (v10)
    {
      sub_100024330(v9, v10);
      sub_10009EAD4();
      v4 = sub_10009CF14();
      (*(*(v4 - 8) + 56))(a2, 0, 1, v4);
      return sub_100015F44(v9);
    }
  }

  else
  {
    sub_10001E0A8(v2, v9, &qword_1000C1F48, &qword_1000A21B0);
    v5 = v10;
    if (v10)
    {
      v6 = v11;
      sub_100024330(v9, v10);
      sub_100068F20(v5, v6, a2);
      return sub_100015F44(v9);
    }
  }

  sub_1000160CC(v9, &qword_1000C1F48, &qword_1000A21B0);
  v8 = sub_10009CF14();
  return (*(*(v8 - 8) + 56))(a2, 1, 1, v8);
}

uint64_t sub_100067304()
{
  v1 = sub_100003714(&qword_1000C1F40, &qword_1000A21A8);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  sub_10001E0A8(v0, &v9, &qword_1000C1F48, &qword_1000A21B0);
  if (!v10)
  {
    sub_1000160CC(&v9, &qword_1000C1F48, &qword_1000A21B0);
    goto LABEL_7;
  }

  sub_100031E64(&v9, v11);
  sub_100024330(v11, v12);
  if ((sub_10009D304() & 1) == 0 || (v4 = _s5StateVMa(0), sub_10001E0A8(v0 + *(v4 + 20), v3, &qword_1000C1F40, &qword_1000A21A8), v5 = sub_10009D964(), v6 = (*(*(v5 - 8) + 48))(v3, 1, v5), sub_1000160CC(v3, &qword_1000C1F40, &qword_1000A21A8), v6 != 1))
  {
    sub_100015F44(v11);
LABEL_7:
    v7 = 0;
    return v7 & 1;
  }

  sub_100024330(v11, v12);
  v7 = sub_10009D314();
  sub_100015F44(v11);
  return v7 & 1;
}

uint64_t sub_1000674C0@<X0>(char a1@<W1>, void *a2@<X8>)
{
  v4 = sub_100067518();
  sub_100067758(v4, v5, a1, a2);
}

uint64_t sub_100067518()
{
  v1 = sub_100003714(&qword_1000C1F40, &qword_1000A21A8);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = sub_10009D964();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s5StateVMa(0);
  sub_10001E0A8(v0 + *(v8 + 20), v3, &qword_1000C1F40, &qword_1000A21A8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1000160CC(v3, &qword_1000C1F40, &qword_1000A21A8);
    sub_10001E0A8(v0, &v11, &qword_1000C1F48, &qword_1000A21B0);
    if (v12)
    {
      sub_100031E64(&v11, v13);
      sub_100024330(v13, v13[3]);
      v9 = sub_10009D364();
      sub_100015F44(v13);
    }

    else
    {
      sub_1000160CC(&v11, &qword_1000C1F48, &qword_1000A21B0);
      return 0;
    }
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    v9 = sub_10009D944();
    (*(v5 + 8))(v7, v4);
  }

  return v9;
}

void *sub_100067758@<X0>(void *a1@<X0>, void *a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v32 = sub_100003714(&qword_1000C1F98, &qword_1000A21E8);
  __chkstk_darwin(v32);
  v9 = &v29 - v8;
  v10 = sub_10009DAD4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_100003714(&qword_1000C1FA0, &unk_1000A21F0);
  v14 = *(v33 - 8);
  __chkstk_darwin(v33);
  v16 = &v29 - v15;
  if (a3)
  {
    sub_10009DCC4();
    v17 = sub_10009DFD4();
    v30 = v10;
    v31 = a4;
    v18 = v17;
    v20 = v19;
    v34 = v17;
    v35 = v19;
    v22 = v21 & 1;
    v36 = v21 & 1;
    v37 = v23;
    sub_10009DAC4();
    sub_10009E0F4();
    (*(v11 + 8))(v13, v30);
    sub_10006A2B8(v18, v20, v22);

    v24 = v33;
    (*(v14 + 16))(v9, v16, v33);
    swift_storeEnumTagMultiPayload();
    v34 = &type metadata for Text;
    v35 = &protocol witness table for Text;
    swift_getOpaqueTypeConformance2();
    sub_10009DD94();
    return (*(v14 + 8))(v16, v24);
  }

  else
  {
    v34 = a1;
    v35 = a2;
    sub_1000037A4();

    *v9 = sub_10009DFE4();
    *(v9 + 1) = v26;
    v9[16] = v27 & 1;
    *(v9 + 3) = v28;
    swift_storeEnumTagMultiPayload();
    v34 = &type metadata for Text;
    v35 = &protocol witness table for Text;
    swift_getOpaqueTypeConformance2();
    return sub_10009DD94();
  }
}

uint64_t sub_100067AF0@<X0>(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  v39 = a2;
  v50 = a3;
  v4 = sub_10009DCB4();
  __chkstk_darwin(v4 - 8);
  v43 = sub_100003714(&qword_1000C1F88, &qword_1000A21D8);
  __chkstk_darwin(v43);
  v44 = &v36 - v5;
  v6 = sub_10009DAD4();
  v37 = *(v6 - 8);
  v38 = v6;
  __chkstk_darwin(v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003714(&qword_1000C14C8, &qword_1000A11A8);
  v41 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v36 - v10;
  v42 = sub_100003714(&qword_1000C1F90, &qword_1000A21E0);
  v36 = *(v42 - 8);
  __chkstk_darwin(v42);
  v13 = &v36 - v12;
  v46 = sub_100003714(&qword_1000C1F70, &qword_1000A21D0);
  v14 = __chkstk_darwin(v46);
  v40 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v36 - v16;
  v18 = sub_100003714(&qword_1000C1F68, &qword_1000A21C8);
  v47 = *(v18 - 8);
  v48 = v18;
  __chkstk_darwin(v18);
  v45 = &v36 - v19;
  v20 = sub_100068244();
  v22 = v21;
  v49 = a1;
  sub_10006860C();
  if (v39)
  {

    sub_10009DCC4();
    sub_10009E244();
    sub_10009DAC4();
    v23 = sub_10001CDC8(&qword_1000C14D0, &qword_1000C14C8, &qword_1000A11A8, &protocol conformance descriptor for Label<A, B>);
    sub_10009E0F4();
    (*(v37 + 8))(v8, v38);
    (*(v41 + 8))(v11, v9);
    v24 = v36;
    v25 = v42;
    (*(v36 + 16))(v44, v13, v42);
    swift_storeEnumTagMultiPayload();
    v51 = v9;
    v52 = v23;
    swift_getOpaqueTypeConformance2();
    v26 = v40;
    sub_10009DD94();
    (*(v24 + 8))(v13, v25);
  }

  else
  {
    v51 = v20;
    v52 = v22;
    sub_1000037A4();
    sub_10009E254();
    v27 = v41;
    (*(v41 + 16))(v44, v11, v9);
    swift_storeEnumTagMultiPayload();
    v28 = sub_10001CDC8(&qword_1000C14D0, &qword_1000C14C8, &qword_1000A11A8, &protocol conformance descriptor for Label<A, B>);
    v51 = v9;
    v52 = v28;
    swift_getOpaqueTypeConformance2();
    v26 = v40;
    sub_10009DD94();
    (*(v27 + 8))(v11, v9);
  }

  sub_10006A1E0(v26, v17);
  v51 = sub_1000689F8();
  v52 = v29;
  v30 = sub_10006A094();
  v31 = sub_1000037A4();
  v33 = v45;
  v32 = v46;
  sub_10009E034();

  sub_10006A250(v17);
  sub_10009DCA4();
  v55._countAndFlagsBits = 0;
  v55._object = 0xE000000000000000;
  sub_10009DC94(v55);
  v56._countAndFlagsBits = sub_100067518();
  sub_10009DC84(v56);

  v57._countAndFlagsBits = 32;
  v57._object = 0xE100000000000000;
  sub_10009DC94(v57);
  v58._countAndFlagsBits = sub_100068244();
  sub_10009DC84(v58);

  v59._countAndFlagsBits = 0;
  v59._object = 0xE000000000000000;
  sub_10009DC94(v59);
  sub_10009DCD4();
  v51 = v32;
  v52 = &type metadata for String;
  v53 = v30;
  v54 = v31;
  swift_getOpaqueTypeConformance2();
  v34 = v48;
  sub_10009E044();

  return (*(v47 + 8))(v33, v34);
}

uint64_t sub_100068244()
{
  v1 = v0;
  v2 = sub_100003714(&qword_1000C1F40, &qword_1000A21A8);
  __chkstk_darwin(v2 - 8);
  v4 = &v27 - v3;
  v5 = sub_100003714(&qword_1000C0C80, &qword_1000A1E10);
  __chkstk_darwin(v5 - 8);
  v7 = &v27 - v6;
  v8 = sub_10009D2A4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10009D2C4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001E0A8(v1, v30, &qword_1000C1F48, &qword_1000A21B0);
  if (!v31)
  {
    v24 = &qword_1000C1F48;
    v25 = &qword_1000A21B0;
    v26 = v30;
LABEL_7:
    sub_1000160CC(v26, v24, v25);
    return 0;
  }

  v28 = v1;
  v29 = v4;
  sub_100024330(v30, v31);
  (*(v9 + 104))(v11, enum case for StatusContext.tile(_:), v8);
  sub_10009D2B4();
  (*(v9 + 8))(v11, v8);
  v16 = sub_10009D4F4();
  (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
  v17 = sub_10009D324();
  v19 = v18;
  sub_1000160CC(v7, &qword_1000C0C80, &qword_1000A1E10);
  (*(v13 + 8))(v15, v12);
  sub_100015F44(v30);
  if (v19)
  {
    v20 = _s5StateVMa(0);
    v21 = v29;
    sub_10001E0A8(v28 + *(v20 + 20), v29, &qword_1000C1F40, &qword_1000A21A8);
    v22 = sub_10009D964();
    if ((*(*(v22 - 8) + 48))(v21, 1, v22) == 1)
    {
      sub_1000160CC(v21, &qword_1000C1F40, &qword_1000A21A8);
      return v17;
    }

    v24 = &qword_1000C1F40;
    v25 = &qword_1000A21A8;
    v26 = v21;
    goto LABEL_7;
  }

  return 0;
}

uint64_t sub_10006860C()
{
  v1 = sub_10009D7F4();
  v22 = *(v1 - 8);
  v23 = v1;
  __chkstk_darwin(v1);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10009D804();
  v21 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003714(&qword_1000C1F40, &qword_1000A21A8);
  __chkstk_darwin(v7 - 8);
  v9 = &v20 - v8;
  v10 = sub_10009D964();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _s5StateVMa(0);
  sub_10001E0A8(v0 + *(v14 + 20), v9, &qword_1000C1F40, &qword_1000A21A8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1000160CC(v9, &qword_1000C1F40, &qword_1000A21A8);
    sub_10001E0A8(v0, &v24, &qword_1000C1F48, &qword_1000A21B0);
    if (v25)
    {
      sub_100031E64(&v24, v26);
      sub_100024330(v26, v27);
      if (sub_10009D304())
      {
        v15 = sub_100066FEC();
        sub_100024330(v26, v27);
        sub_10009D374();
        v16 = (v21 + 8);
        v17 = (v22 + 8);
        if (v15)
        {
          sub_10009D7B4();
        }

        else
        {
          sub_10009D7C4();
        }

        (*v16)(v6, v4);
        v18 = sub_10009D7E4();
        (*v17)(v3, v23);
        sub_100015F44(v26);
      }

      else
      {
        sub_100015F44(v26);
        return 0xD000000000000020;
      }
    }

    else
    {
      sub_1000160CC(&v24, &qword_1000C1F48, &qword_1000A21B0);
      return 0;
    }
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    v18 = sub_10009D954();
    (*(v11 + 8))(v13, v10);
  }

  return v18;
}

uint64_t sub_1000689F8()
{
  v1 = sub_10009CF54();
  __chkstk_darwin(v1 - 8);
  v2 = sub_10009E5A4();
  __chkstk_darwin(v2 - 8);
  v3 = sub_100003714(&qword_1000C1F40, &qword_1000A21A8);
  __chkstk_darwin(v3 - 8);
  v5 = &v15 - v4;
  sub_10001E0A8(v0, &v16, &qword_1000C1F48, &qword_1000A21B0);
  if (!v17)
  {
    sub_1000160CC(&v16, &qword_1000C1F48, &qword_1000A21B0);
    return sub_100067518();
  }

  sub_100031E64(&v16, v18);
  v6 = _s5StateVMa(0);
  sub_10001E0A8(v0 + *(v6 + 20), v5, &qword_1000C1F40, &qword_1000A21A8);
  v7 = sub_10009D964();
  v8 = (*(*(v7 - 8) + 48))(v5, 1, v7);
  sub_1000160CC(v5, &qword_1000C1F40, &qword_1000A21A8);
  if (v8 != 1)
  {
    sub_100015F44(v18);
    return sub_100067518();
  }

  if (sub_100067304())
  {
  }

  else
  {
    v10 = sub_10009ED34();

    if ((v10 & 1) == 0)
    {
      sub_10009E554();
      sub_10009CF44();
      v13 = sub_10009E5E4();
      goto LABEL_11;
    }
  }

  v11 = v19;
  v12 = v20;
  sub_100024330(v18, v19);
  v13 = sub_1000695F4(v11, v12);
LABEL_11:
  v14 = v13;
  sub_100015F44(v18);
  return v14;
}

uint64_t sub_100068CD4()
{
  v1 = sub_100003714(&qword_1000C1F40, &qword_1000A21A8);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  sub_10001E0A8(v0, &v9, &qword_1000C1F48, &qword_1000A21B0);
  if (v10)
  {
    sub_100031E64(&v9, v11);
    v4 = _s5StateVMa(0);
    sub_10001E0A8(v0 + *(v4 + 20), v3, &qword_1000C1F40, &qword_1000A21A8);
    v5 = sub_10009D964();
    v6 = (*(*(v5 - 8) + 48))(v3, 1, v5);
    sub_1000160CC(v3, &qword_1000C1F40, &qword_1000A21A8);
    if (v6 == 1)
    {
      sub_100024330(v11, v11[3]);
      v7 = sub_10009D334();
      sub_100015F44(v11);
      return v7;
    }

    sub_100015F44(v11);
  }

  else
  {
    sub_1000160CC(&v9, &qword_1000C1F48, &qword_1000A21B0);
  }

  return sub_10009E114();
}

unint64_t sub_100068E68()
{
  result = qword_1000C1F28;
  if (!qword_1000C1F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1F28);
  }

  return result;
}

uint64_t sub_100068EBC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100068F20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v53[1] = a2;
  v64 = a3;
  v59 = sub_10009D514();
  v55 = *(v59 - 8);
  v5 = __chkstk_darwin(v59);
  v54 = v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v58 = v53 - v7;
  v8 = sub_10009D524();
  v60 = *(v8 - 8);
  v61 = v8;
  v9 = __chkstk_darwin(v8);
  v57 = v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v62 = v53 - v11;
  v12 = sub_10009D294();
  v63 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v56 = v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = v53 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = v53 - v19;
  v21 = *(a1 - 8);
  v22 = __chkstk_darwin(v18);
  v24 = v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v22);
  v27 = v53 - v26;
  __chkstk_darwin(v25);
  v29 = v53 - v28;
  v65 = v21;
  v30 = *(v21 + 16);
  v30(v53 - v28, v3, a1);
  if (swift_dynamicCast())
  {
    v30(v27, v3, a1);
    swift_dynamicCast();
    v31 = v64;
    sub_10009D284();
    v32 = *(v63 + 8);
    v32(v17, v12);
    v33 = sub_10009CF14();
    (*(*(v33 - 8) + 56))(v31, 0, 1, v33);
    v32(v20, v12);
  }

  else
  {
    v53[0] = v12;
    v34 = v63;
    v35 = v61;
    if (swift_dynamicCast())
    {
      v30(v24, v3, a1);
      v36 = v57;
      v59 = a1;
      swift_dynamicCast();
      sub_10006A2C8(&qword_1000C1FA8, &type metadata accessor for StaticServiceGroup, &protocol conformance descriptor for StaticServiceGroup);
      v37 = sub_10009D384();
      v38 = *(v60 + 8);
      v38(v36, v35);
      if (*(v37 + 16))
      {
        v39 = v56;
        v40 = v53[0];
        (*(v34 + 16))(v56, v37 + ((*(v34 + 80) + 32) & ~*(v34 + 80)), v53[0]);

        v41 = v64;
        sub_10009D284();
        (*(v34 + 8))(v39, v40);
        v42 = 0;
      }

      else
      {

        v42 = 1;
        v41 = v64;
      }

      v51 = sub_10009CF14();
      (*(*(v51 - 8) + 56))(v41, v42, 1, v51);
      v38(v62, v35);
      a1 = v59;
    }

    else
    {
      v44 = v58;
      v43 = v59;
      if (swift_dynamicCast())
      {
        v30(v27, v3, a1);
        v45 = v54;
        swift_dynamicCast();
        v46 = v64;
        sub_10009D504();
        v47 = *(v55 + 8);
        v47(v45, v43);
        v48 = sub_10009CF14();
        (*(*(v48 - 8) + 56))(v46, 0, 1, v48);
        v47(v44, v43);
      }

      else
      {
        v49 = v64;
        sub_10009EAD4();
        v50 = sub_10009CF14();
        (*(*(v50 - 8) + 56))(v49, 0, 1, v50);
      }
    }
  }

  return (*(v65 + 8))(v29, a1);
}

uint64_t sub_1000695F4(uint64_t a1, uint64_t a2)
{
  v32 = a2;
  v4 = sub_10009D1C4();
  v31 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10009CF54();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10009E5A4();
  v35 = *(v8 - 8);
  v36 = v8;
  v9 = __chkstk_darwin(v8);
  v34 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v33 = &v30 - v12;
  __chkstk_darwin(v11);
  v14 = &v30 - v13;
  v15 = sub_10009D394();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  (*(v21 + 16))(&v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  if (swift_dynamicCast())
  {
    (*(v16 + 8))(v19, v15);
    sub_10009E554();
    sub_10009CF44();
    return sub_10009E5E4();
  }

  sub_10009D354();
  v23 = v31;
  v24 = (*(v31 + 88))(v6, v4);
  if (v24 == enum case for ServiceKind.door(_:) || v24 == enum case for ServiceKind.garageDoorOpener(_:) || v24 == enum case for ServiceKind.lockMechanism(_:))
  {
    goto LABEL_12;
  }

  if (v24 == enum case for ServiceKind.securitySystem(_:))
  {
    if ((sub_10009D2F4() & 1) == 0)
    {
      v25 = v34;
      goto LABEL_14;
    }

LABEL_13:
    v25 = v34;
LABEL_14:
    sub_10009E554();
    goto LABEL_15;
  }

  if (v24 == enum case for ServiceKind.window(_:) || v24 == enum case for ServiceKind.windowCovering(_:))
  {
LABEL_12:
    sub_10009D2F4();
    goto LABEL_13;
  }

  sub_10009D2F4();
  v25 = v34;
  sub_10009E554();
  (*(v23 + 8))(v6, v4);
LABEL_15:
  v27 = v35;
  v26 = v36;
  v28 = v33;
  (*(v35 + 32))(v33, v25, v36);
  (*(v27 + 16))(v14, v28, v26);
  sub_10009CF44();
  v29 = sub_10009E5E4();
  (*(v27 + 8))(v28, v26);
  return v29;
}

uint64_t sub_100069BB8(uint64_t a1, uint64_t a2)
{
  v4 = _s5StateVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100069C20(uint64_t a1, uint64_t a2)
{
  v4 = _s5StateVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100069C84@<X0>(void *a1@<X8>)
{
  v3 = *(_s5StateVMa(0) - 8);
  v4 = *(v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + *(v3 + 64));

  return sub_1000674C0(v4, a1);
}

uint64_t sub_100069D14()
{
  v1 = _s5StateVMa(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  if (*(v0 + v3 + 24))
  {
    sub_100015F44((v0 + v3));
  }

  v6 = v1[5];
  v7 = sub_10009D964();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v5 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  v9 = v1[6];
  v10 = sub_10009CF94();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v12 = v4 + v3;
  v13 = v1[7];
  v14 = sub_10009CEC4();
  (*(*(v14 - 8) + 8))(v5 + v13, v14);
  sub_100015F44((v5 + v1[8]));

  return _swift_deallocObject(v0, v12 + 1, v2 | 7);
}

uint64_t sub_100069F40@<X0>(uint64_t a1@<X8>)
{
  v3 = *(_s5StateVMa(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  v5 = *(v4 + *(v3 + 64));

  return sub_100067AF0(v4, v5, a1);
}

unint64_t sub_100069FE0()
{
  result = qword_1000C1F60;
  if (!qword_1000C1F60)
  {
    sub_10000375C(&qword_1000C1F50, &qword_1000A21B8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1F60);
  }

  return result;
}

unint64_t sub_10006A094()
{
  result = qword_1000C1F78;
  if (!qword_1000C1F78)
  {
    sub_10000375C(&qword_1000C1F70, &qword_1000A21D0);
    sub_10000375C(&qword_1000C14C8, &qword_1000A11A8);
    sub_10001CDC8(&qword_1000C14D0, &qword_1000C14C8, &qword_1000A11A8, &protocol conformance descriptor for Label<A, B>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1F78);
  }

  return result;
}

unint64_t sub_10006A18C()
{
  result = qword_1000C1F80;
  if (!qword_1000C1F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C1F80);
  }

  return result;
}

uint64_t sub_10006A1E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003714(&qword_1000C1F70, &qword_1000A21D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006A250(uint64_t a1)
{
  v2 = sub_100003714(&qword_1000C1F70, &qword_1000A21D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10006A2B8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10006A2C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10006A310()
{
  sub_10000375C(&qword_1000C1F08, &qword_1000A2190);
  sub_10000375C(&qword_1000C1F00, &qword_1000A2188);
  sub_10000375C(&qword_1000C1EF8, &qword_1000A2180);
  sub_10000375C(&qword_1000C1EF0, &qword_1000A2178);
  sub_10000375C(&qword_1000C1EE8, &qword_1000A2170);
  sub_10000375C(&qword_1000C1EE0, &qword_1000A2168);
  sub_10001CDC8(&qword_1000C1F30, &qword_1000C1EE0, &qword_1000A2168, &protocol conformance descriptor for AppIntentControlConfiguration<A, B>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10006A4E8(void *a1)
{
  v2 = sub_10009CF54();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(NSNumberFormatter) init];
  [v6 setNumberStyle:3];
  [v6 setUsesSignificantDigits:0];
  sub_100033B88();
  isa = sub_10009E8C4(1).super.super.isa;
  [v6 setMultiplier:isa];

  sub_10009CF44();
  v8 = sub_10009CF24().super.isa;
  (*(v3 + 8))(v5, v2);
  [v6 setLocale:v8];

  v9 = [v6 stringFromNumber:a1];
  if (v9)
  {
    v10 = v9;
    v11 = sub_10009E5C4();
  }

  else
  {
    v12 = [a1 description];
    v13 = sub_10009E5C4();
    v15 = v14;

    v17[0] = v13;
    v17[1] = v15;
    v18._countAndFlagsBits = 37;
    v18._object = 0xE100000000000000;
    sub_10009E634(v18);

    return v17[0];
  }

  return v11;
}

uint64_t sub_10006A6EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003714(&qword_1000C1520, &unk_1000A1330);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_100003714(&qword_1000C17A0, &unk_1000A2270);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24) + 8);
      if (v14 > 1)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_10006A824(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100003714(&qword_1000C1520, &unk_1000A1330);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100003714(&qword_1000C17A0, &unk_1000A2270);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = -a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for InFlightProgressView(uint64_t a1)
{
  result = qword_1000C2008;
  if (!qword_1000C2008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10006A994(uint64_t a1)
{
  sub_10006AA70(319, &qword_1000C15A0, &type metadata accessor for WidgetFamily);
  if (v1 <= 0x3F)
  {
    sub_10006AA70(319, &qword_1000C1818, &type metadata accessor for WidgetRenderingMode);
    if (v2 <= 0x3F)
    {
      sub_10006AAC4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10006AA70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10009DA14();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10006AAC4()
{
  if (!qword_1000C1590)
  {
    v0 = sub_10009DA14();
    if (!v1)
    {
      atomic_store(v0, &qword_1000C1590);
    }
  }
}

uint64_t sub_10006AB50(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v8 = sub_100003714(&qword_1000C17A0, &unk_1000A2270);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = sub_100003714(&qword_1000C1798, &unk_1000A16C0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_11;
  }

  v13 = sub_100003714(&qword_1000C2048, &unk_1000A2280);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[8];
    goto LABEL_11;
  }

  v15 = type metadata accessor for AccessoryAndSceneEntity(0);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[9];

  return v16(v17, a2, v15);
}

uint64_t sub_10006AD34(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
    return result;
  }

  v8 = sub_100003714(&qword_1000C17A0, &unk_1000A2270);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = sub_100003714(&qword_1000C1798, &unk_1000A16C0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  v13 = sub_100003714(&qword_1000C2048, &unk_1000A2280);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  v15 = type metadata accessor for AccessoryAndSceneEntity(0);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[9];

  return v16(v17, a2, a2, v15);
}

uint64_t type metadata accessor for SmallSquareTileView(uint64_t a1)
{
  result = qword_1000C20A8;
  if (!qword_1000C20A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10006AF54(uint64_t a1)
{
  sub_10006AAC4();
  if (v1 <= 0x3F)
  {
    sub_10006B08C(319, &qword_1000C1818, &type metadata accessor for WidgetRenderingMode);
    if (v2 <= 0x3F)
    {
      sub_10006B08C(319, &qword_1000C1810, &type metadata accessor for ColorScheme);
      if (v3 <= 0x3F)
      {
        sub_10006B08C(319, &unk_1000C20B8, &type metadata accessor for ContentSizeCategory);
        if (v4 <= 0x3F)
        {
          type metadata accessor for AccessoryAndSceneEntity(319);
          if (v5 <= 0x3F)
          {
            type metadata accessor for CGSize();
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

void sub_10006B08C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10009DA14();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10006B0FC()
{
  v1 = sub_10009DC44();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 16);
  if (*(v0 + 24) != 1)
  {

    sub_10009E834();
    v6 = sub_10009DEA4();
    sub_10009D8C4();

    sub_10009DC34();
    swift_getAtKeyPath();
    sub_10004D760(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t sub_10006B244@<X0>(void *a1@<X8>)
{
  v3 = sub_10009DC44();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003714(&qword_1000C16D0, &qword_1000A15B0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SmallSquareTileView(0);
  sub_10001E0A8(v1 + *(v10 + 24), v9, &qword_1000C16D0, &qword_1000A15B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10009E3A4();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_10009E834();
    v13 = sub_10009DEA4();
    sub_10009D8C4();

    sub_10009DC34();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_10006B44C@<X0>(void *a1@<X8>)
{
  v3 = sub_10009DC44();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003714(&qword_1000C16C8, &unk_1000A2A00);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SmallSquareTileView(0);
  sub_10001E0A8(v1 + *(v10 + 28), v9, &qword_1000C16C8, &unk_1000A2A00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10009DA04();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_10009E834();
    v13 = sub_10009DEA4();
    sub_10009D8C4();

    sub_10009DC34();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_10006B654@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v70 = a1;
  v3 = sub_100003714(&qword_1000C2100, &qword_1000A22F8);
  __chkstk_darwin(v3 - 8);
  v5 = &v65 - v4;
  v6 = sub_100003714(&qword_1000C2108, &qword_1000A2300);
  __chkstk_darwin(v6);
  v8 = &v65 - v7;
  v9 = sub_100003714(&qword_1000C2110, &qword_1000A2308);
  __chkstk_darwin(v9);
  v11 = &v65 - v10;
  v66 = sub_100003714(&qword_1000C2118, &qword_1000A2310);
  __chkstk_darwin(v66);
  v13 = &v65 - v12;
  v67 = sub_100003714(&qword_1000C2120, &qword_1000A2318);
  __chkstk_darwin(v67);
  v15 = &v65 - v14;
  v68 = sub_100003714(&qword_1000C2128, &qword_1000A2320);
  __chkstk_darwin(v68);
  v17 = &v65 - v16;
  *v5 = sub_10009DD04();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v18 = &v5[*(sub_100003714(&qword_1000C2130, &qword_1000A2328) + 44)];
  v69 = v2;
  sub_10006BB94(v2, v18);
  LOBYTE(v2) = sub_10009DEC4();
  v19 = sub_10009DEF4();
  sub_10009DEF4();
  if (sub_10009DEF4() != v2)
  {
    v19 = sub_10009DEF4();
  }

  sub_10009D9E4();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_10005B0FC(v5, v8, &qword_1000C2100, &qword_1000A22F8);
  v28 = &v8[*(v6 + 36)];
  *v28 = v19;
  *(v28 + 1) = v21;
  *(v28 + 2) = v23;
  *(v28 + 3) = v25;
  *(v28 + 4) = v27;
  v28[40] = 0;
  v29 = sub_10009DED4();
  v30 = sub_10009DEF4();
  sub_10009DEF4();
  if (sub_10009DEF4() != v29)
  {
    v30 = sub_10009DEF4();
  }

  sub_10009D9E4();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_10005B0FC(v8, v11, &qword_1000C2108, &qword_1000A2300);
  v39 = &v11[*(v9 + 36)];
  *v39 = v30;
  *(v39 + 1) = v32;
  *(v39 + 2) = v34;
  *(v39 + 3) = v36;
  *(v39 + 4) = v38;
  v39[40] = 0;
  v40 = sub_10009DEE4();
  v41 = sub_10009DEF4();
  sub_10009DEF4();
  if (sub_10009DEF4() != v40)
  {
    v41 = sub_10009DEF4();
  }

  sub_10009D9E4();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  sub_10005B0FC(v11, v13, &qword_1000C2110, &qword_1000A2308);
  v50 = &v13[*(v66 + 36)];
  *v50 = v41;
  *(v50 + 1) = v43;
  *(v50 + 2) = v45;
  *(v50 + 3) = v47;
  *(v50 + 4) = v49;
  v50[40] = 0;
  v51 = sub_10009DF04();
  v52 = sub_10009DEF4();
  sub_10009DEF4();
  if (sub_10009DEF4() != v51)
  {
    v52 = sub_10009DEF4();
  }

  sub_10009D9E4();
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;
  sub_10005B0FC(v13, v15, &qword_1000C2118, &qword_1000A2310);
  v61 = &v15[*(v67 + 36)];
  *v61 = v52;
  *(v61 + 1) = v54;
  *(v61 + 2) = v56;
  *(v61 + 3) = v58;
  *(v61 + 4) = v60;
  v61[40] = 0;
  type metadata accessor for SmallSquareTileView(0);
  sub_10009E2F4();
  sub_10009DA74();
  sub_10005B0FC(v15, v17, &qword_1000C2120, &qword_1000A2318);
  v62 = &v17[*(v68 + 36)];
  v63 = v72;
  *v62 = v71;
  *(v62 + 1) = v63;
  *(v62 + 2) = v73;
  sub_10006DCF4();
  sub_10009DFF4();
  return sub_1000160CC(v17, &qword_1000C2128, &qword_1000A2320);
}

uint64_t sub_10006BB94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v47 = sub_10009D494();
  v45 = *(v47 - 8);
  __chkstk_darwin(v47);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for WidgetTileInfo(0);
  __chkstk_darwin(v5);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_100003714(&qword_1000C2168, &qword_1000A2330) - 8;
  __chkstk_darwin(v46);
  v43 = &v42 - v8;
  v51 = sub_100003714(&qword_1000C2170, &qword_1000A2338) - 8;
  __chkstk_darwin(v51);
  v49 = &v42 - v9;
  v52 = sub_100003714(&qword_1000C2178, &qword_1000A2340) - 8;
  v10 = __chkstk_darwin(v52);
  v53 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v48 = &v42 - v13;
  __chkstk_darwin(v12);
  v50 = &v42 - v14;
  v15 = sub_100003714(&qword_1000C2180, &qword_1000A2348);
  v16 = __chkstk_darwin(v15 - 8);
  v44 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v42 - v18;
  *v19 = sub_10009DC74();
  *(v19 + 1) = 0;
  v19[16] = 1;
  v20 = sub_100003714(&qword_1000C2188, &qword_1000A2350);
  sub_10006C1A0(a1, &v19[*(v20 + 44)]);
  v21 = a1 + *(type metadata accessor for SmallSquareTileView(0) + 36);
  v22 = v21 + *(type metadata accessor for AccessoryAndSceneEntity(0) + 24);
  sub_10006E0E4(v22, v7, type metadata accessor for WidgetTileInfo);

  sub_10009D484();
  sub_10009D474();
  (*(v45 + 8))(v4, v47);
  sub_10006E14C(v7, type metadata accessor for WidgetTileInfo);

  sub_10009DC64();
  v23 = v43;
  sub_10009D9B4();
  LOBYTE(v4) = sub_10009DF04();
  sub_10009D9E4();
  v24 = v23 + *(v46 + 44);
  *v24 = v4;
  *(v24 + 8) = v25;
  *(v24 + 16) = v26;
  *(v24 + 24) = v27;
  *(v24 + 32) = v28;
  *(v24 + 40) = 0;
  sub_10009E2E4();
  sub_10009DAE4();
  v29 = v49;
  sub_10005B0FC(v23, v49, &qword_1000C2168, &qword_1000A2330);
  v30 = (v29 + *(v51 + 44));
  v31 = v60;
  v30[4] = v59;
  v30[5] = v31;
  v30[6] = v61;
  v32 = v56;
  *v30 = v55;
  v30[1] = v32;
  v33 = v58;
  v30[2] = v57;
  v30[3] = v33;
  v34 = v29;
  v35 = v48;
  sub_10005B0FC(v34, v48, &qword_1000C2170, &qword_1000A2338);
  *(v35 + *(v52 + 44)) = 0x3FF0000000000000;
  v36 = v50;
  sub_10005B0FC(v35, v50, &qword_1000C2178, &qword_1000A2340);
  v37 = v44;
  sub_10001E0A8(v19, v44, &qword_1000C2180, &qword_1000A2348);
  v38 = v53;
  sub_10001E0A8(v36, v53, &qword_1000C2178, &qword_1000A2340);
  v39 = v54;
  sub_10001E0A8(v37, v54, &qword_1000C2180, &qword_1000A2348);
  v40 = sub_100003714(&qword_1000C2190, &qword_1000A2358);
  sub_10001E0A8(v38, v39 + *(v40 + 48), &qword_1000C2178, &qword_1000A2340);
  sub_1000160CC(v36, &qword_1000C2178, &qword_1000A2340);
  sub_1000160CC(v19, &qword_1000C2180, &qword_1000A2348);
  sub_1000160CC(v38, &qword_1000C2178, &qword_1000A2340);
  return sub_1000160CC(v37, &qword_1000C2180, &qword_1000A2348);
}

uint64_t sub_10006C1A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v194 = a2;
  v189 = sub_100003714(&qword_1000C2198, &qword_1000A2360);
  __chkstk_darwin(v189);
  v159 = (&v149 - v3);
  v156 = type metadata accessor for InFlightProgressView(0);
  v4 = __chkstk_darwin(v156);
  v157 = &v149 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v158 = (&v149 - v6);
  v186 = sub_100003714(&qword_1000C21A0, &qword_1000A2368);
  __chkstk_darwin(v186);
  v188 = &v149 - v7;
  v187 = sub_100003714(&qword_1000C21A8, &unk_1000A2370);
  __chkstk_darwin(v187);
  v185 = (&v149 - v8);
  v9 = sub_100003714(&qword_1000C18C0, &qword_1000A1908);
  __chkstk_darwin(v9 - 8);
  v182 = &v149 - v10;
  v178 = sub_10009E324();
  v177 = *(v178 - 8);
  __chkstk_darwin(v178);
  v171 = &v149 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_10009DA04();
  v162 = *(v163 - 8);
  v12 = __chkstk_darwin(v163);
  v161 = &v149 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v160 = &v149 - v14;
  v169 = sub_100003714(&qword_1000C21B0, &qword_1000A2380);
  __chkstk_darwin(v169);
  v172 = &v149 - v15;
  v170 = sub_100003714(&qword_1000C21B8, &qword_1000A2388);
  __chkstk_darwin(v170);
  v176 = &v149 - v16;
  v174 = sub_100003714(&qword_1000C21C0, &qword_1000A2390);
  __chkstk_darwin(v174);
  v175 = &v149 - v17;
  v173 = sub_100003714(&qword_1000C21C8, &qword_1000A2398);
  __chkstk_darwin(v173);
  v181 = &v149 - v18;
  v180 = sub_100003714(&qword_1000C21D0, &qword_1000A23A0);
  v19 = __chkstk_darwin(v180);
  v183 = &v149 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v179 = &v149 - v22;
  __chkstk_darwin(v21);
  v184 = &v149 - v23;
  v24 = sub_100003714(&qword_1000C21D8, &qword_1000A23A8);
  v25 = __chkstk_darwin(v24 - 8);
  v193 = &v149 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v197 = &v149 - v27;
  v168 = sub_10009DD14();
  v167 = *(v168 - 8);
  v28 = __chkstk_darwin(v168);
  v196 = &v149 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v195 = &v149 - v30;
  v190 = sub_100003714(&qword_1000C21E0, &unk_1000A23B0);
  __chkstk_darwin(v190);
  v32 = &v149 - v31;
  v191 = sub_100003714(&qword_1000C21E8, &unk_1000A29C0);
  __chkstk_darwin(v191);
  v34 = (&v149 - v33);
  v166 = sub_10009DC44();
  v165 = *(v166 - 8);
  __chkstk_darwin(v166);
  v164 = &v149 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for TileIconView(0);
  v37 = __chkstk_darwin(v36);
  v39 = &v149 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v41 = &v149 - v40;
  v42 = sub_100003714(&qword_1000C21F0, &qword_1000A23C0);
  v43 = __chkstk_darwin(v42 - 8);
  v192 = &v149 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v46 = &v149 - v45;
  v47 = a1;
  v48 = a1 + *(type metadata accessor for SmallSquareTileView(0) + 36);
  v49 = v48 + *(type metadata accessor for AccessoryAndSceneEntity(0) + 24);
  v50 = sub_10008CFDC();
  if (v51)
  {
    v52 = v50;
    v53 = v51;
    *v34 = sub_10009E2D4();
    v34[1] = v54;
    v55 = sub_100003714(&qword_1000C2248, &unk_1000A2520);
    sub_10006D880(v52, v53, (v34 + *(v55 + 44)));

    sub_10009E2F4();
    sub_10009DA74();
    v56 = (v34 + *(v191 + 36));
    v57 = v199;
    *v56 = v198;
    v56[1] = v57;
    v56[2] = v200;
    sub_10001E0A8(v34, v32, &qword_1000C21E8, &unk_1000A29C0);
    swift_storeEnumTagMultiPayload();
    sub_10006DFC8();
    sub_10006E080();
    sub_10009DD94();
    sub_1000160CC(v34, &qword_1000C21E8, &unk_1000A29C0);
    v58 = v47;
    goto LABEL_14;
  }

  v153 = v41;
  v154 = v36;
  v59 = *v47;
  v155 = v47;
  if (*(v47 + 8) != 1)
  {

    sub_10009E834();
    v62 = sub_10009DEA4();
    sub_10009D8C4();

    v63 = v164;
    sub_10009DC34();
    swift_getAtKeyPath();
    sub_10004D760(v59, 0);
    (*(v165 + 8))(v63, v166);
    v60 = v167;
    if (v201)
    {
      goto LABEL_5;
    }

LABEL_7:
    v61 = 32;
    goto LABEL_8;
  }

  v60 = v167;
  if ((v59 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_5:
  v61 = 36;
LABEL_8:
  v64 = v32;
  v65 = type metadata accessor for WidgetTileInfo(0);
  v66 = (v49 + *(v65 + v61));
  v67 = v66[1];
  v150 = *v66;

  sub_10009D594();
  sub_10009D594();
  v68 = v154;
  if (*(v49 + *(v65 + 52)) == 1)
  {
    v69 = *(v49 + *(v65 + 48));
  }

  else
  {
    v69 = sub_10009E174();
  }

  v152 = sub_10009E304();
  v151 = v70;
  *v39 = swift_getKeyPath();
  v39[8] = 0;
  v71 = v68[5];
  *&v39[v71] = swift_getKeyPath();
  sub_100003714(&qword_1000C16D0, &qword_1000A15B0);
  swift_storeEnumTagMultiPayload();
  v72 = &v39[v68[6]];
  *v72 = swift_getKeyPath();
  v72[8] = 0;
  v73 = v68[7];
  *&v39[v73] = swift_getKeyPath();
  sub_100003714(&qword_1000C16C8, &unk_1000A2A00);
  swift_storeEnumTagMultiPayload();
  v74 = &v39[v68[8]];
  *v74 = v150;
  *(v74 + 1) = v67;
  v75 = *(v60 + 16);
  v76 = v168;
  v75(&v39[v68[9]], v195, v168);
  v75(&v39[v68[10]], v196, v76);
  sub_10009E174();
  LOBYTE(v75) = sub_10009E134();

  if (v75)
  {
    v77 = sub_10009E1B4();

    v69 = v77;
  }

  v78 = *(v167 + 8);
  v79 = v168;
  v78(v196, v168);
  v78(v195, v79);
  *&v39[v68[11]] = v69;
  *&v39[v68[12]] = 0x402E000000000000;
  *&v39[v68[13]] = 0x402E000000000000;
  v80 = &v39[v68[14]];
  v81 = v151;
  *v80 = v152;
  v80[1] = v81;
  v82 = v153;
  sub_10006DF64(v39, v153);
  sub_10006E0E4(v82, v64, type metadata accessor for TileIconView);
  swift_storeEnumTagMultiPayload();
  sub_10006DFC8();
  sub_10006E080();
  sub_10009DD94();
  sub_10006E14C(v82, type metadata accessor for TileIconView);
  v58 = v155;
LABEL_14:
  v83 = type metadata accessor for WidgetTileInfo(0);
  v84 = v197;
  if (*(v49 + *(v83 + 52)) != 1 || *(v49 + *(v83 + 68)) == 1)
  {
    v85 = sub_10009E214();
    v86 = sub_10009DDD4();
    v87 = *v58;
    if (*(v58 + 8) == 1)
    {
      v88 = 1.0;
      if (v87)
      {
        goto LABEL_23;
      }
    }

    else
    {

      sub_10009E834();
      v89 = sub_10009DEA4();
      sub_10009D8C4();

      v90 = v164;
      sub_10009DC34();
      swift_getAtKeyPath();
      sub_10004D760(v87, 0);
      (*(v165 + 8))(v90, v166);
      v88 = 1.0;
      if (v201)
      {
LABEL_23:
        v196 = v46;
        v101 = sub_10006B0FC();
        v102 = v177;
        v103 = &enum case for BlendMode.normal(_:);
        if ((v101 & 1) == 0)
        {
          v103 = &enum case for BlendMode.difference(_:);
        }

        v104 = v171;
        v105 = v178;
        (*(v177 + 104))(v171, *v103, v178);
        v106 = v172;
        (*(v102 + 32))(&v172[*(v169 + 36)], v104, v105);
        *v106 = v85;
        *(v106 + 8) = v86;
        *(v106 + 16) = v88;
        v107 = sub_10009DF24();
        v108 = v182;
        (*(*(v107 - 8) + 56))(v182, 1, 1, v107);
        v109 = sub_10009DF64();
        sub_1000160CC(v108, &qword_1000C18C0, &qword_1000A1908);
        KeyPath = swift_getKeyPath();
        v111 = v176;
        sub_10005B0FC(v106, v176, &qword_1000C21B0, &qword_1000A2380);
        v112 = (v111 + *(v170 + 36));
        *v112 = KeyPath;
        v112[1] = v109;
        sub_10009E2F4();
        sub_10009DA74();
        v113 = v175;
        sub_10005B0FC(v111, v175, &qword_1000C21B8, &qword_1000A2388);
        v114 = (v113 + *(v174 + 36));
        v115 = v202;
        *v114 = v201;
        v114[1] = v115;
        v114[2] = v203;
        v116 = v181;
        sub_10005B0FC(v113, v181, &qword_1000C21C0, &qword_1000A2390);
        *(v116 + *(v173 + 36)) = 257;
        LOBYTE(KeyPath) = sub_10009DF04();
        v117 = sub_10009DEF4();
        sub_10009DEF4();
        if (sub_10009DEF4() != KeyPath)
        {
          v117 = sub_10009DEF4();
        }

        sub_10009D9E4();
        v119 = v118;
        v121 = v120;
        v123 = v122;
        v125 = v124;
        v126 = v116;
        v127 = v179;
        sub_10005B0FC(v126, v179, &qword_1000C21C8, &qword_1000A2398);
        v128 = v127 + *(v180 + 36);
        *v128 = v117;
        *(v128 + 8) = v119;
        *(v128 + 16) = v121;
        *(v128 + 24) = v123;
        *(v128 + 32) = v125;
        *(v128 + 40) = 0;
        v129 = v184;
        sub_10005B0FC(v127, v184, &qword_1000C21D0, &qword_1000A23A0);
        v130 = v183;
        sub_10001E0A8(v129, v183, &qword_1000C21D0, &qword_1000A23A0);
        v131 = v185;
        *v185 = 0;
        *(v131 + 8) = 1;
        v132 = sub_100003714(&qword_1000C2218, &qword_1000A24C8);
        sub_10001E0A8(v130, v131 + *(v132 + 48), &qword_1000C21D0, &qword_1000A23A0);
        sub_1000160CC(v130, &qword_1000C21D0, &qword_1000A23A0);
        sub_10001E0A8(v131, v188, &qword_1000C21A8, &unk_1000A2370);
        swift_storeEnumTagMultiPayload();
        sub_10001CDC8(&qword_1000C2220, &qword_1000C21A8, &unk_1000A2370, &protocol conformance descriptor for TupleView<A>);
        sub_10001CDC8(&qword_1000C2228, &qword_1000C2198, &qword_1000A2360, &protocol conformance descriptor for TupleView<A>);
        sub_10009DD94();
        sub_1000160CC(v131, &qword_1000C21A8, &unk_1000A2370);
        sub_1000160CC(v129, &qword_1000C21D0, &qword_1000A23A0);
        v133 = 0;
        v46 = v196;
        goto LABEL_28;
      }
    }

    v91 = v160;
    sub_10006B44C(v160);
    v92 = v46;
    v93 = v86;
    v94 = v85;
    v95 = v162;
    v96 = v161;
    v97 = v163;
    (*(v162 + 104))(v161, enum case for ColorScheme.light(_:), v163);
    v98 = sub_10009D9F4();
    v99 = *(v95 + 8);
    v99(v96, v97);
    v100 = v91;
    v84 = v197;
    v99(v100, v97);
    v85 = v94;
    v86 = v93;
    v46 = v92;
    if (v98)
    {
      v88 = 0.7;
    }

    else
    {
      v88 = 0.5;
    }

    goto LABEL_23;
  }

  v133 = 1;
  if (sub_100018634())
  {
    v140 = sub_100018634();
    v141 = swift_getKeyPath();
    v142 = v158;
    *v158 = v141;
    sub_100003714(&qword_1000C15F8, &qword_1000A2510);
    swift_storeEnumTagMultiPayload();
    v143 = v156;
    v144 = *(v156 + 20);
    *(v142 + v144) = swift_getKeyPath();
    sub_100003714(&qword_1000C16D0, &qword_1000A15B0);
    swift_storeEnumTagMultiPayload();
    v145 = v142 + *(v143 + 24);
    *v145 = swift_getKeyPath();
    *(v145 + 8) = 0;
    *(v142 + *(v143 + 28)) = v140 & 1;
    v146 = v157;
    sub_10006E0E4(v142, v157, type metadata accessor for InFlightProgressView);
    v147 = v159;
    *v159 = 0;
    *(v147 + 8) = 1;
    v148 = sub_100003714(&qword_1000C2240, &qword_1000A2518);
    sub_10006E0E4(v146, v147 + *(v148 + 48), type metadata accessor for InFlightProgressView);
    sub_10006E14C(v146, type metadata accessor for InFlightProgressView);
    sub_10001E0A8(v147, v188, &qword_1000C2198, &qword_1000A2360);
    swift_storeEnumTagMultiPayload();
    sub_10001CDC8(&qword_1000C2220, &qword_1000C21A8, &unk_1000A2370, &protocol conformance descriptor for TupleView<A>);
    sub_10001CDC8(&qword_1000C2228, &qword_1000C2198, &qword_1000A2360, &protocol conformance descriptor for TupleView<A>);
    sub_10009DD94();
    sub_1000160CC(v147, &qword_1000C2198, &qword_1000A2360);
    sub_10006E14C(v142, type metadata accessor for InFlightProgressView);
    v133 = 0;
  }

LABEL_28:
  v134 = sub_100003714(&qword_1000C2230, &qword_1000A24D0);
  (*(*(v134 - 8) + 56))(v84, v133, 1, v134);
  v135 = v192;
  sub_10001E0A8(v46, v192, &qword_1000C21F0, &qword_1000A23C0);
  v136 = v193;
  sub_10001E0A8(v84, v193, &qword_1000C21D8, &qword_1000A23A8);
  v137 = v194;
  sub_10001E0A8(v135, v194, &qword_1000C21F0, &qword_1000A23C0);
  v138 = sub_100003714(&qword_1000C2238, &qword_1000A24D8);
  sub_10001E0A8(v136, v137 + *(v138 + 48), &qword_1000C21D8, &qword_1000A23A8);
  sub_1000160CC(v84, &qword_1000C21D8, &qword_1000A23A8);
  sub_1000160CC(v46, &qword_1000C21F0, &qword_1000A23C0);
  sub_1000160CC(v136, &qword_1000C21D8, &qword_1000A23A8);
  return sub_1000160CC(v135, &qword_1000C21F0, &qword_1000A23C0);
}

uint64_t sub_10006D880@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v40 = a3;
  v37 = sub_100003714(&qword_1000C2250, &qword_1000A2A20);
  v5 = *(v37 - 8);
  v6 = __chkstk_darwin(v37);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v36 = &v34 - v8;
  v9 = sub_10009E3A4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = sub_10009E164();
  type metadata accessor for SmallSquareTileView(0);
  type metadata accessor for AccessoryAndSceneEntity(0);
  sub_10006B244(v12);
  sub_10006B0FC();
  v35 = sub_10001D53C(v12);
  (*(v10 + 8))(v12, v9);
  *&v50[0] = a1;
  *(&v50[0] + 1) = a2;
  sub_1000037A4();

  v13 = sub_10009DFE4();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  KeyPath = swift_getKeyPath();
  v21 = v17 & 1;
  LOBYTE(v43) = v17 & 1;
  v22 = swift_getKeyPath();
  LOBYTE(v50[0]) = 0;
  sub_10009DF34();
  v23 = sub_10009DF84();
  v24 = swift_getKeyPath();
  *&v43 = v13;
  *(&v43 + 1) = v15;
  LOBYTE(v44) = v21;
  *(&v44 + 1) = v19;
  LOWORD(v45) = 256;
  *(&v45 + 1) = KeyPath;
  LOBYTE(v46) = 1;
  *(&v46 + 1) = v22;
  *&v47 = 1;
  BYTE8(v47) = 0;
  *&v48 = v24;
  *(&v48 + 1) = v23;
  v49 = v35;
  v41 = a1;
  v42 = a2;

  sub_100003714(&qword_1000C2258, &unk_1000A2590);
  sub_10006E1BC();
  sub_10009E024();
  v25 = v36;
  sub_10009E014();
  v50[3] = v46;
  v50[4] = v47;
  v50[5] = v48;
  v51 = v49;
  v50[0] = v43;
  v50[1] = v44;
  v50[2] = v45;
  sub_1000160CC(v50, &qword_1000C2258, &unk_1000A2590);
  v26 = *(v5 + 16);
  v27 = v39;
  v28 = v37;
  v26(v39, v25, v37);
  v29 = v40;
  *v40 = v38;
  v29[1] = 0x3FF0000000000000;
  v30 = v29;
  v31 = sub_100003714(&qword_1000C22D8, qword_1000A2AF0);
  v26(v30 + *(v31 + 48), v27, v28);

  v32 = *(v5 + 8);
  v32(v25, v28);
  v32(v27, v28);
}

unint64_t sub_10006DCF4()
{
  result = qword_1000C2138;
  if (!qword_1000C2138)
  {
    sub_10000375C(&qword_1000C2128, &qword_1000A2320);
    sub_10006DDDC(&qword_1000C2140, &qword_1000C2120, &qword_1000A2318, sub_10006DDAC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C2138);
  }

  return result;
}

uint64_t sub_10006DDDC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000375C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10006DE90()
{
  result = qword_1000C2158;
  if (!qword_1000C2158)
  {
    sub_10000375C(&qword_1000C2108, &qword_1000A2300);
    sub_10001CDC8(&qword_1000C2160, &qword_1000C2100, &qword_1000A22F8, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C2158);
  }

  return result;
}

uint64_t sub_10006DF64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TileIconView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10006DFC8()
{
  result = qword_1000C21F8;
  if (!qword_1000C21F8)
  {
    sub_10000375C(&qword_1000C21E8, &unk_1000A29C0);
    sub_10001CDC8(&qword_1000C2200, &qword_1000C2208, &qword_1000A2490, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C21F8);
  }

  return result;
}

unint64_t sub_10006E080()
{
  result = qword_1000C2210;
  if (!qword_1000C2210)
  {
    type metadata accessor for TileIconView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C2210);
  }

  return result;
}

uint64_t sub_10006E0E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10006E14C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10006E1BC()
{
  result = qword_1000C2260;
  if (!qword_1000C2260)
  {
    sub_10000375C(&qword_1000C2258, &unk_1000A2590);
    sub_10006E274();
    sub_10001CDC8(&qword_1000C22C8, &qword_1000C22D0, &qword_1000A25D0, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C2260);
  }

  return result;
}

unint64_t sub_10006E274()
{
  result = qword_1000C2268;
  if (!qword_1000C2268)
  {
    sub_10000375C(&qword_1000C2270, &unk_1000A2AC0);
    sub_10006E32C();
    sub_10001CDC8(&qword_1000C1900, &qword_1000C1908, &qword_1000A1960, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C2268);
  }

  return result;
}

unint64_t sub_10006E32C()
{
  result = qword_1000C2278;
  if (!qword_1000C2278)
  {
    sub_10000375C(&qword_1000C2280, &unk_1000A25A0);
    sub_10006E3E4();
    sub_10001CDC8(&qword_1000C22B8, &qword_1000C22C0, &unk_1000A25C0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C2278);
  }

  return result;
}

unint64_t sub_10006E3E4()
{
  result = qword_1000C2288;
  if (!qword_1000C2288)
  {
    sub_10000375C(&qword_1000C2290, &unk_1000A2AD0);
    sub_10006E49C();
    sub_10001CDC8(&qword_1000C22A8, &qword_1000C22B0, &unk_1000A2AE0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C2288);
  }

  return result;
}

unint64_t sub_10006E49C()
{
  result = qword_1000C2298;
  if (!qword_1000C2298)
  {
    sub_10000375C(&qword_1000C22A0, &unk_1000A25B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C2298);
  }

  return result;
}

uint64_t sub_10006E520()
{
  sub_10000375C(&qword_1000C2128, &qword_1000A2320);
  sub_10006DCF4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10006E598(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100003714(&qword_1000C17A0, &unk_1000A2270);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_100003714(&qword_1000C1798, &unk_1000A16C0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v13 = *(a1 + a3[8] + 8);
    if (v13 >= 0xFFFFFFFF)
    {
      LODWORD(v13) = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = sub_10009DD14();
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[9];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_10006E738(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100003714(&qword_1000C17A0, &unk_1000A2270);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_5:
    v13 = *(v10 + 56);

    return v13(a1 + v11, a2, a2, v9);
  }

  result = sub_100003714(&qword_1000C1798, &unk_1000A16C0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[7];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[8] + 8) = (a2 - 1);
  }

  else
  {
    v14 = sub_10009DD14();
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + a4[9];

    return v15(v16, a2, a2, v14);
  }

  return result;
}

uint64_t type metadata accessor for TileIconView(uint64_t a1)
{
  result = qword_1000C2338;
  if (!qword_1000C2338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10006E910(uint64_t a1)
{
  sub_10006AAC4();
  if (v1 <= 0x3F)
  {
    sub_10006EA2C(319, &qword_1000C1818, &type metadata accessor for WidgetRenderingMode);
    if (v2 <= 0x3F)
    {
      sub_10006EA2C(319, &qword_1000C1810, &type metadata accessor for ColorScheme);
      if (v3 <= 0x3F)
      {
        sub_10009DD14();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10006EA2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10009DA14();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10006EA9C@<X0>(void *a1@<X8>)
{
  v3 = sub_10009DC44();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003714(&qword_1000C16C8, &unk_1000A2A00);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for TileIconView(0);
  sub_10006F6BC(v1 + *(v10 + 28), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10009DA04();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_10009E834();
    v13 = sub_10009DEA4();
    sub_10009D8C4();

    sub_10009DC34();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

double sub_10006EC8C@<D0>(uint64_t a1@<X8>)
{
  v71 = a1;
  v62 = sub_10009DA04();
  v61 = *(v62 - 8);
  v2 = __chkstk_darwin(v62);
  v60 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v59 = &v59 - v4;
  v67 = sub_10009D174();
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v74 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003714(&qword_1000C18C0, &qword_1000A1908);
  __chkstk_darwin(v6 - 8);
  v8 = &v59 - v7;
  v9 = sub_10009DC44();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v72 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100003714(&qword_1000C2398, &qword_1000A2638);
  __chkstk_darwin(v12 - 8);
  v14 = &v59 - v13;
  v70 = sub_100003714(&qword_1000C23A0, &qword_1000A2640);
  __chkstk_darwin(v70);
  v16 = &v59 - v15;
  v17 = type metadata accessor for TileIconView(0);

  sub_10009E224();
  v18 = v17;
  v19 = v1 + *(v17 + 24);
  v20 = *v19;
  v73 = *(v19 + 8);
  v68 = v10;
  v69 = v9;
  v21 = v1;
  if (v73 == 1)
  {
    if (v20)
    {
LABEL_3:
      v22 = 40;
      goto LABEL_6;
    }
  }

  else
  {

    sub_10009E834();
    v65 = v16;
    v23 = v10;
    v24 = sub_10009DEA4();
    v25 = v72;
    sub_10009D8C4();

    sub_10009DC34();
    swift_getAtKeyPath();
    sub_10004D760(v20, 0);
    v26 = v23;
    v16 = v65;
    (*(v26 + 8))(v25, v9);
    if (v78)
    {
      goto LABEL_3;
    }
  }

  v22 = 36;
LABEL_6:
  v27 = *(v18 + v22);
  v28 = sub_10009DD14();
  v29 = *(v28 - 8);
  (*(v29 + 16))(v14, v21 + v27, v28);
  (*(v29 + 56))(v14, 0, 1, v28);
  v65 = sub_10009E234();

  sub_1000160CC(v14, &qword_1000C2398, &qword_1000A2638);
  v30 = sub_10009DF24();
  (*(*(v30 - 8) + 56))(v8, 1, 1, v30);
  v64 = sub_10009DF64();
  sub_1000160CC(v8, &qword_1000C18C0, &qword_1000A1908);
  KeyPath = swift_getKeyPath();
  v31 = *(v21 + *(v18 + 44));
  *(&v79 + 1) = &type metadata for Color;
  *&v80 = &protocol witness table for Color;
  *&v78 = v31;

  v32 = sub_10009E174();
  v76 = &type metadata for Color;
  v77 = &protocol witness table for Color;
  v75 = v32;
  sub_10009D144();
  if (v73)
  {
    v33 = v68;
    if ((v20 & 1) == 0)
    {
LABEL_8:
      v34 = v74;
      sub_10009D164();
      goto LABEL_11;
    }
  }

  else
  {

    sub_10009E834();
    v35 = sub_10009DEA4();
    sub_10009D8C4();

    v36 = v72;
    sub_10009DC34();
    swift_getAtKeyPath();
    sub_10004D760(v20, 0);
    v33 = v68;
    (*(v68 + 8))(v36, v69);
    if (v78 != 1)
    {
      goto LABEL_8;
    }
  }

  v34 = v74;
  sub_10009D154();
LABEL_11:
  v37 = sub_100024330(&v78, *(&v79 + 1));
  __chkstk_darwin(v37);
  (*(v39 + 16))(&v59 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = sub_10009DA84();
  (*(v66 + 8))(v34, v67);
  sub_100015F44(&v78);
  if (v73)
  {
    v41 = 1.0;
    if (v20)
    {
      goto LABEL_18;
    }
  }

  else
  {

    sub_10009E834();
    v42 = sub_10009DEA4();
    sub_10009D8C4();

    v43 = v72;
    sub_10009DC34();
    swift_getAtKeyPath();
    sub_10004D760(v20, 0);
    (*(v33 + 8))(v43, v69);
    v41 = 1.0;
    if (v78)
    {
      goto LABEL_18;
    }
  }

  v44 = v59;
  sub_10006EA9C(v59);
  v45 = v61;
  v46 = v60;
  v47 = v62;
  (*(v61 + 104))(v60, enum case for ColorScheme.light(_:), v62);
  v48 = sub_10009D9F4();
  v49 = *(v45 + 8);
  v49(v46, v47);
  v49(v44, v47);
  if (v48)
  {
    v41 = 1.0;
  }

  else
  {
    v41 = 0.7;
  }

LABEL_18:
  v50 = &v16[*(v70 + 36)];
  *v50 = swift_getKeyPath();
  v50[8] = 0;
  v51 = type metadata accessor for WidgetBlendMode(0);
  v52 = *(v51 + 20);
  *&v50[v52] = swift_getKeyPath();
  sub_100003714(&qword_1000C16D0, &qword_1000A15B0);
  swift_storeEnumTagMultiPayload();
  v53 = &v50[*(v51 + 24)];
  *v53 = swift_getKeyPath();
  v53[8] = 0;
  v54 = KeyPath;
  *v16 = v65;
  *(v16 + 1) = v54;
  *(v16 + 2) = v64;
  *(v16 + 12) = 257;
  *(v16 + 4) = v40;
  *(v16 + 5) = v41;
  sub_10009DA74();
  v55 = v71;
  sub_10006F64C(v16, v71);
  v56 = (v55 + *(sub_100003714(&qword_1000C23A8, &qword_1000A2700) + 36));
  v57 = v79;
  *v56 = v78;
  v56[1] = v57;
  result = *&v80;
  v56[2] = v80;
  return result;
}

uint64_t sub_10006F64C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003714(&qword_1000C23A0, &qword_1000A2640);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006F6BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003714(&qword_1000C16C8, &unk_1000A2A00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10006F730()
{
  result = qword_1000C23B0;
  if (!qword_1000C23B0)
  {
    sub_10000375C(&qword_1000C23A8, &qword_1000A2700);
    sub_10006F7BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C23B0);
  }

  return result;
}

unint64_t sub_10006F7BC()
{
  result = qword_1000C23B8;
  if (!qword_1000C23B8)
  {
    sub_10000375C(&qword_1000C23A0, &qword_1000A2640);
    sub_10006F848();
    sub_10006FAD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C23B8);
  }

  return result;
}

unint64_t sub_10006F848()
{
  result = qword_1000C23C0;
  if (!qword_1000C23C0)
  {
    sub_10000375C(&qword_1000C23C8, &qword_1000A2708);
    sub_10006F8D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C23C0);
  }

  return result;
}

unint64_t sub_10006F8D4()
{
  result = qword_1000C23D0;
  if (!qword_1000C23D0)
  {
    sub_10000375C(&qword_1000C23D8, &qword_1000A2710);
    sub_10006F98C();
    sub_10001CDC8(&qword_1000C2400, &qword_1000C2408, &qword_1000A2728, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C23D0);
  }

  return result;
}

unint64_t sub_10006F98C()
{
  result = qword_1000C23E0;
  if (!qword_1000C23E0)
  {
    sub_10000375C(&qword_1000C23E8, &qword_1000A2718);
    sub_10006FA18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C23E0);
  }

  return result;
}

unint64_t sub_10006FA18()
{
  result = qword_1000C23F0;
  if (!qword_1000C23F0)
  {
    sub_10000375C(&qword_1000C23F8, &qword_1000A2720);
    sub_10001CDC8(&qword_1000C1900, &qword_1000C1908, &qword_1000A1960, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C23F0);
  }

  return result;
}

unint64_t sub_10006FAD0()
{
  result = qword_1000C2410;
  if (!qword_1000C2410)
  {
    type metadata accessor for WidgetBlendMode(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C2410);
  }

  return result;
}

double sub_10006FB28@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_10009E2C4();
  v12[3] = v2;
  v12[4] = &protocol witness table for Material;
  sub_100031E00(v12);
  sub_10009E2B4();
  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  v8 = 0;
  v7 = 0u;
  v6 = 0u;
  v5[3] = v2;
  v5[4] = &protocol witness table for Material;
  sub_100031E00(v5);
  sub_10009E2A4();
  sub_10009E164();
  sub_10009D974();
  result = *&v13;
  v4 = v14;
  *a1 = v13;
  *(a1 + 16) = v4;
  *(a1 + 32) = v15;
  return result;
}

uint64_t sub_10006FC28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003714(&qword_1000C17A0, &unk_1000A2270);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for AccessoryAndSceneEntity(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10006FD38(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100003714(&qword_1000C17A0, &unk_1000A2270);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for AccessoryAndSceneEntity(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_10006FE60(uint64_t a1)
{
  sub_10006FEFC(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for AccessoryAndSceneEntity(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CGSize();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10006FEFC(uint64_t a1)
{
  if (!qword_1000C1818)
  {
    sub_10009E3A4();
    v1 = sub_10009DA14();
    if (!v2)
    {
      atomic_store(v1, &qword_1000C1818);
    }
  }
}

uint64_t sub_10006FF70(uint64_t a1)
{
  sub_10009DDC4();
  sub_10009DDC4();
  sub_10009E174();
  sub_10009D974();
  sub_100003714(&qword_1000C2520, &qword_1000A27F8);
  sub_10001CDC8(&qword_1000C2528, &qword_1000C2520, &qword_1000A27F8, &protocol conformance descriptor for WidgetShapeStyle<A>);
  v2 = swift_allocObject();
  *(v2 + 16) = v3;
  *(v2 + 32) = v4;
  *(v2 + 48) = v5;
  return sub_10009D144();
}

uint64_t sub_1000700B8()
{
  v0 = objc_opt_self();
  v1 = [v0 labelColor];
  v2 = objc_opt_self();
  v3 = [v2 traitCollectionWithUserInterfaceStyle:1];
  v4 = [v1 resolvedColorWithTraitCollection:v3];

  sub_10009E104();
  v5 = [v0 secondaryLabelColor];
  v6 = [v2 traitCollectionWithUserInterfaceStyle:2];
  v7 = [v5 resolvedColorWithTraitCollection:v6];

  sub_10009E104();
  return sub_10009D144();
}

uint64_t sub_100070210()
{
  if (qword_1000C0AD8 != -1)
  {
    swift_once();
  }

  *(&v10 + 1) = &type metadata for Color;
  *&v9 = qword_1000C8310;

  sub_10009E164();
  sub_10009D974();
  sub_100003714(&qword_1000C2520, &qword_1000A27F8);
  sub_10001CDC8(&qword_1000C2528, &qword_1000C2520, &qword_1000A27F8, &protocol conformance descriptor for WidgetShapeStyle<A>);
  v5 = swift_allocObject();
  *(v5 + 16) = v6;
  *(v5 + 32) = v7;
  *(v5 + 48) = v8;
  if (qword_1000C0AC8 != -1)
  {
    swift_once();
  }

  v0 = qword_1000C0AD0;

  if (v0 != -1)
  {
    swift_once();
  }

  v1 = qword_1000C0AB8;
  swift_retain_n();
  if (v1 != -1)
  {
    swift_once();
  }

  v2 = qword_1000C0AC0;

  if (v2 != -1)
  {
    swift_once();
  }

  sub_10009D974();
  v4 = swift_allocObject();
  *(v4 + 16) = v9;
  *(v4 + 32) = v10;
  *(v4 + 48) = &protocol witness table for Color;
  return sub_10009D144();
}

double sub_100070504@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v60 = a2;
  v5 = sub_10009D174();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v49 - v10;
  v12 = sub_100003714(&qword_1000C24B0, &qword_1000A2788);
  v57 = *(v12 - 8);
  v58 = v12;
  __chkstk_darwin(v12);
  v14 = &v49 - v13;
  v15 = sub_100003714(&qword_1000C24B8, &qword_1000A2790);
  v55 = *(v15 - 8);
  v56 = v15;
  __chkstk_darwin(v15);
  v53 = &v49 - v16;
  v52 = sub_100003714(&qword_1000C24C0, &qword_1000A2798);
  __chkstk_darwin(v52);
  v49 = &v49 - v17;
  v54 = a1;
  v18 = sub_10009DDE4();
  v51 = type metadata accessor for WidgetTileViewToggleStyle(0);
  v19 = *(v51 + 20);
  v59 = v3;
  v20 = v3 + v19;
  v21 = sub_100025AD4();
  v50 = v20;
  if ((v21 & 1) == 0 || (type metadata accessor for AccessoryAndSceneEntity(0), (v18 & 1) == (sub_100017C60() & 1)))
  {
    if ((v18 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else if ((sub_100017C60() & 1) == 0)
  {
LABEL_4:
    v22 = 0;
    goto LABEL_7;
  }

  v23 = v20 + *(type metadata accessor for AccessoryAndSceneEntity(0) + 24);
  v22 = *(v23 + *(type metadata accessor for WidgetTileInfo(0) + 52));
LABEL_7:
  sub_10009E154();
  v24 = sub_10009E1A4();

  *(&v65 + 1) = &type metadata for Color;
  *&v66 = &protocol witness table for Color;
  *&v64 = v24;
  sub_10009E154();
  v25 = sub_10009E1A4();

  v62 = &type metadata for Color;
  v63 = &protocol witness table for Color;
  v61 = v25;
  sub_10009D144();
  if (v22)
  {
    sub_10009D154();
    v26 = sub_100024330(&v64, *(&v65 + 1));
    __chkstk_darwin(v26);
    (*(v28 + 16))(&v49 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
    v29 = sub_10009DA84();
    v30 = *(v6 + 8);
    v30(v11, v5);
    sub_100015F44(&v64);
    v61 = v29;
    sub_100070210();
    sub_10009D154();
  }

  else
  {
    sub_10009D164();
    v31 = sub_100024330(&v64, *(&v65 + 1));
    __chkstk_darwin(v31);
    (*(v33 + 16))(&v49 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
    v34 = sub_10009DA84();
    v30 = *(v6 + 8);
    v30(v11, v5);
    sub_100015F44(&v64);
    v61 = v34;
    sub_100070210();
    sub_10009D164();
  }

  v35 = sub_100024330(&v64, *(&v65 + 1));
  __chkstk_darwin(v35);
  (*(v37 + 16))(&v49 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = sub_10009DA84();
  v30(v9, v5);
  v39 = sub_100015F44(&v64);
  *&v64 = v38;
  __chkstk_darwin(v39);
  sub_100003714(&qword_1000C24C8, &qword_1000A27A0);
  sub_10007139C();
  sub_10009D984();
  sub_10001CDC8(&qword_1000C2510, &qword_1000C24B0, &qword_1000A2788, &protocol conformance descriptor for WidgetTileContainer<A, B, C>);
  v40 = v53;
  v41 = v58;
  sub_10009E004();
  (*(v57 + 8))(v14, v41);
  v42 = v49;
  (*(v55 + 32))(v49, v40, v56);
  v43 = *(v52 + 52);
  v44 = sub_10009CF14();
  (*(*(v44 - 8) + 16))(v42 + v43, v50, v44);
  sub_10009E2F4();
  sub_10009DA74();
  v45 = v60;
  sub_100071564(v42, v60);
  v46 = (v45 + *(sub_100003714(&qword_1000C2518, &qword_1000A27C0) + 36));
  v47 = v65;
  *v46 = v64;
  v46[1] = v47;
  result = *&v66;
  v46[2] = v66;
  return result;
}

uint64_t sub_100070CF4@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = sub_10009DA04();
  v50 = *(v3 - 8);
  v51 = v3;
  __chkstk_darwin(v3);
  v49 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10009D174();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v44 - v10;
  v12 = sub_10009DDF4();
  v47 = *(v12 - 8);
  v48 = v12;
  __chkstk_darwin(v12);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_100003714(&qword_1000C24E0, &qword_1000A27A8);
  __chkstk_darwin(v46);
  v16 = &v44 - v15;
  v17 = sub_10009DE04();
  sub_10006FF70(v17);
  if (a1)
  {
    sub_10009D154();
    v18 = sub_100024330(v53, v54);
    __chkstk_darwin(v18);
    (*(v20 + 16))(&v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    v45 = sub_10009DA84();
    v21 = *(v6 + 8);
    v21(v11, v5);
    sub_100015F44(v53);
    sub_1000700B8();
    sub_10009D154();
    v22 = sub_100024330(v53, v54);
    __chkstk_darwin(v22);
    (*(v24 + 16))(&v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
    v25 = sub_10009DA84();
    v21(v9, v5);
    sub_100015F44(v53);
    v26 = &enum case for ColorScheme.light(_:);
  }

  else
  {
    sub_10009D164();
    v27 = sub_100024330(v53, v54);
    __chkstk_darwin(v27);
    (*(v29 + 16))(&v44 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
    v45 = sub_10009DA84();
    v30 = *(v6 + 8);
    v30(v11, v5);
    sub_100015F44(v53);
    sub_1000700B8();
    sub_10009D164();
    v31 = sub_100024330(v53, v54);
    __chkstk_darwin(v31);
    (*(v33 + 16))(&v44 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
    v25 = sub_10009DA84();
    v30(v9, v5);
    sub_100015F44(v53);
    v26 = &enum case for ColorScheme.dark(_:);
  }

  (*(v47 + 32))(v16, v14, v48);
  v34 = &v16[*(v46 + 36)];
  *v34 = v45;
  v34[1] = v25;
  KeyPath = swift_getKeyPath();
  v37 = v49;
  v36 = v50;
  v38 = v51;
  (*(v50 + 104))(v49, *v26, v51);
  v39 = sub_100003714(&qword_1000C24C8, &qword_1000A27A0);
  v40 = v52;
  v41 = (v52 + *(v39 + 36));
  v42 = sub_100003714(&qword_1000C2508, &qword_1000A3280);
  (*(v36 + 32))(v41 + *(v42 + 28), v37, v38);
  *v41 = KeyPath;
  return sub_1000715DC(v16, v40);
}

unint64_t sub_10007139C()
{
  result = qword_1000C24D0;
  if (!qword_1000C24D0)
  {
    sub_10000375C(&qword_1000C24C8, &qword_1000A27A0);
    sub_100071454();
    sub_10001CDC8(&qword_1000C2500, &qword_1000C2508, &qword_1000A3280, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C24D0);
  }

  return result;
}

unint64_t sub_100071454()
{
  result = qword_1000C24D8;
  if (!qword_1000C24D8)
  {
    sub_10000375C(&qword_1000C24E0, &qword_1000A27A8);
    sub_10007150C();
    sub_10001CDC8(&qword_1000C24F0, &qword_1000C24F8, &unk_1000A27B0, &protocol conformance descriptor for _ForegroundStyleModifier2<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C24D8);
  }

  return result;
}

unint64_t sub_10007150C()
{
  result = qword_1000C24E8;
  if (!qword_1000C24E8)
  {
    sub_10009DDF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C24E8);
  }

  return result;
}

uint64_t sub_100071564(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003714(&qword_1000C24C0, &qword_1000A2798);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000715DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003714(&qword_1000C24E0, &qword_1000A27A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007164C()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000716A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v4 = sub_10009E3A4();
  v43 = *(v4 - 8);
  v44 = v4;
  v5 = __chkstk_darwin(v4);
  v42 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v41 = &v38 - v7;
  v8 = sub_10009DC44();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_10009E324();
  v12 = *(v45 - 8);
  __chkstk_darwin(v45);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for WidgetBlendMode(0);
  v15 = v2;
  v16 = v2 + *(v40 + 24);
  v17 = *v16;
  if (*(v16 + 8) == 1)
  {
    if ((v17 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {

    sub_10009E834();
    v18 = sub_10009DEA4();
    v39 = v12;
    v19 = v14;
    v20 = v8;
    v21 = v15;
    v22 = v18;
    sub_10009D8C4();

    v15 = v21;
    v8 = v20;
    v14 = v19;
    v12 = v39;
    sub_10009DC34();
    swift_getAtKeyPath();
    sub_10004D760(v17, 0);
    (*(v9 + 8))(v11, v8);
    if (v48 != 1)
    {
LABEL_7:
      v24 = &enum case for BlendMode.normal(_:);
      goto LABEL_11;
    }
  }

  v23 = *v15;
  if (*(v15 + 8) == 1)
  {
    if (v23)
    {
      goto LABEL_7;
    }
  }

  else
  {

    sub_10009E834();
    v25 = sub_10009DEA4();
    v39 = v8;
    v26 = v25;
    sub_10009D8C4();

    sub_10009DC34();
    swift_getAtKeyPath();
    sub_10004D760(v23, 0);
    (*(v9 + 8))(v11, v39);
    if (v47)
    {
      goto LABEL_7;
    }
  }

  v27 = v41;
  sub_100074480();
  v28 = v42;
  sub_10009E394();
  v29 = sub_10009E374();
  v30 = *(v43 + 8);
  v31 = v28;
  v32 = v44;
  v30(v31, v44);
  v30(v27, v32);
  v24 = &enum case for BlendMode.difference(_:);
  if (v29)
  {
    v24 = &enum case for BlendMode.normal(_:);
  }

LABEL_11:
  v33 = v45;
  (*(v12 + 104))(v14, *v24, v45);
  v34 = sub_100003714(&qword_1000C25D8, &qword_1000A2860);
  v35 = v46;
  (*(v12 + 32))(v46 + *(v34 + 36), v14, v33);
  v36 = sub_100003714(&qword_1000C25E0, &qword_1000A2868);
  return (*(*(v36 - 8) + 16))(v35, a1, v36);
}

unint64_t sub_100071B6C()
{
  result = qword_1000C2530;
  if (!qword_1000C2530)
  {
    sub_10000375C(&qword_1000C2518, &qword_1000A27C0);
    sub_10001CDC8(&qword_1000C2538, &qword_1000C24C0, &qword_1000A2798, &protocol conformance descriptor for IDView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C2530);
  }

  return result;
}

uint64_t sub_100071C38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_100003714(&qword_1000C17A0, &unk_1000A2270);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100071D00(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = sub_100003714(&qword_1000C17A0, &unk_1000A2270);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100071DCC(uint64_t a1)
{
  sub_10006AAC4();
  if (v1 <= 0x3F)
  {
    sub_10006FEFC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_100071E74()
{
  result = qword_1000C25E8;
  if (!qword_1000C25E8)
  {
    sub_10000375C(&qword_1000C25D8, &qword_1000A2860);
    sub_10001CDC8(&qword_1000C25F0, &qword_1000C25E0, &qword_1000A2868, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C25E8);
  }

  return result;
}

uint64_t sub_100071F2C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  sub_100003714(&qword_1000C16D0, &qword_1000A15B0);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for LargeSquareTileView(0);
  v5 = a2 + v4[5];
  *v5 = swift_getKeyPath();
  v5[8] = 0;
  v6 = a2 + v4[6];
  *v6 = swift_getKeyPath();
  v6[8] = 0;
  sub_1000741A0(a1, a2 + v4[7], type metadata accessor for AccessoryAndSceneEntity);
  v7 = type metadata accessor for AccessoryAndSceneEntity(0);
  v8 = a2 + v4[8];
  sub_1000741A0(a1 + *(v7 + 24), v8, type metadata accessor for WidgetTileInfo);
  v9 = type metadata accessor for WidgetTileInfo(0);
  *(a2 + v4[9]) = v8[v9[14]];
  v10 = &v8[v9[8]];
  v12 = *v10;
  v11 = *(v10 + 1);
  v13 = (a2 + v4[10]);
  *v13 = v12;
  v13[1] = v11;
  v14 = v8[v9[13]];

  if (v14 == 1)
  {
    sub_100074208(a1, type metadata accessor for AccessoryAndSceneEntity);
    v15 = *&v8[v9[12]];
  }

  else
  {
    v15 = sub_10009E174();
    result = sub_100074208(a1, type metadata accessor for AccessoryAndSceneEntity);
  }

  *(a2 + v4[11]) = v15;
  return result;
}

uint64_t sub_1000720D8()
{
  v1 = sub_10009DC44();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for LargeSquareTileView(0) + 20);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_10009E834();
    v7 = sub_10009DEA4();
    sub_10009D8C4();

    sub_10009DC34();
    swift_getAtKeyPath();
    sub_10004D760(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_100072230()
{
  v1 = sub_100003714(&qword_1000C26A0, &qword_1000A2968);
  __chkstk_darwin(v1 - 8);
  v64 = &v59 - v2;
  v63 = sub_100003714(&qword_1000C26A8, &qword_1000A2970);
  __chkstk_darwin(v63);
  v4 = &v59 - v3;
  v65 = sub_100003714(&qword_1000C26B0, &qword_1000A2978);
  __chkstk_darwin(v65);
  v6 = &v59 - v5;
  v7 = sub_100003714(&qword_1000C26B8, &qword_1000A2980);
  __chkstk_darwin(v7);
  v9 = &v59 - v8;
  v61 = sub_10009DC44();
  v10 = *(v61 - 8);
  __chkstk_darwin(v61);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(type metadata accessor for LargeSquareTileView(0) + 24);
  v62 = v0;
  v14 = v0 + v13;
  v15 = *v14;
  if (*(v14 + 8) == 1)
  {
    if ((v15 & 1) == 0)
    {
LABEL_3:
      v16 = v62;
      v17 = sub_10008CA68();
      goto LABEL_6;
    }
  }

  else
  {

    sub_10009E834();
    v19 = sub_10009DEA4();
    v60 = v4;
    v20 = v19;
    sub_10009D8C4();

    v4 = v60;
    sub_10009DC34();
    swift_getAtKeyPath();
    sub_10004D760(v15, 0);
    (*(v10 + 8))(v12, v61);
    if (v66 != 1)
    {
      goto LABEL_3;
    }
  }

  v16 = v62;
  v17 = sub_10008D598();
LABEL_6:
  v21 = v17;
  v22 = v18;
  v23 = v64;
  *v23 = sub_10009DD04();
  *(v23 + 8) = 0;
  *(v23 + 16) = 0;
  v24 = sub_100003714(&qword_1000C26C0, &qword_1000A2988);
  sub_1000727A0(v16, v21, v22, v23 + *(v24 + 44));

  sub_100003714(&qword_1000C26C8, &qword_1000A2990);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10009F8F0;
  v26 = sub_10009DEE4();
  *(inited + 32) = v26;
  v27 = sub_10009DF04();
  *(inited + 33) = v27;
  v28 = sub_10009DEF4();
  sub_10009DEF4();
  if (sub_10009DEF4() != v26)
  {
    v28 = sub_10009DEF4();
  }

  sub_10009DEF4();
  if (sub_10009DEF4() != v27)
  {
    v28 = sub_10009DEF4();
  }

  sub_10009D9E4();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_10005B0FC(v23, v4, &qword_1000C26A0, &qword_1000A2968);
  v37 = &v4[*(v63 + 36)];
  *v37 = v28;
  *(v37 + 1) = v30;
  *(v37 + 2) = v32;
  *(v37 + 3) = v34;
  *(v37 + 4) = v36;
  v37[40] = 0;
  v38 = sub_10009DEC4();
  sub_10009D9E4();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  sub_10005B0FC(v4, v6, &qword_1000C26A8, &qword_1000A2970);
  v47 = &v6[*(v65 + 36)];
  *v47 = v38;
  *(v47 + 1) = v40;
  *(v47 + 2) = v42;
  *(v47 + 3) = v44;
  *(v47 + 4) = v46;
  v47[40] = 0;
  v48 = sub_10009DED4();
  sub_10009D9E4();
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;
  sub_10005B0FC(v6, v9, &qword_1000C26B0, &qword_1000A2978);
  v57 = &v9[*(v7 + 36)];
  *v57 = v48;
  *(v57 + 1) = v50;
  *(v57 + 2) = v52;
  *(v57 + 3) = v54;
  *(v57 + 4) = v56;
  v57[40] = 0;
  sub_100073FEC(&qword_1000C26D0, &qword_1000C26B8, &qword_1000A2980, sub_100073FBC);
  sub_10009DFF4();
  return sub_1000160CC(v9, &qword_1000C26B8, &qword_1000A2980);
}

uint64_t sub_1000727A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a3;
  v39 = a2;
  v42 = a4;
  v5 = sub_10009D494();
  v35 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_10009D9A4();
  v38 = *(v41 - 8);
  __chkstk_darwin(v41);
  v34 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003714(&qword_1000C26F0, &qword_1000A2998);
  v10 = v9 - 8;
  v11 = __chkstk_darwin(v9);
  v40 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v34 - v14;
  __chkstk_darwin(v13);
  v36 = &v34 - v16;
  v17 = sub_100003714(&qword_1000C26F8, &qword_1000A29A0);
  v18 = __chkstk_darwin(v17 - 8);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v34 - v21;
  *v22 = sub_10009DC74();
  *(v22 + 1) = 0;
  v22[16] = 1;
  v23 = sub_100003714(&qword_1000C2700, &qword_1000A29A8);
  sub_100072C74(a1, &v22[*(v23 + 44)]);
  type metadata accessor for LargeSquareTileView(0);
  type metadata accessor for WidgetTileInfo(0);
  swift_bridgeObjectRetain_n();

  sub_10009D484();
  sub_10009D474();
  (*(v35 + 8))(v7, v5);

  sub_10009DC64();
  v24 = v34;
  sub_10009D9B4();
  sub_10009E2E4();
  sub_10009DAE4();
  (*(v38 + 32))(v15, v24, v41);
  v25 = &v15[*(v10 + 44)];
  v26 = v48;
  *(v25 + 4) = v47;
  *(v25 + 5) = v26;
  *(v25 + 6) = v49;
  v27 = v44;
  *v25 = v43;
  *(v25 + 1) = v27;
  v28 = v46;
  *(v25 + 2) = v45;
  *(v25 + 3) = v28;
  v29 = v36;
  sub_100074128(v15, v36);
  sub_10001E0A8(v22, v20, &qword_1000C26F8, &qword_1000A29A0);
  v30 = v40;
  sub_10001E0A8(v29, v40, &qword_1000C26F0, &qword_1000A2998);
  v31 = v42;
  sub_10001E0A8(v20, v42, &qword_1000C26F8, &qword_1000A29A0);
  v32 = sub_100003714(&qword_1000C2708, &unk_1000A29B0);
  sub_10001E0A8(v30, v31 + *(v32 + 48), &qword_1000C26F0, &qword_1000A2998);
  sub_1000160CC(v29, &qword_1000C26F0, &qword_1000A2998);
  sub_1000160CC(v22, &qword_1000C26F8, &qword_1000A29A0);
  sub_1000160CC(v30, &qword_1000C26F0, &qword_1000A2998);
  return sub_1000160CC(v20, &qword_1000C26F8, &qword_1000A29A0);
}

uint64_t sub_100072C74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v3 = sub_10009DD14();
  v84 = *(v3 - 8);
  v85 = v3;
  v4 = __chkstk_darwin(v3);
  v93 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v92 = &v77 - v6;
  v90 = sub_100003714(&qword_1000C21E0, &unk_1000A23B0);
  __chkstk_darwin(v90);
  v86 = &v77 - v7;
  v87 = sub_100003714(&qword_1000C21E8, &unk_1000A29C0);
  __chkstk_darwin(v87);
  v9 = (&v77 - v8);
  v10 = sub_10009DC44();
  v11 = *(v10 - 8);
  v82 = v10;
  v83 = v11;
  __chkstk_darwin(v10);
  v13 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for TileIconView(0);
  v14 = __chkstk_darwin(v88);
  v16 = (&v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v18 = &v77 - v17;
  v19 = sub_100003714(&qword_1000C21F0, &qword_1000A23C0);
  v20 = __chkstk_darwin(v19 - 8);
  v89 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v77 - v22;
  v24 = type metadata accessor for LargeSquareTileView(0);
  v25 = a1;
  v26 = a1 + *(v24 + 32);
  v27 = sub_10008CFDC();
  if (v28)
  {
    v29 = v27;
    v30 = v28;
    *v9 = sub_10009E2D4();
    v9[1] = v31;
    v32 = sub_100003714(&qword_1000C2248, &unk_1000A2520);
    sub_10007351C(v29, v30, (v9 + *(v32 + 44)));

    sub_10009E2F4();
    sub_10009DA74();
    v33 = v86;
    v34 = (v9 + *(v87 + 36));
    v35 = v95;
    *v34 = v94;
    v34[1] = v35;
    v34[2] = v96;
    sub_10001E0A8(v9, v33, &qword_1000C21E8, &unk_1000A29C0);
    swift_storeEnumTagMultiPayload();
    sub_10006DFC8();
    sub_10006E080();
    sub_10009DD94();
    sub_1000160CC(v9, &qword_1000C21E8, &unk_1000A29C0);
    goto LABEL_16;
  }

  v78 = v16;
  v36 = v26;
  v80 = v23;
  v81 = v13;
  v37 = v82;
  v79 = v18;
  v38 = v25 + *(v24 + 24);
  v39 = *v38;
  v40 = *(v38 + 8);
  if (v40 == 1)
  {
    v41 = v82;
    v42 = v83;
    if (v39)
    {
LABEL_5:
      v43 = 36;
      goto LABEL_8;
    }
  }

  else
  {

    sub_10009E834();
    v44 = sub_10009DEA4();
    sub_10009D8C4();

    v45 = v81;
    sub_10009DC34();
    swift_getAtKeyPath();
    sub_10004D760(v39, 0);
    v42 = v83;
    v46 = v45;
    v41 = v37;
    (*(v83 + 8))(v46, v37);
    if (v94)
    {
      goto LABEL_5;
    }
  }

  v43 = 32;
LABEL_8:
  v47 = type metadata accessor for WidgetTileInfo(0);
  v48 = (v36 + *(v47 + v43));
  v49 = v48[1];
  v83 = *v48;

  sub_10009D594();
  sub_10009D594();
  v50 = v81;
  if (!v40)
  {

    sub_10009E834();
    v52 = sub_10009DEA4();
    sub_10009D8C4();

    sub_10009DC34();
    swift_getAtKeyPath();
    sub_10004D760(v39, 0);
    (*(v42 + 8))(v50, v41);
    if (v94 != 1)
    {
      goto LABEL_10;
    }

LABEL_12:
    v51 = *(v36 + *(v47 + 48));

    goto LABEL_13;
  }

  if (v39)
  {
    goto LABEL_12;
  }

LABEL_10:
  v51 = sub_10009E174();
LABEL_13:
  v53 = v86;
  v54 = v93;
  v86 = sub_10009E304();
  v56 = v55;
  KeyPath = swift_getKeyPath();
  v58 = v78;
  *v78 = KeyPath;
  *(v58 + 8) = 0;
  v59 = v88;
  v60 = *(v88 + 20);
  *(v58 + v60) = swift_getKeyPath();
  sub_100003714(&qword_1000C16D0, &qword_1000A15B0);
  swift_storeEnumTagMultiPayload();
  v61 = v58 + v59[6];
  *v61 = swift_getKeyPath();
  *(v61 + 8) = 0;
  v62 = v59[7];
  *(v58 + v62) = swift_getKeyPath();
  sub_100003714(&qword_1000C16C8, &unk_1000A2A00);
  swift_storeEnumTagMultiPayload();
  v63 = (v58 + v59[8]);
  v64 = v84;
  *v63 = v83;
  v63[1] = v49;
  v65 = *(v64 + 16);
  v66 = v85;
  v65(v58 + v59[9], v92, v85);
  v65(v58 + v59[10], v54, v66);
  sub_10009E174();
  v67 = sub_10009E134();

  if (v67)
  {
    v68 = sub_10009E1B4();

    v51 = v68;
  }

  v69 = v85;
  v70 = *(v84 + 8);
  v70(v93, v85);
  v70(v92, v69);
  *(v58 + v59[11]) = v51;
  *(v58 + v59[12]) = 0x4046000000000000;
  *(v58 + v59[13]) = 0x4041000000000000;
  v71 = (v58 + v59[14]);
  *v71 = v86;
  v71[1] = v56;
  v72 = v79;
  sub_10006DF64(v58, v79);
  sub_1000741A0(v72, v53, type metadata accessor for TileIconView);
  swift_storeEnumTagMultiPayload();
  sub_10006DFC8();
  sub_10006E080();
  v23 = v80;
  sub_10009DD94();
  sub_100074208(v72, type metadata accessor for TileIconView);
LABEL_16:
  v73 = v89;
  sub_10001E0A8(v23, v89, &qword_1000C21F0, &qword_1000A23C0);
  v74 = v91;
  sub_10001E0A8(v73, v91, &qword_1000C21F0, &qword_1000A23C0);
  v75 = v74 + *(sub_100003714(&qword_1000C2710, &unk_1000A2A10) + 48);
  *v75 = 0;
  *(v75 + 8) = 1;
  sub_1000160CC(v23, &qword_1000C21F0, &qword_1000A23C0);
  return sub_1000160CC(v73, &qword_1000C21F0, &qword_1000A23C0);
}

uint64_t sub_10007351C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v40 = a3;
  v37 = sub_100003714(&qword_1000C2250, &qword_1000A2A20);
  v5 = *(v37 - 8);
  v6 = __chkstk_darwin(v37);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v36 = &v34 - v8;
  v9 = sub_10009E3A4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = sub_10009E164();
  type metadata accessor for LargeSquareTileView(0);
  sub_100073984(v12);
  sub_1000720D8();
  v35 = sub_10001D53C(v12);
  (*(v10 + 8))(v12, v9);
  *&v50[0] = a1;
  *(&v50[0] + 1) = a2;
  sub_1000037A4();

  v13 = sub_10009DFE4();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  KeyPath = swift_getKeyPath();
  v21 = v17 & 1;
  LOBYTE(v43) = v17 & 1;
  v22 = swift_getKeyPath();
  LOBYTE(v50[0]) = 0;
  sub_10009DF34();
  v23 = sub_10009DF84();
  v24 = swift_getKeyPath();
  *&v43 = v13;
  *(&v43 + 1) = v15;
  LOBYTE(v44) = v21;
  *(&v44 + 1) = v19;
  LOWORD(v45) = 256;
  *(&v45 + 1) = KeyPath;
  LOBYTE(v46) = 1;
  *(&v46 + 1) = v22;
  *&v47 = 1;
  BYTE8(v47) = 0;
  *&v48 = v24;
  *(&v48 + 1) = v23;
  v49 = v35;
  v41 = a1;
  v42 = a2;

  sub_100003714(&qword_1000C2258, &unk_1000A2590);
  sub_10006E1BC();
  sub_10009E024();
  v25 = v36;
  sub_10009E014();
  v50[3] = v46;
  v50[4] = v47;
  v50[5] = v48;
  v51 = v49;
  v50[0] = v43;
  v50[1] = v44;
  v50[2] = v45;
  sub_1000160CC(v50, &qword_1000C2258, &unk_1000A2590);
  v26 = *(v5 + 16);
  v27 = v39;
  v28 = v37;
  v26(v39, v25, v37);
  v29 = v40;
  *v40 = v38;
  v29[1] = 0x3FF0000000000000;
  v30 = v29;
  v31 = sub_100003714(&qword_1000C22D8, qword_1000A2AF0);
  v26(v30 + *(v31 + 48), v27, v28);

  v32 = *(v5 + 8);
  v32(v25, v28);
  v32(v27, v28);
}

uint64_t sub_100073984@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_10009DC44();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003714(&qword_1000C16D0, &qword_1000A15B0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_10001E0A8(v2, &v14 - v9, &qword_1000C16D0, &qword_1000A15B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10009E3A4();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_10009E834();
    v13 = sub_10009DEA4();
    sub_10009D8C4();

    sub_10009DC34();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t type metadata accessor for LargeSquareTileView(uint64_t a1)
{
  result = qword_1000C2650;
  if (!qword_1000C2650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100073BF8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100003714(&qword_1000C17A0, &unk_1000A2270);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for AccessoryAndSceneEntity(0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[7];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = type metadata accessor for WidgetTileInfo(0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[8];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[10] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_100073D70(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100003714(&qword_1000C17A0, &unk_1000A2270);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for AccessoryAndSceneEntity(0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[7];
    }

    else
    {
      result = type metadata accessor for WidgetTileInfo(0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[10] + 8) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[8];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void sub_100073ED0(uint64_t a1)
{
  sub_10006FEFC(319);
  if (v1 <= 0x3F)
  {
    sub_10006AAC4();
    if (v2 <= 0x3F)
    {
      type metadata accessor for AccessoryAndSceneEntity(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for WidgetTileInfo(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_100073FEC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000375C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100074070()
{
  result = qword_1000C26E0;
  if (!qword_1000C26E0)
  {
    sub_10000375C(&qword_1000C26A8, &qword_1000A2970);
    sub_10001CDC8(&qword_1000C26E8, &qword_1000C26A0, &qword_1000A2968, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C26E0);
  }

  return result;
}

uint64_t sub_100074128(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003714(&qword_1000C26F0, &qword_1000A2998);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000741A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100074208(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100074268@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10009DB34();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000742C0@<X0>(uint64_t a1@<X8>)
{
  result = sub_10009DC14();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100074324@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10009DB34();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10007437C@<X0>(uint64_t a1@<X8>)
{
  result = sub_10009DC14();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1000743E8()
{
  sub_10000375C(&qword_1000C26B8, &qword_1000A2980);
  sub_100073FEC(&qword_1000C26D0, &qword_1000C26B8, &qword_1000A2980, sub_100073FBC);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100074484(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = sub_10009CF14();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_100074550, 0, 0);
}

uint64_t sub_100074550()
{
  v1 = v0;
  v2 = *(v0 + 72);
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = [*(v0 + 80) homes];
      sub_100037D18();
      v4 = sub_10009E6A4();

      *(v0 + 56) = v4;
      sub_10009E814();
      sub_100003714(&qword_1000C2718, &qword_1000A2B30);
      sub_100075734();
      v5 = sub_10009E7A4();
    }

    else
    {
      v8 = [*(v0 + 80) homes];
      sub_100037D18();
      v9 = sub_10009E6A4();

      if (v9 >> 62)
      {
        goto LABEL_28;
      }

      for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10009EBA4())
      {
        v11 = 0;
        v37 = v9 & 0xFFFFFFFFFFFFFF8;
        v38 = v9 & 0xC000000000000001;
        v35 = v9;
        v36 = v9 + 32;
        v41 = v2 + 56;
        v33 = v1[12];
        v34 = i;
        v42 = (v33 + 8);
        while (1)
        {
          if (v38)
          {
            v12 = sub_10009EAE4();
          }

          else
          {
            if (v11 >= *(v37 + 16))
            {
              goto LABEL_27;
            }

            v12 = *(v36 + 8 * v11);
          }

          v13 = v12;
          if (__OFADD__(v11++, 1))
          {
            break;
          }

          v15 = [v12 uniqueIdentifier];
          sub_10009CF04();

          v16 = v1[14];
          v17 = v1[11];
          if (*(v2 + 16))
          {
            v39 = v13;
            v40 = v11;
            sub_100076A94(&qword_1000C0B68, &protocol conformance descriptor for UUID);
            v18 = sub_10009E4F4();
            v19 = -1 << *(v2 + 32);
            v20 = v18 & ~v19;
            if ((*(v41 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
            {
              v21 = ~v19;
              v22 = *(v33 + 72);
              v23 = *(v33 + 16);
              while (1)
              {
                v24 = v1[13];
                v25 = v1;
                v26 = v1[11];
                v27 = v2;
                v23(v24, *(v2 + 48) + v20 * v22, v26);
                sub_100076A94(&qword_1000C0BE8, &protocol conformance descriptor for UUID);
                v28 = sub_10009E534();
                v29 = *v42;
                (*v42)(v24, v26);
                if (v28)
                {
                  break;
                }

                v20 = (v20 + 1) & v21;
                v2 = v27;
                v1 = v25;
                if (((*(v41 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
                {
                  goto LABEL_21;
                }
              }

              v29(v25[14], v25[11]);
              sub_10009EB34();
              sub_10009EB64();
              sub_10009EB74();
              sub_10009EB44();
              v2 = v27;
              v1 = v25;
            }

            else
            {
LABEL_21:
              v30 = v1[14];
              v31 = v1[11];

              (*v42)(v30, v31);
            }

            i = v34;
            v9 = v35;
            v11 = v40;
          }

          else
          {

            (*v42)(v16, v17);
          }

          if (v11 == i)
          {
            goto LABEL_29;
          }
        }

        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        ;
      }

LABEL_29:

      v1[8] = _swiftEmptyArrayStorage;
      sub_10009E814();
      sub_100003714(&qword_1000C2718, &qword_1000A2B30);
      sub_100075734();
      v5 = sub_10009E7A4();
    }

    v32 = v1[1];

    return v32(v5);
  }

  else
  {
    v6 = swift_task_alloc();
    *(v0 + 120) = v6;
    *v6 = v0;
    v6[1] = sub_100074A88;

    return sub_100075D38();
  }
}

uint64_t sub_100074A88(uint64_t a1)
{
  *(*v1 + 128) = a1;

  return _swift_task_switch(sub_100074B88, 0, 0);
}

uint64_t sub_100074B88()
{
  v1 = v0[16];
  v0[6] = v1;
  if (v1)
  {
    v2 = v1;
    sub_10009E684();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10009E6C4();
    }

    sub_10009E6E4();
  }

  sub_100075FC8((v0 + 6));

  v3 = v0[1];

  return v3(_swiftEmptyArrayStorage);
}

uint64_t sub_100074C84(void *a1, uint64_t a2)
{
  v26 = a2;
  v3 = sub_100003714(&qword_1000C2798, &qword_1000A2C88);
  v24 = *(v3 - 8);
  v25 = v3;
  __chkstk_darwin(v3);
  v23 = &v19 - v4;
  v5 = sub_100003714(&qword_1000C27A0, &qword_1000A2C90);
  v21 = *(v5 - 8);
  v22 = v5;
  __chkstk_darwin(v5);
  v7 = &v19 - v6;
  v8 = sub_100003714(&qword_1000C27A8, &qword_1000A2C98);
  v20 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v19 - v9;
  v11 = sub_100003714(&qword_1000C27B0, &qword_1000A2CA0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19 - v13;
  sub_100024330(a1, a1[3]);
  sub_1000768BC();
  v15 = v26;
  sub_10009EE24();
  if (!v15)
  {
    v28 = 0;
    sub_1000769B8();
    sub_10009EC84();
    (*(v20 + 8))(v10, v8);
    return (*(v12 + 8))(v14, v11);
  }

  if (v15 == 1)
  {
    v29 = 1;
    sub_100076964();
    sub_10009EC84();
    (*(v21 + 8))(v7, v22);
    return (*(v12 + 8))(v14, v11);
  }

  v30 = 2;
  sub_100076910();
  v17 = v23;
  sub_10009EC84();
  v27 = v15;
  sub_100003714(&qword_1000C2770, &qword_1000A2C80);
  sub_100076A0C(&qword_1000C27B8, &qword_1000C27C0, &protocol conformance descriptor for UUID, &protocol conformance descriptor for <> Set<A>);
  v18 = v25;
  sub_10009ECD4();
  (*(v24 + 8))(v17, v18);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_1000750B0@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_1000750EC(uint64_t a1)
{
  v2 = sub_100076964();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100075128(uint64_t a1)
{
  v2 = sub_100076964();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100075164()
{
  v1 = 7105633;
  if (*v0 != 1)
  {
    v1 = 2037149295;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E6572727563;
  }
}

uint64_t sub_1000751B0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10007618C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000751E4(uint64_t a1)
{
  v2 = sub_1000768BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100075220(uint64_t a1)
{
  v2 = sub_1000768BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10007525C(uint64_t a1)
{
  v2 = sub_1000769B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100075298(uint64_t a1)
{
  v2 = sub_1000769B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int HomeWidget.HomeWidgetError.hashValue.getter()
{
  sub_10009EDD4();
  sub_10009EDE4(0);
  return sub_10009EE04();
}

Swift::Int sub_100075340(uint64_t a1)
{
  sub_10009EDD4();
  sub_10009EDE4(0);
  return sub_10009EE04();
}

uint64_t sub_10007538C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_10009ED34();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10007540C(uint64_t a1)
{
  v2 = sub_100076910();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100075448(uint64_t a1)
{
  v2 = sub_100076910();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100075484(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!v2)
  {
    return !v3;
  }

  if (v2 == 1)
  {
    return v3 == 1;
  }

  if (v3 < 2)
  {
    return 0;
  }

  return sub_100075798(v2, v3);
}

Swift::Int sub_1000754C4()
{
  v1 = *v0;
  sub_10009EDD4();
  if (v1)
  {
    if (v1 != 1)
    {
      sub_10009EDE4(2uLL);
      sub_100075B20(v4, v1);
      return sub_10009EE04();
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  sub_10009EDE4(v2);
  return sub_10009EE04();
}

void sub_100075538(__int128 *a1)
{
  v3 = *v1;
  if (!*v1)
  {
    v4 = 0;
    goto LABEL_5;
  }

  if (v3 == 1)
  {
    v4 = 1;
LABEL_5:
    sub_10009EDE4(v4);
    return;
  }

  sub_10009EDE4(2uLL);

  sub_100075B20(a1, v3);
}

Swift::Int sub_1000755B8(uint64_t a1)
{
  v2 = *v1;
  sub_10009EDD4();
  if (v2)
  {
    if (v2 != 1)
    {
      sub_10009EDE4(2uLL);
      sub_100075B20(v5, v2);
      return sub_10009EE04();
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  sub_10009EDE4(v3);
  return sub_10009EE04();
}

uint64_t sub_100075628@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1000762A4(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_100075670()
{
  if (!*v0)
  {
    return 0x746E6572727563;
  }

  if (*v0 == 1)
  {
    return 7105633;
  }

  sub_10009CF14();
  sub_100076A94(&qword_1000C0B68, &protocol conformance descriptor for UUID);
  v2._countAndFlagsBits = sub_10009E764();
  sub_10009E634(v2);

  return 0x3A796C6E6FLL;
}

unint64_t sub_100075734()
{
  result = qword_1000C2720;
  if (!qword_1000C2720)
  {
    sub_10000375C(&qword_1000C2718, &qword_1000A2B30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C2720);
  }

  return result;
}

uint64_t sub_100075798(uint64_t a1, uint64_t a2)
{
  v4 = sub_10009CF14();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v44 = &v33 - v10;
  result = __chkstk_darwin(v9);
  v13 = &v33 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v14 = 0;
  v15 = *(a1 + 56);
  v33 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v40 = v5 + 32;
  v42 = a2 + 56;
  v43 = v5 + 16;
  v20 = (v5 + 8);
  v34 = v19;
  v35 = &v33 - v12;
  v36 = v5;
  v37 = a1;
  if (v18)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v18));
      v39 = (v18 - 1) & v18;
LABEL_13:
      v24 = *(a1 + 48);
      v41 = *(v5 + 72);
      v25 = *(v5 + 16);
      v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4);
      (*(v5 + 32))(v44, v13, v4);
      sub_100076A94(&qword_1000C0B68, &protocol conformance descriptor for UUID);
      v26 = sub_10009E4F4();
      v27 = -1 << *(a2 + 32);
      v28 = v26 & ~v27;
      if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        break;
      }

      v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v29 = a2;
      v30 = ~v27;
      while (1)
      {
        v25(v8, *(v29 + 48) + v28 * v41, v4);
        sub_100076A94(&qword_1000C0BE8, &protocol conformance descriptor for UUID);
        v31 = sub_10009E534();
        v32 = *v20;
        (*v20)(v8, v4);
        if (v31)
        {
          break;
        }

        v28 = (v28 + 1) & v30;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          v32(v44, v4);
          return 0;
        }
      }

      result = (v32)(v44, v4);
      a2 = v29;
      v5 = v36;
      a1 = v37;
      v19 = v34;
      v13 = v35;
      v18 = v39;
      if (!v39)
      {
        goto LABEL_8;
      }
    }

    (*v20)(v44, v4);
    return 0;
  }

LABEL_8:
  v22 = v14;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      return 1;
    }

    v23 = *(v33 + 8 * v14);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v39 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_100075B20(__int128 *a1, uint64_t a2)
{
  v4 = sub_10009CF14();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[3];
  v24 = a1[2];
  v25 = v8;
  v26 = *(a1 + 8);
  v10 = *a1;
  v9 = a1[1];
  v21[0] = a1;
  v22 = v10;
  v23 = v9;
  v11 = sub_10009EE04();
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 56);
  v15 = (v12 + 63) >> 6;
  v21[2] = v5 + 16;
  v21[3] = v11;
  v21[1] = v5 + 8;

  v16 = 0;
  for (i = 0; v14; v16 ^= v20)
  {
    v18 = i;
LABEL_9:
    v19 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    (*(v5 + 16))(v7, *(a2 + 48) + *(v5 + 72) * (v19 | (v18 << 6)), v4);
    sub_100076A94(&qword_1000C0B68, &protocol conformance descriptor for UUID);
    v20 = sub_10009E4F4();
    (*(v5 + 8))(v7, v4);
  }

  while (1)
  {
    v18 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v18 >= v15)
    {

      sub_10009EDE4(v16);
      return;
    }

    v14 = *(a2 + 56 + 8 * v18);
    ++i;
    if (v14)
    {
      i = v18;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_100075D54()
{
  type metadata accessor for HomeWidget();
  v0[6] = static HomeWidget.shared.getter();
  v1 = sub_10009D224();
  v0[7] = v2;
  v0[8] = v3;
  v0[2] = v1;
  v0[3] = v2;
  v0[4] = v4;
  v0[5] = v3;
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_100075E28;

  return HomeWidget.recommendedHome<A>(configuration:)((v0 + 2), &type metadata for BasicIdentity, &protocol witness table for BasicIdentity);
}

uint64_t sub_100075E28(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    return _swift_task_switch(sub_100075FB0, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_100075FC8(uint64_t a1)
{
  v2 = sub_100003714(&qword_1000C2728, &qword_1000A2B40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100076030(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100076054(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000760A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_100076104(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t sub_100076138()
{
  result = qword_1000C2730;
  if (!qword_1000C2730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C2730);
  }

  return result;
}

uint64_t sub_10007618C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E6572727563 && a2 == 0xE700000000000000;
  if (v4 || (sub_10009ED34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7105633 && a2 == 0xE300000000000000 || (sub_10009ED34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 2037149295 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_10009ED34();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1000762A4(void *a1)
{
  v2 = sub_100003714(&qword_1000C2738, &qword_1000A2C58);
  v3 = *(v2 - 8);
  v35 = v2;
  v36 = v3;
  __chkstk_darwin(v2);
  v38 = &v32 - v4;
  v5 = sub_100003714(&qword_1000C2740, &qword_1000A2C60);
  v33 = *(v5 - 8);
  v34 = v5;
  __chkstk_darwin(v5);
  v7 = &v32 - v6;
  v8 = sub_100003714(&qword_1000C2748, &qword_1000A2C68);
  v37 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v32 - v9;
  v11 = sub_100003714(&qword_1000C2750, &qword_1000A2C70);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32 - v13;
  v15 = a1[3];
  v40 = a1;
  v16 = sub_100024330(a1, v15);
  sub_1000768BC();
  v17 = v39;
  sub_10009EE14();
  if (!v17)
  {
    v32 = v8;
    v18 = v37;
    v19 = v38;
    v39 = v12;
    v16 = v14;
    v20 = sub_10009EC74();
    v21 = *(v20 + 16);
    if (!v21 || ((v22 = *(v20 + 32), v21 == 1) ? (v23 = v22 == 3) : (v23 = 1), v23))
    {
      v24 = sub_10009EB14();
      swift_allocError();
      v26 = v25;
      sub_100003714(&qword_1000C2760, &qword_1000A2C78);
      *v26 = &type metadata for HomeScope;
      sub_10009EC04();
      sub_10009EB04();
      (*(*(v24 - 8) + 104))(v26, enum case for DecodingError.typeMismatch(_:), v24);
      swift_willThrow();
      (*(v39 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else if (*(v20 + 32))
    {
      v28 = v39;
      if (v22 == 1)
      {
        v43 = 1;
        sub_100076964();
        sub_10009EBF4();
        (*(v33 + 8))(v7, v34);
        (*(v28 + 8))(v14, v11);
        swift_unknownObjectRelease();
        v16 = 1;
      }

      else
      {
        v44 = 2;
        sub_100076910();
        sub_10009EBF4();
        sub_100003714(&qword_1000C2770, &qword_1000A2C80);
        sub_100076A0C(&qword_1000C2778, &qword_1000C2780, &protocol conformance descriptor for UUID, &protocol conformance descriptor for <> Set<A>);
        v31 = v35;
        sub_10009EC54();
        (*(v36 + 8))(v19, v31);
        (*(v28 + 8))(v14, v11);
        swift_unknownObjectRelease();
        v16 = v41;
      }
    }

    else
    {
      v42 = 0;
      sub_1000769B8();
      v29 = v10;
      sub_10009EBF4();
      v30 = v39;
      (*(v18 + 8))(v29, v32);
      (*(v30 + 8))(v14, v11);
      swift_unknownObjectRelease();
      v16 = 0;
    }
  }

  sub_100015F44(v40);
  return v16;
}

unint64_t sub_1000768BC()
{
  result = qword_1000C2758;
  if (!qword_1000C2758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C2758);
  }

  return result;
}

unint64_t sub_100076910()
{
  result = qword_1000C2768;
  if (!qword_1000C2768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C2768);
  }

  return result;
}

unint64_t sub_100076964()
{
  result = qword_1000C2788;
  if (!qword_1000C2788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C2788);
  }

  return result;
}

unint64_t sub_1000769B8()
{
  result = qword_1000C2790;
  if (!qword_1000C2790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C2790);
  }

  return result;
}

uint64_t sub_100076A0C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10000375C(&qword_1000C2770, &qword_1000A2C80);
    sub_100076A94(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100076A94(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_10009CF14();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TileStyle(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TileStyle(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for HomeScope.OnlyCodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for HomeScope.OnlyCodingKeys(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_100076D2C()
{
  result = qword_1000C27C8;
  if (!qword_1000C27C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C27C8);
  }

  return result;
}

unint64_t sub_100076D84()
{
  result = qword_1000C27D0;
  if (!qword_1000C27D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C27D0);
  }

  return result;
}

unint64_t sub_100076DDC()
{
  result = qword_1000C27D8;
  if (!qword_1000C27D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C27D8);
  }

  return result;
}

unint64_t sub_100076E34()
{
  result = qword_1000C27E0;
  if (!qword_1000C27E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C27E0);
  }

  return result;
}

unint64_t sub_100076E8C()
{
  result = qword_1000C27E8;
  if (!qword_1000C27E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C27E8);
  }

  return result;
}

unint64_t sub_100076EE4()
{
  result = qword_1000C27F0;
  if (!qword_1000C27F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C27F0);
  }

  return result;
}

unint64_t sub_100076F3C()
{
  result = qword_1000C27F8;
  if (!qword_1000C27F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C27F8);
  }

  return result;
}

unint64_t sub_100076F94()
{
  result = qword_1000C2800;
  if (!qword_1000C2800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C2800);
  }

  return result;
}

unint64_t sub_100076FEC()
{
  result = qword_1000C2808;
  if (!qword_1000C2808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C2808);
  }

  return result;
}

unint64_t sub_100077044()
{
  result = qword_1000C2810;
  if (!qword_1000C2810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C2810);
  }

  return result;
}

unint64_t sub_1000770A4()
{
  result = qword_1000C2818;
  if (!qword_1000C2818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C2818);
  }

  return result;
}

unint64_t sub_1000770FC()
{
  result = qword_1000C2820;
  if (!qword_1000C2820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C2820);
  }

  return result;
}

uint64_t sub_1000771BC()
{
  v0 = sub_10009CC04();
  sub_10001F4BC(v0, qword_1000C82C0);
  v1 = sub_100015B68(v0, qword_1000C82C0);
  v2 = enum case for IntentAuthenticationPolicy.alwaysAllowed(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_100077244()
{
  v0 = sub_10009CD34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10009CF54();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10009E5A4();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10009CD54();
  sub_10001F4BC(v6, qword_1000C82D8);
  sub_100015B68(v6, qword_1000C82D8);
  sub_10009E554();
  sub_10009CF44();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_10009CD64();
}

uint64_t sub_100077434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[89] = a3;
  v3[88] = a2;
  v3[87] = a1;
  v3[90] = type metadata accessor for AccessoryAndSceneEntity(0);
  v3[91] = swift_task_alloc();
  v3[92] = type metadata accessor for WidgetTileInfo(0);
  v3[93] = swift_task_alloc();
  v3[94] = swift_task_alloc();
  v4 = sub_10009D924();
  v3[95] = v4;
  v3[96] = *(v4 - 8);
  v3[97] = swift_task_alloc();
  v5 = sub_10009D8F4();
  v3[98] = v5;
  v3[99] = *(v5 - 8);
  v3[100] = swift_task_alloc();

  return _swift_task_switch(sub_1000775C4, 0, 0);
}

uint64_t sub_1000775C4()
{
  v29 = v0;
  if (qword_1000C0A90 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 776);
  v2 = *(v0 + 768);
  v3 = *(v0 + 760);
  v4 = *(v0 + 752);
  v5 = *(v0 + 736);
  v6 = *(v0 + 728);
  v7 = *(v0 + 720);
  v8 = sub_100015B68(v3, qword_1000C8278);
  *(v0 + 808) = v8;
  (*(v2 + 16))(v1, v8, v3);
  sub_10009D444();
  swift_allocObject();
  sub_10009D434();
  sub_10009D8E4();
  sub_10009C954();
  sub_10007AF10(v6 + *(v7 + 24), v4, type metadata accessor for WidgetTileInfo);
  sub_10003092C(v6, type metadata accessor for AccessoryAndSceneEntity);
  v9 = *(v4 + *(v5 + 60) + 8);
  if (v9 < 3)
  {
    v10 = swift_task_alloc();
    *(v0 + 824) = v10;
    *v10 = v0;
    v11 = sub_100077E10;
LABEL_8:
    v10[1] = v11;

    return sub_100061870();
  }

  if (v9 == 3)
  {
    v10 = swift_task_alloc();
    *(v0 + 816) = v10;
    *v10 = v0;
    v11 = sub_100077A60;
    goto LABEL_8;
  }

  v13 = sub_10009D904();
  v14 = sub_10009E844();

  if (os_log_type_enabled(v13, v14))
  {
    v16 = *(v0 + 744);
    v17 = *(v0 + 736);
    v18 = *(v0 + 728);
    v19 = *(v0 + 720);
    v20 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v20 = 136315394;
    *(v20 + 4) = sub_10002AD68(0x286D726F66726570, 0xE900000000000029, &v28);
    *(v20 + 12) = 2080;
    sub_10009C954();
    sub_10007AF10(v18 + *(v19 + 24), v16, type metadata accessor for WidgetTileInfo);
    sub_10003092C(v18, type metadata accessor for AccessoryAndSceneEntity);
    v21 = (v16 + *(v17 + 24));
    v22 = *v21;
    v23 = v21[1];

    sub_10003092C(v16, type metadata accessor for WidgetTileInfo);
    v24 = sub_10002AD68(v22, v23, &v28);

    *(v20 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v13, v14, "%s %s sent toggle() to device", v20, 0x16u);
    swift_arrayDestroy();
  }

  v25 = *(v0 + 744);
  v27 = *(v0 + 704);
  sub_10007AF10(*(v0 + 752), v25, type metadata accessor for WidgetTileInfo);
  v26 = swift_task_alloc();
  *(v0 + 832) = v26;
  *(v26 + 16) = v27;
  *(v26 + 32) = v25;
  swift_asyncLet_begin();
  sub_10009C934();

  return _swift_asyncLet_finish(v0 + 16);
}

uint64_t sub_100077A60()
{

  return _swift_task_switch(sub_100077B5C, 0, 0);
}

uint64_t sub_100077B5C()
{
  v17 = v0;

  v1 = sub_10009D904();
  v2 = sub_10009E844();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 744);
    v4 = *(v0 + 736);
    v5 = *(v0 + 728);
    v6 = *(v0 + 720);
    v7 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_10002AD68(0x286D726F66726570, 0xE900000000000029, &v16);
    *(v7 + 12) = 2080;
    sub_10009C954();
    sub_10007AF10(v5 + *(v6 + 24), v3, type metadata accessor for WidgetTileInfo);
    sub_10003092C(v5, type metadata accessor for AccessoryAndSceneEntity);
    v8 = (v3 + *(v4 + 24));
    v9 = *v8;
    v10 = v8[1];

    sub_10003092C(v3, type metadata accessor for WidgetTileInfo);
    v11 = sub_10002AD68(v9, v10, &v16);

    *(v7 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s %s sent toggle() to device", v7, 0x16u);
    swift_arrayDestroy();
  }

  v12 = *(v0 + 744);
  v15 = *(v0 + 704);
  sub_10007AF10(*(v0 + 752), v12, type metadata accessor for WidgetTileInfo);
  v13 = swift_task_alloc();
  *(v0 + 832) = v13;
  *(v13 + 16) = v15;
  *(v13 + 32) = v12;
  swift_asyncLet_begin();
  sub_10009C934();

  return _swift_asyncLet_finish(v0 + 16);
}

uint64_t sub_100077E10()
{

  return _swift_task_switch(sub_10007AF78, 0, 0);
}

uint64_t sub_100077F28()
{
  v1 = v0[100];
  v2 = v0[99];
  v3 = v0[98];
  v4 = v0[94];
  v5 = v0[93];

  sub_10003092C(v4, type metadata accessor for WidgetTileInfo);
  sub_10003092C(v5, type metadata accessor for WidgetTileInfo);
  sub_10009D8D4();
  (*(v2 + 8))(v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100078030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1000780CC;

  return sub_10007958C(a4, a3);
}

uint64_t sub_1000780CC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000781C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100003714(&qword_1000C2868, &unk_1000A31F0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  v10 = a1 + *(type metadata accessor for WidgetTileInfo(0) + 60);
  if (*(v10 + 8) <= 3u && (v11 = [*v10 home]) != 0)
  {
    v12 = v11;
    v13 = sub_10009CEC4();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
    sub_100007330(0, &qword_1000C1D48, NSUserDefaults_ptr);
    sub_10009E864();
    sub_100007330(0, &qword_1000C1260, HMHome_ptr);
    sub_10007AEA8();
    sub_10009D064();

    sub_1000160CC(v7, &qword_1000C2868, &unk_1000A31F0);
    sub_1000160CC(v9, &qword_1000C2868, &unk_1000A31F0);
    v14 = sub_10009D074();
    return (*(*(v14 - 8) + 56))(a2, 0, 1, v14);
  }

  else
  {
    v16 = sub_10009D074();
    v17 = *(*(v16 - 8) + 56);

    return v17(a2, 1, 1, v16);
  }
}

uint64_t sub_100078490(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001EAAC;

  return sub_100077434(a1, v5, v4);
}

uint64_t sub_10007853C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100078E1C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100078564(uint64_t a1)
{
  v2 = sub_1000598E8();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_1000785A0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1000785E8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_100078634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v55 = a2;
  v56 = a3;
  v54 = a1;
  v3 = type metadata accessor for AccessoryAndSceneEntity(0);
  v49 = *(v3 - 8);
  v50 = v3;
  v4 = __chkstk_darwin(v3);
  v53 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v52 = v40 - v6;
  v7 = sub_100003714(&qword_1000C10A0, "&H");
  __chkstk_darwin(v7 - 8);
  v51 = v40 - v8;
  v9 = sub_10009CB44();
  v10 = *(v9 - 8);
  v57 = v9;
  v58 = v10;
  __chkstk_darwin(v9);
  v48 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100003714(&qword_1000C0FD8, &unk_10009FE90);
  v13 = __chkstk_darwin(v12 - 8);
  v47 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v46 = v40 - v15;
  v16 = sub_100003714(&qword_1000C1258, &unk_1000A08D0);
  __chkstk_darwin(v16 - 8);
  v45 = v40 - v17;
  v18 = sub_100003714(&qword_1000C0FE8, &qword_10009FEA0);
  __chkstk_darwin(v18 - 8);
  v44 = v40 - v19;
  v20 = sub_10009CD34();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10009CF54();
  __chkstk_darwin(v24 - 8);
  v25 = sub_10009E5A4();
  __chkstk_darwin(v25 - 8);
  v26 = sub_10009CD54();
  v41 = v26;
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v43 = sub_100003714(&qword_1000C12A8, "BJ");
  sub_10009E554();
  sub_10009CF44();
  (*(v21 + 104))(v23, enum case for LocalizedStringResource.BundleDescription.main(_:), v20);
  sub_10009CD64();
  v28 = *(v27 + 56);
  v40[1] = v27 + 56;
  v42 = v28;
  v29 = v44;
  v28(v44, 1, 1, v26);
  v49[7](v45, 1, 1, v50);
  v30 = sub_10009C914();
  v31 = *(*(v30 - 8) + 56);
  v32 = v46;
  v31(v46, 1, 1, v30);
  v31(v47, 1, 1, v30);
  LODWORD(v50) = enum case for InputConnectionBehavior.default(_:);
  v33 = *(v58 + 104);
  v58 += 104;
  v49 = v33;
  v34 = v48;
  (v33)(v48);
  sub_10007AE4C(&qword_1000C1160, type metadata accessor for AccessoryAndSceneEntity, &unk_1000A03F0);
  v35 = sub_10009C9A4();
  sub_100003714(&qword_1000C10B8, &qword_1000A03B0);

  sub_10009CD14();
  v42(v29, 1, 1, v41);
  v36 = sub_10009E544();
  v59 = 0;
  v60 = 0;
  (*(*(v36 - 8) + 56))(v51, 1, 1, v36);
  v31(v32, 1, 1, v30);
  (v49)(v34, v50, v57);
  sub_10009C9C4();
  v37 = v54;
  v38 = v52;
  sub_10007AF10(v54, v52, type metadata accessor for AccessoryAndSceneEntity);
  sub_10007AF10(v38, v53, type metadata accessor for AccessoryAndSceneEntity);

  sub_10009C964();
  sub_10003092C(v38, type metadata accessor for AccessoryAndSceneEntity);
  v59 = v55;
  v60 = v56;
  sub_10009C964();
  sub_10003092C(v37, type metadata accessor for AccessoryAndSceneEntity);

  return v35;
}

uint64_t sub_100078E1C()
{
  v0 = sub_100003714(&qword_1000C10A0, "&H");
  __chkstk_darwin(v0 - 8);
  v40 = &v30 - v1;
  v39 = sub_10009CB44();
  v44 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100003714(&qword_1000C0FD8, &unk_10009FE90);
  v4 = __chkstk_darwin(v3 - 8);
  v37 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v43 = &v30 - v6;
  v7 = sub_100003714(&qword_1000C1258, &unk_1000A08D0);
  __chkstk_darwin(v7 - 8);
  v42 = &v30 - v8;
  v9 = sub_100003714(&qword_1000C0FE8, &qword_10009FEA0);
  __chkstk_darwin(v9 - 8);
  v41 = &v30 - v10;
  v11 = sub_10009CD34();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10009CF54();
  __chkstk_darwin(v15 - 8);
  v16 = sub_10009E5A4();
  __chkstk_darwin(v16 - 8);
  v17 = sub_10009CD54();
  v34 = v17;
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v36 = sub_100003714(&qword_1000C12A8, "BJ");
  sub_10009E554();
  sub_10009CF44();
  (*(v12 + 104))(v14, enum case for LocalizedStringResource.BundleDescription.main(_:), v11);
  sub_10009CD64();
  v19 = *(v18 + 56);
  v33 = v18 + 56;
  v35 = v19;
  v19(v41, 1, 1, v17);
  v20 = type metadata accessor for AccessoryAndSceneEntity(0);
  (*(*(v20 - 8) + 56))(v42, 1, 1, v20);
  v21 = sub_10009C914();
  v22 = *(*(v21 - 8) + 56);
  v22(v43, 1, 1, v21);
  v22(v37, 1, 1, v21);
  v32 = enum case for InputConnectionBehavior.default(_:);
  v23 = *(v44 + 104);
  v44 += 104;
  v31 = v23;
  v25 = v38;
  v24 = v39;
  v23(v38);
  sub_10007AE4C(&qword_1000C1160, type metadata accessor for AccessoryAndSceneEntity, &unk_1000A03F0);
  v26 = v41;
  v27 = sub_10009C9A4();
  v42 = sub_100003714(&qword_1000C10B8, &qword_1000A03B0);
  sub_10009CD14();
  v35(v26, 1, 1, v34);
  v28 = sub_10009E544();
  v45 = 0;
  v46 = 0;
  (*(*(v28 - 8) + 56))(v40, 1, 1, v28);
  v22(v43, 1, 1, v21);
  v31(v25, v32, v24);
  sub_10009C9C4();
  return v27;
}

uint64_t sub_1000794D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001EAAC;

  return sub_100078030(a1, v4, v5, v6);
}

uint64_t sub_10007958C(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_10009D784();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = sub_10009D7A4();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = sub_10009D074();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v6 = sub_10009D084();
  v2[16] = v6;
  v2[17] = *(v6 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v7 = sub_10009D0B4();
  v2[20] = v7;
  v2[21] = *(v7 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  sub_100003714(&qword_1000C2828, &qword_1000A31C0);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  sub_100003714(&qword_1000C2830, &qword_1000A31C8);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  sub_100003714(&qword_1000C2838, &unk_1000A31D0);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v8 = sub_10009D094();
  v2[32] = v8;
  v2[33] = *(v8 - 8);
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v9 = sub_10009D604();
  v2[36] = v9;
  v2[37] = *(v9 - 8);
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  sub_100003714(&qword_1000C0CD0, &qword_10009FA30);
  v2[40] = swift_task_alloc();
  v10 = sub_10009D3F4();
  v2[41] = v10;
  v2[42] = *(v10 - 8);
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v11 = sub_10009D6C4();
  v2[45] = v11;
  v2[46] = *(v11 - 8);
  v2[47] = swift_task_alloc();
  v12 = type metadata accessor for WidgetPredictionAnalyticsInfo(0);
  v2[48] = v12;
  v2[49] = *(v12 - 8);
  v2[50] = swift_task_alloc();
  sub_100003714(&qword_1000C2840, &unk_1000A31E0);
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();
  sub_100003714(&qword_1000C0C28, &qword_1000A3620);
  v2[55] = swift_task_alloc();
  v2[56] = swift_task_alloc();
  v2[57] = type metadata accessor for WidgetTileInfo(0);
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v13 = sub_10009D1C4();
  v2[60] = v13;
  v2[61] = *(v13 - 8);
  v2[62] = swift_task_alloc();

  return _swift_task_switch(sub_100079C24, 0, 0);
}

uint64_t sub_100079C24(uint64_t a1)
{
  v154 = v1;
  if (*(v1[4] + *(v1[57] + 60) + 8) == 2)
  {
    v9 = 0;
    v5 = 0;
    v7 = 0xE000000000000000;
    v8 = 1;
  }

  else
  {
    if (*(v1[4] + *(v1[57] + 60) + 8))
    {
      v8 = 0;
      v5 = 0;
      v7 = 0xE000000000000000;
    }

    else
    {
      v3 = v1[61];
      v2 = v1[62];
      v4 = v1[60];
      sub_10009E904();
      v5 = sub_10009D1A4();
      v7 = v6;
      (*(v3 + 8))(v2, v4);
      v8 = 0;
    }

    v9 = 1;
  }

  v148 = v9;
  if (qword_1000C0A90 != -1)
  {
    swift_once();
  }

  v10 = v1[58];
  v11 = v1[59];
  v12 = v1[4];
  v13 = sub_10009D924();
  sub_100015B68(v13, qword_1000C8278);
  sub_10007AF10(v12, v11, type metadata accessor for WidgetTileInfo);
  sub_10007AF10(v12, v10, type metadata accessor for WidgetTileInfo);

  v14 = sub_10009D904();
  v15 = sub_10009E844();

  v16 = os_log_type_enabled(v14, v15);
  v151 = v7;
  v17 = v1[58];
  v18 = v1[59];
  v147 = v5;
  if (v16)
  {
    v19 = v1[57];
    v20 = swift_slowAlloc();
    v153[0] = swift_slowAlloc();
    *v20 = 136316418;
    *(v20 + 4) = sub_10002AD68(0xD00000000000001FLL, 0x80000001000A5320, v153);
    v21 = v8;
    *(v20 + 12) = 1024;
    v139 = v14;
    v22 = v148;
    *(v20 + 14) = v148;
    *(v20 + 18) = 2080;
    *(v20 + 20) = sub_10002AD68(v5, v151, v153);
    *(v20 + 28) = 1024;
    *(v20 + 30) = v8;
    *(v20 + 34) = 1024;
    LODWORD(v19) = *(v18 + *(v19 + 52));
    sub_10003092C(v18, type metadata accessor for WidgetTileInfo);
    *(v20 + 36) = v19;
    *(v20 + 40) = 1024;
    v23 = sub_100017C60() & 1;
    sub_10003092C(v17, type metadata accessor for WidgetTileInfo);
    *(v20 + 42) = v23;
    v8 = v21;
    _os_log_impl(&_mh_execute_header, v139, v15, "%s - isAccessory:%{BOOL}d accessoryCategoryType:%s isScene:%{BOOL}d isReachable:%{BOOL}d isActivated:%{BOOL}d", v20, 0x2Eu);
    swift_arrayDestroy();
  }

  else
  {
    sub_10003092C(v17, type metadata accessor for WidgetTileInfo);
    sub_10003092C(v18, type metadata accessor for WidgetTileInfo);

    v22 = v148;
  }

  v24 = v1[56];
  v25 = v1[48];
  v26 = v1[49];
  LODWORD(v27) = *(v1[4] + *(v1[57] + 52));
  v28 = sub_100017C60();
  LOBYTE(v153[0]) = 1;
  v29 = 256;
  if (!v27)
  {
    v29 = 0;
  }

  v30 = 0x10000;
  if ((v28 & 1) == 0)
  {
    v30 = 0;
  }

  v31 = v29 | v8 | v30 | 0x2000000;
  type metadata accessor for WidgetAnalyticsEvent();
  v32 = swift_allocObject();
  *(v32 + 16) = 1;
  *(v32 + 24) = v22;
  *(v32 + 32) = v147;
  *(v32 + 40) = v151;
  *(v32 + 48) = v31;
  *(v32 + 56) = 0;
  *(v32 + 64) = 1;
  sub_10005FAEC(0, 0, 1);
  sub_10005C194(v32);
  v33 = *(v26 + 56);
  v33(v24, 1, 1, v25);
  sub_10009C954();
  if (v1[3])
  {
    v34 = sub_10009CE44();
    v36 = v35;

    if (v36 >> 60 != 15)
    {
      sub_10009CC84();
      swift_allocObject();
      sub_10009CC74();
      sub_10007AE4C(&qword_1000C2860, type metadata accessor for WidgetPredictionAnalyticsInfo, &protocol conformance descriptor for WidgetPredictionAnalyticsInfo);
      sub_10009CC64();
      v140 = v27;
      v38 = v1[55];
      v37 = v1[56];
      v27 = v1[48];
      sub_10007AE94(v34, v36);

      v33(v38, 0, 1, v27);
      sub_100014CC8(v38, v37);
      LOBYTE(v27) = v140;
    }
  }

  v39 = v1[56];
  v41 = v1[48];
  v40 = v1[49];
  v149 = *(v40 + 48);
  v42 = v149(v39, 1, v41);
  v43 = v1[53];
  if (v42)
  {
    (*(v1[13] + 56))(v1[53], 1, 1, v1[12]);
  }

  else
  {
    v44 = v1[50];
    v45 = v1[12];
    v46 = v1[13];
    (*(v40 + 16))(v44, v39, v41);
    WidgetPredictionAnalyticsInfo.predictionContext.getter(v43);
    (*(v40 + 8))(v44, v41);
    v47 = *(v46 + 48);
    if (v47(v43, 1, v45) != 1)
    {
      v51 = v1[54];
      v53 = v1[12];
      v52 = v1[13];
      (*(v52 + 32))(v51, v1[53], v53);
      (*(v52 + 56))(v51, 0, 1, v53);
      goto LABEL_25;
    }
  }

  v48 = v1[53];
  v50 = v1[12];
  v49 = v1[13];
  sub_1000781C4(v1[4], v1[54]);
  v47 = *(v49 + 48);
  if (v47(v48, 1, v50) != 1)
  {
    sub_1000160CC(v1[53], &qword_1000C2840, &unk_1000A31E0);
  }

LABEL_25:
  v55 = v1[41];
  v54 = v1[42];
  v56 = v1[40];
  sub_10001E0A8(v1[4] + *(v1[57] + 72), v56, &qword_1000C0CD0, &qword_10009FA30);
  v146 = v47;
  if ((*(v54 + 48))(v56, 1, v55) == 1)
  {
    v57 = v1[21];
    sub_1000160CC(v1[40], &qword_1000C0CD0, &qword_10009FA30);
    v58 = (v57 + 104);
    if (v27)
    {
      if (sub_100017C60())
      {
        v59 = &enum case for HomeAnalyticsUtilities.TileState.activated(_:);
      }

      else
      {
        v59 = &enum case for HomeAnalyticsUtilities.TileState.notActivated(_:);
      }

      (*v58)(v1[23], *v59, v1[20]);
    }

    else
    {
      (*v58)(v1[23], enum case for HomeAnalyticsUtilities.TileState.unreachable(_:), v1[20]);
    }

    v136 = v1[56];
    v143 = v1[48];
    v80 = v1[37];
    v127 = v1[38];
    v81 = v1[36];
    v82 = v1[33];
    v130 = v1[34];
    v129 = v1[32];
    v83 = v1[24];
    v132 = v1[30];
    v134 = v1[25];
    v128 = v1[22];
    v85 = v1[20];
    v84 = v1[21];
    v86 = v1[19];
    v88 = v1[16];
    v87 = v1[17];
    (*(v84 + 32))(v83, v1[23], v85);
    (*(v80 + 104))(v127, enum case for TileInteractionEvent.InteractionType.singleTap(_:), v81);
    (*(v87 + 104))(v86, enum case for HomeAnalyticsUtilities.HomeElementType.null(_:), v88);
    (*(v84 + 16))(v128, v83, v85);
    (*(v82 + 104))(v130, enum case for HomeAnalyticsUtilities.TileInteractionArea.generalToggleArea(_:), v129);
    v89 = enum case for HomeAnalyticsUtilities.DisplayedTileContext.interactiveWidget(_:);
    v90 = sub_10009D0A4();
    v91 = *(v90 - 8);
    (*(v91 + 104))(v132, v89, v90);
    (*(v91 + 56))(v132, 0, 1, v90);
    v92 = sub_10009D614();
    (*(*(v92 - 8) + 56))(v134, 1, 1, v92);
    if (v149(v136, 1, v143))
    {
      v93 = v1[28];
      v94 = sub_10009D054();
      (*(*(v94 - 8) + 56))(v93, 1, 1, v94);
    }

    else
    {
      v96 = v1[49];
      v95 = v1[50];
      v97 = v1[48];
      v98 = v1[28];
      (*(v96 + 16))(v95, v1[56], v97);
      WidgetPredictionAnalyticsInfo.predictionScores.getter(v98);
      (*(v96 + 8))(v95, v97);
    }

    v144 = v1[24];
    v99 = v1[21];
    v137 = v1[20];
    sub_10001E0A8(v1[54], v1[52], &qword_1000C2840, &unk_1000A31E0);
    sub_10009D644();
    sub_10009D654();
    sub_10009D634();
    sub_10009D624();
    (*(v99 + 8))(v144, v137);
  }

  else
  {
    v135 = v1[56];
    v141 = v1[48];
    v61 = v1[43];
    v60 = v1[44];
    v63 = v1[41];
    v62 = v1[42];
    v64 = v1[39];
    v66 = v1[36];
    v65 = v1[37];
    v67 = v1[33];
    v131 = v1[32];
    v133 = v1[35];
    v68 = v1[31];
    (*(v62 + 32))(v60, v1[40], v63);
    (*(v62 + 16))(v61, v60, v63);
    (*(v65 + 104))(v64, enum case for TileInteractionEvent.InteractionType.singleTap(_:), v66);
    (*(v67 + 104))(v133, enum case for HomeAnalyticsUtilities.TileInteractionArea.generalToggleArea(_:), v131);
    v69 = enum case for HomeAnalyticsUtilities.DisplayedTileContext.interactiveWidget(_:);
    v70 = sub_10009D0A4();
    v71 = *(v70 - 8);
    (*(v71 + 104))(v68, v69, v70);
    (*(v71 + 56))(v68, 0, 1, v70);
    if (v149(v135, 1, v141))
    {
      v72 = v1[29];
      v73 = sub_10009D054();
      (*(*(v73 - 8) + 56))(v72, 1, 1, v73);
    }

    else
    {
      v75 = v1[49];
      v74 = v1[50];
      v76 = v1[48];
      v77 = v1[29];
      (*(v75 + 16))(v74, v1[56], v76);
      WidgetPredictionAnalyticsInfo.predictionScores.getter(v77);
      (*(v75 + 8))(v74, v76);
    }

    v142 = v1[44];
    v78 = v1[41];
    v79 = v1[42];
    sub_10001E0A8(v1[54], v1[52], &qword_1000C2840, &unk_1000A31E0);
    sub_10007AE4C(&qword_1000C2858, &type metadata accessor for AnyTileInfoBearer, &protocol conformance descriptor for AnyTileInfoBearer);
    sub_10009D684();
    sub_10009D694();
    sub_10009D6A4();
    sub_10009D6B4();
    sub_10009D674();
    (*(v79 + 8))(v142, v78);
  }

  v100 = v1[54];
  v101 = v1[51];
  v102 = v1[12];
  sub_10007AE4C(&qword_1000C2848, &type metadata accessor for TileInteractionEvent, &protocol conformance descriptor for TileInteractionEvent);
  sub_10009D2E4();
  sub_10001E0A8(v100, v101, &qword_1000C2840, &unk_1000A31E0);
  if (v146(v101, 1, v102) == 1)
  {
    v103 = v1 + 51;
    v104 = v1[54];
    v106 = v1[46];
    v105 = v1[47];
    v107 = v1[45];

    (*(v106 + 8))(v105, v107);
    sub_1000160CC(v104, &qword_1000C2840, &unk_1000A31E0);
  }

  else
  {
    v108 = v1[56];
    v109 = v1[48];
    v111 = v1[7];
    v110 = v1[8];
    v112 = v1[6];
    (*(v1[13] + 32))(v1[15], v1[51], v1[12]);
    sub_10009D664();
    (*(v111 + 104))(v110, enum case for PredictableInteractionEvent.InteractionType.tileToggle(_:), v112);
    if (v149(v108, 1, v109))
    {
      v113 = v1[27];
      v114 = sub_10009D054();
      (*(*(v114 - 8) + 56))(v113, 1, 1, v114);
    }

    else
    {
      v116 = v1[49];
      v115 = v1[50];
      v117 = v1[48];
      v118 = v1[27];
      (*(v116 + 16))(v115, v1[56], v117);
      WidgetPredictionAnalyticsInfo.predictionScores.getter(v118);
      (*(v116 + 8))(v115, v117);
    }

    v119 = v1[46];
    v150 = v1[45];
    v152 = v1[47];
    v120 = v1[13];
    v138 = v1[12];
    v145 = v1[15];
    v121 = v1[10];
    v122 = v1[11];
    v123 = v1[9];
    (*(v120 + 16))(v1[14]);
    sub_10009D794();
    sub_10007AE4C(&qword_1000C2850, &type metadata accessor for PredictableInteractionEvent, &protocol conformance descriptor for PredictableInteractionEvent);
    sub_10009D2E4();

    (*(v121 + 8))(v122, v123);
    (*(v120 + 8))(v145, v138);
    (*(v119 + 8))(v152, v150);
    v103 = v1 + 54;
  }

  v124 = v1[56];
  sub_1000160CC(*v103, &qword_1000C2840, &unk_1000A31E0);
  sub_1000160CC(v124, &qword_1000C0C28, &qword_1000A3620);

  v125 = v1[1];

  return v125();
}