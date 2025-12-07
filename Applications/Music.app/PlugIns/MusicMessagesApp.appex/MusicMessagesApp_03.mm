unint64_t ActionError.description.getter(uint64_t a1, void *a2)
{
  sub_1004DEAAC(34);

  if (a2)
  {
    v4 = a2;
  }

  else
  {

    v4 = 0xE700000000000000;
    a1 = 0x6E776F6E6B6E75;
  }

  v6._countAndFlagsBits = a1;
  v6._object = v4;
  sub_1004DD5FC(v6);

  return 0xD000000000000020;
}

uint64_t static ActionError.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      if (a1 == a3 && a2 == a4)
      {
        return 1;
      }

      if (sub_1004DF08C())
      {
        return 1;
      }
    }
  }

  else if (!a4)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_100041E2C(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_1004DF08C() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_100041FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return _swift_task_switch(sub_100041FD8, 0, 0);
}

uint64_t sub_100041FD8()
{
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = *(v0 + 32);
  *(v2 + 16) = *(v0 + 48);
  *(v2 + 32) = v3;
  *(v2 + 48) = v1;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_1000420D4;
  v5 = *(v0 + 56);
  v6 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v6, 0, 0, 0xD00000000000003ALL, 0x80000001004EA120, sub_100043220, v2, v5);
}

uint64_t sub_1000420D4()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100042210, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100042210()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_100042274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v32 = a5;
  v33 = a4;
  v35 = a2;
  v36 = a3;
  v34 = a1;
  sub_100008DE4(&qword_100638980, &qword_100515B30);
  v31 = a6;
  v8 = sub_1004DD9EC();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v29 - v10;
  v30 = &v29 - v10;
  v13 = type metadata accessor for Action(0, a5, a6, v12);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v17 = &v29 - v16;
  sub_100004CB8(&qword_100635240, &qword_1005171A0);
  __chkstk_darwin();
  v19 = &v29 - v18;
  v20 = sub_1004DDA8C();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  (*(v14 + 16))(v17, v33, v13);
  v21 = v11;
  v22 = v8;
  (*(v9 + 16))(v21, v34, v8);
  v23 = (*(v14 + 80) + 64) & ~*(v14 + 80);
  v24 = (v15 + v23 + *(v9 + 80)) & ~*(v9 + 80);
  v25 = swift_allocObject();
  *(v25 + 2) = 0;
  *(v25 + 3) = 0;
  v26 = v31;
  *(v25 + 4) = v32;
  *(v25 + 5) = v26;
  v27 = v36;
  *(v25 + 6) = v35;
  *(v25 + 7) = v27;
  (*(v14 + 32))(&v25[v23], v17, v13);
  (*(v9 + 32))(&v25[v24], v30, v22);

  sub_10021C658(0, 0, v19, &unk_100515D10, v25);

  return result;
}

uint64_t sub_100042578(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = (a4 + *a4);
  v10 = swift_task_alloc();
  *(v7 + 16) = v10;
  *v10 = v7;
  v10[1] = sub_100035B28;

  return v12(a6, a7);
}

uint64_t sub_100042680()
{
  v0 = sub_1004D966C();
  sub_100035718(v0, qword_1006350F8);
  sub_100035430(v0, qword_1006350F8);
  return sub_1004D965C();
}

unint64_t sub_1000426F4()
{
  result = qword_100635118;
  if (!qword_100635118)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100635118);
  }

  return result;
}

unint64_t sub_100042740()
{
  result = qword_100635120;
  if (!qword_100635120)
  {
    sub_1004DE58C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100635120);
  }

  return result;
}

uint64_t sub_1000427A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 32);
  v5 = *(v4 + 40);
  v7 = *(type metadata accessor for Action(0, v6, v5, a4) - 8);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v9 = *(v5 - 8);
  v10 = (v8 + *(v7 + 64) + *(v9 + 80)) & ~*(v9 + 80);
  swift_unknownObjectRelease();
  (*(*(v6 - 8) + 8))(v4 + v8, v6);

  (*(v9 + 8))(v4 + v10, v5);

  return swift_deallocObject();
}

uint64_t sub_100042940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v9 = v4[4];
  v8 = v4[5];
  v10 = *(type metadata accessor for Action(0, v9, v8, a4) - 8);
  v11 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v12 = (v11 + *(v10 + 64) + *(*(v8 - 8) + 80)) & ~*(*(v8 - 8) + 80);
  v13 = v4[2];
  v14 = v4[3];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_100035B28;

  return sub_100040780(a1, v13, v14, v4 + v11, v4 + v12, v9, v8);
}

unint64_t sub_100042AA4()
{
  result = qword_100635138[0];
  if (!qword_100635138[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100635138);
  }

  return result;
}

uint64_t sub_100042AF8(uint64_t a1, uint64_t a2)
{
  if (a2 != 2)
  {
    return sub_100035CC8(a1, a2);
  }

  return a1;
}

uint64_t sub_100042B08(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100008DE4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100042B50(uint64_t a1, uint64_t a2)
{
  if (a2 != 2)
  {
    return sub_1000354D0(a1, a2);
  }

  return a1;
}

BOOL _s9MusicCore21ActionSupportedStatusO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 1)
  {
    return a4 == 1;
  }

  if (a4 == 1)
  {
    return 0;
  }

  if (a2)
  {
    if (!a4)
    {
      return 0;
    }

    return a1 == a3 && a2 == a4 || (sub_1004DF08C() & 1) != 0;
  }

  else
  {
    return !a4;
  }
}

uint64_t sub_100042BDC()
{

  return swift_deallocObject();
}

uint64_t sub_100042C14(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_100035B28;

  return sub_100041FB0(a1, a2, v9, v8, v6, v7);
}

