unint64_t sub_10001EAB4(unint64_t result)
{
  if (result >= 8)
  {
    return 8;
  }

  return result;
}

uint64_t sub_10001EAC4(unint64_t a1)
{
  if (a1 >= 7)
  {
    return 6;
  }

  else
  {
    return (0x5040302010006uLL >> (8 * a1));
  }
}

unint64_t sub_10001EAEC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10041E3F8;
  v6._object = a2;
  v4 = sub_1002D8E30(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10001EB38(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10041E488;
  v6._object = a2;
  v4 = sub_1002D8E30(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10001EB84(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10041E530;
  v6._object = a2;
  v4 = sub_1002D8E30(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10001EBD0(char a1)
{
  if (a1)
  {
    MADisplayFilterPrefSetCategoryEnabled();
    v2 = qword_1002DFB10[a1 - 1];
  }

  else
  {
    MADisplayFilterPrefSetCategoryEnabled();
    v2 = 0;
  }

  return _MADisplayFilterPrefSetType(1, v2);
}

unint64_t sub_10001EC3C(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

uint64_t sub_10001EC4C(uint64_t a1, uint64_t a2)
{
  if (sub_1002D8D10() == a1 && v4 == a2)
  {

LABEL_8:

    return 1;
  }

  v6 = sub_1002D8E40();

  if (v6)
  {
    goto LABEL_8;
  }

  if (sub_1002D8D10() == a1 && v8 == a2)
  {

LABEL_16:

    return 2;
  }

  v10 = sub_1002D8E40();

  if (v10)
  {
    goto LABEL_16;
  }

  if (sub_1002D8D10() == a1 && v11 == a2)
  {

    return 3;
  }

  else
  {
    v13 = sub_1002D8E40();

    if (v13)
    {
      return 3;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10001EDB8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_10001EDF0(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_10001F098(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 7368532;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 1952867660;
    }

    else
    {
      v4 = 0x7468676952;
    }

    if (v3 == 2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6D6F74746F42;
    }

    else
    {
      v4 = 7368532;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0xE400000000000000;
  v8 = 1952867660;
  if (a2 != 2)
  {
    v8 = 0x7468676952;
    v7 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 0x6D6F74746F42;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1002D8E40();
  }

  return v11 & 1;
}

uint64_t sub_10001F1B4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0xEC00000073726F6CLL;
  v5 = 0x73756A6441657548;
  v6 = 0xE900000000000074;
  if (a1 != 4)
  {
    v5 = 0x746867694C776F4CLL;
    v6 = 0xE800000000000000;
  }

  if (a1 == 3)
  {
    v5 = 0x6F43747265766E49;
  }

  else
  {
    v4 = v6;
  }

  v7 = 0x646E416B63616C42;
  v8 = 0xED00006574696857;
  if (a1 != 1)
  {
    v7 = 0xD000000000000015;
    v8 = 0x8000000100354300;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v7 = 1701736270;
  }

  if (a1 <= 2u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v11 = 0xEC00000073726F6CLL;
      if (v9 != 0x6F43747265766E49)
      {
        goto LABEL_35;
      }
    }

    else if (a2 == 4)
    {
      v11 = 0xE900000000000074;
      if (v9 != 0x73756A6441657548)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v11 = 0xE800000000000000;
      if (v9 != 0x746867694C776F4CLL)
      {
LABEL_35:
        v12 = sub_1002D8E40();
        goto LABEL_36;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v11 = 0xED00006574696857;
      if (v9 != 0x646E416B63616C42)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v11 = 0x8000000100354300;
      if (v9 != 0xD000000000000015)
      {
        goto LABEL_35;
      }
    }
  }

  else
  {
    v11 = 0xE400000000000000;
    if (v9 != 1701736270)
    {
      goto LABEL_35;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_35;
  }

  v12 = 1;
LABEL_36:

  return v12 & 1;
}

Swift::Int sub_10001F3C0(uint64_t a1, unsigned __int8 a2)
{
  sub_1002D8E50();
  sub_1002D8D40();

  return sub_1002D8E70();
}

uint64_t sub_10001F4EC()
{
  result = sub_1002D8BA0();
  qword_10051A060 = result;
  return result;
}

uint64_t sub_10001F528@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v1 = sub_1002D8910();
  v36 = *(v1 - 8);
  v37 = v1;
  __chkstk_darwin(v1);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000321C(&qword_10043D218, &qword_1002E09C0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - v6;
  v33 = sub_10000321C(&qword_10043D220, &qword_1002E09C8);
  v28 = *(v33 - 8);
  __chkstk_darwin(v33);
  v9 = &v27 - v8;
  v35 = sub_10000321C(&qword_10043D228, &qword_1002E09D0);
  v32 = *(v35 - 8);
  __chkstk_darwin(v35);
  v30 = &v27 - v10;
  v34 = sub_10000321C(&qword_10043D230, &qword_1002E09D8);
  v31 = *(v34 - 8);
  __chkstk_darwin(v34);
  v29 = &v27 - v11;
  v39 = 0;
  v40 = 0xE000000000000000;
  sub_1002D8E00(33);

  v39 = 0xD000000000000018;
  v40 = 0x8000000100355CF0;
  v13 = qword_10043CC20;
  v12 = off_10043CC28;

  v41._countAndFlagsBits = v13;
  v41._object = v12;
  sub_1002D8D50(v41);

  v42._countAndFlagsBits = 0x6E6F747475622ELL;
  v42._object = 0xE700000000000000;
  sub_1002D8D50(v42);
  sub_10000321C(&qword_10043D238, &unk_1002E09E0);
  sub_10002B6E4(&qword_10043D240, &qword_10043D238, &unk_1002E09E0, &protocol conformance descriptor for ControlWidgetButton<A, B, C>);
  sub_1002D8CA0();
  v14 = sub_10002B6E4(&qword_10043D248, &qword_10043D218, &qword_1002E09C0, &protocol conformance descriptor for StaticControlConfiguration<A>);
  sub_1002D8B20();
  (*(v5 + 8))(v7, v4);
  if (qword_100438F08 != -1)
  {
    swift_once();
  }

  sub_1002D88F0();
  v39 = v4;
  v40 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v16 = v30;
  v17 = v33;
  sub_1002D8B00();
  v18 = v37;
  v19 = *(v36 + 8);
  v19(v3, v37);
  (*(v28 + 8))(v9, v17);
  v39 = 0x207472617453;
  v40 = 0xE600000000000000;
  v20 = qword_10051A050;
  v21 = *algn_10051A058;

  v43._countAndFlagsBits = v20;
  v43._object = v21;
  sub_1002D8D50(v43);

  sub_1002D88F0();
  v39 = v17;
  v40 = OpaqueTypeConformance2;
  v22 = swift_getOpaqueTypeConformance2();
  v23 = v29;
  v24 = v35;
  sub_1002D8AF0();
  v19(v3, v18);
  (*(v32 + 8))(v16, v24);
  v39 = v24;
  v40 = v22;
  swift_getOpaqueTypeConformance2();
  v25 = v34;
  sub_1002D8B10();
  return (*(v31 + 8))(v23, v25);
}

uint64_t sub_10001FB2C@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v1 = sub_1002D8910();
  v36 = *(v1 - 8);
  v37 = v1;
  __chkstk_darwin(v1);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000321C(&qword_10043D268, &qword_1002E09F0);
  v28 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v27 - v5;
  v32 = sub_10000321C(&qword_10043D270, &qword_1002E09F8);
  v29 = *(v32 - 8);
  __chkstk_darwin(v32);
  v8 = &v27 - v7;
  v35 = sub_10000321C(&qword_10043D278, &qword_1002E0A00);
  v31 = *(v35 - 8);
  __chkstk_darwin(v35);
  v10 = &v27 - v9;
  v11 = sub_10000321C(&qword_10043D280, &qword_1002E0A08);
  v33 = *(v11 - 8);
  v34 = v11;
  __chkstk_darwin(v11);
  v30 = &v27 - v12;
  v39 = 0;
  v40 = 0xE000000000000000;
  sub_1002D8E00(33);

  v39 = 0xD000000000000018;
  v40 = 0x8000000100355CF0;
  v14 = qword_10043CC40;
  v13 = off_10043CC48;

  v41._countAndFlagsBits = v14;
  v41._object = v13;
  sub_1002D8D50(v41);

  v42._countAndFlagsBits = 0x6E6F747475622ELL;
  v42._object = 0xE700000000000000;
  sub_1002D8D50(v42);
  sub_10000321C(&qword_10043D288, &qword_1002E0A10);
  sub_10002B6E4(&qword_10043D290, &qword_10043D288, &qword_1002E0A10, &protocol conformance descriptor for ControlWidgetButton<A, B, C>);
  sub_1002D8CA0();
  if (qword_100438F40 != -1)
  {
    swift_once();
  }

  v15 = sub_10002B6E4(&qword_10043D298, &qword_10043D268, &qword_1002E09F0, &protocol conformance descriptor for StaticControlConfiguration<A>);
  sub_1002D8B20();
  (*(v28 + 8))(v6, v4);
  if (qword_100438F28 != -1)
  {
    swift_once();
  }

  sub_1002D88F0();
  v39 = v4;
  v40 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v17 = v32;
  sub_1002D8B00();
  v18 = v37;
  v19 = *(v36 + 8);
  v19(v3, v37);
  (*(v29 + 8))(v8, v17);
  v39 = 0x207472617453;
  v40 = 0xE600000000000000;
  v20 = qword_10051A080;
  v21 = *algn_10051A088;

  v43._countAndFlagsBits = v20;
  v43._object = v21;
  sub_1002D8D50(v43);

  sub_1002D88F0();
  v39 = v17;
  v40 = OpaqueTypeConformance2;
  v22 = swift_getOpaqueTypeConformance2();
  v23 = v30;
  v24 = v35;
  sub_1002D8AF0();
  v19(v3, v18);
  (*(v31 + 8))(v10, v24);
  v39 = v24;
  v40 = v22;
  swift_getOpaqueTypeConformance2();
  v25 = v34;
  sub_1002D8B10();
  return (*(v33 + 8))(v23, v25);
}

uint64_t sub_100020160@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v1 = sub_1002D8910();
  v36 = *(v1 - 8);
  v37 = v1;
  __chkstk_darwin(v1);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000321C(&qword_10043D2A0, &qword_1002E0A18);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - v6;
  v33 = sub_10000321C(&qword_10043D2A8, &qword_1002E0A20);
  v28 = *(v33 - 8);
  __chkstk_darwin(v33);
  v9 = &v27 - v8;
  v35 = sub_10000321C(&qword_10043D2B0, &qword_1002E0A28);
  v32 = *(v35 - 8);
  __chkstk_darwin(v35);
  v30 = &v27 - v10;
  v34 = sub_10000321C(&qword_10043D2B8, &qword_1002E0A30);
  v31 = *(v34 - 8);
  __chkstk_darwin(v34);
  v29 = &v27 - v11;
  v39 = 0;
  v40 = 0xE000000000000000;
  sub_1002D8E00(33);

  v39 = 0xD000000000000018;
  v40 = 0x8000000100355CF0;
  v13 = qword_10043CC60;
  v12 = off_10043CC68;

  v41._countAndFlagsBits = v13;
  v41._object = v12;
  sub_1002D8D50(v41);

  v42._countAndFlagsBits = 0x6E6F747475622ELL;
  v42._object = 0xE700000000000000;
  sub_1002D8D50(v42);
  sub_10000321C(&qword_10043D2C0, &qword_1002E0A38);
  sub_10002B6E4(&qword_10043D2C8, &qword_10043D2C0, &qword_1002E0A38, &protocol conformance descriptor for ControlWidgetButton<A, B, C>);
  sub_1002D8CA0();
  v14 = sub_10002B6E4(&qword_10043D2D0, &qword_10043D2A0, &qword_1002E0A18, &protocol conformance descriptor for StaticControlConfiguration<A>);
  sub_1002D8B20();
  (*(v5 + 8))(v7, v4);
  if (qword_100438F50 != -1)
  {
    swift_once();
  }

  sub_1002D88F0();
  v39 = v4;
  v40 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v16 = v30;
  v17 = v33;
  sub_1002D8B00();
  v18 = v37;
  v19 = *(v36 + 8);
  v19(v3, v37);
  (*(v28 + 8))(v9, v17);
  v39 = 0x207472617453;
  v40 = 0xE600000000000000;
  v20 = qword_10051A0B8;
  v21 = qword_10051A0C0;

  v43._countAndFlagsBits = v20;
  v43._object = v21;
  sub_1002D8D50(v43);

  sub_1002D88F0();
  v39 = v17;
  v40 = OpaqueTypeConformance2;
  v22 = swift_getOpaqueTypeConformance2();
  v23 = v29;
  v24 = v35;
  sub_1002D8AF0();
  v19(v3, v18);
  (*(v32 + 8))(v16, v24);
  v39 = v24;
  v40 = v22;
  swift_getOpaqueTypeConformance2();
  v25 = v34;
  sub_1002D8B10();
  return (*(v31 + 8))(v23, v25);
}

uint64_t sub_100020764@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v1 = sub_1002D8910();
  v36 = *(v1 - 8);
  v37 = v1;
  __chkstk_darwin(v1);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000321C(&qword_10043D2D8, &qword_1002E0A40);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - v6;
  v33 = sub_10000321C(&qword_10043D2E0, &qword_1002E0A48);
  v28 = *(v33 - 8);
  __chkstk_darwin(v33);
  v9 = &v27 - v8;
  v35 = sub_10000321C(&qword_10043D2E8, &qword_1002E0A50);
  v32 = *(v35 - 8);
  __chkstk_darwin(v35);
  v30 = &v27 - v10;
  v34 = sub_10000321C(&qword_10043D2F0, &qword_1002E0A58);
  v31 = *(v34 - 8);
  __chkstk_darwin(v34);
  v29 = &v27 - v11;
  v39 = 0;
  v40 = 0xE000000000000000;
  sub_1002D8E00(33);

  v39 = 0xD000000000000018;
  v40 = 0x8000000100355CF0;
  v13 = qword_10043CC80;
  v12 = off_10043CC88;

  v41._countAndFlagsBits = v13;
  v41._object = v12;
  sub_1002D8D50(v41);

  v42._countAndFlagsBits = 0x6E6F747475622ELL;
  v42._object = 0xE700000000000000;
  sub_1002D8D50(v42);
  sub_10000321C(&qword_10043D2F8, &qword_1002E0A60);
  sub_10002B6E4(&qword_10043D300, &qword_10043D2F8, &qword_1002E0A60, &protocol conformance descriptor for ControlWidgetButton<A, B, C>);
  sub_1002D8CA0();
  v14 = sub_10002B6E4(&qword_10043D308, &qword_10043D2D8, &qword_1002E0A40, &protocol conformance descriptor for StaticControlConfiguration<A>);
  sub_1002D8B20();
  (*(v5 + 8))(v7, v4);
  if (qword_100438F70 != -1)
  {
    swift_once();
  }

  sub_1002D88F0();
  v39 = v4;
  v40 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v16 = v30;
  v17 = v33;
  sub_1002D8B00();
  v18 = v37;
  v19 = *(v36 + 8);
  v19(v3, v37);
  (*(v28 + 8))(v9, v17);
  v39 = 0x207472617453;
  v40 = 0xE600000000000000;
  v20 = qword_10051A0E8;
  v21 = qword_10051A0F0;

  v43._countAndFlagsBits = v20;
  v43._object = v21;
  sub_1002D8D50(v43);

  sub_1002D88F0();
  v39 = v17;
  v40 = OpaqueTypeConformance2;
  v22 = swift_getOpaqueTypeConformance2();
  v23 = v29;
  v24 = v35;
  sub_1002D8AF0();
  v19(v3, v18);
  (*(v32 + 8))(v16, v24);
  v39 = v24;
  v40 = v22;
  swift_getOpaqueTypeConformance2();
  v25 = v34;
  sub_1002D8B10();
  return (*(v31 + 8))(v23, v25);
}

uint64_t sub_100020D68@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v1 = sub_1002D8910();
  v36 = *(v1 - 8);
  v37 = v1;
  __chkstk_darwin(v1);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000321C(&qword_10043D310, &qword_1002E0A68);
  v28 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v27 - v5;
  v32 = sub_10000321C(&qword_10043D318, &qword_1002E0A70);
  v29 = *(v32 - 8);
  __chkstk_darwin(v32);
  v8 = &v27 - v7;
  v35 = sub_10000321C(&qword_10043D320, &qword_1002E0A78);
  v31 = *(v35 - 8);
  __chkstk_darwin(v35);
  v10 = &v27 - v9;
  v11 = sub_10000321C(&qword_10043D328, &qword_1002E0A80);
  v33 = *(v11 - 8);
  v34 = v11;
  __chkstk_darwin(v11);
  v30 = &v27 - v12;
  v39 = 0;
  v40 = 0xE000000000000000;
  sub_1002D8E00(33);

  v39 = 0xD000000000000018;
  v40 = 0x8000000100355CF0;
  v14 = qword_10043CCA0;
  v13 = off_10043CCA8;

  v41._countAndFlagsBits = v14;
  v41._object = v13;
  sub_1002D8D50(v41);

  v42._countAndFlagsBits = 0x6E6F747475622ELL;
  v42._object = 0xE700000000000000;
  sub_1002D8D50(v42);
  sub_10000321C(&qword_10043D330, &qword_1002E0A88);
  sub_10002B6E4(&qword_10043D338, &qword_10043D330, &qword_1002E0A88, &protocol conformance descriptor for ControlWidgetButton<A, B, C>);
  sub_1002D8CA0();
  if (qword_100438FA8 != -1)
  {
    swift_once();
  }

  v15 = sub_10002B6E4(&qword_10043D340, &qword_10043D310, &qword_1002E0A68, &protocol conformance descriptor for StaticControlConfiguration<A>);
  sub_1002D8B20();
  (*(v28 + 8))(v6, v4);
  if (qword_100438F90 != -1)
  {
    swift_once();
  }

  sub_1002D88F0();
  v39 = v4;
  v40 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v17 = v32;
  sub_1002D8B00();
  v18 = v37;
  v19 = *(v36 + 8);
  v19(v3, v37);
  (*(v29 + 8))(v8, v17);
  v39 = 0x207472617453;
  v40 = 0xE600000000000000;
  v20 = qword_10051A118;
  v21 = qword_10051A120;

  v43._countAndFlagsBits = v20;
  v43._object = v21;
  sub_1002D8D50(v43);

  sub_1002D88F0();
  v39 = v17;
  v40 = OpaqueTypeConformance2;
  v22 = swift_getOpaqueTypeConformance2();
  v23 = v30;
  v24 = v35;
  sub_1002D8AF0();
  v19(v3, v18);
  (*(v31 + 8))(v10, v24);
  v39 = v24;
  v40 = v22;
  swift_getOpaqueTypeConformance2();
  v25 = v34;
  sub_1002D8B10();
  return (*(v33 + 8))(v23, v25);
}

uint64_t sub_1000213A8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_10000321C(&qword_10043CD68, &unk_1002E03D0);
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();
  sub_1002D8D90();
  v2[6] = sub_1002D8D80();
  v4 = sub_1002D8D70();

  return _swift_task_switch(sub_100021484, v4, v3);
}

uint64_t sub_100021484()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = _AXSClarityUIEnabled();
  sub_10002AC00(v1, v2, &qword_10043CD68, &unk_1002E03D0);
  v4 = sub_1002D8970();
  v5 = *(v4 - 8);
  result = (*(v5 + 48))(v2, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v7 = v0[5];
    v8 = v0[4];

    (*(v5 + 32))(v7, v8, v4);
    (*(v5 + 56))(v7, 0, 1, v4);
    if (v3)
    {
      [objc_opt_self() toggleAccessibilityShortcutOption:30];
    }

    else
    {
      sub_1000223C8(v0[5]);
    }

    sub_10002AB2C(v0[5], &qword_10043CD68, &unk_1002E03D0);
    sub_1002D8590();

    v9 = v0[1];

    return v9();
  }

  return result;
}

uint64_t sub_10002162C()
{
  v0 = qword_10043CC30;

  return v0;
}

uint64_t sub_1000216B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000217CC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002B72C;

  return sub_1000213A8(a1);
}

uint64_t sub_100021880(uint64_t a1)
{
  v2 = sub_1000216B0(&qword_10043CCD0, type metadata accessor for StartAssistiveAccessIntent, &unk_1002DFBD8);

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_1000218F0()
{
  result = qword_10043CCE8;
  if (!qword_10043CCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043CCE8);
  }

  return result;
}

void sub_100021944()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0xE000000000000000;
  v6._countAndFlagsBits = 0x5F4C4F52544E4F43;
  v6._object = 0xEE0059425241454ELL;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v2 = sub_1002D88D0(v6, v7, v1, v8, 0, v5);
  v4 = v3;

  qword_10051A080 = v2;
  *algn_10051A088 = v4;
}

uint64_t sub_1000219F0()
{
  result = sub_1002D8BA0();
  qword_10051A090 = result;
  return result;
}

void sub_100021A28()
{
  v0 = sub_1002D8D00();
  v1 = AXHasCapability();

  byte_10051A098 = v1;
}

uint64_t sub_100021A88()
{
  v0 = qword_10043CC50;

  return v0;
}

unint64_t sub_100021AC4()
{
  result = qword_10043CCF0;
  if (!qword_10043CCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043CCF0);
  }

  return result;
}

unint64_t sub_100021B1C()
{
  result = qword_10043CCF8;
  if (!qword_10043CCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043CCF8);
  }

  return result;
}

uint64_t sub_100021BFC()
{
  [objc_opt_self() toggleAccessibilityShortcutOption:31];
  sub_1002D8590();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100021C80(uint64_t a1)
{
  v2 = sub_1000218F0();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100021CC0()
{
  result = qword_10043CD00;
  if (!qword_10043CD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043CD00);
  }

  return result;
}

uint64_t sub_100021D28()
{
  result = sub_1002D8BA0();
  qword_10051A0C8 = result;
  return result;
}

uint64_t sub_100021D70()
{
  v0 = qword_10043CC70;

  return v0;
}

unint64_t sub_100021DAC()
{
  result = qword_10043CD08;
  if (!qword_10043CD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043CD08);
  }

  return result;
}

unint64_t sub_100021E04()
{
  result = qword_10043CD10;
  if (!qword_10043CD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043CD10);
  }

  return result;
}

uint64_t sub_100021EE4()
{
  [objc_opt_self() toggleAccessibilityShortcutOption:22];
  sub_1002D8590();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100021F68(uint64_t a1)
{
  v2 = sub_100021CC0();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100022020()
{
  result = sub_1002D8BA0();
  qword_10051A0F8 = result;
  return result;
}

uint64_t sub_100022068(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return _swift_task_switch(sub_100022088, 0, 0);
}

id sub_100022088()
{
  if (_AXSSpeakThisEnabledNoCaching())
  {
    v1 = [objc_opt_self() server];
    if (v1)
    {
      v2 = v1;
      [v1 showControlCenter:0];
    }

    result = [objc_opt_self() sharedInstance];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v4 = result;
    v0[6] = sub_1000221EC;
    v0[7] = 0;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_10002235C;
    v0[5] = &unk_100424930;
    v5 = _Block_copy(v0 + 2);
    [v4 speakThisWithOptions:41 errorHandler:v5];
    _Block_release(v5);
  }

  else
  {
    sub_1000223C8(v0[9]);
  }

  sub_1002D8590();
  v6 = v0[1];

  return v6();
}

void sub_1000221EC(uint64_t a1)
{
  if (qword_10043A088 != -1)
  {
    swift_once();
  }

  v2 = sub_1002D8A20();
  sub_10001EDB8(v2, qword_10051C678);
  swift_errorRetain();
  oslog = sub_1002D8A00();
  v3 = sub_1002D8DE0();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    if (a1)
    {
      swift_errorRetain();
      v6 = _swift_stdlib_bridgeErrorToNSError();
      v7 = v6;
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    *(v4 + 4) = v6;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, oslog, v3, "Failed to start speak screen: %@", v4, 0xCu);
    sub_10002AB2C(v5, &qword_10043BD08, &qword_1002E04E0);
  }
}

void sub_10002235C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_1000223C8(uint64_t a1)
{
  v2 = sub_10000321C(&qword_10043CD68, &unk_1002E03D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v27 - v3;
  sub_10000321C(&qword_10043CF50, &qword_1002E04D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002D9F40;
  *(inited + 32) = sub_1002D8D10();
  *(inited + 40) = v6;
  *(inited + 48) = 1;
  *(inited + 56) = sub_1002D8D10();
  *(inited + 64) = v7;
  *(inited + 72) = 1;
  v8 = sub_10002A6FC(inited);
  swift_setDeallocating();
  sub_10000321C(&qword_10043CF58, &qword_1002E04D8);
  swift_arrayDestroy();
  v9 = [objc_opt_self() defaultWorkspace];
  if (!v9)
  {
    __break(1u);
  }

  v10 = v9;
  sub_10002AC00(a1, v4, &qword_10043CD68, &unk_1002E03D0);
  v11 = sub_1002D8970();
  v12 = *(v11 - 8);
  v14 = 0;
  if ((*(v12 + 48))(v4, 1, v11) != 1)
  {
    sub_1002D8940(v13);
    v14 = v15;
    (*(v12 + 8))(v4, v11);
  }

  sub_1000250FC(v8);

  isa = sub_1002D8CD0().super.isa;

  v28 = 0;
  v17 = [v10 openSensitiveURL:v14 withOptions:isa error:&v28];

  v18 = v28;
  if (v17)
  {

    v19 = v18;
  }

  else
  {
    v27 = v28;
    v20 = v28;
    sub_1002D88E0();

    swift_willThrow();
    if (qword_10043A088 != -1)
    {
      swift_once();
    }

    v21 = sub_1002D8A20();
    sub_10001EDB8(v21, qword_10051C678);
    swift_errorRetain();
    v22 = sub_1002D8A00();
    v23 = sub_1002D8DE0();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      swift_errorRetain();
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 4) = v26;
      *v25 = v26;
      _os_log_impl(&_mh_execute_header, v22, v23, "Unable to open settings from Control Center: %@", v24, 0xCu);
      sub_10002AB2C(v25, &qword_10043BD08, &qword_1002E04E0);
    }

    else
    {
    }
  }
}

uint64_t sub_1000227F4()
{
  v0 = qword_10043CC90;

  return v0;
}

uint64_t sub_100022930(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002B72C;

  return sub_100022068(a1);
}

uint64_t sub_1000229E4(uint64_t a1)
{
  v2 = sub_1000216B0(&qword_10043CD18, type metadata accessor for StartSpeekScreenIntent, &unk_1002DFFE0);

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100022AB8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100022B04(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v6 = [objc_opt_self() localizedTitleForAccessibilityShortcutOption:a2];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1002D8D10();
    v10 = v9;

    *a3 = v8;
    *a4 = v10;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100022B84()
{
  result = sub_1002D8BA0();
  qword_10051A128 = result;
  return result;
}

void sub_100022BBC()
{
  v0 = sub_1002D8D00();
  v1 = AXHasCapability();

  byte_10051A130 = v1;
}

uint64_t sub_100022C20(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1002D8910();
  sub_10001EDF0(v3, a2);
  sub_10001EDB8(v3, a2);
  return sub_1002D88F0();
}

uint64_t sub_100022C80(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_10000321C(&qword_10043CD68, &unk_1002E03D0);
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();
  sub_1002D8D90();
  v2[6] = sub_1002D8D80();
  v4 = sub_1002D8D70();

  return _swift_task_switch(sub_100022D5C, v4, v3);
}

uint64_t sub_100022D5C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = _AXSTripleClickCopyOptions();
  v4 = _AXSTripleClickContainsOption();
  sub_10002AC00(v1, v2, &qword_10043CD68, &unk_1002E03D0);
  v5 = sub_1002D8970();
  v6 = *(v5 - 8);
  result = (*(v6 + 48))(v2, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v8 = v0[5];
    v9 = v0[4];

    (*(v6 + 32))(v8, v9, v5);
    (*(v6 + 56))(v8, 0, 1, v5);
    if (v4)
    {
      [objc_opt_self() toggleAccessibilityShortcutOption:33];
    }

    else
    {
      sub_1000223C8(v0[5]);
    }

    sub_10002AB2C(v0[5], &qword_10043CD68, &unk_1002E03D0);
    sub_1002D8590();

    v10 = v0[1];

    return v10();
  }

  return result;
}

uint64_t sub_100022F10()
{
  v0 = qword_10043CCB0;

  return v0;
}

uint64_t sub_1000230A8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100023140;

  return sub_100022C80(a1);
}

uint64_t sub_100023140()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100023250(uint64_t a1)
{
  v2 = sub_1000216B0(&qword_10043CD30, type metadata accessor for StartLiveSpeechIntent, &unk_1002E0138);

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_1000232C0()
{
  result = qword_10043CD48;
  if (!qword_10043CD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043CD48);
  }

  return result;
}

unint64_t sub_100023318()
{
  result = qword_10043CD50;
  if (!qword_10043CD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043CD50);
  }

  return result;
}

