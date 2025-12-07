void sub_10009045C(uint64_t a1)
{
  swift_willThrow();
  v3 = v1;
  sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  type metadata accessor for BRError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:

    type metadata accessor for CKError(0);
    v21 = v3;
    if (swift_dynamicCast())
    {
      sub_100090AA4(&qword_1000CA028, type metadata accessor for CKError, &unk_10009FB80);
      sub_10009D770();
    }

    return;
  }

  sub_100090AA4(&qword_1000C9FF0, type metadata accessor for BRError, &unk_10009FA80);
  sub_10009D770();
  if (v22 != 17)
  {

    goto LABEL_9;
  }

  v4 = v23;
  v5 = sub_10009D7A0();

  v6 = [v5 underlyingErrors];
  v7 = sub_10009DEA0();

  v8 = 0;
  v9 = *(v7 + 16);
  while (1)
  {
    if (v9 == v8)
    {
LABEL_7:

      v7, v14, v15, v16, v17, v18, v19, v20;

      return;
    }

    if (v8 >= *(v7 + 16))
    {
      break;
    }

    v10 = v8 + 1;
    swift_errorRetain();
    v11 = sub_10009D7A0();
    sub_10009045C(a1);
    v13 = v12;

    v8 = v10;
    if (v13)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
}

void sub_1000906D4(uint64_t a1)
{
  swift_willThrow();
  v3 = v1;
  sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  type metadata accessor for BRError(0);
  if (swift_dynamicCast())
  {
    sub_100090AA4(&qword_1000C9FF0, type metadata accessor for BRError, &unk_10009FA80);
    sub_10009D770();
    if (v64 == 17)
    {
      v4 = v65;
      v5 = sub_10009D7A0();

      v6 = [v5 underlyingErrors];
      v7 = sub_10009DEA0();

      v8 = 0;
      v9 = *(v7 + 16);
      while (v9 != v8)
      {
        if (v8 >= *(v7 + 16))
        {
          __break(1u);
          goto LABEL_24;
        }

        v10 = v8 + 1;
        swift_errorRetain();
        v11 = sub_10009D7A0();
        sub_1000906D4(a1);
        v13 = v12;

        v8 = v10;
        if (v13)
        {
          break;
        }
      }

LABEL_15:

      v7, v23, v24, v25, v26, v27, v28, v29;

      return;
    }
  }

  type metadata accessor for CKError(0);
  v14 = v3;
  if (swift_dynamicCast())
  {
    sub_100090AA4(&qword_1000CA028, type metadata accessor for CKError, &unk_10009FB80);
    sub_10009D770();
    if (v64 == CKErrorCodeForUnderlyingErrorCode())
    {
      v4 = v65;
      v15 = sub_10009D7A0();

      v16 = [v15 underlyingErrors];
      v7 = sub_10009DEA0();

      v17 = 0;
      v18 = *(v7 + 16);
      while (v18 != v17)
      {
        if (v17 >= *(v7 + 16))
        {
LABEL_24:
          __break(1u);
          return;
        }

        v19 = v17 + 1;
        swift_errorRetain();
        v20 = sub_10009D7A0();
        sub_1000906D4(a1);
        v22 = v21;

        v17 = v19;
        if (v22)
        {
          goto LABEL_15;
        }
      }

      goto LABEL_15;
    }
  }

  v30 = [v14 domain];
  v31 = sub_10009DD90();
  v33 = v32;

  v35 = sub_10009DD90();
  v41 = v34;
  if (v31 == v35 && v33 == v34)
  {
    v33, v34, v35, v36, v37, v38, v39, v40;
    v41, v42, v43, v44, v45, v46, v47, v48;
  }

  else
  {
    v49 = sub_10009E2E0();
    v33, v50, v51, v52, v53, v54, v55, v56;
    v41, v57, v58, v59, v60, v61, v62, v63;
    if ((v49 & 1) == 0)
    {
      return;
    }
  }

  [v14 code];
}

uint64_t sub_100090AA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100090AEC()
{
  result = qword_1000CB7B8;
  if (!qword_1000CB7B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000CB7B8);
  }

  return result;
}

