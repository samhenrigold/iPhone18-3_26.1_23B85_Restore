uint64_t sub_10006C338()
{

  return _swift_task_switch(sub_10006C460, 0, 0);
}

uint64_t sub_10006C460()
{
  if (qword_1000A60F0 != -1)
  {
    swift_once();
  }

  v1 = sub_100079BA0();
  sub_1000070F4(v1, qword_1000A6DA8);
  v2 = sub_100079B80();
  v3 = sub_10007A190();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "sucessfully fetched storebag from server", v4, 2u);
  }

  v18 = v0[86];
  v19 = v0[87];
  v21 = v0[88];
  v22 = v0[84];
  v20 = v0[83];
  v24 = v2;
  v25 = v0[82];
  v23 = v0[81];
  v5 = v0[80];
  v16 = v0[79];
  v17 = v0[85];
  v6 = v0[78];
  v7 = v0[77];
  v8 = v0[76];
  v9 = v0[75];
  v10 = v0[74];
  v11 = v0[71];
  v12 = v0[70];
  v29 = v0[72];
  v30 = v0[66];
  v13 = v0[65];
  v26 = v0[59];
  v27 = v0[57];
  v28 = v0[56];

  sub_1000071DC(v12, v11);

  sub_1000071C8(v8, v7);
  sub_1000071C8(v10, v9);
  sub_1000071DC(v6, v16);
  sub_1000071DC(v17, v18);
  sub_1000071DC(v19, v21);
  sub_1000071DC(v20, v22);
  sub_1000071DC(v23, v25);

  v30(v26, v27);
  sub_1000096C4(v28, &qword_10009DFB0, &qword_10007BA50);

  v14 = v0[1];

  return v14();
}

uint64_t sub_10006C738()
{

  return _swift_task_switch(sub_10006C860, 0, 0);
}

uint64_t sub_10006C860(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_10006C95C()
{
  v1 = *(v0 + 528);
  v2 = *(v0 + 472);
  v4 = *(v0 + 448);
  v3 = *(v0 + 456);

  v1(v2, v3);
  sub_1000096C4(v4, &qword_10009DFB0, &qword_10007BA50);
  *(v0 + 720) = *(v0 + 584);
  v7 = (*(**(v0 + 504) + 168) + **(**(v0 + 504) + 168));
  v5 = swift_task_alloc();
  *(v0 + 728) = v5;
  *v5 = v0;
  v5[1] = sub_10006C738;

  return v7();
}

uint64_t StorebagSource.deinit()
{
  v1 = OBJC_IVAR____TtC21CloudTelemetryService14StorebagSource_throttleCacheURL;
  v2 = sub_1000798B0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10006D910(v0 + OBJC_IVAR____TtC21CloudTelemetryService14StorebagSource_storebagSigningConfiguration);

  return v0;
}

uint64_t StorebagSource.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC21CloudTelemetryService14StorebagSource_throttleCacheURL;
  v2 = sub_1000798B0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10006D910(v0 + OBJC_IVAR____TtC21CloudTelemetryService14StorebagSource_storebagSigningConfiguration);

  return swift_deallocClassInstance();
}

