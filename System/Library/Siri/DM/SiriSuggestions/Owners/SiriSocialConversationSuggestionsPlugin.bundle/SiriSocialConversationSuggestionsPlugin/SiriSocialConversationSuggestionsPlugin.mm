uint64_t sub_1420()
{
  v2 = *(v0 + 16);

  return v2;
}

BOOL sub_1490(uint64_t a1)
{
  v4 = sub_1474();

  v2 = a1 < v4 || a1 >= sub_1458();

  return v2;
}

uint64_t sub_1538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[9] = v4;
  v5[8] = a2;
  v5[2] = v5;
  v5[3] = 0;
  v5[4] = 0;
  v5[5] = 0;
  v5[6] = 0;
  v5[7] = 0;
  v6 = sub_9140();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = sub_1D04(&qword_102B8, &qword_9618);
  v5[15] = swift_task_alloc();
  sub_1D04(&qword_102C0, &unk_9620);
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[3] = a1;
  v5[4] = a2;
  v5[5] = a3;
  v5[6] = a4;
  v5[7] = v4;

  return _swift_task_switch(sub_1768, 0);
}

uint64_t sub_1768()
{
  v23 = v0[18];
  v25 = v0[17];
  v28 = v0[15];
  v22 = v0[14];
  v26 = v0[11];
  v27 = v0[10];
  v1 = v0[8];
  v0[2] = v0;
  sub_1D70(v1, v1[3]);
  sub_9150();
  (*(v26 + 104))(v25, enum case for DeliveryVehicle.siriAutoComplete(_:), v27);
  (*(v26 + 56))(v25, 0);
  v24 = *(v22 + 48);
  sub_1DDC(v23, v28);
  sub_1DDC(v25, &v28[v24]);
  v29 = *(v26 + 48);
  if (v29(v28, 1, v27) == 1)
  {
    if (v29(&v28[v24], 1, *(v21 + 80)) == 1)
    {
      sub_2030(*(v21 + 120));
      v19 = 1;
      goto LABEL_7;
    }
  }

  else
  {
    v20 = *(v21 + 80);
    sub_1DDC(*(v21 + 120), *(v21 + 128));
    if (v29(&v28[v24], 1, v20) != 1)
    {
      v17 = *(v21 + 120);
      v14 = *(v21 + 104);
      v13 = *(v21 + 96);
      v15 = *(v21 + 80);
      v12 = *(v21 + 88);
      v11 = *(v12 + 32);
      v11();
      (v11)(v13, &v28[v24], v15);
      sub_2328();
      v18 = sub_9320();
      v16 = *(v12 + 8);
      v16(v13, v15);
      v16(v14, v15);
      sub_2030(v17);
      v19 = v18;
      goto LABEL_7;
    }

    (*(*(v21 + 88) + 8))(*(v21 + 128), *(v21 + 80));
  }

  sub_1F04(*(v21 + 120));
  v19 = 0;
LABEL_7:
  v10 = *(v21 + 144);
  sub_2030(*(v21 + 136));
  sub_2030(v10);
  if (v19)
  {
    sub_94A0();
    v8 = v2;
    v3 = sub_20D8(1);
    v8[3] = &type metadata for String;
    *v8 = v3;
    v8[1] = v4;
    sub_2164();
    v9 = v5;
  }

  else
  {
    v9 = sub_21A8();
  }

  v6 = *(*(v21 + 16) + 8);

  return v6(v9);
}

uint64_t sub_1D04(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  if (!*a1)
  {
    TypeByMangledNameInContext2 = swift_getTypeByMangledNameInContext2();
    *a1 = TypeByMangledNameInContext2;
    return TypeByMangledNameInContext2;
  }

  return v5;
}

void *sub_1D70(void *result, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 80);
  if ((v2 & 0x20000) != 0)
  {
    return (*result + ((v2 + 16) & ~v2));
  }

  return result;
}

void *sub_1DDC(const void *a1, void *a2)
{
  v6 = sub_9140();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_1D04(&qword_102C0, &unk_9620);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_1F04(uint64_t a1)
{
  v4 = sub_9140();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  if (!(v6)(a1, 1))
  {
    (*(v5 + 8))(a1, v4);
  }

  v2 = a1 + *(sub_1D04(&qword_102B8, &qword_9618) + 48);
  if (!v6())
  {
    (*(v5 + 8))(v2, v4);
  }

  return a1;
}

uint64_t sub_2030(uint64_t a1)
{
  v3 = sub_9140();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_20D8(char a1)
{
  if (a1)
  {
    return sub_9340("other", 5uLL, 1);
  }

  else
  {
    return sub_9340("bedtime", 7uLL, 1);
  }
}

uint64_t sub_21A8()
{
  v16 = 0;
  v15 = 0;
  v3 = 0;
  v8 = sub_90D0();
  v6 = *(v8 - 8);
  v7 = v8 - 8;
  v4 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v9 = &v3 - v4;
  v13 = sub_9070();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v5 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v13);
  v12 = &v3 - v5;
  v16 = &v3 - v5;
  v15 = v0;
  sub_9060();
  sub_23A8(v9);
  sub_2498(v12, v9);
  v14 = v1;
  (*(v6 + 8))(v9, v8);
  (*(v10 + 8))(v12, v13);
  return v14;
}

unint64_t sub_2328()
{
  v2 = qword_102C8;
  if (!qword_102C8)
  {
    sub_9140();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_102C8);
    return WitnessTable;
  }

  return v2;
}

void sub_23A8(uint64_t a1@<X8>)
{
  v5 = a1;
  v7 = sub_90D0();
  v3 = *(v7 - 8);
  v4 = v7 - 8;
  v2 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7);
  v6 = &v1 - v2;
  v8 = [objc_opt_self() currentCalendar];
  sub_90A0();
  (*(v3 + 32))(v5, v6, v7);
}