uint64_t sub_100042CE8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1000430A4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100042D84(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = (((((((v6 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(((a1 + v6) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_100042ED0(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = (((((((v8 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if ((((((((v8 & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = &result[v8] & 0xFFFFFFFFFFFFFFF8;
        if ((a2 & 0x80000000) != 0)
        {
          *(v19 + 8) = a2 & 0x7FFFFFFF;
          *(v19 + 16) = 0;
        }

        else
        {
          *(v19 + 8) = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if ((((((((v8 & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if ((((((((v8 & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, (((((((v8 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

unint64_t sub_1000430A4()
{
  result = qword_100639660;
  if (!qword_100639660)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_100639660);
  }

  return result;
}

uint64_t sub_1000430F4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100043118(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 2)
  {
    return (v3 - 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100043174(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_1000431D0(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    result[1] = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

uint64_t sub_100043230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v6 = *(type metadata accessor for Action(0, v5, *(v4 + 40), a4) - 8);
  v7 = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  sub_100008DE4(&qword_100638980, &qword_100515B30);
  v9 = sub_1004DD9EC();
  v10 = *(v9 - 8);
  v11 = (v7 + v8 + *(v10 + 80)) & ~*(v10 + 80);
  swift_unknownObjectRelease();

  (*(*(v5 - 8) + 8))(v4 + v7, v5);

  (*(v10 + 8))(v4 + v11, v9);

  return swift_deallocObject();
}

uint64_t sub_100043400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v7 = *(type metadata accessor for Action(0, v4[4], v4[5], a4) - 8);
  v8 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  sub_100008DE4(&qword_100638980, &qword_100515B30);
  v10 = *(sub_1004DD9EC() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = v4[2];
  v13 = v4[3];
  v14 = v4[6];
  v15 = v4[7];
  v16 = swift_task_alloc();
  *(v6 + 16) = v16;
  *v16 = v6;
  v16[1] = sub_100035C88;

  return sub_100042578(a1, v12, v13, v14, v15, v4 + v8, v4 + v11);
}

uint64_t sub_1000435A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100635240, &qword_1005171A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100043618()
{

  return swift_deallocObject();
}

uint64_t sub_100043650(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100035C88;

  return sub_10012B324(a1, v4);
}

uint64_t sub_100043708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(type metadata accessor for Action(0, v5, *(v4 + 24), a4) - 8);
  (*(*(v5 - 8) + 8))(v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v5);

  return swift_deallocObject();
}

uint64_t sub_100043828(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, ...)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(type metadata accessor for Action(0, v7, v8, a4) - 8);
  return sub_1000414A4(a1, v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v7, v8, a2);
}

uint64_t sub_1000438F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_100004CB8(&qword_100635240, &qword_1005171A0);
  __chkstk_darwin();
  v11 = &v23[-1] - v10;
  v23[5] = a4;
  v23[6] = a5;
  sub_1000435A8(a3, &v23[-1] - v10);
  v12 = sub_1004DDA8C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100046C18(v11);
  }

  else
  {
    sub_1004DDA7C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1004DD9BC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1004DD52C();
      sub_100045BA4(v19 + 32, v23);

      v20 = v23[0];
      sub_100046C18(a3);

      return v20;
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

  sub_100046C18(a3);
  if (v18 | v16)
  {
    v23[1] = 0;
    v23[2] = 0;
    v23[3] = v16;
    v23[4] = v18;
  }

  return swift_task_create();
}

uint64_t ActionMenu.Element.id.getter()
{
  v1 = *v0;
  if ((*v0 & 0x8000000000000000) == 0)
  {
    return ActionType.rawValue.getter(v1);
  }

  v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);

  return v3;
}

uint64_t ActionMenu.Element.parentMenu.getter()
{
  v1 = *v0;
  if (*v0 < 0)
  {
    v2 = &unk_100515F1E + *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
  }

  else
  {
    v2 = &unk_100515EEA + v1;
  }

  return *v2;
}

uint64_t ActionMenu.Element.priority.getter()
{
  v1 = *v0;
  if (*v0 < 0)
  {
    v2 = &qword_1005160D0[*((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x20)];
  }

  else
  {
    v2 = &qword_100515F30[v1];
  }

  return *v2;
}

BOOL static ActionMenu.Element.< infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*a1 < 0)
  {
    v3 = &qword_1005160D0[*((v2 & 0x7FFFFFFFFFFFFFFFLL) + 0x20)];
  }

  else
  {
    v3 = &qword_100515F30[v2];
  }

  v4 = *v3;
  v5 = *a2;
  if (*a2 < 0)
  {
    v6 = &qword_1005160D0[*((v5 & 0x7FFFFFFFFFFFFFFFLL) + 0x20)];
  }

  else
  {
    v6 = &qword_100515F30[v5];
  }

  return v4 < *v6;
}

uint64_t sub_100043C4C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  if (*v1 < 0)
  {
    v4 = *((v3 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  }

  else
  {
    v4 = ActionType.rawValue.getter(v3);
    result = v5;
  }

  *a1 = v4;
  a1[1] = result;
  return result;
}

uint64_t sub_100043C94(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return _s9MusicCore10ActionMenuC7ElementO21__derived_enum_equalsySbAE_AEtFZ_0(v5, v7) & 1;
}

BOOL sub_100043CF0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 < 0)
  {
    v4 = qword_1005160D0[*((v2 & 0x7FFFFFFFFFFFFFFFLL) + 0x20)];
    if ((v3 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = &qword_1005160D0[*((v3 & 0x7FFFFFFFFFFFFFFFLL) + 0x20)];
    return v4 < *v5;
  }

  v4 = qword_100515F30[v2];
  if (v3 < 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = &qword_100515F30[v3];
  return v4 < *v5;
}

BOOL sub_100043D58(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a2 < 0)
  {
    v4 = qword_1005160D0[*((v3 & 0x7FFFFFFFFFFFFFFFLL) + 0x20)];
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = &qword_1005160D0[*((v2 & 0x7FFFFFFFFFFFFFFFLL) + 0x20)];
    return v4 >= *v5;
  }

  v4 = qword_100515F30[v3];
  if (v2 < 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = &qword_100515F30[v2];
  return v4 >= *v5;
}

BOOL sub_100043DC0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 < 0)
  {
    v4 = qword_1005160D0[*((v2 & 0x7FFFFFFFFFFFFFFFLL) + 0x20)];
    if ((v3 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = &qword_1005160D0[*((v3 & 0x7FFFFFFFFFFFFFFFLL) + 0x20)];
    return v4 >= *v5;
  }

  v4 = qword_100515F30[v2];
  if (v3 < 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = &qword_100515F30[v3];
  return v4 >= *v5;
}

BOOL sub_100043E28(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a2 < 0)
  {
    v4 = qword_1005160D0[*((v3 & 0x7FFFFFFFFFFFFFFFLL) + 0x20)];
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = &qword_1005160D0[*((v2 & 0x7FFFFFFFFFFFFFFFLL) + 0x20)];
    return v4 < *v5;
  }

  v4 = qword_100515F30[v3];
  if (v2 < 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = &qword_100515F30[v2];
  return v4 < *v5;
}

char *sub_100043E94(char *result)
{
  v1 = *(result + 2);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = result + 32;
  v3 = _swiftEmptyArrayStorage;
  while (1)
  {
    v4 = *v2;
    v5 = *(*v2 + 16);
    v6 = *(v3 + 2);
    v7 = v6 + v5;
    if (__OFADD__(v6, v5))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v7 <= *(v3 + 3) >> 1)
    {
      if (*(v4 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v6 <= v7)
      {
        v8 = v6 + v5;
      }

      else
      {
        v8 = v6;
      }

      result = sub_10003A240(result, v8, 1, v3);
      v3 = result;
      if (*(v4 + 16))
      {
LABEL_14:
        if ((*(v3 + 3) >> 1) - *(v3 + 2) < v5)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        if (v5)
        {
          v9 = *(v3 + 2);
          v10 = __OFADD__(v9, v5);
          v11 = v9 + v5;
          if (v10)
          {
            goto LABEL_23;
          }

          *(v3 + 2) = v11;
        }

        goto LABEL_4;
      }
    }

    if (v5)
    {
      goto LABEL_21;
    }

LABEL_4:
    v2 += 8;
    if (!--v1)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t static ActionMenu.ElementBuilder.buildExpression<A, B>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v34 = a2;
  v6 = type metadata accessor for Action(0, a2, a3, a4);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v31 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v29 = v27 - v9;
  v11 = v10;
  __chkstk_darwin();
  v13 = v27 - v12;
  v28 = v27 - v12;
  sub_100004CB8(&unk_1006351C0, &unk_100515850);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100511DA0;
  v15 = *(v6 + 36);
  v33 = a1;
  v30 = *(a1 + v15);
  v35 = *(v7 + 16);
  v35(v13, a1, v6);
  v16 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v27[1] = v11;
  v17 = swift_allocObject();
  v19 = v36;
  v18 = v37;
  *(v17 + 2) = a2;
  *(v17 + 3) = v19;
  *(v17 + 4) = v18;
  v32 = *(v7 + 32);
  v32(&v17[v16], v28, v6);
  v20 = v29;
  v35(v29, v33, v6);
  v21 = swift_allocObject();
  *(v21 + 2) = v34;
  *(v21 + 3) = v19;
  v22 = v37;
  *(v21 + 4) = v37;
  v32(&v21[v16], v20, v6);
  v23 = v31;
  v35(v31, v33, v6);
  v24 = swift_allocObject();
  v25 = v36;
  *(v24 + 2) = v34;
  *(v24 + 3) = v25;
  *(v24 + 4) = v22;
  v32(&v24[v16], v23, v6);
  *(v14 + 32) = v30;
  *(v14 + 40) = sub_1000463C4;
  *(v14 + 48) = v17;
  *(v14 + 56) = sub_1000463C8;
  *(v14 + 64) = v21;
  *(v14 + 72) = &unk_100515D30;
  *(v14 + 80) = v24;
  return v14;
}

uint64_t sub_1000442C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for Action(0, a2, a3, a4);
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v4[8] = *(v6 + 64);
  v4[9] = swift_task_alloc();
  sub_100004CB8(&qword_100635240, &qword_1005171A0);
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_1000443C8, 0, 0);
}

uint64_t sub_1000443C8()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 48);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = sub_1004DDA8C();
  v12 = *(v0 + 32);
  (*(*(v7 - 8) + 56))(v1, 1, 1, v7);
  (*(v3 + 16))(v2, v5, v4);
  v8 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = v6;
  *(v9 + 40) = v12;
  (*(v3 + 32))(v9 + v8, v2, v4);
  sub_1000438F0(0, 0, v1, &unk_100515EE0, v9, v12);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100044550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = swift_task_alloc();
  *(v6 + 16) = v10;
  v12 = type metadata accessor for Action(0, a5, a6, v11);
  *v10 = v6;
  v10[1] = sub_100035B28;

  return Action.execute(checkSupportedStatus:)(a1, 1, v12);
}

uint64_t static ActionMenu.ElementBuilder.buildExpression(_:)(uint64_t a1)
{
  sub_100004CB8(&unk_1006351C0, &unk_100515850);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100511DA0;
  *(v2 + 32) = a1 | 0x8000000000000000;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;

  return v2;
}

uint64_t static ActionMenu.ElementBuilder.buildExpression(_:)()
{
  sub_100004CB8(&qword_100634FB8, &unk_100516F30);
  sub_100042B08(&unk_1006351D0, &qword_100634FB8, &unk_100516F30, &protocol conformance descriptor for [A]);
  return sub_1004DD7CC();
}

double sub_100044744@<D0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 1);
  v3 = *(a1 + 6);
  *a2 = *a1;
  *(a2 + 8) = v2;
  v4 = *(a1 + 2);
  *(a2 + 16) = *(a1 + 1);
  *(a2 + 32) = v4;
  *(a2 + 48) = v3;

  return result;
}

uint64_t static ActionBuilder.buildExpression<A, B>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v34 = a2;
  v6 = type metadata accessor for Action(0, a2, a3, a4);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v31 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v29 = v27 - v9;
  v11 = v10;
  __chkstk_darwin();
  v13 = v27 - v12;
  v28 = v27 - v12;
  sub_100004CB8(&qword_1006350A8, &qword_100516EF0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100511DA0;
  v15 = *(v6 + 36);
  v33 = a1;
  v30 = *(a1 + v15);
  v35 = *(v7 + 16);
  v35(v13, a1, v6);
  v16 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v27[1] = v11;
  v17 = swift_allocObject();
  v19 = v36;
  v18 = v37;
  *(v17 + 2) = a2;
  *(v17 + 3) = v19;
  *(v17 + 4) = v18;
  v32 = *(v7 + 32);
  v32(&v17[v16], v28, v6);
  v20 = v29;
  v35(v29, v33, v6);
  v21 = swift_allocObject();
  *(v21 + 2) = v34;
  *(v21 + 3) = v19;
  v22 = v37;
  *(v21 + 4) = v37;
  v32(&v21[v16], v20, v6);
  v23 = v31;
  v35(v31, v33, v6);
  v24 = swift_allocObject();
  v25 = v36;
  *(v24 + 2) = v34;
  *(v24 + 3) = v25;
  *(v24 + 4) = v22;
  v32(&v24[v16], v23, v6);
  *(v14 + 32) = v30;
  *(v14 + 40) = sub_100046EDC;
  *(v14 + 48) = v17;
  *(v14 + 56) = sub_100046ECC;
  *(v14 + 64) = v21;
  *(v14 + 72) = &unk_100515D40;
  *(v14 + 80) = v24;
  return v14;
}

uint64_t sub_100044AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for Action(0, a2, a3, a4);
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v4[8] = *(v6 + 64);
  v4[9] = swift_task_alloc();
  sub_100004CB8(&qword_100635240, &qword_1005171A0);
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_100044BB0, 0, 0);
}

uint64_t sub_100044BB0()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 48);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = sub_1004DDA8C();
  v12 = *(v0 + 32);
  (*(*(v7 - 8) + 56))(v1, 1, 1, v7);
  (*(v3 + 16))(v2, v5, v4);
  v8 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = v6;
  *(v9 + 40) = v12;
  (*(v3 + 32))(v9 + v8, v2, v4);
  sub_1000438F0(0, 0, v1, &unk_100515ED0, v9, v12);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100044D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = swift_task_alloc();
  *(v6 + 16) = v10;
  v12 = type metadata accessor for Action(0, a5, a6, v11);
  *v10 = v6;
  v10[1] = sub_100035C88;

  return Action.execute(checkSupportedStatus:)(a1, 1, v12);
}

uint64_t static ActionBuilder.buildExpression(_:)(__int128 *a1)
{
  sub_100004CB8(&qword_1006350A8, &qword_100516EF0);
  v2 = swift_allocObject();
  v3 = *(a1 + 6);
  v4 = *a1;
  *(v2 + 16) = xmmword_100511DA0;
  *(v2 + 32) = v4;
  v5 = a1[2];
  *(v2 + 48) = a1[1];
  *(v2 + 64) = v5;
  *(v2 + 80) = v3;

  return v2;
}

uint64_t sub_100044E98(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_100039BC4(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_100004CB8(&qword_100634B30, &unk_100513D70);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_100044FD0(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_10003A240(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1000450C8(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10003A5A8(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[2 * v7 + 32], v6 + 32, 2 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1000451E0(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_10003A968(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_100004CB8(&qword_100639DA0, &qword_100520360);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1000452E8(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_10003A134(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100045460(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

char *sub_1000455A4(char *result)
{
  v3 = *(result + 2);
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v4 + 3) >> 1, v9 < v6))
  {
    if (v5 <= v6)
    {
      v10 = v5 + v3;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_10003A134(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    v9 = *(v4 + 3) >> 1;
  }

  v11 = *(v4 + 2);
  v12 = (v9 - v11);
  result = sub_100045AC4(&v29, &v4[16 * v11 + 32], v9 - v11, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  if (result)
  {
    v13 = *(v4 + 2);
    v14 = __OFADD__(v13, result);
    v15 = &result[v13];
    if (v14)
    {
      __break(1u);
      goto LABEL_32;
    }

    *(v4 + 2) = v15;
  }

  if (result != v12)
  {
LABEL_13:

    *v1 = v4;
    return result;
  }

LABEL_16:
  if (!v30)
  {
    goto LABEL_13;
  }

  v16 = v30 - 1;
  if (__OFSUB__(v30, 1))
  {
LABEL_34:
    __break(1u);
  }

  else if ((v16 & 0x8000000000000000) == 0)
  {
    v17 = v29;
    if (v16 < *(v29 + 16))
    {
      v18 = *(v4 + 2);
      v19 = v29 + 16 * v16;
      v21 = *(v19 + 32);
      v20 = *(v19 + 40);

      while (1)
      {
LABEL_22:
        v22 = *(v4 + 3);
        v23 = v22 >> 1;
        if ((v22 >> 1) < v18 + 1)
        {
          result = sub_10003A134((v22 > 1), v18 + 1, 1, v4);
          v4 = result;
          v23 = *(result + 3) >> 1;
          v24 = v18 - v23;
          if (v18 < v23)
          {
LABEL_24:
            v28 = v23;
            v2 = 0;
            v25 = (v17 + 24 + 16 * v16);
            v27 = v18;
            v26 = &v4[16 * v18 + 40];
            while (1)
            {
              *(v26 - 1) = v21;
              *v26 = v20;
              if (!(v16 + v2))
              {
                break;
              }

              if ((v16 + v2 - 1) >= *(v17 + 16))
              {
                __break(1u);
                goto LABEL_34;
              }

              v21 = *(v25 - 1);
              v20 = *v25;

              --v2;
              v25 -= 2;
              v26 += 16;
              if (v24 == v2)
              {
                v16 += v2;
                v18 = v28;
                *(v4 + 2) = v28;
                goto LABEL_22;
              }
            }

LABEL_32:
            *(v4 + 2) = v27 - v2 + 1;
            goto LABEL_13;
          }
        }

        else
        {
          v24 = v18 - v23;
          if (v18 < v23)
          {
            goto LABEL_24;
          }
        }

        *(v4 + 2) = v18;
      }
    }

    goto LABEL_36;
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_1000457E8(unint64_t a1, void (*a2)(void), uint64_t (*a3)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v7 = sub_1004DED5C();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v3 >> 62))
  {
    v8 = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = __OFADD__(v8, v7);
    result = v8 + v7;
    if (!v9)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = sub_1004DED5C();
  v9 = __OFADD__(v17, v7);
  result = v17 + v7;
  if (v9)
  {
    goto LABEL_13;
  }

LABEL_5:
  a2();
  v11 = *v3;
  v12 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v12 + 8 * *(v12 + 0x10) + 32, (*(v12 + 0x18) >> 1) - *(v12 + 0x10), a1);
  v14 = v13;

  if (v14 < v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v14 < 1)
  {
LABEL_9:
    *v3 = v11;
    return result;
  }

  v15 = *(v12 + 16);
  v9 = __OFADD__(v15, v14);
  v16 = v15 + v14;
  if (!v9)
  {
    *(v12 + 16) = v16;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

char *sub_1000458E8(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10003B010(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[32 * v7 + 32], v6 + 32, 32 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000459D4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1004DED5C();
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

  v13 = sub_1004DED5C();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_100154FF0();
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_10004614C(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
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

void *sub_100045AC4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = *(a4 + 16);
  if (!a2)
  {
    v13 = *(a4 + 16);
    v6 = 0;
LABEL_14:
    *v5 = a4;
    v5[1] = v13;
    return v6;
  }

  if (!a3)
  {
    v13 = *(a4 + 16);
LABEL_13:
    v6 = a3;
    goto LABEL_14;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (v6)
    {
      v8 = a2;
      v9 = 0;
      v10 = a3 - 1;
      v11 = (a4 + 16 * v6 + 24);
      while (v6 + v9 <= *(a4 + 16))
      {
        v12 = *v11;
        *v8 = *(v11 - 1);
        v8[1] = v12;
        if (!(v10 + v9))
        {

          v13 = v6 + v9 - 1;
          goto LABEL_13;
        }

        --v9;
        v11 -= 2;
        v8 += 2;
        v13 = v6 + v9;
        if (!(v6 + v9))
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    v13 = 0;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_100045BA4@<X0>(uint64_t result@<X0>, uint64_t *a7@<X8>)
{
  if (result)
  {

    result = swift_task_create();
    *a7 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100045C60(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1004DED5C();
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
      result = sub_1004DED5C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100042B08(&qword_100635238, &qword_100635230, &qword_100515EC0, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_100004CB8(&qword_100635230, &qword_100515EC0);
            v9 = sub_10026FA44(v13, i, a3);
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
        type metadata accessor for Whitetail.Binding();
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

uint64_t sub_100045E04(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1004DED5C();
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
      result = sub_1004DED5C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100042B08(&unk_100635220, &qword_100635218, &qword_100515EB8, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_100004CB8(&qword_100635218, &qword_100515EB8);
            v9 = sub_10026FACC(v13, i, a3);
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
        type metadata accessor for BagProvider.Observer();
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

uint64_t sub_100045FA8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1004DED5C();
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
      result = sub_1004DED5C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100042B08(&qword_100635210, &qword_10063ACB0, &unk_100521600, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_100004CB8(&qword_10063ACB0, &unk_100521600);
            v9 = sub_10026FB4C(v13, i, a3);
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
        sub_100046AB4();
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

uint64_t sub_10004614C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1004DED5C();
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
      result = sub_1004DED5C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100042B08(&qword_1006351F8, &qword_1006351F0, &qword_100515EB0, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_100004CB8(&qword_1006351F0, &qword_100515EB0);
            v9 = sub_10026FBD4(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
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
        sub_100004CB8(&qword_10063C330, &qword_100515EA8);
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

uint64_t _s9MusicCore10ActionMenuC7ElementO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    v10 = *a1;
    v2 = *(a1 + 3);
    v11 = *(a1 + 1);
    v12 = v2;
    v13 = *(a1 + 5);
    if ((*a2 & 0x8000000000000000) == 0)
    {
      v6 = *a2;
      v7 = *(a2 + 1);
      v8 = *(a2 + 3);
      v9 = *(a2 + 5);
      v3 = static ActionMenu.Item.== infix(_:_:)(&v10, &v6);
      return v3 & 1;
    }

LABEL_5:
    v3 = 0;
    return v3 & 1;
  }

  if ((*a2 & 0x8000000000000000) == 0)
  {
    goto LABEL_5;
  }

  if (*((*a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) == *((*a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) && *((*a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x18) == *((*a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x18))
  {
    v3 = 1;
    return v3 & 1;
  }

  return sub_1004DF08C();
}

uint64_t sub_1000463CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[2];
  v7 = v4[3];
  v8 = v4[4];
  v9 = *(type metadata accessor for Action(0, v6, v7, a4) - 8);
  v10 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_100035B28;

  return sub_1000442C4(v4 + v10, v6, v7, v8);
}

char *sub_1000464C8(char *result)
{
  v1 = *(result + 2);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = result + 32;
  v3 = _swiftEmptyArrayStorage;
  while (1)
  {
    v4 = *v2;
    v5 = *(*v2 + 16);
    v6 = *(v3 + 2);
    v7 = v6 + v5;
    if (__OFADD__(v6, v5))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v7 <= *(v3 + 3) >> 1)
    {
      if (*(v4 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v6 <= v7)
      {
        v8 = v6 + v5;
      }

      else
      {
        v8 = v6;
      }

      result = sub_10003A368(result, v8, 1, v3);
      v3 = result;
      if (*(v4 + 16))
      {
LABEL_14:
        if ((*(v3 + 3) >> 1) - *(v3 + 2) < v5)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        if (v5)
        {
          v9 = *(v3 + 2);
          v10 = __OFADD__(v9, v5);
          v11 = v9 + v5;
          if (v10)
          {
            goto LABEL_23;
          }

          *(v3 + 2) = v11;
        }

        goto LABEL_4;
      }
    }

    if (v5)
    {
      goto LABEL_21;
    }

LABEL_4:
    v2 += 8;
    if (!--v1)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_100046608@<X0>(uint64_t a1@<X3>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 2);
  v5 = *(v2 + 4);
  v6 = *(type metadata accessor for Action(0, v4, *(v2 + 3), a1) - 8);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  a2[3] = v4;
  a2[4] = v5;
  v8 = sub_1000357EC(a2);
  v9 = *(*(v4 - 8) + 16);

  return v9(v8, &v2[v7], v4);
}

uint64_t sub_100046724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(type metadata accessor for Action(0, v5, *(v4 + 24), a4) - 8);
  (*(*(v5 - 8) + 8))(v4 + ((*(v6 + 80) + 40) & ~*(v6 + 80)), v5);

  return swift_deallocObject();
}

uint64_t sub_100046838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[2];
  v7 = v4[3];
  v8 = v4[4];
  v9 = *(type metadata accessor for Action(0, v6, v7, a4) - 8);
  v10 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_100035C88;

  return sub_100044AAC(v4 + v10, v6, v7, v8);
}

unint64_t sub_100046940()
{
  result = qword_1006351E0;
  if (!qword_1006351E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006351E0);
  }

  return result;
}

uint64_t sub_1000469A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF && *(a1 + 56))
  {
    return (*a1 + 15);
  }

  v3 = (((*a1 >> 60) >> 3) & 0xFFFFFFF1 | (2 * ((*a1 >> 60) & 7))) ^ 0xF;
  if (v3 >= 0xE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1000469F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 15;
    if (a3 >= 0xF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = (((-a2 >> 1) & 7) - 8 * a2) << 60;
      *(result + 8) = 0u;
      *(result + 24) = 0u;
      *(result + 40) = 0u;
    }
  }

  return result;
}

unint64_t sub_100046AB4()
{
  result = qword_100635200;
  if (!qword_100635200)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100635200);
  }

  return result;
}

uint64_t sub_100046B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4[4];
  v8 = v4[5];
  v9 = *(type metadata accessor for Action(0, v7, v8, a4) - 8);
  v10 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v11 = v4[2];
  v12 = v4[3];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_100035C88;

  return sub_100044D38(a1, v11, v12, v4 + v10, v7, v8);
}

uint64_t sub_100046C18(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_100635240, &qword_1005171A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100046C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v6 = *(type metadata accessor for Action(0, v5, *(v4 + 40), a4) - 8);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  swift_unknownObjectRelease();
  (*(*(v5 - 8) + 8))(v4 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_100046D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4[4];
  v8 = v4[5];
  v9 = *(type metadata accessor for Action(0, v7, v8, a4) - 8);
  v10 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v11 = v4[2];
  v12 = v4[3];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_100035C88;

  return sub_100044550(a1, v11, v12, v4 + v10, v7, v8);
}

uint64_t Actions.MetricsReportingContext.actionContext.getter()
{
  v1 = *v0;
  sub_100046F14(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_100046F14(uint64_t a1, unint64_t a2)
{
  if (a2 != 12)
  {
    return sub_100046F24(a1, a2);
  }

  return a1;
}

uint64_t sub_100046F24(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xC)
  {
  }

  return result;
}

uint64_t Actions.MetricsReportingContext.actionContext.setter(uint64_t a1, uint64_t a2)
{
  result = sub_100046F70(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t sub_100046F70(uint64_t a1, unint64_t a2)
{
  if (a2 != 12)
  {
    return sub_100046F80(a1, a2);
  }

  return a1;
}

uint64_t sub_100046F80(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xC)
  {
  }

  return result;
}

uint64_t type metadata accessor for Actions.MetricsReportingContext(uint64_t a1)
{
  result = qword_1006352E0;
  if (!qword_1006352E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Actions.MetricsReportingContext.page.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Actions.MetricsReportingContext(0) + 20);

  return sub_10004708C(a1, v3);
}

uint64_t sub_10004708C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100635248, &unk_100516140);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Actions.MetricsReportingContext.pageContext.getter()
{
  v1 = *(v0 + *(type metadata accessor for Actions.MetricsReportingContext(0) + 24));

  return v1;
}

uint64_t Actions.MetricsReportingContext.pageContext.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Actions.MetricsReportingContext(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Actions.MetricsReportingContext.locations.getter()
{
  type metadata accessor for Actions.MetricsReportingContext(0);
}

uint64_t Actions.MetricsReportingContext.locations.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Actions.MetricsReportingContext(0) + 28);

  *(v1 + v3) = a1;
  return result;
}

uint64_t Actions.MetricsReportingContext.impressions.getter()
{
  type metadata accessor for Actions.MetricsReportingContext(0);
}

uint64_t Actions.MetricsReportingContext.impressions.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Actions.MetricsReportingContext(0) + 32);

  *(v1 + v3) = a1;
  return result;
}

uint64_t Actions.MetricsReportingContext.sharedListeningContext.setter(char a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for Actions.MetricsReportingContext(0);
  v8 = v3 + *(result + 36);
  *v8 = a1;
  *(v8 + 8) = a2;
  *(v8 + 16) = a3;
  return result;
}

uint64_t Actions.MetricsReportingContext.init(actionContext:page:pageContext:locations:impressions:sharedListeningContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v16 = type metadata accessor for Actions.MetricsReportingContext(0);
  v17 = v16[5];
  v18 = type metadata accessor for MetricsEvent.Page(0);
  (*(*(v18 - 8) + 56))(&a9[v17], 1, 1, v18);
  v19 = v16[7];
  v20 = &a9[v16[6]];
  v21 = v16[8];
  *a9 = a1;
  *(a9 + 1) = a2;
  result = sub_10004708C(a3, &a9[v17]);
  *v20 = a4;
  *(v20 + 1) = a5;
  *&a9[v19] = a6;
  *&a9[v21] = a7;
  v23 = &a9[v16[9]];
  *v23 = a8;
  *(v23 + 1) = a10;
  *(v23 + 2) = a11;
  return result;
}

uint64_t static Actions.reportClickEvent(targetIdentifier:targetType:actionType:actionURL:actionDetails:reportingContext:)(unsigned int (*a1)(uint64_t, uint64_t, int *), uint64_t a2, int a3, int a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, unsigned __int16 a9, uint64_t *a10)
{
  v86 = a7;
  v87 = a8;
  v85 = a6;
  LODWORD(v88) = a4;
  LODWORD(v77) = a3;
  v83 = a2;
  v71 = a1;
  v84 = a9;
  sub_100004CB8(&qword_100635248, &unk_100516140);
  __chkstk_darwin();
  v81 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v79 = &v71 - v12;
  __chkstk_darwin();
  v76 = &v71 - v13;
  __chkstk_darwin();
  v75 = &v71 - v14;
  __chkstk_darwin();
  v74 = &v71 - v15;
  __chkstk_darwin();
  v72 = &v71 - v16;
  __chkstk_darwin();
  v18 = (&v71 - v17);
  __chkstk_darwin();
  v20 = &v71 - v19;
  sub_100004CB8(&qword_100634B30, &unk_100513D70);
  __chkstk_darwin();
  v73 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v23 = &v71 - v22;
  v24 = type metadata accessor for MetricsEvent.Click(0);
  __chkstk_darwin();
  v26 = &v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v80 = &v71 - v27;
  sub_1000108DC(a5, v23, &qword_100634B30, &unk_100513D70);
  v28 = type metadata accessor for Actions.MetricsReportingContext(0);
  v29 = *(a10 + v28[7]);
  v31 = *a10;
  v30 = a10[1];
  sub_1000108DC(a10 + v28[5], v20, &qword_100635248, &unk_100516140);
  v78 = v28;
  v32 = v28[8];
  v82 = a10;
  v33 = *(a10 + v32);
  v26[v24[19]] = 0;
  v34 = &v26[v24[20]];
  *v34 = 0;
  *(v34 + 1) = 0;
  v35 = v83;
  *v26 = v71;
  *(v26 + 1) = v35;
  v26[16] = v77;
  v26[17] = v88;
  sub_100047F38(v23, &v26[v24[7]], &qword_100634B30, &unk_100513D70);
  *&v26[v24[8]] = v29;
  v36 = &v26[v24[9]];
  *v36 = v31;
  v36[1] = v30;
  v37 = &v26[v24[10]];
  v38 = v86;
  *v37 = v85;
  *(v37 + 1) = v38;
  *(v37 + 2) = v87;
  *(v37 + 12) = v84;
  v77 = v20;
  sub_1000108DC(v20, v18, &qword_100635248, &unk_100516140);
  v39 = type metadata accessor for MetricsEvent.Page(0);
  v40 = *(v39 - 1);
  v71 = *(v40 + 48);
  v88 = v40 + 48;
  if (v71(v18, 1, v39) == 1)
  {

    sub_100046F14(v31, v30);

    sub_100047EB4(v85, v86, v87, v84);
    sub_10001074C(v18, &qword_100635248, &unk_100516140);
    v41 = v33;
    v42 = 0;
    v43 = 0;
  }

  else
  {
    v44 = v33;
    v42 = *v18;
    v43 = v18[1];

    sub_100046F14(v31, v30);

    sub_100047EB4(v85, v86, v87, v84);

    sub_10004B408(v18, type metadata accessor for MetricsEvent.Page);
    v41 = v44;
  }

  v45 = &v26[v24[12]];
  *v45 = v42;
  *(v45 + 1) = v43;
  v46 = v77;
  v47 = v72;
  sub_1000108DC(v77, v72, &qword_100635248, &unk_100516140);
  v48 = v71;
  v49 = v71(v47, 1, v39);
  v50 = v76;
  if (v49 == 1)
  {
    sub_10001074C(v47, &qword_100635248, &unk_100516140);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v51 = *(v47 + 16);
    v52 = *(v47 + 24);

    sub_10004B408(v47, type metadata accessor for MetricsEvent.Page);
  }

  v53 = &v26[v24[13]];
  *v53 = v51;
  *(v53 + 1) = v52;
  v54 = v74;
  v55 = v75;
  sub_1000108DC(v46, v74, &qword_100635248, &unk_100516140);
  if (v48(v54, 1, v39) == 1)
  {
    sub_10001074C(v54, &qword_100635248, &unk_100516140);
    v56 = sub_1004D809C();
    v57 = v73;
    (*(*(v56 - 8) + 56))(v73, 1, 1, v56);
  }

  else
  {
    v58 = v73;
    sub_1000108DC(v54 + v39[6], v73, &qword_100634B30, &unk_100513D70);
    v59 = v54;
    v57 = v58;
    sub_10004B408(v59, type metadata accessor for MetricsEvent.Page);
  }

  v60 = v79;
  sub_100047F38(v57, &v26[v24[14]], &qword_100634B30, &unk_100513D70);
  sub_1000108DC(v46, v55, &qword_100635248, &unk_100516140);
  if (v48(v55, 1, v39) == 1)
  {
    sub_10001074C(v55, &qword_100635248, &unk_100516140);
    v61 = 0;
  }

  else
  {
    v61 = *(v55 + v39[7]);

    sub_10004B408(v55, type metadata accessor for MetricsEvent.Page);
  }

  *&v26[v24[15]] = v61;
  sub_1000108DC(v46, v50, &qword_100635248, &unk_100516140);
  if (v48(v50, 1, v39) == 1)
  {
    sub_10001074C(v50, &qword_100635248, &unk_100516140);
    v62 = 1;
  }

  else
  {
    v62 = *(v50 + v39[9]);
    sub_10004B408(v50, type metadata accessor for MetricsEvent.Page);
  }

  v26[v24[16]] = v62;
  sub_1000108DC(v46, v60, &qword_100635248, &unk_100516140);
  if (v48(v60, 1, v39) == 1)
  {
    sub_10001074C(v60, &qword_100635248, &unk_100516140);
    v63 = 0;
    v64 = 0;
  }

  else
  {
    v65 = (v60 + v39[8]);
    v63 = *v65;
    v64 = v65[1];

    sub_10004B408(v60, type metadata accessor for MetricsEvent.Page);
  }

  v66 = &v26[v24[18]];
  *v66 = v63;
  *(v66 + 1) = v64;
  v67 = v81;
  sub_100047F38(v46, v81, &qword_100635248, &unk_100516140);
  if (v48(v67, 1, v39) == 1)
  {
    sub_10001074C(v67, &qword_100635248, &unk_100516140);
    v68 = 2;
  }

  else
  {
    v68 = *(v67 + v39[11]);
    sub_10004B408(v67, type metadata accessor for MetricsEvent.Page);
  }

  v26[v24[17]] = v68;
  *&v26[v24[11]] = v41;
  v69 = v80;
  sub_100047FA0(v26, v80);
  if (qword_100633B50 != -1)
  {
    swift_once();
  }

  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v82 + v78[6]), *(v82 + v78[6] + 8), *(v82 + v78[9]), *(v82 + v78[9] + 8), *(v82 + v78[9] + 16));
  return sub_10004B408(v69, type metadata accessor for MetricsEvent.Click);
}

id sub_100047EB4(id a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (BYTE1(a4) != 255)
  {
    return sub_100047EC8(a1, a2, a3, a4, SBYTE1(a4));
  }

  return a1;
}

id sub_100047EC8(id result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 3 || a5 == 2)
  {
  }

  if (a5 == 1)
  {
    return sub_100047EF4(result, a2, a3);
  }

  return result;
}

id sub_100047EF4(id result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3 = result;

    return v3;
  }

  return result;
}

uint64_t sub_100047F38(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100004CB8(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100047FA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetricsEvent.Click(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t MetricsEvent.Click.ActionDetails.Key.DestinationType.init(rawValue:)(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v3._rawValue = &off_1005D0F10;
  v7._object = a2;
  v4 = sub_1004DEE2C(v3, v7);

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t MetricsEvent.Click.ActionDetails.Key.DestinationType.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x7473696C79616C70;
  }

  else
  {
    return 0x7972617262696CLL;
  }
}

uint64_t sub_100048090(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7473696C79616C70;
  }

  else
  {
    v3 = 0x7972617262696CLL;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x7473696C79616C70;
  }

  else
  {
    v5 = 0x7972617262696CLL;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1004DF08C();
  }

  return v8 & 1;
}

Swift::Int sub_100048138()
{
  sub_1004DF26C();
  sub_1004DD55C();

  return sub_1004DF2BC();
}

uint64_t sub_1000481BC(uint64_t a1)
{
  sub_1004DD55C();
}

Swift::Int sub_10004822C()
{
  sub_1004DF26C();
  sub_1004DD55C();

  return sub_1004DF2BC();
}

uint64_t sub_1000482AC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1005D0F10;
  v8._object = v3;
  v5 = sub_1004DEE2C(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_10004830C(uint64_t *a1@<X8>)
{
  v2 = 0x7972617262696CLL;
  if (*v1)
  {
    v2 = 0x7473696C79616C70;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

BOOL MetricsEvent.Click.ActionDetails.Key.PlayType.init(rawValue:)(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005D0F60;
  v6._object = a2;
  v4 = sub_1004DEE2C(v3, v6);

  return v4 != 0;
}

Swift::Int sub_1000483B8()
{
  sub_1004DF26C();
  sub_1004DD55C();
  return sub_1004DF2BC();
}

Swift::Int sub_10004843C()
{
  sub_1004DF26C();
  sub_1004DD55C();
  return sub_1004DF2BC();
}

uint64_t sub_100048498@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1005D0F98;
  v7._object = v3;
  v5 = sub_1004DEE2C(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t MetricsEvent.Click.ActionDetails.Key.NavigationType.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6D75626C41;
  v2 = 0x7473696C79616C50;
  if (a1 != 2)
  {
    v2 = 0x434174726F706552;
  }

  if (a1)
  {
    v1 = 0x747369747241;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int sub_1000485A4()
{
  sub_1004DF26C();
  sub_1004DD55C();

  return sub_1004DF2BC();
}

uint64_t sub_10004866C(uint64_t a1)
{
  sub_1004DD55C();
}

Swift::Int sub_100048720()
{
  sub_1004DF26C();
  sub_1004DD55C();

  return sub_1004DF2BC();
}

unint64_t sub_1000487E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9MusicCore12MetricsEventV5ClickV13ActionDetailsO3KeyO14NavigationTypeO8rawValueAKSgSS_tcfC_0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_100048814(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x6D75626C41;
  v4 = 0xE800000000000000;
  v5 = 0x7473696C79616C50;
  if (*v1 != 2)
  {
    v5 = 0x434174726F706552;
    v4 = 0xEE006E7265636E6FLL;
  }

  if (*v1)
  {
    v3 = 0x747369747241;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

void *MetricsEvent.Click.ActionDetails.init(_:)(uint64_t a1)
{
  v1 = sub_10004B4B4(a1);

  return v1;
}

uint64_t MusicItem.metricsContentType.getter(uint64_t a1, uint64_t a2)
{
  v4 = __chkstk_darwin();
  (*(v6 + 16))(v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1, v4);
  sub_100004CB8(&qword_100635250, &qword_100516150);
  if (swift_dynamicCast())
  {
    sub_100035850(v24, v26);
    v7 = v27;
    v8 = v28;
    sub_100008C70(v26, v27);
    v9 = (*(v8 + 8))(v7, v8);
    sub_100008D24(v26);
    return v9;
  }

  else
  {
    v25 = 0;
    memset(v24, 0, sizeof(v24));
    sub_10001074C(v24, &qword_100635258, &qword_100516158);
    v26[0] = swift_getDynamicType();
    swift_getMetatypeMetadata();
    v11 = sub_1004DD4DC();
    v13 = v12;
    sub_10004B8A8(1, v11, v12);
    v14 = sub_1004DE7DC();
    v16 = v15;

    v17 = sub_10004B944(1uLL, v11, v13);
    v19 = v18;
    v21 = v20;
    v23 = v22;

    *&v24[0] = v14;
    *(&v24[0] + 1) = v16;
    v26[0] = v17;
    v26[1] = v19;
    v26[2] = v21;
    v27 = v23;
    sub_10004B9F4();
    sub_1004DD5DC();

    return *&v24[0];
  }
}

uint64_t MusicItem.metricsTargetIdentifier.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 - 8);
  __chkstk_darwin();
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin();
  v8 = *(v4 + 16);
  v8(v18 - v9, v2, a1, v7);
  sub_100004CB8(&qword_100635250, &qword_100516150);
  if (!swift_dynamicCast())
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    sub_10001074C(v18, &qword_100635258, &qword_100516158);
    (v8)(v6, v2, a1);
    sub_100004CB8(&qword_100635268, &unk_100516160);
    if (swift_dynamicCast())
    {
      v13 = *(&v21 + 1);
      v14 = v22;
      sub_100008C70(&v20, *(&v21 + 1));
      v12 = (*(v14 + 8))(v13, v14);
      if (v15)
      {
        goto LABEL_5;
      }

      sub_100008D24(&v20);
    }

    else
    {
      v22 = 0;
      v20 = 0u;
      v21 = 0u;
      sub_10001074C(&v20, &unk_10063AC70, &qword_100518330);
    }

    return 0x497972617262694CLL;
  }

  sub_100035850(v18, &v20);
  v10 = *(&v21 + 1);
  v11 = v22;
  sub_100008C70(&v20, *(&v21 + 1));
  v12 = (*(v11 + 16))(v10, v11);
LABEL_5:
  v16 = v12;
  sub_100008D24(&v20);
  return v16;
}

uint64_t sub_100048D74()
{
  v0 = sub_1004D916C();
  v99 = *(v0 - 8);
  v100 = v0;
  __chkstk_darwin();
  v98 = &v98 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1004D911C();
  v102 = *(v2 - 8);
  v103 = v2;
  __chkstk_darwin();
  v101 = &v98 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1004D92AC();
  v105 = *(v4 - 8);
  v106 = v4;
  __chkstk_darwin();
  v104 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1004D8FEC();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1004DC2DC();
  v109 = *(v10 - 8);
  __chkstk_darwin();
  v108 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1004DC95C();
  v107 = *(v12 - 8);
  __chkstk_darwin();
  v14 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1004DCF8C();
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004DCF9C();
  v19 = (*(v16 + 88))(v18, v15);
  if (v19 == enum case for Playlist.Entry.InternalItem.musicMovie(_:))
  {
    (*(v16 + 96))(v18, v15);
    (*(v7 + 32))(v9, v18, v6);
    v110 = v6;
    sub_100004CB8(&qword_1006353A0, &qword_1005164D8);
    v20 = sub_1004DD4DC();
    v22 = v21;
    sub_10004B8A8(1, v20, v21);
    v23 = sub_1004DE7DC();
    v25 = v24;

    v26 = sub_10004B944(1uLL, v20, v22);
    v28 = v27;
    v30 = v29;
    v32 = v31;

    v114 = v23;
    v115 = v25;
    v110 = v26;
    v111 = v28;
    v112 = v30;
    v113 = v32;
    sub_10004B9F4();
    sub_1004DD5DC();

    v33 = v114;
    (*(v7 + 8))(v9, v6);
  }

  else if (v19 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
  {
    (*(v16 + 96))(v18, v15);
    v35 = v108;
    v34 = v109;
    (*(v109 + 32))(v108, v18, v10);
    v110 = v10;
    sub_100004CB8(&qword_100635370, &qword_1005164A8);
    v36 = sub_1004DD4DC();
    v38 = v37;
    sub_10004B8A8(1, v36, v37);
    v39 = sub_1004DE7DC();
    v41 = v40;

    v42 = sub_10004B944(1uLL, v36, v38);
    v44 = v43;
    v46 = v45;
    v48 = v47;

    v114 = v39;
    v115 = v41;
    v110 = v42;
    v111 = v44;
    v112 = v46;
    v113 = v48;
    sub_10004B9F4();
    sub_1004DD5DC();

    v33 = v114;
    (*(v34 + 8))(v35, v10);
  }

  else if (v19 == enum case for Playlist.Entry.InternalItem.song(_:))
  {
    (*(v16 + 96))(v18, v15);
    v49 = v107;
    (*(v107 + 32))(v14, v18, v12);
    v110 = v12;
    sub_100004CB8(&qword_100635360, &qword_100516498);
    v50 = sub_1004DD4DC();
    v52 = v51;
    sub_10004B8A8(1, v50, v51);
    v53 = sub_1004DE7DC();
    v55 = v54;

    v56 = sub_10004B944(1uLL, v50, v52);
    v58 = v57;
    v60 = v59;
    v62 = v61;

    v114 = v53;
    v115 = v55;
    v110 = v56;
    v111 = v58;
    v112 = v60;
    v113 = v62;
    sub_10004B9F4();
    sub_1004DD5DC();

    v33 = v114;
    (*(v49 + 8))(v14, v12);
  }

  else if (v19 == enum case for Playlist.Entry.InternalItem.tvEpisode(_:))
  {
    (*(v16 + 96))(v18, v15);
    v64 = v104;
    v63 = v105;
    v65 = v106;
    (*(v105 + 32))(v104, v18, v106);
    v110 = v65;
    sub_100004CB8(&qword_100635398, &qword_1005164D0);
    v66 = sub_1004DD4DC();
    v68 = v67;
    sub_10004B8A8(1, v66, v67);
    v69 = sub_1004DE7DC();
    v71 = v70;

    v72 = sub_10004B944(1uLL, v66, v68);
    v74 = v73;
    v76 = v75;
    v78 = v77;

    v114 = v69;
    v115 = v71;
    v110 = v72;
    v111 = v74;
    v112 = v76;
    v113 = v78;
    sub_10004B9F4();
    sub_1004DD5DC();

    v33 = v114;
    (*(v63 + 8))(v64, v65);
  }

  else
  {
    if (v19 == enum case for Playlist.Entry.InternalItem.uploadedAudio(_:))
    {
      (*(v16 + 96))(v18, v15);
      v80 = v101;
      v79 = v102;
      v81 = v103;
      (*(v102 + 32))(v101, v18, v103);
      v110 = v81;
      v82 = &unk_100635390;
      v83 = &unk_1005164C8;
    }

    else
    {
      if (v19 != enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
      {
        (*(v16 + 8))(v18, v15);
        return 1735290739;
      }

      (*(v16 + 96))(v18, v15);
      v80 = v98;
      v79 = v99;
      v81 = v100;
      (*(v99 + 32))(v98, v18, v100);
      v110 = v81;
      v82 = &unk_100635388;
      v83 = &unk_1005164C0;
    }

    sub_100004CB8(v82, v83);
    v84 = sub_1004DD4DC();
    v86 = v85;
    sub_10004B8A8(1, v84, v85);
    v87 = sub_1004DE7DC();
    v89 = v88;

    v90 = sub_10004B944(1uLL, v84, v86);
    v92 = v91;
    v94 = v93;
    v96 = v95;

    v114 = v87;
    v115 = v89;
    v110 = v90;
    v111 = v92;
    v112 = v94;
    v113 = v96;
    sub_10004B9F4();
    sub_1004DD5DC();

    v33 = v114;
    (*(v79 + 8))(v80, v81);
  }

  return v33;
}

uint64_t sub_100049750()
{
  v0 = sub_1004D916C();
  v38 = *(v0 - 8);
  v39 = v0;
  __chkstk_darwin();
  v37 = &v37 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1004D911C();
  v41 = *(v2 - 8);
  v42 = v2;
  __chkstk_darwin();
  v40 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1004D92AC();
  v44 = *(v4 - 8);
  v45 = v4;
  __chkstk_darwin();
  v43 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1004D8FEC();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1004DC2DC();
  v47 = *(v10 - 8);
  v48 = v10;
  __chkstk_darwin();
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1004DC95C();
  v46 = *(v13 - 8);
  __chkstk_darwin();
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1004DCF8C();
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004DCF9C();
  v20 = (*(v17 + 88))(v19, v16);
  if (v20 == enum case for Playlist.Entry.InternalItem.musicMovie(_:))
  {
    (*(v17 + 96))(v19, v16);
    (*(v7 + 32))(v9, v19, v6);
    v21 = sub_1004D8FDC();
    v23 = v22;
    (*(v7 + 8))(v9, v6);
    if (!v23)
    {
      return 0x497972617262694CLL;
    }

    return v21;
  }

  if (v20 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
  {
    (*(v17 + 96))(v19, v16);
    v25 = v47;
    v24 = v48;
    (*(v47 + 32))(v12, v19, v48);
    v21 = sub_1004DC28C();
    v27 = v26;
    (*(v25 + 8))(v12, v24);
  }

  else
  {
    if (v20 == enum case for Playlist.Entry.InternalItem.song(_:))
    {
      (*(v17 + 96))(v19, v16);
      v28 = v46;
      (*(v46 + 32))(v15, v19, v13);
      v21 = sub_1004DC88C();
      v30 = v29;
      (*(v28 + 8))(v15, v13);
      if (!v30)
      {
        return 0x497972617262694CLL;
      }

      return v21;
    }

    if (v20 == enum case for Playlist.Entry.InternalItem.tvEpisode(_:))
    {
      (*(v17 + 96))(v19, v16);
      v32 = v43;
      v31 = v44;
      v33 = v45;
      (*(v44 + 32))(v43, v19, v45);
      v34 = sub_1004D929C();
    }

    else if (v20 == enum case for Playlist.Entry.InternalItem.uploadedAudio(_:))
    {
      (*(v17 + 96))(v19, v16);
      v32 = v40;
      v31 = v41;
      v33 = v42;
      (*(v41 + 32))(v40, v19, v42);
      v34 = sub_1004D910C();
    }

    else
    {
      if (v20 != enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
      {
        (*(v17 + 8))(v19, v16);
        return 0x497972617262694CLL;
      }

      (*(v17 + 96))(v19, v16);
      v32 = v37;
      v31 = v38;
      v33 = v39;
      (*(v38 + 32))(v37, v19, v39);
      v34 = sub_1004D915C();
    }

    v21 = v34;
    v27 = v35;
    (*(v31 + 8))(v32, v33);
  }

  if (v27)
  {
    return v21;
  }

  return 0x497972617262694CLL;
}

uint64_t sub_100049DEC()
{
  v1 = sub_1004DC2DC();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1004DC95C();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1004DCAAC();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin();
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, v0, v9, v11);
  v14 = (*(v10 + 88))(v13, v9);
  if (v14 == enum case for Track.song(_:))
  {
    (*(v10 + 96))(v13, v9);
    (*(v6 + 32))(v8, v13, v5);
    v44 = v5;
    sub_100004CB8(&qword_100635360, &qword_100516498);
    v15 = sub_1004DD4DC();
    v17 = v16;
    sub_10004B8A8(1, v15, v16);
    v18 = sub_1004DE7DC();
    v20 = v19;

    v21 = sub_10004B944(1uLL, v15, v17);
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v48 = v18;
    v49 = v20;
    v44 = v21;
    v45 = v23;
    v46 = v25;
    v47 = v27;
    sub_10004B9F4();
    sub_1004DD5DC();

    v28 = v48;
    (*(v6 + 8))(v8, v5);
  }

  else if (v14 == enum case for Track.musicVideo(_:))
  {
    (*(v10 + 96))(v13, v9);
    (*(v2 + 32))(v4, v13, v1);
    v44 = v1;
    sub_100004CB8(&qword_100635370, &qword_1005164A8);
    v29 = sub_1004DD4DC();
    v31 = v30;
    sub_10004B8A8(1, v29, v30);
    v32 = sub_1004DE7DC();
    v34 = v33;

    v35 = sub_10004B944(1uLL, v29, v31);
    v37 = v36;
    v39 = v38;
    v40 = v2;
    v42 = v41;

    v48 = v32;
    v49 = v34;
    v44 = v35;
    v45 = v37;
    v46 = v39;
    v47 = v42;
    sub_10004B9F4();
    sub_1004DD5DC();

    v28 = v48;
    (*(v40 + 8))(v4, v1);
  }

  else
  {
    (*(v10 + 8))(v13, v9);
    return 1735290739;
  }

  return v28;
}

uint64_t sub_10004A234()
{
  v1 = v0;
  v2 = sub_1004DC2DC();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1004DC95C();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1004DCAAC();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin();
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v1, v10, v12);
  v15 = (*(v11 + 88))(v14, v10);
  if (v15 == enum case for Track.song(_:))
  {
    (*(v11 + 96))(v14, v10);
    (*(v7 + 32))(v9, v14, v6);
    v16 = sub_1004DC88C();
    v18 = v17;
    (*(v7 + 8))(v9, v6);
    if (!v18)
    {
      return 0x497972617262694CLL;
    }

    return v16;
  }

  if (v15 == enum case for Track.musicVideo(_:))
  {
    (*(v11 + 96))(v14, v10);
    (*(v3 + 32))(v5, v14, v2);
    v16 = sub_1004DC28C();
    v20 = v19;
    (*(v3 + 8))(v5, v2);
    if (v20)
    {
      return v16;
    }
  }

  else
  {
    (*(v11 + 8))(v14, v10);
  }

  return 0x497972617262694CLL;
}

uint64_t sub_10004A554()
{
  v0 = sub_1004DC95C();
  v98 = *(v0 - 8);
  v99 = v0;
  __chkstk_darwin();
  v97 = &v96 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1004DD05C();
  v101 = *(v2 - 8);
  v102 = v2;
  __chkstk_darwin();
  v100 = &v96 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1004DC2DC();
  v104 = *(v4 - 8);
  v105 = v4;
  __chkstk_darwin();
  v103 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1004DCB3C();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1004DCA0C();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1004D8F4C();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004D8F5C();
  v18 = (*(v15 + 88))(v17, v14);
  if (v18 == enum case for MusicPin.Item.album(_:))
  {
    (*(v15 + 96))(v17, v14);
    (*(v11 + 32))(v13, v17, v10);
    v106 = v10;
    sub_100004CB8(&qword_100635380, &qword_1005164B8);
    v19 = sub_1004DD4DC();
    v21 = v20;
    sub_10004B8A8(1, v19, v20);
    v22 = sub_1004DE7DC();
    v24 = v23;

    v25 = sub_10004B944(1uLL, v19, v21);
    v27 = v26;
    v29 = v28;
    v31 = v30;

    v110 = v22;
    v111 = v24;
    v106 = v25;
    v107 = v27;
    v108 = v29;
    v109 = v31;
    sub_10004B9F4();
    sub_1004DD5DC();

    v32 = v110;
    (*(v11 + 8))(v13, v10);
  }

  else if (v18 == enum case for MusicPin.Item.artist(_:))
  {
    (*(v15 + 96))(v17, v14);
    v33 = v7;
    (*(v7 + 32))(v9, v17, v6);
    v106 = v6;
    sub_100004CB8(&qword_100635378, &qword_1005164B0);
    v34 = sub_1004DD4DC();
    v36 = v35;
    sub_10004B8A8(1, v34, v35);
    v37 = sub_1004DE7DC();
    v39 = v38;

    v40 = sub_10004B944(1uLL, v34, v36);
    v42 = v41;
    v44 = v43;
    v46 = v45;

    v110 = v37;
    v111 = v39;
    v106 = v40;
    v107 = v42;
    v108 = v44;
    v109 = v46;
    sub_10004B9F4();
    sub_1004DD5DC();

    v32 = v110;
    (*(v33 + 8))(v9, v6);
  }

  else if (v18 == enum case for MusicPin.Item.musicVideo(_:))
  {
    (*(v15 + 96))(v17, v14);
    v47 = v103;
    v48 = v104;
    v49 = v105;
    (*(v104 + 32))(v103, v17, v105);
    v106 = v49;
    sub_100004CB8(&qword_100635370, &qword_1005164A8);
    v50 = sub_1004DD4DC();
    v52 = v51;
    sub_10004B8A8(1, v50, v51);
    v53 = sub_1004DE7DC();
    v55 = v54;

    v56 = sub_10004B944(1uLL, v50, v52);
    v58 = v57;
    v60 = v59;
    v62 = v61;

    v110 = v53;
    v111 = v55;
    v106 = v56;
    v107 = v58;
    v108 = v60;
    v109 = v62;
    sub_10004B9F4();
    sub_1004DD5DC();

    v32 = v110;
    (*(v48 + 8))(v47, v49);
  }

  else if (v18 == enum case for MusicPin.Item.playlist(_:))
  {
    (*(v15 + 96))(v17, v14);
    v64 = v100;
    v63 = v101;
    v65 = v102;
    (*(v101 + 32))(v100, v17, v102);
    v106 = v65;
    sub_100004CB8(&qword_100635368, &qword_1005164A0);
    v66 = sub_1004DD4DC();
    v68 = v67;
    sub_10004B8A8(1, v66, v67);
    v69 = sub_1004DE7DC();
    v71 = v70;

    v72 = sub_10004B944(1uLL, v66, v68);
    v74 = v73;
    v76 = v75;
    v78 = v77;

    v110 = v69;
    v111 = v71;
    v106 = v72;
    v107 = v74;
    v108 = v76;
    v109 = v78;
    sub_10004B9F4();
    sub_1004DD5DC();

    v32 = v110;
    (*(v63 + 8))(v64, v65);
  }

  else if (v18 == enum case for MusicPin.Item.song(_:))
  {
    (*(v15 + 96))(v17, v14);
    v80 = v97;
    v79 = v98;
    v81 = v99;
    (*(v98 + 32))(v97, v17, v99);
    v106 = v81;
    sub_100004CB8(&qword_100635360, &qword_100516498);
    v82 = sub_1004DD4DC();
    v84 = v83;
    sub_10004B8A8(1, v82, v83);
    v85 = sub_1004DE7DC();
    v87 = v86;

    v88 = sub_10004B944(1uLL, v82, v84);
    v90 = v89;
    v92 = v91;
    v94 = v93;

    v110 = v85;
    v111 = v87;
    v106 = v88;
    v107 = v90;
    v108 = v92;
    v109 = v94;
    sub_10004B9F4();
    sub_1004DD5DC();

    v32 = v110;
    (*(v79 + 8))(v80, v81);
  }

  else
  {
    (*(v15 + 8))(v17, v14);
    return 0;
  }

  return v32;
}

uint64_t sub_10004AE48()
{
  v0 = sub_1004DC95C();
  v37 = *(v0 - 8);
  v38 = v0;
  __chkstk_darwin();
  v36 = &v35 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1004DD05C();
  v40 = *(v2 - 8);
  v41 = v2;
  __chkstk_darwin();
  v39 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1004DC2DC();
  v42 = *(v4 - 8);
  v43 = v4;
  __chkstk_darwin();
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1004DCB3C();
  v44 = *(v7 - 8);
  __chkstk_darwin();
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1004DCA0C();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1004D8F4C();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004D8F5C();
  v18 = (*(v15 + 88))(v17, v14);
  if (v18 == enum case for MusicPin.Item.album(_:))
  {
    (*(v15 + 96))(v17, v14);
    (*(v11 + 32))(v13, v17, v10);
    v19 = sub_1004DC9AC();
    v21 = v20;
    (*(v11 + 8))(v13, v10);
    if (!v21)
    {
      return 0x507972617262694CLL;
    }

    return v19;
  }

  if (v18 == enum case for MusicPin.Item.artist(_:))
  {
    (*(v15 + 96))(v17, v14);
    v22 = v44;
    (*(v44 + 32))(v9, v17, v7);
    v19 = sub_1004DCB0C();
    v24 = v23;
    (*(v22 + 8))(v9, v7);
    if (!v24)
    {
      return 0x507972617262694CLL;
    }

    return v19;
  }

  if (v18 == enum case for MusicPin.Item.musicVideo(_:))
  {
    (*(v15 + 96))(v17, v14);
    v26 = v42;
    v25 = v43;
    (*(v42 + 32))(v6, v17, v43);
    v19 = sub_1004DC28C();
    v28 = v27;
    (*(v26 + 8))(v6, v25);
  }

  else
  {
    if (v18 == enum case for MusicPin.Item.playlist(_:))
    {
      (*(v15 + 96))(v17, v14);
      v30 = v39;
      v29 = v40;
      v31 = v41;
      (*(v40 + 32))(v39, v17, v41);
      v32 = sub_1004DCF1C();
    }

    else
    {
      if (v18 != enum case for MusicPin.Item.song(_:))
      {
        (*(v15 + 8))(v17, v14);
        return 0x507972617262694CLL;
      }

      (*(v15 + 96))(v17, v14);
      v30 = v36;
      v29 = v37;
      v31 = v38;
      (*(v37 + 32))(v36, v17, v38);
      v32 = sub_1004DC88C();
    }

    v19 = v32;
    v28 = v33;
    (*(v29 + 8))(v30, v31);
  }

  if (v28)
  {
    return v19;
  }

  return 0x507972617262694CLL;
}

uint64_t sub_10004B408(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t _s9MusicCore12MetricsEventV5ClickV13ActionDetailsO3KeyO14NavigationTypeO8rawValueAKSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005D0FD0;
  v6._object = a2;
  v4 = sub_1004DEE2C(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

void *sub_10004B4B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  for (i = (a1 + 48); ; i += 24)
  {
    v4 = *(i - 2);
    v5 = *(i - 1);
    v6 = *i;
    v38 = v4;
    if (v6 <= 1)
    {
      if (*i)
      {
        sub_100030C58();
        v17 = sub_1004DE83C();
        v36 = v18;
        v37 = v17;

        v14 = 0xE500000000000000;
        v13 = 0x6F54646461;
      }

      else
      {
        sub_10004C424(v4, v5, 0);

        v14 = 0xE400000000000000;
        v36 = v5;
        v37 = v4;
        v13 = 1684957547;
      }
    }

    else if (v6 == 2)
    {
      sub_100030C58();
      v15 = sub_1004DE83C();
      v36 = v16;
      v37 = v15;

      v14 = 0xEA00000000006D6FLL;
      v13 = 0x72466574656C6564;
    }

    else if (v6 == 3)
    {
      v7 = 0x7473696C79616C50;
      if (v4 != 2)
      {
        v7 = 0x434174726F706552;
      }

      v8 = 0xE800000000000000;
      if (v4 != 2)
      {
        v8 = 0xEE006E7265636E6FLL;
      }

      v9 = 0x6D75626C41;
      if (v4)
      {
        v9 = 0x747369747241;
      }

      v10 = 0xE500000000000000;
      if (v4)
      {
        v10 = 0xE600000000000000;
      }

      v11 = v4 <= 1u ? v9 : v7;
      v37 = v11;
      v12 = v4 <= 1u ? v10 : v8;
      v36 = v12;
      v13 = 0x657461676976616ELL;
      v14 = 0xEA00000000006F54;
    }

    else
    {
      v14 = 0xE800000000000000;
      v37 = 0x7453657461657263;
      v36 = 0xED00006E6F697461;
      v13 = 0x6570795479616C70;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = sub_100056B84(v13, v14);
    v22 = _swiftEmptyDictionarySingleton[2];
    v23 = (v20 & 1) == 0;
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      break;
    }

    v25 = v20;
    if (_swiftEmptyDictionarySingleton[3] >= v24)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v29 = v5;
        v28 = v38;
        if (v20)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_10005B7A0();
        v29 = v5;
        v28 = v38;
        if (v25)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_100057604(v24, isUniquelyReferenced_nonNull_native);
      v26 = sub_100056B84(v13, v14);
      if ((v25 & 1) != (v27 & 1))
      {
        goto LABEL_42;
      }

      v21 = v26;
      v29 = v5;
      v28 = v38;
      if (v25)
      {
LABEL_3:

        v3 = (_swiftEmptyDictionarySingleton[7] + 16 * v21);
        *v3 = v37;
        v3[1] = v36;

        sub_10004C410(v28, v29, v6);
        goto LABEL_4;
      }
    }

    _swiftEmptyDictionarySingleton[(v21 >> 6) + 8] |= 1 << v21;
    v30 = (_swiftEmptyDictionarySingleton[6] + 16 * v21);
    *v30 = v13;
    v30[1] = v14;
    v31 = (_swiftEmptyDictionarySingleton[7] + 16 * v21);
    *v31 = v37;
    v31[1] = v36;
    sub_10004C410(v28, v29, v6);
    v32 = _swiftEmptyDictionarySingleton[2];
    v33 = __OFADD__(v32, 1);
    v34 = v32 + 1;
    if (v33)
    {
      goto LABEL_41;
    }

    _swiftEmptyDictionarySingleton[2] = v34;
LABEL_4:
    if (!--v1)
    {
      return _swiftEmptyDictionarySingleton;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  result = sub_1004DF16C();
  __break(1u);
  return result;
}

uint64_t sub_10004B8A8(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1004DD5BC();

    return sub_1004DD6EC();
  }

  return result;
}

unint64_t sub_10004B944(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_1004DD5BC();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_1004DD6EC();
}

unint64_t sub_10004B9F4()
{
  result = qword_100635260;
  if (!qword_100635260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100635260);
  }

  return result;
}

unint64_t sub_10004BA4C()
{
  result = qword_100635270;
  if (!qword_100635270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100635270);
  }

  return result;
}

unint64_t sub_10004BAA4()
{
  result = qword_100635278;
  if (!qword_100635278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100635278);
  }

  return result;
}

unint64_t sub_10004BAFC()
{
  result = qword_100635280;
  if (!qword_100635280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100635280);
  }

  return result;
}

uint64_t sub_10004BB64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100004CB8(&qword_100635248, &unk_100516140);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_10004BC54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100004CB8(&qword_100635248, &unk_100516140);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

void sub_10004BD20(uint64_t a1)
{
  sub_10004BEAC(319, &qword_1006352F0, &type metadata for MetricsEvent.Click.ActionContext);
  if (v1 <= 0x3F)
  {
    sub_10004BE54(319);
    if (v2 <= 0x3F)
    {
      sub_10004BEAC(319, &qword_10063C230, &type metadata for String);
      if (v3 <= 0x3F)
      {
        sub_10004BEF8(319, &qword_100635300, &qword_100635308, &qword_10051A640);
        if (v4 <= 0x3F)
        {
          sub_10004BEF8(319, &qword_100635310, &qword_100635318, &qword_1005163B0);
          if (v5 <= 0x3F)
          {
            sub_10004BF4C();
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

void sub_10004BE54(uint64_t a1)
{
  if (!qword_1006352F8)
  {
    type metadata accessor for MetricsEvent.Page(255);
    v1 = sub_1004DE7CC();
    if (!v2)
    {
      atomic_store(v1, &qword_1006352F8);
    }
  }
}

void sub_10004BEAC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1004DE7CC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10004BEF8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_100008DE4(a3, a4);
    v5 = sub_1004DE7CC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_10004BF4C()
{
  if (!qword_100635320)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_100635320);
    }
  }
}

uint64_t sub_10004BFB4(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_10004BFD0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10004C018(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_10004C05C(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t _s3KeyO15DestinationTypeOwet(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s3KeyO15DestinationTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MetricsEvent.Page.DisplayType(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for MetricsEvent.Page.DisplayType(_WORD *result, int a2, int a3)
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

uint64_t _s3KeyO14NavigationTypeOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s3KeyO14NavigationTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_10004C410(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t sub_10004C424(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t View.actionContextMenu(title:menu:excluding:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v41 = a4;
  v39 = a1;
  v40 = a2;
  v45 = a7;
  v46 = *(a5 - 8);
  __chkstk_darwin();
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v37 - v12;
  v14 = sub_100008DE4(&qword_1006353A8, &qword_1005164E0);
  v15 = sub_10004C920();
  v51 = a5;
  v52 = v14;
  v53 = a6;
  v54 = v15;
  v48 = v15;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v17 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin();
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v38 = &v37 - v20;
  v21 = sub_1004DAAEC();
  v43 = *(v21 - 8);
  v44 = v21;
  v22 = __chkstk_darwin();
  v47 = &v37 - v23;
  if (a3)
  {
    v46 = v14;
    __chkstk_darwin();
    *(&v37 - 8) = a5;
    *(&v37 - 7) = a6;
    *(&v37 - 6) = OpaqueTypeConformance2;
    *(&v37 - 5) = a3;
    v24 = v40;
    *(&v37 - 4) = v39;
    *(&v37 - 3) = v24;
    *(&v37 - 2) = v41;

    v25 = v48;
    sub_1004DB3FC();
    v51 = a5;
    v52 = v46;
    v53 = a6;
    v54 = v25;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v26 = *(v17 + 16);
    v27 = v38;
    v26(v38, v19, OpaqueTypeMetadata2);
    v28 = *(v17 + 8);
    v28(v19, OpaqueTypeMetadata2);
    v26(v19, v27, OpaqueTypeMetadata2);
    v14 = v46;
    sub_10004CBDC(v19, OpaqueTypeMetadata2, a5, OpaqueTypeConformance2, a6);

    v28(v19, OpaqueTypeMetadata2);
    v28(v27, OpaqueTypeMetadata2);
  }

  else
  {
    v29 = v46;
    v30 = *(v46 + 16);
    v30(v13, OpaqueTypeConformance2, a5, v22);
    (v30)(v11, v13, a5);
    v51 = a5;
    v52 = v14;
    v53 = a6;
    v54 = v48;
    v31 = swift_getOpaqueTypeConformance2();
    sub_10004CCD4(v11, OpaqueTypeMetadata2, a5, v31, a6);
    v32 = *(v29 + 8);
    v32(v11, a5);
    v32(v13, a5);
  }

  v51 = a5;
  v52 = v14;
  v53 = a6;
  v54 = v48;
  v49 = swift_getOpaqueTypeConformance2();
  v50 = a6;
  v33 = v44;
  swift_getWitnessTable();
  v34 = v43;
  v35 = v47;
  (*(v43 + 16))(v45, v47, v33);
  return (*(v34 + 8))(v35, v33);
}

unint64_t sub_10004C920()
{
  result = qword_1006353B0;
  if (!qword_1006353B0)
  {
    sub_100008DE4(&qword_1006353A8, &qword_1005164E0);
    sub_10004C9B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006353B0);
  }

  return result;
}

unint64_t sub_10004C9B8()
{
  result = qword_1006353B8;
  if (!qword_1006353B8)
  {
    sub_100008DE4(&qword_1006353C0, &qword_1005164E8);
    sub_100051CF0(&qword_1006353C8, type metadata accessor for ActionMenuView, &unk_100516578);
    sub_100042B08(&qword_1006353D0, &qword_1006353D8, &qword_1005164F0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006353B8);
  }

  return result;
}

uint64_t type metadata accessor for ActionMenuView(uint64_t a1)
{
  result = qword_100635510;
  if (!qword_100635510)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10004CAEC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{

  sub_100004CB8(&qword_1006353C0, &qword_1005164E8);
  sub_10004C9B8();
  sub_100030C58();
  return sub_1004DBC5C();
}

uint64_t sub_10004CBDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1004DAACC();
  v7 = __chkstk_darwin();
  (*(*(a2 - 8) + 16))(&v10 - v8, a1, a2, v7);
  swift_storeEnumTagMultiPayload();
  return sub_1004DAADC();
}

uint64_t sub_10004CCD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1004DAACC();
  v7 = __chkstk_darwin();
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3, v7);
  swift_storeEnumTagMultiPayload();
  return sub_1004DAADC();
}

uint64_t View.actionContextMenu<A>(title:menu:excluding:preview:previewAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v68 = a7;
  v69 = a8;
  v66 = a5;
  v67 = a6;
  v65 = a4;
  v64 = a2;
  v63 = a1;
  v73 = a9;
  v62 = *(a10 - 8);
  __chkstk_darwin();
  v15 = v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = v59 - v16;
  v18 = sub_100008DE4(&qword_1006353A8, &qword_1005164E0);
  v19 = sub_10004C920();
  v81 = a10;
  v82 = v18;
  v76 = v18;
  v77 = a11;
  v83 = a11;
  v84 = a12;
  v78 = a12;
  v75 = v19;
  v85 = v19;
  v86 = a13;
  v72 = a13;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v21 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin();
  v23 = v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v25 = v59 - v24;
  v26 = sub_1004DAAEC();
  v71 = *(v26 - 8);
  v27 = __chkstk_darwin();
  v70 = v59 - v28;
  if (a3)
  {
    v59[2] = v59;
    __chkstk_darwin();
    v62 = v26;
    v59[1] = &v59[-12];
    v29 = v77;
    v30 = v78;
    v59[-10] = a10;
    v59[-9] = v29;
    v60 = v21;
    v61 = v25;
    v31 = v72;
    v59[-8] = v30;
    v59[-7] = v31;
    v59[-6] = v74;
    v59[-5] = a3;
    v32 = OpaqueTypeMetadata2;
    v59[3] = v33;
    __chkstk_darwin();
    v59[-6] = a10;
    v59[-5] = v29;
    v34 = swift_allocObject();
    v35 = v69;
    *(v34 + 16) = v68;
    *(v34 + 24) = v35;

    v58 = v31;
    v36 = v75;
    v56 = v30;
    v57 = v75;
    v55 = v29;
    v37 = v76;
    sub_1004DB3EC();

    v81 = a10;
    v82 = v37;
    v83 = v29;
    v84 = v30;
    v85 = v36;
    v86 = v31;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v39 = v60;
    v40 = *(v60 + 16);
    v41 = v61;
    v40(v61, v23, v32);
    v42 = *(v39 + 8);
    v42(v23, v32);
    v40(v23, v41, v32);
    v43 = v70;
    v44 = OpaqueTypeConformance2;
    v26 = v62;
    sub_10004CBDC(v23, v32, a10, v44, v78);

    v42(v23, v32);
    v42(v41, v32);
  }

  else
  {
    v45 = v62;
    v46 = *(v62 + 16);
    v46(v17, v74, a10, v27);
    (v46)(v15, v17, a10);
    v81 = a10;
    v82 = v76;
    v47 = v78;
    v83 = v77;
    v84 = v78;
    v31 = v72;
    v85 = v75;
    v86 = v72;
    v48 = swift_getOpaqueTypeConformance2();
    v49 = v70;
    sub_10004CCD4(v15, OpaqueTypeMetadata2, a10, v48, v47);
    v50 = *(v45 + 8);
    v51 = v15;
    v43 = v49;
    v50(v51, a10);
    v50(v17, a10);
  }

  v81 = a10;
  v82 = v76;
  v52 = v78;
  v83 = v77;
  v84 = v78;
  v85 = v75;
  v86 = v31;
  v79 = swift_getOpaqueTypeConformance2();
  v80 = v52;
  swift_getWitnessTable();
  v53 = v71;
  (*(v71 + 16))(v73, v43, v26);
  return (*(v53 + 8))(v43, v26);
}

uint64_t sub_10004D48C@<X0>(uint64_t a3@<X3>, char *a4@<X8>)
{
  v6 = *(a3 - 8);
  __chkstk_darwin();
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin();
  v11 = &v16 - v10;
  v12(v9);
  v13 = *(v6 + 16);
  v13(v11, v8, a3);
  v14 = *(v6 + 8);
  v14(v8, a3);
  v13(a4, v11, a3);
  return (v14)(v11, a3);
}

uint64_t sub_10004D5DC()
{

  return swift_deallocObject();
}

uint64_t sub_10004D614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = 1;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  type metadata accessor for ActionMenuView.Excluding();
  sub_100051CF0(&qword_1006353F0, type metadata accessor for ActionMenuView.Excluding, "Ab\v");

  *(a3 + 32) = sub_1004DA4CC();
  *(a3 + 40) = v5;
  v6 = *(type metadata accessor for ActionMenuView(0) + 32);
  *(a3 + v6) = swift_getKeyPath();
  sub_100004CB8(&qword_1006355C8, &qword_100516648);
  swift_storeEnumTagMultiPayload();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;

  v8 = sub_1004D9AEC();
  result = sub_100004CB8(&qword_1006353C0, &qword_1005164E8);
  v10 = (a3 + *(result + 36));
  *v10 = v8;
  v10[1] = v7;
  return result;
}

uint64_t ActionMenu.menuButton<A>(title:excluding:label:onPresentationChanged:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  v47 = a6;
  v43 = a5;
  v48 = a4;
  v49 = a3;
  v40 = a2;
  v42 = a1;
  v53 = a9;
  v11 = sub_1004DBDDC();
  v51 = *(v11 - 8);
  v52 = v11;
  __chkstk_darwin();
  v50 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100008DE4(&qword_1006353E0, &qword_1005164F8);
  v41 = v13;
  v14 = sub_10004DCB8();
  v59 = a8;
  v60 = v13;
  v61 = a10;
  v62 = v14;
  v15 = sub_1004DB15C();
  v46 = *(v15 - 8);
  __chkstk_darwin();
  v17 = v35 - v16;
  sub_100008DE4(&qword_1006353D8, &qword_1005164F0);
  v38 = v15;
  v18 = sub_1004DA32C();
  v36 = v18;
  v45 = *(v18 - 8);
  __chkstk_darwin();
  v39 = v35 - v19;
  WitnessTable = swift_getWitnessTable();
  v35[1] = WitnessTable;
  v21 = sub_100042B08(&qword_1006353D0, &qword_1006353D8, &qword_1005164F0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v57 = WitnessTable;
  v58 = v21;
  v37 = swift_getWitnessTable();
  v59 = v18;
  v60 = v37;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v23 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin();
  v25 = v35 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v27 = v35 - v26;
  v54 = v42;
  v55 = v40;
  v56 = v44;

  sub_1004DB13C();
  type metadata accessor for ActionMenuView.Excluding();
  *(swift_allocObject() + 16) = v49;
  sub_100051CF0(&qword_1006353F0, type metadata accessor for ActionMenuView.Excluding, "Ab\v");

  v28 = v39;
  v29 = v38;
  sub_1004DB54C();

  (*(v46 + 8))(v17, v29);
  v30 = v50;
  sub_1004DBDCC();
  v31 = v36;
  sub_1004DB77C();
  (*(v51 + 8))(v30, v52);
  (*(v45 + 8))(v28, v31);
  v32 = *(v23 + 16);
  v32(v27, v25, OpaqueTypeMetadata2);
  v33 = *(v23 + 8);
  v33(v25, OpaqueTypeMetadata2);
  v32(v53, v27, OpaqueTypeMetadata2);
  return (v33)(v27, OpaqueTypeMetadata2);
}

unint64_t sub_10004DCB8()
{
  result = qword_1006353E8;
  if (!qword_1006353E8)
  {
    sub_100008DE4(&qword_1006353E0, &qword_1005164F8);
    sub_100051CF0(&qword_1006353C8, type metadata accessor for ActionMenuView, &unk_100516578);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006353E8);
  }

  return result;
}

uint64_t sub_10004DD80(uint64_t a1, unint64_t a2, uint64_t a3)
{
  type metadata accessor for ActionMenuView(0);
  sub_100051CF0(&qword_1006353C8, type metadata accessor for ActionMenuView, &unk_100516578);
  sub_100030C58();

  return sub_1004DBC5C();
}

uint64_t sub_10004DE90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  type metadata accessor for ActionMenuView.Excluding();
  sub_100051CF0(&qword_1006353F0, type metadata accessor for ActionMenuView.Excluding, "Ab\v");

  *(a2 + 32) = sub_1004DA4CC();
  *(a2 + 40) = v3;
  v4 = *(type metadata accessor for ActionMenuView(0) + 32);
  *(a2 + v4) = swift_getKeyPath();
  sub_100004CB8(&qword_1006355C8, &qword_100516648);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10004DF74@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ActionMenuView.Excluding();
  result = sub_1004D9AFC();
  *a2 = result;
  return result;
}

void sub_10004DFB4(uint64_t a1@<X8>)
{
  v3 = sub_100004CB8(&qword_100635570, &qword_1005165C8);
  v85 = *(v3 - 8);
  __chkstk_darwin();
  v84 = v70 - v4;
  v96 = sub_100004CB8(&qword_100635578, &qword_1005165D0);
  __chkstk_darwin();
  v98 = v70 - v5;
  v97 = sub_100004CB8(&qword_100635580, &qword_1005165D8);
  __chkstk_darwin();
  v92 = v70 - v6;
  v7 = sub_1004DBC0C();
  v88 = *(v7 - 8);
  v89 = v7;
  __chkstk_darwin();
  v77 = v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100635588, &qword_1005165E0);
  __chkstk_darwin();
  v90 = v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v91 = v70 - v10;
  v81 = sub_100004CB8(&qword_100635590, &qword_1005165E8);
  __chkstk_darwin();
  v86 = v70 - v11;
  v83 = sub_1004DAB9C();
  v75 = *(v83 - 8);
  __chkstk_darwin();
  v73 = v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_100004CB8(&qword_100635598, &qword_1005165F0);
  v72 = *(v80 - 8);
  __chkstk_darwin();
  v71 = v70 - v13;
  v82 = sub_100004CB8(&qword_1006355A0, &qword_1005165F8);
  v76 = *(v82 - 8);
  __chkstk_darwin();
  v74 = v70 - v14;
  sub_100004CB8(&qword_1006355A8, &qword_100516600);
  __chkstk_darwin();
  v87 = v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v94 = v70 - v16;
  v103 = sub_100004CB8(&qword_1006355B0, &qword_100516608);
  __chkstk_darwin();
  v95 = v70 - v17;
  v18 = *(type metadata accessor for ActionMenuView(0) - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin();
  v20 = v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_100004CB8(&qword_1006355B8, &qword_100516610);
  __chkstk_darwin();
  v99 = v70 - v21;
  v101 = sub_100004CB8(&qword_1006355C0, &qword_100516618);
  __chkstk_darwin();
  v102 = v70 - v22;
  if (!v1[4])
  {
    type metadata accessor for ActionMenuView.Excluding();
    sub_100051CF0(&qword_1006353F0, type metadata accessor for ActionMenuView.Excluding, "Ab\v");
    sub_1004DA4BC();
    __break(1u);
    return;
  }

  v23 = v1;
  v24 = *v1;

  ActionMenu.elements(excluding:includeUnsupported:)(v25, 0);
  v27 = v26;
  v100 = v28;
  v30 = v29;

  if (!*(v27 + 16))
  {

    (v100)(v43);
    swift_storeEnumTagMultiPayload();
    sub_100051574();
    sub_1004DAADC();

    return;
  }

  v78 = v3;
  v79 = a1;
  v104 = v27;
  swift_getKeyPath();
  sub_100050FD4(v23, v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v32 = (v19 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  sub_100051184(v20, v33 + v31);
  *(v33 + v32) = v27;
  swift_bridgeObjectRetain_n();
  sub_100004CB8(&qword_1006355D0, &qword_100516650);
  sub_100004CB8(&qword_1006355D8, &qword_100516658);
  sub_100042B08(&qword_1006355E0, &qword_1006355D0, &qword_100516650, &protocol conformance descriptor for [A]);
  sub_100051294();
  v34 = v99;
  sub_1004DBC1C();
  v35 = swift_allocObject();
  *(v35 + 16) = v100;
  *(v35 + 24) = v30;
  v36 = (v34 + *(v93 + 36));
  *v36 = sub_100051F90;
  v36[1] = v35;
  v36[2] = 0;
  v36[3] = 0;
  v37 = *(v24 + 32);

  v38 = v30;
  if ((MenuType.style.getter(v37) & 1) == 0)
  {
    v100 = v23;
    v44 = *(v27 + 16);
    v45 = *(v24 + 32);

    if (MenuType.rawValue.getter(v45) == 0x7463416B63697571 && v46 == 0xEB000000006E6F69)
    {

      if (v44 <= 1)
      {
LABEL_13:
        sub_1000108DC(v34, v86, &qword_1006355B8, &qword_100516610);
        swift_storeEnumTagMultiPayload();
        v57 = sub_100042B08(&qword_100635648, &qword_100635598, &qword_1005165F0, &protocol conformance descriptor for ControlGroup<A>);
        v58 = sub_100051CF0(&qword_100635650, &type metadata accessor for MenuControlGroupStyle, &protocol conformance descriptor for MenuControlGroupStyle);
        v104 = v80;
        v105 = v83;
        v106 = v57;
        v107 = v58;
        swift_getOpaqueTypeConformance2();
        sub_100051464();
        sub_1004DAADC();
        goto LABEL_14;
      }
    }

    else
    {
      v47 = sub_1004DF08C();

      if ((v47 & 1) == 0 || v44 < 2)
      {
        goto LABEL_13;
      }
    }

    __chkstk_darwin();
    v85 = sub_100051464();
    v48 = v71;
    sub_1004D9E7C();
    v49 = v73;
    sub_1004DAB8C();
    v50 = sub_100042B08(&qword_100635648, &qword_100635598, &qword_1005165F0, &protocol conformance descriptor for ControlGroup<A>);
    v51 = sub_100051CF0(&qword_100635650, &type metadata accessor for MenuControlGroupStyle, &protocol conformance descriptor for MenuControlGroupStyle);
    v52 = v74;
    v53 = v80;
    v54 = v83;
    sub_1004DB53C();
    (*(v75 + 8))(v49, v54);
    (*(v72 + 8))(v48, v53);
    v55 = v76;
    v56 = v82;
    (*(v76 + 16))(v86, v52, v82);
    swift_storeEnumTagMultiPayload();
    v104 = v53;
    v105 = v54;
    v106 = v50;
    v107 = v51;
    swift_getOpaqueTypeConformance2();
    sub_1004DAADC();
    (*(v55 + 8))(v52, v56);
LABEL_14:
    v60 = v88;
    v59 = v89;
    v61 = *(v100 + 8) == 1;
    v62 = v91;
    v70[1] = v38;
    if (v61)
    {
      v63 = v77;
      sub_1004DBBFC();
      (*(v60 + 32))(v62, v63, v59);
      v64 = 0;
    }

    else
    {
      v64 = 1;
    }

    (*(v60 + 56))(v62, v64, 1, v59);
    v65 = v94;
    v66 = v87;
    sub_1000108DC(v94, v87, &qword_1006355A8, &qword_100516600);
    v67 = v90;
    sub_1000108DC(v62, v90, &qword_100635588, &qword_1005165E0);
    v68 = v92;
    sub_1000108DC(v66, v92, &qword_1006355A8, &qword_100516600);
    v69 = sub_100004CB8(&qword_100635658, &qword_100516678);
    sub_1000108DC(v67, v68 + *(v69 + 48), &qword_100635588, &qword_1005165E0);
    sub_10001074C(v67, &qword_100635588, &qword_1005165E0);
    sub_10001074C(v66, &qword_1006355A8, &qword_100516600);
    sub_1000108DC(v68, v98, &qword_100635580, &qword_1005165D8);
    swift_storeEnumTagMultiPayload();
    sub_100042B08(&qword_100635630, &qword_100635580, &qword_1005165D8, &protocol conformance descriptor for TupleView<A>);
    sub_100042B08(&qword_100635638, &qword_100635570, &qword_1005165C8, &protocol conformance descriptor for Menu<A, B>);
    v42 = v95;
    sub_1004DAADC();
    sub_10001074C(v68, &qword_100635580, &qword_1005165D8);
    sub_10001074C(v62, &qword_100635588, &qword_1005165E0);
    sub_10001074C(v65, &qword_1006355A8, &qword_100516600);
    v34 = v99;
    goto LABEL_18;
  }

  __chkstk_darwin();
  __chkstk_darwin();
  sub_100004CB8(&qword_1006355F8, &qword_100516660);
  sub_1000513AC();
  sub_100051464();
  v39 = v84;
  sub_1004DB14C();
  v40 = v85;
  v41 = v78;
  (*(v85 + 16))(v98, v39, v78);
  swift_storeEnumTagMultiPayload();
  sub_100042B08(&qword_100635630, &qword_100635580, &qword_1005165D8, &protocol conformance descriptor for TupleView<A>);
  sub_100042B08(&qword_100635638, &qword_100635570, &qword_1005165C8, &protocol conformance descriptor for Menu<A, B>);
  v42 = v95;
  sub_1004DAADC();
  (*(v40 + 8))(v39, v41);
LABEL_18:
  sub_1000108DC(v42, v102, &qword_1006355B0, &qword_100516608);
  swift_storeEnumTagMultiPayload();
  sub_100051574();
  sub_1004DAADC();

  sub_10001074C(v42, &qword_1006355B0, &qword_100516608);
  sub_10001074C(v34, &qword_1006355B8, &qword_100516610);
}

uint64_t sub_10004F0AC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if (v3 < 0)
  {
    v4 = *((v3 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  }

  else
  {
    v4 = ActionType.rawValue.getter(v3);
    result = v5;
  }

  *a2 = v4;
  a2[1] = result;
  return result;
}

uint64_t sub_10004F0F4@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v64 = a4;
  v65 = type metadata accessor for ActionMenuView(0);
  __chkstk_darwin();
  v8 = &v56[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v63 = sub_100004CB8(&qword_100635668, &qword_100516688);
  __chkstk_darwin();
  v10 = &v56[-v9];
  v11 = sub_1004DA25C();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v56[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = a1[1];
  v66 = *a1;
  v67 = v15;
  v16 = a1[3];
  v18 = a1[4];
  v17 = a1[5];
  v68 = a1[2];
  v69 = v18;
  v61 = v16;
  v62 = v17;
  v70 = a1[6];
  if (MenuType.rawValue.getter(*(*a2 + 32)) == 0x7463416B63697571 && v19 == 0xEB000000006E6F69)
  {
  }

  else
  {
    v21 = sub_1004DF08C();

    if ((v21 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  if (*(a3 + 16) >= 2uLL)
  {
    sub_100051658(v14);
    v22 = sub_1004DA24C();
    (*(v12 + 8))(v14, v11);
    v23 = v22 ^ 1;
    v24 = v66;
    if ((v66 & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_10:
    v25 = a2[2];
    v26 = a2[3];
    *v8 = v24 & 0x7FFFFFFFFFFFFFFFLL;
    v8[8] = 1;
    *(v8 + 2) = v25;
    *(v8 + 3) = v26;
    sub_1000518C0(v24, v67, v68, v61, v69, v62, v70);
    sub_10000DE64(v25, v26);
    type metadata accessor for ActionMenuView.Excluding();
    sub_100051CF0(&qword_1006353F0, type metadata accessor for ActionMenuView.Excluding, "Ab\v");
    *(v8 + 4) = sub_1004DA4CC();
    *(v8 + 5) = v27;
    v28 = *(v65 + 32);
    *&v8[v28] = swift_getKeyPath();
    sub_100004CB8(&qword_1006355C8, &qword_100516648);
    swift_storeEnumTagMultiPayload();
    sub_100050FD4(v8, v10);
    swift_storeEnumTagMultiPayload();
    sub_100051350();
    sub_100051CF0(&qword_1006353C8, type metadata accessor for ActionMenuView, &unk_100516578);
    sub_1004DAADC();
    return sub_10005193C(v8);
  }

LABEL_11:
  v23 = 0;
  v24 = v66;
  if (v66 < 0)
  {
    goto LABEL_10;
  }

LABEL_12:
  v59 = (v23 & 1) != 0 && *(a3 + 16) > 2uLL;
  v30 = a2[2];
  v31 = a2[3];
  v60 = v30;
  sub_10000DE64(v30, v31);

  v67(v89, v32);
  v33 = v90;
  v34 = v91;
  sub_100008C70(v89, v90);
  v87 = (*(v34 + 8))(v33, v34);
  v88[0] = v35;
  v36 = v90;
  v37 = v91;
  sub_100008C70(v89, v90);
  v38 = (*(v37 + 24))(v36, v37);
  v39 = 0;
  v88[1] = v38;
  v88[2] = v40;
  v41 = _swiftEmptyArrayStorage;
LABEL_16:
  v42 = &v88[2 * v39];
  while (++v39 != 3)
  {
    v43 = v42 + 2;
    v44 = *v42;
    v42 += 2;
    if (v44)
    {
      v58 = v10;
      v57 = v23;
      v45 = *(v43 - 3);

      v46 = v31;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = sub_10003A134(0, *(v41 + 2) + 1, 1, v41);
      }

      v48 = *(v41 + 2);
      v47 = *(v41 + 3);
      if (v48 >= v47 >> 1)
      {
        v41 = sub_10003A134((v47 > 1), v48 + 1, 1, v41);
      }

      *(v41 + 2) = v48 + 1;
      v49 = &v41[16 * v48];
      *(v49 + 4) = v45;
      *(v49 + 5) = v44;
      v31 = v46;
      v23 = v57;
      v10 = v58;
      goto LABEL_16;
    }
  }

  sub_100004CB8(&unk_100639EB0, &qword_100518300);
  swift_arrayDestroy();
  v78[0] = v41;
  sub_100004CB8(&unk_1006372E0, &unk_1005157F0);
  sub_100042B08(&qword_100637D70, &unk_1006372E0, &unk_1005157F0, &protocol conformance descriptor for [A]);
  v50 = sub_1004DD30C();
  v52 = v51;

  sub_100008D24(v89);
  LOBYTE(v72) = v66;
  *(&v72 + 1) = v94[0];
  DWORD1(v72) = *(v94 + 3);
  *(&v72 + 1) = v67;
  *&v73 = v68;
  *(&v73 + 1) = v61;
  *&v74 = v69;
  *(&v74 + 1) = v62;
  *&v75 = v70;
  BYTE8(v75) = v59;
  BYTE9(v75) = v23 & 1;
  *(&v75 + 10) = v92;
  HIWORD(v75) = v93;
  *&v76 = v60;
  *(&v76 + 1) = v31;
  *&v77 = v50;
  *(&v77 + 1) = v52;
  LOBYTE(v78[0]) = v66;
  HIDWORD(v78[0]) = *(v94 + 3);
  *(v78 + 1) = v94[0];
  v78[1] = v67;
  v78[2] = v68;
  v78[3] = v61;
  v78[4] = v69;
  v78[5] = v62;
  v78[6] = v70;
  v79 = v59;
  v80 = v23 & 1;
  v81 = v92;
  v82 = v93;
  v83 = v60;
  v84 = v31;
  v85 = v50;
  v86 = v52;
  sub_100051998(&v72, &v71);
  sub_1000519D0(v78);
  v53 = v75;
  v10[2] = v74;
  v10[3] = v53;
  v54 = v77;
  v10[4] = v76;
  v10[5] = v54;
  v55 = v73;
  *v10 = v72;
  v10[1] = v55;
  swift_storeEnumTagMultiPayload();
  sub_100051350();
  sub_100051CF0(&qword_1006353C8, type metadata accessor for ActionMenuView, &unk_100516578);
  return sub_1004DAADC();
}

uint64_t sub_10004F7E8(uint64_t *a1)
{
  v2 = sub_100004CB8(&qword_100635610, &qword_100516668);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v16 - v4;
  sub_100004CB8(&qword_100635660, &qword_100516680);
  __chkstk_darwin();
  v7 = v16 - v6;
  v8 = *a1;
  if (MenuType.image.getter(*(*a1 + 32)))
  {
    __chkstk_darwin();
    v16[-2] = a1;
    __chkstk_darwin();
    v16[-2] = v9;
    v10 = v9;
    sub_1004DB96C();
    (*(v3 + 16))(v7, v5, v2);
    swift_storeEnumTagMultiPayload();
    sub_100042B08(&qword_100635608, &qword_100635610, &qword_100516668, &protocol conformance descriptor for Label<A, B>);
    sub_1004DAADC();

    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    v16[0] = MenuType.title.getter(*(v8 + 32));
    v16[1] = v12;
    sub_100030C58();
    *v7 = sub_1004DB34C();
    *(v7 + 1) = v13;
    v7[16] = v14 & 1;
    *(v7 + 3) = v15;
    swift_storeEnumTagMultiPayload();
    sub_100042B08(&qword_100635608, &qword_100635610, &qword_100516668, &protocol conformance descriptor for Label<A, B>);
    return sub_1004DAADC();
  }
}

uint64_t sub_10004FAFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  MenuType.title.getter(*(*a1 + 32));
  sub_100030C58();
  result = sub_1004DB34C();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_10004FB5C()
{
  v1 = v0;
  sub_100004CB8(&qword_100635680, &qword_100516788);
  v2 = __chkstk_darwin();
  v4 = &v15[-v3 - 8];
  (*(v0 + 8))(v16, v2);
  v5 = v17;
  v6 = v18;
  sub_100008C70(v16, v17);
  if ((*(v6 + 48))(v5, v6))
  {
    sub_1004D9C4C();
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_1004D9C7C();
  (*(*(v8 - 8) + 56))(v4, v7, 1, v8);
  v9 = swift_allocObject();
  v10 = v1[3];
  v9[3] = v1[2];
  v9[4] = v10;
  v11 = v1[5];
  v9[5] = v1[4];
  v9[6] = v11;
  v12 = v1[1];
  v9[1] = *v1;
  v9[2] = v12;
  __chkstk_darwin();
  *(&v14 - 2) = v1;
  *(&v14 - 1) = v16;
  sub_100051998(v1, v15);
  sub_100004CB8(&qword_100635688, &qword_100516790);
  sub_100042B08(&qword_100635690, &qword_100635688, &qword_100516790, &protocol conformance descriptor for Label<A, B>);
  sub_1004DBA2C();
  return sub_100008D24(v16);
}

uint64_t ActionMenuItemStyle.buttonRole.getter@<X0>(char a1@<W0>, void *a2@<X8>)
{
  if (a1)
  {
    sub_1004D9C4C();
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = sub_1004D9C7C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, v3, 1, v4);
}

uint64_t sub_10004FE08(uint64_t *a1)
{
  sub_100008DE4(&qword_1006353A8, &qword_1005164E0);
  sub_10004C920();
  swift_getOpaqueTypeMetadata2();
  sub_1004DAAEC();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_10004FEE0(uint64_t *a1)
{
  sub_100008DE4(&qword_1006353A8, &qword_1005164E0);
  sub_10004C920();
  swift_getOpaqueTypeMetadata2();
  sub_1004DAAEC();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_10004FFCC(uint64_t *a1)
{
  sub_100008DE4(&qword_1006353E0, &qword_1005164F8);
  sub_10004DCB8();
  sub_1004DB15C();
  sub_100008DE4(&qword_1006353D8, &qword_1005164F0);
  sub_1004DA32C();
  swift_getWitnessTable();
  sub_100042B08(&qword_1006353D0, &qword_1006353D8, &qword_1005164F0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100050104(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100004CB8(&qword_1006354B0, &qword_100516528);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_1000501D4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100004CB8(&qword_1006354B0, &qword_100516528);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100050284(uint64_t a1)
{
  type metadata accessor for ActionMenu();
  if (v1 <= 0x3F)
  {
    sub_100050340(319);
    if (v2 <= 0x3F)
    {
      sub_1000503A4(319);
      if (v3 <= 0x3F)
      {
        sub_100050438(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100050340(uint64_t a1)
{
  if (!qword_100635520)
  {
    sub_100008DE4(&qword_100634FA0, &qword_100515710);
    v1 = sub_1004DE7CC();
    if (!v2)
    {
      atomic_store(v1, &qword_100635520);
    }
  }
}

void sub_1000503A4(uint64_t a1)
{
  if (!qword_100635528)
  {
    type metadata accessor for ActionMenuView.Excluding();
    sub_100051CF0(&qword_1006353F0, type metadata accessor for ActionMenuView.Excluding, "Ab\v");
    v1 = sub_1004DA4DC();
    if (!v2)
    {
      atomic_store(v1, &qword_100635528);
    }
  }
}

void sub_100050438(uint64_t a1)
{
  if (!qword_100635530)
  {
    sub_1004DA25C();
    v1 = sub_1004D9DCC();
    if (!v2)
    {
      atomic_store(v1, &qword_100635530);
    }
  }
}

double sub_1000504B8(__n128 *a1)
{
  sub_100004CB8(&qword_100635240, &qword_1005171A0);
  __chkstk_darwin();
  v3 = &v11[-v2];
  v4 = sub_1004DDA8C();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_1004DDA4C();
  sub_100051998(a1, v11);
  v5 = sub_1004DDA3C();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = &protocol witness table for MainActor;
  v7 = a1[3];
  *(v6 + 64) = a1[2];
  *(v6 + 80) = v7;
  v8 = a1[5];
  *(v6 + 96) = a1[4];
  *(v6 + 112) = v8;
  v9 = a1[1];
  *(v6 + 32) = *a1;
  *(v6 + 48) = v9;
  sub_10021C658(0, 0, v3, &unk_1005167C0, v6);

  return result;
}

uint64_t sub_1000505F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_1004DDA4C();
  v4[4] = sub_1004DDA3C();
  v8 = (*(a4 + 40) + **(a4 + 40));
  v6 = swift_task_alloc();
  v4[5] = v6;
  *v6 = v4;
  v6[1] = sub_100050704;

  return v8();
}

uint64_t sub_100050704()
{
  *(*v1 + 48) = v0;

  v3 = sub_1004DD9BC();
  if (v0)
  {
    v4 = sub_1000508E0;
  }

  else
  {
    v4 = sub_100050860;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100050860()
{
  v1 = *(v0 + 16);

  v3 = *(v1 + 64);
  if (v3)
  {
    v3(v2);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000508E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100050944()
{
  sub_100004CB8(&qword_100635698, &qword_100516798);
  sub_100004CB8(&qword_1006356A0, &qword_1005167A0);
  sub_100051C08();
  sub_100051D38();
  return sub_1004DB96C();
}

uint64_t sub_100050A00(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_1006356B8, &qword_1005167A8);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v9[-v6];
  v10 = a1;
  v11 = a2;
  sub_100004CB8(&qword_1006356D0, &qword_1005167B0);
  sub_100042B08(&qword_1006356D8, &qword_1006356D0, &qword_1005167B0, &protocol conformance descriptor for TupleView<A>);
  sub_1004D9C9C();
  v12 = *(a1 + 80);
  sub_100042B08(&qword_1006356B0, &qword_1006356B8, &qword_1005167A8, &protocol conformance descriptor for LabelGroup<A>);
  sub_100030C58();
  sub_1004DB55C();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100050BC0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 56);
  v6 = a2[3];
  v7 = a2[4];
  sub_100008C70(a2, v6);
  if ((v5 & 1) == 0)
  {
    goto LABEL_4;
  }

  (*(v7 + 16))(v6, v7);
  if (!v8)
  {
    v6 = a2[3];
    v7 = a2[4];
    sub_100008C70(a2, v6);
LABEL_4:
    (*(v7 + 8))(v6, v7);
  }

  sub_100030C58();
  v9 = sub_1004DB34C();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = a2[3];
  v16 = a2[4];
  sub_100008C70(a2, v17);
  (*(v16 + 24))(v17, v16);
  v18 = sub_1004DB34C();
  v20 = v19;
  LOBYTE(v16) = v21 & 1;
  *a3 = v9;
  *(a3 + 8) = v11;
  *(a3 + 16) = v13 & 1;
  *(a3 + 24) = v15;
  *(a3 + 32) = v18;
  *(a3 + 40) = v19;
  *(a3 + 48) = v21 & 1;
  *(a3 + 56) = v22;
  sub_100051E00(v9, v11, v13 & 1);

  sub_100051E00(v18, v20, v16);

  sub_100051E10(v18, v20, v16);

  sub_100051E10(v9, v11, v13 & 1);
}

void sub_100050D98(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(a1 + 57);
  v6 = a2[3];
  v7 = a2[4];
  sub_100008C70(a2, v6);
  if (v5)
  {
    v8 = (*(v7 + 40))(v6, v7);
    if (v8)
    {
      v12 = v8;
      v13 = v9;
      v14 = v10;
      v15 = v11;
      goto LABEL_6;
    }

    v6 = a2[3];
    v7 = a2[4];
    sub_100008C70(a2, v6);
  }

  v12 = (*(v7 + 32))(v6, v7);
  v13 = v16;
  v14 = v17;
  v15 = v18;
  if (!v12)
  {
    v20 = 0;
    goto LABEL_8;
  }

LABEL_6:

  v20 = v12(v19);
  sub_100051DB4(v12, v13, v14, v15);

LABEL_8:
  *a3 = v20;
}

uint64_t sub_100050F04(uint64_t a1)
{
  sub_1004DA25C();
  v2 = __chkstk_darwin();
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  return sub_1004DA56C();
}

uint64_t sub_100050FD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionMenuView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100051038()
{
  v1 = type metadata accessor for ActionMenuView(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);

  if (*(v0 + v2 + 16))
  {
  }

  v3 = *(v1 + 32);
  sub_100004CB8(&qword_1006355C8, &qword_100516648);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1004DA25C();
    (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100051184(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionMenuView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000511E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ActionMenuView(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10004F0F4(a1, (v2 + v6), v7, a2);
}

unint64_t sub_100051294()
{
  result = qword_1006355E8;
  if (!qword_1006355E8)
  {
    sub_100008DE4(&qword_1006355D8, &qword_100516658);
    sub_100051350();
    sub_100051CF0(&qword_1006353C8, type metadata accessor for ActionMenuView, &unk_100516578);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006355E8);
  }

  return result;
}

unint64_t sub_100051350()
{
  result = qword_1006355F0;
  if (!qword_1006355F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006355F0);
  }

  return result;
}

unint64_t sub_1000513AC()
{
  result = qword_100635600;
  if (!qword_100635600)
  {
    sub_100008DE4(&qword_1006355F8, &qword_100516660);
    sub_100042B08(&qword_100635608, &qword_100635610, &qword_100516668, &protocol conformance descriptor for Label<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100635600);
  }

  return result;
}

unint64_t sub_100051464()
{
  result = qword_100635618;
  if (!qword_100635618)
  {
    sub_100008DE4(&qword_1006355B8, &qword_100516610);
    sub_1000514F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100635618);
  }

  return result;
}

unint64_t sub_1000514F0()
{
  result = qword_100635620;
  if (!qword_100635620)
  {
    sub_100008DE4(&qword_100635628, &qword_100516670);
    sub_100051294();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100635620);
  }

  return result;
}

unint64_t sub_100051574()
{
  result = qword_100635640;
  if (!qword_100635640)
  {
    sub_100008DE4(&qword_1006355B0, &qword_100516608);
    sub_100042B08(&qword_100635630, &qword_100635580, &qword_1005165D8, &protocol conformance descriptor for TupleView<A>);
    sub_100042B08(&qword_100635638, &qword_100635570, &qword_1005165C8, &protocol conformance descriptor for Menu<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100635640);
  }

  return result;
}

uint64_t sub_100051658@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1004DA74C();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_1006355C8, &qword_100516648);
  __chkstk_darwin();
  v9 = &v14 - v8;
  sub_1000108DC(v2, &v14 - v8, &qword_1006355C8, &qword_100516648);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1004DA25C();
    return (*(*(v10 - 8) + 32))(a1, v9, v10);
  }

  else
  {
    v12 = sub_1004DDF8C();
    v13 = sub_1004DAECC();
    sub_1004D953C(v12, &_mh_execute_header, v13, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_1004DA73C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_100051890@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = sub_1004DB8DC();
  *a1 = result;
  return result;
}

double sub_1000518C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
  }

  return result;
}

uint64_t sub_10005193C(uint64_t a1)
{
  v2 = type metadata accessor for ActionMenuView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_100051A10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_100051A2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_100051A74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100051AE0()
{
  result = qword_100635670;
  if (!qword_100635670)
  {
    sub_100008DE4(&qword_100635678, &qword_100516730);
    sub_100051574();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100635670);
  }

  return result;
}

uint64_t sub_100051B88()
{

  if (*(v0 + 80))
  {
  }

  return swift_deallocObject();
}

unint64_t sub_100051C08()
{
  result = qword_1006356A8;
  if (!qword_1006356A8)
  {
    sub_100008DE4(&qword_100635698, &qword_100516798);
    sub_100042B08(&qword_1006356B0, &qword_1006356B8, &qword_1005167A8, &protocol conformance descriptor for LabelGroup<A>);
    sub_100051CF0(&qword_1006356C0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006356A8);
  }

  return result;
}

uint64_t sub_100051CF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100051D38()
{
  result = qword_1006356C8;
  if (!qword_1006356C8)
  {
    sub_100008DE4(&qword_1006356A0, &qword_1005167A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006356C8);
  }

  return result;
}

double sub_100051DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
  }

  return result;
}

void sub_100051E00(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void sub_100051E10(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100051E20()
{
  swift_unknownObjectRelease();

  if (*(v0 + 96))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100051E88(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100035B28;

  return sub_1000505F8(a1, v4, v5, v1 + 32);
}

UIMenu_optional __swiftcall ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(Swift::OpaquePointer excluding, Swift::Bool includeUnsupported)
{
  v4 = ActionMenuBuilder.menu(excluding:includeUnsupported:)(excluding._rawValue, includeUnsupported);
  v6 = v5;
  v7 = _swiftEmptyArrayStorage;
  ActionMenu.elements(excluding:includeUnsupported:)(_swiftEmptyArrayStorage, 0);
  v9 = v8;

  v10 = *(v9 + 16);
  if (v10)
  {
    v37 = v6;
    v40 = _swiftEmptyArrayStorage;
    sub_1004DEBCC();
    v11 = 32;
    v12 = v10;
    do
    {
      v13 = *(v9 + v11);
      v14 = *(v9 + v11 + 16);
      v15 = *(v9 + v11 + 32);
      v42 = *(v9 + v11 + 48);
      v41[1] = v14;
      v41[2] = v15;
      v41[0] = v13;
      sub_1000532D4(v41, v39);
      v16._rawValue = excluding._rawValue;
      sub_100052328(v4, v10, v16, includeUnsupported);
      sub_100053330(v41);
      sub_1004DEB9C();
      sub_1004DEBDC();
      sub_1004DEBEC();
      sub_1004DEBAC();
      v11 += 56;
      --v12;
    }

    while (v12);

    v17 = v40;
    v6 = v37;
    v7 = _swiftEmptyArrayStorage;
  }

  else
  {

    v17 = _swiftEmptyArrayStorage;
  }

  v18 = 0;
  v39[0] = _swiftEmptyArrayStorage;
  v19 = v17[2];
  while (v19 != v18)
  {
    if (v18 >= v17[2])
    {
      __break(1u);
LABEL_28:
      if (!sub_1004DED5C())
      {
        goto LABEL_29;
      }

LABEL_15:
      v23 = *(v4 + 32);
      v38 = MenuType.title.getter(*(v4 + 32));
      v25 = v24;
      v26 = MenuType.image.getter(v23);
      v27 = (MenuType.style.getter(v23) & 1) == 0;
      if (v18)
      {
        v28 = sub_1004DED5C();
      }

      else
      {
        v28 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (MenuType.rawValue.getter(v23) == 0x7463416B63697571 && v29 == 0xEB000000006E6F69)
      {

        if (v28 <= 1)
        {
          goto LABEL_25;
        }

LABEL_24:
        v31 = 1;
      }

      else
      {
        v30 = sub_1004DF08C();

        if ((v30 & 1) != 0 && v28 >= 2)
        {
          goto LABEL_24;
        }

LABEL_25:
        v31 = 2;
      }

      sub_100006F10(0, &qword_1006350E8, UIMenu_ptr);
      v45._countAndFlagsBits = v38;
      v45._object = v25;
      v46.value._countAndFlagsBits = 0;
      v46.value._object = 0;
      v44.value.super.isa = v26;
      v44.is_nil = 0;
      v32.value = v27;
      v33.super.super.isa = sub_1004DE4AC(v45, v46, v44, v32, v31, v7, v36).super.super.isa;

      goto LABEL_30;
    }

    v20 = v17[v18++ + 4];
    if (v20)
    {
      v21 = v20;
      sub_1004DD84C();
      if (*((v39[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1004DD8BC();
      }

      sub_1004DD90C();
      v7 = v39[0];
    }
  }

  v6(v22);
  v18 = v7 >> 62;
  if (v7 >> 62)
  {
    goto LABEL_28;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_15;
  }

LABEL_29:

  v33.super.super.isa = 0;
LABEL_30:
  isa = v33.super.super.isa;
  result.value.super.super.isa = isa;
  result.is_nil = v34;
  return result;
}

id sub_100052328(uint64_t a1, uint64_t a2, Swift::OpaquePointer excluding, char a4)
{
  v6 = *v4;
  if (*v4 < 0)
  {
    v14 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
    v15 = ActionMenu.uiMenu(excluding:includeUnsupported:)(excluding, a4 & 1);
    v16 = v15;
    if (v15)
    {
      v17 = v15;
      sub_1004DEAAC(20);

      v87 = 0xD000000000000012;
      v88 = 0x80000001004EA290;
      sub_1004DD5FC(v14[1]);
      if (qword_100633E98 != -1)
      {
        swift_once();
      }

      v87 = qword_10063CF40;
      v88 = *algn_10063CF48;

      v91._countAndFlagsBits = 46;
      v91._object = 0xE100000000000000;
      sub_1004DD5FC(v91);

      v92._countAndFlagsBits = 0xD000000000000012;
      v92._object = 0x80000001004EA290;
      sub_1004DD5FC(v92);

      v18 = sub_1004DD3FC();

      [v17 setAccessibilityIdentifier:v18];
    }

    return v16;
  }

  v80 = v4[5];
  v81 = v4[6];
  v10 = v4[3];
  v9 = v4[4];
  v78 = v4[1];
  v79 = v4[2];
  v78(&v87, a1, a2, excluding._rawValue);
  v12 = MenuType.rawValue.getter(*(a1 + 32)) == 0x7463416B63697571 && v11 == 0xEB000000006E6F69;
  v85 = v6;
  if (v12)
  {

    if (a4)
    {
LABEL_16:
      v21 = 0;
LABEL_17:
      v22 = v89;
      v23 = v90;
      sub_100008C70(&v87, v89);
      v24 = (*(v23 + 32))(v22, v23);
      v83 = v25;
      v27 = v26;
      v84 = v28;
      goto LABEL_18;
    }
  }

  else
  {
    v13 = sub_1004DF08C();

    if (v13 & 1) == 0 || (a4)
    {
      goto LABEL_16;
    }
  }

  if (a2 < 2)
  {
    goto LABEL_16;
  }

  v19 = [objc_opt_self() currentTraitCollection];
  v20 = [v19 preferredContentSizeCategory];

  LOBYTE(v19) = sub_1004DE2CC();
  if (v19)
  {
    goto LABEL_16;
  }

  v39 = v89;
  v40 = v90;
  sub_100008C70(&v87, v89);
  v41 = (*(v40 + 40))(v39, v40);
  v84 = v44;
  if (!v41)
  {
    v21 = 1;
    goto LABEL_17;
  }

  v24 = v41;
  v27 = v43;
  v83 = v42;
  v21 = 1;
LABEL_18:
  v29 = v10();
  if (v30 == 1)
  {
    v31 = 0;
  }

  else
  {
    sub_1000354D0(v29, v30);
    v31 = 1;
  }

  v32 = v89;
  v33 = v90;
  sub_100008C70(&v87, v89);
  v34 = (*(v33 + 48))(v32, v33);
  v35 = v31 | 2;
  if ((v34 & 1) == 0)
  {
    v35 = v31;
  }

  v77 = v35;
  if (a2 <= 2)
  {
    v21 = 0;
  }

  v36 = v89;
  v37 = v90;
  sub_100008C70(&v87, v89);
  if (v21 != 1)
  {
    goto LABEL_31;
  }

  (*(v37 + 16))(v36, v37);
  if (!v38)
  {
    v36 = v89;
    v37 = v90;
    sub_100008C70(&v87, v89);
LABEL_31:
    (*(v37 + 8))(v36, v37);
  }

  v45 = v10;
  v46 = v89;
  v47 = v90;
  sub_100008C70(&v87, v89);
  (*(v47 + 24))(v46, v47);
  v82 = v27;
  v48 = v9;
  if (v24)
  {

    v27(v49);
  }

  sub_100006F10(0, &qword_1006350D0, UIAction_ptr);
  v50 = v89;
  v51 = v90;
  sub_100008C70(&v87, v89);
  v52 = (*(v51 + 56))(v50, v51);
  v53 = swift_allocObject();
  v53[2] = v85;
  v53[3] = v78;
  v53[4] = v79;
  v53[5] = v45;
  v53[6] = v48;
  v53[7] = v80;
  v53[8] = v81;

  v76 = v53;
  v75 = v52;
  v54 = sub_1004DE62C();
  v55 = v89;
  v56 = v90;
  sub_100008C70(&v87, v89);
  v57 = *(v56 + 8);
  v16 = v54;
  v57(v55, v56);
  v86[0] = v58;
  v59 = v89;
  v60 = v90;
  sub_100008C70(&v87, v89);
  v61 = (*(v60 + 24))(v59, v60);
  v62 = 0;
  v86[1] = v61;
  v86[2] = v63;
  v64 = _swiftEmptyArrayStorage;
LABEL_35:
  v65 = &v86[2 * v62];
  while (++v62 != 3)
  {
    v66 = v65 + 2;
    v67 = *v65;
    v65 += 2;
    if (v67)
    {
      v68 = *(v66 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v64 = sub_10003A134(0, *(v64 + 2) + 1, 1, v64);
      }

      v70 = *(v64 + 2);
      v69 = *(v64 + 3);
      if (v70 >= v69 >> 1)
      {
        v64 = sub_10003A134((v69 > 1), v70 + 1, 1, v64);
      }

      *(v64 + 2) = v70 + 1;
      v71 = &v64[16 * v70];
      *(v71 + 4) = v68;
      *(v71 + 5) = v67;
      goto LABEL_35;
    }
  }

  sub_100004CB8(&unk_100639EB0, &qword_100518300);
  swift_arrayDestroy();
  sub_100004CB8(&unk_1006372E0, &unk_1005157F0);
  sub_1000533D4();
  sub_1004DD30C();

  v72 = sub_1004DD3FC();

  [v16 setAccessibilityLabel:{v72, 0, v77, v75, sub_1000533CC, v76}];

  sub_1004DEAAC(20);

  v93._countAndFlagsBits = ActionType.rawValue.getter(v85);
  sub_1004DD5FC(v93);

  if (qword_100633E98 != -1)
  {
    swift_once();
  }

  v94._countAndFlagsBits = 46;
  v94._object = 0xE100000000000000;
  sub_1004DD5FC(v94);

  v95._countAndFlagsBits = 0xD000000000000012;
  v95._object = 0x80000001004EA290;
  sub_1004DD5FC(v95);

  v73 = sub_1004DD3FC();

  [v16 setAccessibilityIdentifier:v73];
  sub_100051DB4(v24, v83, v82, v84);

  sub_100008D24(&v87);
  return v16;
}

UIMenu_optional __swiftcall ActionMenu.uiMenu(excluding:includeUnsupported:)(Swift::OpaquePointer excluding, Swift::Bool includeUnsupported)
{
  v3 = v2;
  ActionMenu.elements(excluding:includeUnsupported:)(excluding._rawValue, includeUnsupported);
  v8 = v7;
  v9 = v6;
  v10 = *(v7 + 16);
  v11 = _swiftEmptyArrayStorage;
  if (v10)
  {
    v40 = v6;
    v43 = _swiftEmptyArrayStorage;
    sub_1004DEBCC();
    v12 = 32;
    v13 = v10;
    do
    {
      v14 = *(v8 + v12);
      v15 = *(v8 + v12 + 16);
      v16 = *(v8 + v12 + 32);
      v45 = *(v8 + v12 + 48);
      v44[1] = v15;
      v44[2] = v16;
      v44[0] = v14;
      sub_1000532D4(v44, v42);
      v17._rawValue = excluding._rawValue;
      sub_100052328(v2, v10, v17, includeUnsupported);
      sub_100053330(v44);
      sub_1004DEB9C();
      sub_1004DEBDC();
      sub_1004DEBEC();
      sub_1004DEBAC();
      v12 += 56;
      --v13;
    }

    while (v13);

    v18 = v43;
    v9 = v40;
    v11 = _swiftEmptyArrayStorage;
  }

  else
  {

    v18 = _swiftEmptyArrayStorage;
  }

  v19 = 0;
  v42[0] = _swiftEmptyArrayStorage;
  v20 = v18[2];
  while (v20 != v19)
  {
    if (v19 >= v18[2])
    {
      __break(1u);
LABEL_28:
      if (!sub_1004DED5C())
      {
        goto LABEL_29;
      }

LABEL_15:
      v24 = *(v2 + 32);
      v25 = MenuType.title.getter(*(v2 + 32));
      v27 = v26;
      v29 = *(v3 + 40);
      v28 = *(v3 + 48);

      v30 = MenuType.image.getter(v24);
      v31 = (MenuType.style.getter(v24) & 1) == 0;
      if (!includeUnsupported)
      {
        if (v19)
        {
          v41 = sub_1004DED5C();
        }

        else
        {
          v41 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (MenuType.rawValue.getter(v24) == 0x7463416B63697571 && v32 == 0xEB000000006E6F69)
        {

          goto LABEL_23;
        }

        v33 = sub_1004DF08C();

        if (v33)
        {
LABEL_23:
          if (v41 > 1)
          {
            v34 = 1;
LABEL_26:
            sub_100006F10(0, &qword_1006350E8, UIMenu_ptr);
            v48._countAndFlagsBits = v25;
            v48._object = v27;
            v49.value._countAndFlagsBits = v29;
            v49.value._object = v28;
            v47.value.super.isa = v30;
            v47.is_nil = 0;
            v35.value = v31;
            v36.super.super.isa = sub_1004DE4AC(v48, v49, v47, v35, v34, v11, v39).super.super.isa;

            goto LABEL_30;
          }
        }
      }

      v34 = 2;
      goto LABEL_26;
    }

    v21 = v18[v19++ + 4];
    if (v21)
    {
      v22 = v21;
      sub_1004DD84C();
      if (*((v42[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1004DD8BC();
      }

      sub_1004DD90C();
      v11 = v42[0];
    }
  }

  v9(v23);
  v19 = v11 >> 62;
  if (v11 >> 62)
  {
    goto LABEL_28;
  }

  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_15;
  }

LABEL_29:

  v36.super.super.isa = 0;
LABEL_30:
  isa = v36.super.super.isa;
  result.value.super.super.isa = isa;
  result.is_nil = v37;
  return result;
}

double sub_100052EAC(uint64_t a1, uint64_t a2)
{
  sub_100004CB8(&qword_100635240, &qword_1005171A0);
  __chkstk_darwin();
  v4 = &v10 - v3;
  v5 = sub_1004DDA8C();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_1004DDA4C();

  v6 = sub_1004DDA3C();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = &protocol witness table for MainActor;
  v8 = *(a2 + 16);
  *(v7 + 32) = *a2;
  *(v7 + 48) = v8;
  *(v7 + 64) = *(a2 + 32);
  *(v7 + 80) = *(a2 + 48);
  sub_10021C658(0, 0, v4, &unk_1005167D8, v7);

  return result;
}

uint64_t sub_10005300C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = sub_1004DDA4C();
  v4[3] = sub_1004DDA3C();
  v8 = (*(a4 + 40) + **(a4 + 40));
  v6 = swift_task_alloc();
  v4[4] = v6;
  *v6 = v4;
  v6[1] = sub_100053114;

  return v8();
}

uint64_t sub_100053114()
{
  *(*v1 + 40) = v0;

  v3 = sub_1004DD9BC();
  if (v0)
  {
    v4 = sub_100053270;
  }

  else
  {
    v4 = sub_1000333D8;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100053270()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100053384()
{

  return swift_deallocObject();
}

unint64_t sub_1000533D4()
{
  result = qword_100637D70;
  if (!qword_100637D70)
  {
    sub_100008DE4(&unk_1006372E0, &unk_1005157F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100637D70);
  }

  return result;
}

uint64_t sub_100053438()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100053488(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100035B28;

  return sub_10005300C(a1, v4, v5, v1 + 32);
}

uint64_t static ActionMenu.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1004DF08C();
  }
}

uint64_t ActionMenuBuilder.menu(excluding:includeUnsupported:)(uint64_t a1, char a2)
{
  v3 = v2;
  v140 = sub_1004D82AC();
  v6 = *(v140 - 8);
  __chkstk_darwin();
  v139 = v119 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = 0;
  v143 = 0xE000000000000000;
  v145._countAndFlagsBits = 8254;
  v145._object = 0xE200000000000000;
  sub_1004DD5FC(v145);
  v8 = v2[1];
  v144[0] = *v2;
  v144[1] = v8;
  v144[2] = v2[2];
  sub_1004DEC6C();
  v9 = v142;
  v10 = v143;
  v11 = sub_10003A134(0, 1, 1, _swiftEmptyArrayStorage);
  v13 = *(v11 + 16);
  v12 = *(v11 + 24);
  v14 = v13 + 1;
  if (v13 >= v12 >> 1)
  {
    goto LABEL_88;
  }

  while (1)
  {
    v15 = swift_allocObject();
    *(v11 + 16) = v14;
    v16 = v11 + 16 * v13;
    *(v16 + 32) = v9;
    *(v16 + 40) = v10;
    v15[2] = v11;
    v17 = (v15 + 2);
    v18 = (*(v3 + 32))();

    v19 = sub_10005E25C(v18, v15 + 2, a1, a2 & 1);

    if (!*(v19 + 16))
    {
      if (!*(*v17 + 16))
      {
        __break(1u);
        goto LABEL_100;
      }

      sub_10005EA78(1, 1, 0xD00000000000001CLL, 0x80000001004EA2B0);
    }

    v121 = v15;
    *&v144[0] = v19;
    v120 = v19;

    sub_10005D330(v144);
    v119[1] = 0;
    v13 = 0x654D6E6F69746341;
    v124 = *&v144[0];
    sub_100004CB8(&qword_100635708, &qword_1005167E0);
    inited = swift_initStackObject();
    v134 = xmmword_100511DA0;
    *(inited + 16) = xmmword_100511DA0;
    *(inited + 32) = 0;
    v10 = inited + 32;
    v21 = *(v3 + 16);
    v15 = *(v3 + 24);

    v9 = v139;
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v14 = sub_1004D827C();
    v23 = v22;
    v24 = v6[1];
    v138 = v6 + 1;
    v136 = v24;
    v24(v9, v140);
    v135 = type metadata accessor for ActionMenu();
    v25 = swift_allocObject();
    *(v25 + 88) = 0;
    *(v25 + 96) = 0;
    *(v25 + 16) = v14;
    *(v25 + 24) = v23;
    *(v25 + 32) = 0;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    strcpy(v144, "ActionMenu: ");
    BYTE13(v144[0]) = 0;
    HIWORD(v144[0]) = -5120;

    v11 = v144;
    v137 = v21;
    v146._countAndFlagsBits = v21;
    v146._object = v15;
    sub_1004DD5FC(v146);

    v26 = *(&v144[0] + 1);
    *(v25 + 56) = *&v144[0];
    *(v25 + 64) = v26;
    *(v25 + 80) = _swiftEmptyArrayStorage;
    *(v25 + 72) = 1;
    *(inited + 40) = v25;
    v6 = sub_10005EB54(inited);
    swift_setDeallocating();
    a1 = v124;
    sub_10005EC48(inited + 32);
    v123 = *(a1 + 16);
    if (!v123)
    {
      break;
    }

    v3 = 0;
    v122 = a1 + 32;
    a2 = 56;
    while (1)
    {
      v12 = *(a1 + 16);
      if (v3 >= v12)
      {
        break;
      }

      v27 = (v122 + 56 * v3);
      v28 = *v27;
      v29 = v27[1];
      v30 = v27[2];
      v10 = v27[3];
      v9 = v27[4];
      v31 = v27[5];
      v13 = v27[6];
      if (*v27 < 0)
      {
        v32 = *((v28 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
        if ((v32 - 1) >= 0xA)
        {
          if (!*((v28 & 0x7FFFFFFFFFFFFFFFLL) + 0x20))
          {
            goto LABEL_9;
          }

          if (v32 == 11)
          {
            v11 = 4;
          }

          else
          {
            v11 = 6;
          }
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = byte_100516C8A[v28];
      }

      v14 = v6[2];
      v131 = v28;
      v132 = v29;
      v133 = v30;
      v33 = v31;
      sub_1000518C0(v28, v29, v30, v10, v9, v31, v13);
      v34 = v33;
      v130 = v13;
      if (!v14 || (v14 = v11, v35 = sub_100056B9C(v11), v34 = v33, (v36 & 1) == 0))
      {
        v127 = v3;
        v129 = v9;
        v128 = v11;
        if ((v11 - 1) >= 0xA)
        {
          if (v11)
          {
            v42 = v34;
            v43 = v10;
            v45 = 0;
            if (v11 == 11)
            {
              v44 = 4;
            }

            else
            {
              v44 = 6;
            }

            goto LABEL_24;
          }

          sub_10005ECB0(v131, v132, v133, v10, v9, v34, v13);
          goto LABEL_8;
        }

        v42 = v34;
        v43 = v10;
        v44 = 0;
        v45 = 1;
LABEL_24:
        v46 = sub_100004CB8(&unk_1006351C0, &unk_100515850);
        v47 = swift_allocObject();
        *(v47 + 16) = v134;
        v48 = v132;
        *(v47 + 32) = v131;
        *(v47 + 40) = v48;
        *(v47 + 48) = v133;
        *(v47 + 56) = v43;
        v49 = v129;
        *(v47 + 64) = v129;
        *(v47 + 72) = v42;
        v50 = v130;
        *(v47 + 80) = v130;

        v125 = v43;
        v51 = v43;
        v13 = v50;
        v126 = v42;
        sub_1000518C0(v131, v132, v133, v51, v49, v42, v50);
        v52 = v139;
        _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
        v53 = sub_1004D827C();
        v55 = v54;
        v136(v52, v140);
        v56 = swift_allocObject();
        *(v56 + 88) = 0;
        *(v56 + 96) = 0;
        *(v56 + 16) = v53;
        *(v56 + 24) = v55;
        v57 = v128;
        *(v56 + 32) = v128;
        *(v56 + 40) = 0;
        *(v56 + 48) = 0;
        strcpy(v144, "ActionMenu: ");
        BYTE13(v144[0]) = 0;
        HIWORD(v144[0]) = -5120;
        v147._countAndFlagsBits = v137;
        v147._object = v15;
        sub_1004DD5FC(v147);

        v58 = *(&v144[0] + 1);
        *(v56 + 56) = *&v144[0];
        *(v56 + 64) = v58;
        *(v56 + 80) = v47;
        *(v56 + 72) = 1;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v144[0] = v6;
        sub_10005A3EC(v56, v57, isUniquelyReferenced_nonNull_native);
        v6 = *&v144[0];
        if (*(*&v144[0] + 16))
        {
          v60 = sub_100056B9C(v44);
          if (v61)
          {
LABEL_40:
            v11 = *(v6[7] + 8 * v60);

            swift_beginAccess();
            v14 = *(v11 + 80);
            v81 = swift_isUniquelyReferenced_nonNull_native();
            *(v11 + 80) = v14;
            a1 = v124;
            v10 = v125;
            if ((v81 & 1) == 0)
            {
              v14 = sub_10003A240(0, *(v14 + 16) + 1, 1, v14);
              *(v11 + 80) = v14;
            }

            v9 = *(v14 + 16);
            v82 = *(v14 + 24);
            if (v9 >= v82 >> 1)
            {
              v14 = sub_10003A240((v82 > 1), v9 + 1, 1, v14);
            }

            *(v14 + 16) = v9 + 1;
            a2 = 56;
            v83 = v14 + 56 * v9;
            *(v83 + 32) = v56 | 0x8000000000000000;
            *(v83 + 40) = 0u;
            *(v83 + 56) = 0u;
            *(v83 + 72) = 0u;
            *(v11 + 80) = v14;
            swift_endAccess();

            sub_10005ECB0(v131, v132, v133, v10, v129, v126, v13);

            v3 = v127;
            goto LABEL_9;
          }
        }

        while (2)
        {
          while (2)
          {
            v62 = swift_allocObject();
            *(v62 + 16) = v134;
            *(v62 + 32) = v56 | 0x8000000000000000;
            *(v62 + 40) = 0u;
            *(v62 + 56) = 0u;
            *(v62 + 72) = 0u;

            v63 = v139;
            _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
            v64 = sub_1004D827C();
            v66 = v65;
            v136(v63, v140);
            v56 = swift_allocObject();
            *(v56 + 88) = 0;
            *(v56 + 96) = 0;
            *(v56 + 16) = v64;
            *(v56 + 24) = v66;
            *(v56 + 32) = v44;
            *(v56 + 40) = 0;
            *(v56 + 48) = 0;
            strcpy(v144, "ActionMenu: ");
            BYTE13(v144[0]) = 0;
            HIWORD(v144[0]) = -5120;
            v148._countAndFlagsBits = v137;
            v148._object = v15;
            sub_1004DD5FC(v148);

            v67 = *(&v144[0] + 1);
            *(v56 + 56) = *&v144[0];
            *(v56 + 64) = v67;
            *(v56 + 80) = v62;
            *(v56 + 72) = 1;

            v68 = swift_isUniquelyReferenced_nonNull_native();
            *&v144[0] = v6;
            v69 = sub_100056B9C(v44);
            v71 = v6[2];
            v72 = (v70 & 1) == 0;
            v73 = __OFADD__(v71, v72);
            v74 = v71 + v72;
            if (v73)
            {
              __break(1u);
LABEL_60:
              __break(1u);
LABEL_61:
              if (v6[2])
              {
                v90 = sub_100056B9C(0);
                if (v91)
                {
                  v10 = *(v6[7] + 8 * v90);
                  v92 = *(v46 + 80);

                  v93 = v139;
                  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
                  v94 = sub_1004D827C();
                  v96 = v95;
                  v136(v93, v140);
                  v97 = swift_allocObject();
                  *(v97 + 88) = 0;
                  *(v97 + 96) = 0;
                  *(v97 + 16) = v94;
                  *(v97 + 24) = v96;
                  *(v97 + 32) = 6;
                  *(v97 + 40) = 0;
                  *(v97 + 48) = 0;
                  strcpy(v144, "ActionMenu: ");
                  BYTE13(v144[0]) = 0;
                  HIWORD(v144[0]) = -5120;

                  v149._countAndFlagsBits = v137;
                  v149._object = v15;
                  sub_1004DD5FC(v149);

                  v98 = *(&v144[0] + 1);
                  *(v97 + 56) = *&v144[0];
                  *(v97 + 64) = v98;
                  *(v97 + 80) = v92;
                  *(v97 + 72) = 1;
                  v19 = v97 | 0x8000000000000000;
                  swift_beginAccess();
                  v17 = *(v10 + 80);
                  v99 = swift_isUniquelyReferenced_nonNull_native();
                  *(v10 + 80) = v17;
                  if (v99)
                  {
                    goto LABEL_64;
                  }

                  goto LABEL_101;
                }

                goto LABEL_68;
              }

              goto LABEL_93;
            }

            v75 = v70;
            if (v6[3] < v74)
            {
              sub_1000578C4(v74, v68);
              v69 = sub_100056B9C(v44);
              if ((v75 & 1) != (v76 & 1))
              {
                sub_1004DF16C();
                __break(1u);

                __break(1u);
                JUMPOUT(0x100054740);
              }

              goto LABEL_31;
            }

            if (v68)
            {
LABEL_31:
              v6 = *&v144[0];
              if (v75)
              {
                goto LABEL_32;
              }
            }

            else
            {
              v77 = v69;
              sub_10005B918();
              v69 = v77;
              v6 = *&v144[0];
              if (v75)
              {
LABEL_32:
                *(v6[7] + 8 * v69) = v56;

                if (v45)
                {
                  continue;
                }

LABEL_37:
                if (v6[2])
                {
                  v60 = sub_100056B9C(0);
                  if (v80)
                  {
                    v13 = v130;
                    goto LABEL_40;
                  }
                }

                continue;
              }
            }

            break;
          }

          v6[(v69 >> 6) + 8] |= 1 << v69;
          *(v6[6] + v69) = v44;
          *(v6[7] + 8 * v69) = v56;
          v78 = v6[2];
          v73 = __OFADD__(v78, 1);
          v79 = v78 + 1;
          if (v73)
          {
            goto LABEL_60;
          }

          v6[2] = v79;
          if ((v45 & 1) == 0)
          {
            goto LABEL_37;
          }

          continue;
        }
      }

      v13 = v10;
      v11 = *(v6[7] + 8 * v35);
      swift_beginAccess();
      v14 = *(v11 + 80);

      v37 = swift_isUniquelyReferenced_nonNull_native();
      *(v11 + 80) = v14;
      v10 = v9;
      if ((v37 & 1) == 0)
      {
        v14 = sub_10003A240(0, *(v14 + 16) + 1, 1, v14);
        *(v11 + 80) = v14;
      }

      v9 = *(v14 + 16);
      v38 = *(v14 + 24);
      v39 = v133;
      v40 = v132;
      if (v9 >= v38 >> 1)
      {
        v84 = sub_10003A240((v38 > 1), v9 + 1, 1, v14);
        v40 = v132;
        v39 = v133;
        v14 = v84;
      }

      *(v14 + 16) = v9 + 1;
      a2 = 56;
      v41 = (v14 + 56 * v9);
      v41[4] = v131;
      v41[5] = v40;
      v41[6] = v39;
      v41[7] = v13;
      v41[8] = v10;
      v41[9] = v33;
      v41[10] = v130;
      *(v11 + 80) = v14;
      swift_endAccess();

LABEL_8:
      a1 = v124;
LABEL_9:
      if (++v3 == v123)
      {
        goto LABEL_53;
      }
    }

    __break(1u);
LABEL_88:
    v11 = sub_10003A134((v12 > 1), v14, 1, v11);
  }

LABEL_53:

  if (!v6[2])
  {
    goto LABEL_97;
  }

  v85 = sub_100056B9C(12);
  if (v86)
  {
    v46 = *(v6[7] + 8 * v85);
    swift_beginAccess();
    if (*(*(v46 + 80) + 16) <= 2uLL)
    {
      v87 = v6[2];

      if (v87)
      {
        sub_100056B9C(6);
        if ((v88 & 1) == 0)
        {
          goto LABEL_61;
        }

        swift_beginAccess();

        sub_100044FD0(v89);
        swift_endAccess();
        while (1)
        {

LABEL_68:
          if (!v6[2])
          {
            break;
          }

          v103 = sub_100056B9C(6);
          if ((v104 & 1) == 0)
          {
            break;
          }

          v17 = *(v6[7] + 8 * v103);
          swift_beginAccess();
          v105 = *(v17 + 10);
          v19 = *(v105 + 16);
          if (!v19)
          {
            break;
          }

          v10 = 0;
          v106 = 32;
          while (v10 < *(v105 + 16))
          {
            v108 = *(v105 + v106);
            if (v108 < 0)
            {
              v17 = 0xE800000000000000;
              switch(*((v108 & 0x7FFFFFFFFFFFFFFFLL) + 0x20))
              {
                case 1:
                  v17 = 0xEB000000006E6F69;
                  goto LABEL_73;
                case 2:
                  v17 = 0xE300000000000000;
                  goto LABEL_73;
                case 3:
                  v17 = 0xE700000000000000;
                  goto LABEL_73;
                case 6:
                  v17 = 0xEA00000000006E6FLL;
                  goto LABEL_73;
                case 7:
                  v17 = 0xE500000000000000;
                  goto LABEL_73;
                case 8:
                  v17 = 0xE900000000000067;
                  goto LABEL_73;
                case 9:
                  v17 = 0xE90000000000006ELL;
                  goto LABEL_73;
                case 0xA:
                  v17 = 0xEB00000000657669;
                  goto LABEL_73;
                case 0xB:
                  v17 = 0xEC00000074726F53;
                  goto LABEL_73;
                case 0xC:

                  goto LABEL_90;
                default:
LABEL_73:
                  v107 = sub_1004DF08C();

                  if ((v107 & 1) == 0)
                  {
                    goto LABEL_74;
                  }

LABEL_90:

                  if (v6[2])
                  {
                    sub_100056B9C(6);
                    if (v109)
                    {
                      swift_beginAccess();

                      sub_100054FC0(v10, v144);
                      swift_endAccess();
                      sub_100053330(v144);
                    }
                  }

                  break;
              }

              goto LABEL_93;
            }

LABEL_74:
            ++v10;
            v106 += 56;
            if (v19 == v10)
            {

              goto LABEL_94;
            }
          }

LABEL_100:
          __break(1u);
LABEL_101:
          v17 = sub_10003A240(0, *(v17 + 2) + 1, 1, v17);
          *(v10 + 80) = v17;
LABEL_64:
          v101 = *(v17 + 2);
          v100 = *(v17 + 3);
          if (v101 >= v100 >> 1)
          {
            v17 = sub_10003A240((v100 > 1), v101 + 1, 1, v17);
          }

          *(v17 + 2) = v101 + 1;
          v102 = &v17[56 * v101];
          *(v102 + 4) = v19;
          *(v102 + 40) = 0u;
          *(v102 + 56) = 0u;
          *(v102 + 72) = 0u;
          *(v10 + 80) = v17;
          swift_endAccess();
        }
      }

LABEL_93:
    }
  }

LABEL_94:
  if (v6[2] && (v110 = sub_100056B9C(0), (v111 & 1) != 0))
  {
    v112 = *(v6[7] + 8 * v110);
  }

  else
  {
LABEL_97:
    v113 = v139;
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v114 = sub_1004D827C();
    v116 = v115;
    v136(v113, v140);
    v112 = swift_allocObject();
    *(v112 + 88) = 0;
    *(v112 + 96) = 0;
    *(v112 + 16) = v114;
    *(v112 + 24) = v116;
    *(v112 + 32) = 0;
    *(v112 + 40) = 0;
    *(v112 + 48) = 0;
    strcpy(v141, "ActionMenu: ");
    BYTE5(v141[1]) = 0;
    HIWORD(v141[1]) = -5120;
    v150._countAndFlagsBits = v137;
    v150._object = v15;
    sub_1004DD5FC(v150);

    v117 = v141[1];
    *(v112 + 56) = v141[0];
    *(v112 + 64) = v117;
    *(v112 + 80) = v120;
    *(v112 + 72) = 1;
  }

  return v112;
}

uint64_t ActionMenuBuilder.init(id:debugDescription:actionBuilder:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  strcpy(v16, "ActionMenu: ");
  BYTE5(v16[1]) = 0;
  HIWORD(v16[1]) = -5120;
  if (a4)
  {
    v12 = a4;
  }

  else
  {

    a3 = a1;
    v12 = a2;
  }

  v17._countAndFlagsBits = a3;
  v17._object = v12;
  sub_1004DD5FC(v17);

  v14 = v16[0];
  v15 = v16[1];
  *a7 = a1;
  a7[1] = a2;
  a7[2] = v14;
  a7[3] = v15;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

double sub_100054828@<D0>(void *a1@<X0>, char **a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v10 = a1[4];
  v11 = a1[6];
  v46 = a1[5];
  if (((1 << v6) & 0xF8FFFFD7FFE7FLL) == 0)
  {
    v45 = a1[1];
    v34 = a3;
    if (((1 << v6) & 0x700000000180) != 0)
    {
      v35 = sub_100035920();
      v36 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v35);
    }

    else
    {
      v39 = sub_1000358CC();
      v36 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v39);
    }

    a3 = v34;
    v7 = v45;
    if ((v36 & 1) == 0)
    {
      if (qword_100634428 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall != 1)
      {
        goto LABEL_40;
      }

      sub_1004DEAAC(29);

      v56._countAndFlagsBits = ActionType.rawValue.getter(v6);
      sub_1004DD5FC(v56);

      v57._object = 0x80000001004EA3B0;
      v57._countAndFlagsBits = 0xD000000000000017;
      sub_1004DD5FC(v57);
      v14 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v14 = sub_10003A134(0, *(v14 + 2) + 1, 1, v14);
        *a2 = v14;
      }

      v17 = *(v14 + 2);
      v16 = *(v14 + 3);
      v18 = v17 + 1;
      if (v17 < v16 >> 1)
      {
        goto LABEL_39;
      }

LABEL_6:
      v14 = sub_10003A134((v16 > 1), v17 + 1, 1, v14);
      *a2 = v14;
      goto LABEL_39;
    }
  }

  if (!sub_1001B3E90(v6, a3))
  {
    v43 = a2;
    v44 = v7;
    v42 = v8;
    v19 = v9();
    if (v20 == 1)
    {
      v49._countAndFlagsBits = ActionType.rawValue.getter(v6);
      sub_1004DD5FC(v49);

      v21 = *a2;
      v22 = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v21;
      if ((v22 & 1) == 0)
      {
        v21 = sub_10003A134(0, *(v21 + 2) + 1, 1, v21);
        *a2 = v21;
      }

      v24 = *(v21 + 2);
      v23 = *(v21 + 3);
      if (v24 >= v23 >> 1)
      {
        v21 = sub_10003A134((v23 > 1), v24 + 1, 1, v21);
        *a2 = v21;
      }

      *(v21 + 2) = v24 + 1;
      v25 = &v21[16 * v24];
      *(v25 + 4) = 0x20939CE22020;
      *(v25 + 5) = 0xA600000000000000;
      *a5 = v6;
      a5[1] = v44;
      a5[2] = v42;
      a5[3] = v9;
      a5[4] = v10;
      a5[5] = v46;
      a5[6] = v11;
    }

    else
    {
      v26 = v19;
      v27 = v20;
      if ((a4 & 1) == 0)
      {
        v53._countAndFlagsBits = ActionType.rawValue.getter(v6);
        sub_1004DD5FC(v53);

        v54._countAndFlagsBits = 2108704;
        v54._object = 0xE300000000000000;
        sub_1004DD5FC(v54);
        if (!v27)
        {
          sub_1000354D0(v26, 0);
          v27 = 0xE700000000000000;
          v26 = 0x6E776F6E6B6E75;
        }

        v55._countAndFlagsBits = v26;
        v55._object = v27;
        sub_1004DD5FC(v55);

        v14 = *v43;
        v37 = swift_isUniquelyReferenced_nonNull_native();
        *v43 = v14;
        if ((v37 & 1) == 0)
        {
          v14 = sub_10003A134(0, *(v14 + 2) + 1, 1, v14);
          *v43 = v14;
        }

        v17 = *(v14 + 2);
        v38 = *(v14 + 3);
        v18 = v17 + 1;
        if (v17 >= v38 >> 1)
        {
          v14 = sub_10003A134((v38 > 1), v17 + 1, 1, v14);
          *v43 = v14;
        }

        goto LABEL_39;
      }

      sub_1004DEAAC(44);

      v50._countAndFlagsBits = ActionType.rawValue.getter(v6);
      sub_1004DD5FC(v50);

      v51._countAndFlagsBits = 0xD000000000000022;
      v51._object = 0x80000001004EA380;
      sub_1004DD5FC(v51);
      if (!v27)
      {
        sub_1000354D0(v26, 0);
        v27 = 0xE700000000000000;
        v26 = 0x6E776F6E6B6E75;
      }

      v52._countAndFlagsBits = v26;
      v52._object = v27;
      sub_1004DD5FC(v52);

      v28 = *v43;
      v29 = swift_isUniquelyReferenced_nonNull_native();
      *v43 = v28;
      if ((v29 & 1) == 0)
      {
        v28 = sub_10003A134(0, *(v28 + 2) + 1, 1, v28);
        *v43 = v28;
      }

      v31 = *(v28 + 2);
      v30 = *(v28 + 3);
      if (v31 >= v30 >> 1)
      {
        v28 = sub_10003A134((v30 > 1), v31 + 1, 1, v28);
        *v43 = v28;
      }

      *(v28 + 2) = v31 + 1;
      v32 = &v28[16 * v31];
      *(v32 + 4) = 0x20939CE22020;
      *(v32 + 5) = 0xA600000000000000;
      *a5 = v6;
      a5[1] = v44;
      a5[2] = v8;
      a5[3] = v9;
      a5[4] = v10;
      a5[5] = v46;
      a5[6] = v11;
    }

    return result;
  }

  sub_1004DEAAC(17);

  v47._countAndFlagsBits = ActionType.rawValue.getter(v6);
  sub_1004DD5FC(v47);

  v48._countAndFlagsBits = 0x756C637865202D20;
  v48._object = 0xEB00000000646564;
  sub_1004DD5FC(v48);
  v14 = *a2;
  v15 = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v14;
  if ((v15 & 1) == 0)
  {
    v14 = sub_10003A134(0, *(v14 + 2) + 1, 1, v14);
    *a2 = v14;
  }

  v17 = *(v14 + 2);
  v16 = *(v14 + 3);
  v18 = v17 + 1;
  if (v17 >= v16 >> 1)
  {
    goto LABEL_6;
  }

LABEL_39:
  *(v14 + 2) = v18;
  v41 = &v14[16 * v17];
  *(v41 + 4) = 544743456;
  *(v41 + 5) = 0xE400000000000000;
LABEL_40:
  *a5 = 0xF000000000000000;
  result = 0.0;
  *(a5 + 1) = 0u;
  *(a5 + 3) = 0u;
  *(a5 + 5) = 0u;
  return result;
}

uint64_t ActionMenu.__allocating_init(id:type:subtitle:debugDescription:elements:sort:)(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, char a9)
{
  v17 = swift_allocObject();
  *(v17 + 88) = 0;
  *(v17 + 96) = 0;
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = a3;
  *(v17 + 40) = a4;
  *(v17 + 48) = a5;
  strcpy(v20, "ActionMenu: ");
  BYTE5(v20[1]) = 0;
  HIWORD(v20[1]) = -5120;
  if (a7)
  {
    a2 = a7;
  }

  else
  {

    a6 = a1;
  }

  v21._countAndFlagsBits = a6;
  v21._object = a2;
  sub_1004DD5FC(v21);

  v18 = v20[1];
  *(v17 + 56) = v20[0];
  *(v17 + 64) = v18;
  *(v17 + 80) = a8;
  *(v17 + 72) = a9 & 1;
  return v17;
}

uint64_t sub_100054FC0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10005D290(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 56 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 48);
    v13 = *(v9 + 16);
    v12 = *(v9 + 32);
    result = memmove(v9, (v9 + 56), 56 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
    *a2 = v10;
    *(a2 + 16) = v13;
    *(a2 + 32) = v12;
    *(a2 + 48) = v11;
  }

  return result;
}

uint64_t sub_100055094(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10005D2CC(v3);
    v3 = result;
  }

  v5 = v3[2];
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[2 * a1];
    v8 = v7[4];
    memmove(v7 + 4, v7 + 6, 16 * (v5 - 1 - a1));
    v3[2] = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_100055120@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10005D2E0(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    sub_100060260(&v5[2 * a1 + 4], a2);
    result = swift_arrayInitWithTakeFrontToBack();
    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1000551D0(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(v5 + a1 + 32);
    memmove((v5 + a1 + 32), (v5 + a1 + 33), v7 - 1 - a1);
    *(v5 + 16) = v8;
    *v2 = v5;
    return v9;
  }

  return result;
}

uint64_t sub_10005525C@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t ActionMenu.init(id:type:subtitle:debugDescription:elements:sort:)(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, char a9)
{
  v10 = v9;
  *(v9 + 88) = 0;
  *(v9 + 96) = 0;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  *(v9 + 48) = a5;
  strcpy(v16, "ActionMenu: ");
  BYTE5(v16[1]) = 0;
  HIWORD(v16[1]) = -5120;
  if (a7)
  {
    v12 = a7;
  }

  else
  {
    v12 = a2;

    a6 = a1;
  }

  v17._countAndFlagsBits = a6;
  v17._object = v12;
  sub_1004DD5FC(v17);

  v14 = v16[1];
  *(v10 + 56) = v16[0];
  *(v10 + 64) = v14;
  *(v10 + 80) = a8;
  *(v10 + 72) = a9 & 1;
  return v10;
}

uint64_t ActionMenu.__allocating_init(id:type:subtitle:debugDescription:sort:builder:)(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, char a8, uint64_t a9, uint64_t a10)
{
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = a3;
  *(v17 + 40) = a4;
  *(v17 + 48) = a5;
  strcpy(v21, "ActionMenu: ");
  BYTE5(v21[1]) = 0;
  HIWORD(v21[1]) = -5120;
  if (a7)
  {
    a2 = a7;
  }

  else
  {

    a6 = a1;
  }

  v22._countAndFlagsBits = a6;
  v22._object = a2;
  sub_1004DD5FC(v22);

  v18 = v21[1];
  *(v17 + 56) = v21[0];
  *(v17 + 64) = v18;
  *(v17 + 72) = a8 & 1;
  *(v17 + 96) = a10;
  *(v17 + 80) = _swiftEmptyArrayStorage;
  *(v17 + 88) = a9;
  return v17;
}

uint64_t ActionMenu.init(id:type:subtitle:debugDescription:sort:builder:)(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, char a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  *(v10 + 88) = 0;
  *(v10 + 96) = 0;
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  *(v10 + 48) = a5;
  strcpy(v19, "ActionMenu: ");
  BYTE5(v19[1]) = 0;
  HIWORD(v19[1]) = -5120;
  if (a7)
  {
    v13 = a7;
  }

  else
  {
    v13 = a2;

    a6 = a1;
  }

  v20._countAndFlagsBits = a6;
  v20._object = v13;
  sub_1004DD5FC(v20);

  v15 = v19[1];
  *(v11 + 56) = v19[0];
  *(v11 + 64) = v15;
  *(v11 + 72) = a8 & 1;
  v16 = *(v11 + 88);
  v17 = *(v11 + 96);
  *(v11 + 88) = a9;
  *(v11 + 96) = a10;

  sub_10000DE74(v16, v17);

  *(v11 + 80) = _swiftEmptyArrayStorage;
  return v11;
}

uint64_t MetricsEvent.Dialog.message.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t MetricsEvent.Dialog.messageCode.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

void ActionMenu.elements(excluding:includeUnsupported:)(uint64_t a1, char a2)
{
  v3 = v2;
  v51 = 0;
  v52 = 0xE000000000000000;
  v61._countAndFlagsBits = 8254;
  v61._object = 0xE200000000000000;
  sub_1004DD5FC(v61);
  v60 = v2;
  type metadata accessor for ActionMenu();
  sub_1004DEC6C();
  v4 = 0;
  v5 = 0xE000000000000000;
  v6 = sub_10003A134(0, 1, 1, _swiftEmptyArrayStorage);
  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  v9 = (v8 + 1);
  if (v8 >= v7 >> 1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v10 = swift_allocObject();
    *(v6 + 2) = v9;
    v11 = &v6[16 * v8];
    *(v11 + 4) = v4;
    *(v11 + 5) = v5;
    *(v10 + 16) = v6;
    v47 = (v10 + 16);
    v12 = *(v3 + 88);
    if (v12)
    {
      v13 = *(v3 + 96);

      v15 = v12(v14);
      sub_10000DE74(v12, v13);
    }

    else
    {
      v15 = _swiftEmptyArrayStorage;
    }

    swift_beginAccess();
    v43 = v3;
    v51 = v15;

    sub_100044FD0(v16);
    v8 = v51;
    v59 = &_swiftEmptySetSingleton;
    v17 = *(v51 + 2);

    v46 = v17;
    if (!v17)
    {
      break;
    }

    v18 = 0;
    v4 = 0;
    v6 = (v8 + 40);
    v9 = _swiftEmptyArrayStorage;
    v45 = v8;
    while (1)
    {
      v7 = *(v8 + 16);
      if (v18 >= v7)
      {
        break;
      }

      v50 = v18;
      v20 = *(v6 - 1);
      v19 = *v6;
      v5 = *(v6 + 1);
      v3 = *(v6 + 2);
      v21 = *(v6 + 3);
      v22 = *(v6 + 4);
      v23 = *(v6 + 5);
      v51 = v20;
      v52 = v19;
      v53 = v5;
      v54 = v3;
      v55 = v21;
      v56 = v22;
      v57 = v23;
      sub_1000518C0(v20, v19, v5, v3, v21, v22, v23);
      if (sub_1000559DC(&v51, v47, a1, a2 & 1, &v59))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v58 = v9;
        v44 = v4;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1000374AC(0, *(v9 + 2) + 1, 1);
          v9 = v58;
        }

        v25 = v5;
        v26 = v19;
        v27 = v3;
        v28 = v21;
        v29 = v22;
        v30 = v23;
        v31 = v20;
        v33 = *(v9 + 2);
        v32 = *(v9 + 3);
        v34 = v33 + 1;
        if (v33 >= v32 >> 1)
        {
          sub_1000374AC((v32 > 1), v33 + 1, 1);
          v34 = v33 + 1;
          v31 = v20;
          v30 = v23;
          v29 = v22;
          v28 = v21;
          v27 = v3;
          v26 = v19;
          v25 = v5;
          v9 = v58;
        }

        *(v9 + 2) = v34;
        v35 = &v9[56 * v33];
        *(v35 + 4) = v31;
        *(v35 + 5) = v26;
        *(v35 + 6) = v25;
        *(v35 + 7) = v27;
        *(v35 + 8) = v28;
        *(v35 + 9) = v29;
        *(v35 + 10) = v30;
        v4 = v44;
      }

      else
      {
        sub_10005ECB0(v20, v19, v5, v3, v21, v22, v23);
      }

      v18 = v50 + 1;
      v6 += 56;
      v8 = v45;
      if (v46 == v50 + 1)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_29:
    v6 = sub_10003A134((v7 > 1), v9, 1, v6);
  }

  v9 = _swiftEmptyArrayStorage;
LABEL_17:
  v36 = v9;

  if (a2)
  {
    v37 = v9;
    v38 = v47;
    sub_10005E788(v37, v47, &v59);
    v40 = v39;

    v36 = v40;
    v41 = v43;
    if (*(v36 + 2))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v41 = v43;
    v38 = v47;
    if (*(v36 + 2))
    {
      goto LABEL_23;
    }
  }

  if (!*(*v38 + 2))
  {
    __break(1u);
    return;
  }

  sub_10005EA78(1, 1, 0xD00000000000001CLL, 0x80000001004EA2B0);
LABEL_23:
  if (*(v41 + 72) == 1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = sub_10005D290(v36);
    }

    v42 = *(v36 + 2);
    v51 = v36 + 32;
    v52 = v42;
    sub_10005D3C4(&v51, sub_100060474, sub_100060428);
  }
}

uint64_t sub_1000559DC(uint64_t *a1, char **a2, uint64_t a3, char a4, uint64_t *a5)
{
  v5 = *a1;
  if (*a1 < 0)
  {
    return 1;
  }

  v6 = a1[3];
  if (((1 << v5) & 0xF8FFFFD7FFE7FLL) != 0)
  {
LABEL_3:
    v10 = sub_1001B3E90(v5, a3);
    if (v10)
    {
      sub_1004DEAAC(17);

      v40._countAndFlagsBits = ActionType.rawValue.getter(v5);
      sub_1004DD5FC(v40);

      v11._countAndFlagsBits = 0x756C637865202D20;
      v11._object = 0xEB00000000646564;
      goto LABEL_5;
    }

    v20 = v6(v10);
    if (v21 == 1)
    {
      if (a4)
      {
        v22 = ActionType.mutuallyExclusiveActions.getter(v5);
        if (!v22)
        {
          v22 = &_swiftEmptySetSingleton;
        }

        sub_100055FB4(v22);
        sub_10014B17C(v5);
      }

      v41._countAndFlagsBits = ActionType.rawValue.getter(v5);
      sub_1004DD5FC(v41);

      v12 = 0x20939CE22020;
      v13 = 0xA600000000000000;
      v14 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v14 = sub_10003A134(0, *(v14 + 2) + 1, 1, v14);
        *a2 = v14;
      }

      v17 = *(v14 + 2);
      v24 = *(v14 + 3);
      v18 = v17 + 1;
      if (v17 < v24 >> 1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v25 = v21;
      v26 = v20;
      if (a4 & 1) == 0 || (v27 = *a5, , v28 = sub_100120180(v5, v27), , (v28))
      {
        v42._countAndFlagsBits = ActionType.rawValue.getter(v5);
        sub_1004DD5FC(v42);

        v43._countAndFlagsBits = 2108704;
        v43._object = 0xE300000000000000;
        sub_1004DD5FC(v43);
        if (v25)
        {
          v29._countAndFlagsBits = v26;
        }

        else
        {
          sub_1000354D0(v26, 0);
          v25 = 0xE700000000000000;
          v29._countAndFlagsBits = 0x6E776F6E6B6E75;
        }

        v29._object = v25;
        sub_1004DD5FC(v29);

        v12 = 544743456;
        v13 = 0xE400000000000000;
        v14 = *a2;
        v33 = swift_isUniquelyReferenced_nonNull_native();
        *a2 = v14;
        if ((v33 & 1) == 0)
        {
          v14 = sub_10003A134(0, *(v14 + 2) + 1, 1, v14);
          *a2 = v14;
        }

        v17 = *(v14 + 2);
        v16 = *(v14 + 3);
        v18 = v17 + 1;
        if (v17 < v16 >> 1)
        {
          result = 0;
          goto LABEL_31;
        }

LABEL_47:
        v14 = sub_10003A134((v16 > 1), v18, 1, v14);
        result = 0;
        goto LABEL_48;
      }

      v35 = ActionType.mutuallyExclusiveActions.getter(v5);
      if (!v35)
      {
        v35 = &_swiftEmptySetSingleton;
      }

      sub_100055FB4(v35);
      sub_1004DEAAC(44);

      v44._countAndFlagsBits = ActionType.rawValue.getter(v5);
      sub_1004DD5FC(v44);

      v45._countAndFlagsBits = 0xD000000000000022;
      v45._object = 0x80000001004EA380;
      sub_1004DD5FC(v45);
      if (v25)
      {
        v36._countAndFlagsBits = v26;
      }

      else
      {
        sub_1000354D0(v26, 0);
        v25 = 0xE700000000000000;
        v36._countAndFlagsBits = 0x6E776F6E6B6E75;
      }

      v36._object = v25;
      sub_1004DD5FC(v36);

      v12 = 0x20939CE22020;
      v13 = 0xA600000000000000;
      v14 = *a2;
      v39 = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v14;
      if ((v39 & 1) == 0)
      {
        v14 = sub_10003A134(0, *(v14 + 2) + 1, 1, v14);
        *a2 = v14;
      }

      v17 = *(v14 + 2);
      v24 = *(v14 + 3);
      v18 = v17 + 1;
      if (v17 < v24 >> 1)
      {
LABEL_18:
        result = 1;
        goto LABEL_31;
      }
    }

    v14 = sub_10003A134((v24 > 1), v18, 1, v14);
    result = 1;
LABEL_48:
    *a2 = v14;
    goto LABEL_31;
  }

  v30 = a3;
  if (((1 << v5) & 0x700000000180) != 0)
  {
    v31 = sub_100035920();
    v32 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v31);
    a3 = v30;
    if (v32)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v37 = sub_1000358CC();
    v38 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v37);
    a3 = v30;
    if (v38)
    {
      goto LABEL_3;
    }
  }

  if (qword_100634428 != -1)
  {
    swift_once();
  }

  if (static DeviceCapabilities.isInternalInstall == 1)
  {
    sub_1004DEAAC(29);

    v46._countAndFlagsBits = ActionType.rawValue.getter(v5);
    sub_1004DD5FC(v46);

    v11._object = 0x80000001004EA3B0;
    v11._countAndFlagsBits = 0xD000000000000017;
LABEL_5:
    sub_1004DD5FC(v11);
    v12 = 544743456;
    v13 = 0xE400000000000000;
    v14 = *a2;
    v15 = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v14;
    if ((v15 & 1) == 0)
    {
      v14 = sub_10003A134(0, *(v14 + 2) + 1, 1, v14);
      *a2 = v14;
    }

    v17 = *(v14 + 2);
    v16 = *(v14 + 3);
    v18 = v17 + 1;
    if (v17 < v16 >> 1)
    {
      result = 0;
LABEL_31:
      *(v14 + 2) = v18;
      v34 = &v14[16 * v17];
      *(v34 + 4) = v12;
      *(v34 + 5) = v13;
      return result;
    }

    goto LABEL_47;
  }

  return 0;
}