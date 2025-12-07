unint64_t sub_1748()
{
  result = qword_C4C8;
  if (!qword_C4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C4C8);
  }

  return result;
}

uint64_t sub_17B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = a1;
  v11 = a2;
  v2 = sub_327C();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_32EC();
  __chkstk_darwin();
  sub_324C();
  sub_30D4(v14, v14[3]);
  sub_324C();
  sub_30D4(v13, v13[3]);
  sub_326C();
  sub_325C();
  (*(v3 + 8))(v5, v2);
  sub_3118(v13);
  v12 = &OBJC_PROTOCOL___PSController;
  swift_dynamicCastObjCProtocolUnconditional();
  v6 = [objc_allocWithZone(PSSpecifier) init];
  sub_32AC();
  sub_328C();
  v7 = sub_335C();

  [v6 setProperty:v10 forKey:v7];

  sub_32DC();
  sub_3118(v14);
  return sub_32BC();
}

uint64_t sub_19E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[22] = a2;
  v3[23] = a3;
  v3[21] = a1;
  v4 = sub_31FC();
  v3[24] = v4;
  v3[25] = *(v4 - 8);
  v3[26] = swift_task_alloc();
  v5 = sub_32FC();
  v3[27] = v5;
  v3[28] = *(v5 - 8);
  v3[29] = swift_task_alloc();
  v6 = sub_323C();
  v3[30] = v6;
  v3[31] = *(v6 - 8);
  v3[32] = swift_task_alloc();
  sub_2390(&qword_C4E8, &qword_3930);
  v3[33] = swift_task_alloc();
  v7 = sub_322C();
  v3[34] = v7;
  v3[35] = *(v7 - 8);
  v3[36] = swift_task_alloc();
  sub_338C();
  v3[37] = sub_337C();
  v9 = sub_336C();

  return _swift_task_switch(sub_1C2C, v9, v8);
}

uint64_t sub_1C2C()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);
  v4 = *(v0 + 256);
  v3 = *(v0 + 264);
  v5 = *(v0 + 240);
  v6 = *(v0 + 248);

  sub_332C();
  sub_321C();
  (*(v6 + 8))(v4, v5);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v8 = *(v0 + 224);
    v7 = *(v0 + 232);
    v9 = *(v0 + 216);
    sub_2F3C(*(v0 + 264), &qword_C4E8, &qword_3930);
    sub_331C();
    sub_333C();
    (*(v8 + 8))(v7, v9);
LABEL_29:

    v50 = *(v0 + 8);

    return v50();
  }

  (*(*(v0 + 280) + 32))(*(v0 + 288), *(v0 + 264), *(v0 + 272));
  v10 = sub_320C();
  if (!v10)
  {
LABEL_28:
    v45 = *(v0 + 280);
    v44 = *(v0 + 288);
    v46 = *(v0 + 272);
    v48 = *(v0 + 224);
    v47 = *(v0 + 232);
    v49 = *(v0 + 216);
    sub_329C();
    sub_331C();
    sub_333C();
    (*(v48 + 8))(v47, v49);
    (*(v45 + 8))(v44, v46);
    goto LABEL_29;
  }

  v11 = v10;
  v12 = sub_2DCC(&_swiftEmptyArrayStorage);
  v13 = v12;
  v53 = *(v11 + 16);
  if (!v53)
  {
LABEL_27:

    goto LABEL_28;
  }

  v14 = 0;
  v15 = *(v0 + 200);
  v52 = v11 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v16 = (v15 + 8);
  while (1)
  {
    if (v14 >= *(v11 + 16))
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v12);
    }

    (*(v15 + 16))(*(v0 + 208), v52 + *(v15 + 72) * v14, *(v0 + 192));

    *(v0 + 152) = sub_31DC();
    *(v0 + 160) = v18;
    sub_33CC();
    v19 = sub_31EC();
    if (!v20)
    {
      v30 = sub_26C0(v0 + 16);
      if (v31)
      {
        v32 = v30;
        v33 = v13;
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          sub_2C28();
          v33 = v13;
        }

        v34 = *(v0 + 208);
        v35 = *(v0 + 192);
        sub_2EE8(*(v33 + 48) + 40 * v32);
        sub_2F9C((*(v33 + 56) + 32 * v32), (v0 + 88));
        sub_2A84(v32, v33);

        sub_2EE8(v0 + 16);
        (*v16)(v34, v35);
        v13 = v33;
      }

      else
      {
        v41 = *(v0 + 208);
        v42 = *(v0 + 192);

        sub_2EE8(v0 + 16);
        (*v16)(v41, v42);
        *(v0 + 104) = 0u;
        *(v0 + 88) = 0u;
      }

      v12 = sub_2F3C(v0 + 88, &qword_C4F0, &qword_3938);
      v28 = v13;
      goto LABEL_7;
    }

    *(v0 + 80) = &type metadata for String;
    *(v0 + 56) = v19;
    *(v0 + 64) = v20;
    sub_2F9C((v0 + 56), (v0 + 120));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = sub_26C0(v0 + 16);
    v23 = v13[2];
    v24 = (v22 & 1) == 0;
    v25 = __OFADD__(v23, v24);
    v26 = v23 + v24;
    if (v25)
    {
      goto LABEL_36;
    }

    v27 = v22;
    if (v13[3] < v26)
    {
      break;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v43 = v12;
      sub_2C28();
      v12 = v43;
    }

    v28 = v13;