void sub_2498(uint64_t a1, uint64_t a2)
{
  v11 = a1;
  v10[2] = a2;
  v3 = v2;
  v12 = v3;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v15 = sub_90B0();
  v13 = *(v15 - 8);
  v14 = v15 - 8;
  __chkstk_darwin(v15);
  v16 = v10 - v5;
  v23 = v11;
  v22 = a2;
  v21 = v12;
  (*(v13 + 104))();
  v17 = sub_90C0();
  (*(v13 + 8))(v16, v15);
  v20 = v17;
  v18 = sub_94A0();
  v19 = v6;
  if (sub_1490(v17))
  {
    v10[0] = sub_20D8(0);
  }

  else
  {
    v10[0] = sub_20D8(1);
  }

  v10[1] = v7;
  v8 = v19;
  v9 = v10[0];
  v19[3] = &type metadata for String;
  *v8 = v9;
  v8[1] = v7;
  sub_2164();
}

uint64_t sub_2718()
{
  v0 = sub_9340("typeOfTimeOfDay", 0xFuLL, 1);
  result = v3;
  *(v3 + 16) = v0;
  *(v3 + 24) = v2;
  return result;
}

uint64_t sub_27B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_2884;

  return sub_1538(a1, a2, a3, a4);
}

uint64_t sub_2884(uint64_t a1)
{
  v4 = *v1;
  *(v4 + 16) = *v1;

  v2 = *(*(v4 + 16) + 8);

  return v2(a1);
}

uint64_t sub_29CC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v6._object = a2;
  sub_94A0();
  *v2 = "bedtime";
  *(v2 + 8) = 7;
  *(v2 + 16) = 2;
  *(v2 + 24) = "other";
  *(v2 + 32) = 5;
  *(v2 + 40) = 2;
  sub_2164();
  v7 = sub_9460(v8, v6);

  if (!v7)
  {
    v5 = 0;
LABEL_6:

    return v5;
  }

  if (v7 == 1)
  {
    v5 = 1;
    goto LABEL_6;
  }

  return 2;
}