void *sub_100090B38(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100090B78(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100090B58(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100090CAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100090B78(void *result, int64_t a2, char a3, void *a4)
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
    sub_100003714(&qword_1000CB7C0, "ԛ");
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
    sub_100003714(&qword_1000CB840, &qword_10009FDA0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100090CAC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003714(&qword_1000CB7C8, &qword_1000A2A18);
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

double sub_100090DB8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_100030DD4(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    v19 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100091178();
      v17 = v19;
    }

    *(*(v17 + 48) + 16 * v8 + 8), v10, v11, v12, v13, v14, v15, v16;
    sub_100039068((*(v17 + 56) + 32 * v8), a3);
    sub_100090E5C(v8, v17);
    *v4 = v17;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

void sub_100090E5C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_10009E1B0() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 16 * v6 + 8);
      sub_10009E380();

      sub_10009DDE0();
      v11 = sub_10009E3A0();
      v10, v12, v13, v14, v15, v16, v17, v18;
      v19 = v11 & v7;
      if (v3 >= v8)
      {
        if (v19 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v19 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v19)
      {
LABEL_10:
        v20 = *(a2 + 48);
        v21 = (v20 + 16 * v3);
        v22 = (v20 + 16 * v6);
        if (v3 != v6 || v21 >= v22 + 1)
        {
          *v21 = *v22;
        }

        v23 = *(a2 + 56);
        v24 = (v23 + 32 * v3);
        v25 = (v23 + 32 * v6);
        if (v3 != v6 || v24 >= v25 + 2)
        {
          v9 = v25[1];
          *v24 = *v25;
          v24[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }
}

id sub_10009100C()
{
  v1 = v0;
  sub_100003714(&qword_1000CAD90, &qword_1000A1280);
  v2 = *v0;
  v3 = sub_10009E270();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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

        result = v20;
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

  return result;
}

void *sub_100091178()
{
  v1 = v0;
  sub_100003714(&qword_1000CA910, &qword_1000A0B60);
  v2 = *v0;
  v3 = sub_10009E270();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1000066A8(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100039068(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

id sub_10009131C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100003714(&qword_1000CB348, &qword_1000A1E28);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10009FCE0;
    *(inited + 32) = sub_10009DD90();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v5;
    *(inited + 48) = a1;
    *(inited + 56) = a2;

    v6 = sub_10003269C(inited);
    swift_setDeallocating();
    sub_100008728(inited + 32, &unk_1000CA918, &qword_1000A1E30);
    v7 = CKErrorDomain;
    v8.super.isa = sub_10009DCF0().super.isa;
    v6, v9, v10, v11, v12, v13, v14, v15;
  }

  else
  {
    v7 = CKErrorDomain;
    v8.super.isa = 0;
  }

  v16 = [objc_allocWithZone(NSError) initWithDomain:v7 code:1 userInfo:v8.super.isa];

  return v16;
}

uint64_t sub_10009147C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, uint64_t a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  *(v8 + 48), v9, v10, v11, v12, v13, v14, v15;

  return _swift_deallocObject(v8, 56, 7);
}

__n128 sub_100091520(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100091548(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_100091594(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1000915F8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10009160C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF3 && *(a1 + 41))
  {
    return (*a1 + 243);
  }

  v3 = *(a1 + 40);
  if (v3 <= 0xD)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100091654(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 243;
    if (a3 >= 0xF3)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF3)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SharePermission(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SharePermission(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

BOOL sub_100091890(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1000918C0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1000918EC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void sub_1000919D8(_TtC13SPIHelper_iOS9SPIHelper *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_100091C84(a1);
  a1, v5, v6, v7, v8, v9, v10, v11;
  *a2 = v4;
}

unint64_t sub_100091A20()
{
  result = qword_1000CB7D8;
  if (!qword_1000CB7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB7D8);
  }

  return result;
}

unint64_t sub_100091A78()
{
  result = qword_1000CB7E0;
  if (!qword_1000CB7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB7E0);
  }

  return result;
}

unint64_t sub_100091AD0()
{
  result = qword_1000CB7E8;
  if (!qword_1000CB7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB7E8);
  }

  return result;
}

uint64_t sub_100091B24()
{
  v1 = 1701736302;
  v2 = 0x796C6E4F64616572;
  if (*v0 != 2)
  {
    v2 = 0x646578696DLL;
  }

  if (*v0)
  {
    v1 = 0x7469725764616572;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100091BA0()
{
  v1 = 0x4D63696C6275702ELL;
  if (*v0 != 1)
  {
    v1 = 0x657461766972702ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656E6F6E2ELL;
  }
}

uint64_t sub_100091C08()
{
  v1 = 0x656E6F6E2ELL;
  v2 = 0x6C6E4F646165722ELL;
  if (*v0 != 2)
  {
    v2 = 0x646578696D2ELL;
  }

  if (*v0)
  {
    v1 = 0x697257646165722ELL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100091C84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

id sub_100091CC0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v4 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;

  return v4;
}

uint64_t sub_100091D0C(uint64_t a1, char a2)
{
  v4 = sub_10009D9F0();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v21 - v10;
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        if ((a2 & 1) == 0)
        {
          v13 = v9;
          sub_10009D9D0();
          v14 = sub_10009D9E0();
          v15 = sub_10009DFD0();
          if (os_log_type_enabled(v14, v15))
          {
            v16 = swift_slowAlloc();
            *v16 = 0;
            _os_log_impl(&_mh_execute_header, v14, v15, "SPIAnalyticsEvent unknown sharing status but no error", v16, 2u);
          }

          (*(v5 + 8))(v11, v13);
        }

        return 1;
      case 1:
        return 1;
      case 2:
        return 3;
    }

LABEL_16:
    v17 = v9;
    sub_10009D9D0();
    v18 = sub_10009D9E0();
    v19 = sub_10009DFD0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "SPIAnalyticsEvent unknown CSUIShareItemStatus", v20, 2u);
    }

    (*(v5 + 8))(v8, v17);
    return 1;
  }

  if (a1 > 4)
  {
    if (a1 == 5)
    {
      return 4;
    }

    if (a1 == 6)
    {
      return 5;
    }

    goto LABEL_16;
  }

  if (a1 == 3)
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_100091F68(char a1, uint64_t a2, _TtC13SPIHelper_iOS9SPIHelper *a3)
{
  v6 = sub_10009D9A0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100003714(&unk_1000CB830, &qword_1000A30A8);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v22 = &v42 - v21;
  switch(a1)
  {
    case 1:
      if (!a3)
      {
        goto LABEL_3;
      }

      if (a2 == 0x7365676170 && a3 == 0xE500000000000000 || (sub_10009E2E0() & 1) != 0)
      {
        a3, v14, v15, v16, v17, v18, v19, v20;
        result = 2;
      }

      else
      {
        sub_10009D9B0();
        sub_100008658(v22, v13, &unk_1000CB830, &qword_1000A30A8);
        if ((*(v7 + 48))(v13, 1, v6) == 1)
        {
          sub_100008728(v22, &unk_1000CB830, &qword_1000A30A8);
          sub_100008728(v13, &unk_1000CB830, &qword_1000A30A8);
          goto LABEL_3;
        }

        (*(v7 + 32))(v9, v13, v6);
        v24 = sub_10009D900();
        if (!v25)
        {
          (*(v7 + 8))(v9, v6);
          sub_100008728(v22, &unk_1000CB830, &qword_1000A30A8);
          goto LABEL_3;
        }

        if (v24 == 0x7365676170 && v25 == 0xE500000000000000)
        {
          v25, v25, v26, v27, v28, v29, v30, v31;
          (*(v7 + 8))(v9, v6);
          sub_100008728(v22, &unk_1000CB830, &qword_1000A30A8);
        }

        else
        {
          v33 = v25;
          v34 = sub_10009E2E0();
          v33, v35, v36, v37, v38, v39, v40, v41;
          (*(v7 + 8))(v9, v6);
          sub_100008728(v22, &unk_1000CB830, &qword_1000A30A8);
          if ((v34 & 1) == 0)
          {
            goto LABEL_3;
          }
        }

        result = 2;
      }

      break;
    case 2:
      a3, v14, v15, v16, v17, v18, v19, v20;
      result = 1;
      break;
    case 3:
      a3, v14, v15, v16, v17, v18, v19, v20;
      result = 0;
      break;
    case 4:
    case 5:
    case 6:
      a3, v14, v15, v16, v17, v18, v19, v20;
LABEL_3:
      result = 3;
      break;
    case 7:
      a3, v14, v15, v16, v17, v18, v19, v20;
      result = 4;
      break;
    case 8:
      a3, v14, v15, v16, v17, v18, v19, v20;
      result = 10;
      break;
    case 9:
      a3, v14, v15, v16, v17, v18, v19, v20;
      result = 5;
      break;
    case 10:
      a3, v14, v15, v16, v17, v18, v19, v20;
      result = 6;
      break;
    case 11:
      a3, v14, v15, v16, v17, v18, v19, v20;
      result = 7;
      break;
    case 12:
    case 13:
      a3, v14, v15, v16, v17, v18, v19, v20;
      result = 8;
      break;
    default:
      a3, v14, v15, v16, v17, v18, v19, v20;
      result = 9;
      break;
  }

  return result;
}

uint64_t sub_100092368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  if (a2)
  {
    v11 = sub_10009DDB0();
    v13 = v12;
    v14 = 0x80000001000A8210;
    if (v11 == 0xD000000000000010 && 0x80000001000A8210 == v13 || (sub_10009E2E0() & 1) != 0)
    {
      v13, v14, v5, v6, v7, v8, v9, v10;
      v4, v15, v16, v17, v18, v19, v20, v21;
      v4 = 1;
      goto LABEL_6;
    }

    v23 = 0x80000001000A8230;
    if (v11 == 0xD000000000000016 && 0x80000001000A8230 == v13 || (sub_10009E2E0() & 1) != 0)
    {
      v13, v23, v5, v6, v7, v8, v9, v10;
      v4, v24, v25, v26, v27, v28, v29, v30;
      v4 = 2;
      goto LABEL_6;
    }

    v31 = 0x80000001000A8250;
    if (v11 == 0xD000000000000011 && 0x80000001000A8250 == v13 || (sub_10009E2E0() & 1) != 0)
    {
      v13, v31, v5, v6, v7, v8, v9, v10;
      v4, v32, v33, v34, v35, v36, v37, v38;
      v4 = 3;
      goto LABEL_6;
    }

    v39 = 0xEF73656761702E65;
    if (v11 == 0x6C7070612E6D6F63 && v13 == 0xEF73656761702E65 || (sub_10009E2E0() & 1) != 0)
    {
      v13, v39, v5, v6, v7, v8, v9, v10;
      v4, v40, v41, v42, v43, v44, v45, v46;
      v4 = 4;
      goto LABEL_6;
    }

    v47 = 0x80000001000A8270;
    if (v11 == 0xD000000000000011 && 0x80000001000A8270 == v13 || (sub_10009E2E0() & 1) != 0)
    {
      v13, v47, v5, v6, v7, v8, v9, v10;
      v4, v48, v49, v50, v51, v52, v53, v54;
      v4 = 5;
      goto LABEL_6;
    }

    v55 = 0x80000001000A66F0;
    if (v11 == 0xD000000000000015 && 0x80000001000A66F0 == v13 || (sub_10009E2E0() & 1) != 0)
    {
      v13, v55, v5, v6, v7, v8, v9, v10;
      v4, v56, v57, v58, v59, v60, v61, v62;
      v4 = 6;
      goto LABEL_6;
    }

    v63 = 0x80000001000A66D0;
    if (v11 == 0xD000000000000013 && 0x80000001000A66D0 == v13 || (sub_10009E2E0() & 1) != 0)
    {
      v13, v63, v5, v6, v7, v8, v9, v10;
      v4, v64, v65, v66, v67, v68, v69, v70;
      v4 = 7;
      goto LABEL_6;
    }

    v71 = 0x80000001000A6690;
    if (v11 == 0xD000000000000016 && 0x80000001000A6690 == v13 || (sub_10009E2E0() & 1) != 0)
    {
      v13, v71, v5, v6, v7, v8, v9, v10;
      v4, v72, v73, v74, v75, v76, v77, v78;
      v4 = 8;
      goto LABEL_6;
    }

    v79 = 0x80000001000A6650;
    if (v11 == 0xD000000000000012 && 0x80000001000A6650 == v13 || (sub_10009E2E0() & 1) != 0)
    {
      v13, v79, v5, v6, v7, v8, v9, v10;
      v4, v80, v81, v82, v83, v84, v85, v86;
      v4 = 9;
      goto LABEL_6;
    }

    if (v11 == 0xD000000000000013 && 0x80000001000A8290 == v13)
    {
      v4, 0x80000001000A8290, v5, v6, v7, v8, v9, v10;
      v13, v87, v88, v89, v90, v91, v92, v93;
LABEL_43:
      v4 = 11;
      goto LABEL_6;
    }

    v94 = sub_10009E2E0();
    v4, v95, v96, v97, v98, v99, v100, v101;
    v13, v102, v103, v104, v105, v106, v107, v108;
    if (v94)
    {
      goto LABEL_43;
    }

    v109 = sub_10009D860();
    if ((*(*(v109 - 8) + 48))(a3, 1, v109) == 1)
    {
      v4 = 10;
    }

    else
    {
      v4 = 0;
    }
  }

LABEL_6:
  sub_100008728(a3, &qword_1000CA250, &qword_10009FDF8);
  return v4;
}

void *sub_10009277C(__int128 *a1)
{
  v1 = *(a1 + 40);
  if (v1 != 255)
  {
    v4 = *(a1 + 3);
    v3 = *(a1 + 4);
    v6 = *(a1 + 1);
    v5 = *(a1 + 2);
    v8 = a1[1];
    v45 = *a1;
    v7 = v45;
    v46 = v8;
    v47 = v3;
    v48 = v1;
    sub_10008FEE4(v42);
    sub_100032380(v7, v6, v5, v4, v3, v1);
    isa = sub_10009DF90().super.super.isa;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10003D290(isa, 0x707954726F727265, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
    v11 = v43;
    v12 = v44;
    sub_1000067C8(v42, v43);
    (*(v12 + 24))(v11, v12);
    v14 = v13;
    v15 = sub_10009DD50();
    v14, v16, v17, v18, v19, v20, v21, v22;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    sub_10003D290(v15, 0xD000000000000014, 0x80000001000A81F0, v23);
    v24 = v43;
    v25 = v44;
    sub_1000067C8(v42, v43);
    v26 = (*(v25 + 8))(v24, v25);
    if (v26)
    {
      v27 = v26;
      [v26 code];
      v28 = sub_10009DF90().super.super.isa;
      v29 = swift_isUniquelyReferenced_nonNull_native();
      sub_10003D290(v28, 0x646F43726F727265, 0xE900000000000065, v29);
      v30 = [v27 domain];
      if (!v30)
      {
        sub_10009DD90();
        v32 = v31;
        v30 = sub_10009DD50();
        v32, v33, v34, v35, v36, v37, v38, v39;
      }

      v40 = swift_isUniquelyReferenced_nonNull_native();
      sub_10003D290(v30, 0x6D6F44726F727265, 0xEB000000006E6961, v40);

      sub_100008728(a1, &qword_1000CB088, &unk_1000A18F0);
    }

    else
    {
      sub_100008728(a1, &qword_1000CB088, &unk_1000A18F0);
    }

    sub_10000670C(v42);
  }

  return &_swiftEmptyDictionarySingleton;
}

uint64_t sub_100092A1C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v62 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v54 = v6;
  while (v9)
  {
    v57 = a4;
    v22 = v11;
LABEL_14:
    v24 = __clz(__rbit64(v9)) | (v22 << 6);
    v25 = (*(a1 + 48) + 16 * v24);
    v26 = v25[1];
    v27 = *(*(a1 + 56) + 8 * v24);
    v61[0] = *v25;
    v61[1] = v26;
    v61[2] = v27;

    v28 = v27;
    a2(&v58, v61);

    v26, v29, v30, v31, v32, v33, v34, v35;
    v36 = v58;
    v37 = v59;
    v38 = v60;
    v39 = *v62;
    v41 = sub_100030DD4(v58, v59);
    v42 = v39[2];
    v43 = (v40 & 1) == 0;
    v44 = v42 + v43;
    if (__OFADD__(v42, v43))
    {
      goto LABEL_25;
    }

    v45 = v40;
    if (v39[3] >= v44)
    {
      if ((v57 & 1) == 0)
      {
        sub_10009100C();
      }
    }

    else
    {
      sub_10003CFEC(v44, v57 & 1);
      v46 = sub_100030DD4(v36, v37);
      if ((v45 & 1) != (v47 & 1))
      {
        goto LABEL_27;
      }

      v41 = v46;
    }

    v9 &= v9 - 1;
    v48 = *v62;
    if (v45)
    {
      v12 = *(v48[7] + 8 * v41);
      v37, v13, v14, v15, v16, v17, v18, v19;

      v20 = v48[7];
      v21 = *(v20 + 8 * v41);
      *(v20 + 8 * v41) = v12;
    }

    else
    {
      v48[(v41 >> 6) + 8] |= 1 << v41;
      v49 = (v48[6] + 16 * v41);
      *v49 = v36;
      v49[1] = v37;
      *(v48[7] + 8 * v41) = v38;
      v50 = v48[2];
      v51 = __OFADD__(v50, 1);
      v52 = v50 + 1;
      if (v51)
      {
        goto LABEL_26;
      }

      v48[2] = v52;
    }

    a4 = 1;
    v11 = v22;
    v6 = v54;
  }

  v23 = v11;
  while (1)
  {
    v22 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v22 >= v10)
    {
      sub_10009398C(a1);
    }

    v9 = *(v6 + 8 * v22);
    ++v23;
    if (v9)
    {
      v57 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_10009E300();
  __break(1u);
  return result;
}

void *sub_100092CB8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7)
{
  v129 = a4;
  v130 = a5;
  v128 = a3;
  v11 = sub_10009D9F0();
  v124 = *(v11 - 8);
  v125 = v11;
  __chkstk_darwin(v11);
  v126 = &v123 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v14 = __chkstk_darwin(v13 - 8);
  v127 = &v123 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v123 - v16;
  v18 = sub_10009D860();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v123 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = a1;
  sub_100008658(a1, v17, &qword_1000CA250, &qword_10009FDF8);
  v22 = *(v19 + 48);
  if (v22(v17, 1, v18) == 1)
  {
    sub_100008728(v17, &qword_1000CA250, &qword_10009FDF8);
    if (a2)
    {
      v23 = a2;
      sub_10009E0F0();
      v25 = v24;
      v26 = sub_10009E100();

      v25, v27, v28, v29, v30, v31, v32, v33;
      if (v26)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          a6 = sub_10009DD90();
          a7 = v34;
          swift_unknownObjectRelease();

          goto LABEL_10;
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  else
  {
    (*(v19 + 32))(v21, v17, v18);
    a6 = sub_1000959C0(v21, a2);
    a7 = v42;
    (*(v19 + 8))(v21, v18);
  }

LABEL_10:
  v43 = v131;
  v44 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v44 = a6 & 0xFFFFFFFFFFFFLL;
  }

  if (v44)
  {
    if (v22(v131, 1, v18) == 1)
    {
      v45 = sub_100096888(a6, a7);
    }

    else
    {
      v45 = sub_100096298(a6, a7, v43);
    }

    sub_100091F68(v45, a6, a7);
    v87 = v127;
    sub_100008658(v43, v127, &qword_1000CA250, &qword_10009FDF8);
    v88 = v129;

    sub_100092368(v128, v88, v87);
    sub_100003714(&qword_1000CB7F0, "Җ");
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000A0490;
    *(inited + 32) = 0x54676E6972616873;
    *(inited + 40) = 0xEB00000000657079;
    *(inited + 48) = sub_10009DF90();
    *(inited + 56) = 0x70704174736F68;
    *(inited + 64) = 0xE700000000000000;
    *(inited + 72) = sub_10009DF90();
    v90 = sub_10003258C(inited);
    swift_setDeallocating();
    sub_100003714(&qword_1000CB7F8, &qword_1000A30A0);
    swift_arrayDestroy();
    v91 = sub_10009277C(v130);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v132 = v90;
    sub_100092A1C(v91, sub_100091CC0, 0, isUniquelyReferenced_nonNull_native, &v132);
    v91, v93, v94, v95, v96, v97, v98, v99;
    return v132;
  }

  else
  {
    a7, v35, v36, v37, v38, v39, v40, v41;
    v46 = v126;
    sub_10009D9D0();
    v47 = sub_10009D9E0();
    v48 = sub_10009DFD0();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v131 = swift_slowAlloc();
      v132 = v131;
      *v49 = 136315138;
      v50 = sub_10009DE60();
      v58 = v51;
      if (("NSUnderlyingError" & 0x2000000000000000) != 0)
      {
        v59 = ("NSUnderlyingError" >> 40) & 0xF0000;
      }

      else
      {
        v59 = 2293760;
      }

      if (v59)
      {
        v60 = v50;
        while (1)
        {
          v61 = sub_10009DE60();
          v69 = v62;
          if (v61 == v60 && v62 == v58)
          {
            v58, v62, v63, v64, v65, v66, v67, v68;
            goto LABEL_31;
          }

          v70 = sub_10009E2E0();
          v69, v71, v72, v73, v74, v75, v76, v77;
          if (v70)
          {
            break;
          }

          if ((v59 ^ sub_10009DE00()) < 0x4000)
          {
            goto LABEL_25;
          }
        }

        v69 = v58;
LABEL_31:
        v69, v78, v79, v80, v81, v82, v83, v84;
        sub_10009DE70();
        v102 = v101;
        v103 = sub_10009DDD0();
        v86 = v104;
        v102, v104, v105, v106, v107, v108, v109, v110;
        v85 = v103;
      }

      else
      {
LABEL_25:
        v58, v51, v52, v53, v54, v55, v56, v57;
        v85 = 0;
        v86 = 0xE000000000000000;
      }

      v112 = v124;
      v111 = v125;
      v113 = v126;
      v114 = v131;
      v115 = sub_1000307A4(v85, v86, &v132);
      v86, v116, v117, v118, v119, v120, v121, v122;
      *(v49 + 4) = v115;
      _os_log_impl(&_mh_execute_header, v47, v48, "%s: couldn't determine UTI", v49, 0xCu);
      sub_10000670C(v114);

      (*(v112 + 8))(v113, v111);
    }

    else
    {

      (*(v124 + 8))(v46, v125);
    }

    return &_swiftEmptyDictionarySingleton;
  }
}

uint64_t sub_10009339C(char a1, char a2)
{
  v4 = sub_10009D9F0();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    if ((a2 & 1) == 0)
    {
      v10 = v6;
      sub_10009D9D0();
      v11 = sub_10009D9E0();
      v12 = sub_10009DFD0();
      if (os_log_type_enabled(v11, v12))
      {
        v9 = 2;
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v11, v12, "SPIAnalyticsEvent sharingMode is none but no error", v13, 2u);

        (*(v5 + 8))(v8, v10);
        return v9;
      }

      (*(v5 + 8))(v8, v10);
    }

    return 2;
  }

  return a1 == 1;
}

uint64_t sub_100093528(unsigned __int8 a1, char a2)
{
  v4 = sub_10009D9F0();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  else if (a1)
  {
    return 0;
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      v9 = v6;
      sub_10009D9D0();
      v10 = sub_10009D9E0();
      v11 = sub_10009DFD0();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "SPIAnalyticsEvent sharePermission is none but no error", v12, 2u);
      }

      (*(v5 + 8))(v8, v9);
    }

    return 3;
  }
}

uint64_t sub_100093698(uint64_t result, uint64_t a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, uint64_t a8)
{
  if (!result)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 4;
  }

  if (result == 1)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 3;
  }

  v8 = *(a2 + 16);
  if (!v8)
  {
    __break(1u);
    goto LABEL_17;
  }

  v9 = *(a2 + 32);
  if (v9 == 1)
  {
    if (v8 != 1)
    {
      if (*(a2 + 33))
      {
        a2, a2, a3, a4, a5, a6, a7, a8;
        return 0;
      }

      v10 = 0;
      goto LABEL_13;
    }

LABEL_18:
    __break(1u);
    return result;
  }

  if (v8 == 1)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v10 = *(a2 + 33);