double sub_10006CC2C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_10000A0FC(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100054D28();
      v10 = v12;
    }

    sub_100032BD8((*(v10 + 56) + 32 * v8), a3);
    sub_10006CF78(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_10006CCD0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000712C(&qword_10009FEE8, &qword_100080020);
  v34 = v4;
  result = sub_10007A4C0();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_10007A730();
      sub_100079EC0();
      result = sub_10007A760();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10006CF78(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_10007A2F0() + 1) & ~v5;
    do
    {
      sub_10007A730();

      sub_100079EC0();
      v10 = sub_10007A760();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

void sub_10006D128(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000A0FC(a2, a3);
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
      sub_10006CCD0(v16, a4 & 1);
      v11 = sub_10000A0FC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_10007A6C0();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_10006D2A4();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

void *sub_10006D2A4()
{
  v1 = v0;
  sub_10000712C(&qword_10009FEE8, &qword_100080020);
  v2 = *v0;
  v3 = sub_10007A4B0();
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

uint64_t sub_10006D414(void *a1)
{
  v3 = sub_10000712C(&qword_10009FEF0, &qword_100080028);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_10000751C(a1, a1[3]);
  sub_100069998();
  sub_10007A790();
  if (!v1)
  {
    v11 = 0;
    v7 = sub_10007A550();
    v10 = 1;
    sub_10007A550();
    (*(v4 + 8))(v6, v3);
  }

  sub_1000070A8(a1);
  return v7;
}

uint64_t type metadata accessor for StorebagSource(uint64_t a1)
{
  result = qword_1000A6300;
  if (!qword_1000A6300)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10006D644(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorebagSigningConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10006D6A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000712C(&qword_10009FEE8, &qword_100080020);
    v3 = sub_10007A4D0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10000A0FC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_10006D7AC()
{
  result = qword_10009FE00;
  if (!qword_10009FE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009FE00);
  }

  return result;
}

uint64_t sub_10006D800(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000712C(&qword_10009DFB0, &qword_10007BA50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10006D870()
{
  result = qword_10009FE08;
  if (!qword_10009FE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009FE08);
  }

  return result;
}

unint64_t sub_10006D8C4()
{
  result = qword_10009FE10;
  if (!qword_10009FE10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10009FE10);
  }

  return result;
}

uint64_t sub_10006D910(uint64_t a1)
{
  v2 = type metadata accessor for StorebagSigningConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10006D978(uint64_t a1)
{
  result = sub_1000798B0();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for StorebagSigningConfiguration(319);
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10006DA50(uint64_t a1)
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

uint64_t sub_10006DA6C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10006DAB4(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_10006DAF8(uint64_t result, unsigned int a2)
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

unint64_t sub_10006DB44()
{
  result = qword_1000A6410[0];
  if (!qword_1000A6410[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000A6410);
  }

  return result;
}

unint64_t sub_10006DB9C()
{
  result = qword_1000A6520;
  if (!qword_1000A6520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6520);
  }

  return result;
}

unint64_t sub_10006DBF4()
{
  result = qword_1000A6528[0];
  if (!qword_1000A6528[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000A6528);
  }

  return result;
}

uint64_t sub_10006DC48()
{
  v0 = sub_100079BA0();
  sub_100009728(v0, qword_1000A6DD8);
  sub_1000070F4(v0, qword_1000A6DD8);
  return sub_100079B90();
}

uint64_t sub_10006DCCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[17] = a3;
  v4[18] = v3;
  v4[15] = a1;
  v4[16] = a2;
  return _swift_task_switch(sub_10006DCF0, v3, 0);
}

uint64_t sub_10006DCF0()
{
  v6 = (*(**(v0[18] + 112) + 232) + **(**(v0[18] + 112) + 232));
  v1 = swift_task_alloc();
  v0[19] = v1;
  *v1 = v0;
  v1[1] = sub_10006DE18;
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[15];

  return v6(v0 + 2, v4, v2, v3);
}

uint64_t sub_10006DE18()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v10 = (*(**(v2 + 144) + 128) + **(**(v2 + 144) + 128));
    v6 = swift_task_alloc();
    *(v2 + 160) = v6;
    *v6 = v3;
    v6[1] = sub_10006E018;
    v7 = *(v2 + 136);
    v8 = *(v2 + 120);
    v9 = *(v2 + 128);

    return v10(v2 + 16, v8, v9, v7);
  }
}

uint64_t sub_10006E018(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[21] = v2;

  v7 = v6[18];
  if (v2)
  {
    v8 = sub_10006E208;
  }

  else
  {
    v6[22] = a2;
    v6[23] = a1;
    v8 = sub_10006E158;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10006E158()
{
  *(v0 + 104) = *(v0 + 16);
  sub_1000096C4(v0 + 104, &qword_10009FEF8, &qword_100080038);
  *(v0 + 112) = *(v0 + 24);
  sub_1000096C4(v0 + 112, &qword_10009FEF8, &qword_100080038);
  *(v0 + 72) = *(v0 + 40);
  sub_10002A4B4(v0 + 72);
  v1 = *(v0 + 8);
  v3 = *(v0 + 176);
  v2 = *(v0 + 184);

  return v1(v2, v3);
}

uint64_t sub_10006E208()
{
  *(v0 + 88) = *(v0 + 16);
  sub_1000096C4(v0 + 88, &qword_10009FEF8, &qword_100080038);
  *(v0 + 96) = *(v0 + 24);
  sub_1000096C4(v0 + 96, &qword_10009FEF8, &qword_100080038);
  *(v0 + 56) = *(v0 + 40);
  sub_10002A4B4(v0 + 56);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10006E2B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[29] = a4;
  v5[30] = v4;
  v5[27] = a2;
  v5[28] = a3;
  v5[26] = a1;
  v5[31] = *(type metadata accessor for SessionConfiguration.Backend(0) - 8);
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();

  return _swift_task_switch(sub_10006E384, v4, 0);
}

uint64_t sub_10006E384()
{
  v1 = *(v0 + 208);
  v2 = *v1;
  *(v0 + 272) = *v1;
  v3 = *(v2 + 16);
  *(v0 + 280) = v3;
  if (v3)
  {
    if (v3 == 1)
    {
      v4 = *(v0 + 264);
      v6 = *(v0 + 240);
      v5 = *(v0 + 248);
      v8 = *(v0 + 224);
      v7 = *(v0 + 232);
      v9 = *(v0 + 216);
      *(v0 + 192) = v8;
      *(v0 + 200) = v7;
      v10 = sub_100019E90((v0 + 168));
      (*(*(v8 - 8) + 16))(v10, v9, v8);
      sub_100070DF0(v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v4, type metadata accessor for SessionConfiguration.Backend);
      (*(v7 + 8))(v8, v7);
      v25 = (*(*v6 + 152) + **(*v6 + 152));
      v11 = swift_task_alloc();
      *(v0 + 288) = v11;
      *v11 = v0;
      v11[1] = sub_10006E754;
      v12 = v0 + 72;
    }

    else
    {
      v15 = *(v0 + 248);
      v16 = sub_100052E34(0, v3, 0, _swiftEmptyArrayStorage);
      v17 = *(v15 + 80);
      *(v0 + 376) = v17;
      v18 = *(v15 + 72);
      *(v0 + 328) = v16;
      *(v0 + 336) = 0;
      *(v0 + 320) = v18;
      v19 = *(v0 + 232);
      v20 = *(v0 + 240);
      v21 = *(v0 + 216);
      v22 = *(v0 + 224);
      sub_100070DF0(*(v0 + 272) + ((v17 + 32) & ~v17), *(v0 + 256), type metadata accessor for SessionConfiguration.Backend);
      *(v0 + 152) = v22;
      *(v0 + 160) = v19;
      v23 = sub_100019E90((v0 + 128));
      (*(*(v22 - 8) + 16))(v23, v21, v22);
      (*(v19 + 8))(v22, v19);
      v25 = (*(*v20 + 152) + **(*v20 + 152));
      v24 = swift_task_alloc();
      *(v0 + 344) = v24;
      *v24 = v0;
      v24[1] = sub_10006E99C;
      v12 = v0 + 16;
    }

    return v25(v12);
  }

  else
  {

    v13 = *(v0 + 8);

    return v13(0, 0);
  }
}

uint64_t sub_10006E754(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 296) = v2;

  if (v2)
  {
    v7 = v6[30];
    sub_100068F9C(v6[33], type metadata accessor for SessionConfiguration.Backend);
    sub_100019EF4((v6 + 9));
    v8 = sub_10006EE14;
  }

  else
  {
    v7 = v6[30];
    v6[38] = a2;
    v6[39] = a1;
    sub_100019EF4((v6 + 9));
    v8 = sub_10006E8B0;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10006E8B0()
{
  v1 = *(v0 + 264);
  v2 = (*(**(v0 + 240) + 144))(v0 + 168, v1, *(v0 + 312), *(v0 + 304));
  v4 = v3;

  sub_100068F9C(v1, type metadata accessor for SessionConfiguration.Backend);
  sub_1000070A8((v0 + 168));

  v5 = *(v0 + 8);

  return v5(v2, v4);
}

uint64_t sub_10006E99C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 352) = v2;

  if (v2)
  {
    v7 = v6[30];
    sub_100019EF4((v6 + 2));

    v8 = sub_10006EE88;
    v9 = v7;
  }

  else
  {
    v10 = v6[30];
    v6[45] = a2;
    v6[46] = a1;
    sub_100019EF4((v6 + 2));
    v8 = sub_10006EB00;
    v9 = v10;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_10006EB00()
{
  v1 = *(v0 + 328);
  v2 = (*(**(v0 + 240) + 144))(v0 + 128, *(v0 + 256), *(v0 + 368), *(v0 + 360));
  v4 = v3;

  sub_1000070A8((v0 + 128));
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = *(v0 + 328);
  if (v6 >= v5 >> 1)
  {
    v7 = sub_100052E34((v5 > 1), v6 + 1, 1, *(v0 + 328));
  }

  v8 = *(v0 + 280);
  v9 = *(v0 + 336) + 1;
  sub_100068F9C(*(v0 + 256), type metadata accessor for SessionConfiguration.Backend);
  v7[2] = v6 + 1;
  v10 = &v7[2 * v6];
  v10[4] = v2;
  v10[5] = v4;
  if (v9 == v8)
  {
    type metadata accessor for BackendGroup();
    v11 = sub_1000514C8(v7);

    v12 = *(v0 + 8);

    return v12(v11, &off_1000981E8);
  }

  else
  {
    v14 = *(v0 + 336) + 1;
    *(v0 + 328) = v7;
    *(v0 + 336) = v14;
    v15 = *(v0 + 232);
    v16 = *(v0 + 240);
    v17 = *(v0 + 216);
    v18 = *(v0 + 224);
    sub_100070DF0(*(v0 + 272) + ((*(v0 + 376) + 32) & ~*(v0 + 376)) + *(v0 + 320) * v14, *(v0 + 256), type metadata accessor for SessionConfiguration.Backend);
    *(v0 + 152) = v18;
    *(v0 + 160) = v15;
    v19 = sub_100019E90((v0 + 128));
    (*(*(v18 - 8) + 16))(v19, v17, v18);
    (*(v15 + 8))(v18, v15);
    v21 = (*(*v16 + 152) + **(*v16 + 152));
    v20 = swift_task_alloc();
    *(v0 + 344) = v20;
    *v20 = v0;
    v20[1] = sub_10006E99C;

    return v21(v0 + 16);
  }
}

uint64_t sub_10006EE14()
{
  sub_1000070A8((v0 + 168));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10006EE88()
{
  sub_100068F9C(v0[32], type metadata accessor for SessionConfiguration.Backend);
  sub_1000070A8(v0 + 16);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10006EF18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[29] = a4;
  v5[30] = v4;
  v5[27] = a2;
  v5[28] = a3;
  v5[26] = a1;
  v5[31] = *(type metadata accessor for SessionConfiguration.Backend(0) - 8);
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();

  return _swift_task_switch(sub_10006EFE8, v4, 0);
}

uint64_t sub_10006EFE8()
{
  v1 = *(v0 + 208);
  v2 = v1[1];
  *(v0 + 272) = v2;
  v3 = *(v2 + 16);
  *(v0 + 280) = v3;
  if (v3)
  {
    if (v3 == 1)
    {
      v4 = *(v0 + 264);
      v6 = *(v0 + 240);
      v5 = *(v0 + 248);
      v8 = *(v0 + 224);
      v7 = *(v0 + 232);
      v9 = *(v0 + 216);
      *(v0 + 192) = v8;
      *(v0 + 200) = v7;
      v10 = sub_100019E90((v0 + 168));
      (*(*(v8 - 8) + 16))(v10, v9, v8);
      sub_100070DF0(v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v4, type metadata accessor for SessionConfiguration.Backend);
      (*(v7 + 8))(v8, v7);
      v25 = (*(*v6 + 152) + **(*v6 + 152));
      v11 = swift_task_alloc();
      *(v0 + 288) = v11;
      *v11 = v0;
      v11[1] = sub_10006F3C0;
      v12 = v0 + 72;
    }

    else
    {
      v15 = *(v0 + 248);
      v16 = sub_100052E34(0, *(*v1 + 16), 0, _swiftEmptyArrayStorage);
      v17 = *(v15 + 80);
      *(v0 + 376) = v17;
      v18 = *(v15 + 72);
      *(v0 + 328) = v16;
      *(v0 + 336) = 0;
      *(v0 + 320) = v18;
      v19 = *(v0 + 232);
      v20 = *(v0 + 240);
      v21 = *(v0 + 216);
      v22 = *(v0 + 224);
      sub_100070DF0(*(v0 + 272) + ((v17 + 32) & ~v17), *(v0 + 256), type metadata accessor for SessionConfiguration.Backend);
      *(v0 + 152) = v22;
      *(v0 + 160) = v19;
      v23 = sub_100019E90((v0 + 128));
      (*(*(v22 - 8) + 16))(v23, v21, v22);
      (*(v19 + 8))(v22, v19);
      v25 = (*(*v20 + 152) + **(*v20 + 152));
      v24 = swift_task_alloc();
      *(v0 + 344) = v24;
      *v24 = v0;
      v24[1] = sub_10006F51C;
      v12 = v0 + 16;
    }

    return v25(v12);
  }

  else
  {

    v13 = *(v0 + 8);

    return v13(0, 0);
  }
}

uint64_t sub_10006F3C0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 296) = v2;

  if (v2)
  {
    v7 = v6[30];
    sub_100068F9C(v6[33], type metadata accessor for SessionConfiguration.Backend);
    sub_100019EF4((v6 + 9));
    v8 = sub_100070ED8;
  }

  else
  {
    v7 = v6[30];
    v6[38] = a2;
    v6[39] = a1;
    sub_100019EF4((v6 + 9));
    v8 = sub_100070ED0;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10006F51C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 352) = v2;

  if (v2)
  {
    v7 = v6[30];
    sub_100019EF4((v6 + 2));

    v8 = sub_100070ED4;
    v9 = v7;
  }

  else
  {
    v10 = v6[30];
    v6[45] = a2;
    v6[46] = a1;
    sub_100019EF4((v6 + 2));
    v8 = sub_10006F680;
    v9 = v10;
  }

  return _swift_task_switch(v8, v9, 0);
}

uint64_t sub_10006F680()
{
  v1 = *(v0 + 328);
  v2 = (*(**(v0 + 240) + 144))(v0 + 128, *(v0 + 256), *(v0 + 368), *(v0 + 360));
  v4 = v3;

  sub_1000070A8((v0 + 128));
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = *(v0 + 328);
  if (v6 >= v5 >> 1)
  {
    v7 = sub_100052E34((v5 > 1), v6 + 1, 1, *(v0 + 328));
  }

  v8 = *(v0 + 280);
  v9 = *(v0 + 336) + 1;
  sub_100068F9C(*(v0 + 256), type metadata accessor for SessionConfiguration.Backend);
  v7[2] = v6 + 1;
  v10 = &v7[2 * v6];
  v10[4] = v2;
  v10[5] = v4;
  if (v9 == v8)
  {
    type metadata accessor for BackendGroup();
    v11 = sub_1000514C8(v7);

    v12 = *(v0 + 8);

    return v12(v11, &off_1000981E8);
  }

  else
  {
    v14 = *(v0 + 336) + 1;
    *(v0 + 328) = v7;
    *(v0 + 336) = v14;
    v15 = *(v0 + 232);
    v16 = *(v0 + 240);
    v17 = *(v0 + 216);
    v18 = *(v0 + 224);
    sub_100070DF0(*(v0 + 272) + ((*(v0 + 376) + 32) & ~*(v0 + 376)) + *(v0 + 320) * v14, *(v0 + 256), type metadata accessor for SessionConfiguration.Backend);
    *(v0 + 152) = v18;
    *(v0 + 160) = v15;
    v19 = sub_100019E90((v0 + 128));
    (*(*(v18 - 8) + 16))(v19, v17, v18);
    (*(v15 + 8))(v18, v15);
    v21 = (*(*v16 + 152) + **(*v16 + 152));
    v20 = swift_task_alloc();
    *(v0 + 344) = v20;
    *v20 = v0;
    v20[1] = sub_10006F51C;

    return v21(v0 + 16);
  }
}

uint64_t sub_10006F994(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for SessionConfiguration.BackendHTTP(0);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v32 - v13;
  v15 = type metadata accessor for SessionConfiguration.Backend(0);
  __chkstk_darwin(v15);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100070DF0(a2, v17, type metadata accessor for SessionConfiguration.Backend);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *(v17 + 1);
    v19 = *(v17 + 2);
    type metadata accessor for BackendLocal();
    sub_10001378C(a1, v39);
    return sub_100029FA0(v18, v19, v39);
  }

  else
  {
    sub_100068F38(v17, v14);
    v37 = type metadata accessor for BackendHTTP(0);
    v35 = *(v4 + 128);
    sub_10001378C(a1, v38);
    v36 = type metadata accessor for SessionConfiguration.BackendHTTP;
    sub_100070DF0(v14, v12, type metadata accessor for SessionConfiguration.BackendHTTP);

    RequestOptions.globalRequestOptions.unsafeMutableAddressor();
    swift_beginAccess();
    v34 = a3;
    v21 = a1[3];
    v22 = a1[4];
    sub_10000751C(a1, v21);
    v23 = *(v22 + 8);

    v33 = a4;
    v24 = v4;
    v23(v39, v21, v22);
    v25 = v40;
    v26 = v41;
    v27 = v42;
    v28 = v43;

    sub_100019EF4(v39);
    if (v26)
    {
      v29 = 256;
    }

    else
    {
      v29 = 0;
    }

    v30 = sub_1000535B0(v29 | v25, v27, v28);

    v31 = sub_10000F4A8(v35, v38, v24, v12, v34, v33, v30);
    sub_100068F9C(v14, v36);
    return v31;
  }
}

uint64_t sub_10006FC7C(uint64_t a1)
{
  v2[30] = a1;
  v2[31] = v1;
  v3 = sub_100079A70();
  v2[32] = v3;
  v2[33] = *(v3 - 8);
  v2[34] = swift_task_alloc();
  sub_10000712C(&qword_10009E7B0, &qword_10007CB90);
  v2[35] = swift_task_alloc();
  v4 = sub_100079A00();
  v2[36] = v4;
  v2[37] = *(v4 - 8);
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();

  return _swift_task_switch(sub_10006FDF4, v1, 0);
}

uint64_t sub_10006FDF4()
{
  v3 = (*(**(*(v0 + 248) + 112) + 264) + **(**(*(v0 + 248) + 112) + 264));
  v1 = swift_task_alloc();
  *(v0 + 336) = v1;
  *v1 = v0;
  v1[1] = sub_10006FF14;

  return v3();
}

uint64_t sub_10006FF14()
{
  v1 = *(*v0 + 248);

  return _swift_task_switch(sub_100070024, v1, 0);
}

uint64_t sub_100070024()
{
  v0[43] = *(v0[31] + 120);
  v1 = swift_task_alloc();
  v0[44] = v1;
  *v1 = v0;
  v1[1] = sub_1000700CC;
  v2 = v0[35];
  v3 = v0[30];

  return sub_100021FF4(v2, v3);
}

uint64_t sub_1000700CC()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  v3 = *(v2 + 248);
  if (v0)
  {
    v4 = sub_100070BF4;
  }

  else
  {
    v4 = sub_1000701F8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000701F8()
{
  v53 = v0;
  v1 = *(v0 + 296);
  v2 = *(v0 + 280);
  v3 = sub_10000712C(&qword_10009E870, &qword_10007CCE0);
  v4 = (*(*(v3 - 8) + 48))(v2, 1, v3);
  v5 = (v1 + 8);
  v6 = *(v0 + 288);
  if (v4 == 1)
  {
    v7 = *(v0 + 320);
    v9 = *(v0 + 264);
    v8 = *(v0 + 272);
    v10 = *(v0 + 256);
    sub_1000096C4(v2, &qword_10009E7B0, &qword_10007CB90);
    sub_100079A60();
    v11 = sub_100079A10();
    v13 = v12;
    *(v0 + 416) = v11;
    *(v0 + 424) = v12;
    (*(v9 + 8))(v8, v10);

    sub_1000799C0();
    sub_100079970();
    v14 = *v5;
    *(v0 + 432) = *v5;
    *(v0 + 440) = v5 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v14(v7, v6);
    v15 = swift_task_alloc();
    *(v0 + 448) = v15;
    *v15 = v0;
    v15[1] = sub_1000709CC;
    v16 = *(v0 + 304);
    v17 = *(v0 + 240);
    v18 = v11;
    v19 = v13;
LABEL_12:

    return sub_1000222DC(v17, v18, v19, v16);
  }

  v20 = *(v0 + 320);
  v22 = *v2;
  v21 = *(v2 + 1);
  (*(v1 + 32))(*(v0 + 328), &v2[*(v3 + 48)], *(v0 + 288));
  sub_1000799C0();
  v23 = sub_100079990();
  v24 = *(v1 + 8);
  *(v0 + 368) = v24;
  *(v0 + 376) = v5 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v24(v20, v6);
  if ((v23 & 1) == 0)
  {

    if (qword_1000A65B0 != -1)
    {
      swift_once();
    }

    v51 = v24;
    v27 = *(v0 + 240);
    v28 = sub_100079BA0();
    sub_1000070F4(v28, qword_1000A6DD8);
    sub_100009B00(v27, v0 + 16);
    v29 = sub_100079B80();
    v30 = sub_10007A190();
    sub_100019EF4(v27);
    if (os_log_type_enabled(v29, v30))
    {
      v31 = *(v0 + 240);
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v52 = v33;
      *v32 = 136446210;
      v35 = *(v31 + 16);
      v34 = *(v31 + 32);
      v36 = *v31;
      *(v0 + 176) = *(v31 + 48);
      *(v0 + 144) = v35;
      *(v0 + 160) = v34;
      *(v0 + 128) = v36;
      sub_100009B00(v31, v0 + 184);
      sub_100070E58();
      v37 = sub_10007A5E0();
      v39 = v38;
      v40 = *(v0 + 144);
      *(v0 + 72) = *(v0 + 128);
      *(v0 + 88) = v40;
      *(v0 + 104) = *(v0 + 160);
      *(v0 + 120) = *(v0 + 176);
      sub_100019EF4(v0 + 72);
      v41 = sub_100006B00(v37, v39, &v52);

      *(v32 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v29, v30, "CID expired for %{public}s, refreshing", v32, 0xCu);
      sub_1000070A8(v33);
    }

    v42 = *(v0 + 320);
    v43 = *(v0 + 288);
    v45 = *(v0 + 264);
    v44 = *(v0 + 272);
    v46 = *(v0 + 256);
    sub_100079A60();
    v47 = sub_100079A10();
    v49 = v48;
    *(v0 + 384) = v47;
    *(v0 + 392) = v48;
    (*(v45 + 8))(v44, v46);

    sub_1000799C0();
    sub_100079970();
    v51(v42, v43);
    v50 = swift_task_alloc();
    *(v0 + 400) = v50;
    *v50 = v0;
    v50[1] = sub_100070744;
    v16 = *(v0 + 312);
    v17 = *(v0 + 240);
    v18 = v47;
    v19 = v49;
    goto LABEL_12;
  }

  v24(*(v0 + 328), *(v0 + 288));

  v25 = *(v0 + 8);

  return v25(v22, v21);
}

uint64_t sub_100070744()
{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v4 = *(*v1 + 312);
  v5 = *(*v1 + 288);
  *(*v1 + 408) = v0;

  v3(v4, v5);

  if (v0)
  {
    v6 = *(v2 + 248);

    v7 = sub_100070C98;
    v8 = v6;
  }

  else
  {
    v8 = *(v2 + 248);
    v7 = sub_100070904;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_100070904()
{
  (*(v0 + 368))(*(v0 + 328), *(v0 + 288));
  v1 = *(v0 + 384);
  v2 = *(v0 + 392);

  v3 = *(v0 + 8);

  return v3(v1, v2);
}

uint64_t sub_1000709CC()
{
  v2 = *(*v1 + 432);
  v3 = *(*v1 + 304);
  v4 = *(*v1 + 288);
  v5 = *v1;
  v5[57] = v0;

  v2(v3, v4);

  v6 = v5[53];
  if (v0)
  {
    v7 = v5[31];

    return _swift_task_switch(sub_100070D4C, v7, 0);
  }

  else
  {
    v8 = v5[52];

    v9 = v5[1];

    return v9(v8, v6);
  }
}

uint64_t sub_100070BF4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100070C98()
{
  (*(v0 + 368))(*(v0 + 328), *(v0 + 288));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100070D4C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100070DF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100070E58()
{
  result = qword_10009FF00;
  if (!qword_10009FF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009FF00);
  }

  return result;
}

uint64_t sub_100070FBC()
{
  sub_10000712C(&qword_10009FFE8, &qword_100080150);
  v0 = sub_10000712C(&qword_10009FFF0, &qword_100080158);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1000800D0;
  v4 = (v3 + v2);
  v5 = *(v0 + 48);
  *v4 = XPC_ACTIVITY_REPEATING;
  *(v4 + v5) = 1;
  type metadata accessor for XPCObject(0);
  swift_storeEnumTagMultiPayload();
  v6 = (v4 + v1);
  v7 = *(v0 + 48);
  *v6 = XPC_ACTIVITY_DELAY;
  *(v6 + v7) = 86400;
  swift_storeEnumTagMultiPayload();
  v8 = (v4 + 2 * v1);
  v9 = *(v0 + 48);
  *v8 = XPC_ACTIVITY_GRACE_PERIOD;
  *(v8 + v9) = 43200;
  swift_storeEnumTagMultiPayload();
  v10 = (v4 + 3 * v1);
  v11 = (v10 + *(v0 + 48));
  *v10 = XPC_ACTIVITY_PRIORITY;
  *v11 = sub_100079F10();
  v11[1] = v12;
  swift_storeEnumTagMultiPayload();
  v13 = (v4 + 4 * v1);
  v14 = *(v0 + 48);
  *v13 = XPC_ACTIVITY_ALLOW_BATTERY;
  *(v13 + v14) = 0;
  result = swift_storeEnumTagMultiPayload();
  if (!XPC_ACTIVITY_POWER_NAP)
  {
    __break(1u);
    goto LABEL_11;
  }

  v16 = *(v0 + 48);
  v17 = (v4 + 5 * v1);
  *v17 = XPC_ACTIVITY_POWER_NAP;
  *(v17 + v16) = 1;
  result = swift_storeEnumTagMultiPayload();
  if (!XPC_ACTIVITY_RANDOM_INITIAL_DELAY)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v18 = (v4 + 6 * v1);
  v19 = *(v0 + 48);
  *v18 = XPC_ACTIVITY_RANDOM_INITIAL_DELAY;
  *(v18 + v19) = 43200;
  result = swift_storeEnumTagMultiPayload();
  if (!XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v20 = (&v4[v1] - v1);
  v21 = *(v0 + 48);
  *v20 = XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY;
  *(v20 + v21) = 1;
  result = swift_storeEnumTagMultiPayload();
  if (!XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v22 = *(v0 + 48);
  v23 = &v4[v1];
  *v23 = XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY;
  *(v23 + v22) = 1;
  result = swift_storeEnumTagMultiPayload();
  if (!XPC_ACTIVITY_NETWORK_UPLOAD_SIZE)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v24 = (v4 + 9 * v1);
  v25 = *(v0 + 48);
  *v24 = XPC_ACTIVITY_NETWORK_UPLOAD_SIZE;
  *(v24 + v25) = 5242880;
  result = swift_storeEnumTagMultiPayload();
  if (!XPC_ACTIVITY_EXPECTED_DURATION)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v26 = (v4 + 10 * v1);
  v27 = *(v0 + 48);
  *v26 = XPC_ACTIVITY_EXPECTED_DURATION;
  *(v26 + v27) = XPC_ACTIVITY_INTERVAL_5_MIN;
  result = swift_storeEnumTagMultiPayload();
  if (!XPC_ACTIVITY_GROUP_NAME)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v28 = (v4 + 11 * v1);
  v29 = (v28 + *(v0 + 48));
  *v28 = XPC_ACTIVITY_GROUP_NAME;
  *v29 = 0xD000000000000025;
  v29[1] = 0x8000000100084B30;
  result = swift_storeEnumTagMultiPayload();
  if (XPC_ACTIVITY_GROUP_CONCURRENCY_LIMIT)
  {
    v30 = (v4 + 12 * v1);
    v31 = *(v0 + 48);
    *v30 = XPC_ACTIVITY_GROUP_CONCURRENCY_LIMIT;
    *(v30 + v31) = 1;
    swift_storeEnumTagMultiPayload();
    v32 = sub_100071664(v3);
    swift_setDeallocating();
    swift_arrayDestroy();
    result = swift_deallocClassInstance();
    static SubmitEventsActivityConfig.activityFlags = v32;
    return result;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t *SubmitEventsActivityConfig.activityFlags.unsafeMutableAddressor()
{
  if (qword_1000A6640 != -1)
  {
    swift_once();
  }

  return &static SubmitEventsActivityConfig.activityFlags;
}

double static SubmitEventsActivityConfig.activityFlags.getter()
{
  if (qword_1000A6640 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  return result;
}

uint64_t static SubmitEventsActivityConfig.activityFlags.setter(uint64_t a1)
{
  if (qword_1000A6640 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static SubmitEventsActivityConfig.activityFlags = a1;
}

uint64_t (*static SubmitEventsActivityConfig.activityFlags.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1000A6640 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

unint64_t sub_1000715B4(uint64_t a1)
{
  v2 = sub_10007A720();

  return sub_1000715F8(a1, v2);
}

unint64_t sub_1000715F8(uint64_t a1, uint64_t a2)
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

unint64_t sub_100071664(uint64_t a1)
{
  v2 = sub_10000712C(&qword_10009FFF0, &qword_100080158);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000712C(&unk_10009FFF8, &unk_100080160);
    v7 = sub_10007A4D0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_100071814(v9, v5);
      v11 = *v5;
      result = sub_1000715B4(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for XPCObject(0);
      result = sub_100029A0C(v5 + v8, v15 + *(*(v16 - 8) + 72) * v14);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
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

uint64_t sub_100071814(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000712C(&qword_10009FFF0, &qword_100080158);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unsigned __int8 *XPCObject.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100079A70();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for XPCObject(0);
  v9 = __chkstk_darwin(v8);
  v11 = (&v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __chkstk_darwin(v9);
  v14 = (&v36 - v13);
  __chkstk_darwin(v12);
  v17 = (&v36 - v16);
  if (a1)
  {
    v37 = v15;
    v18 = swift_unknownObjectRetain();
    type = xpc_get_type(v18);
    if (XPCTypeNull.getter() == type)
    {
      swift_unknownObjectRelease_n();
    }

    else if (XPCTypeConnection.getter() == type || XPCTypeEndpoint.getter() == type)
    {
      swift_unknownObjectRelease();
      *v17 = a1;
    }

    else if (XPCTypeBool.getter() == type)
    {
      value = xpc_BOOL_get_value(a1);
      swift_unknownObjectRelease_n();
      *v17 = value;
    }

    else if (XPCTypeInt64.getter() == type)
    {
      v23 = xpc_int64_get_value(a1);
      swift_unknownObjectRelease_n();
      *v17 = v23;
    }

    else if (XPCTypeUInt64.getter() == type)
    {
      v24 = xpc_uint64_get_value(a1);
      swift_unknownObjectRelease_n();
      *v17 = v24;
    }

    else if (XPCTypeDouble.getter() == type)
    {
      v25 = xpc_double_get_value(a1);
      swift_unknownObjectRelease_n();
      *v17 = v25;
    }

    else
    {
      if (XPCTypeDate.getter() != type)
      {
        if (XPCTypeData.getter() == type)
        {
          result = xpc_data_get_bytes_ptr(a1);
          if (result)
          {
            v27 = result;
            length = xpc_data_get_length(a1);
            v29 = sub_100072CBC(v27, length);
            v31 = v30;
            swift_unknownObjectRelease_n();
            *v14 = v29;
            v14[1] = v31;
            swift_storeEnumTagMultiPayload();
            v32 = v14;
LABEL_34:
            sub_100029A0C(v32, v17);
            goto LABEL_29;
          }

          __break(1u);
        }

        else
        {
          if (XPCTypeString.getter() != type)
          {
            if (XPCTypeUUID.getter() != type)
            {
              swift_unknownObjectRelease();
              if (XPCTypeShmem.getter() == type)
              {
                *v17 = a1;
              }

              else if (XPCTypeArray.getter() == type)
              {
                *v17 = a1;
              }

              else
              {
                if (XPCTypeDictionary.getter() != type)
                {
                  swift_unknownObjectRelease();
                  v15 = v37;
                  goto LABEL_17;
                }

                *v17 = a1;
              }

              goto LABEL_28;
            }

            result = xpc_uuid_get_bytes(a1);
            if (result)
            {
              sub_100079A40();
              swift_unknownObjectRelease_n();
              (*(v5 + 32))(v17, v7, v4);
              goto LABEL_28;
            }

LABEL_42:
            __break(1u);
            return result;
          }

          result = xpc_string_get_string_ptr(a1);
          if (result)
          {
            v33 = sub_100079F10();
            v35 = v34;
            swift_unknownObjectRelease_n();
            *v11 = v33;
            v11[1] = v35;
            swift_storeEnumTagMultiPayload();
            v32 = v11;
            goto LABEL_34;
          }
        }

        __break(1u);
        goto LABEL_42;
      }

      v26 = xpc_date_get_value(a1);
      swift_unknownObjectRelease_n();
      *v17 = v26;
    }

LABEL_28:
    swift_storeEnumTagMultiPayload();
LABEL_29:
    sub_100029A0C(v17, a2);
    return (*(v37 + 56))(a2, 0, 1, v8);
  }

LABEL_17:
  v20 = *(v15 + 56);

  return v20(a2, 1, 1, v8);
}

uint64_t type metadata accessor for XPCObject(uint64_t a1)
{
  result = qword_1000A6750;
  if (!qword_1000A6750)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

xpc_object_t XPCObject.obj.getter()
{
  v1 = v0;
  v2 = sub_100079A70();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &uuid[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = type metadata accessor for XPCObject(0);
  __chkstk_darwin(v6);
  v8 = &uuid[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_100029A70(v1, v8);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      return xpc_BOOL_create(*v8);
    case 3u:
      return xpc_int64_create(*v8);
    case 4u:
      return xpc_uint64_create(*v8);
    case 5u:
      return xpc_double_create(*v8);
    case 6u:
      return xpc_date_create(*v8);
    case 7u:
      v19 = *v8;
      v18 = *(v8 + 1);
      v20 = v18 >> 62;
      if ((v18 >> 62) > 1)
      {
        if (v20 != 2)
        {
          memset(uuid, 0, 14);
          v22 = uuid;
          v21 = 0;
          goto LABEL_34;
        }

        v25 = *(v19 + 16);
        v26 = *(v19 + 24);
        v27 = sub_100079670();
        if (v27)
        {
          v28 = sub_1000796A0();
          if (__OFSUB__(v25, v28))
          {
            goto LABEL_36;
          }

          v27 += v25 - v28;
        }

        v29 = __OFSUB__(v26, v25);
        v30 = v26 - v25;
        if (!v29)
        {
          goto LABEL_26;
        }

        __break(1u);
LABEL_22:
        v30 = (v19 >> 32) - v19;
        if (v19 >> 32 >= v19)
        {
          v27 = sub_100079670();
          if (!v27)
          {
LABEL_26:
            v32 = sub_100079690();
            if (v32 >= v30)
            {
              v33 = v30;
            }

            else
            {
              v33 = v32;
            }

            if (v27)
            {
              v21 = v33;
            }

            else
            {
              v21 = 0;
            }

            v22 = v27;
            goto LABEL_34;
          }

          v31 = sub_1000796A0();
          if (!__OFSUB__(v19, v31))
          {
            v27 += v19 - v31;
            goto LABEL_26;
          }

LABEL_37:
          __break(1u);
        }

        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      if (v20)
      {
        goto LABEL_22;
      }

      *uuid = *v8;
      *&uuid[8] = v18;
      uuid[10] = BYTE2(v18);
      uuid[11] = BYTE3(v18);
      uuid[12] = BYTE4(v18);
      v21 = BYTE6(v18);
      uuid[13] = BYTE5(v18);
      v22 = uuid;
LABEL_34:
      v34 = xpc_data_create(v22, v21);
      sub_1000071DC(v19, v18);
      return v34;
    case 8u:
      v23 = sub_100079EA0();

      v24 = xpc_string_create((v23 + 32));

      return v24;
    case 9u:
      (*(v3 + 32))(v5, v8, v2);
      *uuid = sub_100079A50();
      *&uuid[8] = v10;
      uuid[10] = v11;
      uuid[11] = v12;
      uuid[12] = v13;
      uuid[13] = v14;
      uuid[14] = v15;
      uuid[15] = v16;
      v17 = xpc_uuid_create(uuid);
      (*(v3 + 8))(v5, v2);
      return v17;
    case 0xDu:
      return xpc_null_create();
    default:
      return *v8;
  }
}

BOOL static XPCObject.== infix(_:_:)()
{
  v0 = XPCObject.obj.getter();
  v1 = XPCObject.obj.getter();
  v2 = xpc_equal(v0, v1);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v2;
}

xpc_object_t XPCDictionary.init(dictionaryLiteral:)(uint64_t a1)
{
  v1 = sub_100072D6C(a1);

  return v1;
}

uint64_t XPCDictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10000712C(&unk_10009EC50, &unk_10007D650);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = *v3;
  sub_10000939C(a1, &v13 - v6, &unk_10009EC50, &unk_10007D650);
  v9 = type metadata accessor for XPCObject(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    sub_1000096C4(v7, &unk_10009EC50, &unk_10007D650);
    v10 = 0;
  }

  else
  {
    v10 = XPCObject.obj.getter();
    sub_100029AD4(v7);
  }

  v11 = sub_100079EA0();

  xpc_dictionary_set_value(v8, (v11 + 32), v10);
  swift_unknownObjectRelease();
  sub_1000096C4(a1, &unk_10009EC50, &unk_10007D650);
}

char *XPCDictionary.keys.getter(void *a1)
{
  count = xpc_dictionary_get_count(a1);
  v3 = _swiftEmptyArrayStorage;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || count > _swiftEmptyArrayStorage[3] >> 1)
  {
    if (_swiftEmptyArrayStorage[2] <= count)
    {
      v5 = count;
    }

    else
    {
      v5 = _swiftEmptyArrayStorage[2];
    }

    v3 = sub_100023040(isUniquelyReferenced_nonNull_native, v5, 0, _swiftEmptyArrayStorage);
  }

  v13 = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = &v13;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_100073164;
  *(v7 + 24) = v6;
  aBlock[4] = sub_100032638;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002F120;
  aBlock[3] = &unk_100099230;
  v8 = _Block_copy(aBlock);

  xpc_dictionary_apply(a1, v8);
  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v11 = v13;

    return v11;
  }

  return result;
}

unsigned __int8 *XPCDictionary.subscript.getter@<X0>(void *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = sub_100079EA0();
  v7 = xpc_dictionary_get_value(a3, (v6 + 32));

  return XPCObject.init(_:)(v7, a4);
}

void (*XPCDictionary.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x38uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = a2;
  v7[1] = a3;
  v9 = *(*(sub_10000712C(&unk_10009EC50, &unk_10007D650) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v8[2] = swift_coroFrameAlloc();
    v8[3] = swift_coroFrameAlloc();
    v8[4] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v8[2] = malloc(v9);
    v8[3] = malloc(v9);
    v8[4] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v8[5] = v10;
  v12 = *v3;
  v8[6] = v12;
  v13 = sub_100079EA0();
  v14 = xpc_dictionary_get_value(v12, (v13 + 32));

  XPCObject.init(_:)(v14, v11);
  return sub_1000727EC;
}

void sub_1000727EC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v4 = v2[3];
    sub_10000939C(v3, v4, &unk_10009EC50, &unk_10007D650);
    sub_10000939C(v4, v5, &unk_10009EC50, &unk_10007D650);
    v6 = type metadata accessor for XPCObject(0);
    LODWORD(v5) = (*(*(v6 - 8) + 48))(v5, 1, v6);

    v7 = v2[2];
    if (v5 == 1)
    {
      sub_1000096C4(v2[2], &unk_10009EC50, &unk_10007D650);
      v8 = 0;
    }

    else
    {
      v8 = XPCObject.obj.getter();
      sub_100029AD4(v7);
    }

    v14 = v2[5];
    v15 = v2[6];
    v17 = v2[3];
    v16 = v2[4];
    v18 = v2[2];
    v19 = sub_100079EA0();

    xpc_dictionary_set_value(v15, (v19 + 32), v8);
    swift_unknownObjectRelease();
    sub_1000096C4(v17, &unk_10009EC50, &unk_10007D650);

    sub_1000096C4(v14, &unk_10009EC50, &unk_10007D650);
  }

  else
  {
    v9 = v2[4];
    sub_10000939C(v3, v9, &unk_10009EC50, &unk_10007D650);
    v10 = type metadata accessor for XPCObject(0);
    v11 = (*(*(v10 - 8) + 48))(v9, 1, v10);

    v12 = v2[4];
    if (v11 == 1)
    {
      sub_1000096C4(v2[4], &unk_10009EC50, &unk_10007D650);
      v13 = 0;
    }

    else
    {
      v13 = XPCObject.obj.getter();
      sub_100029AD4(v12);
    }

    v14 = v2[5];
    v20 = v2[6];
    v17 = v2[3];
    v16 = v2[4];
    v18 = v2[2];
    v21 = sub_100079EA0();

    xpc_dictionary_set_value(v20, (v21 + 32), v13);
    swift_unknownObjectRelease();
    sub_1000096C4(v14, &unk_10009EC50, &unk_10007D650);
  }

  free(v14);
  free(v16);
  free(v17);
  free(v18);

  free(v2);
}

Swift::Bool __swiftcall XPCDictionary.contains(key:)(Swift::String key)
{
  v2 = v1;
  v3 = sub_10000712C(&unk_10009EC50, &unk_10007D650);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = sub_100079EA0();
  v7 = xpc_dictionary_get_value(v2, (v6 + 32));

  XPCObject.init(_:)(v7, v5);
  v8 = type metadata accessor for XPCObject(0);
  LOBYTE(v7) = (*(*(v8 - 8) + 48))(v5, 1, v8) != 1;
  sub_1000096C4(v5, &unk_10009EC50, &unk_10007D650);
  return v7;
}

uint64_t sub_100072BC4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_100072D6C(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_100072C04(_BYTE *__src, _BYTE *a2)
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

unint64_t sub_100072CBC(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_100072C04(a1, &a1[a2]);
  }

  sub_1000796B0();
  swift_allocObject();
  sub_100079660();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_1000798F0();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

xpc_object_t sub_100072D6C(uint64_t a1)
{
  v2 = sub_10000712C(&unk_10009EC50, &unk_10007D650);
  v3 = __chkstk_darwin(v2 - 8);
  v40 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v35 - v5;
  v7 = sub_10000712C(&unk_1000A00B0, &qword_100080228);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v39 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = (&v35 - v12);
  v14 = __chkstk_darwin(v11);
  v16 = (&v35 - v15);
  __chkstk_darwin(v14);
  v38 = (&v35 - v17);
  empty = xpc_dictionary_create_empty();
  v18 = *(a1 + 16);
  if (v18)
  {
    v19 = *(v7 + 48);
    v20 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v35 = *(v8 + 72);
    v36 = v19;
    v37 = v13;
    do
    {
      v24 = v38;
      sub_10000939C(v20, v38, &unk_1000A00B0, &qword_100080228);
      v25 = v24[1];
      v26 = *(v7 + 48);
      *v16 = *v24;
      v16[1] = v25;
      sub_100029A0C(v24 + v36, v16 + v26);
      sub_10000939C(v16, v13, &unk_1000A00B0, &qword_100080228);
      v42 = *v13;
      v27 = v39;
      sub_10000939C(v16, v39, &unk_1000A00B0, &qword_100080228);

      v28 = v7;
      sub_100029A0C(v27 + *(v7 + 48), v6);
      v29 = type metadata accessor for XPCObject(0);
      v30 = *(v29 - 8);
      (*(v30 + 56))(v6, 0, 1, v29);
      v31 = v6;
      v32 = v6;
      v33 = v40;
      sub_10000939C(v32, v40, &unk_10009EC50, &unk_10007D650);
      if ((*(v30 + 48))(v33, 1, v29) == 1)
      {
        sub_1000096C4(v33, &unk_10009EC50, &unk_10007D650);
        v21 = 0;
      }

      else
      {
        v21 = XPCObject.obj.getter();
        sub_100029AD4(v33);
      }

      v7 = v28;
      v22 = *(v28 + 48);
      v23 = sub_100079EA0();

      xpc_dictionary_set_value(empty, (v23 + 32), v21);
      swift_unknownObjectRelease();
      v6 = v31;
      sub_1000096C4(v31, &unk_10009EC50, &unk_10007D650);
      sub_1000096C4(v16, &unk_1000A00B0, &qword_100080228);

      v13 = v37;
      sub_100029AD4(v37 + v22);
      v20 += v35;
      --v18;
    }

    while (v18);
  }

  return empty;
}

uint64_t sub_100073164(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = sub_100079F10();
  v5 = v4;
  v6 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_100023040(0, *(v6 + 2) + 1, 1, v6);
    *v2 = v6;
  }

  v9 = *(v6 + 2);
  v8 = *(v6 + 3);
  if (v9 >= v8 >> 1)
  {
    v6 = sub_100023040((v8 > 1), v9 + 1, 1, v6);
    *v2 = v6;
  }

  *(v6 + 2) = v9 + 1;
  v10 = &v6[16 * v9];
  *(v10 + 4) = v3;
  *(v10 + 5) = v5;
  return 1;
}

uint64_t sub_10007322C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073244(uint64_t a1)
{
  result = sub_100073308();
  if (v2 <= 0x3F)
  {
    result = sub_100079A70();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_100073308()
{
  result = qword_1000A0078;
  if (!qword_1000A0078)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1000A0078);
  }

  return result;
}

uint64_t sub_100073380(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_1000733B4()
{
  v0 = sub_100079BA0();
  sub_100009728(v0, qword_1000A6768);
  sub_1000070F4(v0, qword_1000A6768);
  return sub_100079B90();
}

uint64_t sub_100073464(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 128) = a1;
}

uint64_t static XPCActivity.makeHandler.getter()
{
  swift_beginAccess();
  v0 = static XPCActivity.makeHandler;
  sub_1000735D4(static XPCActivity.makeHandler, qword_1000A6E00);
  return v0;
}

uint64_t sub_1000735D4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t static XPCActivity.makeHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = static XPCActivity.makeHandler;
  v5 = qword_1000A6E00;
  static XPCActivity.makeHandler = a1;
  qword_1000A6E00 = a2;
  return sub_100029F90(v4, v5);
}

Swift::Void __swiftcall XPCActivity.register(disabled:)(Swift::Bool_optional disabled)
{
  v2 = v1;
  v4 = [objc_opt_self() mainBundle];
  v5 = [v4 bundleIdentifier];

  if (v5)
  {
    v6 = sub_100079E20();
    v8 = v7;

    if (disabled.value != 2)
    {
      (*(*v2 + 144))(disabled.value);
    }

    sub_10007A3B0(20);

    aBlock = 0x6C655464756F6C43;
    v26 = 0xEF2E797274656D65;
    v32._countAndFlagsBits = v6;
    v32._object = v8;
    sub_100079F00(v32);

    v33._countAndFlagsBits = 46;
    v33._object = 0xE100000000000000;
    sub_100079F00(v33);
    v34._countAndFlagsBits = (*(v2[15] + 32))();
    sub_100079F00(v34);

    v29 = sub_100075310;
    v30 = v2;
    aBlock = _NSConcreteStackBlock;
    v26 = 1107296256;
    v27 = sub_100073B3C;
    v28 = &unk_100099280;
    v9 = _Block_copy(&aBlock);

    v10 = sub_100079EA0();
    xpc_activity_register((v10 + 32), XPC_ACTIVITY_CHECK_IN, v9);

    _Block_release(v9);
    if (qword_1000A6760 != -1)
    {
      swift_once();
    }

    v11 = sub_100079BA0();
    sub_1000070F4(v11, qword_1000A6768);

    v12 = sub_100079B80();
    v13 = sub_10007A160();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      aBlock = v15;
      *v14 = 136315138;
      v16 = sub_100006B00(0x6C655464756F6C43, 0xEF2E797274656D65, &aBlock);

      *(v14 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v12, v13, "registered: %s", v14, 0xCu);
      sub_1000070A8(v15);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1000A6760 != -1)
    {
      swift_once();
    }

    v17 = sub_100079BA0();
    sub_1000070F4(v17, qword_1000A6768);

    oslog = sub_100079B80();
    v18 = sub_10007A160();

    if (os_log_type_enabled(oslog, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      aBlock = v20;
      *v19 = 136315138;
      v21 = (*(v2[15] + 32))();
      v23 = sub_100006B00(v21, v22, &aBlock);

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, oslog, v18, "unable to register: %s, nil bundleIdentifier", v19, 0xCu);
      sub_1000070A8(v20);
    }

    else
    {
    }
  }
}

uint64_t sub_100073B3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void *sub_100073B9C()
{
  v1 = sub_10000712C(&unk_10009EC50, &unk_10007D650);
  __chkstk_darwin(v1 - 8);
  v47 = &v43 - v2;
  v46 = type metadata accessor for XPCObject(0);
  v3 = *(v46 - 8);
  __chkstk_darwin(v46);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000712C(&qword_1000A02E0, &qword_100080338);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v43 - v10;
  v12 = *(v0 + 112);
  v13 = *(v0 + 120);
  v14 = *(v13 + 24);
  v15 = *(v14(v12, v13) + 16);

  if (!v15)
  {
    return 0;
  }

  v48 = v11;
  v49 = v9;
  v50 = XPCDictionary.init()();
  result = v14(v12, v13);
  v17 = 0;
  v19 = (result + 8);
  v18 = result[8];
  v43 = v3;
  v44 = result;
  v20 = 1 << *(result + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v18;
  v23 = (v20 + 63) >> 6;
  v45 = (v3 + 56);
  v24 = &unk_1000A02E8;
  while (v22)
  {
    v25 = v17;
    v27 = v48;
    v26 = v49;
LABEL_14:
    v30 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v31 = v30 | (v25 << 6);
    v32 = *(*(v44 + 48) + 8 * v31);
    sub_100029A70(*(v44 + 56) + *(v43 + 72) * v31, v5);
    v33 = sub_10000712C(v24, &unk_100080340);
    v34 = *(v33 + 48);
    *v26 = v32;
    sub_100029A0C(v5, v26 + v34);
    (*(*(v33 - 8) + 56))(v26, 0, 1, v33);
    v29 = v25;
LABEL_15:
    sub_100075804(v26, v27);
    v35 = sub_10000712C(v24, &unk_100080340);
    if ((*(*(v35 - 8) + 48))(v27, 1, v35) == 1)
    {

      return v50;
    }

    sub_100029A0C(v27 + *(v35 + 48), v5);
    v36 = sub_100079F10();
    v38 = v37;
    v39 = v24;
    v40 = v47;
    sub_100029A70(v5, v47);
    (*v45)(v40, 0, 1, v46);
    v41 = v40;
    v24 = v39;
    XPCDictionary.subscript.setter(v41, v36, v38);
    result = sub_100029AD4(v5);
    v17 = v29;
  }

  if (v23 <= v17 + 1)
  {
    v28 = v17 + 1;
  }

  else
  {
    v28 = v23;
  }

  v29 = v28 - 1;
  v27 = v48;
  v26 = v49;
  while (1)
  {
    v25 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v25 >= v23)
    {
      v42 = sub_10000712C(v24, &unk_100080340);
      (*(*(v42 - 8) + 56))(v26, 1, 1, v42);
      v22 = 0;
      goto LABEL_15;
    }

    v22 = *&v19[8 * v25];
    ++v17;
    if (v22)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100073FD4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000712C(&qword_10009E000, &qword_10007BA70);
  __chkstk_darwin(v4 - 8);
  v6 = &v42 - v5;
  type metadata accessor for XPCActivityHandle();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = swift_unknownObjectRetain();
  state = xpc_activity_get_state(v8);
  if (state == 2)
  {
    if (qword_1000A6760 != -1)
    {
      swift_once();
    }

    v20 = sub_100079BA0();
    sub_1000070F4(v20, qword_1000A6768);

    v21 = sub_100079B80();
    v22 = sub_10007A190();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v43 = v24;
      *v23 = 136315138;
      v25 = (*(*(v2 + 120) + 32))();
      v27 = sub_100006B00(v25, v26, &v43);

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v21, v22, "run: %s", v23, 0xCu);
      sub_1000070A8(v24);
    }

    should_defer = xpc_activity_should_defer(*(v7 + 16));
    v29 = *(v7 + 16);
    if (!should_defer)
    {
      xpc_activity_set_state(v29, 4);
      v40 = sub_10007A0A0();
      (*(*(v40 - 8) + 56))(v6, 1, 1, v40);
      v41 = swift_allocObject();
      v41[2] = 0;
      v41[3] = 0;
      v41[4] = v2;
      v41[5] = v7;

      sub_100014B7C(0, 0, v6, &unk_100080328, v41);
    }

    xpc_activity_set_state(v29, 3);
LABEL_16:
  }

  if (!state)
  {
    if (qword_1000A6760 != -1)
    {
      swift_once();
    }

    v10 = sub_100079BA0();
    sub_1000070F4(v10, qword_1000A6768);

    v11 = sub_100079B80();
    v12 = sub_10007A160();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v43 = v14;
      *v13 = 136315138;
      v15 = (*(*(v2 + 120) + 32))();
      v17 = sub_100006B00(v15, v16, &v43);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "checkin: %s", v13, 0xCu);
      sub_1000070A8(v14);
    }

    v18 = sub_100073B9C();
    if (v18)
    {
      v19 = v18;
      if (xpc_activity_copy_criteria(*(v7 + 16)))
      {

        swift_unknownObjectRelease();
      }

      else
      {
        xpc_activity_set_criteria(*(v7 + 16), v19);
      }

      return swift_unknownObjectRelease();
    }

    goto LABEL_16;
  }

  if (qword_1000A6760 != -1)
  {
    swift_once();
  }

  v31 = sub_100079BA0();
  sub_1000070F4(v31, qword_1000A6768);
  swift_retain_n();

  v32 = sub_100079B80();
  v33 = sub_10007A170();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v43 = v35;
    *v34 = 136315394;
    v36 = (*(*(v2 + 120) + 32))();
    v38 = sub_100006B00(v36, v37, &v43);

    *(v34 + 4) = v38;
    *(v34 + 12) = 2048;
    v39 = xpc_activity_get_state(*(v7 + 16));

    *(v34 + 14) = v39;

    _os_log_impl(&_mh_execute_header, v32, v33, "activity: %s, encountered unrecognized XPC activity state: %ld", v34, 0x16u);
    sub_1000070A8(v35);
  }

  else
  {
  }
}

uint64_t sub_1000745D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_1000745F8, a4, 0);
}

uint64_t sub_1000745F8()
{
  sub_100074658(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

void sub_100074658(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_10000712C(&qword_10009E000, &qword_10007BA70);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v23 - v7;
  if ((*(v4 + 136))(v6))
  {
    xpc_activity_set_state(*(a1 + 16), 5);
    if (qword_1000A6760 != -1)
    {
      swift_once();
    }

    v9 = sub_100079BA0();
    sub_1000070F4(v9, qword_1000A6768);

    v24 = sub_100079B80();
    v10 = sub_10007A170();

    if (os_log_type_enabled(v24, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      aBlock[0] = v12;
      *v11 = 136315138;
      v13 = (*(v1[15] + 32))();
      v15 = sub_100006B00(v13, v14, aBlock);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v24, v10, "disabled: skipping %s", v11, 0xCu);
      sub_1000070A8(v12);
    }

    else
    {
      v22 = v24;
    }
  }

  else
  {
    aBlock[4] = sub_100075374;
    aBlock[5] = v1;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100073B3C;
    aBlock[3] = &unk_1000992A8;
    v16 = _Block_copy(aBlock);

    v17 = xpc_activity_add_eligibility_changed_handler();
    _Block_release(v16);
    v18 = sub_10007A0A0();
    (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
    v19 = sub_10007537C();
    v20 = swift_allocObject();
    v20[2] = v2;
    v20[3] = v19;
    v20[4] = v17;
    v20[5] = a1;
    v20[6] = v2;
    v20[7] = v4;
    swift_retain_n();

    v21 = sub_100005244(0, 0, v8, &unk_100080308, v20);
    (*(*v2 + 120))(v21);
  }
}

uint64_t sub_100074A00(_xpc_activity_s *a1, uint64_t a2)
{
  v4 = sub_10000712C(&qword_10009E000, &qword_10007BA70);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  result = xpc_activity_should_defer(a1);
  if (result)
  {
    v8 = sub_10007A0A0();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = a2;

    sub_100014B7C(0, 0, v6, &unk_100080318, v9);
  }

  return result;
}

uint64_t sub_100074B3C()
{
  if ((*(**(v0 + 16) + 112))())
  {
    v1 = *(v0 + 16);
    sub_10000712C(&qword_10009F0B0, &qword_10007CBB0);
    sub_10007A0C0();
    (*(*v1 + 120))(0);
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100074C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  return _swift_task_switch(sub_100074C50, a6, 0);
}

void sub_100074C50()
{
  swift_beginAccess();
  v1 = static XPCActivity.makeHandler;
  v0[11] = static XPCActivity.makeHandler;
  if (v1)
  {
    v2 = v0[10];
    v0[12] = qword_1000A6E00;
    v3 = *(v2 + 112);
    v4 = *(v2 + 120);

    v7 = (v1 + *v1);
    v5 = swift_task_alloc();
    v0[13] = v5;
    *v5 = v0;
    v5[1] = sub_100074D98;
    v6 = v0[10];

    v7(v3, v4, v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100074D98(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[5] = v2;
  v4[6] = a1;
  v4[7] = a2;
  v5 = v3[12];
  v6 = v3[11];
  v7 = v3[10];
  v4[14] = a1;

  sub_100029F90(v6, v5);

  return _swift_task_switch(sub_100074EF4, v7, 0);
}

uint64_t sub_100074EF4()
{
  sub_10007A0F0();
  v1 = *(v0 + 56);
  ObjectType = swift_getObjectType();
  v5 = (*(v1 + 16) + **(v1 + 16));
  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  *v3 = v0;
  v3[1] = sub_100075084;

  return v5(ObjectType, v1);
}

uint64_t sub_100075084()
{
  v1 = *(*v0 + 80);

  return _swift_task_switch(sub_100075194, v1, 0);
}

uint64_t sub_100075194(__n128 a1)
{
  v2 = v1[9];
  v3 = v1[10];
  v4 = v1[8];
  swift_unknownObjectRelease();
  sub_1000754C0(v4, v2, v3);
  v5 = v1[1];

  return v5();
}

uint64_t XPCActivity.__allocating_init(handlerType:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v4 + 120) = a2;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 112) = a1;
  return v4;
}

uint64_t XPCActivity.init(handlerType:)(uint64_t a1, uint64_t a2)
{
  swift_defaultActor_initialize();
  *(v2 + 120) = a2;
  *(v2 + 128) = 0;
  *(v2 + 136) = 0;
  *(v2 + 112) = a1;
  return v2;
}

uint64_t XPCActivity.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t XPCActivity.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100075314(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10007537C()
{
  result = qword_1000A02D8;
  if (!qword_1000A02D8)
  {
    type metadata accessor for XPCActivity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A02D8);
  }

  return result;
}

uint64_t sub_1000753D0(__n128 a1)
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v1, 64, 7);
}

uint64_t sub_100075418()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100007838;

  return sub_100074C2C(v5, v6, v7, v2, v3, v4);
}

void sub_1000754C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    xpc_activity_remove_eligibility_changed_handler();
  }

  xpc_activity_set_state(*(a2 + 16), 5);
  if (qword_1000A6760 != -1)
  {
    swift_once();
  }

  v5 = sub_100079BA0();
  sub_1000070F4(v5, qword_1000A6768);

  oslog = sub_100079B80();
  v6 = sub_10007A190();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    v9 = (*(*(a3 + 120) + 32))();
    v11 = sub_100006B00(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, oslog, v6, "done: %s", v7, 0xCu);
    sub_1000070A8(v8);
  }
}

uint64_t sub_100075650(__n128 a1)
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v1, 40, 7);
}

uint64_t sub_100075690()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001A474;

  return sub_100074B1C(v3, v4, v5, v2);
}

uint64_t sub_100075724(__n128 a1)
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v1, 48, 7);
}

uint64_t sub_10007576C()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100007838;

  return sub_1000745D8(v4, v5, v6, v2, v3);
}

uint64_t sub_100075804(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000712C(&qword_1000A02E0, &qword_100080338);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t XPCError.errorDescription.getter(void *a1)
{
  if (xpc_dictionary_get_string(a1, "XPCErrorDescription"))
  {
    return sub_100079F10();
  }

  else
  {
    return 0x64696C61766E693CLL;
  }
}

uint64_t sub_100075AB4()
{
  if (xpc_dictionary_get_string(*v0, "XPCErrorDescription"))
  {
    return sub_100079F10();
  }

  else
  {
    return 0x64696C61766E693CLL;
  }
}

unsigned __int8 *XPCIncomingConnection.entitlementValue(forKey:)@<X0>(uint64_t a4@<X8>)
{
  sub_100079EA0();
  v5 = xpc_connection_copy_entitlement_value();

  return XPCObject.init(_:)(v5, a4);
}

void *XPCIncomingConnection.makeConnection(targetQ:delegate:)(void *a1, uint64_t a2, uint64_t a3, _xpc_connection_s *a4)
{
  type metadata accessor for XPCConnection();
  swift_allocObject();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v8 = a1;
  v9 = sub_100076EB4(a4, v8, a2, a3);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v9;
}

double XPCConnection.conn.getter()
{
  swift_beginAccess();
  swift_unknownObjectRetain();
  return result;
}

uint64_t XPCConnection.conn.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
  return swift_unknownObjectRelease();
}

uint64_t XPCConnection.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*XPCConnection.delegate.modify(uint64_t *a1))(uint64_t a1, char a2, __n128 a3)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 32);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_100075EB0;
}