unint64_t sub_2B4C()
{
  v2 = qword_102D0;
  if (!qword_102D0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_102D0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_2C98@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_29CC(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_2CD0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_20D8(*v1 & 1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2D40(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFE)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 1) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 254;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 2;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_2EA8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFE)
  {
    v5 = ((a3 + 1) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFE)
  {
    v4 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_30F0()
{
  v2 = qword_10378;
  if (!qword_10378)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10378);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_3184()
{
  v2 = qword_10380;
  if (!qword_10380)
  {
    type metadata accessor for TimeOfDayResolver();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10380);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_321C()
{
  v2 = qword_10388;
  if (!qword_10388)
  {
    type metadata accessor for TimeOfDayResolver();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10388);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_32D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[33] = a3;
  v4[32] = a1;
  v4[27] = v4;
  v4[28] = 0;
  v4[29] = 0;
  v4[30] = 0;
  v4[31] = 0;
  v4[17] = 0;
  v4[18] = 0;
  v4[19] = 0;
  v4[20] = 0;
  v4[25] = 0;
  v4[26] = 0;
  v5 = sub_92C0();
  v4[34] = v5;
  v4[35] = *(v5 - 8);
  v4[36] = swift_task_alloc();
  v4[28] = a1;
  v4[29] = a2;
  v4[30] = a3;
  v4[31] = v3;

  return _swift_task_switch(sub_3438, 0);
}

uint64_t sub_3438()
{
  v1 = v0[32];
  v0[27] = v0;
  sub_1D70(v1, v1[3]);
  v2 = sub_9130();
  v21 = sub_8840(v2);
  v22 = v3;
  v0[17] = v21;
  v0[18] = v3;

  if (v22)
  {

    v18 = v21;
    v19 = v22;
  }

  else
  {
    v18 = 0;
    v19 = 0;
  }

  if (v19)
  {
    v16 = v18;
    v17 = v19;
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  if (v17)
  {
    v20[19] = v16;
    v20[20] = v17;
    sub_3A5C();

    v20[23] = v16;
    v20[24] = v17;
    sub_9300();
    sub_329C((v20 + 23));
    v15 = v20[22];
    if (v15)
    {
      v13 = v20[36];
      v14 = v20[34];
      v11 = v20[33];
      v12 = v20[35];
      v20[25] = v20[21];
      v20[26] = v15;

      sub_1D70(v11, v11[3]);
      sub_1D04(&qword_10398, &unk_9860);
      sub_94A0();
      sub_92F0();
      (*(v12 + 104))(v13, enum case for Objective.discoverability(_:), v14);
      sub_9220();
      (*(v12 + 8))(v13, v14);

      sub_3ABC(v20 + 2, v20 + 12);
      if (v20[15])
      {
        sub_3C2C(v20 + 12, v20 + 7);
        sub_1D04(&qword_10390, &qword_9858);
        sub_94A0();
        sub_3C68((v20 + 7), v4);
        sub_2164();
        v9 = v5;
        sub_3B8C(v20 + 7);
        sub_3B50(v20 + 2);

        v10 = v9;
        goto LABEL_17;
      }

      sub_3B50(v20 + 12);
      sub_3B50(v20 + 2);
    }

    else
    {
    }
  }

  sub_1D04(&qword_10390, &qword_9858);
  v8 = sub_94A0();

  v10 = v8;
LABEL_17:

  v6 = *(v20[27] + 8);

  return v6(v10);
}

uint64_t *sub_3A5C()
{
  if (qword_10270 != -1)
  {
    swift_once();
  }

  return &qword_10DB0;
}

void *sub_3ABC(void *a1, void *a2)
{
  if (a1[3])
  {
    v2 = a1[3];
    a2[3] = v2;
    a2[4] = a1[4];
    (**(v2 - 8))();
  }

  else
  {
    memcpy(a2, a1, 0x28uLL);
  }

  return a2;
}

void *sub_3B50(void *a1)
{
  if (a1[3])
  {
    sub_3B8C(a1);
  }

  return a1;
}

uint64_t sub_3B8C(void *a1)
{
  v2 = a1[3];
  if ((*(*(v2 - 8) + 80) & 0x20000) != 0)
  {
  }

  else
  {
    return (*(*(v2 - 8) + 8))(a1);
  }
}

uint64_t sub_3C68(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  *(a2 + 32) = *(a1 + 32);
  (**(v2 - 8))(a2);
  return a2;
}

uint64_t sub_3D74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_2884;

  return sub_32D4(a1, a2, a3);
}

uint64_t sub_3E3C()
{
  sub_1D04(&qword_103A0, qword_9870);
  sub_94A0();
  v4 = v0;
  *v0 = sub_9340("dalWhoIsSiri", 0xCuLL, 1);
  v4[1] = v1;
  v4[2] = sub_9340("suggestHelp", 0xBuLL, 1);
  v4[3] = v2;
  sub_2164();
  result = sub_92F0();
  qword_10DB0 = result;
  return result;
}

uint64_t sub_3F10()
{
  v1 = *sub_3A5C();

  return v1;
}

unint64_t sub_3F94()
{
  v2 = qword_10440;
  if (!qword_10440)
  {
    type metadata accessor for SocialHintsGenerator();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10440);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_402C()
{
  v2 = qword_10448;
  if (!qword_10448)
  {
    type metadata accessor for SocialHintsGenerator();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10448);
    return WitnessTable;
  }

  return v2;
}

void sub_40AC()
{
  sub_94A0();
  v17 = v0;
  *v0 = sub_9340("en-US", 5uLL, 1);
  v17[1] = v1;
  v17[2] = sub_9340("en-GB", 5uLL, 1);
  v17[3] = v2;
  v17[4] = sub_9340("en-IN", 5uLL, 1);
  v17[5] = v3;
  v17[6] = sub_9340("en-AU", 5uLL, 1);
  v17[7] = v4;
  v17[8] = sub_9340("en-CA", 5uLL, 1);
  v17[9] = v5;
  v17[10] = sub_9340("es-ES", 5uLL, 1);
  v17[11] = v6;
  v17[12] = sub_9340("es-MX", 5uLL, 1);
  v17[13] = v7;
  v17[14] = sub_9340("es-US", 5uLL, 1);
  v17[15] = v8;
  v17[16] = sub_9340("zh-CN", 5uLL, 1);
  v17[17] = v9;
  v17[18] = sub_9340("zh-HK", 5uLL, 1);
  v17[19] = v10;
  v17[20] = sub_9340("de-DE", 5uLL, 1);
  v17[21] = v11;
  v17[22] = sub_9340("fr-FR", 5uLL, 1);
  v17[23] = v12;
  v17[24] = sub_9340("ja-JP", 5uLL, 1);
  v17[25] = v13;
  sub_2164();
  v21 = v14;
  v18 = sub_1D04(&qword_10470, &qword_9980);
  v19 = sub_9090();
  v15 = sub_4D00();
  v16 = sub_441C(sub_43C0, 0, v18, v19, &type metadata for Never, v15, &protocol witness table for Never, v20);
  sub_4DFC(&v21);
  qword_10DB8 = v16;
}

uint64_t sub_441C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = a1;
  v35 = a2;
  v59 = a3;
  v49 = a4;
  v36 = a5;
  v58 = a6;
  v38 = a8;
  v39 = "Fatal error";
  v40 = "Range requires lowerBound <= upperBound";
  v41 = "Swift/Range.swift";
  v42 = "Index out of range";
  v43 = "invalid Collection: count differed in successive traversals";
  v44 = "Swift/ArrayShared.swift";
  v69[3] = a3;
  v69[2] = a4;
  v69[1] = a5;
  v45 = *(a5 - 8);
  v46 = a5 - 8;
  v47 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(a1);
  v48 = &v15 - v47;
  v50 = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = *(AssociatedTypeWitness - 8);
  v53 = AssociatedTypeWitness - 8;
  v54 = (*(v52 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = __chkstk_darwin(v50);
  v55 = &v15 - v54;
  v56 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v57 = &v15 - v56;
  v60 = swift_getAssociatedTypeWitness();
  v61 = *(v60 - 8);
  v62 = v60 - 8;
  v63 = (*(v61 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = __chkstk_darwin(v59);
  v64 = &v15 - v63;
  v65 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v66 = &v15 - v65;
  v67 = sub_93C0();
  if (!v67)
  {
    goto LABEL_24;
  }

  v69[0] = sub_9420();
  v33 = sub_9430();
  sub_9400(v67);
  result = sub_93B0();
  if (v67 < 0)
  {
    sub_9440();
    __break(1u);
LABEL_24:
    v17 = sub_9390();
    v18 = v37;
    return v17;
  }

  if (!v67)
  {
LABEL_19:
    v23 = v37;
LABEL_20:
    v19 = v23;
    sub_93D0();
    swift_getAssociatedConformanceWitness();
    v22 = sub_9320();
    v20 = *(v61 + 8);
    v21 = v61 + 8;
    v20(v64, v60);
    if ((v22 & 1) == 0)
    {
      sub_9450();
      __break(1u);
    }

    v20(v66, v60);
    v16 = v69[0];

    v17 = v16;
    v18 = v19;
    return v17;
  }

  v31 = 0;
  for (i = v37; ; i = v27)
  {
    v29 = i;
    v30 = v31;
    if (v31 < 0 || v30 >= v67)
    {
      goto LABEL_18;
    }

    if (v67 < 0)
    {
      sub_9440();
      __break(1u);
LABEL_18:
      sub_9450();
      __break(1u);
      goto LABEL_19;
    }

    v28 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    v26 = &v68;
    v25 = sub_93F0();
    (*(v52 + 16))(v55);
    v25();
    v14 = v29;
    v34(v55, v48);
    v27 = v14;
    if (v14)
    {
      (*(v52 + 8))(v55, AssociatedTypeWitness);
      (*(v61 + 8))(v66, v60);
      sub_8814(v69);
      (*(v45 + 32))(v38, v48, v36);
      return v24;
    }

    (*(v52 + 8))(v55, AssociatedTypeWitness);
    sub_9410();
    sub_93E0();
    if (v28 == v67)
    {
      v23 = v27;
      goto LABEL_20;
    }

    result = v27;
    v31 = v28;
  }

  __break(1u);
  return result;
}

unint64_t sub_4D00()
{
  v2 = qword_10478;
  if (!qword_10478)
  {
    sub_4D88(&qword_10470, &qword_9980);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10478);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_4D88(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  if (!*a1)
  {
    TypeByMangledNameInContextInMetadataState2 = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = TypeByMangledNameInContextInMetadataState2;
    return TypeByMangledNameInContextInMetadataState2;
  }

  return v5;
}

uint64_t *sub_4E28()
{
  if (qword_10278 != -1)
  {
    swift_once();
  }

  return &qword_10DB8;
}

uint64_t sub_4E88()
{
  v1 = *sub_4E28();

  return v1;
}

void sub_4EB8()
{
  sub_94A0();
  v30 = v0;
  *v0 = sub_9340("en-US", 5uLL, 1);
  v30[1] = v1;
  v30[2] = sub_9340("en-GB", 5uLL, 1);
  v30[3] = v2;
  v30[4] = sub_9340("en-IN", 5uLL, 1);
  v30[5] = v3;
  v30[6] = sub_9340("en-AU", 5uLL, 1);
  v30[7] = v4;
  v30[8] = sub_9340("en-CA", 5uLL, 1);
  v30[9] = v5;
  v30[10] = sub_9340("en-SG", 5uLL, 1);
  v30[11] = v6;
  v30[12] = sub_9340("en-IE", 5uLL, 1);
  v30[13] = v7;
  v30[14] = sub_9340("en-NZ", 5uLL, 1);
  v30[15] = v8;
  v30[16] = sub_9340("en-ZA", 5uLL, 1);
  v30[17] = v9;
  v30[18] = sub_9340("es-ES", 5uLL, 1);
  v30[19] = v10;
  v30[20] = sub_9340("es-MX", 5uLL, 1);
  v30[21] = v11;
  v30[22] = sub_9340("es-US", 5uLL, 1);
  v30[23] = v12;
  v30[24] = sub_9340("es-CL", 5uLL, 1);
  v30[25] = v13;
  v30[26] = sub_9340("de-DE", 5uLL, 1);
  v30[27] = v14;
  v30[28] = sub_9340("de-AT", 5uLL, 1);
  v30[29] = v15;
  v30[30] = sub_9340("de-CH", 5uLL, 1);
  v30[31] = v16;
  v30[32] = sub_9340("fr-FR", 5uLL, 1);
  v30[33] = v17;
  v30[34] = sub_9340("fr-CA", 5uLL, 1);
  v30[35] = v18;
  v30[36] = sub_9340("fr-BE", 5uLL, 1);
  v30[37] = v19;
  v30[38] = sub_9340("fr-CH", 5uLL, 1);
  v30[39] = v20;
  v30[40] = sub_9340("it-IT", 5uLL, 1);
  v30[41] = v21;
  v30[42] = sub_9340("it-CH", 5uLL, 1);
  v30[43] = v22;
  v30[44] = sub_9340("ja-JP", 5uLL, 1);
  v30[45] = v23;
  v30[46] = sub_9340("ko-KR", 5uLL, 1);
  v30[47] = v24;
  v30[48] = sub_9340("pt-BR", 5uLL, 1);
  v30[49] = v25;
  v30[50] = sub_9340("zh-CN", 5uLL, 1);
  v30[51] = v26;
  sub_2164();
  v34 = v27;
  v31 = sub_1D04(&qword_10470, &qword_9980);
  v32 = sub_9090();
  v28 = sub_4D00();
  v29 = sub_441C(sub_43C0, 0, v31, v32, &type metadata for Never, v28, &protocol witness table for Never, v33);
  sub_4DFC(&v34);
  qword_10DC0 = v29;
}

uint64_t *sub_53D4()
{
  if (qword_10280 != -1)
  {
    swift_once();
  }

  return &qword_10DC0;
}

uint64_t sub_5434()
{
  v1 = *sub_53D4();

  return v1;
}

uint64_t sub_5464()
{
  result = sub_9340("/System/Library/Assistant/FlowDelegatePlugins/SocialConversationFlowDelegatePlugin.bundle/Templates/", 0x64uLL, 1);
  qword_10DC8 = result;
  qword_10DD0 = v1;
  return result;
}

uint64_t *sub_54A8()
{
  if (qword_10288 != -1)
  {
    swift_once();
  }

  return &qword_10DC8;
}

uint64_t sub_5508()
{
  v1 = *sub_54A8();

  return v1;
}

uint64_t sub_5544(uint64_t a1, uint64_t a2)
{
  v3[25] = v2;
  v3[24] = a2;
  v3[23] = a1;
  v3[19] = v3;
  v3[17] = 0;
  v3[18] = 0;
  v3[20] = 0;
  v3[21] = 0;
  v3[17] = a1;
  v3[18] = a2;
  v3[20] = v2;
  return _swift_task_switch(sub_55A8, 0);
}

uint64_t sub_55A8()
{
  v4 = v0[23];
  v0[19] = v0;
  v3 = *sub_8A48();

  v0[5] = sub_9110();
  v0[6] = sub_5AA8();
  v7 = v0 + 2;
  v0[2] = v3;
  v6 = (v4 + *v4);
  v1 = swift_task_alloc();
  *(v5 + 208) = v1;
  *v1 = *(v5 + 152);
  v1[1] = sub_56EC;

  return v6(v7);
}

uint64_t sub_56EC(uint64_t a1)
{
  v4 = *v1;
  v3 = (*v1 + 16);
  *(v4 + 152) = *v1;
  *(v4 + 216) = a1;

  sub_3B8C(v3);

  return _swift_task_switch(sub_581C, 0);
}

uint64_t sub_581C()
{
  v10 = v0[27];
  v11 = v0[25];
  v0[19] = v0;
  v0[21] = v10;
  sub_5B28();
  v0[22] = v1;

  v12 = swift_task_alloc();
  *(v12 + 16) = v10;
  *(v12 + 24) = v11;
  sub_1D04(&qword_10488, &qword_9990);
  sub_5C88();
  sub_9350();

  sub_4DFC(v9 + 22);
  v6 = type metadata accessor for SocialHintsGenerator();
  v7 = sub_3D38();
  v9[10] = v6;
  v9[11] = sub_5D10();
  v9[7] = v7;
  sub_9230();
  sub_3B8C(v9 + 7);

  sub_9250();
  sub_1D04(&qword_104A0, &unk_9998);
  sub_94A0();
  sub_3C68((v9 + 12), v2);
  sub_2164();
  v8 = v3;
  sub_3B8C(v9 + 12);

  v4 = *(v9[19] + 8);

  return v4(v8);
}

unint64_t sub_5AA8()
{
  v2 = qword_10480;
  if (!qword_10480)
  {
    sub_9110();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10480);
    return WitnessTable;
  }

  return v2;
}

void sub_5B28()
{
  sub_94A0();
  *v0 = 0;
  v0[1] = 1;
  v0[2] = 2;
  v0[3] = 3;
  v0[4] = 4;
  sub_2164();
}

uint64_t sub_5B90(char *a1)
{
  v2 = *a1;
  sub_5D90(*a1);
  sub_5ED4(v2);
  sub_9240();
}

unint64_t sub_5C88()
{
  v2 = qword_10490;
  if (!qword_10490)
  {
    sub_4D88(&qword_10488, &qword_9990);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10490);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_5D10()
{
  v2 = qword_10498;
  if (!qword_10498)
  {
    type metadata accessor for SocialHintsGenerator();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10498);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_5D90(char a1)
{
  switch(a1)
  {
    case 0:
      return sub_9340("flipACoin", 9uLL, 1);
    case 1:
      return sub_9340("readMeAPoem", 0xBuLL, 1);
    case 2:
      return sub_9340("tellMeAJoke", 0xBuLL, 1);
    case 3:
      return sub_9340("tellMeAStory", 0xCuLL, 1);
  }

  return sub_9340("whatAreYouDoingToday", 0x14uLL, 1);
}

uint64_t sub_5ED4(char a1)
{
  v7 = a1;
  v6[0] = sub_9490();
  v6[1] = v1;
  v8._countAndFlagsBits = sub_9340("SocialSuggestions#", 0x12uLL, 1);
  sub_9480(v8);

  v5[0] = sub_5D90(a1);
  v5[1] = v2;
  sub_9470();
  sub_329C(v5);
  v9._countAndFlagsBits = sub_9340("", 0, 1);
  sub_9480(v9);

  sub_329C(v6);
  return sub_9330();
}

uint64_t sub_5FF4(void *a1, unsigned int a2)
{
  v118 = a1;
  v173 = a2;
  v238 = 0;
  v237 = 0;
  v157 = 0;
  v113 = sub_9190();
  v114 = *(v113 - 8);
  v115 = v113 - 8;
  v116 = (*(v114 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v117 = (&v34 - v116);
  v156 = sub_90F0();
  v153 = *(v156 - 8);
  v154 = v156 - 8;
  v119 = (*(v153 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v118);
  v155 = (&v34 - v119);
  v238 = v2;
  v237 = v3;
  v172 = v233;
  sub_8620(v2, v233);
  v121 = v234;
  v120 = v235;
  v122 = v236;
  sub_1D70(v172, v234);
  v4 = sub_54A8();
  v123 = *v4;
  v124 = v4[1];

  v171 = v229;
  v230 = v121;
  v231 = v120;
  v232 = v122;
  sub_8694(v229);
  sub_91B0();

  v126 = v230;
  v125 = v231;
  v127 = v232;
  sub_1D70(v171, v230);
  v128 = sub_6F9C(v173);
  v170 = v225;
  v226 = v126;
  v227 = v125;
  v228 = v127;
  sub_8694(v225);
  sub_91E0();

  v138 = v226;
  v137 = v227;
  v139 = v228;
  sub_1D70(v170, v226);
  v136 = sub_9100();
  v135 = sub_94A0();
  v132 = v5;
  v129 = *(v136 - 8);
  v130 = v136 - 8;
  v134 = *(v129 + 104);
  v133 = v129 + 104;
  v134();
  v131 = *(v129 + 72);
  (v134)(v132 + v131, enum case for DeviceType.iPad(_:), v136);
  (v134)(v132 + 2 * v131, enum case for DeviceType.mac(_:), v136);
  sub_2164();
  v140 = v6;
  v169 = v221;
  v222 = v138;
  v223 = v137;
  v224 = v139;
  sub_8694(v221);
  sub_91D0();

  v142 = v222;
  v141 = v223;
  v143 = v224;
  sub_1D70(v169, v222);
  v144 = sub_705C(v173);
  v168 = v217;
  v218 = v142;
  v219 = v141;
  v220 = v143;
  sub_8694(v217);
  sub_9200();

  v146 = v218;
  v145 = v219;
  v147 = v220;
  sub_1D70(v168, v218);
  v148 = sub_5D90(v173);
  v149 = v7;
  v167 = v213;
  v214 = v146;
  v215 = v145;
  v216 = v147;
  sub_8694(v213);
  sub_91F0();

  v151 = v214;
  v150 = v215;
  v152 = v216;
  sub_1D70(v167, v214);
  v8 = sub_5D90(v173);
  v9 = v153;
  v10 = v8;
  v11 = v155;
  *v155 = v10;
  v11[1] = v12;
  (*(v9 + 104))();
  v166 = v209;
  v210 = v151;
  v211 = v150;
  v212 = v152;
  sub_8694(v209);
  sub_91A0();
  (*(v153 + 8))(v155, v156);
  v162 = v210;
  v160 = v211;
  v163 = v212;
  v158 = sub_1D70(v166, v210);
  v159 = type metadata accessor for SocialSuggestionsAssetProvider();
  v161 = sub_3D38();
  v164 = v207;
  v207[3] = v159;
  v207[4] = sub_8714();
  v207[0] = v161;
  v165 = v208;
  v208[3] = v162;
  v208[4] = v160;
  v208[5] = v163;
  sub_8694(v208);
  sub_91C0();
  sub_3B8C(v164);
  sub_3B8C(v165);
  sub_3B8C(v166);
  sub_3B8C(v167);
  sub_3B8C(v168);
  sub_3B8C(v169);
  sub_3B8C(v170);
  sub_3B8C(v171);
  sub_3B8C(v172);
  v175 = &v206;
  v206 = v173;
  v174 = &v205;
  v205 = 0;
  v176 = sub_79E4();
  if (sub_94B0())
  {
    v112 = 1;
  }

  else
  {
    v204 = v173;
    v203 = 2;
    v112 = sub_94B0();
  }

  if (v112)
  {
    v73 = v188;
    sub_8620(v118, v188);
    v69 = v189;
    v70 = v190;
    v68 = v191;
    sub_1D70(v73, v189);
    v63 = 0;
    v90 = sub_92B0();
    v94 = 1;
    v60 = sub_94A0();
    v61 = v13;
    v62 = *sub_7330();

    *v61 = v62;
    sub_2164();
    v71 = v14;
    v100 = sub_9140();
    v77 = 3;
    v67 = sub_94A0();
    v66 = v15;
    v78 = &enum case for DeliveryVehicle.assistantSuggestions(_:);
    v64 = *(v100 - 8);
    v65 = v100 - 8;
    v98 = *(v64 + 104);
    v97 = v64 + 104;
    v98();
    v93 = *(v64 + 72);
    v92 = &enum case for DeliveryVehicle.siriHelp(_:);
    (v98)(v66 + v94 * v93, enum case for DeliveryVehicle.siriHelp(_:), v100);
    v91 = 2;
    v96 = &enum case for DeliveryVehicle.siriAutoComplete(_:);
    (v98)(v66 + 2 * v93, enum case for DeliveryVehicle.siriAutoComplete(_:), v100);
    sub_2164();
    v16 = v114;
    *v117 = v17;
    v101 = &enum case for SignalContextProperties.deliveryVehicle(_:);
    v103 = *(v16 + 104);
    v102 = v16 + 104;
    v103();
    v72 = v187;
    v187[3] = v69;
    v187[4] = v70;
    v187[5] = v68;
    sub_8694(v187);
    sub_90E0();
    v108 = *(v114 + 8);
    v107 = v114 + 8;
    v108(v117, v113);

    sub_3B8C(v72);
    sub_3B8C(v73);
    v86 = v183;
    sub_8620(v118, v183);
    v82 = v184;
    v83 = v185;
    v81 = v186;
    sub_1D70(v86, v184);
    v74 = sub_94A0();
    v75 = v18;
    v76 = *sub_7390();

    *v75 = v76;
    sub_2164();
    v84 = v19;
    v80 = sub_94A0();
    v79 = v20;
    v98();
    (v98)(v79 + v94 * v93, *v92, v100);
    (v98)(v79 + v91 * v93, *v96, v100);
    sub_2164();
    v21 = v103;
    *v117 = v22;
    v21();
    v85 = v182;
    v182[3] = v82;
    v182[4] = v83;
    v182[5] = v81;
    sub_8694(v182);
    sub_90E0();
    v108(v117, v113);

    sub_3B8C(v85);
    sub_3B8C(v86);
    v111 = v178;
    sub_8620(v118, v178);
    v105 = v179;
    v106 = v180;
    v104 = v181;
    sub_1D70(v111, v179);
    v87 = sub_94A0();
    v88 = v23;
    v89 = *sub_73F0();

    *v88 = v89;
    sub_2164();
    v109 = v24;
    v99 = sub_94A0();
    v95 = v25;
    v98();
    (v98)(v95 + v94 * v93, *v96, v100);
    sub_2164();
    v26 = v103;
    *v117 = v27;
    v26();
    v110 = v177;
    v177[3] = v105;
    v177[4] = v106;
    v177[5] = v104;
    sub_8694(v177);
    sub_90E0();
    v108(v117, v113);

    sub_3B8C(v110);
    result = sub_3B8C(v111);
  }

  else
  {
    v59 = v199;
    sub_8620(v118, v199);
    v55 = v200;
    v56 = v201;
    v54 = v202;
    sub_1D70(v59, v200);
    v53 = sub_92B0();
    v50 = sub_94A0();
    v51 = v29;
    v48 = *sub_7330();

    *v51 = v48;
    v49 = *sub_7390();

    v51[1] = v49;
    v52 = *sub_73F0();

    v51[2] = v52;
    sub_2164();
    v57 = v30;
    v31 = sub_705C(v173);
    v32 = v114;
    *v117 = v31;
    (*(v32 + 104))();
    v58 = v198;
    v198[3] = v55;
    v198[4] = v56;
    v198[5] = v54;
    sub_8694(v198);
    sub_90E0();
    (*(v114 + 8))(v117, v113);

    sub_3B8C(v58);
    result = sub_3B8C(v59);
  }

  if (v173 == 3)
  {
    v47 = v194;
    sub_8620(v118, v194);
    v40 = v195;
    v39 = v196;
    v41 = v197;
    v38 = sub_1D70(v47, v195);
    v37 = 1;
    v42 = sub_9340("timeOfDay", 9uLL, 1);
    v45 = v33;
    v36 = 0;
    v34 = type metadata accessor for TimeOfDayResolver();
    v35 = sub_26DC();
    v44 = v192;
    v192[3] = v34;
    v192[4] = sub_8794();
    v192[0] = v35;
    sub_9170();
    sub_9340("typeOfTimeOfDay", 0xFuLL, v37 & 1);
    v43 = sub_9160();
    v46 = v193;
    v193[3] = v40;
    v193[4] = v39;
    v193[5] = v41;
    sub_8694(v193);
    sub_9210();

    sub_3B50(v44);

    sub_3B8C(v46);
    return sub_3B8C(v47);
  }

  return result;
}

uint64_t sub_6F9C(char a1)
{
  if (!a1 || a1 == 1 || a1 == 2 || a1 == 3)
  {
    v3 = *sub_53D4();

    return v3;
  }

  else
  {
    v2 = *sub_4E28();

    return v2;
  }
}

uint64_t sub_705C(char a1)
{
  switch(a1)
  {
    case 0:
      goto LABEL_6;
    case 1:
LABEL_7:
      v12 = sub_9140();
      sub_94A0();
      v10 = v3;
      v9 = *(v12 - 8);
      v11 = *(v9 + 104);
      v11();
      (v11)(v10 + *(v9 + 72), enum case for DeliveryVehicle.siriAutoComplete(_:), v12);
      sub_2164();
      return v4;
    case 2:
LABEL_6:
      v17 = sub_9140();
      sub_94A0();
      v15 = v1;
      v13 = *(v17 - 8);
      v16 = *(v13 + 104);
      v16();
      v14 = *(v13 + 72);
      (v16)(v15 + v14, enum case for DeliveryVehicle.siriAutoComplete(_:), v17);
      (v16)(v15 + 2 * v14, enum case for DeliveryVehicle.assistantSuggestions(_:), v17);
      sub_2164();
      return v2;
    case 3:
      goto LABEL_7;
  }

  v8 = sub_9140();
  sub_94A0();
  (*(*(v8 - 8) + 104))(v5, enum case for DeliveryVehicle.siriHelp(_:));
  sub_2164();
  return v6;
}

uint64_t *sub_7330()
{
  if (qword_10298 != -1)
  {
    swift_once();
  }

  return &qword_10458;
}

uint64_t *sub_7390()
{
  if (qword_102A0 != -1)
  {
    swift_once();
  }

  return &qword_10460;
}

uint64_t *sub_73F0()
{
  if (qword_10290 != -1)
  {
    swift_once();
  }

  return &qword_10450;
}

uint64_t sub_746C(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_2884;

  return sub_5544(a1, a2);
}

uint64_t sub_7528(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v6._object = a2;
  sub_94A0();
  *v2 = "flipACoin";
  *(v2 + 8) = 9;
  *(v2 + 16) = 2;
  *(v2 + 24) = "readMeAPoem";
  *(v2 + 32) = 11;
  *(v2 + 40) = 2;
  *(v2 + 48) = "tellMeAJoke";
  *(v2 + 56) = 11;
  *(v2 + 64) = 2;
  *(v2 + 72) = "tellMeAStory";
  *(v2 + 80) = 12;
  *(v2 + 88) = 2;
  *(v2 + 96) = "whatAreYouDoingToday";
  *(v2 + 104) = 20;
  *(v2 + 112) = 2;
  sub_2164();
  v7 = sub_9460(v8, v6);

  switch(v7)
  {
    case 0:
      v5 = 0;
LABEL_12:

      return v5;
    case 1:
      v5 = 1;
      goto LABEL_12;
    case 2:
      v5 = 2;
      goto LABEL_12;
    case 3:
      v5 = 3;
      goto LABEL_12;
    case 4:
      v5 = 4;
      goto LABEL_12;
  }

  return 5;
}

uint64_t sub_7780@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_7528(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_77B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_5D90(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_78E8()
{
  sub_92B0();
  result = sub_92A0();
  qword_10450 = result;
  return result;
}

uint64_t sub_791C()
{
  v1 = *sub_73F0();

  return v1;
}

uint64_t sub_794C()
{
  sub_92B0();
  result = sub_9280();
  qword_10458 = result;
  return result;
}

uint64_t sub_7980()
{
  v1 = *sub_7330();

  return v1;
}

uint64_t sub_79B0()
{
  sub_92B0();
  result = sub_9290();
  qword_10460 = result;
  return result;
}

unint64_t sub_79E4()
{
  v2 = qword_104A8;
  if (!qword_104A8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_104A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_7A60()
{
  v1 = *sub_7390();

  return v1;
}

uint64_t sub_7A90()
{
  sub_1D04(&qword_104B0, &qword_99A8);
  sub_94A0();
  v32 = v0;
  *v0 = 0;
  sub_92B0();
  sub_94A0();
  v14 = v1;
  v12 = *sub_73F0();

  *v14 = v12;
  v13 = *sub_7330();

  v14[1] = v13;
  v15 = *sub_7390();

  v14[2] = v15;
  sub_2164();
  *(v32 + 1) = v2;
  v32[16] = 1;
  sub_94A0();
  v18 = v3;
  v16 = *sub_73F0();

  *v18 = v16;
  v17 = *sub_7330();

  v18[1] = v17;
  v19 = *sub_7390();

  v18[2] = v19;
  sub_2164();
  *(v32 + 3) = v4;
  v32[32] = 2;
  sub_94A0();
  v22 = v5;
  v20 = *sub_73F0();

  *v22 = v20;
  v21 = *sub_7330();

  v22[1] = v21;
  v23 = *sub_7390();

  v22[2] = v23;
  sub_2164();
  *(v32 + 5) = v6;
  v32[48] = 3;
  sub_94A0();
  v26 = v7;
  v24 = *sub_73F0();

  *v26 = v24;
  v25 = *sub_7330();

  v26[1] = v25;
  v27 = *sub_7390();

  v26[2] = v27;
  sub_2164();
  *(v32 + 7) = v8;
  v32[64] = 4;
  sub_94A0();
  v30 = v9;
  v28 = *sub_73F0();

  *v30 = v28;
  v29 = *sub_7330();

  v30[1] = v29;
  v31 = *sub_7390();

  v30[2] = v31;
  sub_2164();
  *(v32 + 9) = v10;
  sub_2164();
  sub_1D04(&qword_104B8, &qword_99B0);
  sub_7DEC();
  result = sub_92F0();
  qword_10468 = result;
  return result;
}

unint64_t sub_7DEC()
{
  v2 = qword_104C0;
  if (!qword_104C0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_104C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_7E68()
{
  if (qword_102A8 != -1)
  {
    swift_once();
  }

  return &qword_10468;
}

uint64_t sub_7EC8()
{
  v1 = *sub_7E68();

  return v1;
}

uint64_t sub_7EF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a3;
  v13 = a1;
  v12[1] = a2;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v14 = (*(*(sub_1D04(&qword_104C8, qword_99B8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v13);
  v25 = v12 - v14;
  v15 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v4);
  v24 = (v12 - v15);
  v28 = v6;
  v27 = v7;
  v26 = v3;
  v19 = 1;
  v8 = sub_9340("com.apple.siri", 0xEuLL, 1);
  v9 = v24;
  *v24 = v8;
  v9[1] = v10;
  v16 = enum case for Image.appIcon(_:);
  v20 = sub_9260();
  v17 = *(v20 - 8);
  v18 = v20 - 8;
  (*(v17 + 104))(v24, v16);
  v22 = *(v17 + 56);
  v21 = v17 + 56;
  v22(v24, 0, v19, v20);
  v22(v25, v19, v19, v20);
  return sub_9270();
}

uint64_t sub_811C(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFB)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 4) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 251;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 5;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_8284(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFB)
  {
    v5 = ((a3 + 4) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFB)
  {
    v4 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

unint64_t sub_84F8()
{
  v2 = qword_10600;
  if (!qword_10600)
  {
    sub_4D88(&qword_10488, &qword_9990);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10600);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_8598()
{
  v2 = qword_10608;
  if (!qword_10608)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10608);
    return WitnessTable;
  }

  return v2;
}

void *sub_8620(void *a1, void *a2)
{
  v2 = a1[3];
  a2[3] = v2;
  v3 = a1[5];
  a2[4] = a1[4];
  a2[5] = v3;
  (**(v2 - 8))(a2);
  return a2;
}

uint64_t *sub_8694(uint64_t *result)
{
  v3 = result;
  if ((*(*(result[3] - 8) + 80) & 0x20000) != 0)
  {
    v1 = swift_allocBox();
    result = v2;
    *v3 = v1;
  }

  return result;
}

unint64_t sub_8714()
{
  v2 = qword_10610;
  if (!qword_10610)
  {
    type metadata accessor for SocialSuggestionsAssetProvider();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10610);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_8794()
{
  v2 = qword_10618;
  if (!qword_10618)
  {
    type metadata accessor for TimeOfDayResolver();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_10618);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_8840(uint64_t a1)
{
  v15 = 0;
  v16 = 0;
  v14[6] = a1;
  v13[0] = sub_9340("socialConversationDialogID", 0x1AuLL, 1);
  v13[1] = v1;
  sub_1D04(&qword_10620, &qword_9C20);
  sub_9300();
  sub_329C(v13);
  if (v14[3])
  {
    if (swift_dynamicCast())
    {
      v7 = v11;
      v8 = v12;
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }

    v9 = v7;
    v10 = v8;
  }

  else
  {
    sub_3B50(v14);
    v9 = 0;
    v10 = 0;
  }

  if (v10)
  {

    v5 = sub_8ADC(v9, v10);
    v4 = v2;

    v15 = v5;
    v16 = v4;

    sub_329C(&v15);
    return v5;
  }

  else
  {

    return 0;
  }
}

uint64_t *sub_8A48()
{
  if (qword_102B0 != -1)
  {
    swift_once();
  }

  return &qword_10DD8;
}

uint64_t sub_8ADC(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v6 = 0;

  v5 = a1;
  v6 = a2;

  sub_329C(&v5);
  return a1;
}

uint64_t sub_8B60(uint64_t a1, uint64_t a2)
{
  v4[0] = 0;
  v4[1] = a1;
  v4[2] = a2;
  sub_1D04(&qword_10620, &qword_9C20);
  v4[0] = sub_92E0();
  sub_9340("socialConversationDialogID", 0x1AuLL, 1);

  sub_1D04(&qword_10628, &qword_9C28);
  sub_9310();
  v3 = v4[0];

  sub_4DFC(v4);
  return v3;
}

uint64_t sub_8C98()
{
  sub_9110();
  sub_9340("SocialConversation", 0x12uLL, 1);
  result = sub_9120();
  qword_10DD8 = result;
  return result;
}

uint64_t sub_8CE8()
{
  v1 = *sub_8A48();

  return v1;
}

__n128 sub_8D18(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_8D24(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 16))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*(a1 + 8) < 0x100000000uLL)
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_8E68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}