LABEL_13:
  a2, a2, a3, a4, a5, a6, a7, a8;
  if (v9 != v10)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_100093750(uint64_t a1, char a2)
{
  v4 = sub_10009D9F0();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v21 - v10;
  if (a1 <= 1)
  {
    if (!a1)
    {
      if ((a2 & 1) == 0)
      {
        v13 = v9;
        sub_10009D9D0();
        v14 = sub_10009D9E0();
        v15 = sub_10009DFD0();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          *v16 = 0;
          _os_log_impl(&_mh_execute_header, v14, v15, "SPIAnalyticsEvent unknown user share status but no error", v16, 2u);
        }

        (*(v5 + 8))(v11, v13);
      }

      return 4;
    }

    if (a1 == 1)
    {
      return 0;
    }
  }

  else
  {
    switch(a1)
    {
      case 4:
        return 3;
      case 3:
        return 2;
      case 2:
        return 1;
    }
  }

  v17 = v9;
  sub_10009D9D0();
  v18 = sub_10009D9E0();
  v19 = sub_10009DFD0();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "SPIAnalyticsEvent unknown CSUICurrentUserCKShareStatus", v20, 2u);
  }

  (*(v5 + 8))(v8, v17);
  return 4;
}

uint64_t getEnumTagSinglePayload for SaveStage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_19;
  }

  v2 = a2 + 5;
  if (a2 + 5 >= 0xFFFF00)
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

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 5;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 5;
    }
  }

LABEL_19:
  v7 = *a1;
  if (*a1 < 2u)
  {
    return 0;
  }

  v8 = (v7 & 0xFE) + 2147483646;
  if ((v8 & 0x7FFFFFFEu) <= 3)
  {
    return 0;
  }

  return (v8 & 0x7FFFFFFE | v7 & 1u) - 3;
}

uint64_t storeEnumTagSinglePayload for SaveStage(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 5;
  if (a3 + 5 >= 0xFFFF00)
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

  if (a3 < 0xFB)
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_100093B2C(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_100093B48(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AddAddressesStage(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AddAddressesStage(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for CreateOrLoadStage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CreateOrLoadStage(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_100093E1C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100093E30(uint64_t a1, unsigned int a2)
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

uint64_t sub_100093E78(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for SharingStage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SharingStage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100094060()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  if (*(*(v0 + 16) + OBJC_IVAR____TtC13SPIHelper_iOS12OptionsModel_allowAccessRequestsSPIOverride) == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10009DAF0();
  }

  v1 = 0x10000000000;
  if (!v4)
  {
    v1 = 0;
  }

  v2 = 0x1000000000000;
  if (!v4)
  {
    v2 = 0;
  }

  return v4 | (v4 << 8) | (v4 << 16) | (v4 << 24) | (v4 << 32) | v1 | v2;
}

uint64_t sub_1000944C0@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  *a2 = v4;
  return result;
}

uint64_t sub_100094540(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10009DB00();
}

BOOL sub_1000945E4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 > 3)
  {
    if (v2 != 4)
    {
      if (v2 == 5)
      {
        return v3 == 5;
      }

LABEL_10:
      if ((v3 - 2) >= 4u)
      {
        return (v3 ^ v2 ^ 1) & 1;
      }

      return 0;
    }

    if (v3 == 4)
    {
      return 1;
    }
  }

  else
  {
    if (v2 != 2)
    {
      if (v2 == 3)
      {
        return v3 == 3;
      }

      goto LABEL_10;
    }

    if (v3 == 2)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_100094678()
{
  result = qword_1000CB800;
  if (!qword_1000CB800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB800);
  }

  return result;
}

unint64_t sub_1000946D0()
{
  result = qword_1000CB808;
  if (!qword_1000CB808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB808);
  }

  return result;
}

unint64_t sub_100094728()
{
  result = qword_1000CB810;
  if (!qword_1000CB810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB810);
  }

  return result;
}

unint64_t sub_100094780()
{
  result = qword_1000CB818;
  if (!qword_1000CB818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB818);
  }

  return result;
}

unint64_t sub_1000947D8()
{
  result = qword_1000CB820;
  if (!qword_1000CB820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB820);
  }

  return result;
}