void sub_100075EB0(uint64_t a1, char a2, __n128 a3)
{
  v4 = *a1;
  *(*(*a1 + 40) + 32) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v4);
}

uint64_t sub_100075F3C()
{
  v0 = sub_100079BA0();
  sub_100009728(v0, qword_1000A6808);
  sub_1000070F4(v0, qword_1000A6808);
  return sub_100079B90();
}

void *XPCConnection.__allocating_init(targetQ:delegate:)(void *a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_1000770D0(a1, a2, a3);

  swift_unknownObjectRelease();
  return v6;
}

void *XPCConnection.init(targetQ:delegate:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000770D0(a1, a2, a3);

  swift_unknownObjectRelease();
  return v4;
}

uint64_t XPCConnection.__allocating_init(machService:targetQ:listen:delegate:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, _xpc_connection_s *a6)
{
  v8 = a4;
  swift_allocObject();
  v12 = sub_100077304(a1, a2, a3, v8, a5, a6);

  swift_unknownObjectRelease();
  return v12;
}

uint64_t XPCConnection.init(machService:targetQ:listen:delegate:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, _xpc_connection_s *a6)
{
  v7 = sub_100077304(a1, a2, a3, a4, a5, a6);

  swift_unknownObjectRelease();
  return v7;
}

uint64_t XPCConnection.__allocating_init(serviceName:targetQ:listen:delegate:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v12 = swift_allocObject();
  XPCConnection.init(serviceName:targetQ:listen:delegate:)(a1, a2, a3, v8, a5, a6);
  return v12;
}

