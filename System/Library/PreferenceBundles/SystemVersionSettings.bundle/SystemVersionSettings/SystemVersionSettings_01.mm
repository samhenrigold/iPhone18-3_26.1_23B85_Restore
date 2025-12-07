_BYTE *sub_23DB8(_BYTE *result, unsigned int a2, unsigned int a3)
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

void *sub_23FE8(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 - 8);
  if ((*(v9 + 48))(a1, 1))
  {
    memcpy(a2, a1, *(*(a4 - 8) + 64));
  }

  else
  {
    (*(v9 + 16))(a2, a1, a3);
    (*(v9 + 56))(a2, 0, 1, a3);
  }

  return a2;
}

id sub_241BC()
{
  sub_24204();
  type metadata accessor for FindSystemVersionSettingsClass();
  result = sub_24290();
  qword_31F68 = result;
  return result;
}

unint64_t sub_24204()
{
  v2 = qword_31148;
  if (!qword_31148)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_31148);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_24290()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v0 = [swift_getObjCClassFromMetadata() bundleForClass:ObjCClassFromMetadata];

  return v0;
}

uint64_t *sub_242E8()
{
  if (qword_31E20 != -1)
  {
    swift_once();
  }

  return &qword_31F68;
}

void *sub_24348()
{
  v1 = *sub_242E8();
  v1;
  return v1;
}

uint64_t sub_2444C(void *a1)
{
  swift_getObjectType();
  a1;
  sub_259B0();

  return v3;
}

uint64_t sub_244D4(void *a1, uint64_t a2)
{
  a1;

  sub_2124(&qword_30A20, &unk_27630);
  sub_259C0();

  return v4;
}

void sub_24568(void *a1, id a2, void *a3)
{
  a2;

  a2;

  v6[0] = a2;
  v6[1] = a3;
  a1;
  sub_2124(&qword_30A20, &unk_27630);
  sub_259D0();
  sub_2278(v6);
}

uint64_t sub_24650(void *a1, uint64_t a2)
{
  a1;

  sub_2124(&qword_30A20, &unk_27630);
  sub_259E0();

  return v4;
}

uint64_t sub_2473C(void *a1, uint64_t a2)
{
  a1;

  v3 = *v2;
  *v2 = a1;
  *(v2 + 8) = a2;
}

id sub_247BC()
{
  v5 = 0;
  v6 = 0;
  updated = type metadata accessor for SystemUpdateCoordinator(0);
  sub_E13C();
  sub_24C8(updated, v4);
  v3 = v4[0];
  v2 = v4[1];
  v4[0];

  v5 = v3;
  v6 = v2;
  sub_24860(&v5);
  return v3;
}

uint64_t sub_248A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a3;
  v14 = a1;
  v15 = a2;
  v18 = sub_24DB4;
  v30 = 0;
  v28 = 0;
  v29 = 0;
  v25 = sub_2124(&qword_311E8, &qword_28758);
  v19 = *(v25 - 8);
  v20 = v25 - 8;
  v12 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v14, v15);
  v23 = &v11 - v12;
  v13 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v3, v5);
  v24 = &v11 - v13;
  v30 = &v11 - v13;
  v28 = v6;
  v29 = v7;
  v6;

  v8 = swift_allocObject();
  v9 = v15;
  v16 = v8;
  *(v8 + 16) = v14;
  *(v8 + 24) = v9;
  v17 = sub_2124(&qword_30A28, qword_28760);
  sub_2BE0();
  sub_25AD0();
  v22 = sub_24E24();
  sub_24DC0(v23, v25, v24);
  v27 = *(v19 + 8);
  v26 = v19 + 8;
  v27(v23, v25);
  (*(v19 + 16))(v23, v24, v25);
  sub_24EAC(v23, v25, v21);
  v27(v23, v25);
  return (v27)(v24, v25);
}

uint64_t sub_24AF4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a3;
  v14 = a1;
  v15 = a2;
  v29 = 0;
  v27 = 0;
  v28 = 0;
  v17 = type metadata accessor for SystemVersionList(0);
  v10 = (*(*(v17 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v17, v3);
  v20 = &v10 - v10;
  v22 = sub_2124(&qword_30A28, qword_28760);
  v12 = *(*(v22 - 8) + 64);
  v11 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v14, v15);
  v24 = &v10 - v11;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v4, v5);
  v25 = &v10 - v13;
  v29 = &v10 - v13;
  v27 = v6;
  v28 = v7;
  sub_ACF8(v8);
  KeyPath = swift_getKeyPath();
  v14;

  v26[2] = v14;
  v26[3] = v15;
  sub_2124(&qword_30A20, &unk_27630);
  sub_259C0();
  v16 = v26[1];

  v18 = v26;
  v26[0] = v16;
  sub_292C();
  sub_258E0();
  sub_29AC(v18);

  sub_29E0(v20);
  v23 = sub_2BE0();
  sub_2B7C(v24, v22, v25);
  sub_2D84(v24);
  sub_2F18(v25, v24);
  sub_3208(v24, v22, v21);
  sub_2D84(v24);
  return sub_2D84(v25);
}

unint64_t sub_24E24()
{
  v2 = qword_311F0;
  if (!qword_311F0)
  {
    sub_2C88(&qword_311E8, &qword_28758);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_311F0);
    return WitnessTable;
  }

  return v2;
}

id sub_24F30@<X0>(void *a1@<X8>)
{
  result = sub_247BC();
  *a1 = result;
  a1[1] = v2;
  return result;
}

unint64_t sub_24F78()
{
  v2 = qword_311F8;
  if (!qword_311F8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_311F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_25050(uint64_t a1, unsigned int a2)
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
      if (*a1 < 0x100000000uLL)
      {
        v3 = *a1;
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

uint64_t sub_25194(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2 - 1;
    }
  }

  return result;
}