__n128 sub_100094A54(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_100094A68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_100094AB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SharingType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_20;
  }

  v2 = a2 + 9;
  if (a2 + 9 >= 0xFFFF00)
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

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 9;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 9;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 8)
  {
    v8 = v7 - 7;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SharingType(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 9;
  if (a3 + 9 >= 0xFFFF00)
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

  if (a3 < 0xF7)
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_100094C60(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 8)
  {
    return v1 - 7;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_100094C74(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 7;
  }

  return result;
}

BOOL sub_100094CA8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v3 == 8;
  v5 = v3 == 9;
  v6 = v3 & 0xFE;
  v8 = v3 == 7 || v2 == v3;
  if (v2 == 7)
  {
    v8 = 1;
  }

  if (v6 == 8)
  {
    v8 = 0;
  }

  if (v2 == 9)
  {
    v8 = v5;
  }

  if (v2 == 8)
  {
    return v4;
  }

  else
  {
    return v8;
  }
}

uint64_t sub_100094CF8()
{
  v1 = *v0;
  v2 = 0x69636570736E752ELL;
  v3 = 0x726568746F2ELL;
  if (v1 != 6)
  {
    v3 = 2037276974;
  }

  v4 = 0x6972616661732ELL;
  if (v1 != 4)
  {
    v4 = 0x726F66656572662ELL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6F467365746F6E2ELL;
  if (v1 != 2)
  {
    v5 = 0x65646E696D65722ELL;
  }

  if (*v0)
  {
    v2 = 0x7365746F6E2ELL;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100094E04(char a1)
{
  result = 0x7265646C6F66;
  switch(a1)
  {
    case 1:
      result = 0x746E656D75636F64;
      break;
    case 2:
      result = 0x6873646165727073;
      break;
    case 3:
      result = 0x61746E6573657270;
      break;
    case 4:
      result = 0x6567616D69;
      break;
    case 5:
      result = 0x6569766F6DLL;
      break;
    case 6:
      result = 6710384;
      break;
    case 7:
      result = 1702129518;
      break;
    case 8:
      result = 0x6C6F467365746F6ELL;
      break;
    case 9:
      result = 1953720684;
      break;
    case 10:
      result = 0x70756F7247626174;
      break;
    case 11:
      result = 0x6D726F6665657266;
      break;
    case 12:
      result = 0x43636972656E6567;
      break;
    case 13:
      result = 0x726568746FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100094FB8(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_100094E04(*a1);
  v5 = v4;
  v6 = sub_100094E04(v2);
  v14 = v7;
  if (v3 == v6 && v5 == v7)
  {
    v16 = 1;
  }

  else
  {
    v16 = sub_10009E2E0();
  }

  v5, v7, v8, v9, v10, v11, v12, v13;
  v14, v17, v18, v19, v20, v21, v22, v23;
  return v16 & 1;
}

Swift::Int sub_100095040()
{
  v1 = *v0;
  sub_10009E380();
  sub_100094E04(v1);
  v3 = v2;
  sub_10009DDE0();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return sub_10009E3A0();
}

void sub_1000950A4(uint64_t a1)
{
  sub_100094E04(*v1);
  v3 = v2;
  sub_10009DDE0();

  v3, v4, v5, v6, v7, v8, v9, v10;
}

Swift::Int sub_1000950F8(uint64_t a1)
{
  v2 = *v1;
  sub_10009E380();
  sub_100094E04(v2);
  v4 = v3;
  sub_10009DDE0();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return sub_10009E3A0();
}

unint64_t sub_100095158@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100097108(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_100095188@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100094E04(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1000951B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10009D8C0();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10009D9F0();
  v65 = *(v5 - 8);
  v66 = v5;
  v6 = __chkstk_darwin(v5);
  v62 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v63 = &v60 - v8;
  v9 = sub_100003714(&unk_1000CB830, &qword_1000A30A8);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v60 - v14;
  __chkstk_darwin(v13);
  v17 = &v60 - v16;
  v18 = sub_10009D9A0();
  v67 = *(v18 - 8);
  v68 = v18;
  v19 = __chkstk_darwin(v18);
  v61 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v64 = &v60 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = &v60 - v24;
  __chkstk_darwin(v23);
  v27 = &v60 - v26;
  if (a1 == 0x726464756F6C6369 && a2 == 0xEB00000000657669 || (sub_10009E2E0() & 1) != 0)
  {
    return 0xD00000000000001BLL;
  }

  if (a1 == 0x7365746F6ELL && a2 == 0xE500000000000000 || (sub_10009E2E0() & 1) != 0)
  {
    return 0xD000000000000014;
  }

  if (a1 == 0x7265646E696D6572 && a2 == 0xE900000000000073 || (sub_10009E2E0() & 1) != 0)
  {
    return 0xD000000000000018;
  }

  if (a1 == 0xD000000000000011 && 0x80000001000A82D0 == a2 || (sub_10009E2E0() & 1) != 0)
  {
    return 0xD000000000000019;
  }

  if (a1 == 0x6D726F6665657266 && a2 == 0xE800000000000000 || (sub_10009E2E0() & 1) != 0)
  {
    return 0xD000000000000018;
  }

  sub_10009D9B0();
  v29 = v67;
  v60 = *(v67 + 48);
  if (v60(v17, 1, v68) == 1)
  {
    sub_1000967C8(v17);

    sub_10009D8B0();
    v30 = v68;
    (*(v29 + 56))(v12, 1, 1, v68);
    sub_10009D920();
    if (v60(v15, 1, v30) == 1)
    {
      sub_1000967C8(v15);
    }

    else
    {
      v39 = v30;
      v40 = v64;
      (*(v29 + 32))(v64, v15, v30);
      v41 = v62;
      sub_10009D9D0();
      v42 = v61;
      (*(v29 + 16))(v61, v40, v30);
      v43 = sub_10009D9E0();
      v44 = sub_10009DFF0();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = v42;
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v69 = v47;
        *v46 = 136315138;
        v63 = sub_10009D8D0();
        v49 = v48;
        v50 = *(v29 + 8);
        v50(v45, v39);
        v51 = sub_1000307A4(v63, v49, &v69);
        v49, v52, v53, v54, v55, v56, v57, v58;
        *(v46 + 4) = v51;
        _os_log_impl(&_mh_execute_header, v43, v44, "utiOfItem(fromCKShareType)--type from filename extension: %s", v46, 0xCu);
        sub_10000670C(v47);
      }

      else
      {

        v50 = *(v29 + 8);
        v50(v42, v39);
      }

      (*(v65 + 8))(v41, v66);
      v59 = v64;
      a1 = sub_10009D8D0();
      v50(v59, v39);
    }
  }

  else
  {
    v31 = v17;
    v32 = v68;
    (*(v29 + 32))(v27, v31, v68);
    sub_10009D930();
    v33 = sub_10009D990();
    v34 = *(v29 + 8);
    v34(v25, v32);
    v35 = v63;
    sub_10009D9D0();
    v36 = sub_10009D9E0();
    v37 = sub_10009DFF0();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 67109120;
      *(v38 + 4) = v33 & 1;
      _os_log_impl(&_mh_execute_header, v36, v37, "utiOfItem(fromCKShareType)--ckShareType is a UTType. Is file system item: %{BOOL}d", v38, 8u);
    }

    (*(v65 + 8))(v35, v66);
    a1 = sub_10009D8D0();
    v34(v27, v32);
  }

  return a1;
}

unint64_t sub_1000959C0(uint64_t a1, void *a2)
{
  v79 = a2;
  v3 = sub_10009D860();
  v80 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v75 = (&v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v7 = &v74 - v6;
  v8 = sub_10009D9F0();
  v77 = *(v8 - 8);
  v78 = v8;
  v9 = __chkstk_darwin(v8);
  v76 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v74 - v11;
  v13 = sub_10009D6F0();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003714(&qword_1000CA498, &qword_1000A04B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10009FCE0;
  *(inited + 32) = NSURLTypeIdentifierKey;
  v18 = NSURLTypeIdentifierKey;
  sub_1000315FC(inited);
  v20 = v19;
  swift_setDeallocating();
  sub_1000462B8(inited + 32);
  sub_10009D7C0();
  v21 = v7;
  v22 = v12;
  v23 = v80;
  v20, v24, v25, v26, v27, v28, v29, v30;
  v31 = sub_10009D6A0();
  if (v32)
  {
    v33 = v31;
    (*(v14 + 8))(v16, v13);
    return v33;
  }

  v76 = v16;
  sub_10009D9D0();
  v55 = v23;
  v56 = v21;
  (*(v23 + 16))(v21, a1, v3);
  v57 = sub_10009D9E0();
  v58 = sub_10009DFD0();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v81 = v75;
    *v59 = 136315138;
    sub_100096830();
    v60 = sub_10009E2C0();
    v61 = v56;
    v63 = v62;
    (*(v55 + 8))(v61, v3);
    v64 = sub_1000307A4(v60, v63, &v81);
    v65 = v22;
    v66 = v64;
    v63, v67, v68, v69, v70, v71, v72, v73;
    *(v59 + 4) = v66;
    _os_log_impl(&_mh_execute_header, v57, v58, "resourceValues(forKeys:) returned nil for typeIdentifier (UTI) for URL: %s", v59, 0xCu);
    sub_10000670C(v75);

    (*(v77 + 8))(v65, v78);
  }

  else
  {

    (*(v55 + 8))(v56, v3);
    (*(v77 + 8))(v22, v78);
  }

  (*(v14 + 8))(v76, v13);
  if (v79)
  {
    v35 = v79;
    sub_10009E0F0();
    v37 = v36;
    v38 = sub_10009E100();

    v37, v39, v40, v41, v42, v43, v44, v45;
    if (v38)
    {
      v83 = v38;
      sub_100003714(&unk_1000CA270, &qword_10009FF68);
      if (swift_dynamicCast())
      {
        v46 = v82;
        v47 = sub_1000951B4(v81, v82);

        v46, v48, v49, v50, v51, v52, v53, v54;
        return v47;
      }
    }
  }

  return 0;
}

uint64_t sub_1000960B0()
{
  v0 = sub_10009D9A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009D960();
  v4 = sub_10009D980();
  v5 = *(v1 + 8);
  v5(v3, v0);
  if (v4)
  {
    return 0;
  }

  sub_10009D8F0();
  v7 = sub_10009D980();
  v5(v3, v0);
  if (v7)
  {
    return 3;
  }

  sub_10009D8E0();
  v8 = sub_10009D980();
  v5(v3, v0);
  if (v8)
  {
    return 2;
  }

  sub_10009D940();
  v9 = sub_10009D980();
  v5(v3, v0);
  if (v9)
  {
    return 4;
  }

  sub_10009D950();
  v10 = sub_10009D980();
  v5(v3, v0);
  if (v10)
  {
    return 5;
  }

  sub_10009D910();
  v11 = sub_10009D980();
  v5(v3, v0);
  if (v11)
  {
    return 6;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_100096298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10009D8C0();
  __chkstk_darwin(v6 - 8);
  v28[1] = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003714(&unk_1000CB830, &qword_1000A30A8);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = v28 - v13;
  __chkstk_darwin(v12);
  v16 = v28 - v15;
  v17 = sub_10009D9A0();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = v28 - v22;
  v24 = sub_10009D860();
  if ((*(*(v24 - 8) + 48))(a3, 1, v24) == 1)
  {
    if (a1 == 0xD000000000000014 && 0x80000001000A6FE0 == a2 || (sub_10009E2E0() & 1) != 0)
    {
      return 7;
    }

    else if (a1 == 0xD000000000000016 && 0x80000001000A82B0 == a2 || (sub_10009E2E0() & 1) != 0)
    {
      return 8;
    }

    else if (a1 == 0xD000000000000018 && 0x80000001000A6FC0 == a2 || (sub_10009E2E0() & 1) != 0)
    {
      return 9;
    }

    else if (a1 == 0xD000000000000019 && 0x80000001000A6FA0 == a2 || (sub_10009E2E0() & 1) != 0)
    {
      return 10;
    }

    else if (a1 == 0x6C656D726163 && a2 == 0xE600000000000000 || (sub_10009E2E0() & 1) != 0 || a1 == 0xD000000000000018 && 0x80000001000A6F80 == a2 || (sub_10009E2E0() & 1) != 0)
    {
      return 11;
    }

    else
    {
      result = 11;
      if (a1 != 0x6D726F6665657266 || a2 != 0xE800000000000000)
      {
        if (sub_10009E2E0())
        {
          return 11;
        }

        else
        {
          return 12;
        }
      }
    }
  }

  else
  {

    sub_10009D9B0();
    v28[0] = a1;
    v26 = *(v18 + 48);
    if (v26(v16, 1, v17) == 1)
    {
      sub_1000967C8(v16);

      sub_10009D8B0();
      (*(v18 + 56))(v11, 1, 1, v17);
      sub_10009D920();
      if (v26(v14, 1, v17) == 1)
      {
        sub_1000967C8(v14);
        return 1;
      }

      (*(v18 + 32))(v21, v14, v17);
      v27 = sub_1000960B0();
      (*(v18 + 8))(v21, v17);
    }

    else
    {
      (*(v18 + 32))(v23, v16, v17);
      v27 = sub_1000960B0();
      (*(v18 + 8))(v23, v17);
    }

    return v27;
  }

  return result;
}

uint64_t sub_1000967C8(uint64_t a1)
{
  v2 = sub_100003714(&unk_1000CB830, &qword_1000A30A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100096830()
{
  result = qword_1000CA4A0;
  if (!qword_1000CA4A0)
  {
    sub_10009D860();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CA4A0);
  }

  return result;
}

uint64_t sub_100096888(uint64_t a1, uint64_t a2)
{
  v4 = sub_10009D8C0();
  __chkstk_darwin(v4 - 8);
  v5 = sub_100003714(&unk_1000CB830, &qword_1000A30A8);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v19 - v9;
  v11 = sub_10009D9A0();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 0x726464756F6C6369 && a2 == 0xEB00000000657669)
  {
    return 1;
  }

  v16 = v13;
  if (sub_10009E2E0())
  {
    return 1;
  }

  if (a1 == 0x737265626D756ELL && a2 == 0xE700000000000000 || (sub_10009E2E0() & 1) != 0)
  {
    return 2;
  }

  if (a1 == 0x7365676170 && a2 == 0xE500000000000000 || (sub_10009E2E0() & 1) != 0)
  {
    return 1;
  }

  if (a1 == 0x65746F6E79656BLL && a2 == 0xE700000000000000 || (sub_10009E2E0() & 1) != 0)
  {
    return 3;
  }

  if (a1 == 0x7365746F6ELL && a2 == 0xE500000000000000 || (sub_10009E2E0() & 1) != 0)
  {
    return 7;
  }

  if (a1 == 0xD000000000000016 && 0x80000001000A82B0 == a2 || (sub_10009E2E0() & 1) != 0)
  {
    return 8;
  }

  if (a1 == 0x7265646E696D6572 && a2 == 0xE900000000000073 || (sub_10009E2E0() & 1) != 0 || a1 == 0xD000000000000018 && 0x80000001000A6FC0 == a2 || (sub_10009E2E0() & 1) != 0)
  {
    return 9;
  }

  if (a1 == 0xD000000000000011 && 0x80000001000A82D0 == a2 || (sub_10009E2E0() & 1) != 0)
  {
    return 10;
  }

  if (a1 == 0x6D726F6665657266 && a2 == 0xE800000000000000 || (sub_10009E2E0() & 1) != 0 || a1 == 0xD000000000000018 && 0x80000001000A6F80 == a2 || (sub_10009E2E0() & 1) != 0)
  {
    return 11;
  }

  sub_10009D8B0();
  (*(v12 + 56))(v8, 1, 1, v16);
  sub_10009D920();
  if ((*(v12 + 48))(v10, 1, v16) == 1)
  {
    sub_1000967C8(v10);
    return 12;
  }

  else
  {
    (*(v12 + 32))(v15, v10, v16);
    v18 = sub_1000960B0();
    (*(v12 + 8))(v15, v16);
    return v18;
  }
}

uint64_t getEnumTagSinglePayload for UTISupport.SharingItemType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UTISupport.SharingItemType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CloudKitAppType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CloudKitAppType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10009705C()
{
  result = qword_1000CB848;
  if (!qword_1000CB848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB848);
  }

  return result;
}

unint64_t sub_1000970B4()
{
  result = qword_1000CB850;
  if (!qword_1000CB850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB850);
  }

  return result;
}

unint64_t sub_100097108(uint64_t a1, _TtC13SPIHelper_iOS9SPIHelper *a2)
{
  v13._countAndFlagsBits = a1;
  v3._rawValue = &off_1000C1C30;
  v13._object = a2;
  v4 = sub_10009E2B0(v3, v13);
  a2, v5, v6, v7, v8, v9, v10, v11;
  if (v4 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v4;
  }
}

void sub_100097154(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = a1 + 40;
    v4 = _swiftEmptyArrayStorage;
    do
    {
      v5 = (v3 + 16 * v2);
      v6 = v2;
      while (1)
      {
        if (v6 >= v1)
        {
          __break(1u);
LABEL_20:
          __break(1u);
          return;
        }

        v2 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_20;
        }

        v7 = *(v5 - 1);
        v8 = *v5;

        v9 = sub_100097F4C(v7, v8, 0x20uLL);
        if (v9)
        {
          break;
        }

        if (sub_100097F4C(v7, v8, 0x800uLL))
        {
          goto LABEL_13;
        }

        v8, v10, v11, v12, v13, v14, v15, v16;
        ++v6;
        v5 += 2;
        if (v2 == v1)
        {
          goto LABEL_18;
        }
      }

      v17 = sub_100097330(v7, v8);
      if (*(v17 + 2))
      {
        v7 = *(v17 + 4);
        v25 = *(v17 + 5);
        v26 = v17;

        v26, v27, v28, v29, v30, v31, v32, v33;
        v8, v34, v35, v36, v37, v38, v39, v40;
        v8 = v25;
      }

      else
      {
        v17, v18, v19, v20, v21, v22, v23, v24;
      }

LABEL_13:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_100097D24(0, *(v4 + 2) + 1, 1, v4, v41, v42, v43, v44);
      }

      v46 = *(v4 + 2);
      v45 = *(v4 + 3);
      if (v46 >= v45 >> 1)
      {
        v4 = sub_100097D24((v45 > 1), v46 + 1, 1, v4, v41, v42, v43, v44);
      }

      *(v4 + 2) = v46 + 1;
      v47 = &v4[24 * v46];
      *(v47 + 4) = v7;
      *(v47 + 5) = v8;
      v47[48] = (v9 ^ 1) & 1;
    }

    while (v2 != v1);
  }

LABEL_18:
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DB00();
}

char *sub_100097330(uint64_t a1, uint64_t a2)
{
  v2 = sub_10009D9F0();
  __chkstk_darwin(v2);
  v37 = sub_10009DD50();
  v3 = objc_allocWithZone(NSRegularExpression);
  v4 = sub_100097C48(0xD00000000000002FLL, 0x80000001000A8310, 1);
  v5 = sub_10009DDF0();
  v6 = sub_10009DD50();
  v7 = [v4 matchesInString:v6 options:1 range:{0, v5}];

  sub_1000982C4();
  v8 = sub_10009DEA0();

  if (!(v8 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_14:

    v8, v30, v31, v32, v33, v34, v35, v36;
    return _swiftEmptyArrayStorage;
  }

  v9 = sub_10009E260();
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_3:
  result = sub_100090B58(0, v9 & ~(v9 >> 63), 0);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v11 = 0;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v12 = sub_10009E1F0();
      }

      else
      {
        v12 = *(v8 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = [v12 range];
      v16 = [v37 substringWithRange:{v14, v15}];
      v17 = sub_10009DD90();
      v19 = v18;

      v28 = _swiftEmptyArrayStorage[2];
      v27 = _swiftEmptyArrayStorage[3];
      if (v28 >= v27 >> 1)
      {
        sub_100090B58((v27 > 1), v28 + 1, 1);
      }

      ++v11;
      _swiftEmptyArrayStorage[2] = v28 + 1;
      v29 = &_swiftEmptyArrayStorage[2 * v28];
      v29[4] = v17;
      v29[5] = v19;
    }

    while (v9 != v11);
    v8, v20, v21, v22, v23, v24, v25, v26;

    return _swiftEmptyArrayStorage;
  }

  __break(1u);
  return result;
}

uint64_t sub_100097790(void **a1, char a2, id a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_10009D9F0();
  v65 = *(v10 - 8);
  v66 = v10;
  v11 = __chkstk_darwin(v10);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v65 - v14;
  v16 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v65 - v20;
  v22 = *a1;
  if (a2)
  {
    v23 = [v22 URL];
    if (v23)
    {
      v24 = v23;
      sub_10009D820();

      v25 = sub_10009D860();
      (*(*(v25 - 8) + 56))(v19, 0, 1, v25);
    }

    else
    {
      v25 = sub_10009D860();
      (*(*(v25 - 8) + 56))(v19, 1, 1, v25);
    }

    sub_100017C10(v19, v21);
    sub_10009D860();
    v43 = *(v25 - 8);
    if ((*(v43 + 48))(v21, 1, v25) == 1)
    {
      sub_10000AF84(v21);
      LOBYTE(v21) = 0;
    }

    else
    {
      v44 = sub_10009D850();
      v46 = v45;
      (*(v43 + 8))(v21, v25);
      if (v46)
      {
        if (v44 == 0x6F746C69616DLL && v46 == 0xE600000000000000)
        {
          v46, v47, 0x6F746C69616DLL, v48, v49, v50, v51, v52;
          LOBYTE(v21) = 1;
        }

        else
        {
          LOBYTE(v21) = sub_10009E2E0();
          v46, v54, v55, v56, v57, v58, v59, v60;
        }
      }

      else
      {
        LOBYTE(v21) = 0;
      }
    }

    sub_10009D9D0();
    v61 = sub_10009D9E0();
    v62 = sub_10009DFF0();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 67109120;
      *(v63 + 4) = v21 & 1;
      _os_log_impl(&_mh_execute_header, v61, v62, "isValid(address...) is link, valid email: %{BOOL}d", v63, 8u);
    }

    (*(v65 + 8))(v15, v66);
  }

  else
  {
    LODWORD(v21) = [v22 range] == a3 && v26 == a4;
    sub_10009D9D0();
    v28 = sub_10009D9E0();
    v29 = sub_10009DFF0();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v68 = v31;
      *v30 = 136315394;
      v67 = a5;
      type metadata accessor for CheckingType(0);
      v32 = sub_10009DDA0();
      v34 = v33;
      v35 = sub_1000307A4(v32, v33, &v68);
      v34, v36, v37, v38, v39, v40, v41, v42;
      *(v30 + 4) = v35;
      *(v30 + 12) = 1024;
      *(v30 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v28, v29, "isValid(address...) is %s, valid: %{BOOL}d", v30, 0x12u);
      sub_10000670C(v31);
    }

    (*(v65 + 8))(v13, v66);
  }

  return v21 & 1;
}