void XPCConnection.init(serviceName:targetQ:listen:delegate:)(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v7[2] = 0;
  v11 = (v7 + 2);
  v7[4] = 0;
  swift_unknownObjectWeakInit();
  if (a4)
  {

    swift_beginAccess();
    v7[4] = a6;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    swift_beginAccess();
    v7[2] = 0;
    swift_unknownObjectRelease();
    v7[5] = a3;
    return;
  }

  v12 = sub_100079EA0();
  v13 = a3;
  v14 = xpc_connection_create((v12 + 32), v13);

  swift_beginAccess();
  v7[4] = a6;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v7[2] = v14;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v7[5] = v13;
  v15 = qword_1000A6800;
  v16 = v13;
  if (v15 != -1)
  {
    swift_once();
  }

  v17 = sub_100079BA0();
  sub_1000070F4(v17, qword_1000A6808);
  v18 = sub_100079B80();
  v19 = sub_10007A190();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "C.", v20, 2u);
  }

  if (!*v11)
  {
    __break(1u);
    goto LABEL_12;
  }

  v21 = swift_unknownObjectRetain();
  xpc_connection_set_target_queue(v21, v16);
  swift_unknownObjectRelease();

  v22 = *v11;
  if (!*v11)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v25[4] = j___s20CloudTelemetryShared13XPCConnectionC12eventHandler3objySo13OS_xpc_object_p_tF;
  v25[5] = v7;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 1107296256;
  v25[2] = sub_100073B3C;
  v25[3] = &unk_100099368;
  v23 = _Block_copy(v25);

  swift_unknownObjectRetain();

  xpc_connection_set_event_handler(v22, v23);
  _Block_release(v23);
  swift_unknownObjectRelease();
  v24 = v7[2];
  if (v24)
  {
    swift_unknownObjectRetain();

    xpc_connection_activate(v24);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t sub_100076548(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, void *, uint64_t, uint64_t), void (*a6)(uint64_t))
{
  swift_allocObject();
  v12 = a5(a1, a2, a3, a4);
  a6(a1);

  swift_unknownObjectRelease();
  return v12;
}

