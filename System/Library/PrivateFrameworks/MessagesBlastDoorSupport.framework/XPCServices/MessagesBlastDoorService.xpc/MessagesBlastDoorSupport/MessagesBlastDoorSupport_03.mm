uint64_t sub_10005AD44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10005ADB0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10005ADF8(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

unint64_t sub_10005AE78()
{
  result = qword_1000FD228;
  if (!qword_1000FD228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD228);
  }

  return result;
}

unint64_t sub_10005AED0()
{
  result = qword_1000FD230;
  if (!qword_1000FD230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD230);
  }

  return result;
}

unint64_t sub_10005AF28()
{
  result = qword_1000FD238;
  if (!qword_1000FD238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD238);
  }

  return result;
}

unint64_t sub_10005AF80()
{
  result = qword_1000FD240;
  if (!qword_1000FD240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD240);
  }

  return result;
}

unint64_t sub_10005AFD8()
{
  result = qword_1000FD248;
  if (!qword_1000FD248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD248);
  }

  return result;
}

unint64_t sub_10005B030()
{
  result = qword_1000FD250;
  if (!qword_1000FD250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD250);
  }

  return result;
}

unint64_t sub_10005B0CC()
{
  result = qword_1000FD260;
  if (!qword_1000FD260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD260);
  }

  return result;
}

uint64_t sub_10005B120(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10005B168(uint64_t a1)
{
  v2 = sub_1000124CC(&qword_1000FD268, &unk_1000CD328);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10005B1D0()
{
  result = qword_1000FD270;
  if (!qword_1000FD270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD270);
  }

  return result;
}

unint64_t sub_10005B224()
{
  result = qword_1000FD278;
  if (!qword_1000FD278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD278);
  }

  return result;
}

unint64_t sub_10005B278()
{
  result = qword_1000FD288;
  if (!qword_1000FD288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD288);
  }

  return result;
}

unint64_t sub_10005B2CC()
{
  result = qword_1000FD2A8;
  if (!qword_1000FD2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD2A8);
  }

  return result;
}

unint64_t sub_10005B344()
{
  result = qword_1000FD2B0;
  if (!qword_1000FD2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD2B0);
  }

  return result;
}

unint64_t sub_10005B39C()
{
  result = qword_1000FD2B8;
  if (!qword_1000FD2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD2B8);
  }

  return result;
}

unint64_t sub_10005B3F4()
{
  result = qword_1000FD2C0;
  if (!qword_1000FD2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD2C0);
  }

  return result;
}

uint64_t sub_10005B45C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_10005B4A4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_10005B4F0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000124CC(&qword_1000FD2D8, &qword_1000CD5A8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v11 - v8;
  sub_10001530C(a1, a1[3]);
  sub_10005BC30();
  sub_1000C5D04();
  v13 = 0;
  sub_1000C5BA4();
  if (!v3)
  {
    v11[1] = a3;
    v12 = 1;
    sub_1000124CC(&qword_1000FC378, &qword_1000CA860);
    sub_100015FB4(&qword_1000FC380, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    sub_1000C5BB4();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_10005B6AC@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10005BA38(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_10005B6F4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 103;
  }

  else
  {
    v3 = 29793;
  }

  if (v2)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xE100000000000000;
  }

  if (*a2)
  {
    v5 = 103;
  }

  else
  {
    v5 = 29793;
  }

  if (*a2)
  {
    v6 = 0xE100000000000000;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000C5C04();
  }

  return v8 & 1;
}

Swift::Int sub_10005B784()
{
  sub_1000C5CB4();
  sub_1000C52C4();

  return sub_1000C5CD4();
}

double sub_10005B7F0(uint64_t a1)
{
  sub_1000C52C4();

  return result;
}

Swift::Int sub_10005B848()
{
  sub_1000C5CB4();
  sub_1000C52C4();

  return sub_1000C5CD4();
}

void sub_10005B8B0(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000F1900;
  v7._object = v3;
  v5 = sub_1000C59F4(v4, v7);

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v5)
  {
    v6 = 0;
  }

  *a2 = v6;
}

void sub_10005B910(uint64_t *a1@<X8>)
{
  v2 = 29793;
  if (*v1)
  {
    v2 = 103;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE100000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10005B938()
{
  if (*v0)
  {
    return 103;
  }

  else
  {
    return 29793;
  }
}

void sub_10005B95C(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_1000F1900;
  v8._object = a2;
  v6 = sub_1000C59F4(v5, v8);

  if (v6 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v6)
  {
    v7 = 0;
  }

  *a3 = v7;
}

uint64_t sub_10005B9C0(uint64_t a1)
{
  v2 = sub_10005BC30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005B9FC(uint64_t a1)
{
  v2 = sub_10005BC30();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10005BA38(void *a1)
{
  v3 = sub_1000124CC(&qword_1000FD2C8, &unk_1000CD598);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  sub_10001530C(a1, v7);
  sub_10005BC30();
  sub_1000C5CF4();
  if (!v1)
  {
    v10 = 0;
    v7 = sub_1000C5AB4();
    sub_1000124CC(&qword_1000FC378, &qword_1000CA860);
    v9[15] = 1;
    sub_100015FB4(&qword_1000FC3A8, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    sub_1000C5AC4();
    (*(v4 + 8))(v6, v3);
  }

  sub_100015F68(a1);
  return v7;
}

unint64_t sub_10005BC30()
{
  result = qword_1000FD2D0;
  if (!qword_1000FD2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD2D0);
  }

  return result;
}

unint64_t sub_10005BC98()
{
  result = qword_1000FD2E0;
  if (!qword_1000FD2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD2E0);
  }

  return result;
}

unint64_t sub_10005BCF0()
{
  result = qword_1000FD2E8;
  if (!qword_1000FD2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD2E8);
  }

  return result;
}

unint64_t sub_10005BD48()
{
  result = qword_1000FD2F0;
  if (!qword_1000FD2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD2F0);
  }

  return result;
}

uint64_t sub_10005BDF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000124CC(&qword_1000FC788, &qword_1000CAD48);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10005E10C(a3, v25 - v10);
  v12 = sub_1000C5404();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100018F90(v11, &qword_1000FC788, &qword_1000CAD48);
  }

  else
  {
    sub_1000C53F4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1000C53E4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1000C5294() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_100018F90(a3, &qword_1000FC788, &qword_1000CAD48);

      return v23;
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

  sub_100018F90(a3, &qword_1000FC788, &qword_1000CAD48);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10005C0E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a2;
  v5 = sub_1000124CC(&qword_1000FD300, &qword_1000CD750);
  v34 = *(v5 - 8);
  __chkstk_darwin(v5);
  v32 = &v27 - v6;
  v7 = sub_1000C4CF4();
  v30 = *(v7 - 8);
  v31 = v7;
  __chkstk_darwin(v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000C4CC4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000C5514();
  sub_100014F70();
  v15 = sub_1000C56D4();
  v16 = *(v11 + 16);
  v33 = a1;
  v16(v13, a1, v10);
  if (os_log_type_enabled(v15, v14))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v29 = a3;
    v19 = v18;
    v36 = v18;
    *v17 = 136446210;
    sub_1000C4CB4();
    v20 = sub_1000C4CD4();
    v28 = v5;
    v22 = v21;
    (*(v30 + 8))(v9, v31);
    (*(v11 + 8))(v13, v10);
    v23 = sub_10008AC30(v20, v22, &v36);
    v5 = v28;

    *(v17 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v15, v14, "Unpacking animated image at path %{public}s", v17, 0xCu);
    sub_100015F68(v19);
  }

  else
  {

    v24 = (*(v11 + 8))(v13, v10);
  }

  __chkstk_darwin(v24);
  v25 = v35;
  *(&v27 - 2) = v33;
  *(&v27 - 1) = v25;
  sub_1000124CC(&qword_1000FD308, &qword_1000CD758);
  (*(v34 + 104))(v32, enum case for AsyncThrowingStream.Continuation.BufferingPolicy.unbounded<A, B>(_:), v5);
  return sub_1000C5434();
}

uint64_t sub_10005C4B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a2;
  v29 = a3;
  v30 = a1;
  v31 = sub_1000124CC(&qword_1000FD310, &unk_1000CD760);
  v3 = *(v31 - 8);
  v27 = *(v3 + 64);
  __chkstk_darwin(v31);
  v26 = &v22 - v4;
  v5 = sub_1000C3D64();
  v24 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v25 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000C4CC4();
  v23 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000124CC(&qword_1000FC788, &qword_1000CAD48);
  __chkstk_darwin(v12 - 8);
  v14 = &v22 - v13;
  v15 = sub_1000C5404();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v9 + 16))(v11, v28, v8);
  (*(v6 + 16))(&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v29, v5);
  v16 = v26;
  (*(v3 + 16))(v26, v30, v31);
  v17 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v18 = (v10 + *(v6 + 80) + v17) & ~*(v6 + 80);
  v19 = (v7 + *(v3 + 80) + v18) & ~*(v3 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  (*(v9 + 32))(v20 + v17, v11, v23);
  (*(v6 + 32))(v20 + v18, v25, v24);
  (*(v3 + 32))(v20 + v19, v16, v31);
  sub_10005BDF4(0, 0, v14, &unk_1000CD778, v20);
}

uint64_t sub_10005C840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a5;
  v6[16] = a6;
  v6[14] = a4;
  v7 = sub_1000C3D64();
  v6[17] = v7;
  v6[18] = *(v7 - 8);
  v6[19] = swift_task_alloc();
  sub_1000124CC(&qword_1000FC460, &qword_1000C9D30);
  v6[20] = swift_task_alloc();
  v8 = sub_1000C4D84();
  v6[21] = v8;
  v6[22] = *(v8 - 8);
  v6[23] = swift_task_alloc();
  v9 = sub_1000C4CF4();
  v6[24] = v9;
  v6[25] = *(v9 - 8);
  v6[26] = swift_task_alloc();
  v10 = sub_1000C14E4();
  v6[27] = v10;
  v6[28] = *(v10 - 8);
  v6[29] = swift_task_alloc();
  v11 = sub_1000C4CC4();
  v6[30] = v11;
  v6[31] = *(v11 - 8);
  v6[32] = swift_task_alloc();

  return _swift_task_switch(sub_10005CAAC, 0, 0);
}