id sub_100097C48(uint64_t a1, _TtC13SPIHelper_iOS9SPIHelper *a2, uint64_t a3)
{
  v6 = sub_10009DD50();
  a2, v7, v8, v9, v10, v11, v12, v13;
  v18 = 0;
  v14 = [v3 initWithPattern:v6 options:a3 error:&v18];

  if (v14)
  {
    v15 = v18;
  }

  else
  {
    v16 = v18;
    sub_10009D7B0();

    swift_willThrow();
  }

  return v14;
}

char *sub_100097D24(char *result, int64_t a2, char a3, uint64_t a4, void *a5, int64_t a6, int64_t a7, uint64_t a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 24);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
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

  v12 = *(a4 + 16);
  if (v11 <= v12)
  {
    v13 = *(a4 + 16);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_100003714(&qword_1000CB868, &qword_1000A3998);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * ((v15 - 32) / 24);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  v16 = v14 + 32;
  v17 = (a4 + 32);
  if (v9)
  {
    v18 = 24 * v12;
    if (v14 != a4 || v16 >= &v17[24 * v12])
    {
      memmove(v16, v17, v18);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v17, v18, a4, a5, a6, a7, a8;
  return v14;
}

char *sub_100097E40(char *result, int64_t a2, void *a3, uint64_t a4, void *a5, int64_t a6, int64_t a7, uint64_t a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 24);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
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

  v12 = *(a4 + 16);
  if (v11 <= v12)
  {
    v13 = *(a4 + 16);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_100003714(&qword_1000CB7C8, &qword_1000A2A18);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * (v16 >> 4);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  v17 = v14 + 32;
  v18 = (a4 + 32);
  if (v9)
  {
    if (v14 != a4 || v17 >= &v18[16 * v12])
    {
      memmove(v17, v18, 16 * v12);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v18, a3, a4, a5, a6, a7, a8;
  return v14;
}

uint64_t sub_100097F4C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = sub_10009DE30();
  v37 = 0;
  v5 = [objc_allocWithZone(NSDataDetector) initWithTypes:a3 error:&v37];
  if (v5)
  {
    v6 = v5;
    v7 = v37;
    v8 = sub_10009DD50();
    v35 = v6;
    v36 = v4;
    v9 = [v6 matchesInString:v8 options:0 range:{0, v4}];

    sub_1000982C4();
    v10 = sub_10009DEA0();

    v37 = _swiftEmptyArrayStorage;
    if (v10 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10009E260())
    {
      v34 = a3;
      a3 = 0;
      v19 = v10 & 0xC000000000000001;
      v20 = v10 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v19)
        {
          v21 = sub_10009E1F0();
        }

        else
        {
          if (a3 >= *(v20 + 16))
          {
            goto LABEL_16;
          }

          v21 = *(v10 + 8 * a3 + 32);
        }

        v22 = v21;
        v23 = a3 + 1;
        if (__OFADD__(a3, 1))
        {
          break;
        }

        [v21 range];
        sub_10009DFA0();
        if (v24)
        {
        }

        else
        {
          sub_10009E210();
          sub_10009E230();
          sub_10009E240();
          sub_10009E220();
          v19 = v10 & 0xC000000000000001;
          v20 = v10 & 0xFFFFFFFFFFFFFF8;
        }

        ++a3;
        if (v23 == i)
        {
          v25 = v37;
          a3 = v34;
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

    v25 = _swiftEmptyArrayStorage;
LABEL_19:
    v10, v11, v12, v13, v14, v15, v16, v17;
    if ((v25 & 0x8000000000000000) != 0 || (v25 & 0x4000000000000000) != 0)
    {
      goto LABEL_34;
    }

    for (j = *(v25 + 16); j; j = sub_10009E260())
    {
      v27 = 0;
      while (1)
      {
        if ((v25 & 0xC000000000000001) != 0)
        {
          v28 = sub_10009E1F0();
        }

        else
        {
          if (v27 >= *(v25 + 16))
          {
            goto LABEL_33;
          }

          v28 = *(v25 + 8 * v27 + 32);
        }

        v29 = v28;
        v30 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        v37 = v28;
        v31 = sub_100097790(&v37, a3 == 32, 0, v36, a3);

        if (v31)
        {

          return 1;
        }

        ++v27;
        if (v30 == j)
        {
          goto LABEL_35;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      ;
    }

LABEL_35:

    return 0;
  }

  else
  {
    v33 = v37;
    sub_10009D7B0();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

unint64_t sub_1000982C4()
{
  result = qword_1000CB860;
  if (!qword_1000CB860)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000CB860);
  }

  return result;
}

uint64_t sub_100098310()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();
}

void sub_1000983D8(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_10009D9F0();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v88 - v11;
  if (!a1)
  {
    goto LABEL_12;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v91 = a1;
  v13 = a1;

  sub_10009DB00();
  v14 = (v3 + OBJC_IVAR____TtC13SPIHelper_iOS12CKShareModel_accountID);
  if (*(v3 + OBJC_IVAR____TtC13SPIHelper_iOS12CKShareModel_accountID + 8))
  {
    goto LABEL_12;
  }

  v88 = v6;
  v89 = v7;
  v90 = v13;
  v15 = [v90 containerIdentifier];
  v16 = sub_10009DD90();
  v18 = v17;

  sub_10009DD90();
  v20 = v19;
  v21 = sub_10009DDB0();
  v23 = v22;
  v20, v22, v24, v25, v26, v27, v28, v29;
  if (v16 == v21 && v18 == v23)
  {
    v18, v30, v31, v32, v33, v34, v35, v36;
    v23, v37, v38, v39, v40, v41, v42, v43;
    goto LABEL_7;
  }

  v44 = sub_10009E2E0();
  v18, v45, v46, v47, v48, v49, v50, v51;
  v23, v52, v53, v54, v55, v56, v57, v58;
  if (v44)
  {
LABEL_7:
    if (swift_weakLoadStrong())
    {
      v59 = sub_1000994BC();
      v61 = v60;

      v69 = v89;
      if (v61)
      {
        v70 = v14[1];
        *v14 = v59;
        v14[1] = v61;
        v70, v62, v63, v64, v65, v66, v67, v68;
        sub_10009D9D0();
        v71 = sub_10009D9E0();
        v72 = sub_10009DFF0();
        if (os_log_type_enabled(v71, v72))
        {
          v73 = swift_slowAlloc();
          *v73 = 0;
          _os_log_impl(&_mh_execute_header, v71, v72, "found accountID for URL", v73, 2u);
        }

        (*(v69 + 8))(v12, v88);
LABEL_12:
        if (!a2)
        {
          return;
        }

        goto LABEL_13;
      }

      if (a2)
      {

LABEL_13:
        swift_getKeyPath();
        swift_getKeyPath();
        v91 = a2;
        v74 = a2;

        sub_10009DB00();
        return;
      }

      if (swift_weakLoadStrong())
      {

        v75 = sub_100018054();
        v83 = v88;
        if (v76)
        {
          v84 = v14[1];
          *v14 = v75;
          v14[1] = v76;
          v84, v76, v77, v78, v79, v80, v81, v82;
          sub_10009D9D0();
          v85 = sub_10009D9E0();
          v86 = sub_10009DFF0();
          if (os_log_type_enabled(v85, v86))
          {
            v87 = swift_slowAlloc();
            *v87 = 0;
            _os_log_impl(&_mh_execute_header, v85, v86, "found accountID for an EDS account", v87, 2u);
          }

          (*(v69 + 8))(v10, v83);
        }

        else
        {
        }

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  if (a2)
  {
    goto LABEL_13;
  }
}

void sub_1000987EC()
{
  v2 = v1;
  v3 = v0;
  v4 = sub_10009D9F0();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v61 - v9;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  v11 = v69;
  if (v69)
  {
    v12 = [objc_allocWithZone(CKContainer) initWithContainerSetupInfo:v69];
    swift_getKeyPath();
    swift_getKeyPath();
    v69 = v12;

    v13 = v12;
    sub_10009DB00();
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10009DAF0();

    v14 = v69;
    if (v69)
    {
      v15 = *(v3 + OBJC_IVAR____TtC13SPIHelper_iOS12CKShareModel_accountID + 8);
      if (v15)
      {
        v67 = v5;
        v16 = objc_allocWithZone(CKContainerOptions);

        v17 = [v16 init];
        v68 = v14;
        v18 = v17;
        v19 = objc_allocWithZone(CKAccountOverrideInfo);
        v20 = sub_10009DD50();
        v15, v21, v22, v23, v24, v25, v26, v27;
        v28 = v19;
        v29 = v18;
        v30 = [v28 initWithAccountID:v20];

        [v29 setAccountOverrideInfo:v30];
        v31 = objc_allocWithZone(CKContainer);
        v32 = [v31 initWithContainerID:v68 options:v29];
        swift_getKeyPath();
        swift_getKeyPath();
        v69 = v32;

        sub_10009DB00();
        sub_10009D9D0();

        v33 = sub_10009D9E0();
        v34 = sub_10009DFF0();

        if (os_log_type_enabled(v33, v34))
        {
          v62 = v30;
          v63 = v2;
          v64 = v34;
          v65 = v33;
          v66 = v29;
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          v71 = v36;
          v37 = v35;
          *v35 = 136315138;
          swift_getKeyPath();
          swift_getKeyPath();
          sub_10009DAF0();

          v38 = v69;
          v5 = v67;
          if (v69 && (v39 = [v69 options], v38, v38 = objc_msgSend(v39, "accountOverrideInfo"), v39, v38))
          {
            v40 = [v38 accountID];

            if (v40)
            {
              v38 = sub_10009DD90();
              v42 = v41;
            }

            else
            {
              v38 = 0;
              v42 = 0;
            }

            v5 = v67;
          }

          else
          {
            v42 = 0;
          }

          v69 = v38;
          v70 = v42;
          sub_100003714(&qword_1000CA6A0, &qword_10009FD50);
          v45 = sub_10009DDA0();
          v47 = v46;
          v48 = sub_1000307A4(v45, v46, &v71);
          v47, v49, v50, v51, v52, v53, v54, v55;
          *(v37 + 1) = v48;
          v56 = v65;
          _os_log_impl(&_mh_execute_header, v65, v64, "replaceContainer container.options.accountOverrideInfo.accountID: %s", v37, 0xCu);
          sub_10000670C(v36);

          (*(v5 + 8))(v10, v4);
        }

        else
        {

          v5 = v67;
          (*(v67 + 8))(v10, v4);
        }
      }

      else
      {
        v43 = [objc_allocWithZone(CKContainer) initWithContainerID:v69];
        swift_getKeyPath();
        swift_getKeyPath();
        v69 = v43;

        v44 = v43;
        sub_10009DB00();
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_10009DAF0();

    if (v69)
    {
    }

    else
    {
      sub_10009D9D0();
      v57 = sub_10009D9E0();
      v58 = sub_10009DFD0();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&_mh_execute_header, v57, v58, "replaceContainer throwing as it didn't build a container", v59, 2u);
      }

      (*(v5 + 8))(v8, v4);
      sub_100005B1C();
      swift_allocError();
      *v60 = 0xD000000000000012;
      *(v60 + 8) = 0x80000001000A8460;
      *(v60 + 16) = xmmword_1000A39A0;
      *(v60 + 32) = 0x80000001000A51A0;
      *(v60 + 40) = 10;
      swift_willThrow();
    }
  }
}

uint64_t sub_100098F14(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = swift_weakLoadStrong();
    if (result)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v2 = v1;

      sub_10009DAF0();

      LODWORD(v3) = v44;
      p_weak_ivar_lyt = &OptionsModel.weak_ivar_lyt;
      if ([v2 publicPermission] == 1)
      {
        v5 = &OptionsModel.weak_ivar_lyt;
        v6 = [v2 participants];
        sub_1000037C4(0, &qword_1000CAD70, CKShareParticipant_ptr);
        v7 = sub_10009DEA0();

        if (v7 >> 62)
        {
          goto LABEL_47;
        }

        for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10009E260())
        {
          v7, v8, v9, v10, v11, v12, v13, v14;
          if (!i)
          {
            break;
          }

          v16 = [v2 v5[265]];
          v7 = sub_10009DEA0();

          v41 = v3;
          if (v7 >> 62)
          {
            v24 = sub_10009E260();
          }

          else
          {
            v24 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v25 = &OptionsModel.weak_ivar_lyt;
          v42 = v2;
          if (v24)
          {
            v2 = 0;
            v3 = v7 & 0xC000000000000001;
            p_weak_ivar_lyt = v7 & 0xFFFFFFFFFFFFFF8;
            while (1)
            {
              if (v3)
              {
                v26 = sub_10009E1F0();
              }

              else
              {
                if (v2 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_44;
                }

                v26 = *(v7 + 8 * v2 + 32);
              }

              v5 = v26;
              v27 = (v2 + 1);
              if (__OFADD__(v2, 1))
              {
                break;
              }

              if (-[SEL role](v26, "role") == 1 || [v5 v25[203]] != 2)
              {
              }

              else
              {
                sub_10009E210();
                sub_10009E230();
                v25 = (&OptionsModel + 56);
                sub_10009E240();
                sub_10009E220();
              }

              ++v2;
              if (v27 == v24)
              {
                v2 = v42;
                goto LABEL_26;
              }
            }

            __break(1u);
LABEL_44:
            __break(1u);
          }

          else
          {
LABEL_26:
            v7, v17, v18, v19, v20, v21, v22, v23;
            if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
            {
              v43 = sub_10009E260();
            }

            else
            {
              v43 = _swiftEmptyArrayStorage[2];
            }

            v29 = [v2 participants];
            v3 = sub_10009DEA0();

            if (v3 >> 62)
            {
              v37 = sub_10009E260();
              if (!v37)
              {
LABEL_50:
                v3, v30, v31, v32, v33, v34, v35, v36;
                if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
                {
                  v40 = sub_10009E260();
                }

                else
                {
                  v40 = _swiftEmptyArrayStorage[2];
                }

                if (v43 <= 0)
                {

                  if (v40 > 0)
                  {
                    return 1;
                  }

                  else
                  {
                    return v41;
                  }
                }

                else if (v40 < 1)
                {

                  return 2;
                }

                else
                {
                  swift_getKeyPath();
                  swift_getKeyPath();
                  sub_10009DAF0();

                  if (_swiftEmptyArrayStorage == 3)
                  {
                    return 2;
                  }

                  else
                  {
                    return 3;
                  }
                }
              }
            }

            else
            {
              v37 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (!v37)
              {
                goto LABEL_50;
              }
            }

            v2 = 0;
            v7 = v3 & 0xC000000000000001;
            p_weak_ivar_lyt = v3 & 0xFFFFFFFFFFFFFF8;
            while (1)
            {
              if (v7)
              {
                v38 = sub_10009E1F0();
              }

              else
              {
                if (v2 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_46;
                }

                v38 = *(v3 + 8 * v2 + 32);
              }

              v5 = v38;
              v39 = (v2 + 1);
              if (__OFADD__(v2, 1))
              {
                break;
              }

              if (-[SEL role](v38, "role") == 1 || [v5 v25[203]] != 3)
              {
              }

              else
              {
                sub_10009E210();
                sub_10009E230();
                v25 = (&OptionsModel + 56);
                sub_10009E240();
                sub_10009E220();
              }

              ++v2;
              if (v39 == v37)
              {
                v2 = v42;
                goto LABEL_50;
              }
            }
          }

          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          ;
        }
      }

      v28 = [v2 *(p_weak_ivar_lyt + 2128)];

      if (v28 == 2)
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_100099448()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  return v1;
}

uint64_t sub_1000994BC()
{
  v28 = sub_10009D9F0();
  v0 = *(v28 - 8);
  v1 = __chkstk_darwin(v28);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v27 - v4;
  v6 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  __chkstk_darwin(v6 - 8);
  v8 = &v27 - v7;
  v9 = sub_10009D860();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_100008728(v8, &qword_1000CA250, &qword_10009FDF8);
    sub_10009D9D0();
    v13 = sub_10009D9E0();
    v14 = sub_10009DFD0();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "can't get the user iCloud account ID without a document/folder sharing URL--may get here from SPI with no fileURL, will try userICloudEDSAccountID then fall back on signed-in account w. accountID == nil", v15, 2u);
    }

    (*(v0 + 8))(v3, v28);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    sub_10009D800(v16);
    v18 = v17;
    v19 = [objc_opt_self() accountDescriptorForURL:v17 mustBeLoggedIn:1];

    if (v19)
    {
      v20 = [v19 accountIdentifier];
      if (v20)
      {
        v21 = v20;
        v22 = sub_10009DD90();

        (*(v10 + 8))(v12, v9);
        return v22;
      }
    }

    sub_10009D9D0();
    v24 = sub_10009D9E0();
    v25 = sub_10009DFD0();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "accountID must be non-nil for document/folder sharing", v26, 2u);
    }

    (*(v0 + 8))(v5, v28);
    (*(v10 + 8))(v12, v9);
  }

  return 0;
}

uint64_t sub_1000998E0()
{
  v1 = v0;
  v2 = sub_100003714(&qword_1000CBA10, &qword_1000A3CB0);
  v109 = *(v2 - 8);
  v110 = v2;
  v3 = __chkstk_darwin(v2);
  v107 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v108 = &v70 - v5;
  v103 = sub_100003714(&qword_1000CA940, &qword_1000A0C60);
  v100 = *(v103 - 8);
  __chkstk_darwin(v103);
  v97 = &v70 - v6;
  v104 = sub_100003714(&qword_1000CA948, &qword_1000A0C68);
  __chkstk_darwin(v104);
  v98 = &v70 - v7;
  v93 = sub_100003714(&qword_1000CBA18, &qword_1000A3CB8);
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v91 = &v70 - v8;
  v95 = sub_100003714(&qword_1000CBA20, &qword_1000A3CC0);
  __chkstk_darwin(v95);
  v94 = &v70 - v9;
  v102 = sub_100003714(&qword_1000CBA28, &qword_1000A3CC8);
  v99 = *(v102 - 8);
  __chkstk_darwin(v102);
  v96 = &v70 - v10;
  v11 = sub_100003714(&qword_1000CBA30, &qword_1000A3CD0);
  v105 = *(v11 - 8);
  v106 = v11;
  __chkstk_darwin(v11);
  v101 = &v70 - v12;
  v90 = sub_100003714(&qword_1000CA9F0, &qword_1000A0D10);
  v89 = *(v90 - 8);
  __chkstk_darwin(v90);
  v88 = &v70 - v13;
  v113 = sub_100003714(&qword_1000CBA08, &qword_1000A3A20);
  v87 = *(v113 - 8);
  __chkstk_darwin(v113);
  v86 = &v70 - v14;
  v85 = sub_100003714(&qword_1000CBA00, &qword_1000A3A18);
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v83 = &v70 - v15;
  v112 = sub_100003714(&qword_1000CACC0, &qword_1000A0EA8);
  v82 = *(v112 - 8);
  __chkstk_darwin(v112);
  v81 = &v70 - v16;
  v111 = sub_100003714(&qword_1000CB9F8, &qword_1000A3A10);
  v78 = *(v111 - 8);
  __chkstk_darwin(v111);
  v77 = &v70 - v17;
  v76 = sub_100003714(&qword_1000CABC0, &qword_1000A0E60);
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v74 = &v70 - v18;
  v73 = sub_100003714(&qword_1000CAAA0, &qword_1000A0DB0);
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v71 = &v70 - v19;
  v70 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v20 = __chkstk_darwin(v70);
  v22 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v70 - v23;
  v25 = sub_100003714(&qword_1000CAB08, &qword_1000A0E10);
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v70 - v27;
  v29 = sub_100003714(&qword_1000CABA8, &qword_1000A0E58);
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v70 - v31;
  v33 = v1 + OBJC_IVAR____TtC13SPIHelper_iOS12CKShareModel__ckShare;
  v114 = 0;
  sub_100003714(&qword_1000CB150, &qword_1000A1920);
  sub_10009DAC0();
  v34 = *(v30 + 32);
  v79 = v33;
  v80 = v29;
  v34(v33, v32, v29);
  v35 = OBJC_IVAR____TtC13SPIHelper_iOS12CKShareModel__currentUserIsOwner;
  LOBYTE(v114) = 1;
  sub_10009DAC0();
  (*(v26 + 32))(v1 + v35, v28, v25);
  v36 = OBJC_IVAR____TtC13SPIHelper_iOS12CKShareModel__sharingURL;
  v37 = sub_10009D860();
  (*(*(v37 - 8) + 56))(v24, 1, 1, v37);
  sub_10003F3DC(v24, v22);
  v38 = v71;
  sub_10009DAC0();
  sub_100008728(v24, &qword_1000CA250, &qword_10009FDF8);
  (*(v72 + 32))(v1 + v36, v38, v73);
  v39 = OBJC_IVAR____TtC13SPIHelper_iOS12CKShareModel__ckShareParticipantsCoOwnersState;
  v114 = &off_1000C1960;
  v40 = v74;
  sub_10009DAC0();
  (*(v75 + 32))(v1 + v39, v40, v76);
  v41 = v1 + OBJC_IVAR____TtC13SPIHelper_iOS12CKShareModel__containerID;
  v114 = 0;
  sub_100003714(&qword_1000CB900, ",s");
  v42 = v77;
  sub_10009DAC0();
  (*(v78 + 32))(v41, v42, v111);
  v43 = v1 + OBJC_IVAR____TtC13SPIHelper_iOS12CKShareModel__containerSetupInfo;
  v114 = 0;
  sub_100003714(&qword_1000CACD8, &qword_1000A0EB0);
  v44 = v81;
  sub_10009DAC0();
  (*(v82 + 32))(v43, v44, v112);
  v45 = (v1 + OBJC_IVAR____TtC13SPIHelper_iOS12CKShareModel_accountID);
  *v45 = 0;
  v45[1] = 0;
  v46 = OBJC_IVAR____TtC13SPIHelper_iOS12CKShareModel__container;
  v114 = 0;
  sub_100003714(&qword_1000CB918, &qword_1000A39E8);
  v47 = v83;
  sub_10009DAC0();
  v48 = v1 + v46;
  v49 = v1;
  (*(v84 + 32))(v48, v47, v85);
  v50 = v1 + OBJC_IVAR____TtC13SPIHelper_iOS12CKShareModel__ckSystemSharingUIObserver;
  v114 = 0;
  v51 = sub_100003714(&unk_1000CB928, &qword_1000A39F0);
  v52 = v86;
  v85 = v51;
  sub_10009DAC0();
  (*(v87 + 32))(v50, v52, v113);
  swift_weakInit();
  if (_swiftEmptyArrayStorage >> 62 && sub_10009E260())
  {
    v53 = sub_1000327CC(_swiftEmptyArrayStorage);
  }

  else
  {
    v53 = &_swiftEmptySetSingleton;
  }

  *(v1 + OBJC_IVAR____TtC13SPIHelper_iOS12CKShareModel_store) = v53;
  swift_beginAccess();
  v54 = v88;
  sub_10009DAD0();
  swift_endAccess();
  swift_allocObject();
  swift_weakInit();
  sub_100039B10(&qword_1000CABB0, &qword_1000CA9F0, &qword_1000A0D10, &protocol conformance descriptor for Published<A>.Publisher);

  v55 = v90;
  sub_10009DB70();

  (*(v89 + 8))(v54, v55);
  swift_beginAccess();
  sub_10009DA80();
  swift_endAccess();

  swift_beginAccess();
  v56 = v91;
  sub_10009DAD0();
  swift_endAccess();
  sub_100039B10(&qword_1000CBA38, &qword_1000CBA18, &qword_1000A3CB8, &protocol conformance descriptor for Published<A>.Publisher);
  sub_10009CE40();
  v57 = v93;
  sub_10009DB60();
  (*(v92 + 8))(v56, v57);
  swift_beginAccess();
  v58 = v97;
  sub_10009DAD0();
  swift_endAccess();
  sub_100039B10(&qword_1000CACC8, &qword_1000CA940, &qword_1000A0C60, &protocol conformance descriptor for Published<A>.Publisher);
  sub_100039A04();
  v59 = v103;
  sub_10009DB60();
  (*(v100 + 8))(v58, v59);
  sub_100039B10(&qword_1000CBA50, &qword_1000CBA20, &qword_1000A3CC0, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  sub_100039B10(&qword_1000CACF8, &qword_1000CA948, &qword_1000A0C68, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v60 = v96;
  sub_10009DA00();
  v61 = swift_allocObject();
  swift_weakInit();

  v62 = swift_allocObject();
  *(v62 + 16) = sub_10009CF2C;
  *(v62 + 24) = v61;
  sub_100039B10(&qword_1000CBA58, &qword_1000CBA28, &qword_1000A3CC8, &protocol conformance descriptor for Publishers.CombineLatest<A, B>);
  v64 = v101;
  v63 = v102;
  sub_10009DB30();

  (*(v99 + 8))(v60, v63);
  swift_beginAccess();
  v65 = v108;
  sub_10009DAD0();
  swift_endAccess();
  sub_100039B10(&qword_1000CBA60, &qword_1000CBA30, &qword_1000A3CD0, &protocol conformance descriptor for Publishers.Map<A, B>);
  v66 = v106;
  sub_10009DB80();
  (*(v105 + 8))(v64, v66);
  v68 = v109;
  v67 = v110;
  (*(v109 + 16))(v107, v65, v110);
  swift_beginAccess();
  sub_10009DAE0();
  swift_endAccess();
  (*(v68 + 8))(v65, v67);
  return v49;
}

void sub_10009AA68(void **a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (!v2)
    {

      return;
    }

    v3 = v2;
    v4 = [v3 currentUserParticipant];
    v5 = [v3 owner];
    v6 = v5;
    if (v4)
    {
      if (v5)
      {
        sub_1000037C4(0, &qword_1000CAD70, CKShareParticipant_ptr);
        sub_10009E110();
      }
    }

    else
    {
      if (!v5)
      {
        goto LABEL_10;
      }

      v4 = v5;
    }

LABEL_10:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10009DB00();
  }
}

id sub_10009ABA8(id a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (a2)
    {
      v5 = &selRef_initWithContainerSetupInfo_;
      a1 = a2;
    }

    else
    {
      if (!a1)
      {
        goto LABEL_9;
      }

      v5 = &selRef_initWithContainerID_;
    }

    a1 = [objc_allocWithZone(CKContainer) *v5];
    if (a1)
    {
      v6 = objc_allocWithZone(CKSystemSharingUIObserver);
      v7 = a1;
      a1 = [v6 initWithContainer:v7];
      v8 = swift_allocObject();
      swift_weakInit();
      v9 = swift_allocObject();
      *(v9 + 16) = v8;
      *(v9 + 24) = a2;
      v10 = a2;

      sub_10009E0A0();

      swift_allocObject();
      swift_weakInit();

      sub_10009E0B0();

      return a1;
    }

LABEL_9:

    return a1;
  }

  return 0;
}

uint64_t sub_10009AD80(uint64_t a1, void *a2, char a3, uint64_t a4, void *a5)
{
  v8 = sub_10009D9F0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100003714(&qword_1000CA8F0, &qword_1000A09C8);
  __chkstk_darwin(v12 - 8);
  v14 = v36 - v13;
  if (a3)
  {
    sub_10009D9D0();
    swift_errorRetain();
    v15 = sub_10009D9E0();
    v16 = sub_10009DFD0();
    sub_10009D110(a2, 1);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v36[0] = v18;
      *v17 = 136315138;
      v36[3] = a2;
      swift_errorRetain();
      sub_100003714(&qword_1000CB840, &qword_10009FDA0);
      v19 = sub_10009DDA0();
      v21 = v20;
      v22 = sub_1000307A4(v19, v20, v36);
      v21, v23, v24, v25, v26, v27, v28, v29;
      *(v17 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v15, v16, "ckShareModel systemSharingUIDidSaveShareBlock error: %s", v17, 0xCu);
      sub_10000670C(v18);
    }

    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    v31 = sub_10009DF40();
    (*(*(v31 - 8) + 56))(v14, 1, 1, v31);
    v32 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    sub_10009DF10();

    sub_10009D11C(a2, 0);
    v33 = a5;
    v34 = sub_10009DF00();
    v35 = swift_allocObject();
    v35[2] = v34;
    v35[3] = &protocol witness table for MainActor;
    v35[4] = v32;
    v35[5] = a2;
    v35[6] = a5;

    sub_100019B10(0, 0, v14, &unk_1000A3CF0, v35);
  }
}

uint64_t sub_10009B0D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  v7 = sub_10009D9F0();
  v6[11] = v7;
  v6[12] = *(v7 - 8);
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v8 = sub_10009D860();
  v6[16] = v8;
  v6[17] = *(v8 - 8);
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = sub_10009DF10();
  v6[21] = sub_10009DF00();
  v10 = sub_10009DED0();
  v6[22] = v10;
  v6[23] = v9;

  return _swift_task_switch(sub_10009B250, v10, v9);
}

uint64_t sub_10009B250()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 192) = Strong;
  if (!Strong)
  {
    goto LABEL_20;
  }

  v2 = swift_weakLoadStrong();
  *(v0 + 200) = v2;
  if (!v2)
  {
LABEL_19:

LABEL_20:

    goto LABEL_21;
  }

  v3 = [*(v0 + 72) recordID];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  v4 = *(v0 + 40);
  if (!v4)
  {
    if (!v3)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  v5 = [*(v0 + 40) recordID];

  if (!v3)
  {
    if (!v5)
    {
      goto LABEL_14;
    }

LABEL_21:

    v15 = *(v0 + 8);

    return v15();
  }

  if (!v5)
  {
LABEL_11:

    goto LABEL_21;
  }

  sub_1000037C4(0, &qword_1000CBA68, CKRecordID_ptr);
  v6 = sub_10009E110();

  if ((v6 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_14:
  v7 = [*(v0 + 72) URL];
  if (!v7)
  {
LABEL_18:

    goto LABEL_19;
  }

  v8 = *(v0 + 152);
  v10 = *(v0 + 136);
  v9 = *(v0 + 144);
  v11 = *(v0 + 128);
  v12 = v7;
  sub_10009D820();

  (*(v10 + 32))(v8, v9, v11);
  *(v0 + 208) = sub_10009DF00();
  v13 = swift_task_alloc();
  *(v0 + 216) = v13;
  *v13 = v0;
  v13[1] = sub_10009B540;

  return sub_1000250A0();
}

uint64_t sub_10009B540()
{
  *(*v1 + 224) = v0;

  v3 = sub_10009DED0();
  if (v0)
  {
    v4 = sub_10009B840;
  }

  else
  {
    v4 = sub_10009B69C;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_10009B69C()
{

  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  return _swift_task_switch(sub_10009B700, v1, v2);
}

uint64_t sub_10009B700(uint64_t a1)
{
  sub_10009D9D0();
  v2 = sub_10009D9E0();
  v3 = sub_10009DFF0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "ckShareModel calling notifyClientShareDidChange()", v4, 2u);
  }

  v5 = v1[15];
  v6 = v1[11];
  v7 = v1[12];

  v8 = *(v7 + 8);
  v1[29] = v8;
  v8(v5, v6);
  v9 = swift_task_alloc();
  v1[30] = v9;
  *v9 = v1;
  v9[1] = sub_10009BB28;
  v10 = v1[19];
  v11 = v1[10];

  return sub_100025D14(v10, v11);
}

uint64_t sub_10009B840()
{

  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  return _swift_task_switch(sub_10009B8A4, v1, v2);
}

uint64_t sub_10009B8A4()
{
  v32 = v0;

  sub_10009D9D0();
  swift_errorRetain();
  v1 = sub_10009D9E0();
  v2 = sub_10009DFD0();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[28];
    v4 = v0[17];
    v29 = v0[16];
    v30 = v0[19];
    v5 = v0[12];
    v27 = v0[11];
    v28 = v0[14];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v31 = v7;
    *v6 = 136315138;
    v0[6] = v3;
    swift_errorRetain();
    sub_100003714(&qword_1000CB840, &qword_10009FDA0);
    v8 = sub_10009DDA0();
    v10 = v9;
    v11 = sub_1000307A4(v8, v9, &v31);
    v10, v12, v13, v14, v15, v16, v17, v18;
    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v1, v2, "ckShareModel systemSharingUIDidSaveShareBlock failed to refetch share: %s", v6, 0xCu);
    sub_10000670C(v7);

    (*(v5 + 8))(v28, v27);
    (*(v4 + 8))(v30, v29);
  }

  else
  {
    v19 = v0[19];
    v20 = v0[16];
    v21 = v0[17];
    v22 = v0[14];
    v23 = v0[11];
    v24 = v0[12];

    (*(v24 + 8))(v22, v23);
    (*(v21 + 8))(v19, v20);
  }

  v25 = v0[1];

  return v25();
}

uint64_t sub_10009BB28()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  v3 = *(v2 + 184);
  v4 = *(v2 + 176);
  if (v0)
  {
    v5 = sub_10009BD38;
  }

  else
  {
    v5 = sub_10009BC64;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10009BC64()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[17];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10009BD38()
{
  v32 = v0;

  sub_10009D9D0();
  swift_errorRetain();
  v1 = sub_10009D9E0();
  v2 = sub_10009DFD0();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[31];
    v29 = v0[19];
    v4 = v0[17];
    v27 = v0[29];
    v28 = v0[16];
    v25 = v0[11];
    v26 = v0[13];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v31 = v6;
    *v5 = 136315138;
    v0[7] = v3;
    swift_errorRetain();
    sub_100003714(&qword_1000CB840, &qword_10009FDA0);
    v7 = sub_10009DDA0();
    v9 = v8;
    v10 = sub_1000307A4(v7, v8, &v31);
    v9, v11, v12, v13, v14, v15, v16, v17;
    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "ckShareModel systemSharingUIDidSaveShareBlock failed to fetch share metadata: %s", v5, 0xCu);
    sub_10000670C(v6);

    v27(v26, v25);
    (*(v4 + 8))(v29, v28);
  }

  else
  {
    v18 = v0[29];
    v30 = v0[19];
    v19 = v0[16];
    v20 = v0[17];
    v21 = v0[13];
    v22 = v0[11];

    v18(v21, v22);
    (*(v20 + 8))(v30, v19);
  }

  v23 = v0[1];

  return v23();
}