uint64_t sub_10007660C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(uint64_t))
{
  v9 = a5();
  a6(a1);

  swift_unknownObjectRelease();
  return v9;
}

_xpc_connection_s *XPCConnection.endpoint()()
{
  swift_beginAccess();
  result = *(v0 + 16);
  if (result)
  {
    return xpc_endpoint_create(result);
  }

  __break(1u);
  return result;
}

void XPCConnection.send(_:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  if (v3)
  {
    swift_unknownObjectRetain();
    XPCIncomingConnection.conn.getter(a1);
    xpc_connection_send_message(v3, v4);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

uint64_t XPCConnection.sendWithReply(_:)(uint64_t a1, char a2)
{
  *(v3 + 96) = a2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v2;
  return _swift_task_switch(sub_10007675C, 0, 0);
}

uint64_t sub_10007675C()
{
  v1 = *(v0 + 56);
  v2 = swift_beginAccess();
  v10 = *(v1 + 16);
  *(v0 + 64) = v10;
  if (v10)
  {
    v11 = *(v0 + 96);
    v12 = *(v0 + 48);
    v13 = *(*(v0 + 56) + 40);
    v14 = swift_task_alloc();
    *(v0 + 72) = v14;
    *(v14 + 16) = v10;
    *(v14 + 24) = v12;
    *(v14 + 32) = v11;
    *(v14 + 40) = v13;
    swift_unknownObjectRetain();
    v15 = swift_task_alloc();
    *(v0 + 80) = v15;
    *v15 = v0;
    v15[1] = sub_1000768A0;
    v9 = &type metadata for XPCDictionary;
    v7 = sub_1000777EC;
    v2 = v0 + 40;
    v6 = 0x8000000100084C30;
    v3 = 0;
    v4 = 0;
    v5 = 0xD000000000000011;
    v8 = v14;
  }

  else
  {
    __break(1u);
  }

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1000768A0()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_100076A24;
  }

  else
  {

    v2 = sub_1000769BC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000769BC(__n128 a1)
{
  swift_unknownObjectRelease();
  v2 = *(v1 + 40);
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_100076A24(__n128 a1)
{
  swift_unknownObjectRelease();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_100076A90(uint64_t a1, _xpc_connection_s *a2, uint64_t a3, NSObject *a4)
{
  v8 = sub_10000712C(&qword_1000A03C8, &unk_1000805F0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = aBlock - v10;
  v12 = XPCIncomingConnection.conn.getter(a3);
  v14 = v13;
  (*(v9 + 16))(v11, a1, v8, v12);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  (*(v9 + 32))(v16 + v15, v11, v8);
  aBlock[4] = sub_10007792C;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100073B3C;
  aBlock[3] = &unk_100099408;
  v17 = _Block_copy(aBlock);

  xpc_connection_send_message_with_reply(a2, v14, a4, v17);
  _Block_release(v17);
  return swift_unknownObjectRelease();
}

uint64_t XPCConnection.auditToken.getter()
{
  swift_beginAccess();
  if (!*(v0 + 16))
  {
    __break(1u);
  }

  xpc_connection_get_audit_token();
  return 0;
}

_xpc_connection_s *XPCConnection.remoteUID.getter()
{
  swift_beginAccess();
  result = *(v0 + 16);
  if (result)
  {
    return xpc_connection_get_euid(result);
  }

  __break(1u);
  return result;
}

uint64_t XPCConnection.deinit()
{
  v1 = v0;
  if (qword_1000A6800 != -1)
  {
    swift_once();
  }

  v2 = sub_100079BA0();
  sub_1000070F4(v2, qword_1000A6808);
  v3 = sub_100079B80();
  v4 = sub_10007A170();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "connection released", v5, 2u);
  }

  swift_beginAccess();
  v6 = *(v1 + 16);
  if (v6)
  {
    xpc_connection_cancel(v6);
  }

  swift_unknownObjectRelease();
  sub_1000777F8(v1 + 24);

  return v1;
}

uint64_t XPCConnection.__deallocating_deinit()
{
  XPCConnection.deinit();

  return swift_deallocClassInstance();
}

void *sub_100076EB4(_xpc_connection_s *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v5[2] = 0;
  v5[4] = 0;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  v5[2] = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  swift_beginAccess();
  v5[4] = a4;
  swift_unknownObjectWeakAssign();
  v5[5] = a2;
  v9 = qword_1000A6800;
  v10 = a2;
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = sub_100079BA0();
  sub_1000070F4(v11, qword_1000A6808);
  v12 = sub_100079B80();
  v13 = sub_10007A190();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "D.", v14, 2u);
  }

  xpc_connection_set_target_queue(a1, v10);
  v17[4] = j___s20CloudTelemetryShared13XPCConnectionC12eventHandler3objySo13OS_xpc_object_p_tF;
  v17[5] = v5;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_100073B3C;
  v17[3] = &unk_1000994A8;
  v15 = _Block_copy(v17);

  xpc_connection_set_event_handler(a1, v15);
  _Block_release(v15);
  xpc_connection_activate(a1);
  return v5;
}

void *sub_1000770D0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v4[2] = 0;
  v4[4] = 0;
  swift_unknownObjectWeakInit();
  v7 = a1;
  v8 = xpc_connection_create(0, v7);
  swift_beginAccess();
  v4[4] = a3;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v4[2] = v8;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v4[5] = v7;
  v9 = qword_1000A6800;
  v10 = v7;
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = sub_100079BA0();
  sub_1000070F4(v11, qword_1000A6808);
  v12 = sub_100079B80();
  v13 = sub_10007A190();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "A.", v14, 2u);
  }

  xpc_connection_set_target_queue(v8, v10);
  v17[4] = j___s20CloudTelemetryShared13XPCConnectionC12eventHandler3objySo13OS_xpc_object_p_tF;
  v17[5] = v4;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_100073B3C;
  v17[3] = &unk_100099480;
  v15 = _Block_copy(v17);

  xpc_connection_set_event_handler(v8, v15);
  _Block_release(v15);
  xpc_connection_activate(v8);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_100077304(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, _xpc_connection_s *a6)
{
  v7 = v6;
  *(v6 + 16) = 0;
  v11 = (v6 + 16);
  v11[2] = 0;
  swift_unknownObjectWeakInit();
  if (a4)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  v13 = sub_100079EA0();
  v14 = a3;

  mach_service = xpc_connection_create_mach_service((v13 + 32), v14, v12);

  swift_beginAccess();
  v11[2] = a6;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  *v11 = mach_service;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v11[3] = v14;
  v16 = qword_1000A6800;
  v17 = v14;
  if (v16 != -1)
  {
    swift_once();
  }

  v18 = sub_100079BA0();
  sub_1000070F4(v18, qword_1000A6808);
  v19 = sub_100079B80();
  v20 = sub_10007A190();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "B.", v21, 2u);
  }

  xpc_connection_set_target_queue(mach_service, v17);
  v24[4] = j___s20CloudTelemetryShared13XPCConnectionC12eventHandler3objySo13OS_xpc_object_p_tF;
  v24[5] = v7;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 1107296256;
  v24[2] = sub_100073B3C;
  v24[3] = &unk_100099458;
  v22 = _Block_copy(v24);

  xpc_connection_set_event_handler(mach_service, v22);
  _Block_release(v22);
  xpc_connection_activate(mach_service);
  swift_unknownObjectRelease();
  return v7;
}