uint64_t sub_10005CAAC(uint64_t a1)
{
  v56 = v1;
  v3 = *(v1 + 248);
  v2 = *(v1 + 256);
  v4 = *(v1 + 240);
  v5 = *(v1 + 112);
  v6 = sub_1000C5514();
  sub_100014F70();
  v7 = sub_1000C56D4();
  v54 = *(v3 + 16);
  v54(v2, v5, v4);
  v8 = os_log_type_enabled(v7, v6);
  v10 = *(v1 + 248);
  v9 = *(v1 + 256);
  v11 = *(v1 + 240);
  if (v8)
  {
    v12 = *(v1 + 224);
    v13 = *(v1 + 232);
    v50 = *(v1 + 216);
    v52 = v6;
    v14 = *(v1 + 200);
    v15 = *(v1 + 208);
    v48 = *(v1 + 192);
    v16 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v55[0] = v51;
    *v16 = 136446210;
    v49 = v11;
    sub_1000C4CB4();
    sub_1000C4CE4();
    (*(v14 + 8))(v15, v48);
    sub_10005E604(&qword_1000FC778, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v17 = sub_1000C5BE4();
    v19 = v18;
    (*(v12 + 8))(v13, v50);
    (*(v10 + 8))(v9, v49);
    v20 = sub_10008AC30(v17, v19, v55);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v7, v52, "Task running for animated image: %{public}s)", v16, 0xCu);
    sub_100015F68(v51);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  if (sub_1000C3D54() <= 5000)
  {
    v33 = *(v1 + 240);
    v34 = *(v1 + 160);
    v35 = *(v1 + 112);
    *(v1 + 40) = v33;
    *(v1 + 48) = &protocol witness table for File;
    v53 = *(v1 + 120);
    v36 = sub_10002E5DC((v1 + 16));
    v54(v36, v35, v33);
    sub_1000C3D44();
    v37 = sub_1000C4D54();
    (*(*(v37 - 8) + 56))(v34, 1, 1, v37);
    sub_1000C4D64();
    sub_1000C4D74();
    sub_10001530C((v1 + 56), *(v1 + 80));
    v38 = swift_task_alloc();
    *(v38 + 16) = v53;
    v39 = swift_task_alloc();
    *(v39 + 16) = sub_10005E324;
    *(v39 + 24) = v38;
    sub_1000C2834();
    (*(*(v1 + 176) + 8))(*(v1 + 184), *(v1 + 168));

    sub_100015F68((v1 + 56));
  }

  else
  {
    v22 = *(v1 + 144);
    v21 = *(v1 + 152);
    v23 = *(v1 + 136);
    v24 = *(v1 + 120);
    v25 = sub_1000C5514();
    v26 = sub_1000C56D4();
    (*(v22 + 16))(v21, v24, v23);
    v27 = os_log_type_enabled(v26, v25);
    v29 = *(v1 + 144);
    v28 = *(v1 + 152);
    v30 = *(v1 + 136);
    if (v27)
    {
      v31 = swift_slowAlloc();
      *v31 = 134349056;
      v32 = sub_1000C3D54();
      (*(v29 + 8))(v28, v30);
      *(v31 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v26, v25, "context.maxCount too large: %{public}ld)", v31, 0xCu);
    }

    else
    {
      (*(v29 + 8))(*(v1 + 152), *(v1 + 136));
    }

    v55[0] = 40;
    v55[1] = 0xE100000000000000;
    *(v1 + 104) = sub_1000C3D54();
    v58._countAndFlagsBits = sub_1000C5BE4();
    sub_1000C52E4(v58);

    sub_1000C4FC4();
    sub_10005E604(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    v40 = swift_allocError();
    sub_1000C4FB4();
    swift_willThrow();
    v41 = sub_1000C5534();
    v42 = sub_1000C56D4();
    if (os_log_type_enabled(v42, v41))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 138412290;
      swift_errorRetain();
      v45 = _swift_stdlib_bridgeErrorToNSError();
      *(v43 + 4) = v45;
      *v44 = v45;
      _os_log_impl(&_mh_execute_header, v42, v41, "Caught error: %@", v43, 0xCu);
      sub_100018F90(v44, &qword_1000FC468, &qword_1000CAD70);
    }

    *(v1 + 96) = v40;
    sub_1000124CC(&qword_1000FD310, &unk_1000CD760);
    sub_1000C5424();
  }

  v46 = *(v1 + 8);

  return v46();
}

void sub_10005D1B8(void *a1, uint64_t a2, uint64_t a3)
{
  v76 = a2;
  v6 = sub_1000124CC(&qword_1000FD308, &qword_1000CD758);
  __chkstk_darwin(v6 - 8);
  v67 = &v53 - v7;
  v66 = sub_1000124CC(&qword_1000FD318, &qword_1000CD798);
  v8 = *(v66 - 8);
  __chkstk_darwin(v66);
  v65 = &v53 - v9;
  v72 = sub_1000C30A4();
  v10 = *(v72 - 8);
  __chkstk_darwin(v72);
  v71 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000124CC(&qword_1000FC460, &qword_1000C9D30);
  __chkstk_darwin(v12 - 8);
  v70 = &v53 - v13;
  v14 = sub_1000C4D84();
  __chkstk_darwin(v14 - 8);
  v69 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000C3D84();
  v54 = *(v16 - 8);
  v17 = __chkstk_darwin(v16);
  v64 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v68 = &v53 - v19;
  v20 = sub_1000C3454();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = a1;
  sub_1000C5594();
  v24 = sub_1000C3414();
  if (!v25)
  {
LABEL_21:
    sub_1000C4FC4();
    sub_10005E604(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    swift_willThrow();
    v51 = *(v21 + 8);
    v52 = v23;
LABEL_23:
    v51(v52, v20);
    return;
  }

  v55 = v8;
  v75 = v23;
  v26 = v24;
  v27 = v25;
  if ((sub_10009B58C(v24, v25) & 1) == 0)
  {
    sub_1000C4FC4();
    sub_10005E604(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    swift_willThrow();
    v51 = *(v21 + 8);
    v52 = v75;
    goto LABEL_23;
  }

  v61 = v26;
  v63 = v27;
  v28 = sub_1000C3D54();
  v29 = v28 - 1;
  if (__OFSUB__(v28, 1))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v30 = sub_1000C33F4();
  v31 = v30 - 1;
  if (!__OFSUB__(v30, 1))
  {
    if (v31 >= v29)
    {
      v31 = v29;
    }

    v58 = v31;
    if (v31 < 0)
    {
      goto LABEL_30;
    }

    v57 = v16;
    v53 = v20;
    v20 = 0;
    v60 = enum case for StickerEffect.none(_:);
    v59 = (v10 + 104);
    v56 = (v54 + 2);
    ++v55;
    ++v54;
    v62 = v21;
    v74 = a3;
    while (1)
    {
      v32 = sub_1000C33F4();
      v33 = sub_1000C3D54();
      sub_10005E374(v20, v32, v33);
      if (v3)
      {
        (*(v62 + 8))(v75, v53);

        return;
      }

      v35 = v34;
      v36 = swift_allocObject();
      v37 = v73;
      *(v36 + 16) = v73;
      v37;
      sub_1000C3D34();

      sub_1000C3D44();
      v38 = sub_1000C5584();
      type metadata accessor for CGImage(0);
      v78 = v39;
      v79 = &protocol witness table for CGImageRef;
      v77 = v38;
      v40 = sub_1000C4D54();
      (*(*(v40 - 8) + 56))(v70, 1, 1, v40);
      sub_1000C4D64();
      (*v59)(v71, v60, v72);

      v41 = v68;
      sub_1000C3D74();
      v42 = sub_1000C3D54();
      if (__OFSUB__(v42, 1))
      {
        break;
      }

      if (v20 >= v42 - 1)
      {
        v44 = 1;
      }

      else
      {
        v43 = sub_1000C33F4();
        if (__OFSUB__(v43, 1))
        {
          goto LABEL_27;
        }

        v44 = v35 >= v43 - 1;
      }

      v45 = v57;
      (*v56)(v64, v41, v57);
      sub_10005E604(&qword_1000FD320, &type metadata accessor for AnimatedImageFrame, &protocol conformance descriptor for AnimatedImageFrame);
      sub_1000C3FF4();
      v23 = sub_1000124CC(&qword_1000FD310, &unk_1000CD760);
      v46 = v65;
      sub_1000C5414();
      (*v55)(v46, v66);
      if (v44)
      {
        v47 = sub_1000C5514();
        sub_100014F70();
        v48 = sub_1000C56D4();
        sub_1000C1A54(v47, &_mh_execute_header, v48, "Last frame, finishing continuation", 34, 2, _swiftEmptyArrayStorage);

        v77 = 0;
        sub_1000C5424();
      }

      (*v54)(v41, v45);
      v21 = v62;
      v49 = v75;
      if (v58 == v20)
      {

        (*(v21 + 8))(v49, v53);
        return;
      }

      if (__OFADD__(v20++, 1))
      {
        __break(1u);
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

uint64_t sub_10005DB6C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10005DC64;

  return v6(a1);
}

uint64_t sub_10005DC64()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10005DD64()
{
  v17 = sub_1000C4CC4();
  v1 = *(v17 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v16 = sub_1000C3D64();
  v5 = *(v16 - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = sub_1000124CC(&qword_1000FD310, &unk_1000CD760);
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v7 + v8 + v11) & ~v11;
  v15 = *(v10 + 64);
  v13 = v2 | v6 | v11;
  swift_unknownObjectRelease();
  (*(v1 + 8))(v0 + v3, v17);
  (*(v5 + 8))(v0 + v7, v16);
  (*(v10 + 8))(v0 + v12, v9);

  return _swift_deallocObject(v0, v12 + v15, v13 | 7);
}

uint64_t sub_10005DF4C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000C4CC4() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1000C3D64() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_1000124CC(&qword_1000FD310, &unk_1000CD760) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_10003A8F0;

  return sub_10005C840(a1, v13, v14, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t sub_10005E10C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000124CC(&qword_1000FC788, &qword_1000CAD48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005E17C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005E1B4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10003B8E8;

  return sub_10005DB6C(a1, v4);
}

uint64_t sub_10005E26C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10003A8F0;

  return sub_10005DB6C(a1, v4);
}

uint64_t sub_10005E340@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  if (!v2)
  {
    *a1 = 0;
  }

  return result;
}

uint64_t sub_10005E374(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 < result || (v3 = result, result >= a2))
  {
    sub_1000C4FC4();
    sub_10005E604(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    return swift_willThrow();
  }

  if (a3 < a2)
  {
    v4 = a2 / a3;
    v5 = v4 * result;
    if (COERCE__INT64(fabs(v5)) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if (v5 <= -9.22337204e18)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if (v5 >= 9.22337204e18)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v6 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    result = a2 - 1;
    if (v3)
    {
      if (v6 >= a2)
      {
LABEL_17:
        v7 = v4 * (v3 + 1);
        if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        if (v7 <= -9.22337204e18)
        {
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        if (v7 >= 9.22337204e18)
        {
LABEL_30:
          __break(1u);
          return result;
        }

        v8 = v7;
        if (a2 - 1 < v7)
        {
          v8 = a2 - 1;
        }

        if (v8 < result)
        {
          __break(1u);
          goto LABEL_24;
        }

        return result;
      }
    }

    else
    {
      if (a2 < 1)
      {
        goto LABEL_17;
      }

      v6 = 0;
    }

    result = v6;
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_10005E598()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005E604(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10005E660(uint64_t a1)
{
  result = sub_100012568();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10005E68C()
{
  result = qword_1000FD328;
  if (!qword_1000FD328)
  {
    sub_1000C3F44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD328);
  }

  return result;
}

unint64_t sub_10005E724(uint64_t a1)
{
  result = sub_100012A00();
  *(a1 + 8) = result;
  return result;
}

void sub_10005E794(uint64_t a1@<X8>)
{
  v193 = a1;
  v1 = sub_1000124CC(&qword_1000FC430, &unk_1000C9B00);
  __chkstk_darwin(v1 - 8);
  v208 = &v182 - v2;
  v3 = sub_1000C5974();
  v213 = *(v3 - 8);
  v214 = v3;
  v4 = __chkstk_darwin(v3);
  v209 = &v182 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v220 = &v182 - v7;
  __chkstk_darwin(v6);
  *&v212 = &v182 - v8;
  v9 = sub_1000124CC(&qword_1000FC3B0, &qword_1000C9780);
  __chkstk_darwin(v9 - 8);
  v200 = &v182 - v10;
  v204 = sub_1000C3DC4();
  v202 = *(v204 - 8);
  v11 = __chkstk_darwin(v204);
  v201 = &v182 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v196 = &v182 - v14;
  __chkstk_darwin(v13);
  v206 = &v182 - v15;
  v207 = sub_1000C3244();
  v217 = *(v207 - 8);
  v16 = __chkstk_darwin(v207);
  v199 = &v182 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v203 = &v182 - v19;
  __chkstk_darwin(v18);
  v205 = &v182 - v20;
  v21 = sub_1000124CC(&qword_1000FD338, &qword_1000CD898);
  v22 = __chkstk_darwin(v21 - 8);
  v197 = &v182 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v198 = &v182 - v25;
  v26 = __chkstk_darwin(v24);
  v194 = &v182 - v27;
  v28 = __chkstk_darwin(v26);
  v195 = &v182 - v29;
  v30 = __chkstk_darwin(v28);
  v210 = &v182 - v31;
  __chkstk_darwin(v30);
  v211 = &v182 - v32;
  v33 = sub_1000124CC(&qword_1000FC520, &qword_1000C9D20);
  __chkstk_darwin(v33 - 8);
  v219 = &v182 - v34;
  v35 = sub_1000124CC(&qword_1000FC438, &unk_1000C9DC0);
  __chkstk_darwin(v35 - 8);
  v215 = &v182 - v36;
  v221 = sub_1000C1974();
  v216 = *(v221 - 8);
  __chkstk_darwin(v221);
  v38 = &v182 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1000C4FC4();
  *&v218 = *(v39 - 8);
  __chkstk_darwin(v39);
  v41 = &v182 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1000C4ED4();
  v43 = *(v42 - 8);
  v44 = __chkstk_darwin(v42);
  v46 = &v182 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v48 = &v182 - v47;
  v49 = v222;
  sub_1000C1994();
  if (v49)
  {
    return;
  }

  v222 = v38;
  v50 = v221;
  v187 = v41;
  v188 = v39;
  v185 = v46;
  v191 = v42;
  v192 = v48;
  v189 = 0;
  v190 = v43;
  v51 = sub_1000C1984();
  if (v52 >> 60 == 15)
  {
    sub_100014F70();
    v53 = sub_1000C5714();
    sub_1000124CC(&qword_1000FC348, qword_1000C9550);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_1000C94D0;
    v55 = v219;
    v56 = v192;
    sub_1000C4EC4();
    v57 = sub_1000C1614();
    (*(*(v57 - 8) + 56))(v55, 0, 1, v57);
    v58 = sub_1000C4A84();
    v60 = v59;
    sub_100018F90(v55, &qword_1000FC520, &qword_1000C9D20);
    *(v54 + 56) = &type metadata for String;
    *(v54 + 64) = sub_100014FBC();
    *(v54 + 32) = v58;
    *(v54 + 40) = v60;
    v61 = sub_1000C5554();
    sub_1000C1A44("Missing encrypted data (editCommandGUID: %@)", 44, 2, &_mh_execute_header, v53, v61, v54);

    sub_100060348();
    swift_allocError();
    swift_willThrow();
    (*(v190 + 8))(v56, v191);
    return;
  }

  v183 = v51;
  v184 = v52;
  isa = sub_1000C1544().super.isa;
  v63 = [(objc_class *)isa _imOptionallyDecompressData];

  v64 = sub_1000C1564();
  v66 = v65;

  v186 = v66;
  v67 = v66 >> 62;
  v182 = v64;
  if ((v66 >> 62) > 1)
  {
    v68 = v220;
    v69 = v217;
    v70 = v218;
    v71 = v50;
    v73 = v216;
    v72 = v222;
    if (v67 == 2)
    {
      v75 = *(v64 + 16);
      v74 = *(v64 + 24);
      v76 = __OFSUB__(v74, v75);
      v77 = v74 - v75;
      if (v76)
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v77 > 0)
      {
        goto LABEL_11;
      }
    }

LABEL_16:
    (*(v73 + 104))(v72, enum case for TopLevelDictionary.CodingKeys.decryptedData(_:), v71);
    sub_1000C1964();
    (*(v73 + 8))(v72, v71);
    v108 = v187;
    sub_1000C4FB4();
    sub_100014F70();
    v221 = sub_1000C5774();
    sub_1000124CC(&qword_1000FC348, qword_1000C9550);
    v109 = swift_allocObject();
    *(v109 + 16) = xmmword_1000C94D0;
    v222 = *(v70 + 16);
    v110 = v215;
    v111 = v188;
    v222(v215, v108, v188);
    (*(v70 + 56))(v110, 0, 1, v111);
    v112 = sub_1000C4A84();
    v114 = v113;
    sub_100018F90(v110, &qword_1000FC438, &unk_1000C9DC0);
    *(v109 + 56) = &type metadata for String;
    *(v109 + 64) = sub_100014FBC();
    *(v109 + 32) = v112;
    *(v109 + 40) = v114;
    v115 = sub_1000C5554();
    v116 = v221;
    sub_1000C1A44("Message unpacking explosion: %{public}@", 39, 2, &_mh_execute_header, v221, v115, v109);

    sub_10006039C(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    v222(v117, v108, v111);
    swift_willThrow();
    sub_100018CBC(v183, v184);
    sub_100018CD0(v182, v186);
    (*(v70 + 8))(v108, v111);
    (*(v190 + 8))(v192, v191);
    return;
  }

  v68 = v220;
  v69 = v217;
  v70 = v218;
  v71 = v50;
  v72 = v222;
  if (!v67)
  {
    v73 = v216;
    if (!BYTE6(v186))
    {
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  v73 = v216;
  if (__OFSUB__(HIDWORD(v64), v64))
  {
LABEL_34:
    __break(1u);
    return;
  }

  if (HIDWORD(v64) - v64 <= 0)
  {
    goto LABEL_16;
  }

LABEL_11:
  sub_1000C1464();
  swift_allocObject();
  v78 = sub_1000C1454();
  sub_1000603E4();
  v216 = v78;
  v79 = v189;
  sub_1000C1444();
  if (v79)
  {
    *&v239 = v79;
    swift_errorRetain();
    sub_1000124CC(&qword_1000FC350, &unk_1000CA170);
    v80 = v212;
    v81 = v214;
    if (swift_dynamicCast())
    {

      v82 = v213;
      (*(v213 + 32))(v68, v80, v81);
      v219 = sub_100014F70();
      v83 = v81;
      v207 = sub_1000C5774();
      v217 = sub_1000124CC(&qword_1000FC348, qword_1000C9550);
      v84 = swift_allocObject();
      v212 = xmmword_1000C94D0;
      *(v84 + 16) = xmmword_1000C94D0;
      v85 = v68;
      v86 = *(v82 + 16);
      v210 = v82 + 16;
      v87 = v208;
      v86(v208, v85, v83);
      (*(v82 + 56))(v87, 0, 1, v83);
      v88 = sub_1000C4A84();
      v90 = v89;
      sub_100018F90(v87, &qword_1000FC430, &unk_1000C9B00);
      *(v84 + 56) = &type metadata for String;
      v211 = sub_100014FBC();
      *(v84 + 64) = v211;
      *(v84 + 32) = v88;
      *(v84 + 40) = v90;
      v91 = sub_1000C5554();
      v92 = v207;
      sub_1000C1A44("MessageEditingDictionary unpacking error: %{public}@", 52, 2, &_mh_execute_header, v207, v91, v84);

      v94 = v221;
      v93 = v222;
      (*(v73 + 104))(v222, enum case for TopLevelDictionary.CodingKeys.decryptedData(_:), v221);
      sub_1000C1964();
      (*(v73 + 8))(v93, v94);
      v86(v209, v220, v214);
      v95 = v187;
      sub_1000C4FA4();
      v96 = sub_1000C5774();
      v97 = swift_allocObject();
      *(v97 + 16) = v212;
      v98 = v218;
      v222 = *(v218 + 16);
      v99 = v215;
      v100 = v188;
      v222(v215, v95, v188);
      (*(v98 + 56))(v99, 0, 1, v100);
      v101 = sub_1000C4A84();
      v103 = v102;
      sub_100018F90(v99, &qword_1000FC438, &unk_1000C9DC0);
      v104 = v211;
      *(v97 + 56) = &type metadata for String;
      *(v97 + 64) = v104;
      *(v97 + 32) = v101;
      *(v97 + 40) = v103;
      v105 = sub_1000C5554();
      sub_1000C1A44("MessageEditingDictionary unpacking explosion: %{public}@", 56, 2, &_mh_execute_header, v96, v105, v97);

      sub_10006039C(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
      swift_allocError();
      v106 = v187;
      v222(v107, v187, v100);
      swift_willThrow();
      sub_100018CBC(v183, v184);

      sub_100018CD0(v182, v186);
      (*(v98 + 8))(v106, v100);
      (*(v213 + 8))(v220, v214);
      (*(v190 + 8))(v192, v191);
    }

    else
    {

      sub_100014F70();
      v141 = sub_1000C5774();
      sub_1000124CC(&qword_1000FC348, qword_1000C9550);
      v142 = swift_allocObject();
      *(v142 + 16) = xmmword_1000C94D0;
      *&v239 = v79;
      v143 = sub_1000C4A84();
      v145 = v144;
      *(v142 + 56) = &type metadata for String;
      *(v142 + 64) = sub_100014FBC();
      *(v142 + 32) = v143;
      *(v142 + 40) = v145;
      v146 = sub_1000C5554();
      sub_1000C1A44("MessageEditingDictionary unpacking unknown error: %{public}@", 60, 2, &_mh_execute_header, v141, v146, v142);

      swift_getErrorValue();
      swift_getDynamicType();
      *&v239 = 0;
      *(&v239 + 1) = 0xE000000000000000;
      sub_1000C5944(22);

      *&v239 = 0xD000000000000014;
      *(&v239 + 1) = 0x80000001000D5330;
      v244._countAndFlagsBits = sub_1000C5D34();
      sub_1000C52E4(v244);

      sub_10006039C(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
      swift_allocError();
      sub_1000C4FB4();
      swift_willThrow();
      sub_100018CBC(v183, v184);

      sub_100018CD0(v182, v186);

      (*(v190 + 8))(v192, v191);
    }
  }

  else
  {
    v189 = 0;
    v234 = v239;
    v235 = v240;
    v236 = v241;
    v237 = v242;
    v238 = v243;
    v118 = *(&v239 + 1);
    *&v212 = v239;
    v119 = sub_100014F70();

    v221 = v119;
    v120 = sub_1000C5774();
    v220 = sub_1000124CC(&qword_1000FC348, qword_1000C9550);
    v121 = swift_allocObject();
    v218 = xmmword_1000C94D0;
    *(v121 + 16) = xmmword_1000C94D0;
    v122 = v219;
    sub_1000C4EC4();
    v123 = sub_1000C1614();
    v124 = *(v123 - 8);
    v125 = *(v124 + 56);
    v214 = v124 + 56;
    v215 = v125;
    (v125)(v122, 0, 1, v123);
    v126 = sub_1000C4A84();
    v128 = v127;
    sub_100018F90(v122, &qword_1000FC520, &qword_1000C9D20);
    *(v121 + 56) = &type metadata for String;
    v213 = sub_100014FBC();
    *(v121 + 64) = v213;
    *(v121 + 32) = v126;
    *(v121 + 40) = v128;
    v129 = sub_1000C5554();
    sub_1000C1A44("Unpacking MessageEditingDictionary (editCommandGUID: %@)", 56, 2, &_mh_execute_header, v120, v129, v121);

    v222 = v118;
    if (!v118)
    {
      sub_100060438(&v234);
      v147 = sub_1000C5774();
      v148 = swift_allocObject();
      *(v148 + 16) = v218;
      v149 = v192;
      sub_1000C4EC4();
      (v215)(v122, 0, 1, v123);
      v150 = sub_1000C4A84();
      v152 = v151;
      sub_100018F90(v122, &qword_1000FC520, &qword_1000C9D20);
      v153 = v213;
      *(v148 + 56) = &type metadata for String;
      *(v148 + 64) = v153;
      *(v148 + 32) = v150;
      *(v148 + 40) = v152;
      v154 = sub_1000C5554();
      sub_1000C1A44("MessageEditingDictionary does not contain an edited message guid (editCommandGUID: %@)", 86, 2, &_mh_execute_header, v147, v154, v148);

      sub_10006048C();
      swift_allocError();
      swift_willThrow();
      sub_100018CBC(v183, v184);

      sub_100018CD0(v182, v186);
      (*(v190 + 8))(v149, v191);
      return;
    }

    v130 = *(v69 + 56);
    v131 = v211;
    v132 = v207;
    v130(v211, 1, 1, v207);
    v133 = v210;
    v130(v210, 1, 1, v132);
    v134 = v191;
    if (*(&v236 + 1))
    {
      v226 = v236;
      v227 = 0u;
      v228 = 0u;
      v229 = 0u;
      v230 = v236;
      v231 = 0u;
      v232 = 0u;
      v233 = 0u;

      sub_100060550(&v226, v223);
      sub_1000605AC(&v230);
      v224 = &type metadata for MessageEditedPartDictionary;
      v225 = &off_1000F5D70;
      v135 = swift_allocObject();
      v223[0] = v135;
      v136 = v227;
      v135[1] = v226;
      v135[2] = v136;
      v137 = v229;
      v135[3] = v228;
      v135[4] = v137;
      v138 = v205;
      v139 = v189;
      sub_1000B0354(v223, v205);
      v189 = v139;
      v140 = v192;
      if (v139)
      {
        sub_100018CBC(v183, v184);

        sub_100060438(&v234);
        sub_100018CD0(v182, v186);
        sub_100018F90(v133, &qword_1000FD338, &qword_1000CD898);
        sub_100018F90(v131, &qword_1000FD338, &qword_1000CD898);
        (*(v190 + 8))(v140, v191);
        return;
      }

      sub_100018F90(v131, &qword_1000FD338, &qword_1000CD898);
      v155 = v195;
      (*(v217 + 32))(v195, v138, v132);
      v130(v155, 0, 1, v132);
      sub_100060650(v155, v131);
      v134 = v191;
    }

    v156 = v238;

    sub_100060438(&v234);
    if (*(&v156 + 1))
    {
      v226 = v156;
      v227 = 0u;
      v228 = 0u;
      v229 = 0u;
      v230 = v156;
      v231 = 0u;
      v232 = 0u;
      v233 = 0u;
      sub_100060550(&v226, v223);
      sub_1000605AC(&v230);
      v224 = &type metadata for MessageEditedPartDictionary;
      v225 = &off_1000F5D70;
      v157 = swift_allocObject();
      v223[0] = v157;
      v158 = v227;
      v157[1] = v226;
      v157[2] = v158;
      v159 = v229;
      v157[3] = v228;
      v157[4] = v159;
      v160 = v203;
      v161 = v189;
      sub_1000B0354(v223, v203);
      v189 = v161;
      if (v161)
      {
        sub_100018CBC(v183, v184);

        sub_100018CD0(v182, v186);
        sub_100018F90(v133, &qword_1000FD338, &qword_1000CD898);
        sub_100018F90(v211, &qword_1000FD338, &qword_1000CD898);
        (*(v190 + 8))(v192, v134);
        return;
      }

      v162 = v134;
      sub_100018F90(v133, &qword_1000FD338, &qword_1000CD898);
      v163 = v194;
      v164 = v160;
      v165 = v207;
      (*(v217 + 32))(v194, v164, v207);
      v130(v163, 0, 1, v165);
      sub_100060650(v163, v133);
    }

    else
    {
      v162 = v134;
    }

    v166 = v190;
    LODWORD(v221) = BYTE9(v237);
    v220 = v235;
    LODWORD(v219) = BYTE8(v235);
    v167 = v202;
    v168 = v204;
    (*(v202 + 104))(v196, enum case for EditMessageCommand.MessageEditType.unspecified(_:), v204);
    v169 = v206;
    v170 = v168;
    sub_1000C3DB4();
    (*(v166 + 16))(v185, v192, v162);
    v171 = v201;
    (*(v167 + 16))(v201, v169, v168);
    v172 = v198;
    sub_1000604E0(v211, v198);
    v173 = v197;
    sub_1000604E0(v210, v197);
    v174 = sub_1000C3D24();
    (*(*(v174 - 8) + 56))(v200, 1, 1, v174);
    v175 = v189;
    sub_1000C3224();
    if (v175)
    {
      v189 = v175;
      sub_100018CBC(v183, v184);

      sub_100018CD0(v182, v186);
      sub_100018F90(v173, &qword_1000FD338, &qword_1000CD898);
      sub_100018F90(v172, &qword_1000FD338, &qword_1000CD898);
      v176 = *(v167 + 8);
      v176(v171, v170);
      v177 = v170;
      v178 = *(v166 + 8);
      v179 = v191;
      v178(v185, v191);
      v176(v206, v177);
      sub_100018F90(v210, &qword_1000FD338, &qword_1000CD898);
      sub_100018F90(v211, &qword_1000FD338, &qword_1000CD898);
      v178(v192, v179);
    }

    else
    {
      v180 = v206;
      sub_1000C3DD4();
      v181 = v182;
      sub_100018CBC(v183, v184);

      sub_100018CD0(v181, v186);
      (*(v167 + 8))(v180, v204);
      sub_100018F90(v210, &qword_1000FD338, &qword_1000CD898);
      sub_100018F90(v211, &qword_1000FD338, &qword_1000CD898);
      (*(v190 + 8))(v192, v191);
    }
  }
}

uint64_t sub_1000601D4@<X0>(uint64_t a3@<X8>)
{
  v5 = sub_1000C19B4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C1464();
  swift_allocObject();
  sub_1000C1454();
  sub_10006039C(&qword_1000FC428, &type metadata accessor for TopLevelDictionary, &protocol conformance descriptor for TopLevelDictionary);
  sub_1000C1444();

  if (!v3)
  {
    sub_10005E794(a3);
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

unint64_t sub_100060348()
{
  result = qword_1000FD340;
  if (!qword_1000FD340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD340);
  }

  return result;
}

uint64_t sub_10006039C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000603E4()
{
  result = qword_1000FD348;
  if (!qword_1000FD348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD348);
  }

  return result;
}

unint64_t sub_10006048C()
{
  result = qword_1000FD350;
  if (!qword_1000FD350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD350);
  }

  return result;
}

uint64_t sub_1000604E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000124CC(&qword_1000FD338, &qword_1000CD898);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100060600()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100060650(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000124CC(&qword_1000FD338, &qword_1000CD898);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_100060748@<X0>(uint64_t a3@<X8>)
{
  v27[1] = a3;
  v3 = sub_1000124CC(&qword_1000FC438, &unk_1000C9DC0);
  __chkstk_darwin(v3 - 8);
  v5 = v27 - v4;
  v6 = sub_1000C4FC4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000C15D4();
  __chkstk_darwin(v10 - 8);
  sub_100014F70();
  v11 = sub_1000C5804();
  v12 = sub_1000C5554();
  sub_1000C1A44("Entering Collaboration Clear Notice unpacker", 44, 2, &_mh_execute_header, v11, v12, _swiftEmptyArrayStorage);

  v13 = objc_opt_self();
  isa = sub_1000C1544().super.isa;
  v15 = [v13 initWithData:isa];

  if (v15)
  {
    [v15 version];
    result = [v15 guidString];
    if (result)
    {
      v17 = result;
      sub_1000C5224();

      [v15 dateAsTimeIntervalSince1970];
      sub_1000C15B4();
      result = [v15 collaborationId];
      if (result)
      {
        v18 = result;
        sub_1000C5224();

        sub_1000C4414();
        return swift_unknownObjectRelease();
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    sub_1000C4FB4();
    v19 = sub_1000C5804();
    sub_1000124CC(&qword_1000FC348, qword_1000C9550);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1000C94D0;
    v21 = v7;
    v28 = *(v7 + 16);
    v28(v5, v9, v6);
    (*(v7 + 56))(v5, 0, 1, v6);
    v22 = sub_1000C4A84();
    v24 = v23;
    sub_10002FA20(v5);
    *(v20 + 56) = &type metadata for String;
    *(v20 + 64) = sub_100014FBC();
    *(v20 + 32) = v22;
    *(v20 + 40) = v24;
    v25 = sub_1000C5554();
    sub_1000C1A44("CollaborationClearNotice unpacking explosion: %{public}@", 56, 2, &_mh_execute_header, v19, v25, v20);

    sub_100060BE4(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    v28(v26, v9, v6);
    swift_willThrow();
    return (*(v21 + 8))(v9, v6);
  }

  return result;
}

uint64_t sub_100060BE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100060C2C@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SMSDictionary(0) + 32));
  v4 = *v3;
  v5 = v3[1];
  v6 = *v3 == 7564659 && v5 == 0xE300000000000000;
  if (v6 || (sub_1000C5C04() & 1) != 0)
  {
    v7 = &enum case for SMSMessage.SMSType.sms(_:);
LABEL_7:
    v8 = *v7;
    v9 = sub_1000C1E44();
    return (*(*(v9 - 8) + 104))(a1, v8, v9);
  }

  v11 = v4 == 7564653 && v5 == 0xE300000000000000;
  if (v11 || (sub_1000C5C04() & 1) != 0)
  {
    v7 = &enum case for SMSMessage.SMSType.mms(_:);
    goto LABEL_7;
  }

  v12 = v4 == 0x6E776F6E6B6E75 && v5 == 0xE700000000000000;
  if (v12 || (sub_1000C5C04() & 1) != 0)
  {
    v7 = &enum case for SMSMessage.SMSType.unknown(_:);
    goto LABEL_7;
  }

  sub_1000C4FC4();
  sub_100063124(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
  swift_allocError();
  sub_1000C4FB4();
  return swift_willThrow();
}

uint64_t type metadata accessor for SMSDictionary(uint64_t a1)
{
  result = qword_1000FD3B8;
  if (!qword_1000FD3B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100060E80(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000124CC(&qword_1000FC5B0, &qword_1000C9EE0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[7] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_1000124CC(&qword_1000FC5A8, &qword_1000CEA40);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[10];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_100060FD8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1000124CC(&qword_1000FC5B0, &qword_1000C9EE0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7] + 8) = (a2 - 1);
  }

  else
  {
    v13 = sub_1000124CC(&qword_1000FC5A8, &qword_1000CEA40);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[10];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

void sub_10006111C(uint64_t a1)
{
  sub_10005425C(319, &qword_1000FD3C8, &type metadata for Int);
  if (v1 <= 0x3F)
  {
    sub_100061344(319, &qword_1000FD3D0, &type metadata accessor for SMSMessage.FilterSubCategoryType);
    if (v2 <= 0x3F)
    {
      sub_10005425C(319, &qword_1000FCD00, &type metadata for String);
      if (v3 <= 0x3F)
      {
        sub_100061398(319, &qword_1000FD3D8, &qword_1000FC378, &qword_1000CA860);
        if (v4 <= 0x3F)
        {
          sub_100061344(319, &qword_1000FD3E0, &type metadata accessor for Date);
          if (v5 <= 0x3F)
          {
            sub_100061398(319, &qword_1000FD3E8, &qword_1000FD3F0, qword_1000CD9E0);
            if (v6 <= 0x3F)
            {
              sub_10005425C(319, &qword_1000FCD08, &type metadata for Bool);
              if (v7 <= 0x3F)
              {
                sub_10005425C(319, &unk_1000FD3F8, &type metadata for UInt64);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_100061344(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000C5854();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100061398(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_10001308C(a3, a4);
    v5 = sub_1000C5854();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1000613EC(void *a1)
{
  v3 = v1;
  v5 = sub_1000124CC(&qword_1000FD4C0, &qword_1000CDA40);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_10001530C(a1, a1[3]);
  sub_100062FB0();
  sub_1000C5D04();
  LOBYTE(v12) = 0;
  sub_1000C5B24();
  if (!v2)
  {
    v9 = type metadata accessor for SMSDictionary(0);
    LOBYTE(v12) = 1;
    sub_1000C1E24();
    sub_100063124(&qword_1000FD4C8, &type metadata accessor for SMSMessage.FilterSubCategoryType, &protocol conformance descriptor for SMSMessage.FilterSubCategoryType);
    sub_1000C5B44();
    LOBYTE(v12) = 2;
    sub_1000C5AF4();
    LOBYTE(v12) = 3;
    sub_1000C5B84();
    LOBYTE(v12) = 4;
    sub_1000C5B84();
    v12 = *(v3 + *(v9 + 36));
    HIBYTE(v11) = 5;
    sub_1000124CC(&qword_1000FC378, &qword_1000CA860);
    sub_100015FB4(&qword_1000FC380, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    sub_1000C5B44();
    LOBYTE(v12) = 6;
    sub_1000C15D4();
    sub_100063124(&qword_1000FD4D0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    sub_1000C5B44();
    LOBYTE(v12) = 7;
    sub_1000C5AF4();
    LOBYTE(v12) = 8;
    sub_1000C5B24();
    LOBYTE(v12) = 9;
    sub_1000C5AF4();
    LOBYTE(v12) = 10;
    sub_1000C5AF4();
    LOBYTE(v12) = 11;
    sub_1000C5AF4();
    LOBYTE(v12) = 12;
    sub_1000C5AF4();
    LOBYTE(v12) = 13;
    sub_1000C5AF4();
    LOBYTE(v12) = 14;
    sub_1000C5AF4();
    LOBYTE(v12) = 15;
    sub_1000C5B24();
    LOBYTE(v12) = 16;
    sub_1000C5AF4();
    LOBYTE(v12) = 17;
    sub_1000C5AF4();
    LOBYTE(v12) = 18;
    sub_1000C5AF4();
    v12 = *(v3 + *(v9 + 92));
    HIBYTE(v11) = 19;
    sub_1000124CC(&qword_1000FD3F0, qword_1000CD9E0);
    sub_10006316C(&qword_1000FD4D8, sub_1000631E4, &protocol conformance descriptor for <A> [A]);
    sub_1000C5B44();
    LOBYTE(v12) = 20;
    sub_1000C5B04();
    LOBYTE(v12) = 21;
    sub_1000C5B04();
    LOBYTE(v12) = 22;
    sub_1000C5AF4();
    LOBYTE(v12) = 23;
    sub_1000C5B74();
    LOBYTE(v12) = 24;
    sub_1000C5AF4();
    LOBYTE(v12) = 25;
    sub_1000C5AF4();
    LOBYTE(v12) = 26;
    sub_1000C5AF4();
    LOBYTE(v12) = 27;
    sub_1000C5AF4();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_100061B78(void *a1@<X0>, uint64_t a2@<X8>)
{
  v137 = a2;
  v4 = sub_1000124CC(&qword_1000FC5A8, &qword_1000CEA40);
  __chkstk_darwin(v4 - 8);
  v6 = &v136 - v5;
  v7 = sub_1000124CC(&qword_1000FC5B0, &qword_1000C9EE0);
  __chkstk_darwin(v7 - 8);
  v9 = &v136 - v8;
  v139 = sub_1000124CC(&qword_1000FD490, &qword_1000CDA38);
  v138 = *(v139 - 8);
  __chkstk_darwin(v139);
  v11 = &v136 - v10;
  v12 = type metadata accessor for SMSDictionary(0);
  v13 = __chkstk_darwin(v12);
  v15 = (&v136 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v13 + 20);
  v17 = sub_1000C1E24();
  v18 = *(*(v17 - 8) + 56);
  v158 = v16;
  v18(v15 + v16, 1, 1, v17);
  v156 = v12;
  v19 = *(v12 + 40);
  v20 = sub_1000C15D4();
  v21 = *(*(v20 - 8) + 56);
  v157 = v15;
  v155 = v19;
  v21(v15 + v19, 1, 1, v20);
  v22 = a1[3];
  v148 = a1;
  sub_10001530C(a1, v22);
  sub_100062FB0();
  v140 = v11;
  sub_1000C5CF4();
  if (v2)
  {
    v159 = v2;
    v23 = 0;
    v24 = 0;
    v141 = 0;
    v142 = 0;
    v143 = 0;
    v144 = 0;
    v145 = 0;
    v146 = 0;
    v149 = 0;
    v150 = 0;
    v151 = 0;
    v152 = 0;
    v153 = 0;
    v154 = 0;
    v147 = 0;
    v25 = v157;
    v26 = v155;
    goto LABEL_15;
  }

  LOBYTE(v161) = 0;
  v27 = v139;
  v28 = sub_1000C5A34();
  v159 = 0;
  v26 = v155;
  v25 = v157;
  *v157 = v28;
  *(v25 + 8) = v29 & 1;
  LOBYTE(v161) = 1;
  sub_100063124(&qword_1000FD4A0, &type metadata accessor for SMSMessage.FilterSubCategoryType, &protocol conformance descriptor for SMSMessage.FilterSubCategoryType);
  v30 = v159;
  sub_1000C5A54();
  v159 = v30;
  if (v30)
  {
    (*(v138 + 8))(v140, v27);
    v23 = 0;
    v24 = 0;
    v141 = 0;
    v142 = 0;
    v143 = 0;
    v144 = 0;
    v145 = 0;
    v146 = 0;
    v149 = 0;
    v150 = 0;
    v151 = 0;
    v152 = 0;
    v153 = 0;
    v154 = 0;
    v147 = 0;
    goto LABEL_15;
  }

  sub_100063004(v9, v25 + v158, &qword_1000FC5B0, &qword_1000C9EE0);
  LOBYTE(v161) = 2;
  v31 = v159;
  v32 = sub_1000C5A04();
  v34 = v156;
  if (v31)
  {
    v159 = v31;
    (*(v138 + 8))(v140, v27);
    v23 = 0;
    v24 = 0;
    v141 = 0;
    v142 = 0;
    v143 = 0;
    v144 = 0;
    v145 = 0;
    v146 = 0;
    v149 = 0;
    v150 = 0;
    v151 = 0;
    v152 = 0;
    v153 = 0;
    v154 = 0;
    v147 = 0;
    goto LABEL_15;
  }

  v35 = (v25 + v156[6]);
  *v35 = v32;
  v35[1] = v33;
  v136 = v33;
  LOBYTE(v161) = 3;
  v36 = sub_1000C5A94();
  v37 = (v25 + v34[7]);
  *v37 = v36;
  v37[1] = v38;
  LOBYTE(v161) = 4;
  v39 = sub_1000C5A94();
  v159 = 0;
  v40 = (v25 + v34[8]);
  *v40 = v39;
  v40[1] = v41;
  sub_1000124CC(&qword_1000FC378, &qword_1000CA860);
  v160 = 5;
  sub_100015FB4(&qword_1000FC3A8, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  v42 = v159;
  sub_1000C5A54();
  v159 = v42;
  if (v42)
  {
    (*(v138 + 8))(v140, v27);
    v141 = 0;
    v142 = 0;
    v143 = 0;
    v144 = 0;
    v145 = 0;
    v146 = 0;
    v149 = 0;
    v150 = 0;
    v151 = 0;
    v152 = 0;
    v153 = 0;
    v154 = 0;
    v147 = 0;
LABEL_14:
    v23 = 1;
    v24 = 1;
    goto LABEL_15;
  }

  v43 = v34[9];
  v147 = v161;
  *(v25 + v43) = v161;
  LOBYTE(v161) = 6;
  sub_100063124(&qword_1000FD4A8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v44 = v159;
  sub_1000C5A54();
  v159 = v44;
  if (v44)
  {
    v45 = v138;
LABEL_13:
    (*(v45 + 8))(v140, v27);
    v141 = 0;
    v142 = 0;
    v143 = 0;
    v144 = 0;
    v145 = 0;
    v146 = 0;
    v149 = 0;
    v150 = 0;
    v151 = 0;
    v152 = 0;
    v153 = 0;
    v154 = 0;
    goto LABEL_14;
  }

  sub_100063004(v6, v25 + v26, &qword_1000FC5A8, &qword_1000CEA40);
  LOBYTE(v161) = 7;
  v46 = v159;
  v47 = sub_1000C5A04();
  v45 = v138;
  if (v46)
  {
    v159 = v46;
    goto LABEL_13;
  }

  v49 = (v25 + v34[11]);
  *v49 = v47;
  v49[1] = v48;
  v146 = v48;
  LOBYTE(v161) = 8;
  v50 = sub_1000C5A34();
  v159 = 0;
  v51 = v25 + v34[12];
  *v51 = v50;
  v51[8] = v52 & 1;
  LOBYTE(v161) = 9;
  v53 = v159;
  v54 = sub_1000C5A04();
  v154 = v55;
  v159 = v53;
  if (v53)
  {
    (*(v138 + 8))(v140, v139);
    v141 = 0;
    v142 = 0;
    v143 = 0;
    v144 = 0;
    v145 = 0;
    v149 = 0;
    v150 = 0;
    v151 = 0;
    v152 = 0;
    v153 = 0;
    v154 = 0;
  }

  else
  {
    v56 = (v157 + v156[13]);
    v57 = v154;
    *v56 = v54;
    v56[1] = v57;
    LOBYTE(v161) = 10;
    v58 = v159;
    v59 = sub_1000C5A04();
    v153 = v60;
    v159 = v58;
    if (v58)
    {
      (*(v138 + 8))(v140, v139);
      v141 = 0;
      v142 = 0;
      v143 = 0;
      v144 = 0;
      v145 = 0;
      v149 = 0;
      v150 = 0;
      v151 = 0;
      v152 = 0;
      v153 = 0;
    }

    else
    {
      v61 = (v157 + v156[14]);
      v62 = v153;
      *v61 = v59;
      v61[1] = v62;
      LOBYTE(v161) = 11;
      v63 = v159;
      v64 = sub_1000C5A04();
      v152 = v65;
      v159 = v63;
      if (v63)
      {
        (*(v138 + 8))(v140, v139);
        v141 = 0;
        v142 = 0;
        v143 = 0;
        v144 = 0;
        v145 = 0;
        v149 = 0;
        v150 = 0;
        v151 = 0;
        v152 = 0;
      }

      else
      {
        v66 = (v157 + v156[15]);
        v67 = v152;
        *v66 = v64;
        v66[1] = v67;
        LOBYTE(v161) = 12;
        v68 = v159;
        v69 = sub_1000C5A04();
        v151 = v70;
        v159 = v68;
        if (v68)
        {
          (*(v138 + 8))(v140, v139);
          v141 = 0;
          v142 = 0;
          v143 = 0;
          v144 = 0;
          v145 = 0;
          v149 = 0;
          v150 = 0;
          v151 = 0;
        }

        else
        {
          v71 = (v157 + v156[16]);
          v72 = v151;
          *v71 = v69;
          v71[1] = v72;
          LOBYTE(v161) = 13;
          v73 = v159;
          v74 = sub_1000C5A04();
          v150 = v75;
          v159 = v73;
          if (v73)
          {
            (*(v138 + 8))(v140, v139);
            v141 = 0;
            v142 = 0;
            v143 = 0;
            v144 = 0;
            v145 = 0;
            v149 = 0;
            v150 = 0;
          }

          else
          {
            v76 = (v157 + v156[17]);
            v77 = v150;
            *v76 = v74;
            v76[1] = v77;
            LOBYTE(v161) = 14;
            v78 = v159;
            v79 = sub_1000C5A04();
            v149 = v80;
            v159 = v78;
            if (v78)
            {
              (*(v138 + 8))(v140, v139);
              v141 = 0;
              v142 = 0;
              v143 = 0;
              v144 = 0;
              v145 = 0;
              v149 = 0;
            }

            else
            {
              v81 = (v157 + v156[18]);
              v82 = v149;
              *v81 = v79;
              v81[1] = v82;
              LOBYTE(v161) = 15;
              v83 = v159;
              v84 = sub_1000C5A34();
              v159 = v83;
              if (v83 || (v86 = v157 + v156[19], *v86 = v84, v86[8] = v85 & 1, LOBYTE(v161) = 16, v87 = v159, v88 = sub_1000C5A04(), v145 = v89, (v159 = v87) != 0))
              {
                (*(v138 + 8))(v140, v139);
                v141 = 0;
                v142 = 0;
                v143 = 0;
                v144 = 0;
                v145 = 0;
              }

              else
              {
                v90 = (v157 + v156[20]);
                v91 = v145;
                *v90 = v88;
                v90[1] = v91;
                LOBYTE(v161) = 17;
                v92 = v159;
                v93 = sub_1000C5A04();
                v144 = v94;
                v159 = v92;
                if (v92)
                {
                  (*(v138 + 8))(v140, v139);
                  v141 = 0;
                  v142 = 0;
                  v143 = 0;
                  v144 = 0;
                }

                else
                {
                  v95 = (v157 + v156[21]);
                  v96 = v144;
                  *v95 = v93;
                  v95[1] = v96;
                  LOBYTE(v161) = 18;
                  v97 = v159;
                  v98 = sub_1000C5A04();
                  v143 = v99;
                  v159 = v97;
                  if (v97)
                  {
                    (*(v138 + 8))(v140, v139);
                    v141 = 0;
                    v142 = 0;
                    v143 = 0;
                  }

                  else
                  {
                    v100 = (v157 + v156[22]);
                    v101 = v143;
                    *v100 = v98;
                    v100[1] = v101;
                    sub_1000124CC(&qword_1000FD3F0, qword_1000CD9E0);
                    v160 = 19;
                    sub_10006316C(&qword_1000FD4B0, sub_10006306C, &protocol conformance descriptor for <A> [A]);
                    v102 = v159;
                    sub_1000C5A54();
                    v159 = v102;
                    if (v102)
                    {
                      (*(v138 + 8))(v140, v139);
                      v141 = 0;
                      v142 = 0;
                    }

                    else
                    {
                      v103 = v156[23];
                      v142 = v161;
                      *(v157 + v103) = v161;
                      LOBYTE(v161) = 20;
                      v104 = v159;
                      v105 = sub_1000C5A14();
                      v159 = v104;
                      if (v104 || (*(v157 + v156[24]) = v105, LOBYTE(v161) = 21, v106 = v159, v107 = sub_1000C5A14(), (v159 = v106) != 0) || (*(v157 + v156[25]) = v107, LOBYTE(v161) = 22, v108 = v159, v109 = sub_1000C5A04(), v141 = v110, (v159 = v108) != 0))
                      {
                        (*(v138 + 8))(v140, v139);
                        v141 = 0;
                      }

                      else
                      {
                        v111 = (v157 + v156[26]);
                        v112 = v141;
                        *v111 = v109;
                        v111[1] = v112;
                        LOBYTE(v161) = 23;
                        v113 = v159;
                        v114 = sub_1000C5A84();
                        v159 = v113;
                        if (!v113)
                        {
                          v116 = v157 + v156[27];
                          *v116 = v114;
                          v116[8] = v115 & 1;
                          LOBYTE(v161) = 24;
                          v117 = v159;
                          v118 = sub_1000C5A04();
                          v159 = v117;
                          if (!v117)
                          {
                            v120 = (v157 + v156[28]);
                            *v120 = v118;
                            v120[1] = v119;
                            LOBYTE(v161) = 25;
                            v121 = v159;
                            v122 = sub_1000C5A04();
                            v159 = v121;
                            if (!v121)
                            {
                              v124 = (v157 + v156[29]);
                              *v124 = v122;
                              v124[1] = v123;
                              LOBYTE(v161) = 26;
                              v125 = v159;
                              v126 = sub_1000C5A04();
                              v159 = v125;
                              if (!v125)
                              {
                                v128 = (v157 + v156[30]);
                                *v128 = v126;
                                v128[1] = v127;
                                LOBYTE(v161) = 27;
                                v129 = v159;
                                v130 = sub_1000C5A04();
                                v159 = v129;
                                if (!v129)
                                {
                                  v132 = v130;
                                  v133 = v131;
                                  v134 = v157;
                                  v135 = (v157 + v156[31]);
                                  (*(v138 + 8))(v140, v139);
                                  *v135 = v132;
                                  v135[1] = v133;
                                  sub_1000630C0(v134, v137);
                                  sub_100015F68(v148);
                                  sub_100022D10(v134);
                                  return;
                                }
                              }
                            }
                          }
                        }

                        (*(v138 + 8))(v140, v139);
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v23 = 1;
  v24 = 1;
  v25 = v157;
  v26 = v155;
LABEL_15:
  sub_100015F68(v148);
  sub_100018F90(v25 + v158, &qword_1000FC5B0, &qword_1000C9EE0);

  if (v23)
  {
  }

  if (v24)
  {
  }

  sub_100018F90(v25 + v26, &qword_1000FC5A8, &qword_1000CEA40);
}

uint64_t sub_100062D88(char a1)
{
  result = 6517599;
  switch(a1)
  {
    case 1:
      result = 1668510559;
      break;
    case 2:
      result = 29283;
      break;
    case 3:
      result = 22131;
      break;
    case 4:
      result = 109;
      break;
    case 5:
      result = 25970;
      break;
    case 6:
      result = 119;
      break;
    case 7:
      result = 104;
      break;
    case 8:
      result = 25449;
      break;
    case 9:
      result = 99;
      break;
    case 10:
      result = 28515;
      break;
    case 11:
      result = 25955;
      break;
    case 12:
      result = 29539;
      break;
    case 13:
      result = 97;
      break;
    case 14:
      result = 98;
      break;
    case 15:
      result = 108;
      break;
    case 16:
      result = 110;
      break;
    case 17:
      result = 103;
      break;
    case 18:
      result = 26726;
      break;
    case 19:
      result = 107;
      break;
    case 20:
      result = 25453;
      break;
    case 21:
      result = 114;
      break;
    case 22:
      result = 7234918;
      break;
    case 23:
      result = 7299942;
      break;
    case 24:
      result = 1145664868;
      break;
    case 25:
      result = 7234659;
      break;
    case 26:
      result = 6907747;
      break;
    case 27:
      result = 1768383343;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_100062FB0()
{
  result = qword_1000FD498;
  if (!qword_1000FD498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD498);
  }

  return result;
}

uint64_t sub_100063004(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000124CC(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_10006306C()
{
  result = qword_1000FD4B8;
  if (!qword_1000FD4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD4B8);
  }

  return result;
}

uint64_t sub_1000630C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SMSDictionary(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100063124(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10006316C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_10001308C(&qword_1000FD3F0, qword_1000CD9E0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000631E4()
{
  result = qword_1000FD4E0;
  if (!qword_1000FD4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD4E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SMSDictionary.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE5)
  {
    goto LABEL_17;
  }

  if (a2 + 27 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 27) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 27;
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

      return (*a1 | (v4 << 8)) - 27;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 27;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1C;
  v8 = v6 - 28;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SMSDictionary.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 27 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 27) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE5)
  {
    v4 = 0;
  }

  if (a2 > 0xE4)
  {
    v5 = ((a2 - 229) >> 8) + 1;
    *result = a2 + 27;
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
    *result = a2 + 27;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100063388(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_100062D88(*a1);
  v5 = v4;
  if (v3 == sub_100062D88(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000C5C04();
  }

  return v8 & 1;
}

Swift::Int sub_100063410()
{
  v1 = *v0;
  sub_1000C5CB4();
  sub_100062D88(v1);
  sub_1000C52C4();

  return sub_1000C5CD4();
}

double sub_100063474(uint64_t a1)
{
  sub_100062D88(*v1);
  sub_1000C52C4();

  return result;
}

Swift::Int sub_1000634C8()
{
  v1 = *v0;
  sub_1000C5CB4();
  sub_100062D88(v1);
  sub_1000C52C4();

  return sub_1000C5CD4();
}

unint64_t sub_100063528@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100063740(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_100063558@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100062D88(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10006358C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100063740(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000635C0(uint64_t a1)
{
  v2 = sub_100062FB0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000635FC(uint64_t a1)
{
  v2 = sub_100062FB0();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10006363C()
{
  result = qword_1000FD4E8;
  if (!qword_1000FD4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD4E8);
  }

  return result;
}

unint64_t sub_100063694()
{
  result = qword_1000FD4F0;
  if (!qword_1000FD4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD4F0);
  }

  return result;
}

unint64_t sub_1000636EC()
{
  result = qword_1000FD4F8;
  if (!qword_1000FD4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD4F8);
  }

  return result;
}

unint64_t sub_100063740(uint64_t a1, uint64_t a2)
{
  v2 = sub_1000C5C34();

  if (v2 >= 0x1C)
  {
    return 28;
  }

  else
  {
    return v2;
  }
}

id sub_1000637EC@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, uint64_t a3@<X8>)
{
  v157 = a1;
  v146 = a3;
  v3 = sub_1000C15D4();
  __chkstk_darwin(v3 - 8);
  v5 = v127 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_1000C3B74();
  v132 = *(v133 - 8);
  v6 = __chkstk_darwin(v133);
  v131 = v127 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v134 = v127 - v8;
  v139 = sub_1000C34A4();
  v138 = *(v139 - 8);
  v9 = __chkstk_darwin(v139);
  v137 = v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v140 = v127 - v11;
  v12 = sub_1000124CC(&qword_1000FD508, &qword_1000CDC00);
  v13 = __chkstk_darwin(v12 - 8);
  v143 = v127 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = v127 - v16;
  __chkstk_darwin(v15);
  v144 = v127 - v18;
  v19 = sub_1000C14E4();
  v20 = __chkstk_darwin(v19 - 8);
  v130 = v127 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v136 = v127 - v23;
  v24 = __chkstk_darwin(v22);
  v142 = v127 - v25;
  __chkstk_darwin(v24);
  v152 = v127 - v26;
  v27 = sub_1000C2034();
  v149 = *(v27 - 8);
  v150 = v27;
  v28 = __chkstk_darwin(v27);
  v148 = v127 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v151 = v127 - v30;
  v153 = sub_1000C46A4();
  v155 = *(v153 - 8);
  v31 = __chkstk_darwin(v153);
  v145 = v127 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v129 = v127 - v34;
  v35 = __chkstk_darwin(v33);
  v135 = v127 - v36;
  v37 = __chkstk_darwin(v35);
  v141 = v127 - v38;
  v39 = __chkstk_darwin(v37);
  v147 = v127 - v40;
  __chkstk_darwin(v39);
  v154 = v127 - v41;
  v42 = sub_1000124CC(&qword_1000FC438, &unk_1000C9DC0);
  __chkstk_darwin(v42 - 8);
  v44 = v127 - v43;
  v45 = sub_1000C4FC4();
  v46 = *(v45 - 8);
  __chkstk_darwin(v45);
  v48 = v127 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001D1A8(0, &qword_1000FC340, OS_os_log_ptr);
  v49 = sub_1000C57A4();
  v50 = sub_1000C5554();
  sub_1000C1A44("Entering Collaboration Notice unpacker", 38, 2, &_mh_execute_header, v49, v50, _swiftEmptyArrayStorage);

  v51 = objc_allocWithZone(SWCollaborationNoticeTransmissionMessage);
  isa = sub_1000C1544().super.isa;
  v53 = [v51 initWithData:isa];

  if (!v53)
  {
    sub_1000C4FB4();
    v69 = sub_1000C57A4();
    sub_1000124CC(&qword_1000FC348, qword_1000C9550);
    v70 = swift_allocObject();
    *(v70 + 16) = xmmword_1000C94D0;
    v157 = *(v46 + 16);
    v157(v44, v48, v45);
    (*(v46 + 56))(v44, 0, 1, v45);
    v71 = sub_1000C4A84();
    v73 = v72;
    sub_100018F90(v44, &qword_1000FC438, &unk_1000C9DC0);
    *(v70 + 56) = &type metadata for String;
    *(v70 + 64) = sub_100014FBC();
    *(v70 + 32) = v71;
    *(v70 + 40) = v73;
    v74 = sub_1000C5554();
    sub_1000C1A44("CollaborationNotice unpacking explosion: %{public}@", 51, 2, &_mh_execute_header, v69, v74, v70);

    sub_100064C4C(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    v157(v75, v48, v45);
    swift_willThrow();
    return (*(v46 + 8))(v48, v45);
  }

  v128 = v17;
  v54 = v48;
  v55 = collaboratonNoticeEventTypeKnown([v53 highlightChangeEventType]);
  v157 = v53;
  if (!v55)
  {
    goto LABEL_9;
  }

  v127[1] = v5;
  result = [v53 highlightChangeEvent];
  if (!result)
  {
    __break(1u);
    goto LABEL_36;
  }

  v57 = result;
  v58 = sub_1000C1564();
  v60 = v59;

  v61 = sub_1000C1544().super.isa;
  sub_100018CD0(v58, v60);
  v62 = unarchiveCollaborationNoticeEvent(v61);

  if (!v62)
  {
LABEL_9:
    sub_1000C4FB4();
    v76 = sub_1000C57A4();
    sub_1000124CC(&qword_1000FC348, qword_1000C9550);
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_1000C94D0;
    v156 = *(v46 + 16);
    v156(v44, v54, v45);
    (*(v46 + 56))(v44, 0, 1, v45);
    v78 = sub_1000C4A84();
    v80 = v79;
    sub_100018F90(v44, &qword_1000FC438, &unk_1000C9DC0);
    *(v77 + 56) = &type metadata for String;
    *(v77 + 64) = sub_100014FBC();
    *(v77 + 32) = v78;
    *(v77 + 40) = v80;
    v81 = sub_1000C5554();
    sub_1000C1A44("CollaborationNotice unpacking explosion: %{public}@", 51, 2, &_mh_execute_header, v76, v81, v77);

    sub_100064C4C(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    v156(v82, v54, v45);
    swift_willThrow();

    return (*(v46 + 8))(v54, v45);
  }

  sub_1000C58C4();
  swift_unknownObjectRelease();
  sub_10001D8C8(&v159, &v160);
  sub_10001D804(&v160, &v159);
  sub_10001D1A8(0, &qword_1000FD510, SWHighlightChangeEvent_ptr);
  if (swift_dynamicCast())
  {
    v63 = v161;
    [v161 changeEventTrigger];
    (*(v149 + 104))(v148, enum case for ChangeEvent.Trigger.invalid(_:), v150);
    sub_1000C2024();
    v64 = [v63 highlightURL];
    sub_1000C14A4();

    v65 = v147;
    v66 = v156;
    sub_1000C2014();
    v67 = v155;
    if (v66)
    {
      sub_100015F68(&v160);

      v68 = &v159;
      return sub_100015F68(v68);
    }

    v105 = v153;
    (*(v67 + 104))(v65, enum case for CollaborationHighlightEvent.change(_:), v153);
    (*(v67 + 32))(v154, v65, v105);
    v99 = v157;
    goto LABEL_31;
  }

  sub_10001D1A8(0, &qword_1000FD518, SWHighlightMentionEvent_ptr);
  v83 = swift_dynamicCast();
  v67 = v155;
  v84 = v156;
  if (v83)
  {
    v85 = v161;
    v86 = sub_1000C46C4();
    v87 = *(v86 - 8);
    v88 = *(v87 + 56);
    v89 = v144;
    v149 = v87 + 56;
    v88(v144, 1, 1, v86);
    v90 = [v85 __bdSWMentionedPersonIdentity];
    if (v90)
    {
      v91 = v90;
      v152 = v85;
      v92 = [v90 rootHash];
      v93 = sub_1000C1564();
      v150 = v94;
      v151 = v93;

      v95 = [v91 publicKeys];
      sub_1000C53A4();

      v96 = [v91 trackingPreventionSalt];
      if (v96)
      {
        v97 = v96;
        sub_1000C1564();
      }

      v110 = v128;
      v111 = v156;
      sub_1000C46B4();
      v84 = v111;
      if (v111)
      {

        v112 = sub_1000C57A4();
        sub_1000124CC(&qword_1000FC348, qword_1000C9550);
        v113 = swift_allocObject();
        *(v113 + 16) = xmmword_1000C94D0;
        v158 = v111;
        sub_1000124CC(&qword_1000FC350, &unk_1000CA170);
        v114 = sub_1000C4A84();
        v116 = v115;
        *(v113 + 56) = &type metadata for String;
        *(v113 + 64) = sub_100014FBC();
        *(v113 + 32) = v114;
        *(v113 + 40) = v116;
        v117 = sub_1000C5554();
        sub_1000C1A44("CollaborationNotice unpacker caught exception while unpacking a mention event and initializing a CollaborationMemberIdentity. Error: %{public}@", 143, 2, &_mh_execute_header, v112, v117, v113);

        v84 = 0;
        v99 = v157;
        v89 = v144;
      }

      else
      {
        v89 = v144;
        sub_100018F90(v144, &qword_1000FD508, &qword_1000CDC00);

        v88(v110, 0, 1, v86);
        sub_100064D04(v110, v89);
        v99 = v157;
      }

      v85 = v152;
    }

    else
    {
      v99 = v157;
    }

    v118 = [v85 mentionedPersonHandle];
    sub_1000C5224();

    sub_100064C94(v89, v143);
    v119 = [v85 highlightURL];
    sub_1000C14A4();

    v120 = v141;
    sub_1000C2344();
    if (v84)
    {

      sub_100018F90(v89, &qword_1000FD508, &qword_1000CDC00);
      sub_100015F68(&v160);
      v68 = &v159;
      return sub_100015F68(v68);
    }

    sub_100018F90(v89, &qword_1000FD508, &qword_1000CDC00);

    v67 = v155;
    v121 = v153;
    (*(v155 + 104))(v120, enum case for CollaborationHighlightEvent.mention(_:), v153);
    (*(v67 + 32))(v154, v120, v121);
    goto LABEL_31;
  }

  sub_10001D1A8(0, &qword_1000FD520, SWHighlightMembershipEvent_ptr);
  v98 = swift_dynamicCast();
  v99 = v157;
  if (v98)
  {
    v100 = v161;
    [v161 membershipEventTrigger];
    (*(v138 + 104))(v137, enum case for MembershipEvent.Trigger.invalid(_:), v139);
    sub_1000C3494();
    v101 = [v100 highlightURL];
    sub_1000C14A4();

    v102 = v135;
    sub_1000C3484();
    v103 = v154;
    if (!v84)
    {

      v104 = v153;
      (*(v67 + 104))(v102, enum case for CollaborationHighlightEvent.membership(_:), v153);
      (*(v67 + 32))(v103, v102, v104);
      goto LABEL_31;
    }

LABEL_20:
    sub_100015F68(&v160);

    v68 = &v159;
    return sub_100015F68(v68);
  }

  sub_10001D1A8(0, &qword_1000FD528, SWHighlightPersistenceEvent_ptr);
  v106 = swift_dynamicCast();
  v107 = v154;
  if (v106)
  {
    v100 = v161;
    [v161 persistenceEventTrigger];
    (*(v132 + 104))(v131, enum case for PersistenceEvent.Trigger.invalid(_:), v133);
    sub_1000C3B64();
    v108 = [v100 highlightURL];
    sub_1000C14A4();

    v109 = v129;
    sub_1000C3B54();
    if (v84)
    {
      goto LABEL_20;
    }

    v126 = v153;
    (*(v67 + 104))(v109, enum case for CollaborationHighlightEvent.persistence(_:), v153);
    (*(v67 + 32))(v107, v109, v126);
  }

  else
  {
    (*(v67 + 104))(v154, enum case for CollaborationHighlightEvent.invalid(_:), v153);
  }

LABEL_31:
  sub_100015F68(&v159);
  v122 = [v99 version];
  result = [v99 guidString];
  if (result)
  {
    v123 = result;
    v156 = v122;
    sub_1000C5224();

    v124 = v153;
    v125 = v154;
    (*(v67 + 16))(v145, v154, v153);
    [v99 dateAsTimeIntervalSince1970];
    sub_1000C15B4();
    sub_1000C3F54();

    (*(v67 + 8))(v125, v124);
    v68 = &v160;
    return sub_100015F68(v68);
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_100064C4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100064C94(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000124CC(&qword_1000FD508, &qword_1000CDC00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100064D04(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000124CC(&qword_1000FD508, &qword_1000CDC00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100064DCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a3;
  v6 = sub_1000124CC(&qword_1000FD538, &qword_1000CDC68);
  __chkstk_darwin(v6 - 8);
  v8 = &v23[-v7];
  v9 = sub_1000124CC(&qword_1000FC460, &qword_1000C9D30);
  __chkstk_darwin(v9 - 8);
  v11 = &v23[-v10];
  v12 = sub_1000C4D84();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v23[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_1000C4CC4();
  v29 = v16;
  v30 = &protocol witness table for File;
  v17 = sub_10002E5DC(v28);
  (*(*(v16 - 8) + 16))(v17, a1, v16);
  v18 = sub_1000C4D54();
  (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
  sub_1000C4D64();
  sub_1000C4D74();
  sub_10001530C(v28, v29);
  v27 = a2;
  v24 = sub_10006560C;
  v25 = &v26;
  v19 = sub_1000C4104();
  sub_1000C2834();
  if (v3)
  {
    (*(v13 + 8))(v15, v12);
  }

  else
  {
    v20 = v31;
    v21 = *(v19 - 8);
    if ((*(v21 + 48))(v8, 1, v19) == 1)
    {
      sub_100018F90(v8, &qword_1000FD538, &qword_1000CDC68);
      sub_100015F68(v28);
      sub_1000C4FC4();
      sub_100065644(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
      swift_allocError();
      sub_1000C4FB4();
      swift_willThrow();
      return (*(v13 + 8))(v15, v12);
    }

    (*(v13 + 8))(v15, v12);
    (*(v21 + 32))(v20, v8, v19);
  }

  return sub_100015F68(v28);
}

void sub_100065210(CGImageSource *a1@<X0>, uint64_t a2@<X8>)
{
  v13[3] = a2;
  v4 = sub_1000C3454();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000C5574();
  if (v9 && (v10 = v8, v11 = v9, (sub_10009B58C(v8, v9) & 1) != 0))
  {
    sub_1000C5594();
    sub_1000C3444();
    (*(v5 + 8))(v7, v4);
    v12 = sub_1000C40E4();
    sub_100065CBC(a1, v10, v11, v12);
    if (v2)
    {
    }

    else
    {
      sub_1000C40F4();
    }
  }

  else
  {
    sub_1000C4FC4();
    sub_100065644(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    swift_willThrow();
  }
}

uint64_t sub_1000654D0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1000C4104();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = a2(a1);
  if (!v3)
  {
    (*(v8 + 32))(a3, v10, v7);
    return (*(v8 + 56))(a3, 0, 1, v7);
  }

  return result;
}

uint64_t sub_100065644(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10006568C(void *a1)
{
  if (a1)
  {
    v1 = a1;
    if ([v1 __swift_objectForKeyedSubscript:kCGImagePropertyGIFDictionary])
    {
      sub_1000C58C4();
      swift_unknownObjectRelease();
    }

    else
    {
      v3 = 0u;
      v8 = 0u;
    }

    v13 = v3;
    v14 = v8;
    if (*(&v8 + 1))
    {
      sub_100065F90();
      if (swift_dynamicCast())
      {
        v2 = v15;
        if ([v15 __swift_objectForKeyedSubscript:kCGImagePropertyGIFUnclampedDelayTime])
        {
          sub_1000C58C4();
          swift_unknownObjectRelease();
        }

        else
        {
          v3 = 0u;
          v8 = 0u;
        }

        v13 = v3;
        v14 = v8;
        if (*(&v8 + 1))
        {
          if (swift_dynamicCast())
          {

            return;
          }
        }

        else
        {
          sub_100018F90(&v13, &qword_1000FC828, &qword_1000CF790);
        }

        if (![v2 __swift_objectForKeyedSubscript:{kCGImagePropertyGIFDelayTime, v3, v8, v13, v14}])
        {
          goto LABEL_62;
        }

LABEL_55:
        sub_1000C58C4();

        swift_unknownObjectRelease();
        goto LABEL_63;
      }
    }

    else
    {
      sub_100018F90(&v13, &qword_1000FC828, &qword_1000CF790);
    }

    if ([v1 __swift_objectForKeyedSubscript:{kCGImagePropertyPNGDictionary, v3, v8, v13, v14}])
    {
      sub_1000C58C4();
      swift_unknownObjectRelease();
    }

    else
    {
      v4 = 0u;
      v9 = 0u;
    }

    v13 = v4;
    v14 = v9;
    if (*(&v9 + 1))
    {
      sub_100065F90();
      if (swift_dynamicCast())
      {
        v2 = v15;
        if ([v15 __swift_objectForKeyedSubscript:kCGImagePropertyAPNGUnclampedDelayTime])
        {
          sub_1000C58C4();
          swift_unknownObjectRelease();
        }

        else
        {
          v4 = 0u;
          v9 = 0u;
        }

        v13 = v4;
        v14 = v9;
        if (*(&v9 + 1))
        {
          if (swift_dynamicCast())
          {
            goto LABEL_59;
          }
        }

        else
        {
          sub_100018F90(&v13, &qword_1000FC828, &qword_1000CF790);
        }

        if ([v2 __swift_objectForKeyedSubscript:{kCGImagePropertyAPNGDelayTime, v4, v9, v13, v14}])
        {
          goto LABEL_55;
        }

        goto LABEL_62;
      }
    }

    else
    {
      sub_100018F90(&v13, &qword_1000FC828, &qword_1000CF790);
    }

    if ([v1 __swift_objectForKeyedSubscript:{kCGImagePropertyHEICSDictionary, v4, v9, v13, v14}])
    {
      sub_1000C58C4();
      swift_unknownObjectRelease();
    }

    else
    {
      v5 = 0u;
      v10 = 0u;
    }

    v13 = v5;
    v14 = v10;
    if (*(&v10 + 1))
    {
      sub_100065F90();
      if (swift_dynamicCast())
      {
        v2 = v15;
        if ([v15 __swift_objectForKeyedSubscript:kCGImagePropertyHEICSUnclampedDelayTime])
        {
          sub_1000C58C4();
          swift_unknownObjectRelease();
        }

        else
        {
          v5 = 0u;
          v10 = 0u;
        }

        v13 = v5;
        v14 = v10;
        if (*(&v10 + 1))
        {
          if (swift_dynamicCast())
          {
            goto LABEL_59;
          }
        }

        else
        {
          sub_100018F90(&v13, &qword_1000FC828, &qword_1000CF790);
        }

        if ([v2 __swift_objectForKeyedSubscript:{kCGImagePropertyHEICSDelayTime, v5, v10, v13, v14}])
        {
          goto LABEL_55;
        }

        goto LABEL_62;
      }
    }

    else
    {
      sub_100018F90(&v13, &qword_1000FC828, &qword_1000CF790);
    }

    if ([v1 __swift_objectForKeyedSubscript:{kCGImagePropertyWebPDictionary, v5, v10, v13, v14}])
    {
      sub_1000C58C4();
      swift_unknownObjectRelease();
    }

    else
    {
      v6 = 0u;
      v11 = 0u;
    }

    v13 = v6;
    v14 = v11;
    if (!*(&v11 + 1))
    {

LABEL_65:
      sub_100018F90(&v13, &qword_1000FC828, &qword_1000CF790);
      return;
    }

    sub_100065F90();
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    v2 = v15;
    if ([v15 __swift_objectForKeyedSubscript:kCGImagePropertyWebPUnclampedDelayTime])
    {
      sub_1000C58C4();
      swift_unknownObjectRelease();
    }

    else
    {
      v6 = 0u;
      v11 = 0u;
    }

    v13 = v6;
    v14 = v11;
    if (*(&v11 + 1))
    {
      if (swift_dynamicCast())
      {
LABEL_59:

        return;
      }
    }

    else
    {
      sub_100018F90(&v13, &qword_1000FC828, &qword_1000CF790);
    }

    if ([v2 __swift_objectForKeyedSubscript:{kCGImagePropertyWebPDelayTime, v6, v11, v13, v14}])
    {
      goto LABEL_55;
    }

LABEL_62:

    v7 = 0u;
    v12 = 0u;
LABEL_63:
    v13 = v7;
    v14 = v12;
    if (*(&v12 + 1))
    {
      swift_dynamicCast();
      return;
    }

    goto LABEL_65;
  }
}

char *sub_100065CBC(CGImageSource *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a1;
  v11 = sub_1000C5564();
  if (a2 == 0x682E63696C627570 && a3 == 0xEB00000000636965 || (sub_1000C5C04() & 1) != 0)
  {
    if (v11 >= a4)
    {
      v11 = a4;
    }

    if ((v11 & 0x8000000000000000) == 0)
    {
      if (!v11)
      {
        return _swiftEmptyArrayStorage;
      }

      v10 = sub_100045204(0, 1, 1, _swiftEmptyArrayStorage);
      v12 = *(v10 + 2);
      do
      {
        v13 = *(v10 + 3);
        if (v12 >= v13 >> 1)
        {
          v10 = sub_100045204((v13 > 1), v12 + 1, 1, v10);
        }

        *(v10 + 2) = v12 + 1;
        *&v10[8 * v12++ + 32] = 0x3FB1111111111111;
        --v11;
      }

      while (v11);
      return v10;
    }

    __break(1u);
    goto LABEL_37;
  }

  v14 = 1.0;
  if (v11 > a4)
  {
    v14 = v11 / a4;
  }

  if (v11 < 0)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    v10 = sub_100045204(0, *(v10 + 2) + 1, 1, v10);
LABEL_31:
    v24 = *(v10 + 2);
    v23 = *(v10 + 3);
    if (v24 >= v23 >> 1)
    {
      v10 = sub_100045204((v23 > 1), v24 + 1, 1, v10);
    }

    *(v10 + 2) = v24 + 1;
    *&v10[8 * v24 + 32] = v5;
    return v10;
  }

  if (!v11)
  {
    v10 = _swiftEmptyArrayStorage;
    v5 = 0.0;
LABEL_30:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_31;
    }

    goto LABEL_38;
  }

  v15 = 0;
  v10 = _swiftEmptyArrayStorage;
  v5 = 0.0;
  v16 = 0.0;
  while (1)
  {
    v17 = v14 + v16;
    if (v14 + v16 <= v15)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_100045204(0, *(v10 + 2) + 1, 1, v10);
      }

      v19 = *(v10 + 2);
      v18 = *(v10 + 3);
      if (v19 >= v18 >> 1)
      {
        v10 = sub_100045204((v18 > 1), v19 + 1, 1, v10);
      }

      *(v10 + 2) = v19 + 1;
      *&v10[8 * v19 + 32] = v5;
      v5 = 0.0;
    }

    else
    {
      v17 = v16;
    }

    v20 = CGImageSourceCopyPropertiesAtIndex(a1, v15, 0);
    sub_10006568C(v20);
    if (v4)
    {
      break;
    }

    v22 = v21;
    ++v15;

    v5 = v5 + v22;
    v16 = v17;
    if (v11 == v15)
    {
      goto LABEL_30;
    }
  }

  return v10;
}

unint64_t sub_100065F90()
{
  result = qword_1000FC478;
  if (!qword_1000FC478)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000FC478);
  }

  return result;
}

__n128 sub_100065FDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 138) = *(a2 + 138);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_100066010(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 154))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10006606C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 154) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 154) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1000660F8()
{
  v1 = 7827565;
  v2 = *v0;
  v3 = 7828589;
  v4 = 115;
  if (v2 != 3)
  {
    v4 = 29811;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v1 = 6845549;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100066160@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100066654(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100066188(uint64_t a1)
{
  v2 = sub_100067468();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000661C4(uint64_t a1)
{
  v2 = sub_100067468();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100066200@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1000667EC(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    a1[2] = v7[0];
    result = *(v7 + 10);
    *(a1 + 42) = *(v7 + 10);
  }

  return result;
}

double sub_100066264(uint64_t a1)
{
  sub_1000C52C4();

  return result;
}

unint64_t sub_100066370@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100066AF0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1000663A0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x64692D6D616461;
  v5 = 0xE600000000000000;
  v6 = 0x77736E656770;
  if (v2 != 5)
  {
    v6 = 0x637A736E656770;
    v5 = 0xE700000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1701667182;
  if (v2 != 3)
  {
    v8 = 0x68736E656770;
    v7 = 0xE600000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x6C737365636361;
  if (v2 != 1)
  {
    v10 = 0x692D656C646E7562;
    v9 = 0xE900000000000064;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_100066474()
{
  v1 = *v0;
  v2 = 0x64692D6D616461;
  v3 = 0x77736E656770;
  if (v1 != 5)
  {
    v3 = 0x637A736E656770;
  }

  v4 = 1701667182;
  if (v1 != 3)
  {
    v4 = 0x68736E656770;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6C737365636361;
  if (v1 != 1)
  {
    v5 = 0x692D656C646E7562;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100066544@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100066AF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100066578(uint64_t a1)
{
  v2 = sub_10006702C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000665B4(uint64_t a1)
{
  v2 = sub_10006702C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000665F0@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100066B3C(a2, v9);
  if (!v2)
  {
    v5 = v9[7];
    a1[6] = v9[6];
    a1[7] = v5;
    a1[8] = v10[0];
    *(a1 + 138) = *(v10 + 10);
    v6 = v9[3];
    a1[2] = v9[2];
    a1[3] = v6;
    v7 = v9[5];
    a1[4] = v9[4];
    a1[5] = v7;
    result = *v9;
    v8 = v9[1];
    *a1 = v9[0];
    a1[1] = v8;
  }

  return result;
}

uint64_t sub_100066654(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7827565 && a2 == 0xE300000000000000;
  if (v3 || (sub_1000C5C04() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6845549 && a2 == 0xE300000000000000 || (sub_1000C5C04() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7828589 && a2 == 0xE300000000000000 || (sub_1000C5C04() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 115 && a2 == 0xE100000000000000 || (sub_1000C5C04() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 29811 && a2 == 0xE200000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1000C5C04();

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

uint64_t sub_1000667EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000124CC(&qword_1000FD570, &qword_1000CDE90);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - v7;
  sub_10001530C(a1, a1[3]);
  sub_100067468();
  sub_1000C5CF4();
  if (v2)
  {
    return sub_100015F68(a1);
  }

  v25 = 0;
  sub_1000674BC();
  sub_1000C5AC4();
  v19 = v23;
  v9 = v24;
  v25 = 1;
  sub_1000C5AC4();
  v26 = v9;
  v18 = v23;
  v10 = v24;
  v25 = 2;
  sub_1000C5AC4();
  v17 = v10;
  v16 = v23;
  LOBYTE(v10) = v24;
  v25 = 3;
  sub_1000C5AC4();
  v11 = v10;
  v12 = v23;
  HIDWORD(v15) = v24;
  LOBYTE(v23) = 4;
  v13 = sub_1000C5AA4();
  (*(v6 + 8))(v8, v5);
  v25 = v26;
  v22 = v17;
  v21 = v11;
  v20 = BYTE4(v15);
  result = sub_100015F68(a1);
  *a2 = v19;
  *(a2 + 8) = v25;
  *(a2 + 16) = v18;
  *(a2 + 24) = v22;
  *(a2 + 32) = v16;
  *(a2 + 40) = v21;
  *(a2 + 48) = v12;
  *(a2 + 56) = v20;
  *(a2 + 57) = v13 & 1;
  return result;
}

unint64_t sub_100066AF0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000F1C10;
  v6._object = a2;
  v4 = sub_1000C59F4(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

void sub_100066B3C(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1000124CC(&qword_1000FD540, &qword_1000CDCF0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v33 - v7;
  v9 = a1[3];
  v73 = a1;
  sub_10001530C(a1, v9);
  sub_10006702C();
  sub_1000C5CF4();
  if (v2)
  {
    sub_100015F68(v73);
  }

  else
  {
    v10 = v6;
    v41 = a2;
    LOBYTE(v48) = 0;
    v11 = v5;
    v12 = sub_1000C5A44();
    v72 = v13 & 1;
    LOBYTE(v48) = 1;
    v14 = sub_1000C5A04();
    v40 = v15;
    LOBYTE(v48) = 2;
    v16 = sub_1000C5A04();
    v39 = v17;
    v18 = v16;
    LOBYTE(v48) = 3;
    *&v38 = sub_1000C5A04();
    *(&v38 + 1) = v19;
    LOBYTE(v48) = 4;
    v20 = sub_1000C5A24();
    v36 = v18;
    v37 = v20;
    v71 = v21 & 1;
    LOBYTE(v48) = 5;
    v35 = sub_1000C5A24();
    v70 = v22 & 1;
    v65 = 6;
    sub_100067080();
    sub_1000C5A54();
    (*(v10 + 8))(v8, v11);
    *&v69[7] = v66;
    *&v69[23] = v67;
    *&v69[39] = v68[0];
    *&v69[49] = *(v68 + 10);
    *(&v47[1] + 9) = *&v69[16];
    *(&v47[2] + 9) = *&v69[32];
    *(&v47[3] + 9) = *&v69[48];
    *&v42 = v12;
    v34 = v72;
    BYTE8(v42) = v72;
    v23 = v40;
    *&v43 = v14;
    *(&v43 + 1) = v40;
    v24 = v35;
    v25 = v36;
    *&v44 = v36;
    *(&v44 + 1) = v39;
    v26 = *(&v38 + 1);
    v45 = v38;
    *&v46 = v37;
    v33 = v71;
    BYTE8(v46) = v71;
    *&v47[0] = v35;
    v27 = v70;
    BYTE8(v47[0]) = v70;
    BYTE9(v47[4]) = BYTE9(v68[1]);
    *(v47 + 9) = *v69;
    sub_1000670D4(&v42, &v48);
    sub_100015F68(v73);
    v61 = *&v69[16];
    v62 = *&v69[32];
    v63 = *&v69[48];
    v48 = v12;
    v49 = v34;
    v50 = v14;
    v51 = v23;
    v52 = v25;
    v53 = v39;
    v54 = v38;
    v55 = v26;
    v56 = v37;
    v57 = v33;
    v58 = v24;
    v59 = v27;
    v64 = v69[64];
    v60 = *v69;
    sub_10006710C(&v48);
    v28 = v47[2];
    v29 = v41;
    v41[6] = v47[1];
    v29[7] = v28;
    v29[8] = v47[3];
    *(v29 + 138) = *(&v47[3] + 10);
    v30 = v45;
    v29[2] = v44;
    v29[3] = v30;
    v31 = v47[0];
    v29[4] = v46;
    v29[5] = v31;
    v32 = v43;
    *v29 = v42;
    v29[1] = v32;
  }
}

unint64_t sub_10006702C()
{
  result = qword_1000FD548;
  if (!qword_1000FD548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD548);
  }

  return result;
}

unint64_t sub_100067080()
{
  result = qword_1000FD550;
  if (!qword_1000FD550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD550);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AttributionInfoKeyedUnarchiverSchema.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AttributionInfoKeyedUnarchiverSchema.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 sub_10006728C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1000672A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 58))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 57);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1000672FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 58) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 58) = 0;
    }

    if (a2)
    {
      *(result + 57) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_100067364()
{
  result = qword_1000FD558;
  if (!qword_1000FD558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD558);
  }

  return result;
}

unint64_t sub_1000673BC()
{
  result = qword_1000FD560;
  if (!qword_1000FD560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD560);
  }

  return result;
}

unint64_t sub_100067414()
{
  result = qword_1000FD568;
  if (!qword_1000FD568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD568);
  }

  return result;
}

unint64_t sub_100067468()
{
  result = qword_1000FD578;
  if (!qword_1000FD578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD578);
  }

  return result;
}

unint64_t sub_1000674BC()
{
  result = qword_1000FD580;
  if (!qword_1000FD580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD580);
  }

  return result;
}

unint64_t sub_100067524()
{
  result = qword_1000FD588;
  if (!qword_1000FD588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD588);
  }

  return result;
}

unint64_t sub_10006757C()
{
  result = qword_1000FD590;
  if (!qword_1000FD590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD590);
  }

  return result;
}

unint64_t sub_1000675D4()
{
  result = qword_1000FD598;
  if (!qword_1000FD598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD598);
  }

  return result;
}

uint64_t sub_100067680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v5 = sub_1000124CC(&qword_1000FD5A8, &qword_1000CDFF8);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v26 - v9;
  v11 = sub_1000124CC(&qword_1000FC460, &qword_1000C9D30);
  __chkstk_darwin(v11 - 8);
  v13 = &v26 - v12;
  v14 = sub_1000C4D84();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000C4CC4();
  v33 = v18;
  v34 = &protocol witness table for File;
  v19 = sub_10002E5DC(v32);
  (*(*(v18 - 8) + 16))(v19, a1, v18);
  v20 = sub_1000C4D54();
  (*(*(v20 - 8) + 56))(v13, 1, 1, v20);
  sub_1000C4D64();
  sub_1000C4D74();
  sub_10001530C(v32, v33);
  v31 = a2;
  v28 = sub_1000683DC;
  v29 = &v30;
  v21 = sub_1000C3E14();
  v22 = v35;
  sub_1000C2834();
  if (v22)
  {
    (*(v15 + 8))(v17, v14);
    return sub_100015F68(v32);
  }

  else
  {
    v24 = v27;
    sub_100015F68(v32);
    sub_100068414(v10, v8);
    v25 = *(v21 - 8);
    if ((*(v25 + 48))(v8, 1, v21) == 1)
    {
      sub_100018F90(v8, &qword_1000FD5A8, &qword_1000CDFF8);
      sub_1000C4FC4();
      sub_100068484(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
      swift_allocError();
      sub_1000C4FB4();
      swift_willThrow();
      sub_100018F90(v10, &qword_1000FD5A8, &qword_1000CDFF8);
      return (*(v15 + 8))(v17, v14);
    }

    else
    {
      sub_100018F90(v10, &qword_1000FD5A8, &qword_1000CDFF8);
      (*(v15 + 8))(v17, v14);
      return (*(v25 + 32))(v24, v8, v21);
    }
  }
}

uint64_t sub_100067B14(CGImageSource *a1)
{
  v2 = CGImageSourceGetType(a1);
  if (!v2 || ((v3 = v2, v4 = sub_1000C5224(), v6 = v5, v3, v4 != 0x682E63696C627570) || v6 != 0xEB00000000636965) && (sub_1000C5C04() & 1) == 0 || (, Count = CGImageSourceGetCount(a1), sub_1000C3DF4() < Count))
  {
    sub_1000C4FC4();
    sub_100068484(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    return swift_willThrow();
  }

  if (Count >= 1)
  {
    v8 = CGImageSourceCopyPropertiesAtIndex(a1, 0, 0);
    if (v8)
    {
      v9 = v8;
      if ([(__CFDictionary *)v8 __swift_objectForKeyedSubscript:kCGImagePropertyTIFFDictionary])
      {
        sub_1000C58C4();
        swift_unknownObjectRelease();
      }

      else
      {
        v14 = 0u;
        v15 = 0u;
      }

      v16 = v14;
      v17 = v15;
      if (*(&v15 + 1))
      {
        sub_100065F90();
        if (swift_dynamicCast())
        {
          if ([v13 __swift_objectForKeyedSubscript:kCGImagePropertyTIFFDocumentName])
          {
            sub_1000C58C4();
            swift_unknownObjectRelease();
          }

          else
          {
            v14 = 0u;
            v15 = 0u;
          }

          v16 = v14;
          v17 = v15;
          if (*(&v15 + 1))
          {
            swift_dynamicCast();
          }

          else
          {
            sub_100018F90(&v16, &qword_1000FC828, &qword_1000CF790);
          }

          if ([v13 __swift_objectForKeyedSubscript:kCGImagePropertyTIFFImageDescription])
          {
            sub_1000C58C4();

            swift_unknownObjectRelease();
          }

          else
          {

            v14 = 0u;
            v15 = 0u;
          }

          v16 = v14;
          v17 = v15;
          if (*(&v15 + 1))
          {
            v11 = swift_dynamicCast();
            v12 = v13;
            if (!v11)
            {
              v12 = 0;
            }
          }

          else
          {
            sub_100018F90(&v16, &qword_1000FC828, &qword_1000CF790);
            v12 = 0;
          }

          v18 = v12;
          goto LABEL_34;
        }
      }

      else
      {
        sub_100018F90(&v16, &qword_1000FC828, &qword_1000CF790);
      }

      v18 = 0;
LABEL_34:
      if ([(__CFDictionary *)v9 __swift_objectForKeyedSubscript:kCGImagePropertyIPTCDictionary])
      {
        sub_1000C58C4();
        swift_unknownObjectRelease();
      }

      else
      {
        v14 = 0u;
        v15 = 0u;
      }

      v16 = v14;
      v17 = v15;
      if (*(&v15 + 1))
      {
        sub_100065F90();
        if (swift_dynamicCast())
        {
          if ([v13 __swift_objectForKeyedSubscript:kCGImagePropertyIPTCCredit])
          {
            sub_1000C58C4();
            swift_unknownObjectRelease();
          }

          else
          {
            v14 = 0u;
            v15 = 0u;
          }

          v16 = v14;
          v17 = v15;
          if (*(&v15 + 1))
          {
            swift_dynamicCast();
          }

          else
          {
            sub_100018F90(&v16, &qword_1000FC828, &qword_1000CF790);
          }

          if ([v13 __swift_objectForKeyedSubscript:kCGImagePropertyIPTCExtDigitalSourceType])
          {
            sub_1000C58C4();

            swift_unknownObjectRelease();
          }

          else
          {

            v14 = 0u;
            v15 = 0u;
          }

          v16 = v14;
          v17 = v15;
          if (*(&v15 + 1))
          {
            swift_dynamicCast();
          }

          else
          {
            sub_100018F90(&v16, &qword_1000FC828, &qword_1000CF790);
          }
        }

        else
        {
        }
      }

      else
      {

        sub_100018F90(&v16, &qword_1000FC828, &qword_1000CF790);
      }
    }
  }

  return sub_1000C3E04();
}

uint64_t sub_1000682A0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1000C3E14();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = a2(a1);
  if (!v3)
  {
    (*(v8 + 32))(a3, v10, v7);
    return (*(v8 + 56))(a3, 0, 1, v7);
  }

  return result;
}

uint64_t sub_100068414(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000124CC(&qword_1000FD5A8, &qword_1000CDFF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100068484(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000684CC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[56])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100068520(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

__n128 sub_100068580(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000685A4(void *a1)
{
  v3 = v1;
  v5 = sub_1000124CC(&qword_1000FD5D8, &qword_1000CE2F8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_10001530C(a1, a1[3]);
  sub_100069FBC();
  sub_1000C5D04();
  LOBYTE(v13) = 0;
  sub_1000C5B94();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    sub_1000C5B04();
    v16 = *(v3 + 8);
    v13 = *(v3 + 8);
    v12 = 2;
    sub_100044D1C(&v16, v11);
    sub_100042EA0();
    sub_1000C5B44();
    sub_100018CBC(v13, *(&v13 + 1));
    v15 = *(v3 + 24);
    v13 = *(v3 + 24);
    v12 = 3;
    sub_100044D1C(&v15, v11);
    sub_1000C5B44();
    sub_100018CBC(v13, *(&v13 + 1));
    v13 = *(v3 + 40);
    v14 = v13;
    v12 = 4;
    sub_100044D1C(&v14, v11);
    sub_1000C5B44();
    sub_100018CBC(v13, *(&v13 + 1));
  }

  return (*(v6 + 8))(v8, v5);
}

Swift::Int sub_100068820()
{
  sub_1000C5CB4();
  sub_1000C52C4();

  return sub_1000C5CD4();
}

double sub_1000688DC(uint64_t a1)
{
  sub_1000C52C4();

  return result;
}

Swift::Int sub_100068984()
{
  sub_1000C5CB4();
  sub_1000C52C4();

  return sub_1000C5CD4();
}

unint64_t sub_100068A3C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100069634(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_100068A6C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE100000000000000;
  v4 = 114;
  v5 = 6581616;
  v6 = 6580578;
  if (v2 != 3)
  {
    v6 = 6581346;
  }

  if (v2 != 2)
  {
    v5 = v6;
  }

  if (*v1)
  {
    v4 = 101;
    v3 = 0xE100000000000000;
  }

  if (*v1 <= 1u)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_100068AE4()
{
  v1 = *v0;
  v2 = 114;
  v3 = 6581616;
  v4 = 6580578;
  if (v1 != 3)
  {
    v4 = 6581346;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 101;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100068B58@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100069634(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100068B80(uint64_t a1)
{
  v2 = sub_100069FBC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100068BBC(uint64_t a1)
{
  v2 = sub_100069FBC();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100068BF8@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100069680(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

uint64_t sub_100068C60(void *a1)
{
  v3 = v1;
  v5 = sub_1000124CC(&qword_1000FD648, &qword_1000CE658);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_10001530C(a1, a1[3]);
  sub_10006A370();
  sub_1000C5D04();
  v13 = 0;
  sub_1000C5B84();
  if (!v2)
  {
    v12 = 1;
    sub_1000C5B24();
    v11 = *(v3 + 32);
    v10[15] = 2;
    sub_1000124CC(&qword_1000FD630, &qword_1000CE650);
    sub_10006A418(&qword_1000FD650, sub_10006A49C, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
    sub_1000C5BB4();
    v10[14] = 3;
    sub_1000C5B04();
    v10[13] = 4;
    sub_1000C5B04();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100068ED0(void *a1)
{
  v2 = v1;
  v4 = sub_1000124CC(&qword_1000FD5E0, &qword_1000CE308);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11[-1] - v6;
  sub_10001530C(a1, a1[3]);
  sub_100069F14();
  sub_1000C5D04();
  v8 = v2[1];
  v10 = *v2;
  v11[0] = v8;
  *(v11 + 10) = *(v2 + 26);
  sub_10006A040();
  sub_1000C5BB4();
  return (*(v5 + 8))(v7, v4);
}

Swift::Int sub_100069030()
{
  sub_1000C5CB4();
  sub_1000C52C4();

  return sub_1000C5CD4();
}

double sub_1000690D8(uint64_t a1)
{
  sub_1000C52C4();

  return result;
}

Swift::Int sub_10006916C()
{
  sub_1000C5CB4();
  sub_1000C52C4();

  return sub_1000C5CD4();
}

unint64_t sub_100069210@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100069A08(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_100069240(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE100000000000000;
  v4 = 115;
  v5 = 0xE100000000000000;
  v6 = 114;
  v7 = 0xE100000000000000;
  v8 = 102;
  if (v2 != 3)
  {
    v8 = 29539;
    v7 = 0xE200000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 101;
    v3 = 0xE100000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1000692A4()
{
  v1 = *v0;
  v2 = 115;
  v3 = 114;
  v4 = 102;
  if (v1 != 3)
  {
    v4 = 29539;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 101;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100069304@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100069A08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10006932C(uint64_t a1)
{
  v2 = sub_10006A370();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100069368(uint64_t a1)
{
  v2 = sub_10006A370();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000693A4@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100069A54(a2, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a1 = v6;
    a1[1] = v5;
    result = *(v7 + 10);
    *(a1 + 26) = *(v7 + 10);
  }

  return result;
}

Swift::Int sub_100069400()
{
  sub_1000C5CB4();
  sub_1000C52C4();
  return sub_1000C5CD4();
}

Swift::Int sub_100069454()
{
  sub_1000C5CB4();
  sub_1000C52C4();
  return sub_1000C5CD4();
}

void sub_100069498(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v6._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000F1E08;
  v6._object = v3;
  v5 = sub_1000C59F4(v4, v6);

  *a2 = v5 != 0;
}

void sub_100069508(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v7._countAndFlagsBits = a1;
  v5._rawValue = &off_1000F1E40;
  v7._object = a2;
  v6 = sub_1000C59F4(v5, v7);

  *a3 = v6 != 0;
}

uint64_t sub_100069560(uint64_t a1)
{
  v2 = sub_100069F14();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006959C(uint64_t a1)
{
  v2 = sub_100069F14();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000695D8@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100069D70(a2, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a1 = v6;
    a1[1] = v5;
    result = *(v7 + 10);
    *(a1 + 26) = *(v7 + 10);
  }

  return result;
}

unint64_t sub_100069634(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000F1CD8;
  v6._object = a2;
  v4 = sub_1000C59F4(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100069680@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1000124CC(&qword_1000FD5C8, &qword_1000CE2F0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - v7;
  sub_10001530C(a1, a1[3]);
  sub_100069FBC();
  sub_1000C5CF4();
  if (v2)
  {
    sub_100015F68(a1);
    sub_100018CBC(0, 0xF000000000000000);
    sub_100018CBC(0, 0xF000000000000000);
    return sub_100018CBC(0, 0xF000000000000000);
  }

  else
  {
    LOBYTE(v31) = 0;
    v9 = sub_1000C5AA4();
    LOBYTE(v31) = 1;
    v10 = sub_1000C5A14();
    LOBYTE(v27) = 2;
    v26 = sub_100042DD4();
    sub_1000C5A54();
    v40 = v9;
    v25 = v6;
    v11 = v31;
    v12 = v32;
    sub_100018CBC(0, 0xF000000000000000);
    LOBYTE(v27) = 3;
    sub_1000C5A54();
    v23 = v10;
    v24 = a2;
    v14 = v31;
    v13 = v32;
    sub_100018CBC(0, 0xF000000000000000);
    v41 = 4;
    sub_1000C5A54();
    v15 = v40 & 1;
    LODWORD(v26) = v40 & 1;
    (*(v25 + 8))(v8, v5);
    v16 = v38;
    v17 = v39;
    sub_100018CBC(0, 0xF000000000000000);
    LOBYTE(v27) = v15;
    v18 = v23;
    BYTE1(v27) = v23;
    *(&v27 + 1) = v11;
    *&v28 = v12;
    *(&v28 + 1) = v14;
    *&v29 = v13;
    *(&v29 + 1) = v16;
    v30 = v17;
    sub_10001F9EC(&v27, &v31);
    sub_100015F68(a1);
    LOBYTE(v31) = v26;
    BYTE1(v31) = v18;
    v32 = v11;
    v33 = v12;
    v34 = v14;
    v35 = v13;
    v36 = v16;
    v37 = v17;
    result = sub_10006A010(&v31);
    v20 = v28;
    v21 = v24;
    *v24 = v27;
    v21[1] = v20;
    v21[2] = v29;
    *(v21 + 6) = v30;
  }

  return result;
}

unint64_t sub_100069A08(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000F1D70;
  v6._object = a2;
  v4 = sub_1000C59F4(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

void sub_100069A54(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000124CC(&qword_1000FD620, &qword_1000CE648);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  sub_10001530C(a1, a1[3]);
  sub_10006A370();
  sub_1000C5CF4();
  if (v2)
  {
    sub_100015F68(a1);
  }

  else
  {
    v26 = 0;
    v9 = sub_1000C5A94();
    v11 = v10;
    v12 = v9;
    v25 = 1;
    v13 = sub_1000C5A34();
    v20 = v14;
    v19 = v13;
    sub_1000124CC(&qword_1000FD630, &qword_1000CE650);
    v24 = 2;
    sub_10006A418(&qword_1000FD638, sub_10006A3C4, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
    sub_1000C5AC4();
    v18 = v21;
    v23 = 3;
    v17 = sub_1000C5A14();
    v22 = 4;
    v15 = sub_1000C5A14();
    (*(v6 + 8))(v8, v5);
    sub_100015F68(a1);
    *a2 = v12;
    *(a2 + 8) = v11;
    *(a2 + 16) = v19;
    *(a2 + 24) = v20 & 1;
    *(a2 + 32) = v18;
    *(a2 + 40) = v17;
    *(a2 + 41) = v15;
  }
}

uint64_t sub_100069D70@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000124CC(&qword_1000FD5B0, &qword_1000CE2E8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v14 - v7;
  sub_10001530C(a1, a1[3]);
  sub_100069F14();
  sub_1000C5CF4();
  if (v2)
  {
    return sub_100015F68(a1);
  }

  sub_100069F68();
  sub_1000C5AC4();
  (*(v6 + 8))(v8, v5);
  v14[0] = v14[1];
  v9 = v15;
  v10 = v16;
  v11 = v17;
  v12 = v18;
  result = sub_100015F68(a1);
  *a2 = v14[0];
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v11;
  *(a2 + 40) = v12;
  return result;
}

unint64_t sub_100069F14()
{
  result = qword_1000FD5B8;
  if (!qword_1000FD5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD5B8);
  }

  return result;
}

unint64_t sub_100069F68()
{
  result = qword_1000FD5C0;
  if (!qword_1000FD5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD5C0);
  }

  return result;
}

unint64_t sub_100069FBC()
{
  result = qword_1000FD5D0;
  if (!qword_1000FD5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD5D0);
  }

  return result;
}

unint64_t sub_10006A040()
{
  result = qword_1000FD5E8;
  if (!qword_1000FD5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD5E8);
  }

  return result;
}

uint64_t sub_10006A0B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 42))
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

uint64_t sub_10006A104(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 42) = 1;
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

    *(result + 42) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10006A164()
{
  result = qword_1000FD5F0;
  if (!qword_1000FD5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD5F0);
  }

  return result;
}

unint64_t sub_10006A1BC()
{
  result = qword_1000FD5F8;
  if (!qword_1000FD5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD5F8);
  }

  return result;
}

unint64_t sub_10006A214()
{
  result = qword_1000FD600;
  if (!qword_1000FD600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD600);
  }

  return result;
}

unint64_t sub_10006A26C()
{
  result = qword_1000FD608;
  if (!qword_1000FD608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD608);
  }

  return result;
}

unint64_t sub_10006A2C4()
{
  result = qword_1000FD610;
  if (!qword_1000FD610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD610);
  }

  return result;
}

unint64_t sub_10006A31C()
{
  result = qword_1000FD618;
  if (!qword_1000FD618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD618);
  }

  return result;
}

unint64_t sub_10006A370()
{
  result = qword_1000FD628;
  if (!qword_1000FD628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD628);
  }

  return result;
}

unint64_t sub_10006A3C4()
{
  result = qword_1000FD640;
  if (!qword_1000FD640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD640);
  }

  return result;
}

uint64_t sub_10006A418(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10001308C(&qword_1000FD630, &qword_1000CE650);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10006A49C()
{
  result = qword_1000FD658;
  if (!qword_1000FD658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD658);
  }

  return result;
}

unint64_t sub_10006A50C()
{
  result = qword_1000FD660;
  if (!qword_1000FD660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD660);
  }

  return result;
}

unint64_t sub_10006A564()
{
  result = qword_1000FD668;
  if (!qword_1000FD668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD668);
  }

  return result;
}

unint64_t sub_10006A5BC()
{
  result = qword_1000FD670;
  if (!qword_1000FD670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD670);
  }

  return result;
}

unint64_t sub_10006A638()
{
  result = qword_1000FD678;
  if (!qword_1000FD678)
  {
    sub_1000C4494();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD678);
  }

  return result;
}

void sub_10006A690(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = sub_1000C5514();
  sub_100014F70();
  v5 = sub_1000C56B4();
  sub_1000124CC(&qword_1000FC348, qword_1000C9550);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000C94D0;
  v14[0] = sub_1000C4434();
  v14[1] = v7;
  v8 = sub_1000C4A84();
  v10 = v9;

  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_100014FBC();
  *(v6 + 32) = v8;
  *(v6 + 40) = v10;
  sub_1000C1A54(v4, &_mh_execute_header, v5, "Unpacking combined plugin attachment (identifier: %@)", 53, 2, v6);

  v11 = objc_autoreleasePoolPush();
  sub_10006A7E0(a3, a1, a2, v14);
  objc_autoreleasePoolPop(v11);
}

uint64_t sub_10006A7E0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  v44[0] = sub_1000C4434();
  v44[1] = v8;
  *&v42 = 58;
  *(&v42 + 1) = 0xE100000000000000;
  sub_100018D24();
  v9 = sub_1000C58B4();

  if (!v9[2])
  {

    v17 = sub_1000C5974();
    v18 = swift_allocError();
    v20 = v19;
    sub_1000124CC(&qword_1000FC400, &unk_1000C97C0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1000C94D0;
    *(v21 + 56) = &type metadata for MessageDictionary.CodingKeys;
    *(v21 + 64) = sub_1000421CC();
    *(v21 + 32) = 22;
    sub_1000C5964();
    (*(*(v17 - 8) + 104))(v20, enum case for DecodingError.dataCorrupted(_:), v17);
    result = swift_willThrow();
LABEL_15:
    *a4 = v18;
    return result;
  }

  v10 = v9[4];
  v11 = v9[5];

  if (qword_1000FC068 != -1)
  {
    swift_once();
  }

  v47 = a4;
  v12 = qword_10010AD68;
  if (!*(qword_10010AD68 + 16))
  {

    goto LABEL_10;
  }

  v13 = sub_100099FF8(v10, v11);
  v15 = v14;

  if ((v15 & 1) == 0)
  {
LABEL_10:
    v23 = sub_1000C5974();
    v18 = swift_allocError();
    v25 = v24;
    sub_1000124CC(&qword_1000FC400, &unk_1000C97C0);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1000C94D0;
    *(v26 + 56) = &type metadata for MessageDictionary.CodingKeys;
    *(v26 + 64) = sub_1000421CC();
    *(v26 + 32) = 22;
    sub_1000C5964();
    (*(*(v23 - 8) + 104))(v25, enum case for DecodingError.dataCorrupted(_:), v23);
    result = swift_willThrow();
    a4 = v47;
    goto LABEL_15;
  }

  sub_100018DA8(*(v12 + 56) + 40 * v13, &v42);
  sub_100018E0C(&v42, v44);
  v16 = objc_autoreleasePoolPush();
  sub_1000C1464();
  swift_allocObject();
  sub_1000C1454();
  sub_10006ADD8();
  sub_1000C1444();
  if (v4)
  {

    sub_100018C68(a2, a3);
    v41 = _swiftEmptyArrayStorage;
  }

  else
  {
    v27 = *(&v42 + 1);
    v28 = v43;
    v29 = _swiftEmptyArrayStorage;
    if (v42)
    {
      v29 = v42;
    }

    v41 = v29;

    sub_100018C68(v27, v28);

    sub_100018C68(v27, v28);

    sub_100018CD0(v27, v28);
    a2 = sub_1000C1554();
    a3 = v30;

    sub_100018CD0(v27, v28);

    sub_100018CD0(v27, v28);
  }

  objc_autoreleasePoolPop(v16);
  v31 = sub_1000C5514();
  sub_100014F70();
  v32 = sub_1000C56B4();
  sub_1000124CC(&qword_1000FC348, qword_1000C9550);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1000C94D0;
  sub_100018DA8(v44, &v42);
  sub_1000124CC(&qword_1000FC3D8, &unk_1000CE800);
  v34 = sub_1000C4A84();
  v36 = v35;
  sub_10006AE2C(&v42);
  *(v33 + 56) = &type metadata for String;
  *(v33 + 64) = sub_100014FBC();
  *(v33 + 32) = v34;
  *(v33 + 40) = v36;
  sub_1000C1A54(v31, &_mh_execute_header, v32, "Unpacking combined plugin using %@.", 35, 2, v33);

  v37 = v45;
  v38 = v46;
  sub_10001530C(v44, v45);
  v39 = sub_1000C4434();
  (*(v38 + 8))(a2, a3, v41, v39, v40, v37, v38);

  sub_100018CD0(a2, a3);
  return sub_100015F68(v44);
}

unint64_t sub_10006ADD8()
{
  result = qword_1000FD680;
  if (!qword_1000FD680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD680);
  }

  return result;
}

uint64_t sub_10006AE2C(uint64_t a1)
{
  v2 = sub_1000124CC(&qword_1000FC3E0, &unk_1000C97A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10006AEA4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v22[2] = a3;
  v22[3] = a4;
  v22[1] = a5;
  v7 = sub_1000C3124();
  v22[0] = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v22 - v11;
  v13 = sub_1000124CC(&qword_1000FD688, &unk_1000CE840);
  __chkstk_darwin(v13 - 8);
  v15 = v22 - v14;
  v16 = sub_1000C33D4();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100018C68(a1, a2);
  v20 = v23;
  result = sub_1000C33C4();
  if (!v20)
  {
    v23 = v7;
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {
      sub_10006B1E8(v15);
      sub_100018C68(a1, a2);
      sub_1000C3114();
      (*(v22[0] + 104))(v10, enum case for EncodedAppData.EncodedContent.other(_:), v23);

      return sub_1000C3134();
    }

    else
    {
      (*(v17 + 32))(v19, v15, v16);
      (*(v17 + 16))(v12, v19, v16);
      (*(v22[0] + 104))(v12, enum case for EncodedAppData.EncodedContent.businessMessage(_:), v23);

      sub_1000C3134();
      return (*(v17 + 8))(v19, v16);
    }
  }

  return result;
}

uint64_t sub_10006B1E8(uint64_t a1)
{
  v2 = sub_1000124CC(&qword_1000FD688, &unk_1000CE840);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10006B250()
{
  sub_1000124CC(&qword_1000FD690, &qword_1000CE878);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000CBF00;
  *(inited + 32) = sub_1000C4B34();
  *(inited + 40) = v1;
  *(inited + 72) = &type metadata for BusinessMessagesAppUnpacker;
  *(inited + 80) = &off_1000F5058;
  *(inited + 88) = sub_1000C4BA4();
  *(inited + 96) = v2;
  *(inited + 128) = &type metadata for GameCenterMessagesAppUnpacker;
  *(inited + 136) = &off_1000F5088;
  v3 = sub_10006B5A8(inited);
  swift_setDeallocating();
  sub_1000124CC(&qword_1000FD698, &unk_1000CE880);
  result = swift_arrayDestroy();
  qword_10010AD60 = v3;
  return result;
}

uint64_t sub_10006B328()
{
  sub_1000124CC(&qword_1000FD6A0, &qword_1000CE8A8);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000025;
  *(inited + 16) = xmmword_1000CBEF0;
  *(inited + 40) = 0x80000001000D5590;
  *(inited + 72) = &type metadata for LinkPresentationUnpacker;
  *(inited + 80) = &off_1000F3B10;
  *(inited + 88) = 0xD000000000000032;
  *(inited + 96) = 0x80000001000D7290;
  *(inited + 128) = &type metadata for MessagesAppBalloonUnpacker;
  *(inited + 136) = &off_1000F31F0;
  *(inited + 144) = 0xD000000000000029;
  *(inited + 152) = 0x80000001000D72D0;
  *(inited + 184) = &type metadata for HandwritingUnpacker;
  *(inited + 192) = &off_1000F5328;
  *(inited + 200) = 0xD000000000000025;
  *(inited + 208) = 0x80000001000D7300;
  *(inited + 240) = &type metadata for DigitalTouchBalloonUnpacker;
  *(inited + 248) = &off_1000F6390;
  v1 = sub_10006B474(inited);
  swift_setDeallocating();
  sub_1000124CC(&qword_1000FD6A8, &qword_1000CE8B0);
  result = swift_arrayDestroy();
  qword_10010AD68 = v1;
  return result;
}

unint64_t sub_10006B474(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000124CC(&qword_1000FD6B0, &qword_1000CE8B8);
    v3 = sub_1000C59D4();
    v4 = a1 + 32;

    while (1)
    {
      sub_100018F28(v4, &v13, &qword_1000FD6A8, &qword_1000CE8B0);
      v5 = v13;
      v6 = v14;
      result = sub_100099FF8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100018E0C(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10006B5A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000124CC(&qword_1000FD6C8, &unk_1000CE8E0);
    v3 = sub_1000C59D4();
    v4 = a1 + 32;

    while (1)
    {
      sub_100018F28(v4, &v13, &qword_1000FD698, &unk_1000CE880);
      v5 = v13;
      v6 = v14;
      result = sub_100099FF8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100018E0C(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10006B6DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000124CC(&qword_1000FC540, &unk_1000CE8C0);
    v3 = sub_1000C59D4();
    v4 = a1 + 32;

    while (1)
    {
      sub_100018F28(v4, &v13, &qword_1000FC7A8, &qword_1000CADA8);
      v5 = v13;
      v6 = v14;
      result = sub_100099FF8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10001D8C8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10006B80C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000124CC(&qword_1000FD6B8, &unk_1000CE8D0);
    v3 = sub_1000C59D4();
    v4 = a1 + 32;

    while (1)
    {
      sub_100018F28(v4, &v11, &qword_1000FD6C0, &unk_1000CE990);
      v5 = v11;
      result = sub_10009A070(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10001D8C8(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10006B944(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1000C3124();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100018C68(a1, a2);
  result = sub_1000C3114();
  if (!v4)
  {
    (*(v8 + 104))(v10, enum case for EncodedAppData.EncodedContent.other(_:), v7);

    return sub_1000C3134();
  }

  return result;
}

void sub_10006BAD8(uint64_t a1@<X0>, void (*a2)(char *, char *, uint64_t)@<X8>)
{
  v80 = a2;
  v4 = sub_1000124CC(&qword_1000FC438, &unk_1000C9DC0);
  __chkstk_darwin(v4 - 8);
  v77 = &v69 - v5;
  v6 = sub_1000C4FC4();
  v79 = *(v6 - 8);
  __chkstk_darwin(v6);
  v78 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000124CC(&qword_1000FD6D8, &unk_1000CE978);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v69 - v12;
  v14 = sub_1000C2C34();
  v15 = *(*(v14 - 8) + 56);
  v15(v13, 1, 1, v14);
  if ((sub_1000C2D54() & 1) == 0)
  {
    goto LABEL_23;
  }

  sub_1000C4CC4();
  type metadata accessor for CGImageSource(0);
  sub_1000C2834();
  if (v2)
  {
    sub_100018F90(v13, &qword_1000FD6D8, &unk_1000CE978);
    return;
  }

  v76 = v13;
  if (!v81)
  {
    v37 = v78;
    sub_1000C4FB4();
    sub_100014F70();
    v38 = sub_1000C5734();
    sub_1000124CC(&qword_1000FC348, qword_1000C9550);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1000C94D0;
    v40 = v79;
    v80 = v79[2];
    v41 = v77;
    v80(v77, v37, v6);
    (v40[7])(v41, 0, 1, v6);
    v42 = v6;
    v43 = sub_1000C4A84();
    v45 = v44;
    sub_100018F90(v41, &qword_1000FC438, &unk_1000C9DC0);
    *(v39 + 56) = &type metadata for String;
    *(v39 + 64) = sub_100014FBC();
    *(v39 + 32) = v43;
    *(v39 + 40) = v45;
    v46 = sub_1000C5554();
    sub_1000C1A44("MediaMetadata explosion: %{public}@", 35, 2, &_mh_execute_header, v38, v46, v39);

    sub_10006C9FC(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    v80(v47, v37, v42);
    swift_willThrow();
LABEL_18:
    (v40[1])(v37, v42);
    sub_100018F90(v76, &qword_1000FD6D8, &unk_1000CE978);
    return;
  }

  v75 = v81;
  sub_1000124CC(&qword_1000FD6E0, &qword_1000CE988);
  inited = swift_initStackObject();
  v73 = xmmword_1000C94D0;
  *(inited + 16) = xmmword_1000C94D0;
  *(inited + 32) = kCGImageSourceShouldCache;
  *(inited + 64) = &type metadata for Bool;
  *(inited + 40) = 0;
  v17 = kCGImageSourceShouldCache;
  sub_10006B80C(inited);
  v74 = v6;
  swift_setDeallocating();
  sub_100018F90(inited + 32, &qword_1000FD6C0, &unk_1000CE990);
  type metadata accessor for CFString(0);
  sub_10006C9FC(&qword_1000FC2F0, type metadata accessor for CFString, &unk_1000C9314);
  isa = sub_1000C5174().super.isa;
  v19 = v74;

  v20 = CGImageSourceCopyPropertiesAtIndex(v75, 0, isa);

  if (!v20)
  {
    goto LABEL_15;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_15;
  }

  v81 = 0;
  type metadata accessor for CFNumber(0);
  sub_1000C5184();

  v21 = v81;
  if (!v81)
  {
LABEL_15:
    v37 = v78;
    sub_1000C4FB4();
    sub_100014F70();
    v48 = sub_1000C5734();
    sub_1000124CC(&qword_1000FC348, qword_1000C9550);
    v49 = swift_allocObject();
    *(v49 + 16) = v73;
    v40 = v79;
    v80 = v79[2];
    v50 = v77;
    v80(v77, v37, v19);
    (v40[7])(v50, 0, 1, v19);
    v51 = sub_1000C4A84();
    v42 = v19;
LABEL_16:
    v53 = v51;
    v54 = v52;
    sub_100018F90(v50, &qword_1000FC438, &unk_1000C9DC0);
    *(v49 + 56) = &type metadata for String;
    *(v49 + 64) = sub_100014FBC();
    *(v49 + 32) = v53;
    *(v49 + 40) = v54;
    v55 = sub_1000C5554();
    sub_1000C1A44("MediaMetadata explosion: %{public}@", 35, 2, &_mh_execute_header, v48, v55, v49);

    sub_10006C9FC(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    v80(v56, v37, v42);
    swift_willThrow();
LABEL_17:

    goto LABEL_18;
  }

  v22 = sub_1000C5224();
  if (!*(v21 + 2))
  {

    goto LABEL_20;
  }

  v72 = sub_100099FF8(v22, v23);
  v25 = v24;

  if ((v25 & 1) == 0)
  {
LABEL_20:

    v37 = v78;
    sub_1000C4FB4();
    sub_100014F70();
    v48 = sub_1000C5734();
    sub_1000124CC(&qword_1000FC348, qword_1000C9550);
    v49 = swift_allocObject();
    *(v49 + 16) = v73;
    v40 = v79;
    v80 = v79[2];
    v50 = v77;
    v42 = v74;
    v80(v77, v37, v74);
    (v40[7])(v50, 0, 1, v42);
    v51 = sub_1000C4A84();
    goto LABEL_16;
  }

  v26 = *(*(v21 + 7) + 8 * v72);
  v27 = sub_1000C5224();
  v29 = v28;
  v30 = *(v21 + 2);
  v72 = v26;
  if (!v30)
  {
    v57 = v26;

    goto LABEL_22;
  }

  v71 = v27;
  v70 = v26;
  v71 = sub_100099FF8(v71, v29);
  v32 = v31;

  if ((v32 & 1) == 0)
  {
LABEL_22:

    v37 = v78;
    sub_1000C4FB4();
    sub_100014F70();
    v58 = sub_1000C5734();
    sub_1000124CC(&qword_1000FC348, qword_1000C9550);
    v59 = swift_allocObject();
    *(v59 + 16) = v73;
    v40 = v79;
    v80 = v79[2];
    v60 = v77;
    v42 = v74;
    v80(v77, v37, v74);
    (v40[7])(v60, 0, 1, v42);
    v61 = sub_1000C4A84();
    v63 = v62;
    sub_100018F90(v60, &qword_1000FC438, &unk_1000C9DC0);
    *(v59 + 56) = &type metadata for String;
    *(v59 + 64) = sub_100014FBC();
    *(v59 + 32) = v61;
    *(v59 + 40) = v63;
    v64 = sub_1000C5554();
    sub_1000C1A44("MediaMetadata explosion: %{public}@", 35, 2, &_mh_execute_header, v58, v64, v59);

    sub_10006C9FC(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    v80(v65, v37, v42);
    swift_willThrow();

    goto LABEL_17;
  }

  v33 = *(*(v21 + 7) + 8 * v71);

  v34 = v70;
  v35 = sub_1000C54B4();
  v79 = v34;

  v36 = v33;
  sub_1000C54B4();
  v78 = v36;

  sub_1000C5014();
  v77 = v35;
  sub_1000C4FF4();
  sub_1000C2C24();

  v13 = v76;
  sub_100018F90(v76, &qword_1000FD6D8, &unk_1000CE978);
  v15(v11, 0, 1, v14);
  sub_10006CA44(v11, v13);
LABEL_23:
  sub_10006C970(v13, v11);
  v66 = v80;
  v67 = sub_1000C2C54();
  __chkstk_darwin(v67);
  *(&v69 - 2) = a1;
  *(&v69 - 1) = v66;
  sub_1000C4C94();
  sub_100018F90(v13, &qword_1000FD6D8, &unk_1000CE978);
  if (v2)
  {
    v68 = sub_1000C2E14();
    (*(*(v68 - 8) + 8))(v66, v68);
  }
}

void sub_10006C810()
{
  v0 = sub_1000C4CF4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C4CB4();
  sub_1000C4CD4();
  (*(v1 + 8))(v3, v0);
  v4 = objc_allocWithZone(PFMetadata);
  v5 = sub_1000C51F4();

  v6 = [v4 initForLimitedPropertiesWithPath:v5];

  if (v6)
  {
    sub_100025C6C(v6);
  }
}

uint64_t sub_10006C970(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000124CC(&qword_1000FD6D8, &unk_1000CE978);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006C9FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10006CA44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000124CC(&qword_1000FD6D8, &unk_1000CE978);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10006CB0C(uint64_t a1@<X8>)
{
  v3 = sub_1000C4E94();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MessageDictionary(0);
  if ((*(v1 + v7[53] + 8) & 1) == 0)
  {
    v8 = v1 + v7[56];
    if ((*(v8 + 8) & 1) == 0)
    {
      v9 = v1 + v7[57];
      if ((*(v9 + 8) & 1) == 0)
      {
        v10 = *v9;
        v11 = *v8 >= 0x7FFFFFFFFFFFFFFFuLL ? 0x7FFFFFFFFFFFFFFFLL : *v8;
        v12 = v7;
        if (v11 != sub_1000C1324())
        {
          if (v10 >= 0x7FFFFFFFFFFFFFFFLL)
          {
            v13 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v13 = v10;
          }

          v14 = v11 + v13;
          if (__OFADD__(v11, v13))
          {
            __break(1u);
            return;
          }

          v15 = (v1 + v12[54]);
          v16 = v15[1];
          if (v16)
          {
            v32 = *v15;
            v33 = v14;
            v17 = v12;

            sub_1000C4E74();
            v18 = (v1 + v12[55]);
            v20 = *v18;
            v19 = v18[1];
            v21 = (v1 + v17[58]);
            v23 = *v21;
            v22 = v21[1];
            (*(v4 + 32))(a1, v6, v3);
            v24 = _s14descr1000F0171O17AssociatedMessageVMa(0);
            v25 = (a1 + v24[5]);
            v26 = v33;
            *v25 = v32;
            v25[1] = v16;
            v27 = (a1 + v24[6]);
            *v27 = v20;
            v27[1] = v19;
            v28 = (a1 + v24[7]);
            *v28 = v11;
            v28[1] = v26;
            v29 = (a1 + v24[8]);
            *v29 = v23;
            v29[1] = v22;
            (*(*(v24 - 1) + 56))(a1, 0, 1, v24);

            return;
          }
        }
      }
    }
  }

  v30 = _s14descr1000F0171O17AssociatedMessageVMa(0);
  v31 = *(*(v30 - 8) + 56);

  v31(a1, 1, 1, v30);
}

uint64_t sub_10006CD98@<X0>(void (*a1)(void, void, void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v1198 = a3;
  v1231 = a1;
  v1232 = a2;
  v1193 = a4;
  v4 = sub_1000124CC(&qword_1000FC430, &unk_1000C9B00);
  __chkstk_darwin(v4 - 8);
  v1197 = &v1037 - v5;
  v1211 = sub_1000C5974();
  v1224 = *(v1211 - 8);
  v6 = __chkstk_darwin(v1211);
  v1196 = &v1037 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v1209 = &v1037 - v9;
  __chkstk_darwin(v8);
  v1208 = &v1037 - v10;
  v1061 = sub_1000C27A4();
  v1060 = *(v1061 - 8);
  __chkstk_darwin(v1061);
  v1062 = &v1037 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000124CC(&qword_1000FD6F0, &unk_1000CEA00);
  __chkstk_darwin(v12 - 8);
  v1064 = &v1037 - v13;
  v1067 = sub_1000C4144();
  v1066 = *(v1067 - 8);
  v14 = __chkstk_darwin(v1067);
  v1059 = &v1037 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v1063 = &v1037 - v16;
  v17 = sub_1000124CC(&qword_1000FC3B0, &qword_1000C9780);
  v18 = __chkstk_darwin(v17 - 8);
  v1139 = &v1037 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v1178 = &v1037 - v21;
  v22 = __chkstk_darwin(v20);
  v1140 = &v1037 - v23;
  v24 = __chkstk_darwin(v22);
  v1058 = &v1037 - v25;
  __chkstk_darwin(v24);
  v1069 = &v1037 - v26;
  v27 = sub_1000124CC(&qword_1000FD6F8, &qword_1000CEA10);
  v28 = __chkstk_darwin(v27 - 8);
  v1177 = &v1037 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v1144 = &v1037 - v31;
  __chkstk_darwin(v30);
  v1068 = &v1037 - v32;
  v1162 = sub_1000C27D4();
  v1163 = *(v1162 - 8);
  v33 = __chkstk_darwin(v1162);
  v1158 = &v1037 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v1128 = &v1037 - v36;
  __chkstk_darwin(v35);
  v1065 = &v1037 - v37;
  v38 = sub_1000124CC(&qword_1000FD700, &qword_1000CEA18);
  __chkstk_darwin(v38 - 8);
  v1103 = &v1037 - v39;
  v1105 = sub_1000C3304();
  v1104 = *(v1105 - 8);
  v40 = __chkstk_darwin(v1105);
  v1085 = &v1037 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v1094 = &v1037 - v42;
  v43 = sub_1000124CC(&qword_1000FD708, &qword_1000CEA20);
  __chkstk_darwin(v43 - 8);
  v1107 = &v1037 - v44;
  v1109 = sub_1000C2284();
  v1108 = *(v1109 - 8);
  v45 = __chkstk_darwin(v1109);
  v1091 = &v1037 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v1098 = &v1037 - v47;
  v48 = sub_1000124CC(&qword_1000FD710, &qword_1000CEA28);
  v49 = __chkstk_darwin(v48 - 8);
  v1057 = &v1037 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __chkstk_darwin(v49);
  v1084 = &v1037 - v52;
  v53 = __chkstk_darwin(v51);
  v1090 = &v1037 - v54;
  __chkstk_darwin(v53);
  v1119 = &v1037 - v55;
  v1171 = sub_1000C4E94();
  v1170 = *(v1171 - 8);
  v56 = __chkstk_darwin(v1171);
  v1118 = &v1037 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v1169 = &v1037 - v58;
  v59 = sub_1000124CC(&qword_1000FD718, &unk_1000CEA30);
  v60 = __chkstk_darwin(v59 - 8);
  v1136 = &v1037 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v60);
  v1185 = &v1037 - v62;
  v1187 = _s14descr1000F0171O17AssociatedMessageVMa(0);
  v1186 = *(v1187 - 1);
  __chkstk_darwin(v1187);
  v1183 = &v1037 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1000124CC(&qword_1000FC3B8, &qword_1000C9788);
  v65 = __chkstk_darwin(v64 - 8);
  v1138 = &v1037 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __chkstk_darwin(v65);
  v1083 = &v1037 - v68;
  v69 = __chkstk_darwin(v67);
  v1089 = &v1037 - v70;
  v71 = __chkstk_darwin(v69);
  v1117 = &v1037 - v72;
  __chkstk_darwin(v71);
  v1195 = &v1037 - v73;
  v1188 = sub_1000C4E14();
  v1189 = *(v1188 - 8);
  v74 = __chkstk_darwin(v1188);
  v1082 = &v1037 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v74);
  v1199 = &v1037 - v76;
  v77 = sub_1000124CC(&qword_1000FC5A8, &qword_1000CEA40);
  v78 = __chkstk_darwin(v77 - 8);
  v1204 = &v1037 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __chkstk_darwin(v78);
  v1088 = &v1037 - v81;
  v82 = __chkstk_darwin(v80);
  v1143 = &v1037 - v83;
  v84 = __chkstk_darwin(v82);
  v1116 = &v1037 - v85;
  v86 = __chkstk_darwin(v84);
  v1147 = &v1037 - v87;
  v88 = __chkstk_darwin(v86);
  v1161 = &v1037 - v89;
  v90 = __chkstk_darwin(v88);
  v1122 = &v1037 - v91;
  v92 = __chkstk_darwin(v90);
  v1056 = &v1037 - v93;
  v94 = __chkstk_darwin(v92);
  v1072 = &v1037 - v95;
  v96 = __chkstk_darwin(v94);
  v1075 = &v1037 - v97;
  v98 = __chkstk_darwin(v96);
  v1102 = &v1037 - v99;
  __chkstk_darwin(v98);
  v1174 = &v1037 - v100;
  v101 = sub_1000124CC(&qword_1000FD720, &qword_1000CEA48);
  v102 = __chkstk_darwin(v101 - 8);
  v1203 = &v1037 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = __chkstk_darwin(v102);
  v1087 = &v1037 - v105;
  v106 = __chkstk_darwin(v104);
  v1142 = &v1037 - v107;
  v108 = __chkstk_darwin(v106);
  v1115 = &v1037 - v109;
  v110 = __chkstk_darwin(v108);
  v1146 = &v1037 - v111;
  v112 = __chkstk_darwin(v110);
  v1160 = &v1037 - v113;
  v114 = __chkstk_darwin(v112);
  v1121 = &v1037 - v115;
  v116 = __chkstk_darwin(v114);
  v1055 = &v1037 - v117;
  v118 = __chkstk_darwin(v116);
  v1071 = &v1037 - v119;
  v120 = __chkstk_darwin(v118);
  v1074 = &v1037 - v121;
  v122 = __chkstk_darwin(v120);
  v1101 = &v1037 - v123;
  __chkstk_darwin(v122);
  v1173 = &v1037 - v124;
  v125 = sub_1000124CC(&qword_1000FD728, &qword_1000CEA50);
  v126 = __chkstk_darwin(v125 - 8);
  v1202 = &v1037 - ((v127 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = __chkstk_darwin(v126);
  v1086 = &v1037 - v129;
  v130 = __chkstk_darwin(v128);
  v1152 = &v1037 - v131;
  v132 = __chkstk_darwin(v130);
  v1114 = &v1037 - v133;
  v134 = __chkstk_darwin(v132);
  v1157 = &v1037 - v135;
  v136 = __chkstk_darwin(v134);
  v1168 = &v1037 - v137;
  v138 = __chkstk_darwin(v136);
  v1120 = &v1037 - v139;
  v140 = __chkstk_darwin(v138);
  v1054 = &v1037 - v141;
  v142 = __chkstk_darwin(v140);
  v1070 = &v1037 - v143;
  v144 = __chkstk_darwin(v142);
  v1073 = &v1037 - v145;
  v146 = __chkstk_darwin(v144);
  v1100 = &v1037 - v147;
  __chkstk_darwin(v146);
  v1182 = &v1037 - v148;
  v149 = sub_1000124CC(&qword_1000FD730, &qword_1000CEA58);
  v150 = __chkstk_darwin(v149 - 8);
  v1201 = &v1037 - ((v151 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = __chkstk_darwin(v150);
  v1097 = &v1037 - v153;
  v154 = __chkstk_darwin(v152);
  v1151 = &v1037 - v155;
  v156 = __chkstk_darwin(v154);
  v1127 = &v1037 - v157;
  v158 = __chkstk_darwin(v156);
  v1156 = &v1037 - v159;
  v160 = __chkstk_darwin(v158);
  v1176 = &v1037 - v161;
  v162 = __chkstk_darwin(v160);
  v1167 = &v1037 - v163;
  v164 = __chkstk_darwin(v162);
  v1132 = &v1037 - v165;
  v166 = __chkstk_darwin(v164);
  v1053 = &v1037 - v167;
  v168 = __chkstk_darwin(v166);
  v1133 = &v1037 - v169;
  v170 = __chkstk_darwin(v168);
  v1079 = &v1037 - v171;
  v172 = __chkstk_darwin(v170);
  v1081 = &v1037 - v173;
  v174 = __chkstk_darwin(v172);
  v1113 = &v1037 - v175;
  __chkstk_darwin(v174);
  v1181 = &v1037 - v176;
  v177 = sub_1000124CC(&qword_1000FD738, &qword_1000CEA60);
  v178 = __chkstk_darwin(v177 - 8);
  v1214 = &v1037 - ((v179 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = __chkstk_darwin(v178);
  v1099 = &v1037 - v181;
  __chkstk_darwin(v180);
  v1184 = &v1037 - v182;
  v1205 = sub_1000C21D4();
  v1206 = *(v1205 - 8);
  v183 = __chkstk_darwin(v1205);
  v1215 = &v1037 - ((v184 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = __chkstk_darwin(v183);
  v1110 = &v1037 - v186;
  v187 = __chkstk_darwin(v185);
  v1150 = &v1037 - v188;
  v189 = __chkstk_darwin(v187);
  v1135 = &v1037 - v190;
  v191 = __chkstk_darwin(v189);
  v1155 = &v1037 - v192;
  v193 = __chkstk_darwin(v191);
  v1166 = &v1037 - v194;
  v195 = __chkstk_darwin(v193);
  v1131 = &v1037 - v196;
  v197 = __chkstk_darwin(v195);
  v1052 = &v1037 - v198;
  v199 = __chkstk_darwin(v197);
  v1093 = &v1037 - v200;
  v201 = __chkstk_darwin(v199);
  v1095 = &v1037 - v202;
  v203 = __chkstk_darwin(v201);
  v1125 = &v1037 - v204;
  __chkstk_darwin(v203);
  v1190 = &v1037 - v205;
  v1192 = sub_1000C2214();
  v1191 = *(v1192 - 8);
  v206 = __chkstk_darwin(v1192);
  v1200 = &v1037 - ((v207 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = __chkstk_darwin(v206);
  v1092 = &v1037 - v209;
  v210 = __chkstk_darwin(v208);
  v1141 = &v1037 - v211;
  v212 = __chkstk_darwin(v210);
  v1123 = &v1037 - v213;
  v214 = __chkstk_darwin(v212);
  v1145 = &v1037 - v215;
  v216 = __chkstk_darwin(v214);
  v1175 = &v1037 - v217;
  v218 = __chkstk_darwin(v216);
  v1159 = &v1037 - v219;
  v220 = __chkstk_darwin(v218);
  v1124 = &v1037 - v221;
  v222 = __chkstk_darwin(v220);
  v1051 = &v1037 - v223;
  v224 = __chkstk_darwin(v222);
  v1134 = &v1037 - v225;
  v226 = __chkstk_darwin(v224);
  v1076 = &v1037 - v227;
  v228 = __chkstk_darwin(v226);
  v1077 = &v1037 - v229;
  v230 = __chkstk_darwin(v228);
  v1106 = &v1037 - v231;
  v232 = __chkstk_darwin(v230);
  v1172 = &v1037 - v233;
  __chkstk_darwin(v232);
  v1179 = &v1037 - v234;
  v235 = sub_1000124CC(&qword_1000FC520, &qword_1000C9D20);
  v236 = __chkstk_darwin(v235 - 8);
  v1210 = &v1037 - ((v237 + 15) & 0xFFFFFFFFFFFFFFF0);
  v238 = __chkstk_darwin(v236);
  v1096 = &v1037 - v239;
  v240 = __chkstk_darwin(v238);
  v1149 = &v1037 - v241;
  v242 = __chkstk_darwin(v240);
  v1126 = &v1037 - v243;
  v244 = __chkstk_darwin(v242);
  v1154 = &v1037 - v245;
  v246 = __chkstk_darwin(v244);
  v1165 = &v1037 - v247;
  v248 = __chkstk_darwin(v246);
  v1130 = &v1037 - v249;
  v250 = __chkstk_darwin(v248);
  v1050 = &v1037 - v251;
  v252 = __chkstk_darwin(v250);
  v1078 = &v1037 - v253;
  v254 = __chkstk_darwin(v252);
  v1080 = &v1037 - v255;
  v256 = __chkstk_darwin(v254);
  v1112 = &v1037 - v257;
  v258 = __chkstk_darwin(v256);
  v1180 = &v1037 - v259;
  __chkstk_darwin(v258);
  v1225 = &v1037 - v260;
  v1216 = type metadata accessor for MessageDictionary(0);
  v261 = __chkstk_darwin(v1216);
  v1194 = (&v1037 - ((v262 + 15) & 0xFFFFFFFFFFFFFFF0));
  v263 = __chkstk_darwin(v261);
  v1212 = &v1037 - v264;
  __chkstk_darwin(v263);
  v1207 = &v1037 - v265;
  v266 = sub_1000124CC(&qword_1000FC438, &unk_1000C9DC0);
  __chkstk_darwin(v266 - 8);
  v1217 = &v1037 - v267;
  v268 = sub_1000C1974();
  v1221 = *(v268 - 8);
  v1222 = v268;
  __chkstk_darwin(v268);
  v1220 = &v1037 - ((v269 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1218 = sub_1000C4FC4();
  v1223 = *(v1218 - 8);
  __chkstk_darwin(v1218);
  v1219 = &v1037 - ((v270 + 15) & 0xFFFFFFFFFFFFFFF0);
  v271 = sub_1000124CC(&qword_1000FD740, &qword_1000CEA68);
  __chkstk_darwin(v271 - 8);
  v1226 = &v1037 - v272;
  v273 = sub_1000C4ED4();
  v1227 = *(v273 - 8);
  v1228 = v273;
  v274 = __chkstk_darwin(v273);
  v1213 = &v1037 - ((v275 + 15) & 0xFFFFFFFFFFFFFFF0);
  v276 = __chkstk_darwin(v274);
  v1111 = &v1037 - v277;
  v278 = __chkstk_darwin(v276);
  v1148 = &v1037 - v279;
  v280 = __chkstk_darwin(v278);
  v1137 = &v1037 - v281;
  v282 = __chkstk_darwin(v280);
  v1153 = &v1037 - v283;
  v284 = __chkstk_darwin(v282);
  v1164 = &v1037 - v285;
  v286 = __chkstk_darwin(v284);
  v1129 = &v1037 - v287;
  v288 = __chkstk_darwin(v286);
  v1049 = &v1037 - v289;
  v290 = __chkstk_darwin(v288);
  v292 = &v1037 - v291;
  v293 = __chkstk_darwin(v290);
  v295 = &v1037 - v294;
  v296 = __chkstk_darwin(v293);
  v298 = &v1037 - v297;
  v299 = __chkstk_darwin(v296);
  v301 = &v1037 - v300;
  v302 = __chkstk_darwin(v299);
  v304 = &v1037 - v303;
  __chkstk_darwin(v302);
  v306 = &v1037 - v305;
  v307 = sub_1000C19B4();
  v1229 = *(v307 - 8);
  __chkstk_darwin(v307);
  v309 = &v1037 - ((v308 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C1464();
  swift_allocObject();
  v310 = sub_1000C1454();
  sub_1000778AC(&qword_1000FC428, &type metadata accessor for TopLevelDictionary, &protocol conformance descriptor for TopLevelDictionary);
  v1230 = v309;
  v311 = v1233;
  sub_1000C1444();
  if (v311)
  {
  }

  v1231 = v301;
  v1047 = v298;
  v1045 = v292;
  v1046 = v295;
  v1233 = v310;
  v1048 = v306;
  v1232 = v307;
  v313 = v1230;
  sub_1000C1994();
  v1041 = 0;
  v314 = v1227;
  v315 = v1048;
  v316 = v313;
  v317 = v1228;
  (*(v1227 + 32))(v1048, v304, v1228);
  v318 = sub_100014F70();
  v319 = sub_1000C5714();
  v1044 = sub_1000124CC(&qword_1000FC348, qword_1000C9550);
  v320 = swift_allocObject();
  v1043 = xmmword_1000C94D0;
  *(v320 + 16) = xmmword_1000C94D0;
  v321 = *(v314 + 16);
  v322 = v1226;
  v1040 = v314 + 16;
  v1039 = v321;
  v321(v1226, v315, v317);
  (*(v314 + 56))(v322, 0, 1, v317);
  v323 = sub_1000C4A84();
  v325 = v324;
  sub_100018F90(v322, &qword_1000FD740, &qword_1000CEA68);
  *(v320 + 56) = &type metadata for String;
  v326 = sub_100014FBC();
  *(v320 + 64) = v326;
  *(v320 + 32) = v323;
  *(v320 + 40) = v325;
  v327 = sub_1000C5554();
  sub_1000C1A44("Message metadata %@", 19, 2, &_mh_execute_header, v319, v327, v320);

  v328 = sub_1000C1984();
  v1226 = v329;
  v1042 = v326;
  if (v329 >> 60 != 15)
  {
    v352 = v328;
    v1214 = v318;
    isa = sub_1000C1544().super.isa;
    v354 = [(objc_class *)isa _imOptionallyDecompressData];

    v355 = sub_1000C1564();
    v357 = v356;

    v359 = v357 >> 62;
    v1215 = v355;
    v1038 = v352;
    if ((v357 >> 62) > 1)
    {
      v360 = v1223;
      v361 = v1224;
      v362 = v1221;
      v363 = v1222;
      v364 = v1220;
      if (v359 != 2)
      {
        goto LABEL_21;
      }

      v375 = *(v1215 + 16);
      v374 = *(v1215 + 24);
      v376 = __OFSUB__(v374, v375);
      v365 = v374 - v375;
      if (!v376)
      {
LABEL_17:
        if (v365 > 0)
        {
          sub_1000778AC(&qword_1000FD750, type metadata accessor for MessageDictionary, &protocol conformance descriptor for MessageDictionary);
          v377 = v1212;
          v378 = v1041;
          sub_1000C1444();
          if (v378)
          {
            v1234 = v378;
            swift_errorRetain();
            sub_1000124CC(&qword_1000FC350, &unk_1000CA170);
            v379 = v1208;
            v380 = v1211;
            if (swift_dynamicCast())
            {

              v381 = v1209;
              (*(v361 + 32))(v1209, v379, v380);
              v383 = v1220;
              v382 = v1221;
              v384 = v1222;
              (*(v1221 + 104))(v1220, enum case for TopLevelDictionary.CodingKeys.decryptedData(_:), v1222);
              sub_1000C1964();
              (*(v382 + 8))(v383, v384);
              v385 = *(v361 + 16);
              v385(v1196, v381, v380);
              sub_1000C4FA4();
              v1231 = sub_1000C5714();
              v386 = swift_allocObject();
              *(v386 + 16) = v1043;
              v387 = v1197;
              v385(v1197, v381, v380);
              (*(v361 + 56))(v387, 0, 1, v380);
              v388 = sub_1000C4A84();
              v390 = v389;
              sub_100018F90(v387, &qword_1000FC430, &unk_1000C9B00);
              v391 = v1042;
              *(v386 + 56) = &type metadata for String;
              *(v386 + 64) = v391;
              *(v386 + 32) = v388;
              *(v386 + 40) = v390;
              v392 = sub_1000C5554();
              v393 = v1231;
              sub_1000C1A44("Message unpacking error: %{public}@", 35, 2, &_mh_execute_header, v1231, v392, v386);

              v1231 = sub_1000C5714();
              v394 = swift_allocObject();
              *(v394 + 16) = v1043;
              v395 = v1223;
              v396 = *(v1223 + 2);
              v397 = v1217;
              v398 = v1218;
              v396(v1217, v1219, v1218);
              (*(v395 + 7))(v397, 0, 1, v398);
              v399 = sub_1000C4A84();
              v401 = v400;
              sub_100018F90(v397, &qword_1000FC438, &unk_1000C9DC0);
              v402 = v1042;
              *(v394 + 56) = &type metadata for String;
              *(v394 + 64) = v402;
              *(v394 + 32) = v399;
              *(v394 + 40) = v401;
              v403 = sub_1000C5554();
              v404 = v1231;
              sub_1000C1A44("Message unpacking explosion: %{public}@", 39, 2, &_mh_execute_header, v1231, v403, v394);

              sub_1000778AC(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
              swift_allocError();
              v405 = v1219;
              v396(v406, v1219, v398);
              swift_willThrow();
              sub_100018CBC(v1038, v1226);

              sub_100018CD0(v1215, v357);
              (*(v395 + 1))(v405, v398);
              (*(v1224 + 8))(v1209, v1211);
              (*(v1227 + 8))(v1048, v1228);
              (*(v1229 + 8))(v1230, v1232);
            }

            v452 = sub_1000C5714();
            v453 = swift_allocObject();
            *(v453 + 16) = v1043;
            v1234 = v378;
            v454 = sub_1000C4A84();
            v455 = v1042;
            *(v453 + 56) = &type metadata for String;
            *(v453 + 64) = v455;
            *(v453 + 32) = v454;
            *(v453 + 40) = v456;
            v457 = sub_1000C5554();
            sub_1000C1A44("Message unpacking unknown error: %{public}@", 43, 2, &_mh_execute_header, v452, v457, v453);

            swift_getErrorValue();
            swift_getDynamicType();
            v1234 = 0;
            v1235 = 0xE000000000000000;
            sub_1000C5944(22);

            v1234 = 0xD000000000000014;
            v1235 = 0x80000001000D5330;
            v1236._countAndFlagsBits = sub_1000C5D34();
            sub_1000C52E4(v1236);

            sub_1000778AC(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
            swift_allocError();
            sub_1000C4FB4();
            swift_willThrow();
            sub_100018CBC(v1038, v1226);

            sub_100018CD0(v1215, v357);

            goto LABEL_27;
          }

          v1224 = v357;
          v427 = v1207;
          sub_1000778F4(v377, v1207, type metadata accessor for MessageDictionary);
          v428 = sub_1000C5714();
          v429 = swift_allocObject();
          *(v429 + 16) = v1043;
          v430 = v1225;
          sub_1000C4EC4();
          v431 = sub_1000C1614();
          v432 = *(v431 - 8);
          v433 = *(v432 + 56);
          v1222 = (v432 + 56);
          v1223 = v433;
          (v433)(v430, 0, 1, v431);
          v434 = sub_1000C4A84();
          v436 = v435;
          sub_100018F90(v430, &qword_1000FC520, &qword_1000C9D20);
          v437 = v1042;
          *(v429 + 56) = &type metadata for String;
          *(v429 + 64) = v437;
          *(v429 + 32) = v434;
          *(v429 + 40) = v436;
          v438 = sub_1000C5554();
          sub_1000C1A44("Unpacking message (guid: %@)", 28, 2, &_mh_execute_header, v428, v438, v429);

          v439 = *(v427 + 72);
          if (v439 != 2 && (v439 & 1) != 0)
          {
            v440 = sub_1000C5714();
            v441 = swift_allocObject();
            *(v441 + 16) = v1043;
            v442 = v431;
            v443 = v437;
            v444 = v1225;
            v445 = v1048;
            sub_1000C4EC4();
            (v1223)(v444, 0, 1, v442);
            v1221 = v442;
            v446 = sub_1000C4A84();
            v448 = v447;
            sub_100018F90(v444, &qword_1000FC520, &qword_1000C9D20);
            *(v441 + 56) = &type metadata for String;
            *(v441 + 64) = v443;
            *(v441 + 32) = v446;
            *(v441 + 40) = v448;
            v449 = sub_1000C5554();
            sub_1000C1A44("Generating an iMessage app typing indicator (guid: %@)", 54, 2, &_mh_execute_header, v440, v449, v441);

            v1039(v1231, v445, v1228);
            sub_10001A380(v1184);
            v450 = v1216;

            v451 = v1190;
            sub_1000C34F4();
            v1041 = 0;
            (*(v1206 + 104))(v451, enum case for TextMessage.MessageType.typingIndicator(_:), v1205);
            (v1223)(v1180, 1, 1, v1221);
            v497 = v450[32];
            v498 = (v427 + v450[31]);
            v499 = v498[1];
            v1225 = *v498;
            v500 = *(v427 + v497 + 8);
            v1222 = *(v427 + v497);
            v501 = (v427 + v450[33]);
            v502 = v501[1];
            v1220 = *v501;
            v503 = v450[24];
            v504 = (v427 + v450[23]);
            v505 = v504[1];
            v1218 = *v504;
            v506 = *(v427 + v503 + 8);
            v1214 = *(v427 + v503);
            v507 = v450[22];
            v508 = (v427 + v450[21]);
            v1212 = *v508;
            LODWORD(v1211) = *(v508 + 8);
            v509 = *(v427 + v507 + 8);
            v474 = v427;
            v1223 = v499;
            v1221 = v500;
            v1219 = v502;
            v1217 = v505;
            v1213 = v506;
            if (v509)
            {
              v510 = *(v427 + v507);

              v1210 = sub_1000931CC(v510, v509);
              LODWORD(v1202) = v511;
            }

            else
            {

              v1210 = 0;
              LODWORD(v1202) = 1;
            }

            v553 = v1182;
            v554 = (v427 + v450[25]);
            v1209 = *v554;
            LODWORD(v1208) = *(v554 + 8);
            v555 = v427 + v450[35];
            v1206 = *v555;
            LODWORD(v1205) = *(v555 + 8);
            sub_100028FA0(v1181);
            v556 = v450[48];
            v557 = (v427 + v450[47]);
            v558 = v557[1];
            v1204 = *v557;
            v1201 = v558;
            v559 = *(v427 + v556 + 8);
            v1203 = *(v474 + v556);
            v1199 = v559;
            v560 = v450[50];
            v561 = (v474 + v450[49]);
            v562 = v561[1];
            v1200 = *v561;
            v1195 = v562;
            v563 = *(v474 + v560 + 8);
            v1198 = *(v474 + v560);
            v1194 = v563;
            v564 = v450[52];
            LODWORD(v1197) = *(v474 + v450[51]);
            v1196 = *(v474 + v564);

            sub_10008B5E0(v553);
            v1186 = *(v474 + v450[45]);
            LODWORD(v1189) = *(v474 + 97);
            LODWORD(v1188) = *(v474 + 98);
            LODWORD(v1187) = *(v474 + 99);
            v1185 = *(v474 + 104);

            sub_1000C21E4();
            sub_100018F28(v474 + v450[20], v1174, &qword_1000FC5A8, &qword_1000CEA40);
            LODWORD(v1216) = v1202 & 1;

            v522 = v1172;
            v565 = v1041;
            sub_1000C2204();
            if (v565)
            {
              sub_100018CBC(v1038, v1226);

              sub_100018CD0(v1215, v1224);
LABEL_94:
              (*(v1227 + 8))(v1048, v1228);
              (*(v1229 + 8))(v1230, v1232);
              goto LABEL_95;
            }

            sub_100018CBC(v1038, v1226);

            sub_100018CD0(v1215, v1224);
            goto LABEL_99;
          }

          v458 = v1194;
          sub_1000779BC(v427, v1194, type metadata accessor for MessageDictionary);
          v459 = v1195;
          sub_100018F28(v1198, v1195, &qword_1000FC3B8, &qword_1000C9788);
          v460 = v1199;
          Message.init(messageDictionary:validatorContext:)(v458, v459, v1199);
          v1221 = v431;
          v1041 = 0;
          v461 = *(v427 + 96);
          v462 = v1185;
          sub_10006CB0C(v1185);
          v463 = (*(v1186 + 48))(v462, 1, v1187);
          v464 = v1228;
          if (v463 == 1)
          {
            sub_100018F90(v462, &qword_1000FD718, &unk_1000CEA30);
            v466 = v1224;
            v465 = v1225;
LABEL_38:
            v512 = sub_10008ECDC();
            v513 = v1221;
            if (v512)
            {
              v514 = sub_1000C5714();
              v515 = swift_allocObject();
              *(v515 + 16) = v1043;
              v516 = v1048;
              sub_1000C4EC4();
              (v1223)(v465, 0, 1, v513);
              v517 = sub_1000C4A84();
              v519 = v518;
              sub_100018F90(v465, &qword_1000FC520, &qword_1000C9D20);
              *(v515 + 56) = &type metadata for String;
              *(v515 + 64) = v437;
              *(v515 + 32) = v517;
              *(v515 + 40) = v519;
              v520 = sub_1000C5554();
              sub_1000C1A44("Generating a tapped sticker (guid: %@)", 38, 2, &_mh_execute_header, v514, v520, v515);

              v521 = v1176;
              v474 = v1207;
              sub_100028FA0(v1176);
              v522 = v1175;
              v523 = v1230;
              v524 = v1041;
              sub_10009B77C(v474, v1230, v460, v521, v1198, v1175);
              if (v524)
              {
                sub_100018CBC(v1038, v1226);

                sub_100018CD0(v1215, v466);
                sub_100018F90(v521, &qword_1000FD730, &qword_1000CEA58);
                (*(v1189 + 8))(v460, v1188);
                (*(v1227 + 8))(v516, v1228);
                (*(v1229 + 8))(v523, v1232);
LABEL_95:
                v532 = v474;
                return sub_10007795C(v532, type metadata accessor for MessageDictionary);
              }

              sub_100018CBC(v1038, v1226);

              sub_100018CD0(v1215, v466);
              sub_100018F90(v521, &qword_1000FD730, &qword_1000CEA58);
              (*(v1189 + 8))(v460, v1188);
              v533 = v1228;
              v534 = v1229;
              v535 = v1232;
              v536 = v1227;
              v537 = v1193;
              v538 = v1192;
              v539 = v516;
              goto LABEL_100;
            }

            LODWORD(v1231) = v461;
            v525 = sub_1000C4DC4();
            v527 = v526;
            v528 = v1178;
            sub_1000C4E04();
            v529 = v1177;
            v530 = v1207;
            v531 = v1041;
            sub_100017908(v525, v527, v528, v1198, v1177);
            v1041 = v531;
            if (v531)
            {
              sub_100018CBC(v1038, v1226);

              sub_100018CD0(v1215, v466);
              sub_100018F90(v528, &qword_1000FC3B0, &qword_1000C9780);
              (*(v1189 + 8))(v460, v1188);
              (*(v1227 + 8))(v1048, v1228);
              (*(v1229 + 8))(v1230, v1232);
              v532 = v530;
              return sub_10007795C(v532, type metadata accessor for MessageDictionary);
            }

            sub_100018F90(v528, &qword_1000FC3B0, &qword_1000C9780);

            v540 = v1163;
            v541 = v1162;
            if ((*(v1163 + 48))(v529, 1, v1162) == 1)
            {
              sub_100018F90(v529, &qword_1000FD6F8, &qword_1000CEA10);
              v542 = *(v1207 + 73);
              if (v542 != 2 && (v542 & 1) != 0)
              {
                v543 = sub_1000C5714();
                v544 = swift_allocObject();
                *(v544 + 16) = v1043;
                v545 = v1225;
                v546 = v1048;
                sub_1000C4EC4();
                (v1223)(v545, 0, 1, v513);
                v547 = sub_1000C4A84();
                v549 = v548;
                sub_100018F90(v545, &qword_1000FC520, &qword_1000C9D20);
                *(v544 + 56) = &type metadata for String;
                *(v544 + 64) = v437;
                *(v544 + 32) = v547;
                *(v544 + 40) = v549;
                v550 = sub_1000C5554();
                sub_1000C1A44("Generating a audio message (guid: %@)", 37, 2, &_mh_execute_header, v543, v550, v544);

                v1039(v1137, v546, v1228);
                sub_100018F28(v1198, v1138, &qword_1000FC3B8, &qword_1000C9788);
                sub_1000C4E04();
                sub_1000C4DE4();
                v552 = *(v1207 + 80);
                v551 = *(v1207 + 88);
                if (v551 >> 60 != 15)
                {
                  sub_1000124CC(&qword_1000FD758, &unk_1000CEA70);
                  v713 = swift_allocObject();
                  *(v713 + 16) = v1043;
                  *(v713 + 32) = v552;
                  *(v713 + 40) = v551;
                }

                sub_100018C54(v552, v551);
                v714 = v1041;
                sub_1000C2234();
                v1041 = v714;
                if (v714)
                {
                  sub_100018CBC(v1038, v1226);

                  sub_100018CD0(v1215, v1224);
                  v715 = *(v1227 + 8);
                  v716 = &v1169;
LABEL_109:
                  v717 = v1228;
                  v715(*(v716 - 32), v1228);
LABEL_166:
                  (*(v1189 + 8))(v1199, v1188);
                  v715(v1048, v717);
                  (*(v1229 + 8))(v1230, v1232);
                  v532 = v1207;
                  return sub_10007795C(v532, type metadata accessor for MessageDictionary);
                }

                (*(v1206 + 104))(v1135, enum case for TextMessage.MessageType.audioMessage(_:), v1205);
                v751 = v1216;
                v752 = v1207;
                sub_100018F28(v1207 + v1216[18], v1126, &qword_1000FC520, &qword_1000C9D20);
                v753 = v751[32];
                v754 = (v752 + v751[31]);
                v755 = *v754;
                v1225 = v754[1];
                v756 = *(v752 + v753 + 8);
                v1218 = *(v752 + v753);
                v1219 = v755;
                v1223 = v756;
                v757 = (v752 + v751[33]);
                v759 = *v757;
                v758 = v757[1];
                v1217 = v759;
                v1222 = v758;
                v760 = v751[24];
                v761 = (v752 + v751[23]);
                v763 = *v761;
                v762 = v761[1];
                v1214 = v763;
                v1221 = v762;
                v764 = *(v752 + v760 + 8);
                v1213 = *(v752 + v760);
                v1220 = v764;
                v765 = v751[22];
                v766 = (v752 + v751[21]);
                v1212 = *v766;
                LODWORD(v1211) = *(v766 + 8);
                v767 = *(v752 + v765 + 8);
                if (v767)
                {
                  v768 = *(v752 + v765);

                  v1210 = sub_1000931CC(v768, v767);
                  LODWORD(v1202) = v769;
                }

                else
                {

                  v1210 = 0;
                  LODWORD(v1202) = 1;
                }

                v853 = v1216;
                v854 = v1207;
                v855 = (v1207 + v1216[25]);
                v1209 = *v855;
                LODWORD(v1208) = *(v855 + 8);
                v856 = (v1207 + v1216[35]);
                v1206 = *v856;
                LODWORD(v1205) = *(v856 + 8);
                sub_100028FA0(v1127);
                v857 = v853[48];
                v858 = (v854 + v853[47]);
                v859 = v858[1];
                v1204 = *v858;
                v1200 = v859;
                v860 = *(v854 + v857 + 8);
                v1203 = *(v854 + v857);
                v1197 = v860;
                v861 = v853[50];
                v862 = (v854 + v853[49]);
                v863 = v862[1];
                v1201 = *v862;
                v1195 = v863;
                v864 = *(v854 + v861 + 8);
                v1198 = *(v854 + v861);
                v1187 = v864;
                v865 = v853[52];
                LODWORD(v1196) = *(v854 + v853[51]);
                v866 = *(v854 + v865 + 8);
                v1194 = *(v854 + v865);
                v1190 = v866;

                sub_10008B5E0(v1114);
                v1185 = *(v854 + v853[45]);
                LODWORD(v1186) = *(v854 + 97);
                v1184 = *(v854 + 104);
                LODWORD(v1183) = *(v854 + 112);

                sub_1000C21E4();
                sub_100018F28(v854 + v853[20], v1116, &qword_1000FC5A8, &qword_1000CEA40);

                v867 = v1041;
                sub_1000C2204();
                if (v867)
                {
LABEL_150:
                  sub_100018CBC(v1038, v1226);

                  sub_100018CD0(v1215, v1224);
LABEL_158:
                  (*(v1189 + 8))(v1199, v1188);
                  (*(v1227 + 8))(v1048, v1228);
                  (*(v1229 + 8))(v1230, v1232);
                  goto LABEL_159;
                }

                sub_100018CBC(v1038, v1226);

                sub_100018CD0(v1215, v1224);
                (*(v1189 + 8))(v1199, v1188);
                v796 = &v1155;
                goto LABEL_183;
              }

              v626 = v1207;
              v627 = v1206;
              v628 = v1225;
              if (*(v1207 + 32) || *(v1207 + 48) || *(v1207 + 64))
              {
                v629 = sub_1000C5714();
                v630 = swift_allocObject();
                *(v630 + 16) = v1043;
                sub_1000C4EC4();
                (v1223)(v628, 0, 1, v513);
                v631 = sub_1000C4A84();
                v632 = v628;
                v633 = v631;
                v635 = v634;
                sub_100018F90(v632, &qword_1000FC520, &qword_1000C9D20);
                *(v630 + 56) = &type metadata for String;
                *(v630 + 64) = v437;
                *(v630 + 32) = v633;
                *(v630 + 40) = v635;
                v636 = sub_1000C5554();
                sub_1000C1A44("Generating a textMessage (guid: %@)", 35, 2, &_mh_execute_header, v629, v636, v630);

                v1039(v1148, v1048, v1228);
                v637 = v1150;
                (*(v1189 + 16))(v1150, v1199, v1188);
                (*(v627 + 104))(v637, enum case for TextMessage.MessageType.textMessage(_:), v1205);
                v638 = v1216;
                sub_100018F28(v626 + v1216[18], v1149, &qword_1000FC520, &qword_1000C9D20);
                v639 = (v626 + v638[31]);
                v640 = *v639;
                v641 = v639[1];
                v642 = (v626 + v638[32]);
                v643 = *v642;
                v644 = v642[1];
                v645 = (v626 + v638[33]);
                v646 = *v645;
                v647 = v645[1];
                v648 = (v626 + v638[23]);
                v649 = *v648;
                v650 = v648[1];
                v651 = (v626 + v638[24]);
                v653 = *v651;
                v652 = v651[1];
                v654 = v626 + v638[21];
                v655 = *v654;
                v656 = *(v654 + 8);
                v657 = (v626 + v638[22]);
                v658 = v657[1];
                v474 = v626;
                v1225 = v640;
                v1222 = v643;
                v1223 = v641;
                v1220 = v646;
                v1221 = v644;
                v1218 = v649;
                v1219 = v647;
                v1217 = v650;
                v1214 = v653;
                v1213 = v652;
                v1212 = v655;
                LODWORD(v1211) = v656;
                if (v658)
                {
                  v659 = *v657;

                  v1210 = sub_1000931CC(v659, v658);
                  LODWORD(v1202) = v660;
                }

                else
                {

                  v1210 = 0;
                  LODWORD(v1202) = 1;
                }

                v695 = v1152;
                v696 = (v626 + v638[25]);
                v1209 = *v696;
                LODWORD(v1208) = *(v696 + 8);
                v697 = v626 + v638[35];
                v1206 = *v697;
                LODWORD(v1205) = *(v697 + 8);
                sub_100028FA0(v1151);
                v698 = v638[48];
                v699 = (v626 + v638[47]);
                v700 = v699[1];
                v1204 = *v699;
                v1201 = v700;
                v701 = *(v626 + v698 + 8);
                v1203 = *(v626 + v698);
                v1198 = v701;
                v702 = v638[50];
                v703 = (v626 + v638[49]);
                v704 = v703[1];
                v1200 = *v703;
                v1194 = v704;
                v705 = *(v626 + v702 + 8);
                v1197 = *(v626 + v702);
                v1190 = v705;
                v706 = v638[52];
                LODWORD(v1196) = *(v626 + v638[51]);
                v1195 = *(v626 + v706);

                sub_10008B5E0(v695);
                v1184 = *(v626 + v638[45]);
                LODWORD(v1187) = *(v626 + 97);
                LODWORD(v1186) = *(v626 + 98);
                LODWORD(v1185) = *(v626 + 99);
                v1183 = *(v626 + 104);

                sub_1000C21E4();
                sub_100018F28(v626 + v638[20], v1143, &qword_1000FC5A8, &qword_1000CEA40);
                LODWORD(v1216) = v1202 & 1;

                v522 = v1141;
                v707 = v1041;
                sub_1000C2204();
                if (v707)
                {
                  sub_100018CBC(v1038, v1226);

                  sub_100018CD0(v1215, v1224);
                  goto LABEL_93;
                }

                sub_100018CBC(v1038, v1226);

                sub_100018CD0(v1215, v1224);
LABEL_98:
                (*(v1189 + 8))(v1199, v1188);
LABEL_99:
                v534 = v1229;
                v523 = v1230;
                v535 = v1232;
                v536 = v1227;
                v533 = v1228;
                v539 = v1048;
                v537 = v1193;
                v538 = v1192;
LABEL_100:
                v708 = v1191;
                v709 = v1179;
LABEL_101:
                (*(v536 + 8))(v539, v533);
                (*(v534 + 8))(v523, v535);
                sub_10007795C(v1207, type metadata accessor for MessageDictionary);
                v710 = *(v708 + 32);
                v710(v709, v522, v538);
                return (v710)(v537, v709, v538);
              }

              v797 = sub_1000C5714();
              v798 = swift_allocObject();
              *(v798 + 16) = v1043;
              v799 = v1048;
              sub_1000C4EC4();
              (v1223)(v628, 0, 1, v513);
              v800 = sub_1000C4A84();
              v801 = v628;
              v803 = v802;
              sub_100018F90(v801, &qword_1000FC520, &qword_1000C9D20);
              *(v798 + 56) = &type metadata for String;
              *(v798 + 64) = v437;
              *(v798 + 32) = v800;
              *(v798 + 40) = v803;
              v804 = sub_1000C5554();
              sub_1000C1A44("Generating a cancel typing indicator (guid: %@)", 47, 2, &_mh_execute_header, v797, v804, v798);

              v1039(v1111, v799, v1228);
              sub_10001A380(v1099);

              v805 = v1041;
              sub_1000C34F4();
              v1041 = v805;
              if (v805)
              {
                sub_100018CBC(v1038, v1226);

                sub_100018CD0(v1215, v1224);
                v715 = *(v1227 + 8);
                v716 = &v1143;
                goto LABEL_109;
              }

              (*(v1206 + 104))(v1110, enum case for TextMessage.MessageType.typingIndicator(_:), v1205);
              (v1223)(v1096, 1, 1, v1221);
              v890 = v1216[32];
              v891 = (v1207 + v1216[31]);
              v892 = *v891;
              v1225 = v891[1];
              v893 = *(v1207 + v890 + 8);
              v1218 = *(v1207 + v890);
              v1219 = v892;
              v1223 = v893;
              v894 = (v1207 + v1216[33]);
              v896 = *v894;
              v895 = v894[1];
              v1217 = v896;
              v1222 = v895;
              v897 = v1216[24];
              v898 = (v1207 + v1216[23]);
              v900 = *v898;
              v899 = v898[1];
              v1214 = v900;
              v1221 = v899;
              v901 = *(v1207 + v897 + 8);
              v1213 = *(v1207 + v897);
              v1220 = v901;
              v902 = v1216[22];
              v903 = (v1207 + v1216[21]);
              v1212 = *v903;
              LODWORD(v1211) = *(v903 + 8);
              v904 = *(v1207 + v902 + 8);
              if (v904)
              {
                v905 = *(v1207 + v902);

                v1210 = sub_1000931CC(v905, v904);
                LODWORD(v1202) = v906;
              }

              else
              {

                v1210 = 0;
                LODWORD(v1202) = 1;
              }

              v933 = v1216;
              v934 = v1207;
              v935 = (v1207 + v1216[25]);
              v1209 = *v935;
              LODWORD(v1208) = *(v935 + 8);
              v936 = (v1207 + v1216[35]);
              v1206 = *v936;
              LODWORD(v1205) = *(v936 + 8);
              sub_100028FA0(v1097);
              v937 = v933[48];
              v938 = (v934 + v933[47]);
              v939 = v938[1];
              v1204 = *v938;
              v1200 = v939;
              v940 = *(v934 + v937 + 8);
              v1203 = *(v934 + v937);
              v1198 = v940;
              v941 = v933[50];
              v942 = (v934 + v933[49]);
              v943 = v942[1];
              v1201 = *v942;
              v1196 = v943;
              v944 = *(v934 + v941 + 8);
              v1197 = *(v934 + v941);
              v1190 = v944;
              v945 = v933[52];
              LODWORD(v1195) = *(v934 + v933[51]);
              v1194 = *(v934 + v945);

              sub_10008B5E0(v1086);
              v1186 = *(v934 + v933[45]);
              LODWORD(v1187) = *(v934 + 97);
              v1185 = *(v934 + 104);

              sub_1000C21E4();
              sub_100018F28(v934 + v933[20], v1088, &qword_1000FC5A8, &qword_1000CEA40);

              v946 = v1041;
              sub_1000C2204();
              if (v946)
              {
                goto LABEL_150;
              }

              sub_100018CBC(v1038, v1226);

              sub_100018CD0(v1215, v1224);
              (*(v1189 + 8))(v1199, v1188);
              v796 = &v1124;
LABEL_183:
              v522 = *(v796 - 32);
              goto LABEL_99;
            }

            v583 = v1158;
            (*(v540 + 32))(v1158, v529, v541);
            LODWORD(v1220) = sub_1000C5514();
            v584 = sub_1000C5714();
            v585 = swift_allocObject();
            *(v585 + 16) = xmmword_1000CBF00;
            v1234 = sub_1000C27C4();
            v1235 = v586;
            v587 = sub_1000C4A84();
            v589 = v588;

            *(v585 + 56) = &type metadata for String;
            *(v585 + 64) = v437;
            *(v585 + 32) = v587;
            *(v585 + 40) = v589;
            v590 = v513;
            v591 = v437;
            v592 = v1225;
            sub_1000C4EC4();
            (v1223)(v592, 0, 1, v590);
            v593 = sub_1000C4A84();
            v595 = v594;
            sub_100018F90(v592, &qword_1000FC520, &qword_1000C9D20);
            *(v585 + 96) = &type metadata for String;
            *(v585 + 104) = v591;
            *(v585 + 72) = v593;
            *(v585 + 80) = v595;
            sub_1000C1A54(v1220, &_mh_execute_header, v584, "Generating an iMessage app message: %@ (guid: %@)", 49, 2, v585);

            v1039(v1153, v1048, v1228);
            v596 = v1155;
            (*(v1163 + 16))(v1155, v583, v1162);
            (*(v1206 + 104))(v596, enum case for TextMessage.MessageType.balloonPlugin(_:), v1205);
            v474 = v1207;
            v597 = v1216;
            sub_100018F28(v1207 + v1216[18], v1154, &qword_1000FC520, &qword_1000C9D20);
            v598 = v597[32];
            v599 = (v474 + v597[31]);
            v600 = v599[1];
            v1225 = *v599;
            v601 = *(v474 + v598 + 8);
            v1222 = *(v474 + v598);
            v602 = (v474 + v597[33]);
            v603 = v602[1];
            v1220 = *v602;
            v604 = v597[24];
            v605 = (v474 + v597[23]);
            v606 = v605[1];
            v1218 = *v605;
            v607 = *(v474 + v604 + 8);
            v1214 = *(v474 + v604);
            v608 = v597[22];
            v609 = (v474 + v597[21]);
            v1212 = *v609;
            LODWORD(v1211) = *(v609 + 8);
            v610 = *(v474 + v608 + 8);
            v1223 = v600;
            v1221 = v601;
            v1219 = v603;
            v1217 = v606;
            v1213 = v607;
            if (v610)
            {
              v611 = *(v474 + v608);

              v1210 = sub_1000931CC(v611, v610);
              LODWORD(v1202) = v612;
            }

            else
            {

              v1210 = 0;
              LODWORD(v1202) = 1;
            }

            v668 = v1147;
            v669 = v1157;
            v670 = (v474 + v597[25]);
            v1209 = *v670;
            LODWORD(v1208) = *(v670 + 8);
            v671 = v474 + v597[35];
            v1206 = *v671;
            LODWORD(v1205) = *(v671 + 8);
            sub_100028FA0(v1156);
            v672 = v597[48];
            v673 = (v474 + v597[47]);
            v674 = v673[1];
            v1204 = *v673;
            v1200 = v674;
            v675 = *(v474 + v672 + 8);
            v1203 = *(v474 + v672);
            v1197 = v675;
            v676 = v597[50];
            v677 = (v474 + v597[49]);
            v678 = v677[1];
            v1201 = *v677;
            v1195 = v678;
            v679 = *(v474 + v676 + 8);
            v1198 = *(v474 + v676);
            v1190 = v679;
            v680 = v597[52];
            LODWORD(v1196) = *(v474 + v597[51]);
            v1194 = *(v474 + v680);

            sub_10008B5E0(v669);
            v1186 = *(v474 + v597[45]);
            LODWORD(v1187) = *(v474 + 97);
            v1185 = *(v474 + 104);

            sub_1000C21E4();
            sub_100018F28(v474 + v597[20], v668, &qword_1000FC5A8, &qword_1000CEA40);
            LODWORD(v1216) = v1202 & 1;

            v522 = v1145;
            v681 = v1041;
            sub_1000C2204();
            if (!v681)
            {
              sub_100018CBC(v1038, v1226);

              sub_100018CD0(v1215, v1224);
              (*(v1163 + 8))(v1158, v1162);
              goto LABEL_98;
            }

            sub_100018CBC(v1038, v1226);

            sub_100018CD0(v1215, v1224);
            (*(v1163 + 8))(v1158, v1162);
LABEL_93:
            (*(v1189 + 8))(v1199, v1188);
            goto LABEL_94;
          }

          v467 = v1183;
          sub_1000778F4(v462, v1183, _s14descr1000F0171O17AssociatedMessageVMa);
          v465 = v1225;
          if (!*v427)
          {
            sub_10007795C(v467, _s14descr1000F0171O17AssociatedMessageVMa);
            v460 = v1199;
            v466 = v1224;
            goto LABEL_38;
          }

          LODWORD(v1231) = v461;
          v468 = v1170;
          v363 = *(v1170 + 16);
          v469 = v1169;
          v470 = v1171;
          v363(v1169, v467, v1171);
          v358 = (*(v468 + 88))(v469, v470);
          v471 = v1224;
          if (v358 == enum case for TapBack.AssociatedMessageType.unspecified(_:))
          {
            v1039(v1164, v1048, v464);
            v472 = v1166;
            (*(v1189 + 16))(v1166, v1199, v1188);
            (*(v1206 + 104))(v472, enum case for TextMessage.MessageType.textMessage(_:), v1205);
            v473 = v1216;
            v474 = v1207;
            sub_100018F28(v1207 + v1216[18], v1165, &qword_1000FC520, &qword_1000C9D20);
            v475 = (v474 + v473[31]);
            v476 = *v475;
            v477 = v475[1];
            v478 = (v474 + v473[32]);
            v479 = *v478;
            v480 = v478[1];
            v481 = (v474 + v473[33]);
            v482 = *v481;
            v483 = v481[1];
            v484 = (v474 + v473[23]);
            v485 = *v484;
            v486 = v484[1];
            v487 = (v474 + v473[24]);
            v489 = *v487;
            v488 = v487[1];
            v490 = v474 + v473[21];
            v491 = *v490;
            v492 = *(v490 + 8);
            v493 = (v474 + v473[22]);
            v494 = v493[1];
            v1225 = v476;
            v1222 = v479;
            v1223 = v477;
            v1220 = v482;
            v1221 = v480;
            v1218 = v485;
            v1219 = v483;
            v1217 = v486;
            v1214 = v489;
            v1213 = v488;
            v1212 = v491;
            LODWORD(v1211) = v492;
            if (v494)
            {
              v495 = *v493;

              v1210 = sub_1000931CC(v495, v494);
              LODWORD(v1202) = v496;
            }

            else
            {

              v1210 = 0;
              LODWORD(v1202) = 1;
            }

            v613 = v1168;
            v614 = (v474 + v473[25]);
            v1209 = *v614;
            LODWORD(v1208) = *(v614 + 8);
            v615 = v474 + v473[35];
            v1206 = *v615;
            LODWORD(v1205) = *(v615 + 8);
            sub_100028FA0(v1167);
            v616 = v473[48];
            v617 = (v474 + v473[47]);
            v618 = v617[1];
            v1204 = *v617;
            v1201 = v618;
            v619 = *(v474 + v616 + 8);
            v1203 = *(v474 + v616);
            v1198 = v619;
            v620 = v473[50];
            v621 = (v474 + v473[49]);
            v622 = v621[1];
            v1200 = *v621;
            v1194 = v622;
            v623 = *(v474 + v620 + 8);
            v1197 = *(v474 + v620);
            v1190 = v623;
            v624 = v473[52];
            LODWORD(v1196) = *(v474 + v473[51]);
            v1195 = *(v474 + v624);

            sub_10008B5E0(v613);
            v1184 = *(v474 + v473[45]);
            LODWORD(v1187) = *(v474 + 97);
            LODWORD(v1186) = *(v474 + 98);
            LODWORD(v1185) = *(v474 + 99);
            v1182 = *(v474 + 104);

            sub_1000C21E4();
            sub_100018F28(v474 + v473[20], v1161, &qword_1000FC5A8, &qword_1000CEA40);
            LODWORD(v1216) = v1202 & 1;

            v522 = v1159;
            v625 = v1041;
            sub_1000C2204();
            if (!v625)
            {
              sub_100018CBC(v1038, v1226);

              sub_100018CD0(v1215, v1224);
              sub_10007795C(v1183, _s14descr1000F0171O17AssociatedMessageVMa);
              goto LABEL_98;
            }

            sub_100018CBC(v1038, v1226);

            sub_100018CD0(v1215, v1224);
            sub_10007795C(v1183, _s14descr1000F0171O17AssociatedMessageVMa);
            goto LABEL_93;
          }

          if (v358 == enum case for TapBack.AssociatedMessageType.edit(_:))
          {
            v1234 = sub_1000C4E84();
            sub_1000C5BE4();
            sub_1000778AC(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
            swift_allocError();
            sub_1000C4FB4();
            swift_willThrow();
            sub_100018CBC(v1038, v1226);

            sub_100018CD0(v1215, v471);
            sub_10007795C(v467, _s14descr1000F0171O17AssociatedMessageVMa);
            (*(v1189 + 8))(v1199, v1188);
            (*(v1227 + 8))(v1048, v464);
LABEL_45:
            (*(v1229 + 8))(v1230, v1232);
            return sub_10007795C(v1207, type metadata accessor for MessageDictionary);
          }

          if (v358 == enum case for TapBack.AssociatedMessageType.breadcrumbUnconsumed(_:) || v358 == enum case for TapBack.AssociatedMessageType.breadcrumbConsumed(_:))
          {
            v661 = v1199;
            v662 = sub_1000C4DC4();
            v664 = v663;
            v665 = v1140;
            sub_1000C4E04();
            v666 = v1144;
            v667 = v1041;
            sub_100017908(v662, v664, v665, v1198, v1144);
            if (!v667)
            {
              v1041 = 0;
              sub_100018F90(v665, &qword_1000FC3B0, &qword_1000C9780);

              if ((*(v1163 + 48))(v666, 1, v1162) == 1)
              {
                sub_100018F90(v1144, &qword_1000FD6F8, &qword_1000CEA10);
                v711 = v1183;
                v1234 = sub_1000C4E84();
                sub_1000C5BE4();
                sub_1000778AC(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
                swift_allocError();
LABEL_104:
                sub_1000C4FB4();
                swift_willThrow();
                sub_100018CBC(v1038, v1226);

                sub_100018CD0(v1215, v1224);
LABEL_105:
                v712 = v711;
LABEL_145:
                sub_10007795C(v712, _s14descr1000F0171O17AssociatedMessageVMa);
                (*(v1189 + 8))(v1199, v1188);
                (*(v1227 + 8))(v1048, v1228);
                goto LABEL_45;
              }

              v718 = v1128;
              (*(v1163 + 32))(v1128, v1144, v1162);
              LODWORD(v1220) = sub_1000C5514();
              v719 = sub_1000C5714();
              v720 = swift_allocObject();
              *(v720 + 16) = xmmword_1000CBF00;
              v1234 = sub_1000C27C4();
              v1235 = v721;
              v722 = sub_1000C4A84();
              v724 = v723;

              v725 = v1042;
              *(v720 + 56) = &type metadata for String;
              *(v720 + 64) = v725;
              *(v720 + 32) = v722;
              *(v720 + 40) = v724;
              v726 = v1225;
              v727 = v1048;
              sub_1000C4EC4();
              (v1223)(v726, 0, 1, v1221);
              v728 = sub_1000C4A84();
              v730 = v729;
              sub_100018F90(v726, &qword_1000FC520, &qword_1000C9D20);
              *(v720 + 96) = &type metadata for String;
              *(v720 + 104) = v725;
              *(v720 + 72) = v728;
              *(v720 + 80) = v730;
              sub_1000C1A54(v1220, &_mh_execute_header, v719, "Generating an iMessage app message breadcrumb: %@ (guid: %@)", 60, 2, v720);

              v1039(v1129, v727, v1228);
              v731 = v1131;
              (*(v1163 + 16))(v1131, v718, v1162);
              (*(v1206 + 104))(v731, enum case for TextMessage.MessageType.balloonPlugin(_:), v1205);
              v732 = v1216;
              v733 = v1207;
              sub_100018F28(v1207 + v1216[18], v1130, &qword_1000FC520, &qword_1000C9D20);
              v734 = v732[32];
              v735 = (v733 + v732[31]);
              v736 = *v735;
              v1225 = v735[1];
              v737 = *(v733 + v734 + 8);
              v1218 = *(v733 + v734);
              v1219 = v736;
              v1223 = v737;
              v738 = (v733 + v732[33]);
              v740 = *v738;
              v739 = v738[1];
              v1217 = v740;
              v1222 = v739;
              v741 = v732[24];
              v742 = (v733 + v732[23]);
              v744 = *v742;
              v743 = v742[1];
              v1214 = v744;
              v1221 = v743;
              v745 = *(v733 + v741 + 8);
              v1213 = *(v733 + v741);
              v1220 = v745;
              v746 = v732[22];
              v747 = (v733 + v732[21]);
              v1212 = *v747;
              LODWORD(v1211) = *(v747 + 8);
              v748 = *(v733 + v746 + 8);
              if (v748)
              {
                v749 = *(v733 + v746);

                v1184 = sub_1000931CC(v749, v748);
                LODWORD(v1182) = v750;
              }

              else
              {

                v1184 = 0;
                LODWORD(v1182) = 1;
              }

              v779 = v1216;
              v780 = v1207;
              v781 = (v1207 + v1216[25]);
              v1210 = *v781;
              LODWORD(v1209) = *(v781 + 8);
              v782 = (v1207 + v1216[35]);
              v1208 = *v782;
              LODWORD(v1206) = *(v782 + 8);
              sub_100028FA0(v1132);
              v783 = v779[48];
              v784 = (v780 + v779[47]);
              v785 = v784[1];
              v1205 = *v784;
              v1202 = v785;
              v786 = *(v780 + v783 + 8);
              v1204 = *(v780 + v783);
              v1200 = v786;
              v787 = v779[50];
              v788 = (v780 + v779[49]);
              v789 = v788[1];
              v1203 = *v788;
              v1197 = v789;
              v790 = *(v780 + v787 + 8);
              v1201 = *(v780 + v787);
              v1194 = v790;
              v791 = v779[52];
              LODWORD(v1198) = *(v780 + v779[51]);
              v792 = *(v780 + v791 + 8);
              v1196 = *(v780 + v791);
              v1195 = v792;

              sub_10008B5E0(v1120);
              v1187 = *(v780 + v779[45]);
              LODWORD(v1190) = *(v780 + 97);
              v1186 = *(v780 + 104);
              LODWORD(v1185) = *(v780 + 112);

              sub_1000C21E4();
              sub_100018F28(v780 + v779[20], v1122, &qword_1000FC5A8, &qword_1000CEA40);

              v793 = v1041;
              sub_1000C2204();
              if (!v793)
              {
                sub_100018CBC(v1038, v1226);

                sub_100018CD0(v1215, v1224);
                (*(v1163 + 8))(v1128, v1162);
                sub_10007795C(v1183, _s14descr1000F0171O17AssociatedMessageVMa);
                (*(v1189 + 8))(v1199, v1188);
                v796 = &v1156;
                goto LABEL_183;
              }

              sub_100018CBC(v1038, v1226);

              sub_100018CD0(v1215, v1224);
              v794 = *(v1163 + 8);
              v795 = &v1160;
LABEL_123:
              v794(*(v795 - 32), v1162);
              goto LABEL_157;
            }

            sub_100018CBC(v1038, v1226);

            sub_100018CD0(v1215, v471);
            sub_100018F90(v665, &qword_1000FC3B0, &qword_1000C9780);
            sub_10007795C(v1183, _s14descr1000F0171O17AssociatedMessageVMa);
            (*(v1189 + 8))(v661, v1188);
LABEL_74:
            (*(v1227 + 8))(v1048, v1228);
            (*(v1229 + 8))(v1230, v1232);
            return sub_10007795C(v1207, type metadata accessor for MessageDictionary);
          }

          if (v358 == enum case for TapBack.AssociatedMessageType.sticker(_:))
          {
            v566 = v1224;
            v567 = sub_1000C5714();
            v568 = swift_allocObject();
            *(v568 + 16) = xmmword_1000CBF00;
            v569 = v1183;
            v570 = v1136;
            sub_1000779BC(v1183, v1136, _s14descr1000F0171O17AssociatedMessageVMa);
            (*(v1186 + 56))(v570, 0, 1, v1187);
            v571 = sub_1000C4A84();
            v573 = v572;
            sub_100018F90(v570, &qword_1000FD718, &unk_1000CEA30);
            *(v568 + 56) = &type metadata for String;
            *(v568 + 64) = v437;
            *(v568 + 32) = v571;
            *(v568 + 40) = v573;
            v574 = v1225;
            sub_1000C4EC4();
            (v1223)(v574, 0, 1, v1221);
            v575 = sub_1000C4A84();
            v577 = v576;
            sub_100018F90(v574, &qword_1000FC520, &qword_1000C9D20);
            *(v568 + 96) = &type metadata for String;
            *(v568 + 104) = v437;
            *(v568 + 72) = v575;
            *(v568 + 80) = v577;
            v578 = sub_1000C5554();
            sub_1000C1A44("Generating an associated sticker: %@ (guid: %@)", 47, 2, &_mh_execute_header, v567, v578, v568);

            v579 = v1133;
            v580 = v1207;
            sub_100028FA0(v1133);
            v523 = v1230;
            v581 = v1199;
            v582 = v1041;
            sub_10009B77C(v580, v1230, v1199, v579, v1198, v1134);
            if (!v582)
            {
              sub_100018CBC(v1038, v1226);

              sub_100018CD0(v1215, v566);
              sub_100018F90(v579, &qword_1000FD730, &qword_1000CEA58);
              sub_10007795C(v569, _s14descr1000F0171O17AssociatedMessageVMa);
              (*(v1189 + 8))(v581, v1188);
              v522 = v1134;
              v533 = v1228;
              v534 = v1229;
              v535 = v1232;
              v536 = v1227;
              v537 = v1193;
              v538 = v1192;
              v708 = v1191;
              v709 = v1179;
              v539 = v1048;
              goto LABEL_101;
            }

            sub_100018CBC(v1038, v1226);

            sub_100018CD0(v1215, v566);
            sub_100018F90(v579, &qword_1000FD730, &qword_1000CEA58);
            sub_10007795C(v569, _s14descr1000F0171O17AssociatedMessageVMa);
            (*(v1189 + 8))(v581, v1188);
            (*(v1227 + 8))(v1048, v1228);
            (*(v1229 + 8))(v523, v1232);
LABEL_159:
            v532 = v1207;
            return sub_10007795C(v532, type metadata accessor for MessageDictionary);
          }

          if (v358 == enum case for TapBack.AssociatedMessageType.tapbackHeart(_:) || v358 == enum case for TapBack.AssociatedMessageType.tapbackThumbsUp(_:) || v358 == enum case for TapBack.AssociatedMessageType.tapbackThumbsDown(_:) || v358 == enum case for TapBack.AssociatedMessageType.tapbackHa(_:) || v358 == enum case for TapBack.AssociatedMessageType.tapbackExclamation(_:) || v358 == enum case for TapBack.AssociatedMessageType.tapbackQuestionMark(_:))
          {
LABEL_140:

            v1220 = sub_1000C5714();
            v819 = swift_allocObject();
            *(v819 + 16) = xmmword_1000CBF00;
            v820 = v1136;
            sub_1000779BC(v1183, v1136, _s14descr1000F0171O17AssociatedMessageVMa);
            (*(v1186 + 56))(v820, 0, 1, v1187);
            v821 = sub_1000C4A84();
            v823 = v822;
            sub_100018F90(v820, &qword_1000FD718, &unk_1000CEA30);
            v824 = v1042;
            *(v819 + 56) = &type metadata for String;
            *(v819 + 64) = v824;
            *(v819 + 32) = v821;
            *(v819 + 40) = v823;
            v825 = v1225;
            sub_1000C4EC4();
            (v1223)(v825, 0, 1, v1221);
            v826 = sub_1000C4A84();
            v828 = v827;
            sub_100018F90(v825, &qword_1000FC520, &qword_1000C9D20);
            *(v819 + 96) = &type metadata for String;
            *(v819 + 104) = v824;
            *(v819 + 72) = v826;
            *(v819 + 80) = v828;
            v829 = sub_1000C5554();
            v830 = v1220;
            sub_1000C1A44("Generating a tapback: %@ (guid: %@)", 35, 2, &_mh_execute_header, v1220, v829, v819);

            if (*(v1207 + 32))
            {
              v1225 = *(v1207 + 24);
              v1039(v1047, v1048, v1228);
              sub_100018F28(v1198, v1117, &qword_1000FC3B8, &qword_1000C9788);
              v831 = v1183;
              v363(v1118, v1183, v1171);
              v832 = *(v831 + v1187[5]);
              v1222 = *(v831 + v1187[6]);
              v1223 = v832;
              v1221 = *(v831 + v1187[7] + 8);

              sub_100029204(v1119);
              v833 = v1041;
              sub_1000C4EA4();
              v1041 = v833;
              if (v833)
              {
                sub_100018CBC(v1038, v1226);

                sub_100018CD0(v1215, v1224);
                v717 = v1228;
                v715 = *(v1227 + 8);
                v715(v1047, v1228);
LABEL_165:
                sub_10007795C(v1183, _s14descr1000F0171O17AssociatedMessageVMa);
                goto LABEL_166;
              }

              (*(v1206 + 104))(v1125, enum case for TextMessage.MessageType.tapback(_:), v1205);
              v834 = v1216;
              v835 = v1207;
              sub_100018F28(v1207 + v1216[18], v1112, &qword_1000FC520, &qword_1000C9D20);
              v836 = v834[32];
              v837 = (v835 + v834[31]);
              v838 = *v837;
              v1225 = v837[1];
              v839 = *(v835 + v836 + 8);
              v1218 = *(v835 + v836);
              v1219 = v838;
              v1223 = v839;
              v840 = (v835 + v834[33]);
              v842 = *v840;
              v841 = v840[1];
              v1217 = v842;
              v1222 = v841;
              v843 = v834[24];
              v844 = (v835 + v834[23]);
              v846 = *v844;
              v845 = v844[1];
              v1214 = v846;
              v1221 = v845;
              v847 = *(v835 + v843 + 8);
              v1213 = *(v835 + v843);
              v1220 = v847;
              v848 = v834[22];
              v849 = (v835 + v834[21]);
              v1212 = *v849;
              LODWORD(v1211) = *(v849 + 8);
              v850 = *(v835 + v848 + 8);
              if (v850)
              {
                v851 = *(v835 + v848);

                v1210 = sub_1000931CC(v851, v850);
                LODWORD(v1202) = v852;
              }

              else
              {

                v1210 = 0;
                LODWORD(v1202) = 1;
              }

              v875 = v1216;
              v876 = v1207;
              v877 = (v1207 + v1216[25]);
              v1209 = *v877;
              LODWORD(v1208) = *(v877 + 8);
              v878 = (v1207 + v1216[35]);
              v1206 = *v878;
              LODWORD(v1205) = *(v878 + 8);
              sub_100028FA0(v1113);
              v879 = v875[48];
              v880 = (v876 + v875[47]);
              v881 = v880[1];
              v1204 = *v880;
              v1200 = v881;
              v882 = *(v876 + v879 + 8);
              v1203 = *(v876 + v879);
              v1197 = v882;
              v883 = v875[50];
              v884 = (v876 + v875[49]);
              v885 = v884[1];
              v1201 = *v884;
              v1195 = v885;
              v886 = *(v876 + v883 + 8);
              v1198 = *(v876 + v883);
              v1187 = v886;
              v887 = v875[52];
              LODWORD(v1196) = *(v876 + v875[51]);
              v888 = *(v876 + v887 + 8);
              v1194 = *(v876 + v887);
              v1190 = v888;

              sub_10008B5E0(v1100);
              v1185 = *(v876 + v875[45]);
              LODWORD(v1186) = *(v876 + 97);
              v1184 = *(v876 + 104);
              LODWORD(v1182) = *(v876 + 112);

              sub_1000C21E4();
              sub_100018F28(v876 + v875[20], v1102, &qword_1000FC5A8, &qword_1000CEA40);

              v889 = v1041;
              sub_1000C2204();
              if (!v889)
              {
                sub_100018CBC(v1038, v1226);

                sub_100018CD0(v1215, v1224);
                sub_10007795C(v1183, _s14descr1000F0171O17AssociatedMessageVMa);
                (*(v1189 + 8))(v1199, v1188);
                v796 = &v1138;
                goto LABEL_183;
              }

              sub_100018CBC(v1038, v1226);

              sub_100018CD0(v1215, v1224);
LABEL_157:
              sub_10007795C(v1183, _s14descr1000F0171O17AssociatedMessageVMa);
              goto LABEL_158;
            }

LABEL_143:

            goto LABEL_144;
          }

          if (v358 == enum case for TapBack.AssociatedMessageType.tapbackEmoji(_:))
          {
LABEL_86:

            v682 = sub_1000C5714();
            v683 = swift_allocObject();
            *(v683 + 16) = v1043;
            v684 = v1225;
            sub_1000C4EC4();
            (v1223)(v684, 0, 1, v1221);
            v685 = sub_1000C4A84();
            v687 = v686;
            sub_100018F90(v684, &qword_1000FC520, &qword_1000C9D20);
            v688 = v1042;
            *(v683 + 56) = &type metadata for String;
            *(v683 + 64) = v688;
            *(v683 + 32) = v685;
            *(v683 + 40) = v687;
            v689 = sub_1000C5554();
            sub_1000C1A44("Generating an emoji tapback (guid: %@)", 38, 2, &_mh_execute_header, v682, v689, v683);

            if (*(v1207 + 32))
            {
              v690 = (v1183 + v1187[8]);
              if (v690[1])
              {
                v1223 = *(v1207 + 24);
                v1225 = *v690;

                sub_1000C4E84();
                v691 = v1107;
                sub_1000C2274();
                if ((*(v1108 + 48))(v691, 1, v1109) == 1)
                {

                  v692 = &qword_1000FD708;
                  v693 = &qword_1000CEA20;
                  v694 = &v1139;
LABEL_119:
                  sub_100018F90(*(v694 - 32), v692, v693);
LABEL_144:
                  sub_1000778AC(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
                  swift_allocError();
                  sub_1000C4FB4();
                  swift_willThrow();
                  sub_100018CBC(v1038, v1226);

                  sub_100018CD0(v1215, v1224);
                  v712 = v1183;
                  goto LABEL_145;
                }

                v868 = v1108;
                v869 = v1098;
                v870 = v1109;
                (*(v1108 + 32))(v1098, v1107, v1109);
                v1039(v1046, v1048, v1228);
                sub_100018F28(v1198, v1089, &qword_1000FC3B8, &qword_1000C9788);
                (*(v868 + 16))(v1091, v869, v870);
                v871 = *(v1183 + v1187[5]);
                v1221 = *(v1183 + v1187[6]);
                v1222 = v871;
                v872 = (v1183 + v1187[7]);
                v873 = *v872;
                v1219 = v872[1];
                v1220 = v873;

                sub_100029204(v1090);
                v874 = v1041;
                sub_1000C2294();
                v1041 = v874;
                if (v874)
                {
                  sub_100018CBC(v1038, v1226);

                  sub_100018CD0(v1215, v1224);
                  v717 = v1228;
                  v715 = *(v1227 + 8);
                  v715(v1046, v1228);
                  (*(v1108 + 8))(v1098, v1109);
                  goto LABEL_165;
                }

                (*(v1206 + 104))(v1095, enum case for TextMessage.MessageType.emojiTapback(_:), v1205);
                v914 = v1216;
                v915 = v1207;
                sub_100018F28(v1207 + v1216[18], v1080, &qword_1000FC520, &qword_1000C9D20);
                v916 = v914[32];
                v917 = (v915 + v914[31]);
                v918 = *v917;
                v1225 = v917[1];
                v919 = *(v915 + v916 + 8);
                v1218 = *(v915 + v916);
                v1219 = v918;
                v1223 = v919;
                v920 = (v915 + v914[33]);
                v922 = *v920;
                v921 = v920[1];
                v1217 = v922;
                v1222 = v921;
                v923 = v914[24];
                v924 = (v915 + v914[23]);
                v926 = *v924;
                v925 = v924[1];
                v1214 = v926;
                v1221 = v925;
                v927 = *(v915 + v923 + 8);
                v1213 = *(v915 + v923);
                v1220 = v927;
                v928 = v914[22];
                v929 = (v915 + v914[21]);
                v1212 = *v929;
                LODWORD(v1211) = *(v929 + 8);
                v930 = *(v915 + v928 + 8);
                if (v930)
                {
                  v931 = *(v915 + v928);

                  v1210 = sub_1000931CC(v931, v930);
                  LODWORD(v1202) = v932;
                }

                else
                {

                  v1210 = 0;
                  LODWORD(v1202) = 1;
                }

                v965 = v1216;
                v966 = v1207;
                v967 = (v1207 + v1216[25]);
                v1209 = *v967;
                LODWORD(v1208) = *(v967 + 8);
                v968 = (v1207 + v1216[35]);
                v1206 = *v968;
                LODWORD(v1205) = *(v968 + 8);
                sub_100028FA0(v1081);
                v969 = v965[48];
                v970 = (v966 + v965[47]);
                v971 = v970[1];
                v1204 = *v970;
                v1200 = v971;
                v972 = *(v966 + v969 + 8);
                v1203 = *(v966 + v969);
                v1197 = v972;
                v973 = v965[50];
                v974 = (v966 + v965[49]);
                v975 = v974[1];
                v1201 = *v974;
                v1195 = v975;
                v976 = *(v966 + v973 + 8);
                v1198 = *(v966 + v973);
                v1187 = v976;
                v977 = v965[52];
                LODWORD(v1196) = *(v966 + v965[51]);
                v978 = *(v966 + v977 + 8);
                v1194 = *(v966 + v977);
                v1190 = v978;

                sub_10008B5E0(v1073);
                v1185 = *(v966 + v965[45]);
                LODWORD(v1186) = *(v966 + 97);
                v1184 = *(v966 + 104);
                LODWORD(v1182) = *(v966 + 112);

                sub_1000C21E4();
                sub_100018F28(v966 + v965[20], v1075, &qword_1000FC5A8, &qword_1000CEA40);

                v979 = v1041;
                sub_1000C2204();
                if (!v979)
                {
                  sub_100018CBC(v1038, v1226);

                  sub_100018CD0(v1215, v1224);
                  (*(v1108 + 8))(v1098, v1109);
                  sub_10007795C(v1183, _s14descr1000F0171O17AssociatedMessageVMa);
                  (*(v1189 + 8))(v1199, v1188);
                  v796 = &v1109;
                  goto LABEL_183;
                }

                sub_100018CBC(v1038, v1226);

                sub_100018CD0(v1215, v1224);
                (*(v1108 + 8))(v1098, v1109);
                goto LABEL_157;
              }
            }

            goto LABEL_143;
          }

          if (v358 == enum case for TapBack.AssociatedMessageType.tapbackSticker(_:))
          {
LABEL_116:

            v770 = sub_1000C5714();
            v771 = swift_allocObject();
            *(v771 + 16) = v1043;
            v772 = v1225;
            sub_1000C4EC4();
            (v1223)(v772, 0, 1, v1221);
            v773 = sub_1000C4A84();
            v775 = v774;
            sub_100018F90(v772, &qword_1000FC520, &qword_1000C9D20);
            v776 = v1042;
            *(v771 + 56) = &type metadata for String;
            *(v771 + 64) = v776;
            *(v771 + 32) = v773;
            *(v771 + 40) = v775;
            v777 = sub_1000C5554();
            sub_1000C1A44("Generating a sticker tapback (guid: %@)", 39, 2, &_mh_execute_header, v770, v777, v771);

            if (*(v1207 + 32))
            {
              v1231 = *(v1207 + 24);

              sub_1000C4E84();
              v778 = v1103;
              sub_1000C32F4();
              if ((*(v1104 + 48))(v778, 1, v1105) == 1)
              {

                v692 = &qword_1000FD700;
                v693 = &qword_1000CEA18;
                v694 = &v1135;
                goto LABEL_119;
              }

              v907 = v1104;
              v908 = v1094;
              v909 = v1105;
              (*(v1104 + 32))(v1094, v1103, v1105);
              v1039(v1045, v1048, v1228);
              sub_100018F28(v1198, v1083, &qword_1000FC3B8, &qword_1000C9788);
              (*(v907 + 16))(v1085, v908, v909);
              v910 = v1187[6];
              v1225 = *(v1183 + v1187[5]);
              v1223 = *(v1183 + v910);
              v911 = (v1183 + v1187[7]);
              v912 = *v911;
              v1221 = v911[1];
              v1222 = v912;
              (*(v1189 + 16))(v1082, v1199, v1188);

              sub_100029204(v1084);
              v913 = v1041;
              sub_1000C3314();
              v1041 = v913;
              if (v913)
              {
                sub_100018CBC(v1038, v1226);

                sub_100018CD0(v1215, v1224);
                v717 = v1228;
                v715 = *(v1227 + 8);
                v715(v1045, v1228);
                (*(v1104 + 8))(v1094, v1105);
                goto LABEL_165;
              }

              (*(v1206 + 104))(v1093, enum case for TextMessage.MessageType.stickerTapback(_:), v1205);
              v947 = v1216;
              v948 = v1207;
              sub_100018F28(v1207 + v1216[18], v1078, &qword_1000FC520, &qword_1000C9D20);
              v949 = v947[32];
              v950 = v948 + v947[31];
              v951 = *(v950 + 8);
              v1231 = *v950;
              v952 = *(v948 + v949 + 8);
              v1225 = *(v948 + v949);
              v953 = (v948 + v947[33]);
              v954 = *v953;
              v955 = v953[1];
              v956 = v947[24];
              v957 = (v948 + v947[23]);
              v1222 = *v957;
              v1223 = v954;
              v958 = v957[1];
              v959 = *(v948 + v956 + 8);
              v1221 = *(v948 + v956);
              v960 = v947[22];
              v961 = (v948 + v947[21]);
              v1220 = *v961;
              LODWORD(v1219) = *(v961 + 8);
              v962 = *(v948 + v960 + 8);
              if (v962)
              {
                v963 = *(v948 + v960);
                v964 = v962;
              }

              else
              {
                v964 = 0xE100000000000000;
                v963 = 56;
              }

              v1214 = v958;

              v1218 = v951;

              v1217 = v952;

              v1213 = v955;

              v1212 = v959;

              v1211 = sub_1000931CC(v963, v964);
              LODWORD(v1202) = v980;
              v981 = v1216;
              v982 = v1207;
              v983 = (v1207 + v1216[25]);
              v1210 = *v983;
              LODWORD(v1209) = *(v983 + 8);
              v984 = (v1207 + v1216[35]);
              v1208 = *v984;
              LODWORD(v1206) = *(v984 + 8);
              sub_100028FA0(v1079);
              v985 = v981[48];
              v986 = (v982 + v981[47]);
              v987 = v986[1];
              v1205 = *v986;
              v1201 = v987;
              v988 = *(v982 + v985 + 8);
              v1204 = *(v982 + v985);
              v1198 = v988;
              v989 = v981[50];
              v990 = (v982 + v981[49]);
              v991 = v990[1];
              v1203 = *v990;
              v1196 = v991;
              v992 = *(v982 + v989 + 8);
              v1200 = *(v982 + v989);
              v1194 = v992;
              v993 = v981[52];
              LODWORD(v1197) = *(v982 + v981[51]);
              v1195 = *(v982 + v993);

              sub_10008B5E0(v1070);
              v1187 = *(v982 + v981[45]);
              LODWORD(v1190) = *(v982 + 97);
              v1186 = *(v982 + 104);
              LODWORD(v1185) = *(v982 + 112);

              sub_1000C21E4();
              sub_100018F28(v982 + v981[20], v1072, &qword_1000FC5A8, &qword_1000CEA40);

              v994 = v1041;
              sub_1000C2204();
              if (!v994)
              {
                sub_100018CBC(v1038, v1226);

                sub_100018CD0(v1215, v1224);
                (*(v1104 + 8))(v1094, v1105);
                sub_10007795C(v1183, _s14descr1000F0171O17AssociatedMessageVMa);
                (*(v1189 + 8))(v1199, v1188);
                v796 = &v1108;
                goto LABEL_183;
              }

              sub_100018CBC(v1038, v1226);

              sub_100018CD0(v1215, v1224);
              (*(v1104 + 8))(v1094, v1105);
              goto LABEL_157;
            }

            goto LABEL_143;
          }

LABEL_128:
          if (v358 != enum case for TapBack.AssociatedMessageType.tapbackDeselectedHeart(_:) && v358 != enum case for TapBack.AssociatedMessageType.tapbackDeselectedThumbsUp(_:) && v358 != enum case for TapBack.AssociatedMessageType.tapbackDeselectedThumbsDown(_:) && v358 != enum case for TapBack.AssociatedMessageType.tapbackDeselectedHa(_:) && v358 != enum case for TapBack.AssociatedMessageType.tapbackDeselectedExclamation(_:) && v358 != enum case for TapBack.AssociatedMessageType.tapbackDeselectedQuestionMark(_:))
          {
            if (v358 == enum case for TapBack.AssociatedMessageType.tapbackDeselectedEmoji(_:))
            {
              goto LABEL_86;
            }

            if (v358 == enum case for TapBack.AssociatedMessageType.tapbackDeselectedSticker(_:))
            {
              goto LABEL_116;
            }

            if (v358 != enum case for TapBack.AssociatedMessageType.customAcknowledgement(_:))
            {
              sub_1000778AC(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
              swift_allocError();
              sub_1000C4FB4();
              swift_willThrow();
              sub_100018CBC(v1038, v1226);

              sub_100018CD0(v1215, v1224);
              sub_10007795C(v1183, _s14descr1000F0171O17AssociatedMessageVMa);
              (*(v1189 + 8))(v1199, v1188);
              (*(v1227 + 8))(v1048, v1228);
              (*(v1229 + 8))(v1230, v1232);
              sub_10007795C(v1207, type metadata accessor for MessageDictionary);
              return (*(v1170 + 8))(v1169, v1171);
            }

            v806 = sub_1000C5714();
            v807 = swift_allocObject();
            *(v807 + 16) = xmmword_1000CBF00;
            v808 = v1136;
            sub_1000779BC(v1183, v1136, _s14descr1000F0171O17AssociatedMessageVMa);
            (*(v1186 + 56))(v808, 0, 1, v1187);
            v809 = sub_1000C4A84();
            v811 = v810;
            sub_100018F90(v808, &qword_1000FD718, &unk_1000CEA30);
            v812 = v1042;
            *(v807 + 56) = &type metadata for String;
            *(v807 + 64) = v812;
            *(v807 + 32) = v809;
            *(v807 + 40) = v811;
            v813 = v1225;
            sub_1000C4EC4();
            (v1223)(v813, 0, 1, v1221);
            v814 = sub_1000C4A84();
            v816 = v815;
            sub_100018F90(v813, &qword_1000FC520, &qword_1000C9D20);
            *(v807 + 96) = &type metadata for String;
            *(v807 + 104) = v812;
            *(v807 + 72) = v814;
            *(v807 + 80) = v816;
            v817 = sub_1000C5554();
            sub_1000C1A44("Generating an custom acknowledgement: %@ (guid: %@)", 51, 2, &_mh_execute_header, v806, v817, v807);

            if (*(v1207 + 32))
            {

              sub_1000C4DC4();
              sub_1000C4E04();
              v818 = v1041;
              sub_1000184B0(v1198, v1068);
              if (v818)
              {
                sub_100018CBC(v1038, v1226);

                sub_100018CD0(v1215, v1224);
                sub_100018F90(v1069, &qword_1000FC3B0, &qword_1000C9780);
                sub_10007795C(v1183, _s14descr1000F0171O17AssociatedMessageVMa);
                (*(v1189 + 8))(v1199, v1188);
                (*(v1227 + 8))(v1048, v1228);
                (*(v1229 + 8))(v1230, v1232);
                return sub_10007795C(v1207, type metadata accessor for MessageDictionary);
              }

              sub_100018F90(v1069, &qword_1000FC3B0, &qword_1000C9780);

              if ((*(v1163 + 48))(v1068, 1, v1162) == 1)
              {

                sub_100018F90(v1068, &qword_1000FD6F8, &qword_1000CEA10);
                v711 = v1183;
                v1234 = sub_1000C4E84();
                sub_1000C5BE4();
                sub_1000778AC(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
                swift_allocError();
                goto LABEL_104;
              }

              (*(v1163 + 32))(v1065, v1068, v1162);
              sub_1000C4E84();
              v996 = v1064;
              sub_1000C4134();
              if ((*(v1066 + 48))(v996, 1, v1067) == 1)
              {

                sub_100018F90(v1064, &qword_1000FD6F0, &unk_1000CEA00);
                v711 = v1183;
                v1234 = sub_1000C4E84();
                sub_1000C5BE4();
                sub_1000778AC(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
                swift_allocError();
                sub_1000C4FB4();
                swift_willThrow();
                sub_100018CBC(v1038, v1226);

                sub_100018CD0(v1215, v1224);
                (*(v1163 + 8))(v1065, v1162);
                goto LABEL_105;
              }

              v997 = v1066;
              v998 = v1063;
              v999 = v1067;
              (*(v1066 + 32))(v1063, v1064, v1067);
              v1039(v1049, v1048, v1228);
              (*(v997 + 16))(v1059, v998, v999);
              v1000 = v1187[6];
              v1225 = *(v1183 + v1187[5]);
              v1001 = *(v1183 + v1000);
              v1222 = *(v1183 + v1187[7] + 8);
              v1223 = v1001;

              sub_100029204(v1057);
              sub_1000C27B4();
              sub_1000A89BC();
              v1041 = 0;
              sub_1000C4E04();
              v1002 = v1041;
              sub_1000C4154();
              v1041 = v1002;
              if (v1002)
              {
                sub_100018CBC(v1038, v1226);

                sub_100018CD0(v1215, v1224);
                v717 = v1228;
                v715 = *(v1227 + 8);
                v715(v1049, v1228);
                (*(v1066 + 8))(v1063, v1067);
                (*(v1163 + 8))(v1065, v1162);
                goto LABEL_165;
              }

              (*(v1206 + 104))(v1052, enum case for TextMessage.MessageType.customAcknowledgement(_:), v1205);
              v1003 = v1216;
              v1004 = v1207;
              sub_100018F28(v1207 + v1216[18], v1050, &qword_1000FC520, &qword_1000C9D20);
              v1005 = v1003[32];
              v1006 = (v1004 + v1003[31]);
              v1007 = *v1006;
              v1225 = v1006[1];
              v1008 = *(v1004 + v1005 + 8);
              v1218 = *(v1004 + v1005);
              v1219 = v1007;
              v1223 = v1008;
              v1009 = (v1004 + v1003[33]);
              v1011 = *v1009;
              v1010 = v1009[1];
              v1217 = v1011;
              v1222 = v1010;
              v1012 = v1003[24];
              v1013 = (v1004 + v1003[23]);
              v1015 = *v1013;
              v1014 = v1013[1];
              v1214 = v1015;
              v1221 = v1014;
              v1016 = *(v1004 + v1012 + 8);
              v1213 = *(v1004 + v1012);
              v1220 = v1016;
              v1017 = v1003[22];
              v1018 = (v1004 + v1003[21]);
              v1212 = *v1018;
              LODWORD(v1211) = *(v1018 + 8);
              v1019 = *(v1004 + v1017 + 8);
              if (v1019)
              {
                v1020 = *(v1004 + v1017);

                v1210 = sub_1000931CC(v1020, v1019);
                LODWORD(v1202) = v1021;
              }

              else
              {

                v1210 = 0;
                LODWORD(v1202) = 1;
              }

              v1022 = v1216;
              v1023 = v1207;
              v1024 = (v1207 + v1216[25]);
              v1209 = *v1024;
              LODWORD(v1208) = *(v1024 + 8);
              v1025 = (v1207 + v1216[35]);
              v1206 = *v1025;
              LODWORD(v1205) = *(v1025 + 8);
              sub_100028FA0(v1053);
              v1026 = v1022[48];
              v1027 = (v1023 + v1022[47]);
              v1028 = v1027[1];
              v1204 = *v1027;
              v1200 = v1028;
              v1029 = *(v1023 + v1026 + 8);
              v1203 = *(v1023 + v1026);
              v1197 = v1029;
              v1030 = v1022[50];
              v1031 = (v1023 + v1022[49]);
              v1032 = v1031[1];
              v1201 = *v1031;
              v1195 = v1032;
              v1033 = *(v1023 + v1030 + 8);
              v1198 = *(v1023 + v1030);
              v1187 = v1033;
              v1034 = v1022[52];
              LODWORD(v1196) = *(v1023 + v1022[51]);
              v1035 = *(v1023 + v1034 + 8);
              v1194 = *(v1023 + v1034);
              v1190 = v1035;

              sub_10008B5E0(v1054);
              v1185 = *(v1023 + v1022[45]);
              LODWORD(v1186) = *(v1023 + 97);
              v1184 = *(v1023 + 104);
              LODWORD(v1182) = *(v1023 + 112);

              sub_1000C21E4();
              sub_100018F28(v1023 + v1022[20], v1056, &qword_1000FC5A8, &qword_1000CEA40);

              v1036 = v1041;
              sub_1000C2204();
              if (!v1036)
              {
                sub_100018CBC(v1038, v1226);

                sub_100018CD0(v1215, v1224);
                (*(v1066 + 8))(v1063, v1067);
                (*(v1163 + 8))(v1065, v1162);
                sub_10007795C(v1183, _s14descr1000F0171O17AssociatedMessageVMa);
                (*(v1189 + 8))(v1199, v1188);
                v796 = &v1083;
                goto LABEL_183;
              }

              sub_100018CBC(v1038, v1226);

              sub_100018CD0(v1215, v1224);
              (*(v1066 + 8))(v1063, v1067);
              v794 = *(v1163 + 8);
              v795 = &v1097;
              goto LABEL_123;
            }

            v995 = v1183;
            v1234 = sub_1000C4E84();
            sub_1000C5BE4();
            sub_1000778AC(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
            swift_allocError();
            sub_1000C4FB4();
            swift_willThrow();
            sub_100018CBC(v1038, v1226);

            sub_100018CD0(v1215, v1224);
            sub_10007795C(v995, _s14descr1000F0171O17AssociatedMessageVMa);
            (*(v1189 + 8))(v1199, v1188);
            goto LABEL_74;
          }

          goto LABEL_140;
        }

LABEL_21:
        v407 = v362;
        (*(v362 + 104))(v364, enum case for TopLevelDictionary.CodingKeys.decryptedData(_:), v363);
        sub_1000C1964();
        v1224 = v357;
        (*(v407 + 8))(v364, v363);
        v408 = v1219;
        sub_1000C4FB4();
        v409 = sub_1000C5714();
        v410 = swift_allocObject();
        *(v410 + 16) = v1043;
        v1231 = *(v360 + 2);
        v411 = v1217;
        v412 = v1218;
        v1231(v1217, v408, v1218);
        (*(v360 + 7))(v411, 0, 1, v412);
        v413 = sub_1000C4A84();
        v414 = v360;
        v416 = v415;
        sub_100018F90(v411, &qword_1000FC438, &unk_1000C9DC0);
        v417 = v1042;
        *(v410 + 56) = &type metadata for String;
        *(v410 + 64) = v417;
        *(v410 + 32) = v413;
        *(v410 + 40) = v416;
        v418 = sub_1000C5554();
        sub_1000C1A44("Message unpacking explosion: %{public}@", 39, 2, &_mh_execute_header, v409, v418, v410);

        sub_1000778AC(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
        swift_allocError();
        v1231(v419, v408, v412);
        swift_willThrow();
        sub_100018CBC(v1038, v1226);

        sub_100018CD0(v1215, v1224);
        (*(v414 + 1))(v408, v412);
LABEL_27:
        (*(v1227 + 8))(v1048, v1228);
        v351 = v1230;
        v350 = *(v1229 + 8);
        return v350(v351, v1232);
      }

      __break(1u);
    }

    else
    {
      v360 = v1223;
      v361 = v1224;
      v362 = v1221;
      v363 = v1222;
      v364 = v1220;
      if (!v359)
      {
        v365 = BYTE6(v357);
        goto LABEL_17;
      }
    }

    LODWORD(v365) = HIDWORD(v355) - v355;
    if (__OFSUB__(HIDWORD(v355), v355))
    {
      __break(1u);
      goto LABEL_128;
    }

    v365 = v365;
    goto LABEL_17;
  }

  v330 = v316;
  v331 = sub_1000C5714();
  v332 = swift_allocObject();
  *(v332 + 16) = v1043;
  v333 = v1225;
  sub_1000C4EC4();
  v334 = sub_1000C1614();
  v335 = *(v334 - 8);
  v1231 = *(v335 + 56);
  v1226 = v335 + 56;
  (v1231)(v333, 0, 1, v334);
  v336 = sub_1000C4A84();
  v337 = v326;
  v339 = v338;
  sub_100018F90(v333, &qword_1000FC520, &qword_1000C9D20);
  *(v332 + 56) = &type metadata for String;
  *(v332 + 64) = v337;
  *(v332 + 32) = v336;
  *(v332 + 40) = v339;
  v340 = v330;
  v341 = sub_1000C5554();
  sub_1000C1A44("Generating a typing indicator (guid: %@)", 40, 2, &_mh_execute_header, v331, v341, v332);

  if (sub_1000C19A4())
  {
    v342 = sub_1000C5714();
    v343 = swift_allocObject();
    *(v343 + 16) = v1043;
    v344 = v1048;
    sub_1000C4EC4();
    (v1231)(v333, 0, 1, v334);
    v345 = sub_1000C4A84();
    v347 = v346;
    sub_100018F90(v333, &qword_1000FC520, &qword_1000C9D20);
    v348 = v1042;
    *(v343 + 56) = &type metadata for String;
    *(v343 + 64) = v348;
    *(v343 + 32) = v345;
    *(v343 + 40) = v347;
    v349 = sub_1000C5554();
    sub_1000C1A44("Missing encrypted data, but not a typing indicator (guid: %@)", 61, 2, &_mh_execute_header, v342, v349, v343);

    sub_100077858();
    swift_allocError();
    swift_willThrow();

    (*(v1227 + 8))(v344, v1228);
    v350 = *(v1229 + 8);
    v351 = v330;
    return v350(v351, v1232);
  }

  v366 = v1231;
  v367 = v1213;
  v368 = v1048;
  v369 = v1228;
  v1039(v1213, v1048, v1228);
  v370 = sub_1000C34E4();
  (*(*(v370 - 8) + 56))(v1214, 1, 1, v370);
  v371 = v1215;
  v372 = v1041;
  sub_1000C34F4();
  if (v372)
  {

    v373 = *(v1227 + 8);
    v373(v367, v369);
    v373(v368, v369);
    return (*(v1229 + 8))(v340, v1232);
  }

  else
  {
    (*(v1206 + 104))(v371, enum case for TextMessage.MessageType.typingIndicator(_:), v1205);
    v366(v1210, 1, 1, v334);
    v420 = sub_1000C21C4();
    (*(*(v420 - 8) + 56))(v1201, 1, 1, v420);
    v421 = sub_1000C3FD4();
    (*(*(v421 - 8) + 56))(v1202, 1, 1, v421);
    v422 = sub_1000C21F4();
    (*(*(v422 - 8) + 56))(v1203, 1, 1, v422);
    v423 = sub_1000C15D4();
    (*(*(v423 - 8) + 56))(v1204, 1, 1, v423);
    v424 = v1200;
    sub_1000C2204();
    v425 = v1229;
    v426 = v1232;

    (*(v1227 + 8))(v368, v1228);
    (*(v425 + 8))(v340, v426);
    return (*(v1191 + 32))(v1193, v424, v1192);
  }
}