uint64_t sub_10009BFD0(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = sub_100003714(&qword_1000CA8F0, &qword_1000A09C8);
  __chkstk_darwin(v7 - 8);
  v9 = v44 - v8;
  v10 = sub_10009D9F0();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v44 - v15;
  if (a3)
  {
    sub_10009D9D0();
    swift_errorRetain();
    v17 = sub_10009D9E0();
    v18 = sub_10009DFD0();
    sub_10009CFFC(a2, 1);
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v44[0] = v20;
      *v19 = 136315138;
      v44[3] = a2;
      swift_errorRetain();
      sub_100003714(&qword_1000CB840, &qword_10009FDA0);
      v21 = sub_10009DDA0();
      v23 = v22;
      v24 = sub_1000307A4(v21, v22, v44);
      v23, v25, v26, v27, v28, v29, v30, v31;
      *(v19 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v17, v18, "ckShareModel systemSharingUIDidStopSharingBlock error: %s", v19, 0xCu);
      sub_10000670C(v20);
    }

    return (*(v11 + 8))(v14, v10);
  }

  else
  {
    sub_10009D9D0();
    v33 = a1;
    v34 = sub_10009D9E0();
    v35 = sub_10009DFF0();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138412290;
      *(v36 + 4) = v33;
      *v37 = v33;
      v38 = v33;
      _os_log_impl(&_mh_execute_header, v34, v35, "ckShareModel systemSharingUIDidStopSharingBlock stopped sharing: %@", v36, 0xCu);
      sub_100008728(v37, &qword_1000CA8E0, &qword_10009FE08);
    }

    (*(v11 + 8))(v16, v10);
    v39 = sub_10009DF40();
    (*(*(v39 - 8) + 56))(v9, 1, 1, v39);
    v40 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    sub_10009DF10();
    v41 = v33;

    v42 = sub_10009DF00();
    v43 = swift_allocObject();
    v43[2] = v42;
    v43[3] = &protocol witness table for MainActor;
    v43[4] = v40;
    v43[5] = v41;

    sub_100019B10(0, 0, v9, &unk_1000A3CE0, v43);
  }
}