uint64_t sub_10002336C@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v1 = sub_1002D8990();
  __chkstk_darwin(v1 - 8);
  v57 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1002D8900();
  __chkstk_darwin(v3 - 8);
  v56 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1002D8CF0();
  v58 = *(v47 - 8);
  v5 = __chkstk_darwin(v47);
  v54 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v39 - v7;
  v51 = sub_1002D8910();
  v59 = *(v51 - 8);
  __chkstk_darwin(v51);
  v44 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000321C(&qword_10043D348, &qword_1002E0A90);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v39 - v12;
  v43 = sub_10000321C(&qword_10043D350, &qword_1002E0A98);
  v45 = *(v43 - 8);
  __chkstk_darwin(v43);
  v40 = &v39 - v14;
  v15 = sub_10000321C(&qword_10043D358, &qword_1002E0AA0);
  v16 = *(v15 - 8);
  v48 = v15;
  v49 = v16;
  __chkstk_darwin(v15);
  v55 = &v39 - v17;
  v50 = sub_10000321C(&qword_10043D360, &qword_1002E0AA8);
  v52 = *(v50 - 8);
  __chkstk_darwin(v50);
  v46 = &v39 - v18;
  v62[0] = 1;
  sub_10000321C(&qword_10043D368, &qword_1002E0AB0);
  v19 = sub_1000044E0(&qword_10043D370, &qword_1002E0AB8);
  v20 = sub_10002B6E4(&qword_10043D378, &qword_10043D370, &qword_1002E0AB8, &protocol conformance descriptor for ControlWidgetToggle<A, B, C>);
  v60 = v19;
  v61 = v20;
  swift_getOpaqueTypeConformance2();
  sub_10002B26C();
  sub_1002D8CB0();
  v21 = sub_1002D8D00();
  AXHasCapability();

  v22 = sub_10002B6E4(&qword_10043D388, &qword_10043D348, &qword_1002E0A90, &protocol conformance descriptor for StaticControlConfiguration<A>);
  sub_1002D8B20();
  (*(v11 + 8))(v13, v10);
  v23 = v8;
  sub_1002D8CE0();
  v42 = "ZOOM_LENS_EFFECT_NONE";
  v24 = v58;
  v41 = *(v58 + 16);
  v25 = v47;
  v41(v54, v8, v47);
  sub_1000B4F14(v56);
  sub_1002D8980();
  v26 = v44;
  sub_1002D8920();
  v27 = *(v24 + 8);
  v58 = v24 + 8;
  v39 = v27;
  v27(v8, v25);
  v60 = v10;
  v61 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = v43;
  v30 = v40;
  sub_1002D8B00();
  v31 = *(v59 + 8);
  v59 += 8;
  v32 = v51;
  v31(v26, v51);
  (*(v45 + 8))(v30, v29);
  sub_1002D8CE0();
  v41(v54, v23, v25);
  sub_1000B4F14(v56);
  sub_1002D8980();
  sub_1002D8920();
  v39(v23, v25);
  v60 = v29;
  v61 = OpaqueTypeConformance2;
  v33 = swift_getOpaqueTypeConformance2();
  v34 = v46;
  v35 = v48;
  v36 = v55;
  sub_1002D8AF0();
  v31(v26, v32);
  (*(v49 + 8))(v36, v35);
  v60 = v35;
  v61 = v33;
  swift_getOpaqueTypeConformance2();
  v37 = v50;
  sub_1002D8B10();
  return (*(v52 + 8))(v34, v37);
}

uint64_t sub_100023BEC(unsigned __int8 *a1)
{
  v2 = sub_10000321C(&qword_10043D370, &qword_1002E0AB8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v9 - v4;
  LOBYTE(a1) = *a1;
  v9[3] = sub_10002A7F8();
  *(swift_allocObject() + 16) = a1;
  sub_10000321C(&qword_10043D390, &qword_1002E0AC0);
  v6 = sub_10002B2D8();
  v9[1] = &type metadata for MusicHapticsValueLabel;
  v9[2] = v6;
  swift_getOpaqueTypeConformance2();
  sub_10002B32C();
  sub_1002D8C40();
  v7 = [objc_opt_self() systemPinkColor];
  sub_1002D8B90();
  sub_10002B6E4(&qword_10043D378, &qword_10043D370, &qword_1002E0AB8, &protocol conformance descriptor for ControlWidgetToggle<A, B, C>);
  sub_1002D8AD0();

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100023E2C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1002D8CF0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002D8CE0();
  v6 = sub_1000B4928(v5);
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v13[0] = v6;
  v13[1] = v8;
  sub_10002B218();
  result = sub_1002D8B40();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_100023F58(char a1, char a2)
{
  v3 = sub_1002D8CF0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a2;
  sub_1002D8CE0();
  v7 = sub_1000B4928(v6);
  v9 = v8;
  (*(v4 + 8))(v6, v3);
  v15[1] = v7;
  v15[2] = v9;
  sub_10002B218();
  v10 = sub_1002D8B40();
  v12 = v11;
  LOBYTE(v6) = v13;
  sub_10002B2D8();
  sub_1002D8B50();
  sub_10002B380(v10, v12, v6 & 1);
}

uint64_t sub_1000240E0@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_1002D8CF0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10043A090 != -1)
  {
    swift_once();
  }

  v8 = 0;
  v9 = 0xE000000000000000;
  if (*(qword_10051C690 + 16) & 1) == 0 && (a1)
  {
    if (_AXSHapticMusicEnabled())
    {
      sub_1002D8CE0();
      v8 = sub_1000B4928(v7);
      v9 = v10;
      (*(v5 + 8))(v7, v4);
    }

    else
    {
      v8 = 0;
    }
  }

  v15[0] = v8;
  v15[1] = v9;
  sub_10002B218();
  result = sub_1002D8B40();
  *a2 = result;
  *(a2 + 8) = v12;
  *(a2 + 16) = v13 & 1;
  *(a2 + 24) = v14;
  return result;
}

uint64_t sub_10002426C@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  if (_AXSHapticMusicEnabled() && (a1 & 1) != 0 && qword_10043A090 != -1)
  {
    swift_once();
  }

  result = sub_1002D8BA0();
  *a2 = result;
  return result;
}

uint64_t sub_100024360@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1002D8BD0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1002D8BF0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *v1;
  v13[16] = v14;
  sub_1002D8BB0();
  sub_1002D8BE0();
  sub_1002D8BC0();
  v11 = (a1 + *(sub_10000321C(&qword_10043D3A8, &qword_1002E0BB8) + 36));
  sub_10000321C(&qword_10043D3B0, &qword_1002E0BC0);
  sub_1000216B0(&qword_10043D3B8, &type metadata accessor for AutomaticSymbolEffect, &protocol conformance descriptor for AutomaticSymbolEffect);
  sub_1002D8A50();
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
  result = swift_getKeyPath();
  *v11 = result;
  return result;
}

uint64_t sub_1000245E4()
{
  if (_AXSHapticMusicEnabled())
  {
    v1 = [objc_opt_self() sharedManager];
    v2 = [v1 isActive];
  }

  else
  {
    v2 = 0;
  }

  **(v0 + 16) = v2;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100024690()
{
  v0 = sub_1002D8990();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1002D8900();
  __chkstk_darwin(v1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1002D8CF0();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1002D8910();
  sub_10001EDF0(v5, qword_10051A150);
  sub_10001EDB8(v5, qword_10051A150);
  sub_1002D8CE0();
  sub_1000B4F14(v3);
  sub_1002D8980();
  return sub_1002D8920();
}

uint64_t sub_100024828(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_10000321C(&qword_10043CD68, &unk_1002E03D0);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_1000248C4, 0, 0);
}

uint64_t sub_1000248C4()
{
  if (_AXSHapticMusicEnabled() || (v1 = [objc_opt_self() sharedInstance], v2 = objc_msgSend(v1, "hapticMusicToggledInPreferences"), v1, v2))
  {
    v3 = [objc_opt_self() sharedInstance];
    sub_1002D85B0();
    [v3 setHapticMusicActive:*(v0 + 40)];

    sub_1002D85B0();
    if (*(v0 + 41) == 1)
    {
      _AXSSetHapticMusicEnabled();
    }
  }

  else
  {
    v4 = *(v0 + 32);
    sub_1002D8960();
    sub_1000223C8(v4);
    sub_10002AB2C(v4, &qword_10043CD68, &unk_1002E03D0);
  }

  sub_1002D8590();

  v5 = *(v0 + 8);

  return v5();
}

void *sub_100024A24@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1002D85B0();
  *a1 = v3;
  return result;
}

uint64_t (*sub_100024A98(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1002D85A0();
  return sub_100024B0C;
}

void sub_100024B0C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_100024B58()
{
  v0 = qword_10043CCC0;

  return v0;
}

unint64_t sub_100024B94()
{
  result = qword_10043CD58;
  if (!qword_10043CD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043CD58);
  }

  return result;
}

unint64_t sub_100024BEC()
{
  result = qword_10043CD60;
  if (!qword_10043CD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043CD60);
  }

  return result;
}