uint64_t sub_100077578(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

_xpc_connection_s *sub_100077590(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v5[2] = 0;
  v5[4] = 0;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  result = *(a1 + 16);
  if (result)
  {
    v10 = xpc_endpoint_create(result);
    v11 = xpc_connection_create_from_endpoint(v10);
    swift_beginAccess();
    v5[2] = v11;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    swift_beginAccess();
    v5[4] = a4;
    swift_unknownObjectWeakAssign();
    v5[5] = a2;
    v12 = qword_1000A6800;
    v13 = a2;
    if (v12 != -1)
    {
      swift_once();
    }

    v14 = sub_100079BA0();
    sub_1000070F4(v14, qword_1000A6808);
    v15 = sub_100079B80();
    v16 = sub_10007A190();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "E.", v17, 2u);
    }

    xpc_connection_set_target_queue(v11, v13);
    aBlock[4] = j___s20CloudTelemetryShared13XPCConnectionC12eventHandler3objySo13OS_xpc_object_p_tF;
    aBlock[5] = v5;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100073B3C;
    aBlock[3] = &unk_100099430;
    v18 = _Block_copy(aBlock);

    xpc_connection_set_event_handler(v11, v18);
    _Block_release(v18);
    xpc_connection_activate(v11);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100077824()
{
  result = qword_1000A02F0;
  if (!qword_1000A02F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A02F0);
  }

  return result;
}