uint64_t sub_10009C420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = sub_10009D9F0();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  sub_10009DF10();
  v5[11] = sub_10009DF00();
  v8 = sub_10009DED0();

  return _swift_task_switch(sub_10009C514, v8, v7);
}

uint64_t sub_10009C514()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (swift_weakLoadStrong())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10009DAF0();

      v1 = *(v0 + 40);
      if (v1)
      {
        v2 = [*(v0 + 40) recordID];

        if (v2)
        {
          v3 = *(v0 + 56);
          sub_1000037C4(0, &qword_1000CBA68, CKRecordID_ptr);
          v4 = v3;
          v5 = sub_10009E110();

          if (v5)
          {
            sub_10009D9D0();
            v6 = sub_10009D9E0();
            v7 = sub_10009DFF0();
            v8 = os_log_type_enabled(v6, v7);
            v10 = *(v0 + 72);
            v9 = *(v0 + 80);
            v11 = *(v0 + 64);
            if (v8)
            {
              v12 = swift_slowAlloc();
              *v12 = 0;
              _os_log_impl(&_mh_execute_header, v6, v7, "ckShareModel systemSharingUIDidStopSharingBlock dismissing", v12, 2u);
            }

            else
            {
            }

            (*(v10 + 8))(v9, v11);
            goto LABEL_10;
          }
        }
      }
    }
  }