uint64_t sub_100024CAC@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1002D8910();
  v7 = sub_10001EDB8(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_100024D48(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002B72C;

  return sub_100024828(a1, v4);
}

uint64_t sub_100024DE8@<X0>(uint64_t *a2@<X8>)
{
  result = sub_10002A7F8();
  *a2 = result;
  return result;
}

uint64_t sub_100024E10(uint64_t a1)
{
  v2 = sub_1000232C0();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

void sub_100024E90(uint64_t a1)
{
  if (!qword_10043CDD8)
  {
    sub_1002D8970();
    v1 = sub_1002D8DF0();
    if (!v2)
    {
      atomic_store(v1, &qword_10043CDD8);
    }
  }
}

uint64_t sub_100024F44(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000321C(&qword_10043CD68, &unk_1002E03D0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100024FD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000321C(&qword_10043CD68, &unk_1002E03D0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_10002504C(uint64_t a1)
{
  sub_100024E90(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1000250FC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000321C(&qword_10043CF60, &qword_1002E04E8);
    v2 = sub_1002D8E20();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + 16 * (v13 | (v12 << 6)));
        v16 = *v14;
        v15 = v14[1];

        swift_dynamicCast();
        sub_10002AB8C(&v22, v24);
        sub_10002AB8C(v24, v25);
        sub_10002AB8C(v25, &v23);
        result = sub_100026234(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          sub_10002AB9C(v11);
          result = sub_10002AB8C(&v23, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_10002AB8C(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_100025344()
{
  started = type metadata accessor for StartAssistiveAccessIntent(0);
  __chkstk_darwin(started);
  if (qword_100438F18 != -1)
  {
    swift_once();
  }

  sub_1002D8960();
  sub_10000321C(&qword_10043D250, "8\n\v");
  sub_10002B6E4(&qword_10043D258, &qword_10043D250, "8\n\v", &protocol conformance descriptor for Label<A, B>);
  sub_1000216B0(&qword_10043CCD0, type metadata accessor for StartAssistiveAccessIntent, &unk_1002DFBD8);
  return sub_1002D8C20();
}

uint64_t sub_1000254C8()
{
  if (qword_100438F38 != -1)
  {
    swift_once();
  }

  sub_10000321C(&qword_10043D250, "8\n\v");
  sub_10002B6E4(&qword_10043D258, &qword_10043D250, "8\n\v", &protocol conformance descriptor for Label<A, B>);
  sub_1000218F0();

  return sub_1002D8C20();
}

uint64_t sub_1000255B0()
{
  if (qword_100438F60 != -1)
  {
    swift_once();
  }

  sub_10000321C(&qword_10043D250, "8\n\v");
  sub_10002B6E4(&qword_10043D258, &qword_10043D250, "8\n\v", &protocol conformance descriptor for Label<A, B>);
  sub_100021CC0();

  return sub_1002D8C20();
}

uint64_t sub_100025698()
{
  started = type metadata accessor for StartSpeekScreenIntent(0);
  __chkstk_darwin(started);
  if (qword_100438F80 != -1)
  {
    swift_once();
  }

  sub_1002D8960();
  sub_10000321C(&qword_10043D250, "8\n\v");
  sub_10002B6E4(&qword_10043D258, &qword_10043D250, "8\n\v", &protocol conformance descriptor for Label<A, B>);
  sub_1000216B0(&qword_10043CD18, type metadata accessor for StartSpeekScreenIntent, &unk_1002DFFE0);
  return sub_1002D8C20();
}

uint64_t sub_10002581C()
{
  started = type metadata accessor for StartLiveSpeechIntent(0);
  __chkstk_darwin(started);
  if (qword_100438FA0 != -1)
  {
    swift_once();
  }

  sub_1002D8960();
  sub_10000321C(&qword_10043D250, "8\n\v");
  sub_10002B6E4(&qword_10043D258, &qword_10043D250, "8\n\v", &protocol conformance descriptor for Label<A, B>);
  sub_1000216B0(&qword_10043CD30, type metadata accessor for StartLiveSpeechIntent, &unk_1002E0138);
  return sub_1002D8C20();
}

uint64_t sub_100025B44(uint64_t a1)
{
  v2 = sub_1002D8A60();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1002D8A80();
}

unint64_t sub_100025C10(char a1)
{
  sub_1002D8E50();
  sub_1002D8D40();

  v2 = sub_1002D8E70();

  return sub_1000262AC(a1 & 1, v2);
}

unint64_t sub_100025CB8(uint64_t a1)
{
  v1 = a1;
  sub_1002D8E50();
  sub_1002D8D40();

  v2 = sub_1002D8E70();

  return sub_1000263F0(v1, v2);
}

unint64_t sub_100025D7C(uint64_t a1)
{
  v1 = a1;
  sub_1002D8E50();
  sub_1002D8D40();

  v2 = sub_1002D8E70();

  return sub_100026578(v1, v2);
}

unint64_t sub_100025E50(uint64_t a1)
{
  v1 = a1;
  sub_1002D8E50();
  sub_1002D8D40();

  v2 = sub_1002D8E70();

  return sub_100026714(v1, v2);
}

unint64_t sub_100025F94(uint64_t a1)
{
  v1 = a1;
  sub_1002D8E50();
  sub_1002D8E60(v1);
  v2 = sub_1002D8E70();
  return sub_100026B6C(v1, v2);
}

unint64_t sub_100025FFC(char a1)
{
  sub_1002D8E50();
  sub_1002D8E60((a1 & 1u) + 1);
  v2 = sub_1002D8E70();

  return sub_10002697C(a1 & 1, v2);
}

unint64_t sub_10002606C(char a1)
{
  sub_1002D8E50();
  sub_1002D8E60(a1 & 1);
  v2 = sub_1002D8E70();

  return sub_1000269FC(a1 & 1, v2);
}

unint64_t sub_1000260D8(uint64_t a1)
{
  v1 = a1;
  sub_1002D8E50();
  sub_1002D8E60(v1 + 1);
  v2 = sub_1002D8E70();
  return sub_100026B6C(v1, v2);
}

unint64_t sub_100026144(uint64_t a1)
{
  v1 = a1;
  sub_1002D8E50();
  sub_1002D8E60(qword_1002E0C00[v1]);
  v2 = sub_1002D8E70();

  return sub_100026A6C(v1, v2);
}

unint64_t sub_1000261BC(uint64_t a1)
{
  v1 = a1;
  sub_1002D8E50();
  sub_1002D8E60(qword_1002E0C18[v1]);
  v2 = sub_1002D8E70();

  return sub_100026AEC(v1, v2);
}

unint64_t sub_100026234(uint64_t a1, uint64_t a2)
{
  sub_1002D8E50();
  sub_1002D8D40();
  v4 = sub_1002D8E70();

  return sub_100026BDC(a1, a2, v4);
}

unint64_t sub_1000262AC(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x776F646E6957;
    }

    else
    {
      v6 = 0x657263736C6C7546;
    }

    if (a1)
    {
      v7 = 0xE600000000000000;
    }

    else
    {
      v7 = 0xEA00000000006E65;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x776F646E6957 : 0x657263736C6C7546;
      v9 = *(*(v2 + 48) + v4) ? 0xE600000000000000 : 0xEA00000000006E65;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_1002D8E40();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1000263F0(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        v7 = 0xE600000000000000;
        if (*(*(v2 + 48) + v4) == 1)
        {
          v8 = 0x776F646E6957;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v8 = 0x64656B636F44;
          v9 = a1;
          if (!a1)
          {
LABEL_14:
            v11 = 0xEA00000000006E65;
            if (v8 != 0x657263736C6C7546)
            {
              goto LABEL_16;
            }

            goto LABEL_15;
          }
        }
      }

      else
      {
        v8 = 0x657263736C6C7546;
        v7 = 0xEA00000000006E65;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_14;
        }
      }

      if (v9 == 1)
      {
        v10 = 0x776F646E6957;
      }

      else
      {
        v10 = 0x64656B636F44;
      }

      v11 = 0xE600000000000000;
      if (v8 != v10)
      {
        goto LABEL_16;
      }

LABEL_15:
      if (v7 == v11)
      {

        return v4;
      }

LABEL_16:
      v12 = sub_1002D8E40();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_100026578(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v21 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v2 + 48) + v4);
      v7 = v6 == 2 ? 1952867660 : 0x7468676952;
      v8 = v6 == 2 ? 0xE400000000000000 : 0xE500000000000000;
      v9 = *(*(v2 + 48) + v4) ? 0x6D6F74746F42 : 7368532;
      v10 = *(*(v2 + 48) + v4) ? 0xE600000000000000 : 0xE300000000000000;
      v11 = *(*(v2 + 48) + v4) <= 1u ? v9 : v7;
      v12 = *(*(v2 + 48) + v4) <= 1u ? v10 : v8;
      v13 = v5 == 2 ? 1952867660 : 0x7468676952;
      v14 = v5 == 2 ? 0xE400000000000000 : 0xE500000000000000;
      v15 = v5 ? 0x6D6F74746F42 : 7368532;
      v16 = v5 ? 0xE600000000000000 : 0xE300000000000000;
      v17 = v5 <= 1 ? v15 : v13;
      v18 = v5 <= 1 ? v16 : v14;
      if (v11 == v17 && v12 == v18)
      {
        break;
      }

      v19 = sub_1002D8E40();

      if ((v19 & 1) == 0)
      {
        v4 = (v4 + 1) & v21;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_100026714(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 > 2)
      {
        if (v7 == 3)
        {
          v8 = 0x6F43747265766E49;
          v9 = 0xEC00000073726F6CLL;
        }

        else
        {
          if (v7 == 4)
          {
            v8 = 0x73756A6441657548;
          }

          else
          {
            v8 = 0x746867694C776F4CLL;
          }

          if (v7 == 4)
          {
            v9 = 0xE900000000000074;
          }

          else
          {
            v9 = 0xE800000000000000;
          }
        }
      }

      else if (*(*(v2 + 48) + v4))
      {
        if (v7 == 1)
        {
          v8 = 0x646E416B63616C42;
        }

        else
        {
          v8 = 0xD000000000000015;
        }

        if (v7 == 1)
        {
          v9 = 0xED00006574696857;
        }

        else
        {
          v9 = 0x8000000100354300;
        }
      }

      else
      {
        v9 = 0xE400000000000000;
        v8 = 1701736270;
      }

      v10 = 0x746867694C776F4CLL;
      if (v6 == 4)
      {
        v10 = 0x73756A6441657548;
      }

      v11 = 0xE900000000000074;
      if (v6 != 4)
      {
        v11 = 0xE800000000000000;
      }

      if (v6 == 3)
      {
        v10 = 0x6F43747265766E49;
        v11 = 0xEC00000073726F6CLL;
      }

      v12 = 0xD000000000000015;
      if (v6 == 1)
      {
        v12 = 0x646E416B63616C42;
      }

      v13 = 0xED00006574696857;
      if (v6 != 1)
      {
        v13 = 0x8000000100354300;
      }

      if (!v6)
      {
        v12 = 1701736270;
        v13 = 0xE400000000000000;
      }

      v14 = v6 <= 2 ? v12 : v10;
      v15 = v6 <= 2 ? v13 : v11;
      if (v8 == v14 && v9 == v15)
      {
        break;
      }

      v16 = sub_1002D8E40();

      if ((v16 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_10002697C(char a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    v7 = (a1 & 1u) + 1;
    do
    {
      if (*(*(v2 + 48) + result))
      {
        v8 = 2;
      }

      else
      {
        v8 = 1;
      }

      if (v8 == v7)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1000269FC(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100026A6C(char a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (qword_1002E0C00[*(*(v2 + 48) + result)] == qword_1002E0C00[a1])
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100026AEC(char a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (qword_1002E0C18[*(*(v2 + 48) + result)] == qword_1002E0C18[a1])
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100026B6C(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100026BDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1002D8E40())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_100026DEC@<X0>(void *a1@<X0>, uint64_t a5@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  sub_10002B218();

  result = sub_1002D8B40();
  *a5 = result;
  *(a5 + 8) = v7;
  *(a5 + 16) = v8 & 1;
  *(a5 + 24) = v9;
  return result;
}

uint64_t sub_100026EA8@<X0>(void *a1@<X0>, void *a2@<X1>, void *a4@<X8>)
{
  if (*a1 != -1)
  {
    v6 = a2;
    v7 = a4;
    swift_once();
    a4 = v7;
    a2 = v6;
  }

  *a4 = *a2;
}

unint64_t sub_100026F04(uint64_t a1)
{
  v2 = sub_10000321C(&qword_10043CC18, &unk_1002DFAD0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000321C(&qword_10043D058, &qword_1002E06E8);
    v7 = sub_1002D8E20();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_10002AC00(v9, v5, &qword_10043CC18, &unk_1002DFAD0);
      v11 = *v5;
      result = sub_100025F94(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1002D86F0();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
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

unint64_t sub_1000270E0(uint64_t a1)
{
  v2 = sub_10000321C(&qword_10043CC08, &qword_1002DFAC0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000321C(&qword_10043D050, &unk_1002E06D8);
    v7 = sub_1002D8E20();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_10002AC00(v9, v5, &qword_10043CC08, &qword_1002DFAC0);
      v11 = *v5;
      result = sub_1000260D8(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1002D86F0();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
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

unint64_t sub_1000272BC(uint64_t a1)
{
  v2 = sub_10000321C(&qword_10043CBF8, &qword_1002DFAB0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000321C(&qword_10043D048, &unk_1002E06C8);
    v7 = sub_1002D8E20();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10002AC00(v9, v5, &qword_10043CBF8, &qword_1002DFAB0);
      v11 = *v5;
      result = sub_100025C10(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1002D86F0();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
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

unint64_t sub_1000274A4(uint64_t a1)
{
  v2 = sub_10000321C(&qword_10043CBE8, &qword_1002DFAA0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000321C(&qword_10043D040, &unk_1002E06B8);
    v7 = sub_1002D8E20();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10002AC00(v9, v5, &qword_10043CBE8, &qword_1002DFAA0);
      v11 = *v5;
      result = sub_100025CB8(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1002D86F0();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
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

unint64_t sub_10002768C(uint64_t a1)
{
  v2 = sub_10000321C(&qword_10043CBD8, &qword_1002DFA90);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000321C(&qword_10043D038, &unk_1002E06A8);
    v7 = sub_1002D8E20();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10002AC00(v9, v5, &qword_10043CBD8, &qword_1002DFA90);
      v11 = *v5;
      result = sub_100025D7C(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1002D86F0();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
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

unint64_t sub_100027874(uint64_t a1)
{
  v2 = sub_10000321C(&qword_10043CBC8, &qword_1002DFA80);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000321C(&qword_10043D030, &unk_1002E0698);
    v7 = sub_1002D8E20();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10002AC00(v9, v5, &qword_10043CBC8, &qword_1002DFA80);
      v11 = *v5;
      result = sub_100025E50(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1002D86F0();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
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

unint64_t sub_100027A5C(uint64_t a1)
{
  v2 = sub_10000321C(&qword_10043CBB8, &qword_1002DFA70);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000321C(&qword_10043D028, &unk_1002E0688);
    v7 = sub_1002D8E20();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_10002AC00(v9, v5, &qword_10043CBB8, &qword_1002DFA70);
      v11 = *v5;
      result = sub_100025F94(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1002D86F0();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
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

unint64_t sub_100027C38(uint64_t a1)
{
  v2 = sub_10000321C(&qword_10043CBA8, &qword_1002DFA60);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000321C(&qword_10043D020, &unk_1002E0678);
    v7 = sub_1002D8E20();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_10002AC00(v9, v5, &qword_10043CBA8, &qword_1002DFA60);
      v11 = *v5;
      result = sub_100025F94(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1002D86F0();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
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

unint64_t sub_100027E14(uint64_t a1)
{
  v2 = sub_10000321C(&qword_10043CB98, &qword_1002DFA50);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000321C(&qword_10043D018, &unk_1002E0668);
    v7 = sub_1002D8E20();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_10002AC00(v9, v5, &qword_10043CB98, &qword_1002DFA50);
      v11 = *v5;
      result = sub_100025F94(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1002D86F0();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
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

unint64_t sub_100027FF0(uint64_t a1)
{
  v2 = sub_10000321C(&qword_10043CB88, &qword_1002DFA40);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000321C(&qword_10043D010, &unk_1002E0658);
    v7 = sub_1002D8E20();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_10002AC00(v9, v5, &qword_10043CB88, &qword_1002DFA40);
      v11 = *v5;
      result = sub_100025F94(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1002D86F0();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
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

unint64_t sub_1000281CC(uint64_t a1)
{
  v2 = sub_10000321C(&qword_10043CB78, &qword_1002DFA30);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000321C(&qword_10043D008, &unk_1002E0648);
    v7 = sub_1002D8E20();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_10002AC00(v9, v5, &qword_10043CB78, &qword_1002DFA30);
      v11 = *v5;
      result = sub_100025F94(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1002D86F0();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
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

unint64_t sub_1000283A8(uint64_t a1)
{
  v2 = sub_10000321C(&qword_10043CB68, &qword_1002DFA20);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000321C(&qword_10043D000, &unk_1002E0638);
    v7 = sub_1002D8E20();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_10002AC00(v9, v5, &qword_10043CB68, &qword_1002DFA20);
      v11 = *v5;
      result = sub_100025F94(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1002D86F0();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
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

unint64_t sub_100028584(uint64_t a1)
{
  v2 = sub_10000321C(&qword_10043CB58, &qword_1002DFA10);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000321C(&qword_10043CFF8, &unk_1002E0628);
    v7 = sub_1002D8E20();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_10002AC00(v9, v5, &qword_10043CB58, &qword_1002DFA10);
      v11 = *v5;
      result = sub_100025F94(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1002D86F0();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
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

unint64_t sub_100028760(uint64_t a1)
{
  v2 = sub_10000321C(&qword_10043CB48, &qword_1002DFA00);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000321C(&qword_10043CFF0, &unk_1002E0618);
    v7 = sub_1002D8E20();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_10002AC00(v9, v5, &qword_10043CB48, &qword_1002DFA00);
      v11 = *v5;
      result = sub_100025FFC(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1002D86F0();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
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

unint64_t sub_10002893C(uint64_t a1)
{
  v2 = sub_10000321C(&qword_10043CB38, &qword_1002DF9F0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000321C(&qword_10043CFE8, &unk_1002E0608);
    v7 = sub_1002D8E20();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_10002AC00(v9, v5, &qword_10043CB38, &qword_1002DF9F0);
      v11 = *v5;
      result = sub_100025F94(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1002D86F0();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
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

unint64_t sub_100028B18(uint64_t a1)
{
  v2 = sub_10000321C(&qword_10043CB28, &qword_1002DF9E0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000321C(&qword_10043CFE0, &unk_1002E05F8);
    v7 = sub_1002D8E20();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_10002AC00(v9, v5, &qword_10043CB28, &qword_1002DF9E0);
      v11 = *v5;
      result = sub_100025F94(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1002D86F0();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
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

unint64_t sub_100028CF4(uint64_t a1)
{
  v2 = sub_10000321C(&qword_10043CB18, &qword_1002DF9D0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000321C(&qword_10043CFD8, &unk_1002E05E8);
    v7 = sub_1002D8E20();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_10002AC00(v9, v5, &qword_10043CB18, &qword_1002DF9D0);
      v11 = *v5;
      result = sub_10002606C(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1002D86F0();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
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

unint64_t sub_100028ED0(uint64_t a1)
{
  v2 = sub_10000321C(&qword_10043CB08, &qword_1002DF9C0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000321C(&qword_10043CFD0, &unk_1002E05D8);
    v7 = sub_1002D8E20();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_10002AC00(v9, v5, &qword_10043CB08, &qword_1002DF9C0);
      v11 = *v5;
      result = sub_100025F94(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1002D86F0();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
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

unint64_t sub_1000290AC(uint64_t a1)
{
  v2 = sub_10000321C(&qword_10043CAF8, &qword_1002DF9B0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000321C(&qword_10043CFC8, &unk_1002E05C8);
    v7 = sub_1002D8E20();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_10002AC00(v9, v5, &qword_10043CAF8, &qword_1002DF9B0);
      v11 = *v5;
      result = sub_100025F94(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1002D86F0();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
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

unint64_t sub_100029288(uint64_t a1)
{
  v2 = sub_10000321C(&qword_10043CAE8, &qword_1002DF9A0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000321C(&qword_10043CFC0, &unk_1002E05B8);
    v7 = sub_1002D8E20();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_10002AC00(v9, v5, &qword_10043CAE8, &qword_1002DF9A0);
      v11 = *v5;
      result = sub_100025F94(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1002D86F0();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
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

unint64_t sub_100029464(uint64_t a1)
{
  v2 = sub_10000321C(&qword_10043CAD8, &qword_1002DF990);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000321C(&qword_10043CFB8, &unk_1002E05A8);
    v7 = sub_1002D8E20();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_10002AC00(v9, v5, &qword_10043CAD8, &qword_1002DF990);
      v11 = *v5;
      result = sub_100025F94(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1002D86F0();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
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

unint64_t sub_100029640(uint64_t a1)
{
  v2 = sub_10000321C(&qword_10043CAC8, &qword_1002DF980);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000321C(&qword_10043CFB0, &unk_1002E0598);
    v7 = sub_1002D8E20();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_10002AC00(v9, v5, &qword_10043CAC8, &qword_1002DF980);
      v11 = *v5;
      result = sub_1000260D8(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1002D86F0();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
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

unint64_t sub_10002981C(uint64_t a1)
{
  v2 = sub_10000321C(&qword_10043CAB8, &qword_1002DF970);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000321C(&qword_10043CFA8, &unk_1002E0588);
    v7 = sub_1002D8E20();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_10002AC00(v9, v5, &qword_10043CAB8, &qword_1002DF970);
      v11 = *v5;
      result = sub_100025F94(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1002D86F0();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
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

unint64_t sub_1000299F8(uint64_t a1)
{
  v2 = sub_10000321C(&qword_10043CAA8, &qword_1002DF960);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000321C(&qword_10043CFA0, &unk_1002E0578);
    v7 = sub_1002D8E20();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_10002AC00(v9, v5, &qword_10043CAA8, &qword_1002DF960);
      v11 = *v5;
      result = sub_100026144(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1002D86F0();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
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

unint64_t sub_100029BD4(uint64_t a1)
{
  v2 = sub_10000321C(&qword_10043CA98, &qword_1002DF950);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000321C(&qword_10043CF98, &unk_1002E0568);
    v7 = sub_1002D8E20();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_10002AC00(v9, v5, &qword_10043CA98, &qword_1002DF950);
      v11 = *v5;
      result = sub_100025F94(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1002D86F0();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
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

unint64_t sub_100029DB0(uint64_t a1)
{
  v2 = sub_10000321C(&qword_10043CA88, &qword_1002DF940);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000321C(&qword_10043CF90, &unk_1002E0558);
    v7 = sub_1002D8E20();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_10002AC00(v9, v5, &qword_10043CA88, &qword_1002DF940);
      v11 = *v5;
      result = sub_1000261BC(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1002D86F0();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
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

unint64_t sub_100029F8C(uint64_t a1)
{
  v2 = sub_10000321C(&qword_10043CA78, &qword_1002DF930);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000321C(&qword_10043CF88, &unk_1002E0548);
    v7 = sub_1002D8E20();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_10002AC00(v9, v5, &qword_10043CA78, &qword_1002DF930);
      v11 = *v5;
      result = sub_100025F94(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1002D86F0();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
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

unint64_t sub_10002A168(uint64_t a1)
{
  v2 = sub_10000321C(&qword_10043CA68, &qword_1002DF920);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000321C(&qword_10043CF80, &unk_1002E0538);
    v7 = sub_1002D8E20();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_10002AC00(v9, v5, &qword_10043CA68, &qword_1002DF920);
      v11 = *v5;
      result = sub_1000260D8(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1002D86F0();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
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

unint64_t sub_10002A344(uint64_t a1)
{
  v2 = sub_10000321C(&qword_10043CA58, &qword_1002DF910);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000321C(&qword_10043CF78, &unk_1002E0528);
    v7 = sub_1002D8E20();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_10002AC00(v9, v5, &qword_10043CA58, &qword_1002DF910);
      v11 = *v5;
      result = sub_1000260D8(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1002D86F0();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
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

unint64_t sub_10002A520(uint64_t a1)
{
  v2 = sub_10000321C(&qword_10043CA48, &qword_1002DF900);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000321C(&qword_10043CF70, &unk_1002E0518);
    v7 = sub_1002D8E20();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_10002AC00(v9, v5, &qword_10043CA48, &qword_1002DF900);
      v11 = *v5;
      result = sub_100025F94(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_1002D86F0();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
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

unint64_t sub_10002A6FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000321C(&qword_10043CF68, &qword_1002E04F0);
    v3 = sub_1002D8E20();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100026234(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
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

uint64_t sub_10002A7F8()
{
  v0 = sub_1002D87A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v18[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_10000321C(&qword_10043CF38, "f'\n");
  __chkstk_darwin(v4 - 8);
  v6 = &v18[-v5];
  v7 = sub_10000321C(&qword_10043CF40, &unk_1002E04B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v18[-v8];
  v10 = sub_10000321C(&qword_10043CA38, &qword_1002DF8F0);
  __chkstk_darwin(v10 - 8);
  v12 = &v18[-v11];
  v13 = sub_1002D8910();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  sub_10000321C(&qword_10043CF48, &qword_1002E04C0);
  sub_1002D88F0();
  (*(v14 + 56))(v12, 1, 1, v13);
  v18[15] = 2;
  v15 = sub_1002D8D60();
  (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  v16 = sub_1002D8570();
  (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  (*(v1 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v0);
  return sub_1002D85F0();
}

uint64_t sub_10002AB2C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000321C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

_OWORD *sub_10002AB8C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10002AB9C(void *a1)
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

uint64_t sub_10002ABE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002AC00(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000321C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_10002ACC8(uint64_t a1)
{
  result = sub_10002ACF0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10002ACF0()
{
  result = qword_10043D0A8;
  if (!qword_10043D0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043D0A8);
  }

  return result;
}

unint64_t sub_10002AD44(uint64_t a1)
{
  result = sub_10002AD6C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10002AD6C()
{
  result = qword_10043D0F8;
  if (!qword_10043D0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043D0F8);
  }

  return result;
}

unint64_t sub_10002ADC0(uint64_t a1)
{
  result = sub_10002ADE8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10002ADE8()
{
  result = qword_10043D148;
  if (!qword_10043D148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043D148);
  }

  return result;
}

unint64_t sub_10002AE3C(uint64_t a1)
{
  result = sub_10002AE64();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10002AE64()
{
  result = qword_10043D198;
  if (!qword_10043D198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043D198);
  }

  return result;
}

unint64_t sub_10002AEB8(uint64_t a1)
{
  result = sub_10002AEE0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10002AEE0()
{
  result = qword_10043D1E8;
  if (!qword_10043D1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043D1E8);
  }

  return result;
}

unint64_t sub_10002AF7C()
{
  result = qword_10043D1F0;
  if (!qword_10043D1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043D1F0);
  }

  return result;
}

unint64_t sub_10002AFFC()
{
  result = qword_10043D1F8;
  if (!qword_10043D1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043D1F8);
  }

  return result;
}

unint64_t sub_10002B07C()
{
  result = qword_10043D200;
  if (!qword_10043D200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043D200);
  }

  return result;
}

unint64_t sub_10002B0FC()
{
  result = qword_10043D208;
  if (!qword_10043D208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043D208);
  }

  return result;
}

unint64_t sub_10002B1C4()
{
  result = qword_10043D210;
  if (!qword_10043D210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043D210);
  }

  return result;
}

unint64_t sub_10002B218()
{
  result = qword_10043D260;
  if (!qword_10043D260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043D260);
  }

  return result;
}

unint64_t sub_10002B26C()
{
  result = qword_10043D380;
  if (!qword_10043D380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043D380);
  }

  return result;
}

unint64_t sub_10002B2D8()
{
  result = qword_10043D398;
  if (!qword_10043D398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043D398);
  }

  return result;
}

unint64_t sub_10002B32C()
{
  result = qword_10043D3A0;
  if (!qword_10043D3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043D3A0);
  }

  return result;
}

uint64_t sub_10002B380(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10002B3A4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_10002B454()
{
  sub_1000044E0(&qword_10043D360, &qword_1002E0AA8);
  sub_1000044E0(&qword_10043D358, &qword_1002E0AA0);
  sub_1000044E0(&qword_10043D350, &qword_1002E0A98);
  sub_1000044E0(&qword_10043D348, &qword_1002E0A90);
  sub_10002B6E4(&qword_10043D388, &qword_10043D348, &qword_1002E0A90, &protocol conformance descriptor for StaticControlConfiguration<A>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_10002B600()
{
  result = qword_10043D3C0;
  if (!qword_10043D3C0)
  {
    sub_1000044E0(&qword_10043D3A8, &qword_1002E0BB8);
    sub_10002B6E4(&qword_10043D258, &qword_10043D250, "8\n\v", &protocol conformance descriptor for Label<A, B>);
    sub_10002B6E4(&qword_10043D3C8, &qword_10043D3B0, &qword_1002E0BC0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043D3C0);
  }

  return result;
}

uint64_t sub_10002B6E4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000044E0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10002B78C(uint64_t *a1)
{
  sub_1000044E0(&qword_10043D250, "8\n\v");
  sub_1002D8C00();
  swift_getAssociatedTypeWitness();
  sub_10002B6E4(&qword_10043D258, &qword_10043D250, "8\n\v", &protocol conformance descriptor for Label<A, B>);
  sub_10002BF58(&qword_10043D3D0, &type metadata accessor for ControlWidgetToggleDefaultLabel, &protocol conformance descriptor for ControlWidgetToggleDefaultLabel);
  sub_1002D8C60();
  swift_getWitnessTable();
  sub_1002D8CC0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10002B9D8(uint64_t *a1)
{
  sub_1000044E0(&qword_10043D250, "8\n\v");
  sub_1002D8C00();
  swift_getAssociatedTypeWitness();
  sub_10002B6E4(&qword_10043D258, &qword_10043D250, "8\n\v", &protocol conformance descriptor for Label<A, B>);
  sub_10002BF58(&qword_10043D3D0, &type metadata accessor for ControlWidgetToggleDefaultLabel, &protocol conformance descriptor for ControlWidgetToggleDefaultLabel);
  sub_1002D8C60();
  swift_getWitnessTable();
  sub_1002D8CC0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10002BB94()
{
  sub_1000044E0(&qword_10043D3D8, &qword_1002E0CF8);
  sub_1000044E0(&qword_10043D3E0, &qword_1002E0D00);
  sub_1000044E0(&qword_10043D3E8, &qword_1002E0D08);
  sub_1000044E0(&qword_10043D3F0, &qword_1002E0D10);
  sub_10002B6E4(&qword_10043D3F8, &qword_10043D3F0, &qword_1002E0D10, &protocol conformance descriptor for ControlPicker<A>);
  sub_10002B218();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10002BD0C(uint64_t *a1)
{
  sub_1000044E0(&qword_10043D250, "8\n\v");
  sub_1002D8C10();
  swift_getAssociatedTypeWitness();
  sub_10002B6E4(&qword_10043D258, &qword_10043D250, "8\n\v", &protocol conformance descriptor for Label<A, B>);
  sub_10002BF58(&qword_10043D400, &type metadata accessor for ControlWidgetButtonDefaultActionLabel, &protocol conformance descriptor for ControlWidgetButtonDefaultActionLabel);
  sub_1002D8C30();
  swift_getWitnessTable();
  sub_1002D8CC0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10002BF58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10002BFA0@<X0>(void (*a1)(char *, uint64_t)@<X8>)
{
  v60 = a1;
  v59 = sub_10000321C(&qword_10043D408, &qword_1002E0D18);
  __chkstk_darwin(v59);
  v58 = &v46 - v1;
  v72 = sub_10000321C(&qword_10043D410, &qword_1002E0D20);
  v78 = *(v72 - 8);
  v2 = __chkstk_darwin(v72);
  v73 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v71 = &v46 - v4;
  v65 = sub_10000321C(&qword_10043D418, &qword_1002E0D28);
  v77 = *(v65 - 8);
  v5 = __chkstk_darwin(v65);
  v64 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v63 = &v46 - v7;
  v57 = sub_10000321C(&qword_10043D420, &qword_1002E0D30);
  v76 = *(v57 - 8);
  v8 = __chkstk_darwin(v57);
  v70 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v46 - v10;
  v69 = sub_10000321C(&qword_10043D428, &qword_1002E0D38);
  v75 = *(v69 - 8);
  v12 = __chkstk_darwin(v69);
  v68 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v46 - v14;
  v66 = sub_10000321C(&qword_10043D430, &qword_1002E0D40);
  v74 = *(v66 - 8);
  v16 = __chkstk_darwin(v66);
  v67 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v46 - v18;
  v20 = sub_10000321C(&qword_10043D438, &qword_1002E0D48);
  v61 = v20;
  v56 = *(v20 - 8);
  v21 = v56;
  v22 = __chkstk_darwin(v20);
  v24 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v24;
  __chkstk_darwin(v22);
  v26 = &v46 - v25;
  sub_10002ACF0();
  v55 = v26;
  sub_1002D8AE0();
  sub_10002AD6C();
  v54 = v19;
  sub_1002D8AE0();
  sub_10002ADE8();
  v53 = v15;
  sub_1002D8AE0();
  sub_10002AE64();
  v52 = v11;
  sub_1002D8AE0();
  sub_10002AEE0();
  v27 = v63;
  sub_1002D8AE0();
  sub_10002C83C();
  sub_1002D8AE0();
  v51 = *(v21 + 16);
  v51(v24, v26, v20);
  v50 = *(v74 + 16);
  v50(v67, v19, v66);
  v49 = *(v75 + 16);
  v49(v68, v15, v69);
  v48 = *(v76 + 16);
  v28 = v57;
  v48(v70, v11, v57);
  v47 = *(v77 + 16);
  v29 = v64;
  v30 = v27;
  v31 = v65;
  v47(v64, v30, v65);
  v46 = *(v78 + 16);
  v46(v73, v71, v72);
  v32 = v58;
  v51(v58, v62, v61);
  v33 = v59;
  v50(&v32[*(v59 + 48)], v67, v66);
  v49(&v32[v33[16]], v68, v69);
  v48(&v32[v33[20]], v70, v28);
  v47(&v32[v33[24]], v29, v31);
  v34 = v72;
  v46(&v32[v33[28]], v73, v72);
  sub_1002D8A30();
  v35 = *(v78 + 8);
  v78 += 8;
  v60 = v35;
  v35(v71, v34);
  v36 = *(v77 + 8);
  v77 += 8;
  v36(v63, v31);
  v37 = *(v76 + 8);
  v76 += 8;
  v38 = v28;
  v37(v52, v28);
  v39 = *(v75 + 8);
  v75 += 8;
  v40 = v69;
  v39(v53, v69);
  v41 = *(v74 + 8);
  v74 += 8;
  v42 = v66;
  v41(v54, v66);
  v43 = *(v56 + 8);
  v44 = v61;
  v43(v55, v61);
  v60(v73, v72);
  v36(v64, v65);
  v37(v70, v38);
  v39(v68, v40);
  v41(v67, v42);
  return (v43)(v62, v44);
}

unint64_t sub_10002C83C()
{
  result = qword_10043D440;
  if (!qword_10043D440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043D440);
  }

  return result;
}

unint64_t sub_10002C894()
{
  result = qword_10043E998;
  if (!qword_10043E998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10043E998);
  }

  return result;
}

uint64_t sub_10002C8E8@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v35 = sub_1002D8910();
  v44 = *(v35 - 8);
  v1 = __chkstk_darwin(v35);
  v43 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v4 = &v33 - v3;
  v5 = sub_10000321C(&qword_100444500, &qword_1002F5408);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v33 - v7;
  v9 = sub_10000321C(&qword_100444508, &qword_1002F5410);
  v36 = *(v9 - 8);
  v37 = v9;
  __chkstk_darwin(v9);
  v46 = &v33 - v10;
  v42 = sub_10000321C(&qword_100444510, &qword_1002F5418);
  v39 = *(v42 - 8);
  __chkstk_darwin(v42);
  v12 = &v33 - v11;
  v13 = sub_10000321C(&qword_100444518, &qword_1002F5420);
  v40 = *(v13 - 8);
  v41 = v13;
  __chkstk_darwin(v13);
  v38 = &v33 - v14;
  v47 = 0;
  v48 = 0xE000000000000000;
  sub_1002D8E00(33);

  v47 = 0xD000000000000018;
  v48 = 0x8000000100355CF0;
  v15 = qword_10043D448;
  v16 = off_10043D450;

  v49._countAndFlagsBits = v15;
  v49._object = v16;
  sub_1002D8D50(v49);

  v50._countAndFlagsBits = 0x6E6F747475622ELL;
  v50._object = 0xE700000000000000;
  sub_1002D8D50(v50);
  sub_10000321C(&qword_100444520, &unk_1002F5428);
  sub_10002B6E4(&qword_100444528, &qword_100444520, &unk_1002F5428, &protocol conformance descriptor for ControlWidgetToggle<A, B, C>);
  sub_1002D8CA0();
  if (qword_100438FC8 != -1)
  {
    swift_once();
  }

  v17 = sub_10002B6E4(&qword_100444530, &qword_100444500, &qword_1002F5408, &protocol conformance descriptor for StaticControlConfiguration<A>);
  sub_1002D8B20();
  (*(v6 + 8))(v8, v5);
  if (qword_100438FC0 != -1)
  {
    swift_once();
  }

  v18 = v35;
  v19 = sub_10001EDB8(v35, qword_10051A168);
  v20 = v44;
  v21 = *(v44 + 16);
  v21(v4, v19, v18);
  v47 = v5;
  v48 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = v12;
  v23 = v37;
  v24 = v46;
  sub_1002D8B00();
  v25 = *(v20 + 8);
  v25(v4, v18);
  (*(v36 + 8))(v24, v23);
  v47 = 0;
  v48 = 0xE000000000000000;
  v51._countAndFlagsBits = 0x206E6F206E727554;
  v51._object = 0xE800000000000000;
  sub_1002D8D50(v51);
  v26 = v43;
  v21(v43, v19, v18);
  sub_1002D8E10();
  v25(v26, v18);
  sub_1002D88F0();
  v47 = v23;
  v48 = OpaqueTypeConformance2;
  v27 = swift_getOpaqueTypeConformance2();
  v28 = v38;
  v29 = v42;
  v30 = v34;
  sub_1002D8AF0();
  v25(v4, v18);
  (*(v39 + 8))(v30, v29);
  v47 = v29;
  v48 = v27;
  swift_getOpaqueTypeConformance2();
  v31 = v41;
  sub_1002D8B10();
  return (*(v40 + 8))(v28, v31);
}

uint64_t sub_10002CF9C@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v35 = sub_1002D8910();
  v44 = *(v35 - 8);
  v1 = __chkstk_darwin(v35);
  v43 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v4 = &v33 - v3;
  v5 = sub_10000321C(&qword_100444588, &qword_1002F5468);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v33 - v7;
  v9 = sub_10000321C(&qword_100444590, &qword_1002F5470);
  v36 = *(v9 - 8);
  v37 = v9;
  __chkstk_darwin(v9);
  v46 = &v33 - v10;
  v42 = sub_10000321C(&qword_100444598, &qword_1002F5478);
  v39 = *(v42 - 8);
  __chkstk_darwin(v42);
  v12 = &v33 - v11;
  v13 = sub_10000321C(&qword_1004445A0, &qword_1002F5480);
  v40 = *(v13 - 8);
  v41 = v13;
  __chkstk_darwin(v13);
  v38 = &v33 - v14;
  v47 = 0;
  v48 = 0xE000000000000000;
  sub_1002D8E00(33);

  v47 = 0xD000000000000018;
  v48 = 0x8000000100355CF0;
  v15 = qword_10043D4A8;
  v16 = off_10043D4B0;

  v49._countAndFlagsBits = v15;
  v49._object = v16;
  sub_1002D8D50(v49);

  v50._countAndFlagsBits = 0x6E6F747475622ELL;
  v50._object = 0xE700000000000000;
  sub_1002D8D50(v50);
  sub_10000321C(&qword_1004445A8, &qword_1002F5488);
  sub_10002B6E4(&qword_1004445B0, &qword_1004445A8, &qword_1002F5488, &protocol conformance descriptor for ControlWidgetToggle<A, B, C>);
  sub_1002D8CA0();
  if (qword_100439018 != -1)
  {
    swift_once();
  }

  v17 = sub_10002B6E4(&qword_1004445B8, &qword_100444588, &qword_1002F5468, &protocol conformance descriptor for StaticControlConfiguration<A>);
  sub_1002D8B20();
  (*(v6 + 8))(v8, v5);
  if (qword_100439010 != -1)
  {
    swift_once();
  }

  v18 = v35;
  v19 = sub_10001EDB8(v35, qword_10051A218);
  v20 = v44;
  v21 = *(v44 + 16);
  v21(v4, v19, v18);
  v47 = v5;
  v48 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = v12;
  v23 = v37;
  v24 = v46;
  sub_1002D8B00();
  v25 = *(v20 + 8);
  v25(v4, v18);
  (*(v36 + 8))(v24, v23);
  v47 = 0;
  v48 = 0xE000000000000000;
  v51._countAndFlagsBits = 0x206E6F206E727554;
  v51._object = 0xE800000000000000;
  sub_1002D8D50(v51);
  v26 = v43;
  v21(v43, v19, v18);
  sub_1002D8E10();
  v25(v26, v18);
  sub_1002D88F0();
  v47 = v23;
  v48 = OpaqueTypeConformance2;
  v27 = swift_getOpaqueTypeConformance2();
  v28 = v38;
  v29 = v42;
  v30 = v34;
  sub_1002D8AF0();
  v25(v4, v18);
  (*(v39 + 8))(v30, v29);
  v47 = v29;
  v48 = v27;
  swift_getOpaqueTypeConformance2();
  v31 = v41;
  sub_1002D8B10();
  return (*(v40 + 8))(v28, v31);
}

uint64_t sub_10002D650@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v35 = sub_1002D8910();
  v44 = *(v35 - 8);
  v1 = __chkstk_darwin(v35);
  v43 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v33 = &v32 - v3;
  v4 = sub_10000321C(&qword_1004445C0, &qword_1002F5490);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v32 - v6;
  v38 = sub_10000321C(&qword_1004445C8, &qword_1002F5498);
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v9 = &v32 - v8;
  v42 = sub_10000321C(&qword_1004445D0, &qword_1002F54A0);
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v11 = &v32 - v10;
  v41 = sub_10000321C(&qword_1004445D8, &qword_1002F54A8);
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v37 = &v32 - v12;
  v46 = 0;
  v47 = 0xE000000000000000;
  sub_1002D8E00(33);

  v46 = 0xD000000000000018;
  v47 = 0x8000000100355CF0;
  v13 = qword_10043D4C8;
  v14 = off_10043D4D0;

  v48._countAndFlagsBits = v13;
  v48._object = v14;
  sub_1002D8D50(v48);

  v49._countAndFlagsBits = 0x6E6F747475622ELL;
  v49._object = 0xE700000000000000;
  sub_1002D8D50(v49);
  sub_10000321C(&qword_1004445E0, &qword_1002F54B0);
  sub_10002B6E4(&qword_1004445E8, &qword_1004445E0, &qword_1002F54B0, &protocol conformance descriptor for ControlWidgetToggle<A, B, C>);
  sub_1002D8CA0();
  v15 = sub_10002B6E4(&qword_1004445F0, &qword_1004445C0, &qword_1002F5490, &protocol conformance descriptor for StaticControlConfiguration<A>);
  v34 = v9;
  sub_1002D8B20();
  (*(v5 + 8))(v7, v4);
  if (qword_100439030 != -1)
  {
    swift_once();
  }

  v16 = v35;
  v17 = sub_10001EDB8(v35, qword_10051A258);
  v18 = v44;
  v19 = *(v44 + 16);
  v20 = v33;
  v19(v33, v17, v16);
  v46 = v4;
  v47 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = v11;
  v22 = v38;
  v23 = v34;
  sub_1002D8B00();
  v24 = *(v18 + 8);
  v24(v20, v16);
  (*(v36 + 8))(v23, v22);
  v46 = 0;
  v47 = 0xE000000000000000;
  v50._countAndFlagsBits = 0x206E6F206E727554;
  v50._object = 0xE800000000000000;
  sub_1002D8D50(v50);
  v25 = v43;
  v19(v43, v17, v16);
  sub_1002D8E10();
  v24(v25, v16);
  sub_1002D88F0();
  v46 = v22;
  v47 = OpaqueTypeConformance2;
  v26 = swift_getOpaqueTypeConformance2();
  v27 = v37;
  v28 = v42;
  v29 = v32;
  sub_1002D8AF0();
  v24(v20, v16);
  (*(v40 + 8))(v29, v28);
  v46 = v28;
  v47 = v26;
  swift_getOpaqueTypeConformance2();
  v30 = v41;
  sub_1002D8B10();
  return (*(v39 + 8))(v27, v30);
}

uint64_t sub_10002DCD8@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v35 = sub_1002D8910();
  v44 = *(v35 - 8);
  v1 = __chkstk_darwin(v35);
  v43 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v33 = &v32 - v3;
  v4 = sub_10000321C(&qword_100444AD0, &qword_1002F57A0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v32 - v6;
  v38 = sub_10000321C(&qword_100444AD8, &qword_1002F57A8);
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v9 = &v32 - v8;
  v42 = sub_10000321C(&qword_100444AE0, &qword_1002F57B0);
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v11 = &v32 - v10;
  v41 = sub_10000321C(&qword_100444AE8, &qword_1002F57B8);
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v37 = &v32 - v12;
  v46 = 0;
  v47 = 0xE000000000000000;
  sub_1002D8E00(33);

  v46 = 0xD000000000000018;
  v47 = 0x8000000100355CF0;
  v13 = qword_10043D8F8;
  v14 = off_10043D900;

  v48._countAndFlagsBits = v13;
  v48._object = v14;
  sub_1002D8D50(v48);

  v49._countAndFlagsBits = 0x6E6F747475622ELL;
  v49._object = 0xE700000000000000;
  sub_1002D8D50(v49);
  sub_10000321C(&qword_100444AF0, &qword_1002F57C0);
  sub_10002B6E4(&qword_100444AF8, &qword_100444AF0, &qword_1002F57C0, &protocol conformance descriptor for ControlWidgetToggle<A, B, C>);
  sub_1002D8CA0();
  v15 = sub_10002B6E4(&qword_100444B00, &qword_100444AD0, &qword_1002F57A0, &protocol conformance descriptor for StaticControlConfiguration<A>);
  v34 = v9;
  sub_1002D8B20();
  (*(v5 + 8))(v7, v4);
  if (qword_100439360 != -1)
  {
    swift_once();
  }

  v16 = v35;
  v17 = sub_10001EDB8(v35, qword_10051A9A0);
  v18 = v44;
  v19 = *(v44 + 16);
  v20 = v33;
  v19(v33, v17, v16);
  v46 = v4;
  v47 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = v11;
  v22 = v38;
  v23 = v34;
  sub_1002D8B00();
  v24 = *(v18 + 8);
  v24(v20, v16);
  (*(v36 + 8))(v23, v22);
  v46 = 0;
  v47 = 0xE000000000000000;
  v50._countAndFlagsBits = 0x206E6F206E727554;
  v50._object = 0xE800000000000000;
  sub_1002D8D50(v50);
  v25 = v43;
  v19(v43, v17, v16);
  sub_1002D8E10();
  v24(v25, v16);
  sub_1002D88F0();
  v46 = v22;
  v47 = OpaqueTypeConformance2;
  v26 = swift_getOpaqueTypeConformance2();
  v27 = v37;
  v28 = v42;
  v29 = v32;
  sub_1002D8AF0();
  v24(v20, v16);
  (*(v40 + 8))(v29, v28);
  v46 = v28;
  v47 = v26;
  swift_getOpaqueTypeConformance2();
  v30 = v41;
  sub_1002D8B10();
  return (*(v39 + 8))(v27, v30);
}

uint64_t sub_10002E360@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v35 = sub_1002D8910();
  v44 = *(v35 - 8);
  v1 = __chkstk_darwin(v35);
  v43 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v33 = &v32 - v3;
  v4 = sub_10000321C(&qword_100444B08, &qword_1002F57C8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v32 - v6;
  v38 = sub_10000321C(&qword_100444B10, &qword_1002F57D0);
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v9 = &v32 - v8;
  v42 = sub_10000321C(&qword_100444B18, &qword_1002F57D8);
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v11 = &v32 - v10;
  v41 = sub_10000321C(&qword_100444B20, &qword_1002F57E0);
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v37 = &v32 - v12;
  v46 = 0;
  v47 = 0xE000000000000000;
  sub_1002D8E00(33);

  v46 = 0xD000000000000018;
  v47 = 0x8000000100355CF0;
  v13 = qword_10043D918;
  v14 = off_10043D920;

  v48._countAndFlagsBits = v13;
  v48._object = v14;
  sub_1002D8D50(v48);

  v49._countAndFlagsBits = 0x6E6F747475622ELL;
  v49._object = 0xE700000000000000;
  sub_1002D8D50(v49);
  sub_10000321C(&qword_100444B28, &qword_1002F57E8);
  sub_10002B6E4(&qword_100444B30, &qword_100444B28, &qword_1002F57E8, &protocol conformance descriptor for ControlWidgetToggle<A, B, C>);
  sub_1002D8CA0();
  v15 = sub_10002B6E4(&qword_100444B38, &qword_100444B08, &qword_1002F57C8, &protocol conformance descriptor for StaticControlConfiguration<A>);
  v34 = v9;
  sub_1002D8B20();
  (*(v5 + 8))(v7, v4);
  if (qword_100439378 != -1)
  {
    swift_once();
  }

  v16 = v35;
  v17 = sub_10001EDB8(v35, qword_10051A9D8);
  v18 = v44;
  v19 = *(v44 + 16);
  v20 = v33;
  v19(v33, v17, v16);
  v46 = v4;
  v47 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = v11;
  v22 = v38;
  v23 = v34;
  sub_1002D8B00();
  v24 = *(v18 + 8);
  v24(v20, v16);
  (*(v36 + 8))(v23, v22);
  v46 = 0;
  v47 = 0xE000000000000000;
  v50._countAndFlagsBits = 0x206E6F206E727554;
  v50._object = 0xE800000000000000;
  sub_1002D8D50(v50);
  v25 = v43;
  v19(v43, v17, v16);
  sub_1002D8E10();
  v24(v25, v16);
  sub_1002D88F0();
  v46 = v22;
  v47 = OpaqueTypeConformance2;
  v26 = swift_getOpaqueTypeConformance2();
  v27 = v37;
  v28 = v42;
  v29 = v32;
  sub_1002D8AF0();
  v24(v20, v16);
  (*(v40 + 8))(v29, v28);
  v46 = v28;
  v47 = v26;
  swift_getOpaqueTypeConformance2();
  v30 = v41;
  sub_1002D8B10();
  return (*(v39 + 8))(v27, v30);
}

uint64_t sub_10002E9E8@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v35 = sub_1002D8910();
  v44 = *(v35 - 8);
  v1 = __chkstk_darwin(v35);
  v43 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v33 = &v32 - v3;
  v4 = sub_10000321C(&qword_100444B90, &qword_1002F5820);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v32 - v6;
  v38 = sub_10000321C(&qword_100444B98, &qword_1002F5828);
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v9 = &v32 - v8;
  v42 = sub_10000321C(&qword_100444BA0, &qword_1002F5830);
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v11 = &v32 - v10;
  v41 = sub_10000321C(&qword_100444BA8, &qword_1002F5838);
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v37 = &v32 - v12;
  v46 = 0;
  v47 = 0xE000000000000000;
  sub_1002D8E00(33);

  v46 = 0xD000000000000018;
  v47 = 0x8000000100355CF0;
  v13 = qword_10043D978;
  v14 = off_10043D980;

  v48._countAndFlagsBits = v13;
  v48._object = v14;
  sub_1002D8D50(v48);

  v49._countAndFlagsBits = 0x6E6F747475622ELL;
  v49._object = 0xE700000000000000;
  sub_1002D8D50(v49);
  sub_10000321C(&qword_100444BB0, &qword_1002F5840);
  sub_10002B6E4(&qword_100444BB8, &qword_100444BB0, &qword_1002F5840, &protocol conformance descriptor for ControlWidgetToggle<A, B, C>);
  sub_1002D8CA0();
  v15 = sub_10002B6E4(&qword_100444BC0, &qword_100444B90, &qword_1002F5820, &protocol conformance descriptor for StaticControlConfiguration<A>);
  v34 = v9;
  sub_1002D8B20();
  (*(v5 + 8))(v7, v4);
  if (qword_1004393C0 != -1)
  {
    swift_once();
  }

  v16 = v35;
  v17 = sub_10001EDB8(v35, qword_10051AA80);
  v18 = v44;
  v19 = *(v44 + 16);
  v20 = v33;
  v19(v33, v17, v16);
  v46 = v4;
  v47 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = v11;
  v22 = v38;
  v23 = v34;
  sub_1002D8B00();
  v24 = *(v18 + 8);
  v24(v20, v16);
  (*(v36 + 8))(v23, v22);
  v46 = 0;
  v47 = 0xE000000000000000;
  v50._countAndFlagsBits = 0x206E6F206E727554;
  v50._object = 0xE800000000000000;
  sub_1002D8D50(v50);
  v25 = v43;
  v19(v43, v17, v16);
  sub_1002D8E10();
  v24(v25, v16);
  sub_1002D88F0();
  v46 = v22;
  v47 = OpaqueTypeConformance2;
  v26 = swift_getOpaqueTypeConformance2();
  v27 = v37;
  v28 = v42;
  v29 = v32;
  sub_1002D8AF0();
  v24(v20, v16);
  (*(v40 + 8))(v29, v28);
  v46 = v28;
  v47 = v26;
  swift_getOpaqueTypeConformance2();
  v30 = v41;
  sub_1002D8B10();
  return (*(v39 + 8))(v27, v30);
}

uint64_t sub_10002F070@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v35 = sub_1002D8910();
  v44 = *(v35 - 8);
  v1 = __chkstk_darwin(v35);
  v43 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v33 = &v32 - v3;
  v4 = sub_10000321C(&qword_100444BC8, &qword_1002F5848);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v32 - v6;
  v38 = sub_10000321C(&qword_100444BD0, &qword_1002F5850);
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v9 = &v32 - v8;
  v42 = sub_10000321C(&qword_100444BD8, &qword_1002F5858);
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v11 = &v32 - v10;
  v41 = sub_10000321C(&qword_100444BE0, &qword_1002F5860);
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v37 = &v32 - v12;
  v46 = 0;
  v47 = 0xE000000000000000;
  sub_1002D8E00(33);

  v46 = 0xD000000000000018;
  v47 = 0x8000000100355CF0;
  v13 = qword_10043D998;
  v14 = off_10043D9A0;

  v48._countAndFlagsBits = v13;
  v48._object = v14;
  sub_1002D8D50(v48);

  v49._countAndFlagsBits = 0x6E6F747475622ELL;
  v49._object = 0xE700000000000000;
  sub_1002D8D50(v49);
  sub_10000321C(&qword_100444BE8, &qword_1002F5868);
  sub_10002B6E4(&qword_100444BF0, &qword_100444BE8, &qword_1002F5868, &protocol conformance descriptor for ControlWidgetToggle<A, B, C>);
  sub_1002D8CA0();
  v15 = sub_10002B6E4(&qword_100444BF8, &qword_100444BC8, &qword_1002F5848, &protocol conformance descriptor for StaticControlConfiguration<A>);
  v34 = v9;
  sub_1002D8B20();
  (*(v5 + 8))(v7, v4);
  if (qword_1004393D8 != -1)
  {
    swift_once();
  }

  v16 = v35;
  v17 = sub_10001EDB8(v35, qword_10051AAB8);
  v18 = v44;
  v19 = *(v44 + 16);
  v20 = v33;
  v19(v33, v17, v16);
  v46 = v4;
  v47 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = v11;
  v22 = v38;
  v23 = v34;
  sub_1002D8B00();
  v24 = *(v18 + 8);
  v24(v20, v16);
  (*(v36 + 8))(v23, v22);
  v46 = 0;
  v47 = 0xE000000000000000;
  v50._countAndFlagsBits = 0x206E6F206E727554;
  v50._object = 0xE800000000000000;
  sub_1002D8D50(v50);
  v25 = v43;
  v19(v43, v17, v16);
  sub_1002D8E10();
  v24(v25, v16);
  sub_1002D88F0();
  v46 = v22;
  v47 = OpaqueTypeConformance2;
  v26 = swift_getOpaqueTypeConformance2();
  v27 = v37;
  v28 = v42;
  v29 = v32;
  sub_1002D8AF0();
  v24(v20, v16);
  (*(v40 + 8))(v29, v28);
  v46 = v28;
  v47 = v26;
  swift_getOpaqueTypeConformance2();
  v30 = v41;
  sub_1002D8B10();
  return (*(v39 + 8))(v27, v30);
}

uint64_t sub_10002F6F8@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v35 = sub_1002D8910();
  v44 = *(v35 - 8);
  v1 = __chkstk_darwin(v35);
  v43 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v33 = &v32 - v3;
  v4 = sub_10000321C(&qword_100444C28, &qword_1002F5888);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v32 - v6;
  v38 = sub_10000321C(&qword_100444C30, &qword_1002F5890);
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v9 = &v32 - v8;
  v42 = sub_10000321C(&qword_100444C38, &qword_1002F5898);
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v11 = &v32 - v10;
  v41 = sub_10000321C(&qword_100444C40, &qword_1002F58A0);
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v37 = &v32 - v12;
  v46 = 0;
  v47 = 0xE000000000000000;
  sub_1002D8E00(33);

  v46 = 0xD000000000000018;
  v47 = 0x8000000100355CF0;
  v13 = qword_10043D9D8;
  v14 = off_10043D9E0;

  v48._countAndFlagsBits = v13;
  v48._object = v14;
  sub_1002D8D50(v48);

  v49._countAndFlagsBits = 0x6E6F747475622ELL;
  v49._object = 0xE700000000000000;
  sub_1002D8D50(v49);
  sub_10000321C(&qword_100444C48, &qword_1002F58A8);
  sub_10002B6E4(&qword_100444C50, &qword_100444C48, &qword_1002F58A8, &protocol conformance descriptor for ControlWidgetToggle<A, B, C>);
  sub_1002D8CA0();
  v15 = sub_10002B6E4(&qword_100444C58, &qword_100444C28, &qword_1002F5888, &protocol conformance descriptor for StaticControlConfiguration<A>);
  v34 = v9;
  sub_1002D8B20();
  (*(v5 + 8))(v7, v4);
  if (qword_100439408 != -1)
  {
    swift_once();
  }

  v16 = v35;
  v17 = sub_10001EDB8(v35, qword_10051AB28);
  v18 = v44;
  v19 = *(v44 + 16);
  v20 = v33;
  v19(v33, v17, v16);
  v46 = v4;
  v47 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = v11;
  v22 = v38;
  v23 = v34;
  sub_1002D8B00();
  v24 = *(v18 + 8);
  v24(v20, v16);
  (*(v36 + 8))(v23, v22);
  v46 = 0;
  v47 = 0xE000000000000000;
  v50._countAndFlagsBits = 0x206E6F206E727554;
  v50._object = 0xE800000000000000;
  sub_1002D8D50(v50);
  v25 = v43;
  v19(v43, v17, v16);
  sub_1002D8E10();
  v24(v25, v16);
  sub_1002D88F0();
  v46 = v22;
  v47 = OpaqueTypeConformance2;
  v26 = swift_getOpaqueTypeConformance2();
  v27 = v37;
  v28 = v42;
  v29 = v32;
  sub_1002D8AF0();
  v24(v20, v16);
  (*(v40 + 8))(v29, v28);
  v46 = v28;
  v47 = v26;
  swift_getOpaqueTypeConformance2();
  v30 = v41;
  sub_1002D8B10();
  return (*(v39 + 8))(v27, v30);
}

uint64_t sub_10002FD80@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v35 = sub_1002D8910();
  v44 = *(v35 - 8);
  v1 = __chkstk_darwin(v35);
  v43 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v33 = &v32 - v3;
  v4 = sub_10000321C(&qword_100444C60, &qword_1002F58B0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v32 - v6;
  v38 = sub_10000321C(&qword_100444C68, &qword_1002F58B8);
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v9 = &v32 - v8;
  v42 = sub_10000321C(&qword_100444C70, &qword_1002F58C0);
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v11 = &v32 - v10;
  v41 = sub_10000321C(&qword_100444C78, &qword_1002F58C8);
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v37 = &v32 - v12;
  v46 = 0;
  v47 = 0xE000000000000000;
  sub_1002D8E00(33);

  v46 = 0xD000000000000018;
  v47 = 0x8000000100355CF0;
  v13 = qword_10043D9F8;
  v14 = off_10043DA00;

  v48._countAndFlagsBits = v13;
  v48._object = v14;
  sub_1002D8D50(v48);

  v49._countAndFlagsBits = 0x6E6F747475622ELL;
  v49._object = 0xE700000000000000;
  sub_1002D8D50(v49);
  sub_10000321C(&qword_100444C80, &qword_1002F58D0);
  sub_10002B6E4(&qword_100444C88, &qword_100444C80, &qword_1002F58D0, &protocol conformance descriptor for ControlWidgetToggle<A, B, C>);
  sub_1002D8CA0();
  v15 = sub_10002B6E4(&qword_100444C90, &qword_100444C60, &qword_1002F58B0, &protocol conformance descriptor for StaticControlConfiguration<A>);
  v34 = v9;
  sub_1002D8B20();
  (*(v5 + 8))(v7, v4);
  if (qword_100439420 != -1)
  {
    swift_once();
  }

  v16 = v35;
  v17 = sub_10001EDB8(v35, qword_10051AB60);
  v18 = v44;
  v19 = *(v44 + 16);
  v20 = v33;
  v19(v33, v17, v16);
  v46 = v4;
  v47 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = v11;
  v22 = v38;
  v23 = v34;
  sub_1002D8B00();
  v24 = *(v18 + 8);
  v24(v20, v16);
  (*(v36 + 8))(v23, v22);
  v46 = 0;
  v47 = 0xE000000000000000;
  v50._countAndFlagsBits = 0x206E6F206E727554;
  v50._object = 0xE800000000000000;
  sub_1002D8D50(v50);
  v25 = v43;
  v19(v43, v17, v16);
  sub_1002D8E10();
  v24(v25, v16);
  sub_1002D88F0();
  v46 = v22;
  v47 = OpaqueTypeConformance2;
  v26 = swift_getOpaqueTypeConformance2();
  v27 = v37;
  v28 = v42;
  v29 = v32;
  sub_1002D8AF0();
  v24(v20, v16);
  (*(v40 + 8))(v29, v28);
  v46 = v28;
  v47 = v26;
  swift_getOpaqueTypeConformance2();
  v30 = v41;
  sub_1002D8B10();
  return (*(v39 + 8))(v27, v30);
}

uint64_t sub_100030408@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v35 = sub_1002D8910();
  v44 = *(v35 - 8);
  v1 = __chkstk_darwin(v35);
  v43 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v4 = &v33 - v3;
  v5 = sub_10000321C(&qword_100444C98, &qword_1002F58D8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v33 - v7;
  v9 = sub_10000321C(&qword_100444CA0, &qword_1002F58E0);
  v36 = *(v9 - 8);
  v37 = v9;
  __chkstk_darwin(v9);
  v46 = &v33 - v10;
  v42 = sub_10000321C(&qword_100444CA8, &qword_1002F58E8);
  v39 = *(v42 - 8);
  __chkstk_darwin(v42);
  v12 = &v33 - v11;
  v13 = sub_10000321C(&qword_100444CB0, &qword_1002F58F0);
  v40 = *(v13 - 8);
  v41 = v13;
  __chkstk_darwin(v13);
  v38 = &v33 - v14;
  v47 = 0;
  v48 = 0xE000000000000000;
  sub_1002D8E00(33);

  v47 = 0xD000000000000018;
  v48 = 0x8000000100355CF0;
  v15 = qword_10043DA28;
  v16 = off_10043DA30;

  v49._countAndFlagsBits = v15;
  v49._object = v16;
  sub_1002D8D50(v49);

  v50._countAndFlagsBits = 0x6E6F747475622ELL;
  v50._object = 0xE700000000000000;
  sub_1002D8D50(v50);
  sub_10000321C(&qword_100444CB8, &qword_1002F58F8);
  sub_10002B6E4(&qword_100444CC0, &qword_100444CB8, &qword_1002F58F8, &protocol conformance descriptor for ControlWidgetToggle<A, B, C>);
  sub_1002D8CA0();
  if (qword_100439450 != -1)
  {
    swift_once();
  }

  v17 = sub_10002B6E4(&qword_100444CC8, &qword_100444C98, &qword_1002F58D8, &protocol conformance descriptor for StaticControlConfiguration<A>);
  sub_1002D8B20();
  (*(v6 + 8))(v8, v5);
  if (qword_100439448 != -1)
  {
    swift_once();
  }

  v18 = v35;
  v19 = sub_10001EDB8(v35, qword_10051ABB0);
  v20 = v44;
  v21 = *(v44 + 16);
  v21(v4, v19, v18);
  v47 = v5;
  v48 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = v12;
  v23 = v37;
  v24 = v46;
  sub_1002D8B00();
  v25 = *(v20 + 8);
  v25(v4, v18);
  (*(v36 + 8))(v24, v23);
  v47 = 0;
  v48 = 0xE000000000000000;
  v51._countAndFlagsBits = 0x206E6F206E727554;
  v51._object = 0xE800000000000000;
  sub_1002D8D50(v51);
  v26 = v43;
  v21(v43, v19, v18);
  sub_1002D8E10();
  v25(v26, v18);
  sub_1002D88F0();
  v47 = v23;
  v48 = OpaqueTypeConformance2;
  v27 = swift_getOpaqueTypeConformance2();
  v28 = v38;
  v29 = v42;
  v30 = v34;
  sub_1002D8AF0();
  v25(v4, v18);
  (*(v39 + 8))(v30, v29);
  v47 = v29;
  v48 = v27;
  swift_getOpaqueTypeConformance2();
  v31 = v41;
  sub_1002D8B10();
  return (*(v40 + 8))(v28, v31);
}

uint64_t sub_100030ABC@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v35 = sub_1002D8910();
  v44 = *(v35 - 8);
  v1 = __chkstk_darwin(v35);
  v43 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v4 = &v33 - v3;
  v5 = sub_10000321C(&qword_100444CF8, &qword_1002F5918);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v33 - v7;
  v9 = sub_10000321C(&qword_100444D00, &qword_1002F5920);
  v36 = *(v9 - 8);
  v37 = v9;
  __chkstk_darwin(v9);
  v46 = &v33 - v10;
  v42 = sub_10000321C(&qword_100444D08, &qword_1002F5928);
  v39 = *(v42 - 8);
  __chkstk_darwin(v42);
  v12 = &v33 - v11;
  v13 = sub_10000321C(&qword_100444D10, &qword_1002F5930);
  v40 = *(v13 - 8);
  v41 = v13;
  __chkstk_darwin(v13);
  v38 = &v33 - v14;
  v47 = 0;
  v48 = 0xE000000000000000;
  sub_1002D8E00(33);

  v47 = 0xD000000000000018;
  v48 = 0x8000000100355CF0;
  v15 = qword_10043DA68;
  v16 = off_10043DA70;

  v49._countAndFlagsBits = v15;
  v49._object = v16;
  sub_1002D8D50(v49);

  v50._countAndFlagsBits = 0x6E6F747475622ELL;
  v50._object = 0xE700000000000000;
  sub_1002D8D50(v50);
  sub_10000321C(&qword_100444D18, &qword_1002F5938);
  sub_10002B6E4(&qword_100444D20, &qword_100444D18, &qword_1002F5938, &protocol conformance descriptor for ControlWidgetToggle<A, B, C>);
  sub_1002D8CA0();
  if (qword_100439488 != -1)
  {
    swift_once();
  }

  v17 = sub_10002B6E4(&qword_100444D28, &qword_100444CF8, &qword_1002F5918, &protocol conformance descriptor for StaticControlConfiguration<A>);
  sub_1002D8B20();
  (*(v6 + 8))(v8, v5);
  if (qword_100439480 != -1)
  {
    swift_once();
  }

  v18 = v35;
  v19 = sub_10001EDB8(v35, qword_10051AC28);
  v20 = v44;
  v21 = *(v44 + 16);
  v21(v4, v19, v18);
  v47 = v5;
  v48 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = v12;
  v23 = v37;
  v24 = v46;
  sub_1002D8B00();
  v25 = *(v20 + 8);
  v25(v4, v18);
  (*(v36 + 8))(v24, v23);
  v47 = 0;
  v48 = 0xE000000000000000;
  v51._countAndFlagsBits = 0x206E6F206E727554;
  v51._object = 0xE800000000000000;
  sub_1002D8D50(v51);
  v26 = v43;
  v21(v43, v19, v18);
  sub_1002D8E10();
  v25(v26, v18);
  sub_1002D88F0();
  v47 = v23;
  v48 = OpaqueTypeConformance2;
  v27 = swift_getOpaqueTypeConformance2();
  v28 = v38;
  v29 = v42;
  v30 = v34;
  sub_1002D8AF0();
  v25(v4, v18);
  (*(v39 + 8))(v30, v29);
  v47 = v29;
  v48 = v27;
  swift_getOpaqueTypeConformance2();
  v31 = v41;
  sub_1002D8B10();
  return (*(v40 + 8))(v28, v31);
}

uint64_t sub_100031170@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v35 = sub_1002D8910();
  v44 = *(v35 - 8);
  v1 = __chkstk_darwin(v35);
  v43 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v33 = &v32 - v3;
  v4 = sub_10000321C(&qword_100444E98, &qword_1002F5A18);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v32 - v6;
  v38 = sub_10000321C(&qword_100444EA0, &qword_1002F5A20);
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v9 = &v32 - v8;
  v42 = sub_10000321C(&qword_100444EA8, &qword_1002F5A28);
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v11 = &v32 - v10;
  v41 = sub_10000321C(&qword_100444EB0, &qword_1002F5A30);
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v37 = &v32 - v12;
  v46 = 0;
  v47 = 0xE000000000000000;
  sub_1002D8E00(33);

  v46 = 0xD000000000000018;
  v47 = 0x8000000100355CF0;
  v13 = qword_10043DBA8;
  v14 = off_10043DBB0;

  v48._countAndFlagsBits = v13;
  v48._object = v14;
  sub_1002D8D50(v48);

  v49._countAndFlagsBits = 0x6E6F747475622ELL;
  v49._object = 0xE700000000000000;
  sub_1002D8D50(v49);
  sub_10000321C(&qword_100444EB8, &qword_1002F5A38);
  sub_10002B6E4(&qword_100444EC0, &qword_100444EB8, &qword_1002F5A38, &protocol conformance descriptor for ControlWidgetToggle<A, B, C>);
  sub_1002D8CA0();
  v15 = sub_10002B6E4(&qword_100444EC8, &qword_100444E98, &qword_1002F5A18, &protocol conformance descriptor for StaticControlConfiguration<A>);
  v34 = v9;
  sub_1002D8B20();
  (*(v5 + 8))(v7, v4);
  if (qword_100439578 != -1)
  {
    swift_once();
  }

  v16 = v35;
  v17 = sub_10001EDB8(v35, qword_10051AE60);
  v18 = v44;
  v19 = *(v44 + 16);
  v20 = v33;
  v19(v33, v17, v16);
  v46 = v4;
  v47 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = v11;
  v22 = v38;
  v23 = v34;
  sub_1002D8B00();
  v24 = *(v18 + 8);
  v24(v20, v16);
  (*(v36 + 8))(v23, v22);
  v46 = 0;
  v47 = 0xE000000000000000;
  v50._countAndFlagsBits = 0x206E6F206E727554;
  v50._object = 0xE800000000000000;
  sub_1002D8D50(v50);
  v25 = v43;
  v19(v43, v17, v16);
  sub_1002D8E10();
  v24(v25, v16);
  sub_1002D88F0();
  v46 = v22;
  v47 = OpaqueTypeConformance2;
  v26 = swift_getOpaqueTypeConformance2();
  v27 = v37;
  v28 = v42;
  v29 = v32;
  sub_1002D8AF0();
  v24(v20, v16);
  (*(v40 + 8))(v29, v28);
  v46 = v28;
  v47 = v26;
  swift_getOpaqueTypeConformance2();
  v30 = v41;
  sub_1002D8B10();
  return (*(v39 + 8))(v27, v30);
}

uint64_t sub_1000317F8@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v35 = sub_1002D8910();
  v44 = *(v35 - 8);
  v1 = __chkstk_darwin(v35);
  v43 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v4 = &v33 - v3;
  v5 = sub_10000321C(&qword_100444ED0, &qword_1002F5A40);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v33 - v7;
  v9 = sub_10000321C(&qword_100444ED8, &qword_1002F5A48);
  v36 = *(v9 - 8);
  v37 = v9;
  __chkstk_darwin(v9);
  v46 = &v33 - v10;
  v42 = sub_10000321C(&qword_100444EE0, &qword_1002F5A50);
  v39 = *(v42 - 8);
  __chkstk_darwin(v42);
  v12 = &v33 - v11;
  v13 = sub_10000321C(&qword_100444EE8, &qword_1002F5A58);
  v40 = *(v13 - 8);
  v41 = v13;
  __chkstk_darwin(v13);
  v38 = &v33 - v14;
  v47 = 0;
  v48 = 0xE000000000000000;
  sub_1002D8E00(33);

  v47 = 0xD000000000000018;
  v48 = 0x8000000100355CF0;
  v15 = qword_10043DBC8;
  v16 = off_10043DBD0;

  v49._countAndFlagsBits = v15;
  v49._object = v16;
  sub_1002D8D50(v49);

  v50._countAndFlagsBits = 0x6E6F747475622ELL;
  v50._object = 0xE700000000000000;
  sub_1002D8D50(v50);
  sub_10000321C(&qword_100444EF0, &qword_1002F5A60);
  sub_10002B6E4(&qword_100444EF8, &qword_100444EF0, &qword_1002F5A60, &protocol conformance descriptor for ControlWidgetToggle<A, B, C>);
  sub_1002D8CA0();
  if (qword_100439598 != -1)
  {
    swift_once();
  }

  v17 = sub_10002B6E4(&qword_100444F00, &qword_100444ED0, &qword_1002F5A40, &protocol conformance descriptor for StaticControlConfiguration<A>);
  sub_1002D8B20();
  (*(v6 + 8))(v8, v5);
  if (qword_100439590 != -1)
  {
    swift_once();
  }

  v18 = v35;
  v19 = sub_10001EDB8(v35, qword_10051AE98);
  v20 = v44;
  v21 = *(v44 + 16);
  v21(v4, v19, v18);
  v47 = v5;
  v48 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = v12;
  v23 = v37;
  v24 = v46;
  sub_1002D8B00();
  v25 = *(v20 + 8);
  v25(v4, v18);
  (*(v36 + 8))(v24, v23);
  v47 = 0;
  v48 = 0xE000000000000000;
  v51._countAndFlagsBits = 0x206E6F206E727554;
  v51._object = 0xE800000000000000;
  sub_1002D8D50(v51);
  v26 = v43;
  v21(v43, v19, v18);
  sub_1002D8E10();
  v25(v26, v18);
  sub_1002D88F0();
  v47 = v23;
  v48 = OpaqueTypeConformance2;
  v27 = swift_getOpaqueTypeConformance2();
  v28 = v38;
  v29 = v42;
  v30 = v34;
  sub_1002D8AF0();
  v25(v4, v18);
  (*(v39 + 8))(v30, v29);
  v47 = v29;
  v48 = v27;
  swift_getOpaqueTypeConformance2();
  v31 = v41;
  sub_1002D8B10();
  return (*(v40 + 8))(v28, v31);
}

uint64_t sub_100031EAC@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v35 = sub_1002D8910();
  v44 = *(v35 - 8);
  v1 = __chkstk_darwin(v35);
  v43 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v33 = &v32 - v3;
  v4 = sub_10000321C(&qword_100444F08, &qword_1002F5A68);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v32 - v6;
  v38 = sub_10000321C(&qword_100444F10, &qword_1002F5A70);
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v9 = &v32 - v8;
  v42 = sub_10000321C(&qword_100444F18, &qword_1002F5A78);
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v11 = &v32 - v10;
  v41 = sub_10000321C(&qword_100444F20, &qword_1002F5A80);
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v37 = &v32 - v12;
  v46 = 0;
  v47 = 0xE000000000000000;
  sub_1002D8E00(33);

  v46 = 0xD000000000000018;
  v47 = 0x8000000100355CF0;
  v13 = qword_10043DBE8;
  v14 = off_10043DBF0;

  v48._countAndFlagsBits = v13;
  v48._object = v14;
  sub_1002D8D50(v48);

  v49._countAndFlagsBits = 0x6E6F747475622ELL;
  v49._object = 0xE700000000000000;
  sub_1002D8D50(v49);
  sub_10000321C(&qword_100444F28, &qword_1002F5A88);
  sub_10002B6E4(&qword_100444F30, &qword_100444F28, &qword_1002F5A88, &protocol conformance descriptor for ControlWidgetToggle<A, B, C>);
  sub_1002D8CA0();
  v15 = sub_10002B6E4(&qword_100444F38, &qword_100444F08, &qword_1002F5A68, &protocol conformance descriptor for StaticControlConfiguration<A>);
  v34 = v9;
  sub_1002D8B20();
  (*(v5 + 8))(v7, v4);
  if (qword_1004395B0 != -1)
  {
    swift_once();
  }

  v16 = v35;
  v17 = sub_10001EDB8(v35, qword_10051AED8);
  v18 = v44;
  v19 = *(v44 + 16);
  v20 = v33;
  v19(v33, v17, v16);
  v46 = v4;
  v47 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = v11;
  v22 = v38;
  v23 = v34;
  sub_1002D8B00();
  v24 = *(v18 + 8);
  v24(v20, v16);
  (*(v36 + 8))(v23, v22);
  v46 = 0;
  v47 = 0xE000000000000000;
  v50._countAndFlagsBits = 0x206E6F206E727554;
  v50._object = 0xE800000000000000;
  sub_1002D8D50(v50);
  v25 = v43;
  v19(v43, v17, v16);
  sub_1002D8E10();
  v24(v25, v16);
  sub_1002D88F0();
  v46 = v22;
  v47 = OpaqueTypeConformance2;
  v26 = swift_getOpaqueTypeConformance2();
  v27 = v37;
  v28 = v42;
  v29 = v32;
  sub_1002D8AF0();
  v24(v20, v16);
  (*(v40 + 8))(v29, v28);
  v46 = v28;
  v47 = v26;
  swift_getOpaqueTypeConformance2();
  v30 = v41;
  sub_1002D8B10();
  return (*(v39 + 8))(v27, v30);
}

uint64_t sub_100032534@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v35 = sub_1002D8910();
  v44 = *(v35 - 8);
  v1 = __chkstk_darwin(v35);
  v43 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v4 = &v33 - v3;
  v5 = sub_10000321C(&qword_1004450A8, &qword_1002F5B68);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v33 - v7;
  v9 = sub_10000321C(&qword_1004450B0, &qword_1002F5B70);
  v36 = *(v9 - 8);
  v37 = v9;
  __chkstk_darwin(v9);
  v46 = &v33 - v10;
  v42 = sub_10000321C(&qword_1004450B8, &qword_1002F5B78);
  v39 = *(v42 - 8);
  __chkstk_darwin(v42);
  v12 = &v33 - v11;
  v13 = sub_10000321C(&qword_1004450C0, &qword_1002F5B80);
  v40 = *(v13 - 8);
  v41 = v13;
  __chkstk_darwin(v13);
  v38 = &v33 - v14;
  v47 = 0;
  v48 = 0xE000000000000000;
  sub_1002D8E00(33);

  v47 = 0xD000000000000018;
  v48 = 0x8000000100355CF0;
  v15 = qword_10043DD38;
  v16 = off_10043DD40;

  v49._countAndFlagsBits = v15;
  v49._object = v16;
  sub_1002D8D50(v49);

  v50._countAndFlagsBits = 0x6E6F747475622ELL;
  v50._object = 0xE700000000000000;
  sub_1002D8D50(v50);
  sub_10000321C(&qword_1004450C8, &qword_1002F5B88);
  sub_10002B6E4(&qword_1004450D0, &qword_1004450C8, &qword_1002F5B88, &protocol conformance descriptor for ControlWidgetToggle<A, B, C>);
  sub_1002D8CA0();
  if (qword_1004396B8 != -1)
  {
    swift_once();
  }

  v17 = sub_10002B6E4(&qword_1004450D8, &qword_1004450A8, &qword_1002F5B68, &protocol conformance descriptor for StaticControlConfiguration<A>);
  sub_1002D8B20();
  (*(v6 + 8))(v8, v5);
  if (qword_1004396B0 != -1)
  {
    swift_once();
  }

  v18 = v35;
  v19 = sub_10001EDB8(v35, qword_10051B120);
  v20 = v44;
  v21 = *(v44 + 16);
  v21(v4, v19, v18);
  v47 = v5;
  v48 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = v12;
  v23 = v37;
  v24 = v46;
  sub_1002D8B00();
  v25 = *(v20 + 8);
  v25(v4, v18);
  (*(v36 + 8))(v24, v23);
  v47 = 0;
  v48 = 0xE000000000000000;
  v51._countAndFlagsBits = 0x206E6F206E727554;
  v51._object = 0xE800000000000000;
  sub_1002D8D50(v51);
  v26 = v43;
  v21(v43, v19, v18);
  sub_1002D8E10();
  v25(v26, v18);
  sub_1002D88F0();
  v47 = v23;
  v48 = OpaqueTypeConformance2;
  v27 = swift_getOpaqueTypeConformance2();
  v28 = v38;
  v29 = v42;
  v30 = v34;
  sub_1002D8AF0();
  v25(v4, v18);
  (*(v39 + 8))(v30, v29);
  v47 = v29;
  v48 = v27;
  swift_getOpaqueTypeConformance2();
  v31 = v41;
  sub_1002D8B10();
  return (*(v40 + 8))(v28, v31);
}

uint64_t sub_100032BE8@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v35 = sub_1002D8910();
  v44 = *(v35 - 8);
  v1 = __chkstk_darwin(v35);
  v43 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v4 = &v33 - v3;
  v5 = sub_10000321C(&qword_100445158, &qword_1002F5BD8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v33 - v7;
  v9 = sub_10000321C(&qword_100445160, &qword_1002F5BE0);
  v36 = *(v9 - 8);
  v37 = v9;
  __chkstk_darwin(v9);
  v46 = &v33 - v10;
  v42 = sub_10000321C(&qword_100445168, &qword_1002F5BE8);
  v39 = *(v42 - 8);
  __chkstk_darwin(v42);
  v12 = &v33 - v11;
  v13 = sub_10000321C(&qword_100445170, &qword_1002F5BF0);
  v40 = *(v13 - 8);
  v41 = v13;
  __chkstk_darwin(v13);
  v38 = &v33 - v14;
  v47 = 0;
  v48 = 0xE000000000000000;
  sub_1002D8E00(33);

  v47 = 0xD000000000000018;
  v48 = 0x8000000100355CF0;
  v15 = qword_10043DDB8;
  v16 = off_10043DDC0;

  v49._countAndFlagsBits = v15;
  v49._object = v16;
  sub_1002D8D50(v49);

  v50._countAndFlagsBits = 0x6E6F747475622ELL;
  v50._object = 0xE700000000000000;
  sub_1002D8D50(v50);
  sub_10000321C(&qword_100445178, &qword_1002F5BF8);
  sub_10002B6E4(&qword_100445180, &qword_100445178, &qword_1002F5BF8, &protocol conformance descriptor for ControlWidgetToggle<A, B, C>);
  sub_1002D8CA0();
  if (qword_100439720 != -1)
  {
    swift_once();
  }

  v17 = sub_10002B6E4(&qword_100445188, &qword_100445158, &qword_1002F5BD8, &protocol conformance descriptor for StaticControlConfiguration<A>);
  sub_1002D8B20();
  (*(v6 + 8))(v8, v5);
  if (qword_100439718 != -1)
  {
    swift_once();
  }

  v18 = v35;
  v19 = sub_10001EDB8(v35, qword_10051B208);
  v20 = v44;
  v21 = *(v44 + 16);
  v21(v4, v19, v18);
  v47 = v5;
  v48 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = v12;
  v23 = v37;
  v24 = v46;
  sub_1002D8B00();
  v25 = *(v20 + 8);
  v25(v4, v18);
  (*(v36 + 8))(v24, v23);
  v47 = 0;
  v48 = 0xE000000000000000;
  v51._countAndFlagsBits = 0x206E6F206E727554;
  v51._object = 0xE800000000000000;
  sub_1002D8D50(v51);
  v26 = v43;
  v21(v43, v19, v18);
  sub_1002D8E10();
  v25(v26, v18);
  sub_1002D88F0();
  v47 = v23;
  v48 = OpaqueTypeConformance2;
  v27 = swift_getOpaqueTypeConformance2();
  v28 = v38;
  v29 = v42;
  v30 = v34;
  sub_1002D8AF0();
  v25(v4, v18);
  (*(v39 + 8))(v30, v29);
  v47 = v29;
  v48 = v27;
  swift_getOpaqueTypeConformance2();
  v31 = v41;
  sub_1002D8B10();
  return (*(v40 + 8))(v28, v31);
}

uint64_t sub_10003329C@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v35 = sub_1002D8910();
  v44 = *(v35 - 8);
  v1 = __chkstk_darwin(v35);
  v43 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v33 = &v32 - v3;
  v4 = sub_10000321C(&qword_100445208, &qword_1002F5C48);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v32 - v6;
  v38 = sub_10000321C(&qword_100445210, &qword_1002F5C50);
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v9 = &v32 - v8;
  v42 = sub_10000321C(&qword_100445218, &qword_1002F5C58);
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v11 = &v32 - v10;
  v41 = sub_10000321C(&qword_100445220, &qword_1002F5C60);
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v37 = &v32 - v12;
  v46 = 0;
  v47 = 0xE000000000000000;
  sub_1002D8E00(33);

  v46 = 0xD000000000000018;
  v47 = 0x8000000100355CF0;
  v13 = qword_10043DE38;
  v14 = off_10043DE40;

  v48._countAndFlagsBits = v13;
  v48._object = v14;
  sub_1002D8D50(v48);

  v49._countAndFlagsBits = 0x6E6F747475622ELL;
  v49._object = 0xE700000000000000;
  sub_1002D8D50(v49);
  sub_10000321C(&qword_100445228, &qword_1002F5C68);
  sub_10002B6E4(&qword_100445230, &qword_100445228, &qword_1002F5C68, &protocol conformance descriptor for ControlWidgetToggle<A, B, C>);
  sub_1002D8CA0();
  v15 = sub_10002B6E4(&qword_100445238, &qword_100445208, &qword_1002F5C48, &protocol conformance descriptor for StaticControlConfiguration<A>);
  v34 = v9;
  sub_1002D8B20();
  (*(v5 + 8))(v7, v4);
  if (qword_100439780 != -1)
  {
    swift_once();
  }

  v16 = v35;
  v17 = sub_10001EDB8(v35, qword_10051B2F0);
  v18 = v44;
  v19 = *(v44 + 16);
  v20 = v33;
  v19(v33, v17, v16);
  v46 = v4;
  v47 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = v11;
  v22 = v38;
  v23 = v34;
  sub_1002D8B00();
  v24 = *(v18 + 8);
  v24(v20, v16);
  (*(v36 + 8))(v23, v22);
  v46 = 0;
  v47 = 0xE000000000000000;
  v50._countAndFlagsBits = 0x206E6F206E727554;
  v50._object = 0xE800000000000000;
  sub_1002D8D50(v50);
  v25 = v43;
  v19(v43, v17, v16);
  sub_1002D8E10();
  v24(v25, v16);
  sub_1002D88F0();
  v46 = v22;
  v47 = OpaqueTypeConformance2;
  v26 = swift_getOpaqueTypeConformance2();
  v27 = v37;
  v28 = v42;
  v29 = v32;
  sub_1002D8AF0();
  v24(v20, v16);
  (*(v40 + 8))(v29, v28);
  v46 = v28;
  v47 = v26;
  swift_getOpaqueTypeConformance2();
  v30 = v41;
  sub_1002D8B10();
  return (*(v39 + 8))(v27, v30);
}

uint64_t sub_100033924@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v35 = sub_1002D8910();
  v44 = *(v35 - 8);
  v1 = __chkstk_darwin(v35);
  v43 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v4 = &v33 - v3;
  v5 = sub_10000321C(&qword_100445290, &qword_1002F5CA0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v33 - v7;
  v9 = sub_10000321C(&qword_100445298, &qword_1002F5CA8);
  v36 = *(v9 - 8);
  v37 = v9;
  __chkstk_darwin(v9);
  v46 = &v33 - v10;
  v42 = sub_10000321C(&qword_1004452A0, &qword_1002F5CB0);
  v39 = *(v42 - 8);
  __chkstk_darwin(v42);
  v12 = &v33 - v11;
  v13 = sub_10000321C(&qword_1004452A8, &qword_1002F5CB8);
  v40 = *(v13 - 8);
  v41 = v13;
  __chkstk_darwin(v13);
  v38 = &v33 - v14;
  v47 = 0;
  v48 = 0xE000000000000000;
  sub_1002D8E00(33);

  v47 = 0xD000000000000018;
  v48 = 0x8000000100355CF0;
  v15 = qword_10043DE98;
  v16 = off_10043DEA0;

  v49._countAndFlagsBits = v15;
  v49._object = v16;
  sub_1002D8D50(v49);

  v50._countAndFlagsBits = 0x6E6F747475622ELL;
  v50._object = 0xE700000000000000;
  sub_1002D8D50(v50);
  sub_10000321C(&qword_1004452B0, &qword_1002F5CC0);
  sub_10002B6E4(&qword_1004452B8, &qword_1004452B0, &qword_1002F5CC0, &protocol conformance descriptor for ControlWidgetToggle<A, B, C>);
  sub_1002D8CA0();
  if (qword_1004397D0 != -1)
  {
    swift_once();
  }

  v17 = sub_10002B6E4(&qword_1004452C0, &qword_100445290, &qword_1002F5CA0, &protocol conformance descriptor for StaticControlConfiguration<A>);
  sub_1002D8B20();
  (*(v6 + 8))(v8, v5);
  if (qword_1004397C8 != -1)
  {
    swift_once();
  }

  v18 = v35;
  v19 = sub_10001EDB8(v35, qword_10051B398);
  v20 = v44;
  v21 = *(v44 + 16);
  v21(v4, v19, v18);
  v47 = v5;
  v48 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = v12;
  v23 = v37;
  v24 = v46;
  sub_1002D8B00();
  v25 = *(v20 + 8);
  v25(v4, v18);
  (*(v36 + 8))(v24, v23);
  v47 = 0;
  v48 = 0xE000000000000000;
  v51._countAndFlagsBits = 0x206E6F206E727554;
  v51._object = 0xE800000000000000;
  sub_1002D8D50(v51);
  v26 = v43;
  v21(v43, v19, v18);
  sub_1002D8E10();
  v25(v26, v18);
  sub_1002D88F0();
  v47 = v23;
  v48 = OpaqueTypeConformance2;
  v27 = swift_getOpaqueTypeConformance2();
  v28 = v38;
  v29 = v42;
  v30 = v34;
  sub_1002D8AF0();
  v25(v4, v18);
  (*(v39 + 8))(v30, v29);
  v47 = v29;
  v48 = v27;
  swift_getOpaqueTypeConformance2();
  v31 = v41;
  sub_1002D8B10();
  return (*(v40 + 8))(v28, v31);
}

uint64_t sub_100033FD8@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v35 = sub_1002D8910();
  v44 = *(v35 - 8);
  v1 = __chkstk_darwin(v35);
  v43 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v4 = &v33 - v3;
  v5 = sub_10000321C(&qword_1004453B8, &qword_1002F5D58);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v33 - v7;
  v9 = sub_10000321C(&qword_1004453C0, &qword_1002F5D60);
  v36 = *(v9 - 8);
  v37 = v9;
  __chkstk_darwin(v9);
  v46 = &v33 - v10;
  v42 = sub_10000321C(&qword_1004453C8, &qword_1002F5D68);
  v39 = *(v42 - 8);
  __chkstk_darwin(v42);
  v12 = &v33 - v11;
  v13 = sub_10000321C(&qword_1004453D0, &qword_1002F5D70);
  v40 = *(v13 - 8);
  v41 = v13;
  __chkstk_darwin(v13);
  v38 = &v33 - v14;
  v47 = 0;
  v48 = 0xE000000000000000;
  sub_1002D8E00(33);

  v47 = 0xD000000000000018;
  v48 = 0x8000000100355CF0;
  v15 = qword_10043DF78;
  v16 = off_10043DF80;

  v49._countAndFlagsBits = v15;
  v49._object = v16;
  sub_1002D8D50(v49);

  v50._countAndFlagsBits = 0x6E6F747475622ELL;
  v50._object = 0xE700000000000000;
  sub_1002D8D50(v50);
  sub_10000321C(&qword_1004453D8, &qword_1002F5D78);
  sub_10002B6E4(&qword_1004453E0, &qword_1004453D8, &qword_1002F5D78, &protocol conformance descriptor for ControlWidgetToggle<A, B, C>);
  sub_1002D8CA0();
  if (qword_100439880 != -1)
  {
    swift_once();
  }

  v17 = sub_10002B6E4(&qword_1004453E8, &qword_1004453B8, &qword_1002F5D58, &protocol conformance descriptor for StaticControlConfiguration<A>);
  sub_1002D8B20();
  (*(v6 + 8))(v8, v5);
  if (qword_100439878 != -1)
  {
    swift_once();
  }

  v18 = v35;
  v19 = sub_10001EDB8(v35, qword_10051B528);
  v20 = v44;
  v21 = *(v44 + 16);
  v21(v4, v19, v18);
  v47 = v5;
  v48 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = v12;
  v23 = v37;
  v24 = v46;
  sub_1002D8B00();
  v25 = *(v20 + 8);
  v25(v4, v18);
  (*(v36 + 8))(v24, v23);
  v47 = 0;
  v48 = 0xE000000000000000;
  v51._countAndFlagsBits = 0x206E6F206E727554;
  v51._object = 0xE800000000000000;
  sub_1002D8D50(v51);
  v26 = v43;
  v21(v43, v19, v18);
  sub_1002D8E10();
  v25(v26, v18);
  sub_1002D88F0();
  v47 = v23;
  v48 = OpaqueTypeConformance2;
  v27 = swift_getOpaqueTypeConformance2();
  v28 = v38;
  v29 = v42;
  v30 = v34;
  sub_1002D8AF0();
  v25(v4, v18);
  (*(v39 + 8))(v30, v29);
  v47 = v29;
  v48 = v27;
  swift_getOpaqueTypeConformance2();
  v31 = v41;
  sub_1002D8B10();
  return (*(v40 + 8))(v28, v31);
}

uint64_t sub_10003468C@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v35 = sub_1002D8910();
  v44 = *(v35 - 8);
  v1 = __chkstk_darwin(v35);
  v43 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v33 = &v32 - v3;
  v4 = sub_10000321C(&qword_100445620, &qword_1002F5ED0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v32 - v6;
  v38 = sub_10000321C(&qword_100445628, &qword_1002F5ED8);
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v9 = &v32 - v8;
  v42 = sub_10000321C(&qword_100445630, &qword_1002F5EE0);
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v11 = &v32 - v10;
  v41 = sub_10000321C(&qword_100445638, &qword_1002F5EE8);
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v37 = &v32 - v12;
  v46 = 0;
  v47 = 0xE000000000000000;
  sub_1002D8E00(33);

  v46 = 0xD000000000000018;
  v47 = 0x8000000100355CF0;
  v13 = qword_10043E188;
  v14 = off_10043E190;

  v48._countAndFlagsBits = v13;
  v48._object = v14;
  sub_1002D8D50(v48);

  v49._countAndFlagsBits = 0x6E6F747475622ELL;
  v49._object = 0xE700000000000000;
  sub_1002D8D50(v49);
  sub_10000321C(&qword_100445640, &qword_1002F5EF0);
  sub_10002B6E4(&qword_100445648, &qword_100445640, &qword_1002F5EF0, &protocol conformance descriptor for ControlWidgetToggle<A, B, C>);
  sub_1002D8CA0();
  v15 = sub_10002B6E4(&qword_100445650, &qword_100445620, &qword_1002F5ED0, &protocol conformance descriptor for StaticControlConfiguration<A>);
  v34 = v9;
  sub_1002D8B20();
  (*(v5 + 8))(v7, v4);
  if (qword_100439A18 != -1)
  {
    swift_once();
  }

  v16 = v35;
  v17 = sub_10001EDB8(v35, qword_10051B8C0);
  v18 = v44;
  v19 = *(v44 + 16);
  v20 = v33;
  v19(v33, v17, v16);
  v46 = v4;
  v47 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = v11;
  v22 = v38;
  v23 = v34;
  sub_1002D8B00();
  v24 = *(v18 + 8);
  v24(v20, v16);
  (*(v36 + 8))(v23, v22);
  v46 = 0;
  v47 = 0xE000000000000000;
  v50._countAndFlagsBits = 0x206E6F206E727554;
  v50._object = 0xE800000000000000;
  sub_1002D8D50(v50);
  v25 = v43;
  v19(v43, v17, v16);
  sub_1002D8E10();
  v24(v25, v16);
  sub_1002D88F0();
  v46 = v22;
  v47 = OpaqueTypeConformance2;
  v26 = swift_getOpaqueTypeConformance2();
  v27 = v37;
  v28 = v42;
  v29 = v32;
  sub_1002D8AF0();
  v24(v20, v16);
  (*(v40 + 8))(v29, v28);
  v46 = v28;
  v47 = v26;
  swift_getOpaqueTypeConformance2();
  v30 = v41;
  sub_1002D8B10();
  return (*(v39 + 8))(v27, v30);
}

uint64_t sub_100034D14@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v35 = sub_1002D8910();
  v44 = *(v35 - 8);
  v1 = __chkstk_darwin(v35);
  v43 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v33 = &v32 - v3;
  v4 = sub_10000321C(&qword_100445810, &qword_1002F6000);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v32 - v6;
  v38 = sub_10000321C(&qword_100445818, &qword_1002F6008);
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v9 = &v32 - v8;
  v42 = sub_10000321C(&qword_100445820, &qword_1002F6010);
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v11 = &v32 - v10;
  v41 = sub_10000321C(&qword_100445828, &qword_1002F6018);
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v37 = &v32 - v12;
  v46 = 0;
  v47 = 0xE000000000000000;
  sub_1002D8E00(33);

  v46 = 0xD000000000000018;
  v47 = 0x8000000100355CF0;
  v13 = qword_10043E368;
  v14 = off_10043E370;

  v48._countAndFlagsBits = v13;
  v48._object = v14;
  sub_1002D8D50(v48);

  v49._countAndFlagsBits = 0x6E6F747475622ELL;
  v49._object = 0xE700000000000000;
  sub_1002D8D50(v49);
  sub_10000321C(&qword_100445830, &qword_1002F6020);
  sub_10002B6E4(&qword_100445838, &qword_100445830, &qword_1002F6020, &protocol conformance descriptor for ControlWidgetToggle<A, B, C>);
  sub_1002D8CA0();
  v15 = sub_10002B6E4(&qword_100445840, &qword_100445810, &qword_1002F6000, &protocol conformance descriptor for StaticControlConfiguration<A>);
  v34 = v9;
  sub_1002D8B20();
  (*(v5 + 8))(v7, v4);
  if (qword_100439B98 != -1)
  {
    swift_once();
  }

  v16 = v35;
  v17 = sub_10001EDB8(v35, qword_10051BBF0);
  v18 = v44;
  v19 = *(v44 + 16);
  v20 = v33;
  v19(v33, v17, v16);
  v46 = v4;
  v47 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = v11;
  v22 = v38;
  v23 = v34;
  sub_1002D8B00();
  v24 = *(v18 + 8);
  v24(v20, v16);
  (*(v36 + 8))(v23, v22);
  v46 = 0;
  v47 = 0xE000000000000000;
  v50._countAndFlagsBits = 0x206E6F206E727554;
  v50._object = 0xE800000000000000;
  sub_1002D8D50(v50);
  v25 = v43;
  v19(v43, v17, v16);
  sub_1002D8E10();
  v24(v25, v16);
  sub_1002D88F0();
  v46 = v22;
  v47 = OpaqueTypeConformance2;
  v26 = swift_getOpaqueTypeConformance2();
  v27 = v37;
  v28 = v42;
  v29 = v32;
  sub_1002D8AF0();
  v24(v20, v16);
  (*(v40 + 8))(v29, v28);
  v46 = v28;
  v47 = v26;
  swift_getOpaqueTypeConformance2();
  v30 = v41;
  sub_1002D8B10();
  return (*(v39 + 8))(v27, v30);
}

uint64_t sub_10003539C@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v35 = sub_1002D8910();
  v44 = *(v35 - 8);
  v1 = __chkstk_darwin(v35);
  v43 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v33 = &v32 - v3;
  v4 = sub_10000321C(&qword_1004458E8, &qword_1002F6088);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v32 - v6;
  v38 = sub_10000321C(&qword_1004458F0, &qword_1002F6090);
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v9 = &v32 - v8;
  v42 = sub_10000321C(&qword_1004458F8, &qword_1002F6098);
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v11 = &v32 - v10;
  v41 = sub_10000321C(&qword_100445900, &qword_1002F60A0);
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v37 = &v32 - v12;
  v46 = 0;
  v47 = 0xE000000000000000;
  sub_1002D8E00(33);

  v46 = 0xD000000000000018;
  v47 = 0x8000000100355CF0;
  v13 = qword_10043E418;
  v14 = off_10043E420;

  v48._countAndFlagsBits = v13;
  v48._object = v14;
  sub_1002D8D50(v48);

  v49._countAndFlagsBits = 0x6E6F747475622ELL;
  v49._object = 0xE700000000000000;
  sub_1002D8D50(v49);
  sub_10000321C(&qword_100445908, &qword_1002F60A8);
  sub_10002B6E4(&qword_100445910, &qword_100445908, &qword_1002F60A8, &protocol conformance descriptor for ControlWidgetToggle<A, B, C>);
  sub_1002D8CA0();
  v15 = sub_10002B6E4(&qword_100445918, &qword_1004458E8, &qword_1002F6088, &protocol conformance descriptor for StaticControlConfiguration<A>);
  v34 = v9;
  sub_1002D8B20();
  (*(v5 + 8))(v7, v4);
  if (qword_100439C20 != -1)
  {
    swift_once();
  }

  v16 = v35;
  v17 = sub_10001EDB8(v35, qword_10051BD20);
  v18 = v44;
  v19 = *(v44 + 16);
  v20 = v33;
  v19(v33, v17, v16);
  v46 = v4;
  v47 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = v11;
  v22 = v38;
  v23 = v34;
  sub_1002D8B00();
  v24 = *(v18 + 8);
  v24(v20, v16);
  (*(v36 + 8))(v23, v22);
  v46 = 0;
  v47 = 0xE000000000000000;
  v50._countAndFlagsBits = 0x206E6F206E727554;
  v50._object = 0xE800000000000000;
  sub_1002D8D50(v50);
  v25 = v43;
  v19(v43, v17, v16);
  sub_1002D8E10();
  v24(v25, v16);
  sub_1002D88F0();
  v46 = v22;
  v47 = OpaqueTypeConformance2;
  v26 = swift_getOpaqueTypeConformance2();
  v27 = v37;
  v28 = v42;
  v29 = v32;
  sub_1002D8AF0();
  v24(v20, v16);
  (*(v40 + 8))(v29, v28);
  v46 = v28;
  v47 = v26;
  swift_getOpaqueTypeConformance2();
  v30 = v41;
  sub_1002D8B10();
  return (*(v39 + 8))(v27, v30);
}

uint64_t sub_100035A24@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v35 = sub_1002D8910();
  v44 = *(v35 - 8);
  v1 = __chkstk_darwin(v35);
  v43 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v33 = &v32 - v3;
  v4 = sub_10000321C(&qword_100445BF0, &qword_1002F6260);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v32 - v6;
  v38 = sub_10000321C(&qword_100445BF8, &qword_1002F6268);
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v9 = &v32 - v8;
  v42 = sub_10000321C(&qword_100445C00, &qword_1002F6270);
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v11 = &v32 - v10;
  v41 = sub_10000321C(&qword_100445C08, &qword_1002F6278);
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v37 = &v32 - v12;
  v46 = 0;
  v47 = 0xE000000000000000;
  sub_1002D8E00(33);

  v46 = 0xD000000000000018;
  v47 = 0x8000000100355CF0;
  v13 = qword_10043E708;
  v14 = off_10043E710;

  v48._countAndFlagsBits = v13;
  v48._object = v14;
  sub_1002D8D50(v48);

  v49._countAndFlagsBits = 0x6E6F747475622ELL;
  v49._object = 0xE700000000000000;
  sub_1002D8D50(v49);
  sub_10000321C(&qword_100445C10, &qword_1002F6280);
  sub_10002B6E4(&qword_100445C18, &qword_100445C10, &qword_1002F6280, &protocol conformance descriptor for ControlWidgetToggle<A, B, C>);
  sub_1002D8CA0();
  v15 = sub_10002B6E4(&qword_100445C20, &qword_100445BF0, &qword_1002F6260, &protocol conformance descriptor for StaticControlConfiguration<A>);
  v34 = v9;
  sub_1002D8B20();
  (*(v5 + 8))(v7, v4);
  if (qword_100439E78 != -1)
  {
    swift_once();
  }

  v16 = v35;
  v17 = sub_10001EDB8(v35, qword_10051C220);
  v18 = v44;
  v19 = *(v44 + 16);
  v20 = v33;
  v19(v33, v17, v16);
  v46 = v4;
  v47 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = v11;
  v22 = v38;
  v23 = v34;
  sub_1002D8B00();
  v24 = *(v18 + 8);
  v24(v20, v16);
  (*(v36 + 8))(v23, v22);
  v46 = 0;
  v47 = 0xE000000000000000;
  v50._countAndFlagsBits = 0x206E6F206E727554;
  v50._object = 0xE800000000000000;
  sub_1002D8D50(v50);
  v25 = v43;
  v19(v43, v17, v16);
  sub_1002D8E10();
  v24(v25, v16);
  sub_1002D88F0();
  v46 = v22;
  v47 = OpaqueTypeConformance2;
  v26 = swift_getOpaqueTypeConformance2();
  v27 = v37;
  v28 = v42;
  v29 = v32;
  sub_1002D8AF0();
  v24(v20, v16);
  (*(v40 + 8))(v29, v28);
  v46 = v28;
  v47 = v26;
  swift_getOpaqueTypeConformance2();
  v30 = v41;
  sub_1002D8B10();
  return (*(v39 + 8))(v27, v30);
}

uint64_t sub_1000360AC()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  v0 = [objc_opt_self() sharedInstance];
  [v0 accessibilityReaderIsActive];

  if (qword_100438FD0 != -1)
  {
    swift_once();
  }

  sub_10000321C(&qword_10043D250, "8\n\v");
  sub_10002B6E4(&qword_10043D258, &qword_10043D250, "8\n\v", &protocol conformance descriptor for Label<A, B>);
  sub_1000B45BC();
  return sub_1002D8C50();
}

uint64_t sub_100036218()
{
  _AXSTwiceRemoteScreenEnabled();
  if (qword_100439020 != -1)
  {
    swift_once();
  }

  sub_10000321C(&qword_10043D250, "8\n\v");
  sub_10002B6E4(&qword_10043D258, &qword_10043D250, "8\n\v", &protocol conformance descriptor for Label<A, B>);
  sub_1000B42A0();
  return sub_1002D8C50();
}

uint64_t sub_100036334()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  _AXSAssistiveTouchEnabled();
  if (qword_100439038 != -1)
  {
    swift_once();
  }

  sub_10000321C(&qword_10043D250, "8\n\v");
  sub_10002B6E4(&qword_10043D258, &qword_10043D250, "8\n\v", &protocol conformance descriptor for Label<A, B>);
  sub_1000B41B8();
  return sub_1002D8C50();
}

uint64_t sub_100036480()
{
  v0 = [objc_opt_self() sharedInstance];
  [v0 enhanceBackgroundContrastEnabled];

  if (qword_100439368 != -1)
  {
    swift_once();
  }

  sub_10000321C(&qword_10043D250, "8\n\v");
  sub_10002B6E4(&qword_10043D258, &qword_10043D250, "8\n\v", &protocol conformance descriptor for Label<A, B>);
  sub_1000B24B8();
  return sub_1002D8C50();
}

uint64_t sub_1000365BC()
{
  _AXDarkenSystemColors();
  if (qword_100439380 != -1)
  {
    swift_once();
  }

  sub_10000321C(&qword_10043D250, "8\n\v");
  sub_10002B6E4(&qword_10043D258, &qword_10043D250, "8\n\v", &protocol conformance descriptor for Label<A, B>);
  sub_1000B23D0();
  return sub_1002D8C50();
}

uint64_t sub_1000366D8()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  _AXSInvertColorsEnabledGlobal();
  if (qword_1004393C8 != -1)
  {
    swift_once();
  }

  sub_10000321C(&qword_10043D250, "8\n\v");
  sub_10002B6E4(&qword_10043D258, &qword_10043D250, "8\n\v", &protocol conformance descriptor for Label<A, B>);
  sub_1000B2118();
  return sub_1002D8C50();
}

uint64_t sub_100036824()
{
  v0 = [objc_opt_self() sharedInstance];
  [v0 classicInvertColors];

  if (qword_1004393E0 != -1)
  {
    swift_once();
  }

  sub_10000321C(&qword_10043D250, "8\n\v");
  sub_10002B6E4(&qword_10043D258, &qword_10043D250, "8\n\v", &protocol conformance descriptor for Label<A, B>);
  sub_1000B2030();
  return sub_1002D8C50();
}

uint64_t sub_100036960()
{
  _AXSReduceWhitePointEnabled();
  if (qword_100439410 != -1)
  {
    swift_once();
  }

  sub_10000321C(&qword_10043D250, "8\n\v");
  sub_10002B6E4(&qword_10043D258, &qword_10043D250, "8\n\v", &protocol conformance descriptor for Label<A, B>);
  sub_1000B1E60();
  return sub_1002D8C50();
}

uint64_t sub_100036A7C()
{
  _AXSDisplayFilterColorEnabled();
  if (qword_100439428 != -1)
  {
    swift_once();
  }

  sub_10000321C(&qword_10043D250, "8\n\v");
  sub_10002B6E4(&qword_10043D258, &qword_10043D250, "8\n\v", &protocol conformance descriptor for Label<A, B>);
  sub_1000B1D78();
  return sub_1002D8C50();
}

uint64_t sub_100036B98()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  v0 = [objc_opt_self() sharedInstance];
  [v0 assistiveTouchMouseOnDeviceEyeTrackingEnabled];

  if (qword_100439458 != -1)
  {
    swift_once();
  }

  sub_10000321C(&qword_10043D250, "8\n\v");
  sub_10002B6E4(&qword_10043D258, &qword_10043D250, "8\n\v", &protocol conformance descriptor for Label<A, B>);
  sub_1000B1C90();
  return sub_1002D8C50();
}

uint64_t sub_100036D04()
{
  if (qword_100438D20 != -1)
  {
    swift_once();
  }

  v0 = [objc_opt_self() sharedInstance];
  [v0 guestPassSessionCCWidgetIsActive];

  if (qword_100439490 != -1)
  {
    swift_once();
  }

  sub_10000321C(&qword_10043D250, "8\n\v");
  sub_10002B6E4(&qword_10043D258, &qword_10043D250, "8\n\v", &protocol conformance descriptor for Label<A, B>);
  sub_1000B1AC0();
  return sub_1002D8C50();
}

uint64_t sub_100036E70()
{
  v0 = [objc_opt_self() sharedInstance];
  [v0 leftRightBalanceEnabled];

  if (qword_100439580 != -1)
  {
    swift_once();
  }

  sub_10000321C(&qword_10043D250, "8\n\v");
  sub_10002B6E4(&qword_10043D258, &qword_10043D250, "8\n\v", &protocol conformance descriptor for Label<A, B>);
  sub_1000B11B0();
  return sub_1002D8C50();
}

uint64_t sub_100036FAC()
{
  _AXSHoverTextEnabled();
  if (qword_1004395A0 != -1)
  {
    swift_once();
  }

  sub_10000321C(&qword_10043D250, "8\n\v");
  sub_10002B6E4(&qword_10043D258, &qword_10043D250, "8\n\v", &protocol conformance descriptor for Label<A, B>);
  sub_1000B10C8();
  return sub_1002D8C50();
}

uint64_t sub_1000370C8()
{
  _AXSFullKeyboardAccessEnabled();
  if (qword_1004395B8 != -1)
  {
    swift_once();
  }

  sub_10000321C(&qword_10043D250, "8\n\v");
  sub_10002B6E4(&qword_10043D258, &qword_10043D250, "8\n\v", &protocol conformance descriptor for Label<A, B>);
  sub_1000B0FE0();
  return sub_1002D8C50();
}

uint64_t sub_1000371E4()
{
  v0 = [objc_opt_self() sharedInstance];
  [v0 hoverTextTypingEnabled];

  if (qword_1004396C0 != -1)
  {
    swift_once();
  }

  sub_10000321C(&qword_10043D250, "8\n\v");
  sub_10002B6E4(&qword_10043D258, &qword_10043D250, "8\n\v", &protocol conformance descriptor for Label<A, B>);
  sub_1000B06D0();
  return sub_1002D8C50();
}

uint64_t sub_100037320()
{
  _AXSLiveTranscriptionEnabled();
  if (qword_100439728 != -1)
  {
    swift_once();
  }

  sub_10000321C(&qword_10043D250, "8\n\v");
  sub_10002B6E4(&qword_10043D258, &qword_10043D250, "8\n\v", &protocol conformance descriptor for Label<A, B>);
  sub_1000B0330();
  return sub_1002D8C50();
}

uint64_t sub_10003743C()
{
  _AXSReduceMotionEnabled();
  if (qword_100439788 != -1)
  {
    swift_once();
  }

  sub_10000321C(&qword_10043D250, "8\n\v");
  sub_10002B6E4(&qword_10043D258, &qword_10043D250, "8\n\v", &protocol conformance descriptor for Label<A, B>);
  sub_1000AFF90();
  return sub_1002D8C50();
}

uint64_t sub_100037558()
{
  _AXSPhotosensitiveMitigationEnabled();
  if (qword_1004397D8 != -1)
  {
    swift_once();
  }

  sub_10000321C(&qword_10043D250, "8\n\v");
  sub_10002B6E4(&qword_10043D258, &qword_10043D250, "8\n\v", &protocol conformance descriptor for Label<A, B>);
  sub_1000AFCD8();
  return sub_1002D8C50();
}

uint64_t sub_100037674()
{
  sub_1002D8DD0();
  v0 = sub_1002D8DC0();
  [v0 isNameRecognitionEnabled];

  if (qword_100439888 != -1)
  {
    swift_once();
  }

  sub_10000321C(&qword_10043D250, "8\n\v");
  sub_10002B6E4(&qword_10043D258, &qword_10043D250, "8\n\v", &protocol conformance descriptor for Label<A, B>);
  sub_1000AF680();
  return sub_1002D8C50();
}

uint64_t sub_1000377A0()
{
  _AXSAssistiveTouchScannerEnabled();
  if (qword_100439A20 != -1)
  {
    swift_once();
  }

  sub_10000321C(&qword_10043D250, "8\n\v");
  sub_10002B6E4(&qword_10043D258, &qword_10043D250, "8\n\v", &protocol conformance descriptor for Label<A, B>);
  sub_1000AE8E8();
  return sub_1002D8C50();
}

uint64_t sub_1000378BC()
{
  _AXSCommandAndControlEnabled();
  if (qword_100439BA0 != -1)
  {
    swift_once();
  }

  sub_10000321C(&qword_10043D250, "8\n\v");
  sub_10002B6E4(&qword_10043D258, &qword_10043D250, "8\n\v", &protocol conformance descriptor for Label<A, B>);
  sub_1000ADE08();
  return sub_1002D8C50();
}

uint64_t sub_1000379D8()
{
  _AXSVoiceOverTouchEnabled();
  if (qword_100439C28 != -1)
  {
    swift_once();
  }

  sub_10000321C(&qword_10043D250, "8\n\v");
  sub_10002B6E4(&qword_10043D258, &qword_10043D250, "8\n\v", &protocol conformance descriptor for Label<A, B>);
  sub_1000AD980();
  return sub_1002D8C50();
}

uint64_t sub_100037AF4()
{
  _AXSZoomTouchEnabled();
  if (qword_100439E80 != -1)
  {
    swift_once();
  }

  sub_10000321C(&qword_10043D250, "8\n\v");
  sub_10002B6E4(&qword_10043D258, &qword_10043D250, "8\n\v", &protocol conformance descriptor for Label<A, B>);
  sub_1000AC848();
  return sub_1002D8C50();
}

uint64_t sub_10003839C@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = sub_1002D8910();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v30 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v24 - v5;
  v7 = sub_10000321C(&qword_100444538, &qword_1002F5438);
  v8 = *(v7 - 8);
  v26 = v7;
  v27 = v8;
  __chkstk_darwin(v7);
  v10 = &v24 - v9;
  v11 = sub_10000321C(&qword_100444540, &qword_1002F5440);
  v28 = *(v11 - 8);
  v29 = v11;
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_1002D8E00(33);

  v32 = 0xD000000000000018;
  v33 = 0x8000000100355CF0;
  v14 = qword_10043D468;
  v15 = off_10043D470;

  v34._countAndFlagsBits = v14;
  v34._object = v15;
  sub_1002D8D50(v34);

  v35._countAndFlagsBits = 0x6E6F747475622ELL;
  v35._object = 0xE700000000000000;
  sub_1002D8D50(v35);
  sub_10000321C(&qword_100444548, &qword_1002F5448);
  sub_10002B6E4(&qword_100444550, &qword_100444548, &qword_1002F5448, &protocol conformance descriptor for ControlWidgetToggle<A, B, C>);
  v25 = v10;
  sub_1002D8CA0();
  if (qword_100438FE0 != -1)
  {
    swift_once();
  }

  v16 = sub_10001EDB8(v1, qword_10051A1A8);
  v17 = *(v2 + 16);
  v17(v6, v16, v1);
  v24 = sub_10002B6E4(&qword_100444558, &qword_100444538, &qword_1002F5438, &protocol conformance descriptor for StaticControlConfiguration<A>);
  v18 = v25;
  v19 = v26;
  sub_1002D8B00();
  v20 = *(v2 + 8);
  v20(v6, v1);
  (*(v27 + 8))(v18, v19);
  v32 = 0;
  v33 = 0xE000000000000000;
  v36._countAndFlagsBits = 0x206E6F206E727554;
  v36._object = 0xE800000000000000;
  sub_1002D8D50(v36);
  v21 = v30;
  v17(v30, v16, v1);
  sub_1002D8E10();
  v20(v21, v1);
  sub_1002D88F0();
  v32 = v19;
  v33 = v24;
  swift_getOpaqueTypeConformance2();
  v22 = v29;
  sub_1002D8AF0();
  v20(v6, v1);
  return (*(v28 + 8))(v13, v22);
}

uint64_t sub_100038850@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = sub_1002D8910();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v30 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v24 - v5;
  v7 = sub_10000321C(&qword_100444560, &qword_1002F5450);
  v8 = *(v7 - 8);
  v26 = v7;
  v27 = v8;
  __chkstk_darwin(v7);
  v10 = &v24 - v9;
  v11 = sub_10000321C(&qword_100444568, &qword_1002F5458);
  v28 = *(v11 - 8);
  v29 = v11;
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_1002D8E00(33);

  v32 = 0xD000000000000018;
  v33 = 0x8000000100355CF0;
  v14 = qword_10043D488;
  v15 = off_10043D490;

  v34._countAndFlagsBits = v14;
  v34._object = v15;
  sub_1002D8D50(v34);

  v35._countAndFlagsBits = 0x6E6F747475622ELL;
  v35._object = 0xE700000000000000;
  sub_1002D8D50(v35);
  sub_10000321C(&qword_100444570, &qword_1002F5460);
  sub_10002B6E4(&qword_100444578, &qword_100444570, &qword_1002F5460, &protocol conformance descriptor for ControlWidgetToggle<A, B, C>);
  v25 = v10;
  sub_1002D8CA0();
  if (qword_100438FF8 != -1)
  {
    swift_once();
  }

  v16 = sub_10001EDB8(v1, qword_10051A1E0);
  v17 = *(v2 + 16);
  v17(v6, v16, v1);
  v24 = sub_10002B6E4(&qword_100444580, &qword_100444560, &qword_1002F5450, &protocol conformance descriptor for StaticControlConfiguration<A>);
  v18 = v25;
  v19 = v26;
  sub_1002D8B00();
  v20 = *(v2 + 8);
  v20(v6, v1);
  (*(v27 + 8))(v18, v19);
  v32 = 0;
  v33 = 0xE000000000000000;
  v36._countAndFlagsBits = 0x206E6F206E727554;
  v36._object = 0xE800000000000000;
  sub_1002D8D50(v36);
  v21 = v30;
  v17(v30, v16, v1);
  sub_1002D8E10();
  v20(v21, v1);
  sub_1002D88F0();
  v32 = v19;
  v33 = v24;
  swift_getOpaqueTypeConformance2();
  v22 = v29;
  sub_1002D8AF0();
  v20(v6, v1);
  return (*(v28 + 8))(v13, v22);
}

uint64_t sub_100038D04@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = sub_1002D8910();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v30 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v24 - v5;
  v7 = sub_10000321C(&qword_1004445F8, &qword_1002F54B8);
  v8 = *(v7 - 8);
  v26 = v7;
  v27 = v8;
  __chkstk_darwin(v7);
  v10 = &v24 - v9;
  v11 = sub_10000321C(&qword_100444600, &qword_1002F54C0);
  v28 = *(v11 - 8);
  v29 = v11;
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_1002D8E00(33);

  v32 = 0xD000000000000018;
  v33 = 0x8000000100355CF0;
  v14 = qword_10043D4E8;
  v15 = off_10043D4F0;

  v34._countAndFlagsBits = v14;
  v34._object = v15;
  sub_1002D8D50(v34);

  v35._countAndFlagsBits = 0x6E6F747475622ELL;
  v35._object = 0xE700000000000000;
  sub_1002D8D50(v35);
  sub_10000321C(&qword_100444608, &qword_1002F54C8);
  sub_10002B6E4(&qword_100444610, &qword_100444608, &qword_1002F54C8, &protocol conformance descriptor for ControlWidgetToggle<A, B, C>);
  v25 = v10;
  sub_1002D8CA0();
  if (qword_100439048 != -1)
  {
    swift_once();
  }

  v16 = sub_10001EDB8(v1, qword_10051A290);
  v17 = *(v2 + 16);
  v17(v6, v16, v1);
  v24 = sub_10002B6E4(&qword_100444618, &qword_1004445F8, &qword_1002F54B8, &protocol conformance descriptor for StaticControlConfiguration<A>);
  v18 = v25;
  v19 = v26;
  sub_1002D8B00();
  v20 = *(v2 + 8);
  v20(v6, v1);
  (*(v27 + 8))(v18, v19);
  v32 = 0;
  v33 = 0xE000000000000000;
  v36._countAndFlagsBits = 0x206E6F206E727554;
  v36._object = 0xE800000000000000;
  sub_1002D8D50(v36);
  v21 = v30;
  v17(v30, v16, v1);
  sub_1002D8E10();
  v20(v21, v1);
  sub_1002D88F0();
  v32 = v19;
  v33 = v24;
  swift_getOpaqueTypeConformance2();
  v22 = v29;
  sub_1002D8AF0();
  v20(v6, v1);
  return (*(v28 + 8))(v13, v22);
}

uint64_t sub_1000391B8@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = sub_1002D8910();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v30 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v24 - v5;
  v7 = sub_10000321C(&qword_100444620, &qword_1002F54D0);
  v8 = *(v7 - 8);
  v26 = v7;
  v27 = v8;
  __chkstk_darwin(v7);
  v10 = &v24 - v9;
  v11 = sub_10000321C(&qword_100444628, &qword_1002F54D8);
  v28 = *(v11 - 8);
  v29 = v11;
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_1002D8E00(33);

  v32 = 0xD000000000000018;
  v33 = 0x8000000100355CF0;
  v14 = qword_10043D508;
  v15 = off_10043D510;

  v34._countAndFlagsBits = v14;
  v34._object = v15;
  sub_1002D8D50(v34);

  v35._countAndFlagsBits = 0x6E6F747475622ELL;
  v35._object = 0xE700000000000000;
  sub_1002D8D50(v35);
  sub_10000321C(&qword_100444630, &qword_1002F54E0);
  sub_10002B6E4(&qword_100444638, &qword_100444630, &qword_1002F54E0, &protocol conformance descriptor for ControlWidgetToggle<A, B, C>);
  v25 = v10;
  sub_1002D8CA0();
  if (qword_100439060 != -1)
  {
    swift_once();
  }

  v16 = sub_10001EDB8(v1, qword_10051A2C8);
  v17 = *(v2 + 16);
  v17(v6, v16, v1);
  v24 = sub_10002B6E4(&qword_100444640, &qword_100444620, &qword_1002F54D0, &protocol conformance descriptor for StaticControlConfiguration<A>);
  v18 = v25;
  v19 = v26;
  sub_1002D8B00();
  v20 = *(v2 + 8);
  v20(v6, v1);
  (*(v27 + 8))(v18, v19);
  v32 = 0;
  v33 = 0xE000000000000000;
  v36._countAndFlagsBits = 0x206E6F206E727554;
  v36._object = 0xE800000000000000;
  sub_1002D8D50(v36);
  v21 = v30;
  v17(v30, v16, v1);
  sub_1002D8E10();
  v20(v21, v1);
  sub_1002D88F0();
  v32 = v19;
  v33 = v24;
  swift_getOpaqueTypeConformance2();
  v22 = v29;
  sub_1002D8AF0();
  v20(v6, v1);
  return (*(v28 + 8))(v13, v22);
}

uint64_t sub_10003966C@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = sub_1002D8910();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v30 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v24 - v5;
  v7 = sub_10000321C(&qword_100444648, &qword_1002F54E8);
  v8 = *(v7 - 8);
  v26 = v7;
  v27 = v8;
  __chkstk_darwin(v7);
  v10 = &v24 - v9;
  v11 = sub_10000321C(&qword_100444650, &qword_1002F54F0);
  v28 = *(v11 - 8);
  v29 = v11;
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_1002D8E00(33);

  v32 = 0xD000000000000018;
  v33 = 0x8000000100355CF0;
  v14 = qword_10043D528;
  v15 = off_10043D530;

  v34._countAndFlagsBits = v14;
  v34._object = v15;
  sub_1002D8D50(v34);

  v35._countAndFlagsBits = 0x6E6F747475622ELL;
  v35._object = 0xE700000000000000;
  sub_1002D8D50(v35);
  sub_10000321C(&qword_100444658, &qword_1002F54F8);
  sub_10002B6E4(&qword_100444660, &qword_100444658, &qword_1002F54F8, &protocol conformance descriptor for ControlWidgetToggle<A, B, C>);
  v25 = v10;
  sub_1002D8CA0();
  if (qword_100439078 != -1)
  {
    swift_once();
  }

  v16 = sub_10001EDB8(v1, qword_10051A300);
  v17 = *(v2 + 16);
  v17(v6, v16, v1);
  v24 = sub_10002B6E4(&qword_100444668, &qword_100444648, &qword_1002F54E8, &protocol conformance descriptor for StaticControlConfiguration<A>);
  v18 = v25;
  v19 = v26;
  sub_1002D8B00();
  v20 = *(v2 + 8);
  v20(v6, v1);
  (*(v27 + 8))(v18, v19);
  v32 = 0;
  v33 = 0xE000000000000000;
  v36._countAndFlagsBits = 0x206E6F206E727554;
  v36._object = 0xE800000000000000;
  sub_1002D8D50(v36);
  v21 = v30;
  v17(v30, v16, v1);
  sub_1002D8E10();
  v20(v21, v1);
  sub_1002D88F0();
  v32 = v19;
  v33 = v24;
  swift_getOpaqueTypeConformance2();
  v22 = v29;
  sub_1002D8AF0();
  v20(v6, v1);
  return (*(v28 + 8))(v13, v22);
}

uint64_t sub_100039B20@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = sub_1002D8910();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v30 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v24 - v5;
  v7 = sub_10000321C(&qword_100444670, &qword_1002F5500);
  v8 = *(v7 - 8);
  v26 = v7;
  v27 = v8;
  __chkstk_darwin(v7);
  v10 = &v24 - v9;
  v11 = sub_10000321C(&qword_100444678, &qword_1002F5508);
  v28 = *(v11 - 8);
  v29 = v11;
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_1002D8E00(33);

  v32 = 0xD000000000000018;
  v33 = 0x8000000100355CF0;
  v14 = qword_10043D548;
  v15 = off_10043D550;

  v34._countAndFlagsBits = v14;
  v34._object = v15;
  sub_1002D8D50(v34);

  v35._countAndFlagsBits = 0x6E6F747475622ELL;
  v35._object = 0xE700000000000000;
  sub_1002D8D50(v35);
  sub_10000321C(&qword_100444680, &qword_1002F5510);
  sub_10002B6E4(&qword_100444688, &qword_100444680, &qword_1002F5510, &protocol conformance descriptor for ControlWidgetToggle<A, B, C>);
  v25 = v10;
  sub_1002D8CA0();
  if (qword_100439090 != -1)
  {
    swift_once();
  }

  v16 = sub_10001EDB8(v1, qword_10051A338);
  v17 = *(v2 + 16);
  v17(v6, v16, v1);
  v24 = sub_10002B6E4(&qword_100444690, &qword_100444670, &qword_1002F5500, &protocol conformance descriptor for StaticControlConfiguration<A>);
  v18 = v25;
  v19 = v26;
  sub_1002D8B00();
  v20 = *(v2 + 8);
  v20(v6, v1);
  (*(v27 + 8))(v18, v19);
  v32 = 0;
  v33 = 0xE000000000000000;
  v36._countAndFlagsBits = 0x206E6F206E727554;
  v36._object = 0xE800000000000000;
  sub_1002D8D50(v36);
  v21 = v30;
  v17(v30, v16, v1);
  sub_1002D8E10();
  v20(v21, v1);
  sub_1002D88F0();
  v32 = v19;
  v33 = v24;
  swift_getOpaqueTypeConformance2();
  v22 = v29;
  sub_1002D8AF0();
  v20(v6, v1);
  return (*(v28 + 8))(v13, v22);
}

uint64_t sub_100039FD4@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = sub_1002D8910();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v30 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v24 - v5;
  v7 = sub_10000321C(&qword_100444698, &qword_1002F5518);
  v8 = *(v7 - 8);
  v26 = v7;
  v27 = v8;
  __chkstk_darwin(v7);
  v10 = &v24 - v9;
  v11 = sub_10000321C(&qword_1004446A0, &qword_1002F5520);
  v28 = *(v11 - 8);
  v29 = v11;
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_1002D8E00(33);

  v32 = 0xD000000000000018;
  v33 = 0x8000000100355CF0;
  v14 = qword_10043D568;
  v15 = off_10043D570;

  v34._countAndFlagsBits = v14;
  v34._object = v15;
  sub_1002D8D50(v34);

  v35._countAndFlagsBits = 0x6E6F747475622ELL;
  v35._object = 0xE700000000000000;
  sub_1002D8D50(v35);
  sub_10000321C(&qword_1004446A8, &qword_1002F5528);
  sub_10002B6E4(&qword_1004446B0, &qword_1004446A8, &qword_1002F5528, &protocol conformance descriptor for ControlWidgetToggle<A, B, C>);
  v25 = v10;
  sub_1002D8CA0();
  if (qword_1004390A8 != -1)
  {
    swift_once();
  }

  v16 = sub_10001EDB8(v1, qword_10051A370);
  v17 = *(v2 + 16);
  v17(v6, v16, v1);
  v24 = sub_10002B6E4(&qword_1004446B8, &qword_100444698, &qword_1002F5518, &protocol conformance descriptor for StaticControlConfiguration<A>);
  v18 = v25;
  v19 = v26;
  sub_1002D8B00();
  v20 = *(v2 + 8);
  v20(v6, v1);
  (*(v27 + 8))(v18, v19);
  v32 = 0;
  v33 = 0xE000000000000000;
  v36._countAndFlagsBits = 0x206E6F206E727554;
  v36._object = 0xE800000000000000;
  sub_1002D8D50(v36);
  v21 = v30;
  v17(v30, v16, v1);
  sub_1002D8E10();
  v20(v21, v1);
  sub_1002D88F0();
  v32 = v19;
  v33 = v24;
  swift_getOpaqueTypeConformance2();
  v22 = v29;
  sub_1002D8AF0();
  v20(v6, v1);
  return (*(v28 + 8))(v13, v22);
}

uint64_t sub_10003A488@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = sub_1002D8910();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v30 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v24 - v5;
  v7 = sub_10000321C(&qword_1004446C0, &qword_1002F5530);
  v8 = *(v7 - 8);
  v26 = v7;
  v27 = v8;
  __chkstk_darwin(v7);
  v10 = &v24 - v9;
  v11 = sub_10000321C(&qword_1004446C8, &qword_1002F5538);
  v28 = *(v11 - 8);
  v29 = v11;
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_1002D8E00(33);

  v32 = 0xD000000000000018;
  v33 = 0x8000000100355CF0;
  v14 = qword_10043D588;
  v15 = off_10043D590;

  v34._countAndFlagsBits = v14;
  v34._object = v15;
  sub_1002D8D50(v34);

  v35._countAndFlagsBits = 0x6E6F747475622ELL;
  v35._object = 0xE700000000000000;
  sub_1002D8D50(v35);
  sub_10000321C(&qword_1004446D0, &qword_1002F5540);
  sub_10002B6E4(&qword_1004446D8, &qword_1004446D0, &qword_1002F5540, &protocol conformance descriptor for ControlWidgetToggle<A, B, C>);
  v25 = v10;
  sub_1002D8CA0();
  if (qword_1004390C0 != -1)
  {
    swift_once();
  }

  v16 = sub_10001EDB8(v1, qword_10051A3A8);
  v17 = *(v2 + 16);
  v17(v6, v16, v1);
  v24 = sub_10002B6E4(&qword_1004446E0, &qword_1004446C0, &qword_1002F5530, &protocol conformance descriptor for StaticControlConfiguration<A>);
  v18 = v25;
  v19 = v26;
  sub_1002D8B00();
  v20 = *(v2 + 8);
  v20(v6, v1);
  (*(v27 + 8))(v18, v19);
  v32 = 0;
  v33 = 0xE000000000000000;
  v36._countAndFlagsBits = 0x206E6F206E727554;
  v36._object = 0xE800000000000000;
  sub_1002D8D50(v36);
  v21 = v30;
  v17(v30, v16, v1);
  sub_1002D8E10();
  v20(v21, v1);
  sub_1002D88F0();
  v32 = v19;
  v33 = v24;
  swift_getOpaqueTypeConformance2();
  v22 = v29;
  sub_1002D8AF0();
  v20(v6, v1);
  return (*(v28 + 8))(v13, v22);
}

uint64_t sub_10003A93C@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = sub_1002D8910();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v30 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v24 - v5;
  v7 = sub_10000321C(&qword_1004446E8, &qword_1002F5548);
  v8 = *(v7 - 8);
  v26 = v7;
  v27 = v8;
  __chkstk_darwin(v7);
  v10 = &v24 - v9;
  v11 = sub_10000321C(&qword_1004446F0, &qword_1002F5550);
  v28 = *(v11 - 8);
  v29 = v11;
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_1002D8E00(33);

  v32 = 0xD000000000000018;
  v33 = 0x8000000100355CF0;
  v14 = qword_10043D5A8;
  v15 = off_10043D5B0;

  v34._countAndFlagsBits = v14;
  v34._object = v15;
  sub_1002D8D50(v34);

  v35._countAndFlagsBits = 0x6E6F747475622ELL;
  v35._object = 0xE700000000000000;
  sub_1002D8D50(v35);
  sub_10000321C(&qword_1004446F8, &qword_1002F5558);
  sub_10002B6E4(&qword_100444700, &qword_1004446F8, &qword_1002F5558, &protocol conformance descriptor for ControlWidgetToggle<A, B, C>);
  v25 = v10;
  sub_1002D8CA0();
  if (qword_1004390D8 != -1)
  {
    swift_once();
  }

  v16 = sub_10001EDB8(v1, qword_10051A3E0);
  v17 = *(v2 + 16);
  v17(v6, v16, v1);
  v24 = sub_10002B6E4(&qword_100444708, &qword_1004446E8, &qword_1002F5548, &protocol conformance descriptor for StaticControlConfiguration<A>);
  v18 = v25;
  v19 = v26;
  sub_1002D8B00();
  v20 = *(v2 + 8);
  v20(v6, v1);
  (*(v27 + 8))(v18, v19);
  v32 = 0;
  v33 = 0xE000000000000000;
  v36._countAndFlagsBits = 0x206E6F206E727554;
  v36._object = 0xE800000000000000;
  sub_1002D8D50(v36);
  v21 = v30;
  v17(v30, v16, v1);
  sub_1002D8E10();
  v20(v21, v1);
  sub_1002D88F0();
  v32 = v19;
  v33 = v24;
  swift_getOpaqueTypeConformance2();
  v22 = v29;
  sub_1002D8AF0();
  v20(v6, v1);
  return (*(v28 + 8))(v13, v22);
}

uint64_t sub_10003ADF0@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = sub_1002D8910();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v30 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v24 - v5;
  v7 = sub_10000321C(&qword_100444710, &qword_1002F5560);
  v8 = *(v7 - 8);
  v26 = v7;
  v27 = v8;
  __chkstk_darwin(v7);
  v10 = &v24 - v9;
  v11 = sub_10000321C(&qword_100444718, &qword_1002F5568);
  v28 = *(v11 - 8);
  v29 = v11;
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_1002D8E00(33);

  v32 = 0xD000000000000018;
  v33 = 0x8000000100355CF0;
  v14 = qword_10043D5C8;
  v15 = off_10043D5D0;

  v34._countAndFlagsBits = v14;
  v34._object = v15;
  sub_1002D8D50(v34);

  v35._countAndFlagsBits = 0x6E6F747475622ELL;
  v35._object = 0xE700000000000000;
  sub_1002D8D50(v35);
  sub_10000321C(&qword_100444720, &qword_1002F5570);
  sub_10002B6E4(&qword_100444728, &qword_100444720, &qword_1002F5570, &protocol conformance descriptor for ControlWidgetToggle<A, B, C>);
  v25 = v10;
  sub_1002D8CA0();
  if (qword_1004390F0 != -1)
  {
    swift_once();
  }

  v16 = sub_10001EDB8(v1, qword_10051A418);
  v17 = *(v2 + 16);
  v17(v6, v16, v1);
  v24 = sub_10002B6E4(&qword_100444730, &qword_100444710, &qword_1002F5560, &protocol conformance descriptor for StaticControlConfiguration<A>);
  v18 = v25;
  v19 = v26;
  sub_1002D8B00();
  v20 = *(v2 + 8);
  v20(v6, v1);
  (*(v27 + 8))(v18, v19);
  v32 = 0;
  v33 = 0xE000000000000000;
  v36._countAndFlagsBits = 0x206E6F206E727554;
  v36._object = 0xE800000000000000;
  sub_1002D8D50(v36);
  v21 = v30;
  v17(v30, v16, v1);
  sub_1002D8E10();
  v20(v21, v1);
  sub_1002D88F0();
  v32 = v19;
  v33 = v24;
  swift_getOpaqueTypeConformance2();
  v22 = v29;
  sub_1002D8AF0();
  v20(v6, v1);
  return (*(v28 + 8))(v13, v22);
}

uint64_t sub_10003B2A4@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = sub_1002D8910();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v30 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v24 - v5;
  v7 = sub_10000321C(&qword_100444738, &qword_1002F5578);
  v8 = *(v7 - 8);
  v26 = v7;
  v27 = v8;
  __chkstk_darwin(v7);
  v10 = &v24 - v9;
  v11 = sub_10000321C(&qword_100444740, &qword_1002F5580);
  v28 = *(v11 - 8);
  v29 = v11;
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_1002D8E00(33);

  v32 = 0xD000000000000018;
  v33 = 0x8000000100355CF0;
  v14 = qword_10043D5F8;
  v15 = off_10043D600;

  v34._countAndFlagsBits = v14;
  v34._object = v15;
  sub_1002D8D50(v34);

  v35._countAndFlagsBits = 0x6E6F747475622ELL;
  v35._object = 0xE700000000000000;
  sub_1002D8D50(v35);
  sub_10000321C(&qword_100444748, &qword_1002F5588);
  sub_10002B6E4(&qword_100444750, &qword_100444748, &qword_1002F5588, &protocol conformance descriptor for ControlWidgetToggle<A, B, C>);
  v25 = v10;
  sub_1002D8CA0();
  if (qword_100439118 != -1)
  {
    swift_once();
  }

  v16 = sub_10001EDB8(v1, qword_10051A468);
  v17 = *(v2 + 16);
  v17(v6, v16, v1);
  v24 = sub_10002B6E4(&qword_100444758, &qword_100444738, &qword_1002F5578, &protocol conformance descriptor for StaticControlConfiguration<A>);
  v18 = v25;
  v19 = v26;
  sub_1002D8B00();
  v20 = *(v2 + 8);
  v20(v6, v1);
  (*(v27 + 8))(v18, v19);
  v32 = 0;
  v33 = 0xE000000000000000;
  v36._countAndFlagsBits = 0x206E6F206E727554;
  v36._object = 0xE800000000000000;
  sub_1002D8D50(v36);
  v21 = v30;
  v17(v30, v16, v1);
  sub_1002D8E10();
  v20(v21, v1);
  sub_1002D88F0();
  v32 = v19;
  v33 = v24;
  swift_getOpaqueTypeConformance2();
  v22 = v29;
  sub_1002D8AF0();
  v20(v6, v1);
  return (*(v28 + 8))(v13, v22);
}

uint64_t sub_10003B758@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = sub_1002D8910();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v30 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v24 - v5;
  v7 = sub_10000321C(&qword_100444760, &qword_1002F5590);
  v8 = *(v7 - 8);
  v26 = v7;
  v27 = v8;
  __chkstk_darwin(v7);
  v10 = &v24 - v9;
  v11 = sub_10000321C(&qword_100444768, &qword_1002F5598);
  v28 = *(v11 - 8);
  v29 = v11;
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_1002D8E00(33);

  v32 = 0xD000000000000018;
  v33 = 0x8000000100355CF0;
  v14 = qword_10043D618;
  v15 = off_10043D620;

  v34._countAndFlagsBits = v14;
  v34._object = v15;
  sub_1002D8D50(v34);

  v35._countAndFlagsBits = 0x6E6F747475622ELL;
  v35._object = 0xE700000000000000;
  sub_1002D8D50(v35);
  sub_10000321C(&qword_100444770, &qword_1002F55A0);
  sub_10002B6E4(&qword_100444778, &qword_100444770, &qword_1002F55A0, &protocol conformance descriptor for ControlWidgetToggle<A, B, C>);
  v25 = v10;
  sub_1002D8CA0();
  if (qword_100439130 != -1)
  {
    swift_once();
  }

  v16 = sub_10001EDB8(v1, qword_10051A4A0);
  v17 = *(v2 + 16);
  v17(v6, v16, v1);
  v24 = sub_10002B6E4(&qword_100444780, &qword_100444760, &qword_1002F5590, &protocol conformance descriptor for StaticControlConfiguration<A>);
  v18 = v25;
  v19 = v26;
  sub_1002D8B00();
  v20 = *(v2 + 8);
  v20(v6, v1);
  (*(v27 + 8))(v18, v19);
  v32 = 0;
  v33 = 0xE000000000000000;
  v36._countAndFlagsBits = 0x206E6F206E727554;
  v36._object = 0xE800000000000000;
  sub_1002D8D50(v36);
  v21 = v30;
  v17(v30, v16, v1);
  sub_1002D8E10();
  v20(v21, v1);
  sub_1002D88F0();
  v32 = v19;
  v33 = v24;
  swift_getOpaqueTypeConformance2();
  v22 = v29;
  sub_1002D8AF0();
  v20(v6, v1);
  return (*(v28 + 8))(v13, v22);
}

uint64_t sub_10003BC0C@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = sub_1002D8910();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v30 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v24 - v5;
  v7 = sub_10000321C(&qword_100444788, &qword_1002F55A8);
  v8 = *(v7 - 8);
  v26 = v7;
  v27 = v8;
  __chkstk_darwin(v7);
  v10 = &v24 - v9;
  v11 = sub_10000321C(&qword_100444790, &qword_1002F55B0);
  v28 = *(v11 - 8);
  v29 = v11;
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_1002D8E00(33);

  v32 = 0xD000000000000018;
  v33 = 0x8000000100355CF0;
  v14 = qword_10043D638;
  v15 = off_10043D640;

  v34._countAndFlagsBits = v14;
  v34._object = v15;
  sub_1002D8D50(v34);

  v35._countAndFlagsBits = 0x6E6F747475622ELL;
  v35._object = 0xE700000000000000;
  sub_1002D8D50(v35);
  sub_10000321C(&qword_100444798, &qword_1002F55B8);
  sub_10002B6E4(&qword_1004447A0, &qword_100444798, &qword_1002F55B8, &protocol conformance descriptor for ControlWidgetToggle<A, B, C>);
  v25 = v10;
  sub_1002D8CA0();
  if (qword_100439148 != -1)
  {
    swift_once();
  }

  v16 = sub_10001EDB8(v1, qword_10051A4D8);
  v17 = *(v2 + 16);
  v17(v6, v16, v1);
  v24 = sub_10002B6E4(&qword_1004447A8, &qword_100444788, &qword_1002F55A8, &protocol conformance descriptor for StaticControlConfiguration<A>);
  v18 = v25;
  v19 = v26;
  sub_1002D8B00();
  v20 = *(v2 + 8);
  v20(v6, v1);
  (*(v27 + 8))(v18, v19);
  v32 = 0;
  v33 = 0xE000000000000000;
  v36._countAndFlagsBits = 0x206E6F206E727554;
  v36._object = 0xE800000000000000;
  sub_1002D8D50(v36);
  v21 = v30;
  v17(v30, v16, v1);
  sub_1002D8E10();
  v20(v21, v1);
  sub_1002D88F0();
  v32 = v19;
  v33 = v24;
  swift_getOpaqueTypeConformance2();
  v22 = v29;
  sub_1002D8AF0();
  v20(v6, v1);
  return (*(v28 + 8))(v13, v22);
}

uint64_t sub_10003C0C0@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = sub_1002D8910();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v30 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v24 - v5;
  v7 = sub_10000321C(&qword_1004447B0, &qword_1002F55C0);
  v8 = *(v7 - 8);
  v26 = v7;
  v27 = v8;
  __chkstk_darwin(v7);
  v10 = &v24 - v9;
  v11 = sub_10000321C(&qword_1004447B8, &qword_1002F55C8);
  v28 = *(v11 - 8);
  v29 = v11;
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_1002D8E00(33);

  v32 = 0xD000000000000018;
  v33 = 0x8000000100355CF0;
  v14 = qword_10043D668;
  v15 = off_10043D670;

  v34._countAndFlagsBits = v14;
  v34._object = v15;
  sub_1002D8D50(v34);

  v35._countAndFlagsBits = 0x6E6F747475622ELL;
  v35._object = 0xE700000000000000;
  sub_1002D8D50(v35);
  sub_10000321C(&qword_1004447C0, &qword_1002F55D0);
  sub_10002B6E4(&qword_1004447C8, &qword_1004447C0, &qword_1002F55D0, &protocol conformance descriptor for ControlWidgetToggle<A, B, C>);
  v25 = v10;
  sub_1002D8CA0();
  if (qword_100439170 != -1)
  {
    swift_once();
  }

  v16 = sub_10001EDB8(v1, qword_10051A528);
  v17 = *(v2 + 16);
  v17(v6, v16, v1);
  v24 = sub_10002B6E4(&qword_1004447D0, &qword_1004447B0, &qword_1002F55C0, &protocol conformance descriptor for StaticControlConfiguration<A>);
  v18 = v25;
  v19 = v26;
  sub_1002D8B00();
  v20 = *(v2 + 8);
  v20(v6, v1);
  (*(v27 + 8))(v18, v19);
  v32 = 0;
  v33 = 0xE000000000000000;
  v36._countAndFlagsBits = 0x206E6F206E727554;
  v36._object = 0xE800000000000000;
  sub_1002D8D50(v36);
  v21 = v30;
  v17(v30, v16, v1);
  sub_1002D8E10();
  v20(v21, v1);
  sub_1002D88F0();
  v32 = v19;
  v33 = v24;
  swift_getOpaqueTypeConformance2();
  v22 = v29;
  sub_1002D8AF0();
  v20(v6, v1);
  return (*(v28 + 8))(v13, v22);
}

uint64_t sub_10003C574@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = sub_1002D8910();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v30 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v24 - v5;
  v7 = sub_10000321C(&qword_1004447D8, &qword_1002F55D8);
  v8 = *(v7 - 8);
  v26 = v7;
  v27 = v8;
  __chkstk_darwin(v7);
  v10 = &v24 - v9;
  v11 = sub_10000321C(&qword_1004447E0, &qword_1002F55E0);
  v28 = *(v11 - 8);
  v29 = v11;
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_1002D8E00(33);

  v32 = 0xD000000000000018;
  v33 = 0x8000000100355CF0;
  v14 = qword_10043D688;
  v15 = off_10043D690;

  v34._countAndFlagsBits = v14;
  v34._object = v15;
  sub_1002D8D50(v34);

  v35._countAndFlagsBits = 0x6E6F747475622ELL;
  v35._object = 0xE700000000000000;
  sub_1002D8D50(v35);
  sub_10000321C(&qword_1004447E8, &qword_1002F55E8);
  sub_10002B6E4(&qword_1004447F0, &qword_1004447E8, &qword_1002F55E8, &protocol conformance descriptor for ControlWidgetToggle<A, B, C>);
  v25 = v10;
  sub_1002D8CA0();
  if (qword_100439188 != -1)
  {
    swift_once();
  }

  v16 = sub_10001EDB8(v1, qword_10051A560);
  v17 = *(v2 + 16);
  v17(v6, v16, v1);
  v24 = sub_10002B6E4(&qword_1004447F8, &qword_1004447D8, &qword_1002F55D8, &protocol conformance descriptor for StaticControlConfiguration<A>);
  v18 = v25;
  v19 = v26;
  sub_1002D8B00();
  v20 = *(v2 + 8);
  v20(v6, v1);
  (*(v27 + 8))(v18, v19);
  v32 = 0;
  v33 = 0xE000000000000000;
  v36._countAndFlagsBits = 0x206E6F206E727554;
  v36._object = 0xE800000000000000;
  sub_1002D8D50(v36);
  v21 = v30;
  v17(v30, v16, v1);
  sub_1002D8E10();
  v20(v21, v1);
  sub_1002D88F0();
  v32 = v19;
  v33 = v24;
  swift_getOpaqueTypeConformance2();
  v22 = v29;
  sub_1002D8AF0();
  v20(v6, v1);
  return (*(v28 + 8))(v13, v22);
}

uint64_t sub_10003CA28@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = sub_1002D8910();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v30 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v24 - v5;
  v7 = sub_10000321C(&qword_100444800, &qword_1002F55F0);
  v8 = *(v7 - 8);
  v26 = v7;
  v27 = v8;
  __chkstk_darwin(v7);
  v10 = &v24 - v9;
  v11 = sub_10000321C(&qword_100444808, &qword_1002F55F8);
  v28 = *(v11 - 8);
  v29 = v11;
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_1002D8E00(33);

  v32 = 0xD000000000000018;
  v33 = 0x8000000100355CF0;
  v14 = qword_10043D6A8;
  v15 = off_10043D6B0;

  v34._countAndFlagsBits = v14;
  v34._object = v15;
  sub_1002D8D50(v34);

  v35._countAndFlagsBits = 0x6E6F747475622ELL;
  v35._object = 0xE700000000000000;
  sub_1002D8D50(v35);
  sub_10000321C(&qword_100444810, &qword_1002F5600);
  sub_10002B6E4(&qword_100444818, &qword_100444810, &qword_1002F5600, &protocol conformance descriptor for ControlWidgetToggle<A, B, C>);
  v25 = v10;
  sub_1002D8CA0();
  if (qword_1004391A0 != -1)
  {
    swift_once();
  }

  v16 = sub_10001EDB8(v1, qword_10051A598);
  v17 = *(v2 + 16);
  v17(v6, v16, v1);
  v24 = sub_10002B6E4(&qword_100444820, &qword_100444800, &qword_1002F55F0, &protocol conformance descriptor for StaticControlConfiguration<A>);
  v18 = v25;
  v19 = v26;
  sub_1002D8B00();
  v20 = *(v2 + 8);
  v20(v6, v1);
  (*(v27 + 8))(v18, v19);
  v32 = 0;
  v33 = 0xE000000000000000;
  v36._countAndFlagsBits = 0x206E6F206E727554;
  v36._object = 0xE800000000000000;
  sub_1002D8D50(v36);
  v21 = v30;
  v17(v30, v16, v1);
  sub_1002D8E10();
  v20(v21, v1);
  sub_1002D88F0();
  v32 = v19;
  v33 = v24;
  swift_getOpaqueTypeConformance2();
  v22 = v29;
  sub_1002D8AF0();
  v20(v6, v1);
  return (*(v28 + 8))(v13, v22);
}

uint64_t sub_10003CEDC@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = sub_1002D8910();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v30 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v24 - v5;
  v7 = sub_10000321C(&qword_100444828, &qword_1002F5608);
  v8 = *(v7 - 8);
  v26 = v7;
  v27 = v8;
  __chkstk_darwin(v7);
  v10 = &v24 - v9;
  v11 = sub_10000321C(&qword_100444830, &qword_1002F5610);
  v28 = *(v11 - 8);
  v29 = v11;
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_1002D8E00(33);

  v32 = 0xD000000000000018;
  v33 = 0x8000000100355CF0;
  v14 = qword_10043D6C8;
  v15 = off_10043D6D0;

  v34._countAndFlagsBits = v14;
  v34._object = v15;
  sub_1002D8D50(v34);

  v35._countAndFlagsBits = 0x6E6F747475622ELL;
  v35._object = 0xE700000000000000;
  sub_1002D8D50(v35);
  sub_10000321C(&qword_100444838, &qword_1002F5618);
  sub_10002B6E4(&qword_100444840, &qword_100444838, &qword_1002F5618, &protocol conformance descriptor for ControlWidgetToggle<A, B, C>);
  v25 = v10;
  sub_1002D8CA0();
  if (qword_1004391B8 != -1)
  {
    swift_once();
  }

  v16 = sub_10001EDB8(v1, qword_10051A5D0);
  v17 = *(v2 + 16);
  v17(v6, v16, v1);
  v24 = sub_10002B6E4(&qword_100444848, &qword_100444828, &qword_1002F5608, &protocol conformance descriptor for StaticControlConfiguration<A>);
  v18 = v25;
  v19 = v26;
  sub_1002D8B00();
  v20 = *(v2 + 8);
  v20(v6, v1);
  (*(v27 + 8))(v18, v19);
  v32 = 0;
  v33 = 0xE000000000000000;
  v36._countAndFlagsBits = 0x206E6F206E727554;
  v36._object = 0xE800000000000000;
  sub_1002D8D50(v36);
  v21 = v30;
  v17(v30, v16, v1);
  sub_1002D8E10();
  v20(v21, v1);
  sub_1002D88F0();
  v32 = v19;
  v33 = v24;
  swift_getOpaqueTypeConformance2();
  v22 = v29;
  sub_1002D8AF0();
  v20(v6, v1);
  return (*(v28 + 8))(v13, v22);
}

uint64_t sub_10003D390@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = sub_1002D8910();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v30 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v24 - v5;
  v7 = sub_10000321C(&qword_100444850, &qword_1002F5620);
  v8 = *(v7 - 8);
  v26 = v7;
  v27 = v8;
  __chkstk_darwin(v7);
  v10 = &v24 - v9;
  v11 = sub_10000321C(&qword_100444858, &qword_1002F5628);
  v28 = *(v11 - 8);
  v29 = v11;
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_1002D8E00(33);

  v32 = 0xD000000000000018;
  v33 = 0x8000000100355CF0;
  v14 = qword_10043D6E8;
  v15 = off_10043D6F0;

  v34._countAndFlagsBits = v14;
  v34._object = v15;
  sub_1002D8D50(v34);

  v35._countAndFlagsBits = 0x6E6F747475622ELL;
  v35._object = 0xE700000000000000;
  sub_1002D8D50(v35);
  sub_10000321C(&qword_100444860, &qword_1002F5630);
  sub_10002B6E4(&qword_100444868, &qword_100444860, &qword_1002F5630, &protocol conformance descriptor for ControlWidgetToggle<A, B, C>);
  v25 = v10;
  sub_1002D8CA0();
  if (qword_1004391D0 != -1)
  {
    swift_once();
  }

  v16 = sub_10001EDB8(v1, qword_10051A608);
  v17 = *(v2 + 16);
  v17(v6, v16, v1);
  v24 = sub_10002B6E4(&qword_100444870, &qword_100444850, &qword_1002F5620, &protocol conformance descriptor for StaticControlConfiguration<A>);
  v18 = v25;
  v19 = v26;
  sub_1002D8B00();
  v20 = *(v2 + 8);
  v20(v6, v1);
  (*(v27 + 8))(v18, v19);
  v32 = 0;
  v33 = 0xE000000000000000;
  v36._countAndFlagsBits = 0x206E6F206E727554;
  v36._object = 0xE800000000000000;
  sub_1002D8D50(v36);
  v21 = v30;
  v17(v30, v16, v1);
  sub_1002D8E10();
  v20(v21, v1);
  sub_1002D88F0();
  v32 = v19;
  v33 = v24;
  swift_getOpaqueTypeConformance2();
  v22 = v29;
  sub_1002D8AF0();
  v20(v6, v1);
  return (*(v28 + 8))(v13, v22);
}

uint64_t sub_10003D844@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = sub_1002D8910();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v30 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v24 - v5;
  v7 = sub_10000321C(&qword_100444878, &qword_1002F5638);
  v8 = *(v7 - 8);
  v26 = v7;
  v27 = v8;
  __chkstk_darwin(v7);
  v10 = &v24 - v9;
  v11 = sub_10000321C(&qword_100444880, &qword_1002F5640);
  v28 = *(v11 - 8);
  v29 = v11;
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_1002D8E00(33);

  v32 = 0xD000000000000018;
  v33 = 0x8000000100355CF0;
  v14 = qword_10043D708;
  v15 = off_10043D710;

  v34._countAndFlagsBits = v14;
  v34._object = v15;
  sub_1002D8D50(v34);

  v35._countAndFlagsBits = 0x6E6F747475622ELL;
  v35._object = 0xE700000000000000;
  sub_1002D8D50(v35);
  sub_10000321C(&qword_100444888, &qword_1002F5648);
  sub_10002B6E4(&qword_100444890, &qword_100444888, &qword_1002F5648, &protocol conformance descriptor for ControlWidgetToggle<A, B, C>);
  v25 = v10;
  sub_1002D8CA0();
  if (qword_1004391E8 != -1)
  {
    swift_once();
  }

  v16 = sub_10001EDB8(v1, qword_10051A640);
  v17 = *(v2 + 16);
  v17(v6, v16, v1);
  v24 = sub_10002B6E4(&qword_100444898, &qword_100444878, &qword_1002F5638, &protocol conformance descriptor for StaticControlConfiguration<A>);
  v18 = v25;
  v19 = v26;
  sub_1002D8B00();
  v20 = *(v2 + 8);
  v20(v6, v1);
  (*(v27 + 8))(v18, v19);
  v32 = 0;
  v33 = 0xE000000000000000;
  v36._countAndFlagsBits = 0x206E6F206E727554;
  v36._object = 0xE800000000000000;
  sub_1002D8D50(v36);
  v21 = v30;
  v17(v30, v16, v1);
  sub_1002D8E10();
  v20(v21, v1);
  sub_1002D88F0();
  v32 = v19;
  v33 = v24;
  swift_getOpaqueTypeConformance2();
  v22 = v29;
  sub_1002D8AF0();
  v20(v6, v1);
  return (*(v28 + 8))(v13, v22);
}

uint64_t sub_10003DCF8@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = sub_1002D8910();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v30 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v24 - v5;
  v7 = sub_10000321C(&qword_1004448A0, &qword_1002F5650);
  v8 = *(v7 - 8);
  v26 = v7;
  v27 = v8;
  __chkstk_darwin(v7);
  v10 = &v24 - v9;
  v11 = sub_10000321C(&qword_1004448A8, &qword_1002F5658);
  v28 = *(v11 - 8);
  v29 = v11;
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_1002D8E00(33);

  v32 = 0xD000000000000018;
  v33 = 0x8000000100355CF0;
  v14 = qword_10043D728;
  v15 = off_10043D730;

  v34._countAndFlagsBits = v14;
  v34._object = v15;
  sub_1002D8D50(v34);

  v35._countAndFlagsBits = 0x6E6F747475622ELL;
  v35._object = 0xE700000000000000;
  sub_1002D8D50(v35);
  sub_10000321C(&qword_1004448B0, &qword_1002F5660);
  sub_10002B6E4(&qword_1004448B8, &qword_1004448B0, &qword_1002F5660, &protocol conformance descriptor for ControlWidgetToggle<A, B, C>);
  v25 = v10;
  sub_1002D8CA0();
  if (qword_100439200 != -1)
  {
    swift_once();
  }

  v16 = sub_10001EDB8(v1, qword_10051A678);
  v17 = *(v2 + 16);
  v17(v6, v16, v1);
  v24 = sub_10002B6E4(&qword_1004448C0, &qword_1004448A0, &qword_1002F5650, &protocol conformance descriptor for StaticControlConfiguration<A>);
  v18 = v25;
  v19 = v26;
  sub_1002D8B00();
  v20 = *(v2 + 8);
  v20(v6, v1);
  (*(v27 + 8))(v18, v19);
  v32 = 0;
  v33 = 0xE000000000000000;
  v36._countAndFlagsBits = 0x206E6F206E727554;
  v36._object = 0xE800000000000000;
  sub_1002D8D50(v36);
  v21 = v30;
  v17(v30, v16, v1);
  sub_1002D8E10();
  v20(v21, v1);
  sub_1002D88F0();
  v32 = v19;
  v33 = v24;
  swift_getOpaqueTypeConformance2();
  v22 = v29;
  sub_1002D8AF0();
  v20(v6, v1);
  return (*(v28 + 8))(v13, v22);
}

uint64_t sub_10003E1AC@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = sub_1002D8910();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v30 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v24 - v5;
  v7 = sub_10000321C(&qword_1004448C8, &qword_1002F5668);
  v8 = *(v7 - 8);
  v26 = v7;
  v27 = v8;
  __chkstk_darwin(v7);
  v10 = &v24 - v9;
  v11 = sub_10000321C(&qword_1004448D0, &qword_1002F5670);
  v28 = *(v11 - 8);
  v29 = v11;
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_1002D8E00(33);

  v32 = 0xD000000000000018;
  v33 = 0x8000000100355CF0;
  v14 = qword_10043D748;
  v15 = off_10043D750;

  v34._countAndFlagsBits = v14;
  v34._object = v15;
  sub_1002D8D50(v34);

  v35._countAndFlagsBits = 0x6E6F747475622ELL;
  v35._object = 0xE700000000000000;
  sub_1002D8D50(v35);
  sub_10000321C(&qword_1004448D8, &qword_1002F5678);
  sub_10002B6E4(&qword_1004448E0, &qword_1004448D8, &qword_1002F5678, &protocol conformance descriptor for ControlWidgetToggle<A, B, C>);
  v25 = v10;
  sub_1002D8CA0();
  if (qword_100439218 != -1)
  {
    swift_once();
  }

  v16 = sub_10001EDB8(v1, qword_10051A6B0);
  v17 = *(v2 + 16);
  v17(v6, v16, v1);
  v24 = sub_10002B6E4(&qword_1004448E8, &qword_1004448C8, &qword_1002F5668, &protocol conformance descriptor for StaticControlConfiguration<A>);
  v18 = v25;
  v19 = v26;
  sub_1002D8B00();
  v20 = *(v2 + 8);
  v20(v6, v1);
  (*(v27 + 8))(v18, v19);
  v32 = 0;
  v33 = 0xE000000000000000;
  v36._countAndFlagsBits = 0x206E6F206E727554;
  v36._object = 0xE800000000000000;
  sub_1002D8D50(v36);
  v21 = v30;
  v17(v30, v16, v1);
  sub_1002D8E10();
  v20(v21, v1);
  sub_1002D88F0();
  v32 = v19;
  v33 = v24;
  swift_getOpaqueTypeConformance2();
  v22 = v29;
  sub_1002D8AF0();
  v20(v6, v1);
  return (*(v28 + 8))(v13, v22);
}

uint64_t sub_10003E660@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = sub_1002D8910();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v30 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v24 - v5;
  v7 = sub_10000321C(&qword_1004448F0, &qword_1002F5680);
  v8 = *(v7 - 8);
  v26 = v7;
  v27 = v8;
  __chkstk_darwin(v7);
  v10 = &v24 - v9;
  v11 = sub_10000321C(&qword_1004448F8, &qword_1002F5688);
  v28 = *(v11 - 8);
  v29 = v11;
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_1002D8E00(33);

  v32 = 0xD000000000000018;
  v33 = 0x8000000100355CF0;
  v14 = qword_10043D768;
  v15 = off_10043D770;

  v34._countAndFlagsBits = v14;
  v34._object = v15;
  sub_1002D8D50(v34);

  v35._countAndFlagsBits = 0x6E6F747475622ELL;
  v35._object = 0xE700000000000000;
  sub_1002D8D50(v35);
  sub_10000321C(&qword_100444900, &qword_1002F5690);
  sub_10002B6E4(&qword_100444908, &qword_100444900, &qword_1002F5690, &protocol conformance descriptor for ControlWidgetToggle<A, B, C>);
  v25 = v10;
  sub_1002D8CA0();
  if (qword_100439230 != -1)
  {
    swift_once();
  }

  v16 = sub_10001EDB8(v1, qword_10051A6E8);
  v17 = *(v2 + 16);
  v17(v6, v16, v1);
  v24 = sub_10002B6E4(&qword_100444910, &qword_1004448F0, &qword_1002F5680, &protocol conformance descriptor for StaticControlConfiguration<A>);
  v18 = v25;
  v19 = v26;
  sub_1002D8B00();
  v20 = *(v2 + 8);
  v20(v6, v1);
  (*(v27 + 8))(v18, v19);
  v32 = 0;
  v33 = 0xE000000000000000;
  v36._countAndFlagsBits = 0x206E6F206E727554;
  v36._object = 0xE800000000000000;
  sub_1002D8D50(v36);
  v21 = v30;
  v17(v30, v16, v1);
  sub_1002D8E10();
  v20(v21, v1);
  sub_1002D88F0();
  v32 = v19;
  v33 = v24;
  swift_getOpaqueTypeConformance2();
  v22 = v29;
  sub_1002D8AF0();
  v20(v6, v1);
  return (*(v28 + 8))(v13, v22);
}

uint64_t sub_10003EB14@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = sub_1002D8910();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v30 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v24 - v5;
  v7 = sub_10000321C(&qword_100444918, &qword_1002F5698);
  v8 = *(v7 - 8);
  v26 = v7;
  v27 = v8;
  __chkstk_darwin(v7);
  v10 = &v24 - v9;
  v11 = sub_10000321C(&qword_100444920, &qword_1002F56A0);
  v28 = *(v11 - 8);
  v29 = v11;
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_1002D8E00(33);

  v32 = 0xD000000000000018;
  v33 = 0x8000000100355CF0;
  v14 = qword_10043D788;
  v15 = off_10043D790;

  v34._countAndFlagsBits = v14;
  v34._object = v15;
  sub_1002D8D50(v34);

  v35._countAndFlagsBits = 0x6E6F747475622ELL;
  v35._object = 0xE700000000000000;
  sub_1002D8D50(v35);
  sub_10000321C(&qword_100444928, &qword_1002F56A8);
  sub_10002B6E4(&qword_100444930, &qword_100444928, &qword_1002F56A8, &protocol conformance descriptor for ControlWidgetToggle<A, B, C>);
  v25 = v10;
  sub_1002D8CA0();
  if (qword_100439248 != -1)
  {
    swift_once();
  }

  v16 = sub_10001EDB8(v1, qword_10051A720);
  v17 = *(v2 + 16);
  v17(v6, v16, v1);
  v24 = sub_10002B6E4(&qword_100444938, &qword_100444918, &qword_1002F5698, &protocol conformance descriptor for StaticControlConfiguration<A>);
  v18 = v25;
  v19 = v26;
  sub_1002D8B00();
  v20 = *(v2 + 8);
  v20(v6, v1);
  (*(v27 + 8))(v18, v19);
  v32 = 0;
  v33 = 0xE000000000000000;
  v36._countAndFlagsBits = 0x206E6F206E727554;
  v36._object = 0xE800000000000000;
  sub_1002D8D50(v36);
  v21 = v30;
  v17(v30, v16, v1);
  sub_1002D8E10();
  v20(v21, v1);
  sub_1002D88F0();
  v32 = v19;
  v33 = v24;
  swift_getOpaqueTypeConformance2();
  v22 = v29;
  sub_1002D8AF0();
  v20(v6, v1);
  return (*(v28 + 8))(v13, v22);
}

uint64_t sub_10003EFC8@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = sub_1002D8910();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v30 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v24 - v5;
  v7 = sub_10000321C(&qword_100444940, &qword_1002F56B0);
  v8 = *(v7 - 8);
  v26 = v7;
  v27 = v8;
  __chkstk_darwin(v7);
  v10 = &v24 - v9;
  v11 = sub_10000321C(&qword_100444948, &qword_1002F56B8);
  v28 = *(v11 - 8);
  v29 = v11;
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_1002D8E00(33);

  v32 = 0xD000000000000018;
  v33 = 0x8000000100355CF0;
  v14 = qword_10043D7A8;
  v15 = off_10043D7B0;

  v34._countAndFlagsBits = v14;
  v34._object = v15;
  sub_1002D8D50(v34);

  v35._countAndFlagsBits = 0x6E6F747475622ELL;
  v35._object = 0xE700000000000000;
  sub_1002D8D50(v35);
  sub_10000321C(&qword_100444950, &qword_1002F56C0);
  sub_10002B6E4(&qword_100444958, &qword_100444950, &qword_1002F56C0, &protocol conformance descriptor for ControlWidgetToggle<A, B, C>);
  v25 = v10;
  sub_1002D8CA0();
  if (qword_100439260 != -1)
  {
    swift_once();
  }

  v16 = sub_10001EDB8(v1, qword_10051A758);
  v17 = *(v2 + 16);
  v17(v6, v16, v1);
  v24 = sub_10002B6E4(&qword_100444960, &qword_100444940, &qword_1002F56B0, &protocol conformance descriptor for StaticControlConfiguration<A>);
  v18 = v25;
  v19 = v26;
  sub_1002D8B00();
  v20 = *(v2 + 8);
  v20(v6, v1);
  (*(v27 + 8))(v18, v19);
  v32 = 0;
  v33 = 0xE000000000000000;
  v36._countAndFlagsBits = 0x206E6F206E727554;
  v36._object = 0xE800000000000000;
  sub_1002D8D50(v36);
  v21 = v30;
  v17(v30, v16, v1);
  sub_1002D8E10();
  v20(v21, v1);
  sub_1002D88F0();
  v32 = v19;
  v33 = v24;
  swift_getOpaqueTypeConformance2();
  v22 = v29;
  sub_1002D8AF0();
  v20(v6, v1);
  return (*(v28 + 8))(v13, v22);
}

uint64_t sub_10003F47C@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = sub_1002D8910();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v30 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v24 - v5;
  v7 = sub_10000321C(&qword_100444968, &qword_1002F56C8);
  v8 = *(v7 - 8);
  v26 = v7;
  v27 = v8;
  __chkstk_darwin(v7);
  v10 = &v24 - v9;
  v11 = sub_10000321C(&qword_100444970, &qword_1002F56D0);
  v28 = *(v11 - 8);
  v29 = v11;
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_1002D8E00(33);

  v32 = 0xD000000000000018;
  v33 = 0x8000000100355CF0;
  v14 = qword_10043D7C8;
  v15 = off_10043D7D0;

  v34._countAndFlagsBits = v14;
  v34._object = v15;
  sub_1002D8D50(v34);

  v35._countAndFlagsBits = 0x6E6F747475622ELL;
  v35._object = 0xE700000000000000;
  sub_1002D8D50(v35);
  sub_10000321C(&qword_100444978, &qword_1002F56D8);
  sub_10002B6E4(&qword_100444980, &qword_100444978, &qword_1002F56D8, &protocol conformance descriptor for ControlWidgetToggle<A, B, C>);
  v25 = v10;
  sub_1002D8CA0();
  if (qword_100439278 != -1)
  {
    swift_once();
  }

  v16 = sub_10001EDB8(v1, qword_10051A790);
  v17 = *(v2 + 16);
  v17(v6, v16, v1);
  v24 = sub_10002B6E4(&qword_100444988, &qword_100444968, &qword_1002F56C8, &protocol conformance descriptor for StaticControlConfiguration<A>);
  v18 = v25;
  v19 = v26;
  sub_1002D8B00();
  v20 = *(v2 + 8);
  v20(v6, v1);
  (*(v27 + 8))(v18, v19);
  v32 = 0;
  v33 = 0xE000000000000000;
  v36._countAndFlagsBits = 0x206E6F206E727554;
  v36._object = 0xE800000000000000;
  sub_1002D8D50(v36);
  v21 = v30;
  v17(v30, v16, v1);
  sub_1002D8E10();
  v20(v21, v1);
  sub_1002D88F0();
  v32 = v19;
  v33 = v24;
  swift_getOpaqueTypeConformance2();
  v22 = v29;
  sub_1002D8AF0();
  v20(v6, v1);
  return (*(v28 + 8))(v13, v22);
}

uint64_t sub_10003F930@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = sub_1002D8910();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v30 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v24 - v5;
  v7 = sub_10000321C(&qword_100444990, &qword_1002F56E0);
  v8 = *(v7 - 8);
  v26 = v7;
  v27 = v8;
  __chkstk_darwin(v7);
  v10 = &v24 - v9;
  v11 = sub_10000321C(&qword_100444998, &qword_1002F56E8);
  v28 = *(v11 - 8);
  v29 = v11;
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_1002D8E00(33);

  v32 = 0xD000000000000018;
  v33 = 0x8000000100355CF0;
  v14 = qword_10043D7E8;
  v15 = off_10043D7F0;

  v34._countAndFlagsBits = v14;
  v34._object = v15;
  sub_1002D8D50(v34);

  v35._countAndFlagsBits = 0x6E6F747475622ELL;
  v35._object = 0xE700000000000000;
  sub_1002D8D50(v35);
  sub_10000321C(&qword_1004449A0, &qword_1002F56F0);
  sub_10002B6E4(&qword_1004449A8, &qword_1004449A0, &qword_1002F56F0, &protocol conformance descriptor for ControlWidgetToggle<A, B, C>);
  v25 = v10;
  sub_1002D8CA0();
  if (qword_100439290 != -1)
  {
    swift_once();
  }

  v16 = sub_10001EDB8(v1, qword_10051A7C8);
  v17 = *(v2 + 16);
  v17(v6, v16, v1);
  v24 = sub_10002B6E4(&qword_1004449B0, &qword_100444990, &qword_1002F56E0, &protocol conformance descriptor for StaticControlConfiguration<A>);
  v18 = v25;
  v19 = v26;
  sub_1002D8B00();
  v20 = *(v2 + 8);
  v20(v6, v1);
  (*(v27 + 8))(v18, v19);
  v32 = 0;
  v33 = 0xE000000000000000;
  v36._countAndFlagsBits = 0x206E6F206E727554;
  v36._object = 0xE800000000000000;
  sub_1002D8D50(v36);
  v21 = v30;
  v17(v30, v16, v1);
  sub_1002D8E10();
  v20(v21, v1);
  sub_1002D88F0();
  v32 = v19;
  v33 = v24;
  swift_getOpaqueTypeConformance2();
  v22 = v29;
  sub_1002D8AF0();
  v20(v6, v1);
  return (*(v28 + 8))(v13, v22);
}

uint64_t sub_10003FDE4@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = sub_1002D8910();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v30 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v24 - v5;
  v7 = sub_10000321C(&qword_1004449B8, &qword_1002F56F8);
  v8 = *(v7 - 8);
  v26 = v7;
  v27 = v8;
  __chkstk_darwin(v7);
  v10 = &v24 - v9;
  v11 = sub_10000321C(&qword_1004449C0, &qword_1002F5700);
  v28 = *(v11 - 8);
  v29 = v11;
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_1002D8E00(33);

  v32 = 0xD000000000000018;
  v33 = 0x8000000100355CF0;
  v14 = qword_10043D808;
  v15 = off_10043D810;

  v34._countAndFlagsBits = v14;
  v34._object = v15;
  sub_1002D8D50(v34);

  v35._countAndFlagsBits = 0x6E6F747475622ELL;
  v35._object = 0xE700000000000000;
  sub_1002D8D50(v35);
  sub_10000321C(&qword_1004449C8, &qword_1002F5708);
  sub_10002B6E4(&qword_1004449D0, &qword_1004449C8, &qword_1002F5708, &protocol conformance descriptor for ControlWidgetToggle<A, B, C>);
  v25 = v10;
  sub_1002D8CA0();
  if (qword_1004392A8 != -1)
  {
    swift_once();
  }

  v16 = sub_10001EDB8(v1, qword_10051A800);
  v17 = *(v2 + 16);
  v17(v6, v16, v1);
  v24 = sub_10002B6E4(&qword_1004449D8, &qword_1004449B8, &qword_1002F56F8, &protocol conformance descriptor for StaticControlConfiguration<A>);
  v18 = v25;
  v19 = v26;
  sub_1002D8B00();
  v20 = *(v2 + 8);
  v20(v6, v1);
  (*(v27 + 8))(v18, v19);
  v32 = 0;
  v33 = 0xE000000000000000;
  v36._countAndFlagsBits = 0x206E6F206E727554;
  v36._object = 0xE800000000000000;
  sub_1002D8D50(v36);
  v21 = v30;
  v17(v30, v16, v1);
  sub_1002D8E10();
  v20(v21, v1);
  sub_1002D88F0();
  v32 = v19;
  v33 = v24;
  swift_getOpaqueTypeConformance2();
  v22 = v29;
  sub_1002D8AF0();
  v20(v6, v1);
  return (*(v28 + 8))(v13, v22);
}

uint64_t sub_100040298@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = sub_1002D8910();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v30 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v24 - v5;
  v7 = sub_10000321C(&qword_1004449E0, &qword_1002F5710);
  v8 = *(v7 - 8);
  v26 = v7;
  v27 = v8;
  __chkstk_darwin(v7);
  v10 = &v24 - v9;
  v11 = sub_10000321C(&qword_1004449E8, &qword_1002F5718);
  v28 = *(v11 - 8);
  v29 = v11;
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_1002D8E00(33);

  v32 = 0xD000000000000018;
  v33 = 0x8000000100355CF0;
  v14 = qword_10043D838;
  v15 = off_10043D840;

  v34._countAndFlagsBits = v14;
  v34._object = v15;
  sub_1002D8D50(v34);

  v35._countAndFlagsBits = 0x6E6F747475622ELL;
  v35._object = 0xE700000000000000;
  sub_1002D8D50(v35);
  sub_10000321C(&qword_1004449F0, &qword_1002F5720);
  sub_10002B6E4(&qword_1004449F8, &qword_1004449F0, &qword_1002F5720, &protocol conformance descriptor for ControlWidgetToggle<A, B, C>);
  v25 = v10;
  sub_1002D8CA0();
  if (qword_1004392D0 != -1)
  {
    swift_once();
  }

  v16 = sub_10001EDB8(v1, qword_10051A850);
  v17 = *(v2 + 16);
  v17(v6, v16, v1);
  v24 = sub_10002B6E4(&qword_100444A00, &qword_1004449E0, &qword_1002F5710, &protocol conformance descriptor for StaticControlConfiguration<A>);
  v18 = v25;
  v19 = v26;
  sub_1002D8B00();
  v20 = *(v2 + 8);
  v20(v6, v1);
  (*(v27 + 8))(v18, v19);
  v32 = 0;
  v33 = 0xE000000000000000;
  v36._countAndFlagsBits = 0x206E6F206E727554;
  v36._object = 0xE800000000000000;
  sub_1002D8D50(v36);
  v21 = v30;
  v17(v30, v16, v1);
  sub_1002D8E10();
  v20(v21, v1);
  sub_1002D88F0();
  v32 = v19;
  v33 = v24;
  swift_getOpaqueTypeConformance2();
  v22 = v29;
  sub_1002D8AF0();
  v20(v6, v1);
  return (*(v28 + 8))(v13, v22);
}