LABEL_21:
    v36 = *(v0 + 208);
    v37 = *(v0 + 192);
    if (v27)
    {
      v17 = (v28[7] + 32 * v12);
      sub_3118(v17);
      sub_2F9C((v0 + 120), v17);

      sub_2EE8(v0 + 16);
      v12 = (*v16)(v36, v37);
    }

    else
    {
      v28[(v12 >> 6) + 8] |= 1 << v12;
      v38 = v12;
      sub_2FAC(v0 + 16, v28[6] + 40 * v12);
      sub_2F9C((v0 + 120), (v28[7] + 32 * v38));

      sub_2EE8(v0 + 16);
      v12 = (*v16)(v36, v37);
      v39 = v28[2];
      v25 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v25)
      {
        goto LABEL_37;
      }

      v28[2] = v40;
    }

LABEL_7:
    ++v14;
    v13 = v28;
    if (v53 == v14)
    {
      goto LABEL_27;
    }
  }

  sub_27CC(v26, isUniquelyReferenced_nonNull_native);
  v28 = v13;
  v12 = sub_26C0(v0 + 16);
  if ((v27 & 1) == (v29 & 1))
  {
    goto LABEL_21;
  }

  v12 = &type metadata for AnyHashable;

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v12);
}

uint64_t sub_21C8()
{
  v1 = sub_2390(&qword_C4D0, &qword_3918);
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v9 - v3;
  v5 = *v0;
  *(swift_allocObject() + 16) = v5;
  sub_32CC();
  sub_2418();
  v6 = v5;
  sub_334C();
  *(swift_allocObject() + 16) = v6;
  sub_2614();
  v7 = v6;
  sub_330C();
  return (*(v2 + 8))(v4, v1);
}

id sub_2354@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(sub_32AC()) init];
  *a1 = result;
  return result;
}

uint64_t sub_2390(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_23D8()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_2418()
{
  result = qword_C4D8;
  if (!qword_C4D8)
  {
    sub_32CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C4D8);
  }

  return result;
}

uint64_t sub_2470(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2520;

  return sub_19E8(a1, a2, v6);
}

uint64_t sub_2520()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_2614()
{
  result = qword_C4E0;
  if (!qword_C4E0)
  {
    sub_2678(&qword_C4D0, &qword_3918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C4E0);
  }

  return result;
}

uint64_t sub_2678(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_26C0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_33AC(*(v2 + 40));

  return sub_2704(a1, v4);
}

unint64_t sub_2704(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_2FAC(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_33BC();
      sub_2EE8(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_27CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2390(&qword_C4F8, &qword_3940);
  result = sub_33EC();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
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
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_2F9C((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_2FAC(v23, &v36);
        sub_3008(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_33AC(*(v7 + 40));
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_2F9C(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_2A84(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_339C() + 1) & ~v5;
    do
    {
      sub_2FAC(*(a2 + 48) + 40 * v6, v25);
      v10 = sub_33AC(*(a2 + 40));
      result = sub_2EE8(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_2C28()
{
  v1 = v0;
  sub_2390(&qword_C4F8, &qword_3940);
  v2 = *v0;
  v3 = sub_33DC();
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
        v18 = 40 * v17;
        sub_2FAC(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_3008(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_2F9C(v22, (*(v4 + 56) + v17));
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

unint64_t sub_2DCC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2390(&qword_C4F8, &qword_3940);
    v3 = sub_33FC();
    v4 = a1 + 32;

    while (1)
    {
      sub_3064(v4, v13);
      result = sub_26C0(v13);
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
      result = sub_2F9C(&v15, (v3[7] + 32 * result));
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

uint64_t sub_2F3C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_2390(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

_OWORD *sub_2F9C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_3008(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_3064(uint64_t a1, uint64_t a2)
{
  v4 = sub_2390(&qword_C500, &qword_3948);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_30D4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_3118(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_3174()
{
  sub_2678(&qword_C4D0, &qword_3918);
  sub_2614();
  return swift_getOpaqueTypeConformance2();
}