LABEL_10:

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_10009C758()
{
  v1 = OBJC_IVAR____TtC13SPIHelper_iOS12CKShareModel__ckShare;
  v2 = sub_100003714(&qword_1000CABA8, &qword_1000A0E58);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13SPIHelper_iOS12CKShareModel__currentUserIsOwner;
  v4 = sub_100003714(&qword_1000CAB08, &qword_1000A0E10);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13SPIHelper_iOS12CKShareModel__sharingURL;
  v6 = sub_100003714(&qword_1000CAAA0, &qword_1000A0DB0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC13SPIHelper_iOS12CKShareModel__ckShareParticipantsCoOwnersState;
  v8 = sub_100003714(&qword_1000CABC0, &qword_1000A0E60);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC13SPIHelper_iOS12CKShareModel__containerID;
  v10 = sub_100003714(&qword_1000CB9F8, &qword_1000A3A10);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC13SPIHelper_iOS12CKShareModel__containerSetupInfo;
  v12 = sub_100003714(&qword_1000CACC0, &qword_1000A0EA8);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  *(v0 + OBJC_IVAR____TtC13SPIHelper_iOS12CKShareModel_accountID + 8), v13, v14, v15, v16, v17, v18, v19;
  v20 = OBJC_IVAR____TtC13SPIHelper_iOS12CKShareModel__container;
  v21 = sub_100003714(&qword_1000CBA00, &qword_1000A3A18);
  (*(*(v21 - 8) + 8))(v0 + v20, v21);
  v22 = OBJC_IVAR____TtC13SPIHelper_iOS12CKShareModel__ckSystemSharingUIObserver;
  v23 = sub_100003714(&qword_1000CBA08, &qword_1000A3A20);
  (*(*(v23 - 8) + 8))(v0 + v22, v23);
  swift_weakDestroy();
  *(v0 + OBJC_IVAR____TtC13SPIHelper_iOS12CKShareModel_store), v24, v25, v26, v27, v28, v29, v30;
  return v0;
}

uint64_t sub_10009CA0C()
{
  sub_10009C758();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CKShareModel(uint64_t a1)
{
  result = qword_1000CB8E0;
  if (!qword_1000CB8E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10009CAB8(uint64_t a1)
{
  sub_100032004(319, &qword_1000CB8F0, &qword_1000CB150, &qword_1000A1920);
  if (v1 <= 0x3F)
  {
    sub_100031F60(319, &qword_1000CA610, &type metadata for Bool);
    if (v2 <= 0x3F)
    {
      sub_100032004(319, &qword_1000CA698, &qword_1000CA250, &qword_10009FDF8);
      if (v3 <= 0x3F)
      {
        sub_100031F60(319, &qword_1000CB660, &type metadata for TriStateBool);
        if (v4 <= 0x3F)
        {
          sub_100032004(319, &qword_1000CB8F8, &qword_1000CB900, ",s");
          if (v5 <= 0x3F)
          {
            sub_100032004(319, &qword_1000CB908, &qword_1000CACD8, &qword_1000A0EB0);
            if (v6 <= 0x3F)
            {
              sub_100032004(319, &qword_1000CB910, &qword_1000CB918, &qword_1000A39E8);
              if (v7 <= 0x3F)
              {
                sub_100032004(319, &qword_1000CB920, &unk_1000CB928, &qword_1000A39F0);
                if (v8 <= 0x3F)
                {
                  swift_updateClassMetadata2();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_10009CE00()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_10009CE40()
{
  result = qword_1000CBA40;
  if (!qword_1000CBA40)
  {
    sub_10000594C(&qword_1000CB900, ",s");
    sub_10009CEDC(&qword_1000CBA48, &qword_1000CA6D8, CKContainerID_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CBA40);
  }

  return result;
}

uint64_t sub_10009CEDC(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000037C4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10009CF34()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10009CF6C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_10009CFA4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10009CFFC(uint64_t result, char a2)
{
  if (a2)
  {
  }

  return v2;
}

uint64_t sub_10009D008()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10009D050(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000093DC;

  return sub_10009C420(a1, v4, v5, v7, v6);
}

void sub_10009D110(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

id sub_10009D11C(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

uint64_t sub_10009D128()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10009D178(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000841C;

  return sub_10009B0D4(a1, v4, v5, v6, v7, v8);
}

id sub_10009D240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, Swift::String a9)
{
  v9 = sub_10009D9F0();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v53 - v14;
  v16 = objc_allocWithZone(ISIcon);
  v17 = sub_10009DD50();
  v18 = [v16 initWithType:v17];

  v19 = [objc_opt_self() mainScreen];
  [v19 scale];
  v21 = v20;

  v22 = [objc_allocWithZone(ISImageDescriptor) initWithSize:128.0 scale:{128.0, v21}];
  v23 = [v18 imageForDescriptor:v22];
  if (!v23)
  {

    return 0;
  }

  v24 = v23;
  v25 = v24;
  if ([v24 placeholder])
  {
    v26 = [v18 prepareImageForDescriptor:v22];
    v27 = v24;
    if (v26)
    {
      v28 = v26;

      v27 = v28;
    }

    sub_10009D9D0();
    v25 = v27;
    v29 = sub_10009D9E0();
    v30 = sub_10009DFF0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v54 = v9;
      v32 = v31;
      *v31 = 67109120;
      *(v31 + 1) = [v25 placeholder];

      _os_log_impl(&_mh_execute_header, v29, v30, "iOS appIcon placeholder;  did prepareImage(forDescriptor:), is still placeHolder: %{BOOL}d", v32, 8u);
      v9 = v54;
    }

    else
    {

      v29 = v25;
    }

    (*(v10 + 8))(v15, v9);
  }

  sub_10009D9D0();
  v34 = v25;
  v35 = sub_10009D9E0();
  v36 = sub_10009DFF0();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v54 = v13;
    v39 = v24;
    v40 = v22;
    v41 = v18;
    v42 = v10;
    v43 = v9;
    v44 = v38;
    *v37 = 138412290;
    *(v37 + 4) = v34;
    *v38 = v34;
    v45 = v34;
    _os_log_impl(&_mh_execute_header, v35, v36, "iOS appIcon image: %@", v37, 0xCu);
    sub_10000C2B0(v44);
    v9 = v43;
    v10 = v42;
    v18 = v41;
    v22 = v40;
    v24 = v39;
    v13 = v54;
  }

  (*(v10 + 8))(v13, v9);
  v46._countAndFlagsBits = [v34 CGImage];
  if (v46._countAndFlagsBits)
  {
    countAndFlagsBits = v46._countAndFlagsBits;
    v33 = [objc_allocWithZone(UIImage) initWithCGImage:v46._countAndFlagsBits];

    return v33;
  }

  __break(1u);
  return sub_10009D680(v46, v47, v48, v49, v50, a9);
}