uint64_t sub_100077898()
{
  v1 = sub_10000712C(&qword_1000A03C8, &unk_1000805F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10007792C(void *a1)
{
  sub_10000712C(&qword_1000A03C8, &unk_1000805F0);
  type = xpc_get_type(a1);
  if (type == XPCTypeError.getter())
  {
    sub_100077824();
    swift_allocError();
    *v4 = a1;
    swift_unknownObjectRetain();
    sub_10000712C(&qword_1000A03C8, &unk_1000805F0);
    return sub_10007A060();
  }

  else
  {
    swift_unknownObjectRetain();
    XPCIncomingConnection.init(conn:)();
    sub_10000712C(&qword_1000A03C8, &unk_1000805F0);
    return sub_10007A070();
  }
}

uint64_t _s20CloudTelemetryShared13XPCConnectionC12eventHandler3objySo13OS_xpc_object_p_tF_0(void *a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 32);
    type = xpc_get_type(a1);
    v6 = XPCTypeError.getter();
    ObjectType = swift_getObjectType();
    if (type == v6)
    {
      (*(v4 + 8))(a1, ObjectType, v4);
    }

    else
    {
      (*(v4 + 16))(a1, ObjectType, v4);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void getTimeIntervalSince1970(Date:)(uint64_t a1)
{
  sub_1000799B0();
  v2 = (*&v1 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v3 = v1 < 0.0 && ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (v1 >= 0.0)
  {
    v2 = 0;
  }

  v4 = (*&v1 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v2;
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
  {
    v4 = 1;
  }

  if (((v4 | v3) & 1) == 0)
  {
    if (v1 <= -9.22337204e18)
    {
      __break(1u);
    }

    else if (v1 < 9.22337204e18)
    {
      return;
    }

    __break(1u);
  }
}

uint64_t sub_100077C14()
{
  sub_10000712C(&qword_10009FFE8, &qword_100080150);
  v0 = sub_10000712C(&qword_10009FFF0, &qword_100080158);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10007DF40;
  v4 = (v3 + v2);
  v5 = (v4 + *(v0 + 48));
  *v4 = XPC_ACTIVITY_PRIORITY;
  *v5 = sub_100079F10();
  v5[1] = v6;
  type metadata accessor for XPCObject(0);
  result = swift_storeEnumTagMultiPayload();
  if (XPC_ACTIVITY_POWER_NAP)
  {
    v8 = (v4 + v1);
    v9 = *(v0 + 48);
    *v8 = XPC_ACTIVITY_POWER_NAP;
    *(v8 + v9) = 1;
    result = swift_storeEnumTagMultiPayload();
    if (XPC_ACTIVITY_POST_INSTALL)
    {
      v10 = *(v0 + 48);
      v11 = (v4 + 2 * v1);
      *v11 = XPC_ACTIVITY_POST_INSTALL;
      *(v11 + v10) = 1;
      swift_storeEnumTagMultiPayload();
      v12 = sub_100071664(v3);
      swift_setDeallocating();
      swift_arrayDestroy();
      result = swift_deallocClassInstance();
      static PostInstallActivityConfig.activityFlags = v12;
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

uint64_t *PostInstallActivityConfig.activityFlags.unsafeMutableAddressor()
{
  if (qword_1000A69A0 != -1)
  {
    swift_once();
  }

  return &static PostInstallActivityConfig.activityFlags;
}

double static PostInstallActivityConfig.activityFlags.getter()
{
  if (qword_1000A69A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  return result;
}

uint64_t static PostInstallActivityConfig.activityFlags.setter(uint64_t a1)
{
  if (qword_1000A69A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static PostInstallActivityConfig.activityFlags = a1;
}

uint64_t (*static PostInstallActivityConfig.activityFlags.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1000A69A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_100077FE0()
{
  sub_10000712C(&qword_10009FFE8, &qword_100080150);
  v0 = sub_10000712C(&qword_10009FFF0, &qword_100080158);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100080650;
  v4 = (v3 + v2);
  v5 = *(v0 + 48);
  *v4 = XPC_ACTIVITY_REPEATING;
  *(v4 + v5) = 1;
  type metadata accessor for XPCObject(0);
  swift_storeEnumTagMultiPayload();
  v6 = (v4 + v1);
  v7 = *(v0 + 48);
  *v6 = XPC_ACTIVITY_DELAY;
  *(v6 + v7) = 86400;
  swift_storeEnumTagMultiPayload();
  v8 = (v4 + 2 * v1);
  v9 = *(v0 + 48);
  *v8 = XPC_ACTIVITY_GRACE_PERIOD;
  *(v8 + v9) = 43200;
  swift_storeEnumTagMultiPayload();
  v10 = (v4 + 3 * v1);
  v11 = (v10 + *(v0 + 48));
  *v10 = XPC_ACTIVITY_PRIORITY;
  *v11 = sub_100079F10();
  v11[1] = v12;
  swift_storeEnumTagMultiPayload();
  v13 = (v4 + 4 * v1);
  v14 = *(v0 + 48);
  *v13 = XPC_ACTIVITY_ALLOW_BATTERY;
  *(v13 + v14) = 0;
  result = swift_storeEnumTagMultiPayload();
  if (!XPC_ACTIVITY_POWER_NAP)
  {
    __break(1u);
    goto LABEL_9;
  }

  v16 = *(v0 + 48);
  v17 = (v4 + 5 * v1);
  *v17 = XPC_ACTIVITY_POWER_NAP;
  *(v17 + v16) = 1;
  result = swift_storeEnumTagMultiPayload();
  if (!XPC_ACTIVITY_RANDOM_INITIAL_DELAY)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v18 = (v4 + 6 * v1);
  v19 = *(v0 + 48);
  *v18 = XPC_ACTIVITY_RANDOM_INITIAL_DELAY;
  *(v18 + v19) = 43200;
  result = swift_storeEnumTagMultiPayload();
  if (!XPC_ACTIVITY_EXPECTED_DURATION)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v20 = (&v4[v1] - v1);
  v21 = *(v0 + 48);
  *v20 = XPC_ACTIVITY_EXPECTED_DURATION;
  *(v20 + v21) = XPC_ACTIVITY_INTERVAL_1_MIN;
  result = swift_storeEnumTagMultiPayload();
  if (!XPC_ACTIVITY_GROUP_NAME)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v22 = &v4[v1];
  v23 = (v22 + *(v0 + 48));
  *v22 = XPC_ACTIVITY_GROUP_NAME;
  *v23 = 0xD000000000000025;
  v23[1] = 0x8000000100084B30;
  result = swift_storeEnumTagMultiPayload();
  if (!XPC_ACTIVITY_GROUP_CONCURRENCY_LIMIT)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v24 = (v4 + 9 * v1);
  v25 = *(v0 + 48);
  *v24 = XPC_ACTIVITY_GROUP_CONCURRENCY_LIMIT;
  *(v24 + v25) = 1;
  result = swift_storeEnumTagMultiPayload();
  if (XPC_ACTIVITY_DISK_INTENSIVE)
  {
    v26 = *(v0 + 48);
    v27 = (v4 + 10 * v1);
    *v27 = XPC_ACTIVITY_DISK_INTENSIVE;
    *(v27 + v26) = 1;
    swift_storeEnumTagMultiPayload();
    v28 = sub_100071664(v3);
    swift_setDeallocating();
    swift_arrayDestroy();
    result = swift_deallocClassInstance();
    static CacheCleanupActivityConfig.activityFlags = v28;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t *CacheCleanupActivityConfig.activityFlags.unsafeMutableAddressor()
{
  if (qword_1000A69A8 != -1)
  {
    swift_once();
  }

  return &static CacheCleanupActivityConfig.activityFlags;
}

double static CacheCleanupActivityConfig.activityFlags.getter()
{
  if (qword_1000A69A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  return result;
}

uint64_t static CacheCleanupActivityConfig.activityFlags.setter(uint64_t a1)
{
  if (qword_1000A69A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static CacheCleanupActivityConfig.activityFlags = a1;
}

uint64_t (*static CacheCleanupActivityConfig.activityFlags.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1000A69A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

Swift::Int sub_10007856C()
{
  v1 = *v0;
  sub_10007A730();
  sub_10007A750(v1);
  return sub_10007A760();
}

Swift::Int sub_1000785E0(uint64_t a1)
{
  v2 = *v1;
  sub_10007A730();
  sub_10007A750(v2);
  return sub_10007A760();
}

unint64_t sub_100078624@<X0>(Swift::Int64 *a1@<X0>, CloudTelemetryShared::XPCMessage::MessageType_optional *a2@<X8>)
{
  result = _s20CloudTelemetryShared10XPCMessageV11MessageTypeO8rawValueAESgs5Int64V_tcfC_0(*a1);
  a2->value = result;
  return result;
}

uint64_t XPCMessage.init(ty:payload:)(unsigned __int8 a1, uint64_t a2)
{
  v4 = sub_10000712C(&unk_10009EC50, &unk_10007D650);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  v10 = a2;
  swift_unknownObjectRetain();
  v7 = xpc_int64_create(a1);
  XPCObject.init(_:)(v7, v6);
  XPCDictionary.subscript.setter(v6, 1701869940, 0xE400000000000000);
  swift_unknownObjectRelease();
  return v10;
}

void *XPCMessage.init(fromXPC:)(void *a1)
{
  v1 = sub_10000712C(&unk_10009EC50, &unk_10007D650);
  __chkstk_darwin(v1 - 8);
  v3 = (&v9 - v2);
  swift_getObjectType();
  rawValue = OS_xpc_object.type()()._rawValue;
  if (rawValue != XPCTypeDictionary.getter())
  {
    goto LABEL_2;
  }

  swift_unknownObjectRetain();
  XPCIncomingConnection.init(conn:)();
  v6 = v5;
  XPCDictionary.subscript.getter(v5, v3);
  swift_unknownObjectRelease();
  v7 = type metadata accessor for XPCObject(0);
  if ((*(*(v7 - 8) + 48))(v3, 1, v7) == 1)
  {
    swift_unknownObjectRelease();
    sub_1000791C4(v3);
    return 0;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    swift_unknownObjectRelease();
    sub_100029AD4(v3);
    return 0;
  }

  result = v6;
  if (*v3 >= 5uLL)
  {
LABEL_2:
    swift_unknownObjectRelease();
    return 0;
  }

  return result;
}

uint64_t XPCMessage.description.getter(void *a1, char a2)
{
  v41 = type metadata accessor for XPCObject(0);
  v4 = *(v41 - 8);
  __chkstk_darwin(v41);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000712C(&unk_10009EC50, &unk_10007D650);
  __chkstk_darwin(v7 - 8);
  v9 = &v37 - v8;
  v43 = 0;
  v44 = 0xE000000000000000;
  LOBYTE(v42) = a2;
  sub_10007A480();
  v45._countAndFlagsBits = 2683;
  v45._object = 0xE200000000000000;
  sub_100079F00(v45);
  v40 = a1;
  v10 = XPCDictionary.keys.getter(a1);
  v39 = *(v10 + 2);
  if (!v39)
  {
LABEL_17:

    v33 = sub_100079D60();
    v35 = v34;

    v46._countAndFlagsBits = v33;
    v46._object = v35;
    sub_100079F00(v46);

    v47._countAndFlagsBits = 125;
    v47._object = 0xE100000000000000;
    sub_100079F00(v47);
    return v43;
  }

  v11 = 0;
  v38 = (v4 + 48);
  v12 = (v10 + 40);
  v13 = &_swiftEmptyDictionarySingleton;
  v37 = v10;
  while (v11 < *(v10 + 2))
  {
    v17 = *(v12 - 1);
    v16 = *v12;

    XPCDictionary.subscript.getter(v40, v9);
    if ((*v38)(v9, 1, v41) == 1)
    {
      goto LABEL_21;
    }

    v18 = v9;
    v19 = v6;
    sub_100029A0C(v9, v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = v13;
    v21 = sub_10000A0FC(v17, v16);
    v23 = v13[2];
    v24 = (v22 & 1) == 0;
    v25 = __OFADD__(v23, v24);
    v26 = v23 + v24;
    if (v25)
    {
      goto LABEL_19;
    }

    v27 = v22;
    if (v13[3] < v26)
    {
      sub_100078C48(v26, isUniquelyReferenced_nonNull_native);
      v21 = sub_10000A0FC(v17, v16);
      if ((v27 & 1) != (v28 & 1))
      {
        goto LABEL_22;
      }

LABEL_12:
      if (v27)
      {
        goto LABEL_3;
      }

      goto LABEL_13;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_12;
    }

    v32 = v21;
    sub_100078F84();
    v21 = v32;
    if (v27)
    {
LABEL_3:
      v14 = v21;

      v13 = v42;
      v15 = v42[7] + *(v4 + 72) * v14;
      v6 = v19;
      sub_10007922C(v19, v15);
      goto LABEL_4;
    }

LABEL_13:
    v13 = v42;
    v42[(v21 >> 6) + 8] |= 1 << v21;
    v29 = (v13[6] + 16 * v21);
    *v29 = v17;
    v29[1] = v16;
    v6 = v19;
    sub_100029A0C(v19, v13[7] + *(v4 + 72) * v21);
    v30 = v13[2];
    v25 = __OFADD__(v30, 1);
    v31 = v30 + 1;
    if (v25)
    {
      goto LABEL_20;
    }

    v13[2] = v31;
LABEL_4:
    ++v11;
    v12 += 2;
    v10 = v37;
    v9 = v18;
    if (v39 == v11)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_10007A6C0();
  __break(1u);
  return result;
}

uint64_t sub_100078C48(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for XPCObject(0);
  v39 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_10000712C(&qword_1000A03D8, "b^");
  v40 = v4;
  result = sub_10007A4C0();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_100029A0C(v28, v41);
      }

      else
      {
        sub_100029A70(v28, v41);
      }

      sub_10007A730();
      sub_100079EC0();
      result = sub_10007A760();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_100029A0C(v41, *(v9 + 56) + v27 * v17);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

void sub_100078F84()
{
  v1 = v0;
  v2 = type metadata accessor for XPCObject(0);
  v31 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000712C(&qword_1000A03D8, "b^");
  v4 = *v0;
  v5 = sub_10007A4B0();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v8 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_100029A70(*(v4 + 56) + v26, v30);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_100029A0C(v25, *(v27 + 56) + v26);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

unint64_t _s20CloudTelemetryShared10XPCMessageV11MessageTypeO8rawValueAESgs5Int64V_tcfC_0(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

uint64_t sub_1000791C4(uint64_t a1)
{
  v2 = sub_10000712C(&unk_10009EC50, &unk_10007D650);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10007922C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCObject(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_100079294()
{
  result = qword_1000A03D0;
  if (!qword_1000A03D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A03D0);
  }

  return result;
}

uint64_t sub_1000792E8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_100079330(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for XPCMessage.MessageType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for XPCMessage.MessageType(uint64_t result, unsigned int a2, unsigned int a3)
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