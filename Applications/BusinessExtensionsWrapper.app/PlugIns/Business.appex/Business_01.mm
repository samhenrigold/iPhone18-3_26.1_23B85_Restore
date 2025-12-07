void *sub_100018A50(uint64_t a1)
{
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  v1 = qword_1000FC008;
  v2 = sub_1000AC2BC();
  sub_1000ABA5C("IMBWebToolbar: refresh", 22, 2, &_mh_execute_header, v1, v2, _swiftEmptyArrayStorage);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = sub_1000AC2BC();
    sub_1000ABA5C("IMBWebViewController: reload", 28, 2, &_mh_execute_header, v1, v5, _swiftEmptyArrayStorage);
    v6.receiver = v4;
    v6.super_class = type metadata accessor for IMBWebViewController();
    objc_msgSendSuper2(&v6, "reload");
    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_100018B90(uint64_t a1)
{
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  v1 = qword_1000FC008;
  v2 = sub_1000AC2BC();
  sub_1000ABA5C("IMBWebToolbar: done", 19, 2, &_mh_execute_header, v1, v2, _swiftEmptyArrayStorage);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = sub_1000AC2BC();
    sub_1000ABA5C("IMBWebViewController: done", 26, 2, &_mh_execute_header, v1, v5, _swiftEmptyArrayStorage);
    v6 = [v4 delegate];
    if (v6)
    {
      [v6 dismiss];
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_100018D64(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for IMBWebNavigationToolbar();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_100018E48()
{
  result = qword_1000EFCE8;
  if (!qword_1000EFCE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000EFCE8);
  }

  return result;
}

void sub_100018E94()
{
  *(v0 + OBJC_IVAR____TtC8Business23IMBWebNavigationToolbar____lazy_storage___previousButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC8Business23IMBWebNavigationToolbar____lazy_storage___nextButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC8Business23IMBWebNavigationToolbar____lazy_storage___refreshButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC8Business23IMBWebNavigationToolbar____lazy_storage___doneButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC8Business23IMBWebNavigationToolbar____lazy_storage___secureContentMessageItem) = 0;
  *(v0 + OBJC_IVAR____TtC8Business23IMBWebNavigationToolbar_actionDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_1000AC63C();
  __break(1u);
}

__n128 sub_100018F44(uint64_t a1, uint64_t a2)
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

uint64_t sub_100018F60(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_100018FA8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_10001900C()
{
  if (*v0)
  {
    return 28526;
  }

  else
  {
    return 7562617;
  }
}

uint64_t sub_100019034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7562617 && a2 == 0xE300000000000000;
  if (v5 || (sub_1000AC7AC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 28526 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1000AC7AC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100019120(uint64_t a1)
{
  v2 = sub_10001B510();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001915C(uint64_t a1)
{
  v2 = sub_10001B510();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100019198(void *a1, int a2)
{
  v18 = a2;
  v3 = sub_10000413C(&qword_1000EFDE0, &qword_1000B0EE0);
  v16 = *(v3 - 8);
  v17 = v3;
  __chkstk_darwin(v3);
  v5 = &v15 - v4;
  v15 = sub_10000413C(&qword_1000EFDE8, &qword_1000B0EE8);
  v6 = *(v15 - 8);
  __chkstk_darwin(v15);
  v8 = &v15 - v7;
  v9 = sub_10000413C(&qword_1000EFDF0, &qword_1000B0EF0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - v11;
  sub_1000058D0(a1, a1[3]);
  sub_10001B510();
  sub_1000AC91C();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_10001B564();
    sub_1000AC72C();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_10001B5B8();
    sub_1000AC72C();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

uint64_t sub_100019454(void *a1)
{
  v3 = v1;
  v5 = sub_10000413C(&qword_1000EFD08, &qword_1000B09E0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_1000058D0(a1, a1[3]);
  sub_10001A684();
  sub_1000AC91C();
  v11[0] = 0;
  sub_1000AC74C();
  if (!v2)
  {
    sub_10001A72C((v3 + 16), v12);
    sub_10001A72C(v12, v11);
    v10[15] = 1;
    sub_10001A744();
    sub_1000AC75C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000195E0(void *a1)
{
  v2 = v1;
  sub_10001A72C(v2, v15);
  v20 = v15[0];
  v14[2] = v17;
  v14[3] = v16;
  v14[0] = v19;
  v14[1] = v18;
  v4 = sub_10000413C(&qword_1000EFD60, &qword_1000B0BA8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - v6;
  v8 = sub_10000413C(&qword_1000EFD68, &unk_1000B0BB0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - v10;
  sub_1000058D0(a1, a1[3]);
  sub_10001AF10();
  sub_1000AC91C();
  sub_10001AF64();
  sub_1000AC72C();
  v22 = v20;
  v21 = 0;
  sub_10001B00C();
  v12 = v14[4];
  sub_1000AC75C();
  if (v12)
  {
    (*(v5 + 8))(v7, v4);
    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    v22 = 1;
    sub_1000AC74C();
    v22 = 2;
    sub_1000AC73C();
    (*(v5 + 8))(v7, v4);
    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_1000198AC@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_1000198E8(uint64_t a1)
{
  v2 = sub_10001B564();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100019924(uint64_t a1)
{
  v2 = sub_10001B564();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100019960(uint64_t a1)
{
  v2 = sub_10001B5B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001999C(uint64_t a1)
{
  v2 = sub_10001B5B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000199D8@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_100019FB8(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t sub_100019A24()
{
  if (*v0)
  {
    return 0x4379616C70736964;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_100019A60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_1000AC7AC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4379616C70736964 && a2 == 0xEE00746E65746E6FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1000AC7AC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100019B3C(uint64_t a1)
{
  v2 = sub_10001A684();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100019B78(uint64_t a1)
{
  v2 = sub_10001A684();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100019BB4@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10001A474(a2, v6);
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

Swift::Int sub_100019C50()
{
  sub_1000AC87C();
  sub_1000AC88C(0);
  return sub_1000AC8CC();
}

Swift::Int sub_100019CBC()
{
  sub_1000AC87C();
  sub_1000AC88C(0);
  return sub_1000AC8CC();
}

uint64_t sub_100019D18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x80000001000B6E70 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1000AC7AC();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_100019DAC(uint64_t a1)
{
  v2 = sub_10001AF10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100019DE8(uint64_t a1)
{
  v2 = sub_10001AF10();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100019E24()
{
  v1 = 0x656C746974;
  if (*v0 != 1)
  {
    v1 = 0x656C746974627573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_100019E74@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10001A964(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100019EA8(uint64_t a1)
{
  v2 = sub_10001AF64();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100019EE4(uint64_t a1)
{
  v2 = sub_10001AF64();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_100019F20@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_10001AA78(a2, v5);
  if (!v2)
  {
    return sub_10001A72C(v5, a1);
  }

  return result;
}

uint64_t sub_100019FB8(void *a1)
{
  v2 = sub_10000413C(&qword_1000EFDB0, &qword_1000B0EC8);
  v23 = *(v2 - 8);
  v24 = v2;
  __chkstk_darwin(v2);
  v4 = &v21 - v3;
  v5 = sub_10000413C(&qword_1000EFDB8, &qword_1000B0ED0);
  v22 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v21 - v6;
  v8 = sub_10000413C(&qword_1000EFDC0, &qword_1000B0ED8);
  v25 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  sub_1000058D0(a1, a1[3]);
  sub_10001B510();
  v11 = v26;
  sub_1000AC90C();
  if (v11)
  {
    return sub_10000E738(a1);
  }

  v26 = a1;
  v12 = v24;
  v13 = sub_1000AC71C();
  v14 = (2 * *(v13 + 16)) | 1;
  v27 = v13;
  v28 = v13 + 32;
  v29 = 0;
  v30 = v14;
  v15 = sub_100043A0C();
  if (v15 == 2 || v29 != v30 >> 1)
  {
    v17 = sub_1000AC5DC();
    swift_allocError();
    v19 = v18;
    sub_10000413C(&qword_1000EFD48, &qword_1000B0BA0);
    *v19 = &type metadata for BIAReplyDeterminateResponseType;
    sub_1000AC6CC();
    sub_1000AC5CC();
    (*(*(v17 - 8) + 104))(v19, enum case for DecodingError.typeMismatch(_:), v17);
    swift_willThrow();
    (*(v25 + 8))(v10, v8);
    swift_unknownObjectRelease();
    a1 = v26;
    return sub_10000E738(a1);
  }

  v31 = v15;
  if (v15)
  {
    v32 = 1;
    sub_10001B564();
    sub_1000AC6BC();
    v16 = v25;
    (*(v23 + 8))(v4, v12);
  }

  else
  {
    v32 = 0;
    sub_10001B5B8();
    sub_1000AC6BC();
    v16 = v25;
    (*(v22 + 8))(v7, v5);
  }

  (*(v16 + 8))(v10, v8);
  swift_unknownObjectRelease();
  sub_10000E738(v26);
  return v31 & 1;
}

uint64_t sub_10001A474@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10000413C(&qword_1000EFCF0, &qword_1000B09D8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - v7;
  sub_1000058D0(a1, a1[3]);
  sub_10001A684();
  sub_1000AC90C();
  if (v2)
  {
    return sub_10000E738(a1);
  }

  LOBYTE(v18) = 0;
  v9 = sub_1000AC6FC();
  v11 = v10;
  v12 = v9;
  v22 = 1;
  sub_10001A6D8();
  sub_1000AC70C();
  (*(v6 + 8))(v8, v5);
  v13 = v18;
  v17 = v19;
  v14 = v20;
  v15 = v21;
  result = sub_10000E738(a1);
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13;
  *(a2 + 24) = v17;
  *(a2 + 40) = v14;
  *(a2 + 48) = v15;
  return result;
}

unint64_t sub_10001A684()
{
  result = qword_1000EFCF8;
  if (!qword_1000EFCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFCF8);
  }

  return result;
}

unint64_t sub_10001A6D8()
{
  result = qword_1000EFD00;
  if (!qword_1000EFD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFD00);
  }

  return result;
}

uint64_t sub_10001A72C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_10001A744()
{
  result = qword_1000EFD10;
  if (!qword_1000EFD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFD10);
  }

  return result;
}

__n128 sub_10001A7A8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10001A7BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10001A804(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_10001A860()
{
  result = qword_1000EFD18;
  if (!qword_1000EFD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFD18);
  }

  return result;
}

unint64_t sub_10001A8B8()
{
  result = qword_1000EFD20;
  if (!qword_1000EFD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFD20);
  }

  return result;
}

unint64_t sub_10001A910()
{
  result = qword_1000EFD28;
  if (!qword_1000EFD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFD28);
  }

  return result;
}

uint64_t sub_10001A964(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1000AC7AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1000AC7AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1000AC7AC();

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

uint64_t sub_10001AA78@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = sub_10000413C(&qword_1000EFD30, &qword_1000B0B90);
  v36 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v33 - v5;
  v7 = sub_10000413C(&qword_1000EFD38, &qword_1000B0B98);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v33 - v9;
  v11 = a1[3];
  v38 = a1;
  sub_1000058D0(a1, v11);
  sub_10001AF10();
  sub_1000AC90C();
  if (!v2)
  {
    v12 = v6;
    v13 = v37;
    v14 = v8;
    v15 = sub_1000AC71C();
    v16 = (2 * *(v15 + 16)) | 1;
    v39 = v15;
    v40 = v15 + 32;
    v41 = 0;
    v42 = v16;
    if (!sub_100043A40() && v41 == v42 >> 1)
    {
      sub_10001AF64();
      sub_1000AC6BC();
      v35 = v7;
      v44 = 0;
      sub_10001AFB8();
      v17 = v4;
      sub_1000AC70C();
      v18 = v12;
      v19 = v14;
      v23 = v45;
      v44 = 1;
      v24 = sub_1000AC6FC();
      v25 = v36;
      v33 = v24;
      v34 = v26;
      v43 = v23;
      v44 = 2;
      v27 = sub_1000AC6DC();
      v28 = v18;
      v30 = v29;
      (*(v25 + 8))(v28, v17);
      (*(v19 + 8))(v10, v35);
      swift_unknownObjectRelease();
      result = sub_10000E738(v38);
      *v13 = v43;
      v32 = v34;
      *(v13 + 8) = v33;
      *(v13 + 16) = v32;
      *(v13 + 24) = v27;
      *(v13 + 32) = v30;
      return result;
    }

    v20 = sub_1000AC5DC();
    swift_allocError();
    v22 = v21;
    sub_10000413C(&qword_1000EFD48, &qword_1000B0BA0);
    *v22 = &type metadata for BIAReplyDisplayContent;
    sub_1000AC6CC();
    sub_1000AC5CC();
    (*(*(v20 - 8) + 104))(v22, enum case for DecodingError.typeMismatch(_:), v20);
    swift_willThrow();
    (*(v14 + 8))(v10, v7);
    swift_unknownObjectRelease();
  }

  return sub_10000E738(v38);
}

unint64_t sub_10001AF10()
{
  result = qword_1000EFD40;
  if (!qword_1000EFD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFD40);
  }

  return result;
}

unint64_t sub_10001AF64()
{
  result = qword_1000EFD50;
  if (!qword_1000EFD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFD50);
  }

  return result;
}

unint64_t sub_10001AFB8()
{
  result = qword_1000EFD58;
  if (!qword_1000EFD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFD58);
  }

  return result;
}

unint64_t sub_10001B00C()
{
  result = qword_1000EFD70;
  if (!qword_1000EFD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFD70);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IMBListItemStyle(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for IMBListItemStyle(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for BIAReplyDisplayContent.DeterminateResponseCodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BIAReplyDisplayContent.DeterminateResponseCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10001B2AC()
{
  result = qword_1000EFD78;
  if (!qword_1000EFD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFD78);
  }

  return result;
}

unint64_t sub_10001B304()
{
  result = qword_1000EFD80;
  if (!qword_1000EFD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFD80);
  }

  return result;
}

unint64_t sub_10001B35C()
{
  result = qword_1000EFD88;
  if (!qword_1000EFD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFD88);
  }

  return result;
}

unint64_t sub_10001B3B4()
{
  result = qword_1000EFD90;
  if (!qword_1000EFD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFD90);
  }

  return result;
}

unint64_t sub_10001B40C()
{
  result = qword_1000EFD98;
  if (!qword_1000EFD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFD98);
  }

  return result;
}

unint64_t sub_10001B464()
{
  result = qword_1000EFDA0;
  if (!qword_1000EFDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFDA0);
  }

  return result;
}

unint64_t sub_10001B4BC()
{
  result = qword_1000EFDA8;
  if (!qword_1000EFDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFDA8);
  }

  return result;
}

unint64_t sub_10001B510()
{
  result = qword_1000EFDC8;
  if (!qword_1000EFDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFDC8);
  }

  return result;
}

unint64_t sub_10001B564()
{
  result = qword_1000EFDD0;
  if (!qword_1000EFDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFDD0);
  }

  return result;
}

unint64_t sub_10001B5B8()
{
  result = qword_1000EFDD8;
  if (!qword_1000EFDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFDD8);
  }

  return result;
}

unint64_t sub_10001B640()
{
  result = qword_1000EFDF8;
  if (!qword_1000EFDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFDF8);
  }

  return result;
}

unint64_t sub_10001B698()
{
  result = qword_1000EFE00;
  if (!qword_1000EFE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFE00);
  }

  return result;
}

unint64_t sub_10001B6F0()
{
  result = qword_1000EFE08;
  if (!qword_1000EFE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFE08);
  }

  return result;
}

unint64_t sub_10001B748()
{
  result = qword_1000EFE10;
  if (!qword_1000EFE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFE10);
  }

  return result;
}

unint64_t sub_10001B7A0()
{
  result = qword_1000EFE18;
  if (!qword_1000EFE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFE18);
  }

  return result;
}

unint64_t sub_10001B7F8()
{
  result = qword_1000EFE20;
  if (!qword_1000EFE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFE20);
  }

  return result;
}

unint64_t sub_10001B850()
{
  result = qword_1000EFE28;
  if (!qword_1000EFE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFE28);
  }

  return result;
}

char *sub_10001B8D0(void *a1, void *a2, char a3)
{
  v7 = type metadata accessor for URLHelper(0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v25 - v11;
  v3[OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_multipleSelectionEnabled] = 0;
  v3[OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_cellShouldHaveSelectionIcon] = 0;
  *&v3[OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_listRequest] = 0;
  v3[OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_rightButtonTapped] = 0;
  v13 = OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_selectedItems;
  *&v3[v13] = sub_10004FC70(_swiftEmptyArrayStorage);
  v3[OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_userCanSelect] = a3;
  v14 = a1;
  v15 = a2;
  sub_10004EA70(v12);
  sub_10001E764(v12, v10);
  v16 = sub_1000A49E0(v14, v15, v10, v3);

  sub_10001E7C8(v12);
  v17 = *&v16[OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_message];
  v18 = v16;
  v19 = v17;
  v20 = [v19 rootObject];

  if (v20)
  {
    type metadata accessor for IMBListRequest();
    v21 = swift_dynamicCastClass();
    if (!v21)
    {

      swift_unknownObjectRelease();
      return v18;
    }

    *&v18[OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_listRequest] = v21;
    v22 = v21;
    swift_unknownObjectRetain();

    v23 = *(v22 + 16);
    swift_unknownObjectRelease();
    v18[OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_multipleSelectionEnabled] = v23;
  }

  return v18;
}

id sub_10001BB78()
{
  v1 = v0;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for IMBListPickerTableViewController();
  objc_msgSendSuper2(&v8, "viewDidLoad");
  if (([*&v0[OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_message] isFromMe] & 1) == 0 && v0[OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_multipleSelectionEnabled] == 1)
  {
    [*&v0[OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_tableView] setAllowsMultipleSelection:1];
  }

  v0[OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_cellShouldHaveSelectionIcon] = 1;
  v2 = OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_selectedItems;
  swift_beginAccess();
  if (!*(*&v1[v2] + 16))
  {
    v3 = sub_10008240C();
    v5 = v4;
    ObjectType = swift_getObjectType();
    (*(v5 + 48))(0, ObjectType, v5);
  }

  return [*&v1[OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_tableView] setSeparatorStyle:0];
}

void sub_10001BCE4()
{
  sub_100081EF4();
  v1 = *(v0 + OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_tableView);
  type metadata accessor for ListPickerTableViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = sub_1000AC02C();
  [v1 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v3];

  type metadata accessor for IMBDefaultSectionHeader();
  v4 = swift_getObjCClassFromMetadata();
  v5 = sub_1000AC02C();
  [v1 registerClass:v4 forHeaderFooterViewReuseIdentifier:v5];

  [v1 setEstimatedRowHeight:140.0];
  [v1 setSectionHeaderHeight:UITableViewAutomaticDimension];
  [v1 setEstimatedSectionHeaderHeight:80.0];
  [v1 setAllowsSelection:*(v0 + OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_userCanSelect)];
  v6 = *(v0 + OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_nothingAvailableLabel);
  v7 = *(v0 + OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_listRequest);
  if (v7)
  {
    v8 = *(v7 + 24);
    if (v8 >> 62)
    {
      v9 = sub_1000AC65C();
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v9 = 0;
  }

  [v6 setHidden:v9 > 0];
  v10 = [objc_opt_self() mainBundle];
  v12._countAndFlagsBits = 0xE000000000000000;
  v15._object = 0x80000001000B7070;
  v15._countAndFlagsBits = 0xD000000000000012;
  v16.value._countAndFlagsBits = 0;
  v16.value._object = 0;
  v11.super.isa = v10;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  sub_1000AB61C(v15, v16, v11, v17, 0, v12);

  v13 = sub_1000AC02C();

  [v6 setText:v13];
}

char *sub_10001BF38()
{
  v1 = OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_userCanSelect;
  v2 = *(v0 + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_message);
  if (*(v0 + OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_userCanSelect) == 1)
  {
    v3 = [*(v0 + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_message) receivedMessage];
    if (!v3 || (v4 = v3, v5 = [v3 title], v4, !v5))
    {
      v5 = [objc_opt_self() mainBundle];
      v23._countAndFlagsBits = 0xE000000000000000;
      v6._object = 0x80000001000B7050;
      v6._countAndFlagsBits = 0xD000000000000019;
LABEL_9:
      v24.value._countAndFlagsBits = 0;
      v24.value._object = 0;
      v11.super.isa = v5;
      v25._countAndFlagsBits = 0;
      v25._object = 0xE000000000000000;
      v9 = sub_1000AB61C(v6, v24, v11, v25, 0, v23);
      goto LABEL_10;
    }
  }

  else
  {
    v7 = [*(v0 + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_message) replyMessage];
    if (!v7 || (v8 = v7, v5 = [v7 title], v8, !v5))
    {
      v5 = [objc_opt_self() mainBundle];
      v23._countAndFlagsBits = 0xE000000000000000;
      v6._countAndFlagsBits = 0xD000000000000022;
      v6._object = 0x80000001000B7020;
      goto LABEL_9;
    }
  }

  v9 = sub_1000AC06C();
LABEL_10:
  v12 = v9;
  v13 = v10;

  if (*(v0 + v1) == 1 && (v14 = [v2 receivedMessage]) != 0 && (v15 = v14, v16 = objc_msgSend(v14, "subtitle"), v15, v16))
  {
    v17 = sub_1000AC06C();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  v20 = [*(v0 + OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_tableView) separatorColor];
  v21 = objc_allocWithZone(type metadata accessor for IMBTableHeaderView());
  return sub_1000906F4(v12, v13, v17, v19, v20);
}

double sub_10001C198()
{
  v0 = [objc_opt_self() mainBundle];
  v7._countAndFlagsBits = 0xE000000000000000;
  v8._countAndFlagsBits = 1145980243;
  v8._object = 0xE400000000000000;
  v9.value._countAndFlagsBits = 0;
  v9.value._object = 0;
  v1.super.isa = v0;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v2 = sub_1000AB61C(v8, v9, v1, v10, 0, v7);
  v4 = v3;

  type metadata accessor for FooterToolbarModel();
  v5 = swift_allocObject();
  *(v5 + 80) = 0;
  *(v5 + 88) = 0;
  *(v5 + 96) = 1;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0xE000000000000000;
  *(v5 + 32) = 0;
  *(v5 + 40) = v2;
  *(v5 + 48) = v4;
  *&result = 2;
  *(v5 + 56) = xmmword_1000B1160;
  *(v5 + 72) = 0xE000000000000000;
  return result;
}

void sub_10001C260(uint64_t a1)
{
  v4 = v1;
  v6 = sub_1000AB97C();
  v82 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_listRequest);
  if (v9)
  {
    v10 = *(v9 + 24);

    v11 = sub_1000AB96C();
    if ((v10 & 0xC000000000000001) != 0)
    {
      v12 = sub_1000AC5AC();
    }

    else
    {
      if ((v11 & 0x8000000000000000) != 0)
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_33;
      }

      v12 = *(v10 + 8 * v11 + 32);
    }

    v13 = *(v12 + 40);

    v14 = sub_1000AB95C();
    if ((v13 & 0xC000000000000001) == 0)
    {
      if ((v14 & 0x8000000000000000) == 0)
      {
        if (v14 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_65;
        }

        v3 = *(v13 + 8 * v14 + 32);

        goto LABEL_10;
      }

LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

LABEL_31:
    v3 = sub_1000AC5AC();
LABEL_10:

    v15 = *(v4 + OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_tableView);
    isa = sub_1000AB92C().super.isa;
    v81 = v15;
    v17 = [v15 cellForRowAtIndexPath:isa];

    if (v17)
    {
      type metadata accessor for ListPickerTableViewCell();
      v2 = swift_dynamicCastClass();
      if (!v2)
      {
      }
    }

    else
    {
      v2 = 0;
    }

    v18 = *(v9 + 24);
    v19 = sub_1000AB96C();
    v83 = v4;
    if ((v18 & 0xC000000000000001) == 0)
    {
      if ((v19 & 0x8000000000000000) == 0)
      {
        if (v19 < *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          if (*(*(v18 + 8 * v19 + 32) + 48))
          {
            goto LABEL_18;
          }

          goto LABEL_35;
        }

LABEL_66:
        __break(1u);
        return;
      }

LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

LABEL_34:
    v39 = *(sub_1000AC5AC() + 48);
    swift_unknownObjectRelease();
    if (v39)
    {
LABEL_18:
      if (v2)
      {
        v20 = v2;
        sub_100014D78();
      }

      v21 = OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_selectedItems;
      v22 = v83;
      swift_beginAccess();
      if (*(*(v22 + v21) + 16) && (, sub_10004F218(a1), v24 = v23, , (v24 & 1) != 0))
      {
        v25 = a1;
        v26 = v83;
        swift_beginAccess();
        sub_10001CDBC(v25);
        swift_endAccess();
        v27 = v26;

        if (!*(*(v26 + v21) + 16))
        {
          goto LABEL_26;
        }
      }

      else
      {
        v28 = a1;
        v29 = v83;
        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v85 = *(v29 + v21);
        *(v29 + v21) = 0x8000000000000000;
        sub_10003A538(v3, v28, isUniquelyReferenced_nonNull_native);
        v31 = v85;
        *(v29 + v21) = v85;
        swift_endAccess();
        v27 = v29;
        if (!*(v31 + 16))
        {
          goto LABEL_26;
        }
      }

      if (*(v27 + OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_rightButtonTapped) != 1)
      {
        v32 = sub_10008240C();
        v37 = v36;
        ObjectType = swift_getObjectType();
        (*(v37 + 48))(1, ObjectType, v37);
        goto LABEL_28;
      }

LABEL_26:
      v32 = sub_10008240C();
      v34 = v33;
      v35 = swift_getObjectType();
      (*(v34 + 48))(0, v35, v34);
LABEL_28:

LABEL_62:

      return;
    }

LABEL_35:
    v77 = v2;
    v40 = OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_selectedItems;
    v41 = a1;
    v42 = v83;
    v43 = swift_beginAccess();
    v44 = *(v42 + v40);
    __chkstk_darwin(v43);
    *(&v74 - 2) = v41;

    v76 = sub_10001CA4C(sub_10001E8E0, (&v74 - 4), v44);
    v45 = sub_100060178(v41, v76);
    v80 = v41;
    v75 = v3;
    if (v45)
    {
      swift_beginAccess();
      sub_10001CDBC(v41);
      swift_endAccess();

      if (*(*(v42 + v40) + 16))
      {
LABEL_37:
        v46 = *(v42 + OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_rightButtonTapped) ^ 1;
LABEL_40:
        v49 = v77;
        v50 = sub_10008240C();
        v52 = v51;
        v53 = swift_getObjectType();
        (*(v52 + 48))(v46 & 1, v53, v52);

        if (v49)
        {
          v54 = v49;
          sub_100014D78();
        }

        v55 = v76[2];
        if (v55)
        {
          v74 = v9;
          v56 = *(v82 + 16);
          v57 = v76 + ((*(v82 + 80) + 32) & ~*(v82 + 80));
          v84 = *(v82 + 72);
          v58 = (v82 + 8);
          v82 += 16;
          v78 = OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_rightButtonTapped;
          v79 = v56;
          v56(v8, v57, v6);
          while (1)
          {
            sub_10001E92C();
            if ((sub_1000AC01C() & 1) == 0)
            {
              v64 = sub_1000AB92C().super.isa;
              v65 = [v81 cellForRowAtIndexPath:{v64, v74, v75}];

              if (v65)
              {
                type metadata accessor for ListPickerTableViewCell();
                v66 = swift_dynamicCastClass();
                if (v66)
                {
                  v67 = v65;
                  sub_100014D78();
                }

                v68 = v83;
              }

              else
              {
                v66 = 0;
                v68 = v83;
              }

              swift_beginAccess();
              v69 = sub_10004F218(v8);
              if (v70)
              {
                v71 = v69;
                v72 = swift_isUniquelyReferenced_nonNull_native();
                v73 = *(v68 + v40);
                v85 = v73;
                *(v68 + v40) = 0x8000000000000000;
                if (!v72)
                {
                  sub_10003AB68();
                  v73 = v85;
                }

                (*v58)(*(v73 + 48) + v71 * v84, v6);

                sub_10003A130(v71, v73);
                *(v68 + v40) = v73;
              }

              swift_endAccess();
              v59 = *(*(v68 + v40) + 16) && *(v68 + v78) != 1;
              v60 = sub_10008240C();
              v62 = v61;
              v63 = swift_getObjectType();
              (*(v62 + 48))(v59, v63, v62);

              v56 = v79;
            }

            (*v58)(v8, v6);
            v57 += v84;
            if (!--v55)
            {
              break;
            }

            v56(v8, v57, v6);
          }
        }

        v2 = v77;
        goto LABEL_62;
      }
    }

    else
    {
      swift_beginAccess();

      v47 = swift_isUniquelyReferenced_nonNull_native();
      v85 = *(v42 + v40);
      *(v42 + v40) = 0x8000000000000000;
      sub_10003A538(v3, v41, v47);
      v48 = v85;
      *(v42 + v40) = v85;
      swift_endAccess();
      if (*(v48 + 16))
      {
        goto LABEL_37;
      }
    }

    v46 = 0;
    goto LABEL_40;
  }
}

void *sub_10001CA4C(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v46 = a1;
  v47 = a2;
  v6 = sub_1000AB97C();
  v7 = __chkstk_darwin(v6);
  v40 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v45 = &v40 - v10;
  result = __chkstk_darwin(v9);
  v50 = a3;
  v51 = &v40 - v13;
  v14 = 0;
  v17 = *(a3 + 64);
  v16 = a3 + 64;
  v15 = v17;
  v18 = 1 << *(v16 - 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v48 = v12;
  v49 = v12 + 32;
  v43 = (v12 + 8);
  v44 = v12 + 16;
  v41 = _swiftEmptyArrayStorage;
  while (1)
  {
    v22 = v14;
    if (!v20)
    {
      break;
    }

    v23 = v4;
LABEL_10:
    v24 = *(v50 + 48);
    v25 = v48;
    v42 = *(v48 + 72);
    v26 = v45;
    (*(v48 + 16))(v45, v24 + v42 * (__clz(__rbit64(v20)) | (v14 << 6)), v6);
    v27 = *(v25 + 32);
    v28 = v6;
    v29 = v51;
    v30 = v28;
    v27(v51, v26);
    v31 = v46(v29);
    v4 = v23;
    if (v23)
    {
      (*v43)(v51, v30);
      v39 = v41;

      return v39;
    }

    v20 &= v20 - 1;
    if (v31)
    {
      v6 = v30;
      (v27)(v40, v51, v30);
      v32 = v41;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v52 = v32;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10009C238(0, v32[2] + 1, 1);
        v6 = v30;
        v32 = v52;
      }

      v35 = v32[2];
      v34 = v32[3];
      v36 = v35 + 1;
      if (v35 >= v34 >> 1)
      {
        v38 = v35 + 1;
        v41 = v35;
        sub_10009C238((v34 > 1), v35 + 1, 1);
        v36 = v38;
        v35 = v41;
        v6 = v30;
        v32 = v52;
      }

      v32[2] = v36;
      v37 = *(v48 + 80);
      v41 = v32;
      result = (v27)(v32 + ((v37 + 32) & ~v37) + v35 * v42, v40, v6);
    }

    else
    {
      v6 = v30;
      result = (*v43)(v51, v30);
    }
  }

  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v21)
    {

      return v41;
    }

    v20 = *(v16 + 8 * v14);
    ++v22;
    if (v20)
    {
      v23 = v4;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10001CDBC(uint64_t a1)
{
  v2 = v1;
  v3 = sub_10004F218(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_10003AB68();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = sub_1000AB97C();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 8 * v5);
  sub_10003A130(v5, v7);
  *v2 = v7;
  return v10;
}

id sub_10001CE84()
{
  v58 = sub_1000AB97C();
  v1 = *(v58 - 8);
  v2 = __chkstk_darwin(v58);
  v4 = v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v51 = v47 - v5;
  v6 = sub_10000413C(&qword_1000EFE88, &qword_1000B1198);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v47 - v10;
  if (qword_1000EEE88 != -1)
  {
LABEL_25:
    swift_once();
  }

  v12 = qword_1000FC010;
  v13 = sub_1000AC29C();
  sub_1000ABA5C("Left button tapped", 18, 2, &_mh_execute_header, v12, v13, _swiftEmptyArrayStorage);
  v14 = OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_selectedItems;
  swift_beginAccess();
  v47[0] = v14;
  v15 = *(v0 + v14);
  v16 = v15 + 64;
  v17 = 1 << *(v15 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v15 + 64);
  v20 = (v17 + 63) >> 6;
  v47[1] = v1 + 16;
  v56 = v0;
  v57 = (v1 + 32);
  v52 = v1;
  v53 = v15;
  v55 = (v1 + 8);

  v1 = 0;
  v49 = v9;
  v50 = v4;
  v48 = v11;
  v54 = v16;
  while (1)
  {
    if (!v19)
    {
      if (v20 <= v1 + 1)
      {
        v22 = v1 + 1;
      }

      else
      {
        v22 = v20;
      }

      v0 = v22 - 1;
      while (1)
      {
        v21 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          break;
        }

        if (v21 >= v20)
        {
          v40 = sub_10000413C(&qword_1000EFE90, &qword_1000B11A0);
          (*(*(v40 - 8) + 56))(v9, 1, 1, v40);
          v19 = 0;
          v1 = v0;
          goto LABEL_17;
        }

        v19 = *(v16 + 8 * v21);
        ++v1;
        if (v19)
        {
          v1 = v21;
          goto LABEL_16;
        }
      }

      __break(1u);
      goto LABEL_25;
    }

    v21 = v1;
LABEL_16:
    v23 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v24 = v23 | (v21 << 6);
    v26 = v52;
    v25 = v53;
    v27 = v51;
    v28 = v58;
    (*(v52 + 16))(v51, *(v53 + 48) + *(v52 + 72) * v24, v58);
    v29 = *(*(v25 + 56) + 8 * v24);
    v30 = sub_10000413C(&qword_1000EFE90, &qword_1000B11A0);
    v31 = *(v30 + 48);
    v32 = *(v26 + 32);
    v9 = v49;
    v32(v49, v27, v28);
    *&v9[v31] = v29;
    (*(*(v30 - 8) + 56))(v9, 0, 1, v30);

    v4 = v50;
    v11 = v48;
LABEL_17:
    sub_10001E870(v9, v11);
    v33 = sub_10000413C(&qword_1000EFE90, &qword_1000B11A0);
    if ((*(*(v33 - 8) + 48))(v11, 1, v33) == 1)
    {
      break;
    }

    (*v57)(v4, v11, v58);
    v34 = v56;
    sub_10001C260(v4);
    v35 = *(v34 + OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_tableView);
    isa = sub_1000AB92C().super.isa;
    v37 = [v35 cellForRowAtIndexPath:isa];

    if (v37)
    {
      [v37 setAccessoryType:0];
    }

    v38 = sub_1000AB92C().super.isa;
    v39 = [v35 cellForRowAtIndexPath:v38];

    v16 = v54;
    if (v39)
    {
      [v39 setSelected:0];
    }

    (*v55)(v4, v58);
  }

  v41 = v56;
  *(v56 + v47[0]) = _swiftEmptyDictionarySingleton;

  v42 = sub_10008240C();
  v44 = v43;
  ObjectType = swift_getObjectType();
  (*(v44 + 48))(0, ObjectType, v44);

  return [*(v41 + OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_tableView) reloadData];
}

void sub_10001D420()
{
  v1 = v0;
  if (qword_1000EEE88 != -1)
  {
    swift_once();
  }

  v2 = qword_1000FC010;
  v3 = sub_1000AC29C();
  sub_1000ABA5C("Right button tapped", 19, 2, &_mh_execute_header, v2, v3, _swiftEmptyArrayStorage);
  v4 = *(v1 + OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_listRequest);
  if (!v4)
  {
    goto LABEL_7;
  }

  *(v1 + OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_rightButtonTapped) = 1;

  v5 = sub_10008240C();
  v7 = v6;
  ObjectType = swift_getObjectType();
  (*(v7 + 48))(0, ObjectType, v7);

  v9 = OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_selectedItems;
  swift_beginAccess();
  v10 = *(v1 + v9);
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = sub_10009EFA4(*(v10 + 16), 0);
    v13 = *(sub_1000AB97C() - 8);
    v23 = sub_1000A3EF4(&v25, &v12[(*(v13 + 80) + 32) & ~*(v13 + 80)], v11, v10);
    v14 = v25;

    sub_100012760(v14);
    if (v23 != v11)
    {
      __break(1u);
LABEL_7:
      sub_10001E824();
      v24 = sub_1000AC3FC();
      v15 = sub_1000AC2BC();
      sub_1000ABA5C("Failed to send reply because there is no list request", 53, 2, &_mh_execute_header, v24, v15, _swiftEmptyArrayStorage);

      return;
    }
  }

  else
  {

    v12 = _swiftEmptyArrayStorage;
  }

  type metadata accessor for IMBListResponse();
  v16 = swift_allocObject();
  v16[4] = 0;
  v16[2] = v4;
  v25 = v12;

  sub_1000A17F4(&v25);

  v17 = *(v1 + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_conversation);
  v16[3] = v25;
  sub_100060250(v17, *(v1 + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_message));
  v18 = v1 + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController__dismissalDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v19 = *(v18 + 8);
      v20 = swift_getObjectType();
      v21 = *(v19 + 16);
      v22 = type metadata accessor for IMBListPickerTableViewController();
      v21(v1, v22, v20, v19);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    __break(1u);

    __break(1u);
  }
}

unint64_t sub_10001D838(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1000AC02C();
  v7 = [a1 dequeueReusableCellWithIdentifier:v6];

  if (v7)
  {
    type metadata accessor for ListPickerTableViewCell();
    v8 = swift_dynamicCastClass();
    if (v8)
    {
      v9 = v8;
      v10 = OBJC_IVAR____TtC8Business23ListPickerTableViewCell_multipleSelectionEnabled;
      *(v8 + OBJC_IVAR____TtC8Business23ListPickerTableViewCell_multipleSelectionEnabled) = *(v2 + OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_multipleSelectionEnabled);
      v11 = [*(v2 + OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_tableView) separatorColor];
      v12 = sub_100015000();
      [v12 setBackgroundColor:v11];

      v13 = *(v3 + OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_listRequest);
      if (!v13)
      {
LABEL_13:
        v19 = OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_userCanSelect;
        if ((*(v3 + OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_userCanSelect) & 1) != 0 || sub_1000AB96C() != 1)
        {
          v20 = 1.0;
        }

        else
        {
          v20 = 0.3;
        }

        v21 = [v9 contentView];
        [v21 setAlpha:v20];

        if (*(v3 + OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_cellShouldHaveSelectionIcon) != 1)
        {
          goto LABEL_40;
        }

        v22 = OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_selectedItems;
        swift_beginAccess();
        if (!*(*(v3 + v22) + 16) || (, sub_10004F218(a2), v24 = v23, , (v24 & 1) == 0))
        {
          v33 = *&v9[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_iconImageView];
          if (v9[v10] == 1)
          {
            v34 = objc_opt_self();
            v35 = sub_1000AC02C();
            v36 = [v34 kitImageNamed:v35];

            if (v36)
            {
              [v36 size];
              v37 = [v34 _tintedImageForSize:*&v9[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_notSelectedIconTintColor] withTint:0 effectsImage:v36 maskImage:0 style:?];
            }

            else
            {
              v37 = 0;
            }

            [v33 setImage:v37];
          }

          else
          {
            [*&v9[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_iconImageView] setImage:0];
          }

          v39 = 0;
          goto LABEL_39;
        }

        v25 = *&v9[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_iconImageView];
        if (v9[v10])
        {
          v26 = objc_opt_self();
          v27 = sub_1000AC02C();
          v28 = [v26 kitImageNamed:v27];

          if (!v28)
          {
            v38 = 0;
            goto LABEL_35;
          }

          [v28 size];
          v29 = [v26 _tintedImageForSize:*&v9[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_selectedIconTintColor] withTint:0 effectsImage:v28 maskImage:0 style:?];
        }

        else
        {
          v28 = sub_1000AC02C();
          v29 = [objc_opt_self() systemImageNamed:v28];
        }

        v38 = v29;

LABEL_35:
        [v25 setImage:v38];

        v39 = 1;
LABEL_39:
        v9[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_showingIcon] = v39;
LABEL_40:
        v40 = v7;
        [v9 setSelectionStyle:0];
        if ((*(v3 + v19) & 1) == 0)
        {
          [*&v9[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_iconImageView] setHidden:1];
        }

        if (sub_10002CE60() != 2)
        {
          goto LABEL_46;
        }

        v41 = sub_1000AB95C();
        result = [a1 numberOfRowsInSection:sub_1000AB96C()];
        if (!__OFSUB__(result, 1))
        {
          if (v41 == result - 1)
          {
            v9[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_showsSeparator] = 0;
            v42 = *&v9[OBJC_IVAR____TtC8Business23ListPickerTableViewCell____lazy_storage___separatorView];
            [v42 setHidden:1];
LABEL_47:

            return v9;
          }

LABEL_46:
          v9[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_showsSeparator] = 1;
          v42 = *&v9[OBJC_IVAR____TtC8Business23ListPickerTableViewCell____lazy_storage___separatorView];
          [v42 setHidden:0];
          goto LABEL_47;
        }

        goto LABEL_55;
      }

      v14 = *(v13 + 24);

      result = sub_1000AB96C();
      if ((v14 & 0xC000000000000001) != 0)
      {
        v16 = sub_1000AC5AC();
      }

      else
      {
        if ((result & 0x8000000000000000) != 0)
        {
          __break(1u);
          goto LABEL_51;
        }

        if (result >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_53;
        }

        v16 = *(v14 + 8 * result + 32);
      }

      v17 = *(v16 + 40);

      result = sub_1000AB95C();
      if ((v17 & 0xC000000000000001) == 0)
      {
        if ((result & 0x8000000000000000) == 0)
        {
          if (result < *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v18 = *(v17 + 8 * result + 32);

LABEL_12:

            *&v9[OBJC_IVAR____TtC8Business23ListPickerTableViewCell_listItem] = v18;
            swift_retain_n();

            sub_100014A48();

            goto LABEL_13;
          }

LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
          return result;
        }

LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

LABEL_51:
      v18 = sub_1000AC5AC();
      goto LABEL_12;
    }
  }

  if (qword_1000EEE88 != -1)
  {
    swift_once();
  }

  v30 = qword_1000FC010;
  v31 = sub_1000AC28C();
  sub_1000ABA5C("cellForRowAtIndexPath unable to dequeue cell", 44, 2, &_mh_execute_header, v30, v31, _swiftEmptyArrayStorage);
  v32 = objc_allocWithZone(UITableViewCell);

  return [v32 init];
}

char *sub_10001DFFC(char *result, unint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_listRequest);
  if (!v4)
  {
    return 0;
  }

  v6 = *(v4 + 24);
  if ((v6 & 0xC000000000000001) == 0)
  {
    if ((a2 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
    {
      v7 = result;
      v8 = *(v6 + 8 * a2 + 32);

      goto LABEL_6;
    }

    __break(1u);
    goto LABEL_22;
  }

  v7 = result;

  v8 = sub_1000AC5AC();
LABEL_6:
  v9 = *(v8 + 16);
  v10 = *(v8 + 24);

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11 || (v12 = sub_1000AC02C(), v13 = [v7 dequeueReusableHeaderFooterViewWithIdentifier:v12], v12, !v13))
  {

    return 0;
  }

  type metadata accessor for IMBDefaultSectionHeader();
  result = swift_dynamicCastClass();
  if (!result)
  {

    return 0;
  }

  v3 = *&result[OBJC_IVAR____TtC8Business23IMBDefaultSectionHeader_headerLabel];
  v14 = *(v4 + 24);
  if ((v14 & 0xC000000000000001) != 0)
  {
LABEL_22:
    v15 = result;
    v20 = v3;
    sub_1000AC5AC();
    goto LABEL_15;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v15 = result;
    v16 = v3;

LABEL_15:

    sub_1000AC0FC();

    v17 = sub_1000AC02C();

    [v3 setText:v17];

    v18 = [*(v2 + OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_tableView) separatorColor];
    v19 = sub_10008D2BC();
    [v19 setBackgroundColor:v18];

    return v15;
  }

  __break(1u);
  return result;
}

uint64_t sub_10001E3B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1000AB97C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000AB93C();
  v9 = a1;
  sub_10001C260(v8);

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10001E680()
{
}

id sub_10001E6C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IMBListPickerTableViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10001E764(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLHelper(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001E7C8(uint64_t a1)
{
  v2 = type metadata accessor for URLHelper(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10001E824()
{
  result = qword_1000F0070;
  if (!qword_1000F0070)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000F0070);
  }

  return result;
}

uint64_t sub_10001E870(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000413C(&qword_1000EFE88, &qword_1000B1198);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10001E92C()
{
  result = qword_1000EFE98;
  if (!qword_1000EFE98)
  {
    sub_1000AB97C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFE98);
  }

  return result;
}

uint64_t sub_10001E984(unint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_listRequest);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 24);
  if ((v3 & 0xC000000000000001) == 0)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      v4 = *(*(v3 + 8 * a1 + 32) + 40);
      if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
      {
        return *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      goto LABEL_14;
    }

    __break(1u);
LABEL_14:

LABEL_15:
    v8 = sub_1000AC65C();
    goto LABEL_16;
  }

  v6 = sub_1000AC5AC();

  v7 = *(v6 + 40);

  swift_unknownObjectRelease();
  if (v7 < 0 || (v7 & 0x4000000000000000) != 0)
  {
    goto LABEL_15;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_16:

  return v8;
}

unint64_t sub_10001EA7C(uint64_t a1)
{
  v2 = v1;
  v4 = [v1 countryCode];
  v5 = sub_1000AC06C();
  v7 = v6;

  v93 = &type metadata for String;
  *&v92 = v5;
  *(&v92 + 1) = v7;
  sub_100006910(&v92, v96);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v95 = _swiftEmptyDictionarySingleton;
  sub_10003A3E8(v96, 0x437972746E756F63, 0xEB0000000065646FLL, isUniquelyReferenced_nonNull_native);
  v9 = v95;
  v97 = v95;
  v10 = [v2 currencyCode];
  v11 = sub_1000AC06C();
  v13 = v12;

  v93 = &type metadata for String;
  *&v92 = v11;
  *(&v92 + 1) = v13;
  sub_100006910(&v92, v96);
  v14 = swift_isUniquelyReferenced_nonNull_native();
  v95 = v9;
  sub_10003A3E8(v96, 0x79636E6572727563, 0xEC00000065646F43, v14);
  v15 = v95;
  v16 = [v2 supportedCountries];
  if (!v16)
  {
    goto LABEL_7;
  }

  v17 = v16;
  v18 = sub_1000AC26C();

  v19 = *(v18 + 16);
  if (!v19)
  {
    goto LABEL_5;
  }

  v20 = sub_10009EF1C(*(v18 + 16), 0);
  v21 = sub_1000A3C48(&v92, v20 + 4, v19, v18);
  sub_100012760(v92);
  if (v21 != v19)
  {
    __break(1u);
LABEL_5:

    v20 = _swiftEmptyArrayStorage;
  }

  v93 = sub_10000413C(qword_1000F1E10, &qword_1000B0490);
  *&v92 = v20;
  sub_100006910(&v92, v96);
  v22 = swift_isUniquelyReferenced_nonNull_native();
  v95 = v15;
  sub_10003A3E8(v96, 0xD000000000000012, 0x80000001000B5DD0, v22);
  v15 = v95;
  v97 = v95;
LABEL_7:
  v23 = [v2 merchantIdentifier];
  v24 = sub_1000AC06C();
  v26 = v25;

  v93 = &type metadata for String;
  *&v92 = v24;
  *(&v92 + 1) = v26;
  sub_100006910(&v92, v96);
  v27 = swift_isUniquelyReferenced_nonNull_native();
  v94 = _swiftEmptyDictionarySingleton;
  sub_10003A3E8(v96, 0xD000000000000012, 0x80000001000B70D0, v27);
  v28 = v94;
  v95 = v94;
  v29 = *(a1 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_supportedNetworks);
  if (v29)
  {
    v93 = sub_10000413C(qword_1000F1E10, &qword_1000B0490);
    *&v92 = v29;
    sub_100006910(&v92, v96);

    v30 = swift_isUniquelyReferenced_nonNull_native();
    v94 = v28;
    sub_10003A3E8(v96, 0xD000000000000011, 0x80000001000B5B80, v30);
    v95 = v94;
  }

  else
  {
    sub_100039E5C(0xD000000000000011, 0x80000001000B5B80, &v92);
    sub_1000172E0(&v92);
  }

  v31 = *(a1 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_merchantCapabilities);
  if (v31)
  {
    v93 = sub_10000413C(qword_1000F1E10, &qword_1000B0490);
    *&v92 = v31;
    sub_100006910(&v92, v96);

    v32 = v95;
    v33 = swift_isUniquelyReferenced_nonNull_native();
    v94 = v32;
    sub_10003A3E8(v96, 0xD000000000000014, 0x80000001000B5B60, v33);
    v34 = v94;
    v95 = v94;
  }

  else
  {
    sub_100039E5C(0xD000000000000014, 0x80000001000B5B60, &v92);
    sub_1000172E0(&v92);
    v34 = v95;
  }

  v93 = sub_10000413C(&qword_1000F1DD0, &unk_1000B07A0);
  *&v92 = v34;
  sub_100006910(&v92, v96);

  v35 = swift_isUniquelyReferenced_nonNull_native();
  v94 = v15;
  sub_10003A3E8(v96, 0x796150656C707061, 0xE800000000000000, v35);
  v97 = v94;
  v36 = [v2 requiredBillingContactFields];
  type metadata accessor for PKContactField(0);
  sub_10001F618();
  v37 = sub_1000AC26C();

  v38 = sub_100081820(v37);

  v39 = sub_10000413C(qword_1000F1E10, &qword_1000B0490);
  v93 = v39;
  *&v92 = v38;
  sub_100006910(&v92, v96);
  v40 = v97;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v94 = v40;
  sub_10003A3E8(v96, 0xD00000000000001CLL, 0x80000001000B6120, v41);
  v97 = v94;
  v42 = [v2 requiredShippingContactFields];
  v43 = sub_1000AC26C();

  v44 = sub_100081820(v43);

  v93 = v39;
  *&v92 = v44;
  sub_100006910(&v92, v96);
  v45 = v97;
  v46 = swift_isUniquelyReferenced_nonNull_native();
  v94 = v45;
  sub_10003A3E8(v96, 0xD00000000000001CLL, 0x80000001000B6120, v46);
  v97 = v94;
  v47 = [v2 paymentSummaryItems];
  sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);
  v48 = sub_1000AC19C();

  if (v48 >> 62)
  {
    v49 = sub_1000AC65C();
  }

  else
  {
    v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v91 = v2;
  if (v49)
  {
    *&v92 = _swiftEmptyArrayStorage;
    sub_10009C1F8(0, v49 & ~(v49 >> 63), 0);
    if (v49 < 0)
    {
      __break(1u);
      goto LABEL_64;
    }

    v89 = a1;
    v50 = 0;
    v51 = v92;
    do
    {
      if ((v48 & 0xC000000000000001) != 0)
      {
        v52 = sub_1000AC5AC();
      }

      else
      {
        v52 = *(v48 + 8 * v50 + 32);
      }

      v53 = v52;
      v54 = [v52 dictionaryRepresentation];
      if (v54)
      {
        v55 = v54;
        v56 = sub_1000ABFBC();
      }

      else
      {

        v56 = 0;
      }

      *&v92 = v51;
      v58 = v51[2];
      v57 = v51[3];
      if (v58 >= v57 >> 1)
      {
        sub_10009C1F8((v57 > 1), v58 + 1, 1);
        v51 = v92;
      }

      ++v50;
      v51[2] = v58 + 1;
      v51[v58 + 4] = v56;
    }

    while (v49 != v50);

    a1 = v89;
  }

  else
  {

    v51 = _swiftEmptyArrayStorage;
  }

  v59 = sub_10000413C(&qword_1000EF640, &qword_1000B0460);
  v93 = v59;
  *&v92 = v51;
  sub_100006910(&v92, v96);
  v60 = v97;
  v61 = swift_isUniquelyReferenced_nonNull_native();
  v94 = v60;
  sub_10003A3E8(v96, 0x6D657449656E696CLL, 0xE900000000000073, v61);
  v97 = v94;
  v62 = *(a1 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
  v63 = _swiftEmptyArrayStorage;
  if (v62)
  {
    v64 = [v62 shippingMethods];
    if (v64)
    {
      v65 = v64;
      sub_100005A24(0, &qword_1000F0220, PKShippingMethod_ptr);
      v66 = sub_1000AC19C();

      if (v66 >> 62)
      {
LABEL_48:
        v67 = sub_1000AC65C();
        if (!v67)
        {
          goto LABEL_49;
        }

        goto LABEL_35;
      }
    }

    else
    {
      v66 = _swiftEmptyArrayStorage;
      if (_swiftEmptyArrayStorage >> 62)
      {
        goto LABEL_48;
      }
    }
  }

  else
  {
    v66 = _swiftEmptyArrayStorage;
    if (_swiftEmptyArrayStorage >> 62)
    {
      goto LABEL_48;
    }
  }

  v67 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v67)
  {
LABEL_49:

    goto LABEL_50;
  }

LABEL_35:
  *&v92 = _swiftEmptyArrayStorage;
  sub_10009C1F8(0, v67 & ~(v67 >> 63), 0);
  if (v67 < 0)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v90 = v59;
  v68 = 0;
  v63 = v92;
  do
  {
    if ((v66 & 0xC000000000000001) != 0)
    {
      v69 = sub_1000AC5AC();
    }

    else
    {
      v69 = *(v66 + 8 * v68 + 32);
    }

    v70 = v69;
    v71 = [v69 dictionaryRepresentation];
    if (v71)
    {
      v72 = v71;
      v73 = sub_1000ABFBC();
    }

    else
    {

      v73 = 0;
    }

    *&v92 = v63;
    v75 = v63[2];
    v74 = v63[3];
    if (v75 >= v74 >> 1)
    {
      sub_10009C1F8((v74 > 1), v75 + 1, 1);
      v63 = v92;
    }

    ++v68;
    v63[2] = v75 + 1;
    v63[v75 + 4] = v73;
  }

  while (v67 != v68);

  v2 = v91;
  v59 = v90;
LABEL_50:
  v93 = v59;
  *&v92 = v63;
  sub_100006910(&v92, v96);
  v76 = v97;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v94 = v76;
  sub_10003A3E8(v96, 0x676E697070696873, 0xEF73646F6874654DLL, v77);
  v97 = v94;
  v78 = [v2 paymentSummaryItems];
  v79 = sub_1000AC19C();

  if (!(v79 >> 62))
  {
    v80 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v80)
    {
      goto LABEL_52;
    }

LABEL_61:

LABEL_62:
    sub_100039E5C(0x6C61746F74, 0xE500000000000000, &v92);
    sub_1000172E0(&v92);
    return v97;
  }

  v80 = sub_1000AC65C();
  if (!v80)
  {
    goto LABEL_61;
  }

LABEL_52:
  v81 = __OFSUB__(v80, 1);
  result = v80 - 1;
  if (v81)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if ((v79 & 0xC000000000000001) != 0)
  {
LABEL_66:
    v83 = sub_1000AC5AC();
LABEL_57:
    v84 = v83;

    v85 = [v84 dictionaryRepresentation];

    if (v85)
    {
      v86 = sub_1000ABFBC();

      v93 = sub_10000413C(&qword_1000EF648, &qword_1000B0468);
      *&v92 = v86;
      sub_100006910(&v92, v96);
      v87 = v97;
      v88 = swift_isUniquelyReferenced_nonNull_native();
      v94 = v87;
      sub_10003A3E8(v96, 0x6C61746F74, 0xE500000000000000, v88);
      return v94;
    }

    goto LABEL_62;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v83 = *(v79 + 8 * result + 32);
    goto LABEL_57;
  }

  __break(1u);
  return result;
}

unint64_t sub_10001F618()
{
  result = qword_1000EF148;
  if (!qword_1000EF148)
  {
    type metadata accessor for PKContactField(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EF148);
  }

  return result;
}

uint64_t sub_10001F670(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 5522759;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 5526864;
    }

    else
    {
      v4 = 0x4554454C4544;
    }

    if (v3 == 2)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 1414745936;
    }

    else
    {
      v4 = 5522759;
    }

    if (v3)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0xE300000000000000;
  v8 = 5526864;
  if (a2 != 2)
  {
    v8 = 0x4554454C4544;
    v7 = 0xE600000000000000;
  }

  if (a2)
  {
    v2 = 1414745936;
    v6 = 0xE400000000000000;
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
    v11 = sub_1000AC7AC();
  }

  return v11 & 1;
}

uint64_t sub_10001F784(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0xD000000000000014;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3 == 2)
    {
      v5 = 0x80000001000B55D0;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xD000000000000015;
    }

    else
    {
      v4 = 0xD000000000000016;
    }

    if (v3)
    {
      v5 = 0x80000001000B55B0;
    }

    else
    {
      v5 = 0x80000001000B5590;
    }
  }

  v6 = 0x80000001000B55D0;
  if (a2 == 2)
  {
    v2 = 0xD000000000000014;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x80000001000B55B0;
  if (a2)
  {
    v8 = 0xD000000000000015;
  }

  else
  {
    v8 = 0xD000000000000016;
  }

  if (!a2)
  {
    v7 = 0x80000001000B5590;
  }

  if (a2 <= 1u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v2;
  }

  if (a2 <= 1u)
  {
    v10 = v7;
  }

  else
  {
    v10 = v6;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1000AC7AC();
  }

  return v11 & 1;
}

unint64_t sub_10001F8A8(char a1)
{
  result = 0x6D754E656E6F6870;
  switch(a1)
  {
    case 1:
      result = 0x6464416C69616D65;
      break;
    case 2:
      result = 1701667182;
      break;
    case 3:
      result = 0x636974656E6F6870;
      break;
    case 4:
      result = 0x64416C6174736F70;
      break;
    case 5:
      result = 0x4C73736572646461;
      break;
    case 6:
      result = 0x7974696C61636F6CLL;
      break;
    case 7:
      result = 0x6C61636F4C627573;
      break;
    case 8:
      result = 0x6F436C6174736F70;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0xD000000000000015;
      break;
    case 11:
      result = 0x7972746E756F63;
      break;
    case 12:
      result = 0x437972746E756F63;
      break;
    default:
      return result;
  }

  return result;
}

Swift::Int sub_10001FA88()
{
  sub_1000AC87C();
  sub_1000AC11C();

  return sub_1000AC8CC();
}

uint64_t sub_10001FB50(uint64_t a1)
{
  sub_1000AC11C();
}

Swift::Int sub_10001FC04()
{
  sub_1000AC87C();
  sub_1000AC11C();

  return sub_1000AC8CC();
}

unint64_t sub_10001FCC8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100020938(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_10001FCF8(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  if (*v1 == 2)
  {
    v3 = 0xD000000000000014;
    v2 = 0x80000001000B55D0;
  }

  v4 = 0x80000001000B5590;
  v5 = 0xD000000000000015;
  if (*v1)
  {
    v4 = 0x80000001000B55B0;
  }

  else
  {
    v5 = 0xD000000000000016;
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3;
  }

  if (*v1 <= 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_10001FD7C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_10001F8A8(*a1);
  v5 = v4;
  if (v3 == sub_10001F8A8(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000AC7AC();
  }

  return v8 & 1;
}

Swift::Int sub_10001FE04()
{
  v1 = *v0;
  sub_1000AC87C();
  sub_10001F8A8(v1);
  sub_1000AC11C();

  return sub_1000AC8CC();
}

uint64_t sub_10001FE68(uint64_t a1)
{
  sub_10001F8A8(*v1);
  sub_1000AC11C();
}

Swift::Int sub_10001FEBC()
{
  v1 = *v0;
  sub_1000AC87C();
  sub_10001F8A8(v1);
  sub_1000AC11C();

  return sub_1000AC8CC();
}

unint64_t sub_10001FF1C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100020984(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_10001FF4C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10001F8A8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void *sub_10001FF78()
{
  v1 = v0;
  v33 = _swiftEmptyDictionarySingleton;
  v2 = sub_1000AC06C();
  v4 = v3;
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v32 = &type metadata for String;
  if (!v6)
  {
    v5 = 0;
  }

  v7 = 0xE000000000000000;
  if (v6)
  {
    v7 = v6;
  }

  *&v31 = v5;
  *(&v31 + 1) = v7;
  sub_100006910(&v31, v30);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_10003A3E8(v30, v2, v4, isUniquelyReferenced_nonNull_native);

  v9 = _swiftEmptyDictionarySingleton;
  v33 = _swiftEmptyDictionarySingleton;
  switch(*(v1 + 17))
  {
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
    case 0xC:
      v10 = sub_1000AC06C();
      v12 = v18;
      v19 = sub_1000AC06C();
      v21 = v20;
      v13 = sub_1000AC06C();
      v15 = v22;
      if (!v21)
      {
        goto LABEL_12;
      }

      v32 = &type metadata for String;
      *&v31 = v19;
      *(&v31 + 1) = v21;
      v23 = v13;
      sub_100006910(&v31, v30);
      v24 = swift_isUniquelyReferenced_nonNull_native();
      sub_10003A3E8(v30, v23, v15, v24);

      v33 = _swiftEmptyDictionarySingleton;
      goto LABEL_13;
    case 0xD:
      if (qword_1000EEE80 != -1)
      {
        swift_once();
      }

      v16 = qword_1000FC008;
      v17 = sub_1000AC2AC();
      sub_1000ABA5C("BusinessChat: contactField on apple pay error was not a recognized field", 72, 2, &_mh_execute_header, v16, v17, _swiftEmptyArrayStorage);
      break;
    default:
      v10 = sub_1000AC06C();
      v12 = v11;
      v13 = sub_1000AC06C();
      v15 = v14;
LABEL_12:
      sub_100039E5C(v13, v15, v30);

      sub_1000172E0(v30);
      v9 = v33;
LABEL_13:
      v25 = sub_1000AC06C();
      v27 = v26;
      v32 = &type metadata for String;
      *&v31 = v10;
      *(&v31 + 1) = v12;
      sub_100006910(&v31, v30);
      v28 = swift_isUniquelyReferenced_nonNull_native();
      sub_10003A3E8(v30, v25, v27, v28);

      break;
  }

  return v9;
}

void *sub_100020350()
{
  v1 = v0;
  if (*(v0 + 16) > 1u)
  {
    v3 = 0x6E776F6E6B6E75;
    if (*(v0 + 16) == 2)
    {
      v3 = 0xD000000000000014;
      v2 = 0x80000001000B55D0;
    }

    else
    {
      v2 = 0xE700000000000000;
    }
  }

  else if (*(v0 + 16))
  {
    v2 = 0x80000001000B55B0;
    v3 = 0xD000000000000015;
  }

  else
  {
    v2 = 0x80000001000B5590;
    v3 = 0xD000000000000016;
  }

  v14 = &type metadata for String;
  *&v13 = v3;
  *(&v13 + 1) = v2;
  sub_100006910(&v13, v12);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_10003A3E8(v12, 1701080931, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
  v15 = _swiftEmptyDictionarySingleton;
  v5 = *(v0 + 17);
  if (v5 == 13)
  {
    sub_100039E5C(0x46746361746E6F63, 0xEC000000646C6569, &v13);
    sub_1000172E0(&v13);
    v6 = *(v0 + 32);
    if (v6)
    {
LABEL_10:
      v7 = *(v1 + 24);
      v14 = &type metadata for String;
      *&v13 = v7;
      *(&v13 + 1) = v6;
      sub_100006910(&v13, v12);

      v8 = v15;
      v9 = swift_isUniquelyReferenced_nonNull_native();
      sub_10003A3E8(v12, 0x6567617373656DLL, 0xE700000000000000, v9);
      return v8;
    }
  }

  else
  {
    v14 = &type metadata for ApplePayContactField;
    LOBYTE(v13) = v5;
    sub_100006910(&v13, v12);
    v11 = swift_isUniquelyReferenced_nonNull_native();
    sub_10003A3E8(v12, 0x46746361746E6F63, 0xEC000000646C6569, v11);
    v15 = _swiftEmptyDictionarySingleton;
    v6 = *(v0 + 32);
    if (v6)
    {
      goto LABEL_10;
    }
  }

  sub_100039E5C(0x6567617373656DLL, 0xE700000000000000, &v13);
  sub_1000172E0(&v13);
  return v15;
}

uint64_t sub_10002058C()
{

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for ApplePayContactField(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ApplePayContactField(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TransactionError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TransactionError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10002088C()
{
  result = qword_1000EFF70;
  if (!qword_1000EFF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFF70);
  }

  return result;
}

unint64_t sub_1000208E4()
{
  result = qword_1000EFF78;
  if (!qword_1000EFF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EFF78);
  }

  return result;
}

unint64_t sub_100020938(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000DA318;
  v6._object = a2;
  v4 = sub_1000AC6AC(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_100020984(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000DA398;
  v6._object = a2;
  v4 = sub_1000AC6AC(v3, v6);

  if (v4 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1000209D0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  type metadata accessor for IMBApplePayError();
  v12 = swift_allocObject();
  v13 = sub_100020938(a1, a2);
  if (v13 == 4)
  {

    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(v12 + 16) = v13;
    *(v12 + 24) = a3;
    *(v12 + 32) = a4;
    if (a6)
    {
      v14 = a5;
    }

    else
    {
      v14 = 0;
    }

    if (a6)
    {
      v15 = a6;
    }

    else
    {
      v15 = 0xE000000000000000;
    }

    *(v12 + 17) = sub_100020984(v14, v15);
  }

  return v12;
}

uint64_t sub_100020A9C(uint64_t a1)
{
  if (!*(a1 + 16) || (v2 = sub_10004F0CC(1701080931, 0xE400000000000000), (v3 & 1) == 0) || (sub_1000068B4(*(a1 + 56) + 32 * v2, v17), (swift_dynamicCast() & 1) == 0))
  {

    return 0;
  }

  if (!*(a1 + 16))
  {
    v8 = 0;
    v7 = 0;
    goto LABEL_26;
  }

  v4 = sub_10004F0CC(0x6567617373656DLL, 0xE700000000000000);
  if ((v5 & 1) == 0)
  {
    v7 = 0;
    v8 = 0;
    if (*(a1 + 16))
    {
      goto LABEL_19;
    }

LABEL_26:

    v13 = 0;
    v14 = 0;
    goto LABEL_27;
  }

  sub_1000068B4(*(a1 + 56) + 32 * v4, v17);
  v6 = swift_dynamicCast();
  if (v6)
  {
    v7 = v15;
  }

  else
  {
    v7 = 0;
  }

  if (v6)
  {
    v8 = v16;
  }

  else
  {
    v8 = 0;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_26;
  }

LABEL_19:
  v10 = sub_10004F0CC(0x46746361746E6F63, 0xEC000000646C6569);
  if ((v11 & 1) == 0)
  {
    goto LABEL_26;
  }

  sub_1000068B4(*(a1 + 56) + 32 * v10, v17);

  v12 = swift_dynamicCast();
  if (v12)
  {
    v13 = v15;
  }

  else
  {
    v13 = 0;
  }

  if (v12)
  {
    v14 = v16;
  }

  else
  {
    v14 = 0;
  }

LABEL_27:
  result = sub_1000209D0(v15, v16, v7, v8, v13, v14);
  if (!result)
  {
    return 0;
  }

  return result;
}

uint64_t sub_100020C5C(void *a1)
{
  v3 = v1;
  v5 = [a1 messageData];
  if (!v5 || (v6 = v5, v7 = [v5 jsonDictionary], v6, !v7))
  {
    sub_100020F2C();
    swift_allocError();
    *v15 = 0;
LABEL_12:
    swift_willThrow();

    goto LABEL_13;
  }

  v8 = sub_1000ABFBC();

  v9 = sub_1000AC06C();
  if (!*(v8 + 16))
  {

    goto LABEL_10;
  }

  v11 = sub_10004F0CC(v9, v10);
  v13 = v12;

  if ((v13 & 1) == 0)
  {
LABEL_10:

    goto LABEL_11;
  }

  sub_1000068B4(*(v8 + 56) + 32 * v11, v23);

  v14 = sub_10000413C(&qword_1000F1DD0, &unk_1000B07A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    sub_1000170E0();
    swift_allocError();
    *v16 = 1;
    goto LABEL_12;
  }

  v22[3] = v14;
  sub_100020F80();
  sub_100020FD4();
  sub_1000ABA3C();
  if (!v2)
  {

    sub_10000E738(v22);
    v18 = v23[1];
    v19 = v24;
    v20 = v25;
    v21 = v26;
    *(v3 + 16) = v23[0];
    *(v3 + 24) = v18;
    *(v3 + 32) = v19;
    *(v3 + 40) = v20;
    *(v3 + 48) = v21;
    *(v3 + 56) = v27;
    return v3;
  }

  sub_10000E738(v22);
LABEL_13:
  type metadata accessor for BIAReplyPayload();
  swift_deallocPartialClassInstance();
  return v3;
}

uint64_t sub_100020EA8()
{

  return swift_deallocClassInstance();
}

unint64_t sub_100020F2C()
{
  result = qword_1000F0020;
  if (!qword_1000F0020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0020);
  }

  return result;
}

unint64_t sub_100020F80()
{
  result = qword_1000F0028;
  if (!qword_1000F0028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0028);
  }

  return result;
}

unint64_t sub_100020FD4()
{
  result = qword_1000F0030;
  if (!qword_1000F0030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0030);
  }

  return result;
}

unint64_t sub_10002103C()
{
  result = qword_1000F0038;
  if (!qword_1000F0038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0038);
  }

  return result;
}

uint64_t IMBApplePayManager.delegate.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*IMBApplePayManager.delegate.modify(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC8Business18IMBApplePayManager_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_100021288;
}

void sub_100021288(void **a1, char a2)
{
  v3 = *a1;
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

  free(v3);
}

void IMBApplePayManager.message()()
{
  v1 = v0;
  v2 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  __chkstk_darwin(v2 - 8);
  v4 = v56 - v3;
  v5 = OBJC_IVAR____TtC8Business18IMBApplePayManager_imbMessage;
  v6 = [*(v1 + OBJC_IVAR____TtC8Business18IMBApplePayManager_imbMessage) data];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1000AB73C();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0xF000000000000000;
  }

  v11 = [*(v1 + v5) url];
  if (v11)
  {
    v12 = v11;
    sub_1000AB6AC();

    v13 = sub_1000AB6EC();
    (*(*(v13 - 8) + 56))(v4, 0, 1, v13);
  }

  else
  {
    v14 = sub_1000AB6EC();
    (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  }

  v15 = [*(v1 + v5) messageGUID];
  if (v15)
  {
    v16 = v15;
    sub_1000AC06C();
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = [*(v1 + v5) isFromMe];
  if (v10 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = sub_1000AB72C().super.isa;
    sub_10000E950(v8, v10);
  }

  v21 = sub_1000AB6EC();
  v22 = *(v21 - 8);
  v24 = 0;
  if ((*(v22 + 48))(v4, 1, v21) != 1)
  {
    sub_1000AB67C(v23);
    v24 = v25;
    (*(v22 + 8))(v4, v21);
  }

  if (v18)
  {
    v26 = sub_1000AC02C();
  }

  else
  {
    v26 = 0;
  }

  v27 = [objc_allocWithZone(type metadata accessor for IMBMessage()) initWithData:isa url:v24 messageGUID:v26 isFromMe:v19];

  if (v27)
  {
    v28 = *(v1 + OBJC_IVAR____TtC8Business18IMBApplePayManager_applePayViewModel);
    v29 = v27;

    sub_100026E1C(v29, v28);

    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1000B14C0;
    v31 = [v29 title];
    if (v31)
    {
      v32 = v31;
      v33 = sub_1000AC06C();
      v35 = v34;
    }

    else
    {
      v33 = 0;
      v35 = 0;
    }

    v56[4] = v33;
    v56[5] = v35;
    sub_10000413C(&qword_1000EF010, &qword_1000AF6C0);
    v36 = sub_1000AC41C();
    v38 = v37;
    *(v30 + 56) = &type metadata for String;
    v39 = sub_10000587C();
    *(v30 + 64) = v39;
    *(v30 + 32) = v36;
    *(v30 + 40) = v38;

    v40 = [v29 subtitle];

    v56[3] = v40;
    sub_10000413C(&qword_1000F0068, &qword_1000B14D8);
    v41 = sub_1000AC41C();
    *(v30 + 96) = &type metadata for String;
    *(v30 + 104) = v39;
    *(v30 + 72) = v41;
    *(v30 + 80) = v42;

    v43 = [v29 subcaption];
    if (v43)
    {
      v44 = sub_1000AC06C();
      v46 = v45;
    }

    else
    {
      v44 = 0;
      v46 = 0;
    }

    v56[1] = v44;
    v56[2] = v46;
    v47 = sub_1000AC41C();
    *(v30 + 136) = &type metadata for String;
    *(v30 + 144) = v39;
    *(v30 + 112) = v47;
    *(v30 + 120) = v48;

    v49 = [v29 messageGUID];

    if (v49)
    {
      v50 = sub_1000AC06C();
      v52 = v51;

      v53 = (v30 + 152);
      *(v30 + 176) = &type metadata for String;
      *(v30 + 184) = v39;
      if (v52)
      {
        *v53 = v50;
LABEL_30:
        *(v30 + 160) = v52;
        sub_100005A24(0, &qword_1000F0070, OS_os_log_ptr);
        v54 = sub_1000AC3FC();
        v55 = sub_1000AC2BC();
        sub_1000ABA5C("BusinessChat: BCApplePayManager: Creating message with title: %@ subtitle: %@ subcaption: %@ guid: %@", 101, 2, &_mh_execute_header, v54, v55, v30);

        return;
      }
    }

    else
    {
      v53 = (v30 + 152);
      *(v30 + 176) = &type metadata for String;
      *(v30 + 184) = v39;
    }

    *v53 = 7104878;
    v52 = 0xE300000000000000;
    goto LABEL_30;
  }

  __break(1u);
}

uint64_t IMBApplePayManager.applePayStatus()()
{
  v1 = OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2)
  {
    return 1;
  }

  v3 = v2 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentState;
  if (*(v3 + 8))
  {
    return 1;
  }

  v5 = *v3;
  sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000AF0E0;
  v7 = sub_10005FCE8(v5);
  v9 = v8;
  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_10000587C();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  sub_100005A24(0, &qword_1000F0070, OS_os_log_ptr);
  v10 = sub_1000AC3FC();
  v11 = sub_1000AC2BC();
  sub_1000ABA5C("BusinessChat: Returned apple pay status = %@", 44, 2, &_mh_execute_header, v10, v11, v6);

  return v5;
}

uint64_t sub_100021A0C()
{
  v1 = v0;
  v2 = sub_10000413C(&qword_1000F0270, &unk_1000B0480);
  __chkstk_darwin(v2 - 8);
  v4 = aBlock - v3;
  v5 = sub_1000AB7EC();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = aBlock - v10;
  sub_100005A24(0, &qword_1000F0070, OS_os_log_ptr);
  v12 = sub_1000AC3FC();
  v13 = sub_1000AC2BC();
  sub_1000ABA5C("BusinessChat: IMBApplePayManager resetExpireTimer", 49, 2, &_mh_execute_header, v12, v13, _swiftEmptyArrayStorage);

  v14 = OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest;
  result = swift_beginAccess();
  v16 = *&v1[v14];
  if (!v16)
  {
    (*(v6 + 56))(v4, 1, 1, v5);
    return sub_10000E784(v4, &qword_1000F0270, &unk_1000B0480);
  }

  if ((*(v16 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentState + 8) & 1) == 0 && *(v16 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentState) == 3)
  {
    return result;
  }

  v17 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_merchantSessionExpireDate;
  swift_beginAccess();
  sub_10000E66C(v16 + v17, v4, &qword_1000F0270, &unk_1000B0480);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_10000E784(v4, &qword_1000F0270, &unk_1000B0480);
  }

  (*(v6 + 32))(v11, v4, v5);
  if ((*(v16 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentState + 8) & 1) == 0 && *(v16 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentState) == 3)
  {
    return (*(v6 + 8))(v11, v5);
  }

  sub_1000AB7DC();
  sub_10002A258();
  v18 = sub_1000AC00C();
  v19 = *(v6 + 8);
  v19(v9, v5);
  if ((v18 & 1) == 0)
  {
    v20 = OBJC_IVAR____TtC8Business18IMBApplePayManager_paymentExpireTimer;
    [*&v1[OBJC_IVAR____TtC8Business18IMBApplePayManager_paymentExpireTimer] invalidate];
    v21 = swift_allocObject();
    *(v21 + 16) = v1;
    v22 = objc_allocWithZone(NSTimer);
    v23 = v1;
    isa = sub_1000AB77C().super.isa;
    aBlock[4] = sub_10002A2B0;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100026DB4;
    aBlock[3] = &unk_1000DB6C0;
    v25 = _Block_copy(aBlock);
    v26 = [v22 initWithFireDate:isa interval:0 repeats:v25 block:0.0];
    _Block_release(v25);

    v27 = *&v1[v20];
    *&v1[v20] = v26;
    v28 = v26;

    if (v28)
    {
      v29 = [objc_opt_self() mainRunLoop];
      [v29 addTimer:v28 forMode:NSDefaultRunLoopMode];
    }
  }

  return (v19)(v11, v5);
}

void sub_100021E6C(uint64_t a1)
{
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  v1 = qword_1000FC008;
  v2 = sub_1000AC2BC();
  sub_1000ABA5C("BusinessChat: Expire date timer fired", 37, 2, &_mh_execute_header, v1, v2, _swiftEmptyArrayStorage);
  sub_100021EF8();
}

void sub_100021EF8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = v3 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentState;
    *v4 = 2;
    *(v4 + 8) = 0;
  }

  v6 = sub_10008AFD8(v5);
  v8 = v7;
  v10 = v9;

  sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1000AF0F0;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = sub_10000587C();
  *(v11 + 32) = v6;
  *(v11 + 40) = v8;
  *(v11 + 96) = sub_100005A24(0, &qword_1000F0260, NSAttributedString_ptr);
  *(v11 + 104) = sub_10002A1F0();
  *(v11 + 72) = v10;
  sub_100005A24(0, &qword_1000F0070, OS_os_log_ptr);
  v12 = v10;
  v13 = sub_1000AC3FC();
  v14 = sub_1000AC2BC();
  sub_1000ABA5C("BusinessChat: Expire Payment title: %@ subtitle: %@", 51, 2, &_mh_execute_header, v13, v14, v11);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong paymentRequestDidUpdate:v1];
    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall IMBApplePayManager.presentApplePay(with:)(UIWindow_optional with)
{
  if (byte_1000FBEC0)
  {
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v2 = qword_1000FC008;
    v3 = sub_1000AC2AC();

    sub_1000ABA5C("IMBApplePayManager: Cannot present apple pay because one modal is already on screen", 83, 2, &_mh_execute_header, v2, v3, _swiftEmptyArrayStorage);
  }

  else
  {
    isa = with.value.super.super.super.isa;
    v5 = OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest;
    swift_beginAccess();
    v6 = *&v1[v5];
    if (v6)
    {
      v7 = *(v6 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
      if (v7)
      {
        v8 = *&v1[OBJC_IVAR____TtC8Business18IMBApplePayManager_window];
        *&v1[OBJC_IVAR____TtC8Business18IMBApplePayManager_window] = isa;
        v9 = v7;
        v10 = isa;

        v11 = [objc_allocWithZone(PKPaymentAuthorizationController) initWithPaymentRequest:v9];
        v12 = *&v1[OBJC_IVAR____TtC8Business18IMBApplePayManager_paymentAuthorizationController];
        *&v1[OBJC_IVAR____TtC8Business18IMBApplePayManager_paymentAuthorizationController] = v11;
        v13 = v11;

        [v13 setDelegate:v1];
        byte_1000FBEC0 = 1;
        v14 = swift_allocObject();
        *(v14 + 16) = v1;
        aBlock[4] = sub_100026F9C;
        aBlock[5] = v14;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10002257C;
        aBlock[3] = &unk_1000DB5B0;
        v15 = _Block_copy(aBlock);
        v16 = v1;

        [v13 presentWithCompletion:v15];
        _Block_release(v15);
      }
    }
  }
}

void sub_1000222E8(uint64_t a1, uint64_t a2)
{
  byte_1000FBEC0 = a1;
  if (a1)
  {
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v2 = qword_1000FC008;
    v3 = sub_1000AC2BC();

    sub_1000ABA5C("ApplePaySheet has been presented", 32, 2, &_mh_execute_header, v2, v3, _swiftEmptyArrayStorage);
  }

  else
  {
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v5 = qword_1000FC008;
    v6 = sub_1000AC2BC();
    sub_1000ABA5C("ApplePaySheet has not been presented", 36, 2, &_mh_execute_header, v5, v6, _swiftEmptyArrayStorage);

    v7 = sub_10008AD70();
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v23 = sub_1000AC28C();
    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1000B0620;
    *(v14 + 56) = &type metadata for String;
    v15 = sub_10000587C();
    *(v14 + 64) = v15;
    *(v14 + 32) = v7;
    *(v14 + 40) = v9;
    v16 = [v11 string];
    v17 = sub_1000AC06C();
    v19 = v18;

    *(v14 + 96) = &type metadata for String;
    *(v14 + 104) = v15;
    *(v14 + 72) = v17;
    *(v14 + 80) = v19;
    v20 = sub_10005FCE8(v13);
    *(v14 + 136) = &type metadata for String;
    *(v14 + 144) = v15;
    *(v14 + 112) = v20;
    *(v14 + 120) = v21;
    sub_1000ABA5C("PresentApplePay\tSending to delegate\ttitle: %@, subtitle: %@, state: %@", 70, 2, &_mh_execute_header, v5, v23, v14);

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong paymentRequestDidUpdate:a2];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

double sub_10002257C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

void sub_10002263C(uint64_t a1)
{
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  v2 = qword_1000FC008;
  v3 = sub_1000AC2BC();
  sub_1000ABA5C("In try again for apple pay", 26, 2, &_mh_execute_header, v2, v3, _swiftEmptyArrayStorage);
  v4 = *(v1 + OBJC_IVAR____TtC8Business18IMBApplePayManager_paymentAuthorizedCompletion);
  if (v4)
  {
    v5 = *(v1 + OBJC_IVAR____TtC8Business18IMBApplePayManager_paymentAuthorizedCompletion + 8);
    v6 = objc_allocWithZone(PKPaymentAuthorizationResult);

    sub_10000413C(&qword_1000F3A60, &qword_1000B1520);
    isa = sub_1000AC18C().super.isa;
    v8 = [v6 initWithStatus:1000 errors:isa];

    v4(v8);
    sub_100026FE0(v4, v5);
  }
}

void sub_1000227D0(void *a1)
{
  v3 = type metadata accessor for Endpoint(0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = (&v25 - v7);
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  v9 = qword_1000FC008;
  v10 = sub_1000AC2BC();
  sub_1000ABA5C("Handling retry attempt", 22, 2, &_mh_execute_header, v9, v10, _swiftEmptyArrayStorage);
  if ([a1 userInfo])
  {
    sub_1000AC47C();
    swift_unknownObjectRelease();
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
  }

  v25 = v29;
  v26 = v30;
  if (*(&v30 + 1))
  {
    type metadata accessor for IMBDelayedAuthResponse(0);
    if (swift_dynamicCast())
    {
      v11 = v28;
      v12 = *&v28[OBJC_IVAR____TtC8Business22IMBDelayedAuthResponse_messageBody];
      v13 = *(sub_10000413C(&qword_1000F0228, &qword_1000B1528) + 48);
      *v8 = v12;
      v14 = OBJC_IVAR____TtC8Business22IMBDelayedAuthResponse_url;
      v15 = sub_1000AB6EC();
      (*(*(v15 - 8) + 16))(v8 + v13, &v11[v14], v15);
      sub_10002A0C8(v8, v6);
      v16 = type metadata accessor for HttpClient(0);
      objc_allocWithZone(v16);
      swift_bridgeObjectRetain_n();
      v17 = sub_100031620(v6);
      *(&v26 + 1) = v16;
      v27 = &off_1000DB940;
      *&v25 = v17;
      sub_10002A12C(v8);
      v18 = *sub_1000058D0(&v25, v16);

      v19 = v1;
      sub_100032F2C(v18, v12, v19);

      swift_bridgeObjectRelease_n();
      sub_10000E738(&v25);
      return;
    }
  }

  else
  {
    sub_10000E784(&v25, &unk_1000F1DF0, &qword_1000B18F0);
  }

  v20 = *&v1[OBJC_IVAR____TtC8Business18IMBApplePayManager_paymentAuthorizedCompletion];
  if (v20)
  {
    v21 = *&v1[OBJC_IVAR____TtC8Business18IMBApplePayManager_paymentAuthorizedCompletion + 8];
    v22 = objc_allocWithZone(PKPaymentAuthorizationResult);

    sub_10000413C(&qword_1000F3A60, &qword_1000B1520);
    isa = sub_1000AC18C().super.isa;
    v24 = [v22 initWithStatus:1 errors:{isa, v25, v26}];

    v20(v24);
    sub_100026FE0(v20, v21);
  }
}

void sub_100022B1C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    sub_100022F90(a1);
  }

  else
  {
    objc_allocWithZone(type metadata accessor for IMBDelayedAuthResponse(0));

    sub_10002A188(a1, 0);
    v7 = sub_1000592E4(a1, a3);
    if (v7)
    {
      v8 = v7;
      if (qword_1000EEE80 != -1)
      {
        swift_once();
      }

      v9 = qword_1000FC008;
      v10 = sub_1000AC2BC();
      sub_1000ABA5C("In additional retry", 19, 2, &_mh_execute_header, v9, v10, _swiftEmptyArrayStorage);
      v11 = [objc_opt_self() timerWithTimeInterval:a4 target:"handlePaymentAuthorizationRetryWithTimer:" selector:v8 userInfo:0 repeats:*&v8[OBJC_IVAR____TtC8Business22IMBDelayedAuthResponse_delay]];
      v12 = *(a4 + OBJC_IVAR____TtC8Business18IMBApplePayManager_authorizePaymentRetryTimer);
      *(a4 + OBJC_IVAR____TtC8Business18IMBApplePayManager_authorizePaymentRetryTimer) = v11;
      v13 = v11;

      v16 = [objc_opt_self() mainRunLoop];
      [v16 addTimer:v13 forMode:NSDefaultRunLoopMode];
    }

    else
    {
      if (qword_1000EEE80 != -1)
      {
        swift_once();
      }

      v14 = qword_1000FC008;
      v15 = sub_1000AC2BC();
      sub_1000ABA5C("Did get success in retry attempt", 32, 2, &_mh_execute_header, v14, v15, _swiftEmptyArrayStorage);
      sub_100022D64(a1);
    }
  }
}

void sub_100022D64(uint64_t a1)
{
  v1 = sub_10004DA74(a1);
  v2 = sub_100062390(v1);
  if (v2)
  {
    v11 = v2;
    sub_100027000(v2, v3);
  }

  else
  {
    sub_10000413C(&unk_1000F2370, &unk_1000B43C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000AF0E0;
    *(inited + 32) = sub_1000AC06C();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v5;
    *(inited + 48) = 0xD00000000000002CLL;
    *(inited + 56) = 0x80000001000B79C0;
    sub_10004FE58(inited);
    swift_setDeallocating();
    sub_10000E784(inited + 32, &qword_1000F0250, &qword_1000B1540);
    v6 = objc_allocWithZone(NSError);
    v7 = sub_1000AC02C();
    isa = sub_1000ABFAC().super.isa;

    v9 = [v6 initWithDomain:v7 code:800 userInfo:isa];

    v10 = v9;
    sub_100022F90(v10);
  }
}

void sub_100022F90(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000AB62C();
  v5 = &unk_1000EE000;
  v6 = &OBJC_IVAR____TtC8Business30BIABubbleOptionsViewController_containingView;
  v7 = &off_1000AF000;
  if ([v4 code])
  {
    v8 = OBJC_IVAR____TtC8Business18IMBApplePayManager_imbMessage;
    v9 = [*(v1 + OBJC_IVAR____TtC8Business18IMBApplePayManager_imbMessage) rootKey];
    v10 = sub_1000AC06C();
    v12 = v11;

    LODWORD(v9) = [*(v2 + v8) isFromMe];
    v13 = sub_1000AC06C();
    v15 = v14;
    v16 = [*(v2 + v8) version];
    v42 = v10;
    if (v9)
    {
      v43._countAndFlagsBits = 46;
      v43._object = 0xE100000000000000;
      sub_1000AC12C(v43);
      v44._countAndFlagsBits = 0x6465696C706572;
      v44._object = 0xE700000000000000;
      sub_1000AC12C(v44);
    }

    v45._countAndFlagsBits = 46;
    v45._object = 0xE100000000000000;
    sub_1000AC12C(v45);
    v46._countAndFlagsBits = v13;
    v46._object = v15;
    sub_1000AC12C(v46);

    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1000AF0E0;
    *(v17 + 56) = &type metadata for String;
    *(v17 + 64) = sub_10000587C();
    *(v17 + 32) = v42;
    *(v17 + 40) = v12;
    sub_100005A24(0, &qword_1000F0070, OS_os_log_ptr);

    v18 = sub_1000AC3FC();
    v19 = sub_1000AC2BC();
    sub_1000ABA5C("BusinessChat: Logging Message App Extension event: %@", 53, 2, &_mh_execute_header, v18, v19, v17);

    if (qword_1000EEE98 != -1)
    {
      swift_once();
    }

    v20 = qword_1000FC030;
    v21 = sub_1000AC02C();

    [v20 mt_log_icloud_messages_apps_businessframework:v21 version:v16];

    v22 = OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest;
    swift_beginAccess();
    v23 = *(v2 + v22);
    if (v23)
    {
      v24 = v23 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentState;
      *v24 = 7;
      *(v24 + 8) = 0;
    }

    sub_10008A804(7);

    v5 = &unk_1000EE000;
    v7 = &off_1000AF000;
    v6 = &OBJC_IVAR____TtC8Business30BIABubbleOptionsViewController_containingView;
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v25 = qword_1000FC008;
    v26 = sub_1000AC2BC();
    sub_1000ABA5C("BusinessChat: UpdateTransactionStatus Error: the payment authorization result could not be parsed or server unavailable", 119, 2, &_mh_execute_header, v25, v26, _swiftEmptyArrayStorage);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong paymentRequestDidUpdate:v2];
      swift_unknownObjectRelease();
    }
  }

  if (v5[464] != -1)
  {
    swift_once();
  }

  v28 = v6[1];
  v29 = sub_1000AC2BC();
  sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v30 = swift_allocObject();
  v41 = *(v7 + 14);
  *(v30 + 16) = v41;
  swift_getErrorValue();
  v31 = sub_1000AC7FC();
  v33 = v32;
  *(v30 + 56) = &type metadata for String;
  *(v30 + 64) = sub_10000587C();
  *(v30 + 32) = v31;
  *(v30 + 40) = v33;
  sub_1000ABA5C("BusinessChat: Did get error in network request in paymentGatewayUrl: %@", 71, 2, &_mh_execute_header, v28, v29, v30);

  v34 = v2 + OBJC_IVAR____TtC8Business18IMBApplePayManager_paymentAuthorizedCompletion;
  v35 = *(v2 + OBJC_IVAR____TtC8Business18IMBApplePayManager_paymentAuthorizedCompletion);
  if (v35)
  {
    v36 = *(v34 + 8);
    sub_10000413C(&unk_1000F0230, &unk_1000B1530);
    v37 = swift_allocObject();
    *(v37 + 16) = v41;
    *(v37 + 32) = a1;
    v38 = objc_allocWithZone(PKPaymentAuthorizationResult);
    sub_10002A1E0(v35, v36);
    swift_errorRetain();
    sub_10000413C(&qword_1000F3A60, &qword_1000B1520);
    isa = sub_1000AC18C().super.isa;

    v40 = [v38 initWithStatus:1 errors:isa];

    v35(v40);
    sub_100026FE0(v35, v36);
  }
}

uint64_t sub_1000234A4(unint64_t a1, void (*a2)(id), uint64_t a3)
{
  v34 = a1;
  v6 = type metadata accessor for Endpoint(0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = (&v32 - v10);
  v12 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  __chkstk_darwin(v12 - 8);
  v14 = &v32 - v13;
  v15 = sub_1000AB6EC();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest;
  swift_beginAccess();
  v20 = *(v3 + v19);
  if (v20)
  {
    v33 = a3;
    v21 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_orderTrackingUrl;
    swift_beginAccess();
    sub_10000E66C(v20 + v21, v14, &unk_1000F06A0, &unk_1000B0450);
    if ((*(v16 + 48))(v14, 1, v15) != 1)
    {
      (*(v16 + 32))(v18, v14, v15);
      v22 = *(v3 + OBJC_IVAR____TtC8Business18IMBApplePayManager_imbNetworkBody);

      v23 = v22;
      v24 = sub_10009154C(v20, v34);

      v25 = *(sub_10000413C(&qword_1000F0228, &qword_1000B1528) + 48);
      *v11 = v24;
      (*(v16 + 16))(v11 + v25, v18, v15);
      sub_10002A0C8(v11, v9);
      v26 = type metadata accessor for HttpClient(0);
      v27 = objc_allocWithZone(v26);
      v28 = sub_100031620(v9);
      v35[3] = v26;
      v35[4] = &off_1000DB940;
      v35[0] = v28;
      sub_10002A12C(v11);
      v29 = *sub_1000058D0(v35, v26);
      v30 = v33;
      sub_10002A1E0(a2, v33);
      sub_1000326F8(v29, a2, v30);
      sub_100026FE0(a2, v30);

      (*(v16 + 8))(v18, v15);
      return sub_10000E738(v35);
    }
  }

  else
  {
    (*(v16 + 56))(v14, 1, 1, v15);
  }

  return sub_10000E784(v14, &unk_1000F06A0, &unk_1000B0450);
}

uint64_t sub_100023814(uint64_t result, char a2, uint64_t (*a3)(uint64_t))
{
  if (a3)
  {
    if ((a2 & 1) == 0)
    {
      result = 0;
    }

    return a3(result);
  }

  return result;
}

id IMBJITAppBundleManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id IMBApplePayManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IMBApplePayManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Void __swiftcall IMBApplePayManager.paymentAuthorizationControllerDidFinish(_:)(PKPaymentAuthorizationController a1)
{
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  v3 = qword_1000FC008;
  v4 = sub_1000AC29C();
  sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000AF0E0;
  v6 = [(objc_class *)a1.super.isa description];
  v7 = sub_1000AC06C();
  v9 = v8;

  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_10000587C();
  *(v5 + 32) = v7;
  *(v5 + 40) = v9;
  sub_1000ABA5C("BusinessChat: paymentAuthorizationControllerDidFinish: %@", 57, 2, &_mh_execute_header, v3, v4, v5);

  [*(v1 + OBJC_IVAR____TtC8Business18IMBApplePayManager_applePayTryAgainTimer) invalidate];
  [*(v1 + OBJC_IVAR____TtC8Business18IMBApplePayManager_authorizePaymentRetryTimer) invalidate];
  v11[4] = sub_100023BD4;
  v11[5] = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100023BE0;
  v11[3] = &unk_1000DB5D8;
  v10 = _Block_copy(v11);
  [(objc_class *)a1.super.isa dismissWithCompletion:v10];
  _Block_release(v10);
}

double sub_100023BE0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  return result;
}

double sub_100023C8C(void *a1, void *a2, char *a3, void *a4)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a4;
  _Block_copy(a4);
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  v22 = qword_1000FC008;
  v7 = sub_1000AC29C();
  sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000AF0F0;
  v9 = [a1 description];
  v10 = sub_1000AC06C();
  v12 = v11;

  *(v8 + 56) = &type metadata for String;
  v13 = sub_10000587C();
  *(v8 + 64) = v13;
  *(v8 + 32) = v10;
  *(v8 + 40) = v12;
  v14 = [a2 description];
  v15 = sub_1000AC06C();
  v17 = v16;

  *(v8 + 96) = &type metadata for String;
  *(v8 + 104) = v13;
  *(v8 + 72) = v15;
  *(v8 + 80) = v17;
  sub_1000ABA5C("BusinessChat: paymentAuthorizationController: %@, didAuthorizePayment: %@", 73, 2, &_mh_execute_header, v22, v7, v8);

  v18 = &a3[OBJC_IVAR____TtC8Business18IMBApplePayManager_paymentAuthorizedCompletion];
  v19 = *&a3[OBJC_IVAR____TtC8Business18IMBApplePayManager_paymentAuthorizedCompletion];
  v20 = *&a3[OBJC_IVAR____TtC8Business18IMBApplePayManager_paymentAuthorizedCompletion + 8];
  *v18 = sub_10002A1CC;
  v18[1] = v6;

  sub_100026FE0(v19, v20);
  sub_100027ADC(a2, a3, a4);
  _Block_release(a4);

  return result;
}

void IMBApplePayManager.paymentAuthorizationController(_:didAuthorizePayment:handler:)(void *a1, void *a2, void (*a3)(id), void (*a4)(id))
{
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  v23 = qword_1000FC008;
  v22 = sub_1000AC29C();
  sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000AF0F0;
  v10 = [a1 description];
  v11 = sub_1000AC06C();
  v13 = v12;

  *(v9 + 56) = &type metadata for String;
  v14 = sub_10000587C();
  *(v9 + 64) = v14;
  *(v9 + 32) = v11;
  *(v9 + 40) = v13;
  v15 = [a2 description];
  v16 = sub_1000AC06C();
  v18 = v17;

  *(v9 + 96) = &type metadata for String;
  *(v9 + 104) = v14;
  *(v9 + 72) = v16;
  *(v9 + 80) = v18;
  sub_1000ABA5C("BusinessChat: paymentAuthorizationController: %@, didAuthorizePayment: %@", 73, 2, &_mh_execute_header, v23, v22, v9);

  v19 = (v4 + OBJC_IVAR____TtC8Business18IMBApplePayManager_paymentAuthorizedCompletion);
  v20 = *(v4 + OBJC_IVAR____TtC8Business18IMBApplePayManager_paymentAuthorizedCompletion);
  v21 = *(v4 + OBJC_IVAR____TtC8Business18IMBApplePayManager_paymentAuthorizedCompletion + 8);
  *v19 = a3;
  v19[1] = a4;

  sub_100026FE0(v20, v21);

  sub_10002403C(a2, a3, a4);
}

void sub_10002403C(void *a1, void (*a2)(id), uint64_t a3)
{
  v4 = v3;
  v50 = a1;
  v7 = type metadata accessor for Endpoint(0);
  v8 = __chkstk_darwin(v7 - 8);
  v51 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = (&v50 - v10);
  v12 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  __chkstk_darwin(v12 - 8);
  v14 = &v50 - v13;
  v15 = sub_1000AB6EC();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = &v3[OBJC_IVAR____TtC8Business18IMBApplePayManager_paymentAuthorizedCompletion];
  v20 = *&v3[OBJC_IVAR____TtC8Business18IMBApplePayManager_paymentAuthorizedCompletion];
  v21 = *(v19 + 1);
  v52 = a2;
  *v19 = a2;
  *(v19 + 1) = a3;

  sub_100026FE0(v20, v21);
  v22 = [objc_opt_self() timerWithTimeInterval:v4 target:"extendApplePayTimeout" selector:0 userInfo:0 repeats:29.0];
  v23 = *&v4[OBJC_IVAR____TtC8Business18IMBApplePayManager_applePayTryAgainTimer];
  *&v4[OBJC_IVAR____TtC8Business18IMBApplePayManager_applePayTryAgainTimer] = v22;
  v24 = v22;

  v25 = [objc_opt_self() mainRunLoop];
  [v25 addTimer:v24 forMode:NSDefaultRunLoopMode];

  v26 = OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest;
  swift_beginAccess();
  v27 = *&v4[v26];
  if (!v27)
  {
    (*(v16 + 56))(v14, 1, 1, v15);
    goto LABEL_6;
  }

  v28 = v18;
  v29 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentGatewayUrl;
  swift_beginAccess();
  sub_10000E66C(v27 + v29, v14, &unk_1000F06A0, &unk_1000B0450);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
LABEL_6:
    sub_10000E784(v14, &unk_1000F06A0, &unk_1000B0450);
    v42 = objc_allocWithZone(PKPaymentAuthorizationResult);
    sub_10000413C(&qword_1000F3A60, &qword_1000B1520);
    isa = sub_1000AC18C().super.isa;
    v44 = [v42 initWithStatus:1 errors:{isa, v50}];

    v52(v44);
    return;
  }

  (*(v16 + 32))(v28, v14, v15);

  v30 = sub_10000A744();

  if (v30)
  {
    v31 = *&v4[OBJC_IVAR____TtC8Business18IMBApplePayManager_imbNetworkBody];
    v32 = v28;
    v33 = sub_100091814(v50);

    v34 = *(sub_10000413C(&qword_1000F0228, &qword_1000B1528) + 48);
    *v11 = v33;
    (*(v16 + 16))(v11 + v34, v28, v15);
    v35 = v51;
    sub_10002A0C8(v11, v51);
    v36 = type metadata accessor for HttpClient(0);
    v37 = objc_allocWithZone(v36);

    v38 = sub_100031620(v35);
    v53[3] = v36;
    v53[4] = &off_1000DB940;
    v53[0] = v38;
    sub_10002A12C(v11);
    v39 = *sub_1000058D0(v53, v36);
    v40 = v24;

    v41 = v4;
    sub_100033720(v39, v40, v33, v41);

    swift_bridgeObjectRelease_n();
    (*(v16 + 8))(v32, v15);
    sub_10000E738(v53);
  }

  else
  {
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v45 = qword_1000FC008;
    v46 = sub_1000AC2AC();
    sub_1000ABA5C("BusinessChat: this message is no longer valid at authorization time", 67, 2, &_mh_execute_header, v45, v46, _swiftEmptyArrayStorage, v50);
    v47 = objc_allocWithZone(PKPaymentAuthorizationResult);
    sub_10000413C(&qword_1000F3A60, &qword_1000B1520);
    v48 = sub_1000AC18C().super.isa;
    v49 = [v47 initWithStatus:1 errors:v48];

    v52(v49);
    (*(v16 + 8))(v28, v15);
  }
}

void sub_1000246E0(void *a1, void (*a2)(id), uint64_t a3)
{
  v4 = v3;
  v38 = a2;
  v39 = a3;
  v6 = type metadata accessor for Endpoint(0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = (&v37 - v10);
  v12 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  __chkstk_darwin(v12 - 8);
  v14 = &v37 - v13;
  v15 = sub_1000AB6EC();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = objc_allocWithZone(PKPaymentRequestPaymentMethodUpdate);
  sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);
  isa = sub_1000AC18C().super.isa;
  v21 = [v19 initWithPaymentSummaryItems:isa];

  v22 = *&v4[OBJC_IVAR____TtC8Business18IMBApplePayManager_imbNetworkBody];
  v23 = sub_10009193C(a1);

  v24 = OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest;
  swift_beginAccess();
  v25 = *&v4[v24];
  if (v25)
  {
    v37 = v21;
    v26 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentMethodUpdateUrl;
    swift_beginAccess();
    sub_10000E66C(v25 + v26, v14, &unk_1000F06A0, &unk_1000B0450);
    if ((*(v16 + 48))(v14, 1, v15) != 1)
    {
      (*(v16 + 32))(v18, v14, v15);
      v29 = *(sub_10000413C(&qword_1000F0228, &qword_1000B1528) + 48);
      *v11 = v23;
      (*(v16 + 16))(v11 + v29, v18, v15);
      sub_10002A0C8(v11, v9);
      v30 = type metadata accessor for HttpClient(0);
      v31 = objc_allocWithZone(v30);
      v32 = sub_100031620(v9);
      v40[3] = v30;
      v40[4] = &off_1000DB940;
      v40[0] = v32;
      sub_10002A12C(v11);
      v33 = *sub_1000058D0(v40, v30);
      v34 = v4;
      v35 = v39;

      v36 = v37;
      sub_10003483C(v33, v34, v38, v35, v36);

      (*(v16 + 8))(v18, v15);
      sub_10000E738(v40);
      return;
    }

    v21 = v37;
  }

  else
  {

    (*(v16 + 56))(v14, 1, 1, v15);
  }

  sub_10000E784(v14, &unk_1000F06A0, &unk_1000B0450);
  v38(v21);
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  v27 = qword_1000FC008;
  v28 = sub_1000AC2AC();
  sub_1000ABA5C("didSelectPaymentMethod did fail due to nil paymentMethodUpdateUrl", 65, 2, &_mh_execute_header, v27, v28, _swiftEmptyArrayStorage);
}

void sub_100024BDC(void *a1, uint64_t (*a2)(id), uint64_t a3)
{
  v44 = a2;
  v45 = a3;
  v5 = type metadata accessor for Endpoint(0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = (&v43 - v9);
  v11 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  __chkstk_darwin(v11 - 8);
  v13 = &v43 - v12;
  v14 = sub_1000AB6EC();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest;
  swift_beginAccess();
  v19 = *&v3[v18];
  if (v19)
  {
    v43 = v8;
    v20 = a1;
    v21 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_shippingMethodUpdateUrl;
    swift_beginAccess();
    sub_10000E66C(v19 + v21, v13, &unk_1000F06A0, &unk_1000B0450);
    if ((*(v15 + 48))(v13, 1, v14) != 1)
    {
      (*(v15 + 32))(v17, v13, v14);
      v22 = *(v19 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_selectedShippingMethod);
      *(v19 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_selectedShippingMethod) = v20;

      v23 = v20;

      v24 = *&v3[OBJC_IVAR____TtC8Business18IMBApplePayManager_imbNetworkBody];
      v25 = v3;
      v26 = sub_100091C34(v23);

      v27 = *(sub_10000413C(&qword_1000F0228, &qword_1000B1528) + 48);
      *v10 = v26;
      (*(v15 + 16))(v10 + v27, v17, v14);
      v28 = v43;
      sub_10002A0C8(v10, v43);
      v29 = type metadata accessor for HttpClient(0);
      v30 = objc_allocWithZone(v29);
      v31 = sub_100031620(v28);
      v46[3] = v29;
      v46[4] = &off_1000DB940;
      v46[0] = v31;
      sub_10002A12C(v10);
      v32 = *sub_1000058D0(v46, v29);
      v33 = v25;
      v34 = v45;

      sub_10003593C(v32, v33, v44, v34);

      (*(v15 + 8))(v17, v14);
      sub_10000E738(v46);
      return;
    }
  }

  else
  {
    (*(v15 + 56))(v13, 1, 1, v14);
  }

  sub_10000E784(v13, &unk_1000F06A0, &unk_1000B0450);
  v35 = *&v3[v18];
  if (v35)
  {
    v36 = *(v35 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
    if (v36)
    {

      v37 = [v36 paymentSummaryItems];
      sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);
      sub_1000AC19C();
    }
  }

  v38 = objc_allocWithZone(PKPaymentRequestShippingMethodUpdate);
  sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);
  isa = sub_1000AC18C().super.isa;

  v40 = [v38 initWithPaymentSummaryItems:isa];

  v44(v40);
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  v41 = qword_1000FC008;
  v42 = sub_1000AC2AC();
  sub_1000ABA5C("didSelectShippingMethod did fail due to nil shippingMethodUpdateUrl", 67, 2, &_mh_execute_header, v41, v42, _swiftEmptyArrayStorage);
}

void sub_10002511C(void *a1, int a2, void *a3, void *a4, void *aBlock, SEL *a6, const char *a7, uint64_t a8, void (*a9)(void *, uint64_t, void *))
{
  v15 = _Block_copy(aBlock);
  _Block_copy(v15);
  v16 = a3;
  v17 = a4;
  v18 = a1;
  sub_100029F2C(v16, v17, v18, v15, a6, a7, a8, a9);
  _Block_release(v15);
  _Block_release(v15);
}

uint64_t sub_100025218(void *a1, void *a2, uint64_t a3, uint64_t a4, SEL *a5, const char *a6, uint64_t a7, uint64_t (*a8)(void *, uint64_t, uint64_t), ...)
{
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  v12 = qword_1000FC008;
  v13 = sub_1000AC29C();
  sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1000AF0F0;
  v15 = [a1 description];
  v16 = sub_1000AC06C();
  v18 = v17;

  *(v14 + 56) = &type metadata for String;
  v19 = sub_10000587C();
  *(v14 + 64) = v19;
  *(v14 + 32) = v16;
  *(v14 + 40) = v18;
  v20 = [a2 *a5];
  v21 = sub_1000AC06C();
  v23 = v22;

  *(v14 + 96) = &type metadata for String;
  *(v14 + 104) = v19;
  *(v14 + 72) = v21;
  *(v14 + 80) = v23;
  sub_1000ABA5C(a6, a7, 2, &_mh_execute_header, v12, v13, v14);

  return a8(a2, a3, a4);
}

void sub_1000253AC(void *a1, void (*a2)(id), uint64_t a3)
{
  v48 = a2;
  v49 = a3;
  v5 = type metadata accessor for Endpoint(0);
  v6 = __chkstk_darwin(v5 - 8);
  v47 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = (&v47 - v8);
  v10 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  __chkstk_darwin(v10 - 8);
  v12 = &v47 - v11;
  v13 = sub_1000AB6EC();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest;
  swift_beginAccess();
  v18 = v3;
  v19 = *&v3[v17];
  if (v19)
  {
    v20 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_shippingContactUpdateUrl;
    swift_beginAccess();
    sub_10000E66C(v19 + v20, v12, &unk_1000F06A0, &unk_1000B0450);
    if ((*(v14 + 48))(v12, 1, v13) != 1)
    {
      (*(v14 + 32))(v16, v12, v13);
      v21 = *&v18[OBJC_IVAR____TtC8Business18IMBApplePayManager_imbNetworkBody];
      v22 = sub_100091DC4(a1);

      v23 = *(sub_10000413C(&qword_1000F0228, &qword_1000B1528) + 48);
      *v9 = v22;
      (*(v14 + 16))(v9 + v23, v16, v13);
      v24 = v47;
      sub_10002A0C8(v9, v47);
      v25 = type metadata accessor for HttpClient(0);
      v26 = objc_allocWithZone(v25);
      v27 = sub_100031620(v24);
      v50[3] = v25;
      v50[4] = &off_1000DB940;
      v50[0] = v27;
      sub_10002A12C(v9);
      v28 = *sub_1000058D0(v50, v25);
      v29 = v18;
      v30 = v49;

      sub_10003657C(v28, v29, v48, v30);

      (*(v14 + 8))(v16, v13);
      sub_10000E738(v50);
      return;
    }
  }

  else
  {
    (*(v14 + 56))(v12, 1, 1, v13);
  }

  sub_10000E784(v12, &unk_1000F06A0, &unk_1000B0450);
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  v31 = qword_1000FC008;
  v32 = sub_1000AC2AC();
  v33 = _swiftEmptyArrayStorage;
  sub_1000ABA5C("didSelectShippingContact did fail due to nil shippingContactUpdateUrl", 69, 2, &_mh_execute_header, v31, v32, _swiftEmptyArrayStorage);
  v34 = *&v18[v17];
  if (v34)
  {
    v35 = *(v34 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
    if (v35)
    {

      v36 = [v35 shippingMethods];
      if (v36)
      {
        v37 = v36;
        sub_100005A24(0, &qword_1000F0220, PKShippingMethod_ptr);
        v33 = sub_1000AC19C();

        goto LABEL_13;
      }
    }

    v33 = _swiftEmptyArrayStorage;
  }

LABEL_13:
  if (v33 >> 62)
  {
    sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);

    sub_1000AC64C();
  }

  else
  {

    sub_1000AC7BC();
    sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);
  }

  v38 = *&v18[v17];
  if (v38)
  {
    v39 = *(v38 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
    if (v39)
    {

      v40 = [v39 shippingMethods];
      if (v40)
      {
        v41 = v40;
        sub_100005A24(0, &qword_1000F0220, PKShippingMethod_ptr);
        sub_1000AC19C();
      }

      else
      {
      }
    }
  }

  v42 = objc_allocWithZone(PKPaymentRequestShippingContactUpdate);
  sub_10000413C(&qword_1000F3A60, &qword_1000B1520);
  isa = sub_1000AC18C().super.isa;
  sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);
  v44 = sub_1000AC18C().super.isa;

  sub_100005A24(0, &qword_1000F0220, PKShippingMethod_ptr);
  v45 = sub_1000AC18C().super.isa;

  v46 = [v42 initWithErrors:isa paymentSummaryItems:v44 shippingMethods:v45];

  v48(v46);
}

UIWindow_optional __swiftcall IMBApplePayManager.presentationWindow(for:)(PKPaymentAuthorizationController a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8Business18IMBApplePayManager_window);
  v3 = v2;
  v5 = v2;
  result.value.super.super.super.isa = v5;
  result.is_nil = v4;
  return result;
}

void *sub_100025A7C()
{
  v1 = v0;

  sub_10008A804(7);

  v2 = *(v0 + OBJC_IVAR____TtC8Business18IMBApplePayManager_paymentAuthorizationController);
  if (v2)
  {
    v6[4] = IMBJITAppBundleState.rawValue.getter;
    v6[5] = 0;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1107296256;
    v6[2] = sub_100023BE0;
    v6[3] = &unk_1000DB620;
    v3 = _Block_copy(v6);
    v4 = v2;
    [v4 dismissWithCompletion:v3];
    _Block_release(v3);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result paymentRequestDidUpdate:v1];
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100025BAC(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest;
  swift_beginAccess();
  if (*(v2 + v4))
  {

    v5 = sub_10004DA74(a1);
    v6 = sub_10000692C(v5);
  }

  else
  {
    v6 = 0;
  }

  *(v2 + v4) = v6;

  sub_100021A0C();
  sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1000AF0E0;
  v8 = *(v2 + v4);
  if (v8 && (v9 = v8 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentState, (*(v9 + 8) & 1) == 0))
  {
    v10 = sub_10005FCE8(*v9);
    v11 = v12;
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = sub_10000587C();
  v13 = 7104878;
  if (v11)
  {
    v13 = v10;
  }

  v14 = 0xE300000000000000;
  if (v11)
  {
    v14 = v11;
  }

  *(v7 + 32) = v13;
  *(v7 + 40) = v14;
  sub_100005A24(0, &qword_1000F0070, OS_os_log_ptr);
  v15 = sub_1000AC3FC();
  v16 = sub_1000AC2BC();
  sub_1000ABA5C("BusinessChat: Did get paymentState = %@", 39, 2, &_mh_execute_header, v15, v16, v7);

  v17 = *(v2 + v4);
  if (v17)
  {
    v18 = v17 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentState;
    if ((*(v18 + 8) & 1) == 0 && *v18 == 7)
    {
      sub_100025A7C();
    }
  }
}

void sub_100025D80(uint64_t a1, char a2, id a3, uint64_t a4, uint64_t a5)
{
  [a3 invalidate];
  if (a2)
  {
    sub_100022F90(a1);
  }

  else
  {
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v9 = qword_1000FC008;
    v10 = sub_1000AC2BC();
    sub_1000ABA5C("Did get successful network request in paymentGatewayUrl", 55, 2, &_mh_execute_header, v9, v10, _swiftEmptyArrayStorage);
    objc_allocWithZone(type metadata accessor for IMBDelayedAuthResponse(0));

    sub_10002A188(a1, 0);
    v11 = sub_1000592E4(a1, a4);
    if (v11)
    {
      v12 = v11;
      v13 = [objc_opt_self() timerWithTimeInterval:a5 target:"handlePaymentAuthorizationRetryWithTimer:" selector:v11 userInfo:0 repeats:*&v11[OBJC_IVAR____TtC8Business22IMBDelayedAuthResponse_delay]];
      v14 = *(a5 + OBJC_IVAR____TtC8Business18IMBApplePayManager_authorizePaymentRetryTimer);
      *(a5 + OBJC_IVAR____TtC8Business18IMBApplePayManager_authorizePaymentRetryTimer) = v13;
      v15 = v13;

      v16 = [objc_opt_self() mainRunLoop];
      [v16 addTimer:v15 forMode:NSDefaultRunLoopMode];
    }

    else
    {
      sub_100022D64(a1);
    }
  }
}

void sub_100025F78(uint64_t a1, char a2, uint64_t a3, void (*a4)(id), uint64_t a5, void *a6)
{
  if (a2)
  {
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v10 = qword_1000FC008;
    v11 = sub_1000AC2AC();
    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1000AF0E0;
    swift_getErrorValue();
    v13 = sub_1000AC7FC();
    v15 = v14;
    *(v12 + 56) = &type metadata for String;
    *(v12 + 64) = sub_10000587C();
    *(v12 + 32) = v13;
    *(v12 + 40) = v15;
    sub_1000ABA5C("Did get error in network request in paymentMethodUpdateUrl: %@", 62, 2, &_mh_execute_header, v10, v11, v12);

    a4(a6);
    v16 = sub_1000AB62C();
    v17 = [v16 code];

    if (v17 == 500)
    {
      v18 = sub_1000AC2AC();
      sub_1000ABA5C("BusinessChat: dismissing sheet as a 500 response was received", 61, 2, &_mh_execute_header, v10, v18, _swiftEmptyArrayStorage);
      v19 = *(a3 + OBJC_IVAR____TtC8Business18IMBApplePayManager_paymentAuthorizationController);
      if (v19)
      {
        [v19 dismissWithCompletion:0];
      }
    }
  }

  else
  {
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v20 = qword_1000FC008;
    v21 = sub_1000AC2BC();
    sub_1000ABA5C("Did get successful network request in paymentMethodUpdateUrl", 60, 2, &_mh_execute_header, v20, v21, _swiftEmptyArrayStorage);
    sub_100025BAC(a1);
    v22 = OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest;
    swift_beginAccess();
    v23 = *(a3 + v22);
    if (v23)
    {
      v24 = *(v23 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
      if (v24)
      {

        v25 = [v24 paymentSummaryItems];
        sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);
        sub_1000AC19C();
      }
    }

    v26 = objc_allocWithZone(PKPaymentRequestPaymentMethodUpdate);
    sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);
    isa = sub_1000AC18C().super.isa;

    v28 = [v26 initWithPaymentSummaryItems:isa];

    a4(v28);
  }
}

void sub_1000262A8(uint64_t a1, char a2, uint64_t a3, void (*a4)(id))
{
  if (a2)
  {
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v6 = qword_1000FC008;
    v7 = sub_1000AC2AC();
    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1000AF0E0;
    swift_getErrorValue();
    v9 = sub_1000AC7FC();
    v11 = v10;
    *(v8 + 56) = &type metadata for String;
    *(v8 + 64) = sub_10000587C();
    *(v8 + 32) = v9;
    *(v8 + 40) = v11;
    sub_1000ABA5C("Did get error in network request in shippingMethodUpdateUrl: %@", 63, 2, &_mh_execute_header, v6, v7, v8);

    v12 = OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest;
    swift_beginAccess();
    v13 = *(a3 + v12);
    if (v13)
    {
      v14 = *(v13 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
      if (v14)
      {

        v15 = [v14 paymentSummaryItems];
        sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);
        sub_1000AC19C();
      }
    }

    v22 = objc_allocWithZone(PKPaymentRequestShippingMethodUpdate);
    sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);
    isa = sub_1000AC18C().super.isa;

    v24 = [v22 initWithPaymentSummaryItems:isa];

    [v24 setStatus:1];
    a4(v24);
    v25 = sub_1000AB62C();
    v26 = [v25 code];

    if (v26 == 500)
    {
      v27 = sub_1000AC2AC();
      sub_1000ABA5C("BusinessChat: dismissing sheet as a 500 response was received", 61, 2, &_mh_execute_header, v6, v27, _swiftEmptyArrayStorage);
      v28 = *(a3 + OBJC_IVAR____TtC8Business18IMBApplePayManager_paymentAuthorizationController);
      if (v28)
      {
        v29 = v28;
        [v29 dismissWithCompletion:0];
      }
    }
  }

  else
  {
    sub_100025BAC(a1);
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v16 = qword_1000FC008;
    v17 = sub_1000AC2BC();
    sub_1000ABA5C("Did get successful network request in shippingMethodUpdateUrl", 61, 2, &_mh_execute_header, v16, v17, _swiftEmptyArrayStorage);
    v18 = OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest;
    swift_beginAccess();
    v19 = *(a3 + v18);
    if (v19)
    {
      v20 = *(v19 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
      if (v20)
      {

        v21 = [v20 paymentSummaryItems];
        sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);
        sub_1000AC19C();
      }
    }

    v30 = objc_allocWithZone(PKPaymentRequestShippingMethodUpdate);
    sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);
    v31 = sub_1000AC18C().super.isa;

    v24 = [v30 initWithPaymentSummaryItems:v31];

    a4(v24);
  }
}

void sub_1000266FC(uint64_t a1, char a2, uint64_t a3, void (*a4)(id))
{
  if (a2)
  {
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v7 = qword_1000FC008;
    v8 = sub_1000AC2AC();
    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1000AF0E0;
    swift_getErrorValue();
    v10 = sub_1000AC7FC();
    v12 = v11;
    *(v9 + 56) = &type metadata for String;
    *(v9 + 64) = sub_10000587C();
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;
    sub_1000ABA5C("Did get error in network request in shippingContactUpdateUrl: %@", 64, 2, &_mh_execute_header, v7, v8, v9);

    sub_10000413C(&unk_1000F0230, &unk_1000B1530);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1000AF0E0;
    *(v13 + 32) = a1;
    v14 = OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest;
    swift_beginAccess();
    v15 = *(a3 + v14);
    if (v15)
    {
      v16 = *(v15 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
      if (v16)
      {
        sub_10002A188(a1, 1);

        v17 = [v16 paymentSummaryItems];
        sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);
        sub_1000AC19C();

        v18 = *(a3 + v14);
        if (!v18)
        {
          goto LABEL_26;
        }

        goto LABEL_18;
      }

      sub_10002A188(a1, 1);
    }

    else
    {
      swift_errorRetain();
    }

    v18 = *(a3 + v14);
    if (!v18)
    {
LABEL_26:
      v32 = objc_allocWithZone(PKPaymentRequestShippingContactUpdate);
      sub_10000413C(&qword_1000F3A60, &qword_1000B1520);
      isa = sub_1000AC18C().super.isa;

      sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);
      v34 = sub_1000AC18C().super.isa;

      sub_100005A24(0, &qword_1000F0220, PKShippingMethod_ptr);
      v35 = sub_1000AC18C().super.isa;

      v36 = [v32 initWithErrors:isa paymentSummaryItems:v34 shippingMethods:v35];

      a4(v36);
      v37 = sub_1000AB62C();
      v38 = [v37 code];

      if (v38 == 500)
      {
        v39 = sub_1000AC2AC();
        sub_1000ABA5C("BusinessChat: dismissing sheet as a 500 response was received", 61, 2, &_mh_execute_header, v7, v39, _swiftEmptyArrayStorage);
        v40 = *(a3 + OBJC_IVAR____TtC8Business18IMBApplePayManager_paymentAuthorizationController);
        if (v40)
        {
          v41 = v40;
          [v41 dismissWithCompletion:0];
        }
      }

      goto LABEL_31;
    }

LABEL_18:
    v26 = *(v18 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
    if (v26)
    {

      v27 = [v26 shippingMethods];
      if (v27)
      {
        v28 = v27;
        sub_100005A24(0, &qword_1000F0220, PKShippingMethod_ptr);
        sub_1000AC19C();

        goto LABEL_26;
      }
    }

    else
    {
    }

    goto LABEL_26;
  }

  sub_100025BAC(a1);
  v19 = sub_10004DA74(a1);
  sub_100027788(v19);

  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  v20 = qword_1000FC008;
  v21 = sub_1000AC2BC();
  sub_1000ABA5C("Did get successful network request in shippingContactUpdateUrl", 62, 2, &_mh_execute_header, v20, v21, _swiftEmptyArrayStorage);
  v22 = OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest;
  swift_beginAccess();
  v23 = *(a3 + v22);
  if (v23)
  {
    v24 = *(v23 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
    if (!v24 || (, v25 = [v24 paymentSummaryItems], sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr), sub_1000AC19C(), , v25, (v23 = *(a3 + v22)) != 0))
    {
      v29 = *(v23 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
      if (v29)
      {

        v30 = [v29 shippingMethods];
        if (v30)
        {
          v31 = v30;
          sub_100005A24(0, &qword_1000F0220, PKShippingMethod_ptr);
          sub_1000AC19C();
        }

        else
        {
        }
      }
    }
  }

  v42 = objc_allocWithZone(PKPaymentRequestShippingContactUpdate);
  sub_10000413C(&qword_1000F3A60, &qword_1000B1520);
  v43 = sub_1000AC18C().super.isa;

  sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);
  v44 = sub_1000AC18C().super.isa;

  sub_100005A24(0, &qword_1000F0220, PKShippingMethod_ptr);
  v45 = sub_1000AC18C().super.isa;

  v36 = [v42 initWithErrors:v43 paymentSummaryItems:v44 shippingMethods:v45];

  a4(v36);
LABEL_31:
}

void sub_100026DB4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_100026E1C(void *a1, void *a2)
{

  v4 = sub_1000AC02C();

  [a1 setTitle:v4];

  v5 = sub_1000AC02C();

  [a1 setSummaryText:v5];

  v6 = sub_1000AC02C();

  [a1 setAccessibilityLabel:v6];

  [a1 setSubtitle:a2[7]];

  v7 = sub_1000AC02C();

  [a1 setSubcaption:v7];
}

uint64_t sub_100026F64()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_100026FA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double sub_100026FE0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

double sub_100027000(void *a1, unint64_t a2)
{
  v3 = v2;
  v5 = a1;
  if ([a1 status])
  {
    if ([v5 status] == 1)
    {
      if (a2 >> 62)
      {
        if (sub_1000AC65C())
        {
          goto LABEL_5;
        }
      }

      else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_5;
      }

      v45 = OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest;
      swift_beginAccess();
      v46 = *(v3 + v45);
      if (v46)
      {
        v47 = v46 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentState;
        *v47 = 4;
        *(v47 + 8) = 0;
      }

      sub_10008A804(4);

      if (qword_1000EEE80 != -1)
      {
        swift_once();
      }

      v48 = qword_1000FC008;
      v49 = sub_1000AC2BC();
      sub_1000ABA5C("BusinessChat: UpdateTransactionStatus Failure: payment was declined and no errors were received", 95, 2, &_mh_execute_header, v48, v49, _swiftEmptyArrayStorage);
LABEL_33:
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

LABEL_5:
    if ([v5 status] == 1)
    {
      if (a2 >> 62)
      {
        if (sub_1000AC65C())
        {
          goto LABEL_8;
        }
      }

      else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_8:
        if (qword_1000EEE80 != -1)
        {
          swift_once();
        }

        v6 = qword_1000FC008;
        v7 = sub_1000AC2AC();
        sub_1000ABA5C("BusinessChat: Payment was not authorized due to Apple Pay errors. Payment can be retried after errors are addressed in the payment sheet.", 137, 2, &_mh_execute_header, v6, v7, _swiftEmptyArrayStorage);
        goto LABEL_35;
      }
    }

    v50 = OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest;
    swift_beginAccess();
    v51 = *(v3 + v50);
    if (v51)
    {
      v52 = v51 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentState;
      *v52 = 2;
      *(v52 + 8) = 0;
    }

    sub_10008A804(2);

    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v53 = qword_1000FC008;
    v54 = sub_1000AC2BC();
    sub_1000ABA5C("BusinessChat: UpdateTransactionStatus Expired: payment has expired and is no longer usable", 90, 2, &_mh_execute_header, v53, v54, _swiftEmptyArrayStorage);
    goto LABEL_33;
  }

  v59 = v5;
  [*(v3 + OBJC_IVAR____TtC8Business18IMBApplePayManager_paymentExpireTimer) invalidate];
  sub_1000234A4(a2, 0, 0);
  v9 = OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest;
  swift_beginAccess();
  v10 = *(v3 + v9);
  if (v10)
  {
    v11 = v10 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentState;
    *v11 = 3;
    *(v11 + 8) = 0;
  }

  v12 = OBJC_IVAR____TtC8Business18IMBApplePayManager_applePayViewModel;

  sub_10008A804(3);

  v13 = OBJC_IVAR____TtC8Business18IMBApplePayManager_imbMessage;
  v14 = [*(v3 + OBJC_IVAR____TtC8Business18IMBApplePayManager_imbMessage) rootKey];
  v15 = sub_1000AC06C();
  v17 = v16;

  LODWORD(v14) = [*(v3 + v13) isFromMe];
  v18 = sub_1000AC06C();
  v20 = v19;
  v21 = [*(v3 + v13) version];
  if (v14)
  {
    v60._countAndFlagsBits = 46;
    v60._object = 0xE100000000000000;
    sub_1000AC12C(v60);
    v61._countAndFlagsBits = 0x6465696C706572;
    v61._object = 0xE700000000000000;
    sub_1000AC12C(v61);
  }

  v62._countAndFlagsBits = 46;
  v62._object = 0xE100000000000000;
  sub_1000AC12C(v62);
  v63._countAndFlagsBits = v18;
  v63._object = v20;
  sub_1000AC12C(v63);

  sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v22 = swift_allocObject();
  v58 = xmmword_1000AF0E0;
  *(v22 + 16) = xmmword_1000AF0E0;
  *(v22 + 56) = &type metadata for String;
  v23 = sub_10000587C();
  *(v22 + 64) = v23;
  *(v22 + 32) = v15;
  *(v22 + 40) = v17;
  sub_100005A24(0, &qword_1000F0070, OS_os_log_ptr);

  v24 = sub_1000AC3FC();
  v25 = sub_1000AC2BC();
  sub_1000ABA5C("BusinessChat: Logging Message App Extension event: %@", 53, 2, &_mh_execute_header, v24, v25, v22);

  if (qword_1000EEE98 != -1)
  {
    swift_once();
  }

  v26 = qword_1000FC030;
  v27 = sub_1000AC02C();

  [v26 mt_log_icloud_messages_apps_businessframework:v27 version:v21];

  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  v28 = qword_1000FC008;
  v29 = sub_1000AC2BC();
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1000AF0F0;
  v31 = *(v3 + v12);
  v33 = v31[5];
  v32 = v31[6];
  *(v30 + 56) = &type metadata for String;
  *(v30 + 64) = v23;
  *(v30 + 32) = v33;
  *(v30 + 40) = v32;
  v34 = v31[7];

  v35 = [v34 string];
  v36 = sub_1000AC06C();
  v38 = v37;

  *(v30 + 96) = &type metadata for String;
  *(v30 + 104) = v23;
  *(v30 + 72) = v36;
  *(v30 + 80) = v38;
  sub_1000ABA5C("BusinessChat: UpdateTransactionStatus Success: payment was authorized and no errors were received", 97, 2, &_mh_execute_header, v28, v29, v30);

  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1000AF0E0;
  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  sub_10000413C(&qword_1000F0258, &qword_1000B1548);
  v40 = sub_1000AC0CC();
  *(v39 + 56) = &type metadata for String;
  *(v39 + 64) = v23;
  *(v39 + 32) = v40;
  *(v39 + 40) = v41;
  v42 = sub_1000AC3FC();
  v43 = sub_1000AC2BC();
  sub_1000ABA5C("BusinessChat: IMBApplePayManager handlePaymentAuthorizationSuccess delegate = %@", 80, 2, &_mh_execute_header, v42, v43, v39);

  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = v59;
  if (Strong)
  {
LABEL_34:
    [Strong paymentRequestDidUpdate:{v3, v58}];
    swift_unknownObjectRelease();
  }

LABEL_35:
  v55 = v3 + OBJC_IVAR____TtC8Business18IMBApplePayManager_paymentAuthorizedCompletion;
  v56 = *(v3 + OBJC_IVAR____TtC8Business18IMBApplePayManager_paymentAuthorizedCompletion);
  if (v56)
  {
    v57 = *(v55 + 8);

    v56(v5);
    return sub_100026FE0(v56, v57);
  }

  return result;
}

void *sub_100027788(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = sub_10004F0CC(0x73726F727265, 0xE600000000000000);
  if ((v3 & 1) == 0)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10000E66C(*(a1 + 56) + 32 * v2, &v26, &unk_1000F1DF0, &qword_1000B18F0);
  v28[0] = v26;
  v28[1] = v27;
  if (!*(&v27 + 1))
  {
    sub_10000E784(v28, &unk_1000F1DF0, &qword_1000B18F0);
    return _swiftEmptyArrayStorage;
  }

  sub_10000413C(&unk_1000F0240, &qword_1000B05A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = *(v25 + 16);
  if (!v4)
  {

    return _swiftEmptyArrayStorage;
  }

  v5 = _swiftEmptyArrayStorage;
  v6 = 32;
  do
  {

    v8 = sub_100020A9C(v7);
    if (v8)
    {
      v24 = v5;
      v9 = qword_1000B1550[*(v8 + 16)];
      v10 = PKPaymentErrorDomain;
      sub_10001FF78();
      v11 = objc_allocWithZone(NSError);
      isa = sub_1000ABFAC().super.isa;

      v13 = [v11 initWithDomain:v10 code:v9 userInfo:isa];

      if (qword_1000EEE80 != -1)
      {
        swift_once();
      }

      v14 = qword_1000FC008;
      v15 = sub_1000AC2BC();
      sub_10000413C(&qword_1000F0060, &unk_1000B0470);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1000AF0E0;
      v17 = [v13 debugDescription];
      v18 = sub_1000AC06C();
      v20 = v19;

      *(v16 + 56) = &type metadata for String;
      *(v16 + 64) = sub_10000587C();
      *(v16 + 32) = v18;
      *(v16 + 40) = v20;
      sub_1000ABA5C("BusinessChat: ApplePayError = %@", 32, 2, &_mh_execute_header, v14, v15, v16);

      v5 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1000388E0(0, v24[2] + 1, 1, v24);
      }

      v22 = v5[2];
      v21 = v5[3];
      if (v22 >= v21 >> 1)
      {
        v5 = sub_1000388E0((v21 > 1), v22 + 1, 1, v5);
      }

      v5[2] = v22 + 1;
      v5[v22 + 4] = v13;
    }

    v6 += 8;
    --v4;
  }

  while (v4);

  return v5;
}

double sub_100027ADC(char *a1, char *a2, void (**a3)(void, void))
{
  v52 = a1;
  v5 = type metadata accessor for Endpoint(0);
  v6 = __chkstk_darwin(v5 - 8);
  v53 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = (&v51 - v8);
  v10 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  __chkstk_darwin(v10 - 8);
  v12 = &v51 - v11;
  v13 = sub_1000AB6EC();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  v18 = &a2[OBJC_IVAR____TtC8Business18IMBApplePayManager_paymentAuthorizedCompletion];
  v19 = *&a2[OBJC_IVAR____TtC8Business18IMBApplePayManager_paymentAuthorizedCompletion];
  v20 = *&a2[OBJC_IVAR____TtC8Business18IMBApplePayManager_paymentAuthorizedCompletion + 8];
  *v18 = sub_10002A2E0;
  *(v18 + 1) = v17;
  _Block_copy(a3);

  sub_100026FE0(v19, v20);
  v21 = [objc_opt_self() timerWithTimeInterval:a2 target:"extendApplePayTimeout" selector:0 userInfo:0 repeats:29.0];
  v22 = *&a2[OBJC_IVAR____TtC8Business18IMBApplePayManager_applePayTryAgainTimer];
  *&a2[OBJC_IVAR____TtC8Business18IMBApplePayManager_applePayTryAgainTimer] = v21;
  v23 = v21;

  v24 = [objc_opt_self() mainRunLoop];
  [v24 addTimer:v23 forMode:NSDefaultRunLoopMode];

  v25 = OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest;
  swift_beginAccess();
  v26 = *&a2[v25];
  if (!v26)
  {
    (*(v14 + 56))(v12, 1, 1, v13);
    goto LABEL_6;
  }

  v51 = v9;
  v27 = v16;
  v28 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentGatewayUrl;
  swift_beginAccess();
  sub_10000E66C(v26 + v28, v12, &unk_1000F06A0, &unk_1000B0450);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
LABEL_6:
    sub_10000E784(v12, &unk_1000F06A0, &unk_1000B0450);
    v42 = objc_allocWithZone(PKPaymentAuthorizationResult);
    sub_10000413C(&qword_1000F3A60, &qword_1000B1520);
    isa = sub_1000AC18C().super.isa;
    v44 = [v42 initWithStatus:1 errors:isa];

    (a3)[2](a3, v44);

    return result;
  }

  v29 = v27;
  (*(v14 + 32))(v27, v12, v13);

  v30 = sub_10000A744();

  if (v30)
  {
    v31 = *&a2[OBJC_IVAR____TtC8Business18IMBApplePayManager_imbNetworkBody];
    v32 = sub_100091814(v52);

    v33 = *(sub_10000413C(&qword_1000F0228, &qword_1000B1528) + 48);
    v34 = v51;
    *v51 = v32;
    (*(v14 + 16))(v34 + v33, v29, v13);
    v52 = v29;
    v35 = v53;
    sub_10002A0C8(v34, v53);
    v36 = type metadata accessor for HttpClient(0);
    v37 = objc_allocWithZone(v36);

    v38 = sub_100031620(v35);
    v54[3] = v36;
    v54[4] = &off_1000DB940;
    v54[0] = v38;
    sub_10002A12C(v34);
    v39 = *sub_1000058D0(v54, v36);
    v40 = v23;

    v41 = a2;
    sub_100033720(v39, v40, v32, v41);

    swift_bridgeObjectRelease_n();
    (*(v14 + 8))(v52, v13);
    sub_10000E738(v54);
  }

  else
  {
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v46 = qword_1000FC008;
    v47 = sub_1000AC2AC();
    sub_1000ABA5C("BusinessChat: this message is no longer valid at authorization time", 67, 2, &_mh_execute_header, v46, v47, _swiftEmptyArrayStorage);
    v48 = objc_allocWithZone(PKPaymentAuthorizationResult);
    sub_10000413C(&qword_1000F3A60, &qword_1000B1520);
    v49 = sub_1000AC18C().super.isa;
    v50 = [v48 initWithStatus:1 errors:v49];

    (a3)[2](a3, v50);
    (*(v14 + 8))(v27, v13);
  }

  return result;
}

void sub_100028104(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v9 = qword_1000FC008;
    v10 = sub_1000AC2AC();
    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1000AF0E0;
    swift_getErrorValue();
    v12 = sub_1000AC7FC();
    v14 = v13;
    *(v11 + 56) = &type metadata for String;
    *(v11 + 64) = sub_10000587C();
    *(v11 + 32) = v12;
    *(v11 + 40) = v14;
    sub_1000ABA5C("Did get error in network request in paymentMethodUpdateUrl: %@", 62, 2, &_mh_execute_header, v9, v10, v11);

    (*(a5 + 16))(a5, a4);
    v15 = sub_1000AB62C();
    v16 = [v15 code];

    if (v16 == 500)
    {
      v17 = sub_1000AC2AC();
      sub_1000ABA5C("BusinessChat: dismissing sheet as a 500 response was received", 61, 2, &_mh_execute_header, v9, v17, _swiftEmptyArrayStorage);
      v18 = *(a3 + OBJC_IVAR____TtC8Business18IMBApplePayManager_paymentAuthorizationController);
      if (v18)
      {
        [v18 dismissWithCompletion:0];
      }
    }
  }

  else
  {
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v19 = qword_1000FC008;
    v20 = sub_1000AC2BC();
    sub_1000ABA5C("Did get successful network request in paymentMethodUpdateUrl", 60, 2, &_mh_execute_header, v19, v20, _swiftEmptyArrayStorage);
    sub_100025BAC(a1);
    v21 = OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest;
    swift_beginAccess();
    v22 = *(a3 + v21);
    if (v22)
    {
      v23 = *(v22 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
      if (v23)
      {

        v24 = [v23 paymentSummaryItems];
        sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);
        sub_1000AC19C();
      }
    }

    v25 = objc_allocWithZone(PKPaymentRequestPaymentMethodUpdate);
    sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);
    isa = sub_1000AC18C().super.isa;

    v27 = [v25 initWithPaymentSummaryItems:isa];

    (*(a5 + 16))(a5, v27);
  }
}

void sub_100028438(void *a1, char *a2, uint64_t (**a3)(void, void))
{
  v6 = type metadata accessor for Endpoint(0);
  v7 = __chkstk_darwin(v6 - 8);
  v38 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = (&v36 - v9);
  v11 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  __chkstk_darwin(v11 - 8);
  v13 = &v36 - v12;
  v14 = sub_1000AB6EC();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = objc_allocWithZone(PKPaymentRequestPaymentMethodUpdate);
  _Block_copy(a3);
  sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);
  isa = sub_1000AC18C().super.isa;
  v20 = [v18 initWithPaymentSummaryItems:isa];

  v21 = *&a2[OBJC_IVAR____TtC8Business18IMBApplePayManager_imbNetworkBody];
  v22 = sub_10009193C(a1);

  v23 = OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest;
  swift_beginAccess();
  v24 = *&a2[v23];
  if (v24)
  {
    v37 = v20;
    v25 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentMethodUpdateUrl;
    swift_beginAccess();
    sub_10000E66C(v24 + v25, v13, &unk_1000F06A0, &unk_1000B0450);
    if ((*(v15 + 48))(v13, 1, v14) != 1)
    {
      (*(v15 + 32))(v17, v13, v14);
      v28 = *(sub_10000413C(&qword_1000F0228, &qword_1000B1528) + 48);
      *v10 = v22;
      (*(v15 + 16))(v10 + v28, v17, v14);
      v29 = v38;
      sub_10002A0C8(v10, v38);
      v30 = type metadata accessor for HttpClient(0);
      v31 = objc_allocWithZone(v30);
      v32 = sub_100031620(v29);
      v39[3] = v30;
      v39[4] = &off_1000DB940;
      v39[0] = v32;
      sub_10002A12C(v10);
      v33 = *sub_1000058D0(v39, v30);
      _Block_copy(a3);
      v34 = a2;
      v35 = v37;
      sub_100033F50(v33, v34, v35, a3);
      _Block_release(a3);

      (*(v15 + 8))(v17, v14);
      sub_10000E738(v39);
      goto LABEL_9;
    }

    v20 = v37;
  }

  else
  {

    (*(v15 + 56))(v13, 1, 1, v14);
  }

  sub_10000E784(v13, &unk_1000F06A0, &unk_1000B0450);
  (a3)[2](a3, v20);
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  v26 = qword_1000FC008;
  v27 = sub_1000AC2AC();
  sub_1000ABA5C("didSelectPaymentMethod did fail due to nil paymentMethodUpdateUrl", 65, 2, &_mh_execute_header, v26, v27, _swiftEmptyArrayStorage);

LABEL_9:
  _Block_release(a3);
}

void sub_1000288B8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v6 = qword_1000FC008;
    v7 = sub_1000AC2AC();
    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1000AF0E0;
    swift_getErrorValue();
    v9 = sub_1000AC7FC();
    v11 = v10;
    *(v8 + 56) = &type metadata for String;
    *(v8 + 64) = sub_10000587C();
    *(v8 + 32) = v9;
    *(v8 + 40) = v11;
    sub_1000ABA5C("Did get error in network request in shippingMethodUpdateUrl: %@", 63, 2, &_mh_execute_header, v6, v7, v8);

    v12 = OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest;
    swift_beginAccess();
    v13 = *(a3 + v12);
    if (v13)
    {
      v14 = *(v13 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
      if (v14)
      {

        v15 = [v14 paymentSummaryItems];
        sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);
        sub_1000AC19C();
      }
    }

    v22 = objc_allocWithZone(PKPaymentRequestShippingMethodUpdate);
    sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);
    isa = sub_1000AC18C().super.isa;

    v24 = [v22 initWithPaymentSummaryItems:isa];

    [v24 setStatus:1];
    (*(a4 + 16))(a4, v24);
    v25 = sub_1000AB62C();
    v26 = [v25 code];

    if (v26 == 500)
    {
      v27 = sub_1000AC2AC();
      sub_1000ABA5C("BusinessChat: dismissing sheet as a 500 response was received", 61, 2, &_mh_execute_header, v6, v27, _swiftEmptyArrayStorage);
      v28 = *(a3 + OBJC_IVAR____TtC8Business18IMBApplePayManager_paymentAuthorizationController);
      if (v28)
      {
        v29 = v28;
        [v29 dismissWithCompletion:0];
      }
    }
  }

  else
  {
    sub_100025BAC(a1);
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v16 = qword_1000FC008;
    v17 = sub_1000AC2BC();
    sub_1000ABA5C("Did get successful network request in shippingMethodUpdateUrl", 61, 2, &_mh_execute_header, v16, v17, _swiftEmptyArrayStorage);
    v18 = OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest;
    swift_beginAccess();
    v19 = *(a3 + v18);
    if (v19)
    {
      v20 = *(v19 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
      if (v20)
      {

        v21 = [v20 paymentSummaryItems];
        sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);
        sub_1000AC19C();
      }
    }

    v30 = objc_allocWithZone(PKPaymentRequestShippingMethodUpdate);
    sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);
    v31 = sub_1000AC18C().super.isa;

    v24 = [v30 initWithPaymentSummaryItems:v31];

    (*(a4 + 16))(a4, v24);
  }
}

void sub_100028D08(void *a1, char *a2, uint64_t (**a3)(void, void))
{
  v45 = a1;
  v5 = type metadata accessor for Endpoint(0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = (&v43 - v9);
  v11 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  __chkstk_darwin(v11 - 8);
  v13 = &v43 - v12;
  v14 = sub_1000AB6EC();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest;
  swift_beginAccess();
  v19 = *&a2[v18];
  if (v19)
  {
    v44 = v8;
    v20 = a3;
    v21 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_shippingMethodUpdateUrl;
    swift_beginAccess();
    v22 = v19 + v21;
    a3 = v20;
    sub_10000E66C(v22, v13, &unk_1000F06A0, &unk_1000B0450);
    if ((*(v15 + 48))(v13, 1, v14) != 1)
    {
      (*(v15 + 32))(v17, v13, v14);
      v23 = *(v19 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_selectedShippingMethod);
      v24 = v45;
      *(v19 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_selectedShippingMethod) = v45;
      _Block_copy(v20);

      v25 = v24;

      v26 = *&a2[OBJC_IVAR____TtC8Business18IMBApplePayManager_imbNetworkBody];
      v27 = sub_100091C34(v25);

      v28 = *(sub_10000413C(&qword_1000F0228, &qword_1000B1528) + 48);
      *v10 = v27;
      (*(v15 + 16))(v10 + v28, v17, v14);
      v29 = v44;
      sub_10002A0C8(v10, v44);
      v30 = type metadata accessor for HttpClient(0);
      v31 = objc_allocWithZone(v30);
      v32 = sub_100031620(v29);
      v46[3] = v30;
      v46[4] = &off_1000DB940;
      v46[0] = v32;
      sub_10002A12C(v10);
      v33 = *sub_1000058D0(v46, v30);
      _Block_copy(v20);
      sub_100035084(v33, a2, v20);
      _Block_release(v20);
      (*(v15 + 8))(v17, v14);
      sub_10000E738(v46);
      v34 = v20;
      goto LABEL_11;
    }
  }

  else
  {
    (*(v15 + 56))(v13, 1, 1, v14);
  }

  _Block_copy(a3);
  sub_10000E784(v13, &unk_1000F06A0, &unk_1000B0450);
  v35 = *&a2[v18];
  if (v35)
  {
    v36 = *(v35 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
    if (v36)
    {

      v37 = [v36 paymentSummaryItems];
      sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);
      sub_1000AC19C();
    }
  }

  v38 = objc_allocWithZone(PKPaymentRequestShippingMethodUpdate);
  sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);
  isa = sub_1000AC18C().super.isa;

  v40 = [v38 initWithPaymentSummaryItems:isa];

  (a3)[2](a3, v40);
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  v41 = qword_1000FC008;
  v42 = sub_1000AC2AC();
  sub_1000ABA5C("didSelectShippingMethod did fail due to nil shippingMethodUpdateUrl", 67, 2, &_mh_execute_header, v41, v42, _swiftEmptyArrayStorage);

  v34 = a3;
LABEL_11:
  _Block_release(v34);
}

void sub_10002921C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    v7 = qword_1000FC008;
    v8 = sub_1000AC2AC();
    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1000AF0E0;
    swift_getErrorValue();
    v10 = sub_1000AC7FC();
    v12 = v11;
    *(v9 + 56) = &type metadata for String;
    *(v9 + 64) = sub_10000587C();
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;
    sub_1000ABA5C("Did get error in network request in shippingContactUpdateUrl: %@", 64, 2, &_mh_execute_header, v7, v8, v9);

    sub_10000413C(&unk_1000F0230, &unk_1000B1530);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1000AF0E0;
    *(v13 + 32) = a1;
    v14 = OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest;
    swift_beginAccess();
    v15 = *(a3 + v14);
    if (v15 && (v16 = *(v15 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest)) != 0)
    {
      sub_10002A188(a1, 1);

      v17 = [v16 paymentSummaryItems];
      sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);
      sub_1000AC19C();

      v18 = *(a3 + v14);
      if (!v18)
      {
        goto LABEL_24;
      }
    }

    else
    {
      swift_errorRetain();
      v18 = *(a3 + v14);
      if (!v18)
      {
LABEL_24:
        v32 = objc_allocWithZone(PKPaymentRequestShippingContactUpdate);
        sub_10000413C(&qword_1000F3A60, &qword_1000B1520);
        isa = sub_1000AC18C().super.isa;

        sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);
        v34 = sub_1000AC18C().super.isa;

        sub_100005A24(0, &qword_1000F0220, PKShippingMethod_ptr);
        v35 = sub_1000AC18C().super.isa;

        v36 = [v32 initWithErrors:isa paymentSummaryItems:v34 shippingMethods:v35];

        (*(a4 + 16))(a4, v36);
        v37 = sub_1000AB62C();
        v38 = [v37 code];

        if (v38 == 500)
        {
          v39 = sub_1000AC2AC();
          sub_1000ABA5C("BusinessChat: dismissing sheet as a 500 response was received", 61, 2, &_mh_execute_header, v7, v39, _swiftEmptyArrayStorage);
          v40 = *(a3 + OBJC_IVAR____TtC8Business18IMBApplePayManager_paymentAuthorizationController);
          if (v40)
          {
            v41 = v40;
            [v41 dismissWithCompletion:0];
          }
        }

        goto LABEL_29;
      }
    }

    v26 = *(v18 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
    if (v26)
    {

      v27 = [v26 shippingMethods];
      if (v27)
      {
        v28 = v27;
        sub_100005A24(0, &qword_1000F0220, PKShippingMethod_ptr);
        sub_1000AC19C();

        goto LABEL_24;
      }
    }

    else
    {
    }

    goto LABEL_24;
  }

  sub_100025BAC(a1);
  v19 = sub_10004DA74(a1);
  sub_100027788(v19);

  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  v20 = qword_1000FC008;
  v21 = sub_1000AC2BC();
  sub_1000ABA5C("Did get successful network request in shippingContactUpdateUrl", 62, 2, &_mh_execute_header, v20, v21, _swiftEmptyArrayStorage);
  v22 = OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest;
  swift_beginAccess();
  v23 = *(a3 + v22);
  if (v23)
  {
    v24 = *(v23 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
    if (!v24 || (, v25 = [v24 paymentSummaryItems], sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr), sub_1000AC19C(), , v25, (v23 = *(a3 + v22)) != 0))
    {
      v29 = *(v23 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
      if (v29)
      {

        v30 = [v29 shippingMethods];
        if (v30)
        {
          v31 = v30;
          sub_100005A24(0, &qword_1000F0220, PKShippingMethod_ptr);
          sub_1000AC19C();
        }

        else
        {
        }
      }
    }
  }

  v42 = objc_allocWithZone(PKPaymentRequestShippingContactUpdate);
  sub_10000413C(&qword_1000F3A60, &qword_1000B1520);
  v43 = sub_1000AC18C().super.isa;

  sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);
  v44 = sub_1000AC18C().super.isa;

  sub_100005A24(0, &qword_1000F0220, PKShippingMethod_ptr);
  v45 = sub_1000AC18C().super.isa;

  v36 = [v42 initWithErrors:v43 paymentSummaryItems:v44 shippingMethods:v45];

  (*(a4 + 16))(a4, v36);
LABEL_29:
}

void sub_1000298C0(void *a1, char *a2, void (**a3)(void, void))
{
  v53 = a1;
  v5 = type metadata accessor for Endpoint(0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = (&v51 - v9);
  v11 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  __chkstk_darwin(v11 - 8);
  v13 = &v51 - v12;
  v14 = sub_1000AB6EC();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC8Business18IMBApplePayManager_messagePaymentRequest;
  swift_beginAccess();
  v19 = *&a2[v18];
  if (v19)
  {
    v52 = v8;
    v20 = a2;
    v21 = a3;
    v22 = OBJC_IVAR____TtC8Business17IMBPaymentRequest_shippingContactUpdateUrl;
    swift_beginAccess();
    v23 = v19 + v22;
    a3 = v21;
    a2 = v20;
    sub_10000E66C(v23, v13, &unk_1000F06A0, &unk_1000B0450);
    if ((*(v15 + 48))(v13, 1, v14) != 1)
    {
      (*(v15 + 32))(v17, v13, v14);
      v24 = a3;
      v25 = *&v20[OBJC_IVAR____TtC8Business18IMBApplePayManager_imbNetworkBody];
      _Block_copy(v24);
      v26 = v25;
      v27 = sub_100091DC4(v53);

      v28 = *(sub_10000413C(&qword_1000F0228, &qword_1000B1528) + 48);
      *v10 = v27;
      (*(v15 + 16))(v10 + v28, v17, v14);
      v29 = v52;
      sub_10002A0C8(v10, v52);
      v30 = type metadata accessor for HttpClient(0);
      v31 = objc_allocWithZone(v30);
      v32 = sub_100031620(v29);
      v54[3] = v30;
      v54[4] = &off_1000DB940;
      v54[0] = v32;
      sub_10002A12C(v10);
      v33 = *sub_1000058D0(v54, v30);
      _Block_copy(v24);
      sub_1000359DC(v33, v20, v24);
      _Block_release(v24);
      (*(v15 + 8))(v17, v14);
      sub_10000E738(v54);
      v34 = v24;
      goto LABEL_21;
    }
  }

  else
  {
    (*(v15 + 56))(v13, 1, 1, v14);
  }

  _Block_copy(a3);
  sub_10000E784(v13, &unk_1000F06A0, &unk_1000B0450);
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  v35 = qword_1000FC008;
  v36 = sub_1000AC2AC();
  v37 = _swiftEmptyArrayStorage;
  sub_1000ABA5C("didSelectShippingContact did fail due to nil shippingContactUpdateUrl", 69, 2, &_mh_execute_header, v35, v36, _swiftEmptyArrayStorage);
  v38 = *&a2[v18];
  if (v38)
  {
    v39 = *(v38 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
    if (v39)
    {

      v40 = [v39 shippingMethods];
      if (v40)
      {
        v41 = v40;
        sub_100005A24(0, &qword_1000F0220, PKShippingMethod_ptr);
        v37 = sub_1000AC19C();

        goto LABEL_13;
      }
    }

    v37 = _swiftEmptyArrayStorage;
  }

LABEL_13:
  if (v37 >> 62)
  {
    sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);

    sub_1000AC64C();
  }

  else
  {

    sub_1000AC7BC();
    sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);
  }

  v42 = *&a2[v18];
  if (v42)
  {
    v43 = *(v42 + OBJC_IVAR____TtC8Business17IMBPaymentRequest_paymentRequest);
    if (v43)
    {

      v44 = [v43 shippingMethods];
      if (v44)
      {
        v45 = v44;
        sub_100005A24(0, &qword_1000F0220, PKShippingMethod_ptr);
        sub_1000AC19C();
      }

      else
      {
      }
    }
  }

  v46 = objc_allocWithZone(PKPaymentRequestShippingContactUpdate);
  sub_10000413C(&qword_1000F3A60, &qword_1000B1520);
  isa = sub_1000AC18C().super.isa;
  sub_100005A24(0, &unk_1000F0210, PKPaymentSummaryItem_ptr);
  v48 = sub_1000AC18C().super.isa;

  sub_100005A24(0, &qword_1000F0220, PKShippingMethod_ptr);
  v49 = sub_1000AC18C().super.isa;

  v50 = [v46 initWithErrors:isa paymentSummaryItems:v48 shippingMethods:v49];

  (a3)[2](a3, v50);
  v34 = a3;
LABEL_21:
  _Block_release(v34);
}

void sub_100029F2C(void *a1, void *a2, uint64_t a3, void *aBlock, SEL *a5, const char *a6, uint64_t a7, void (*a8)(void *, uint64_t, void *))
{
  _Block_copy(aBlock);
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  v12 = qword_1000FC008;
  v13 = sub_1000AC29C();
  sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1000AF0F0;
  v15 = [a1 description];
  v16 = sub_1000AC06C();
  v18 = v17;

  *(v14 + 56) = &type metadata for String;
  v19 = sub_10000587C();
  *(v14 + 64) = v19;
  *(v14 + 32) = v16;
  *(v14 + 40) = v18;
  v20 = [a2 *a5];
  v21 = sub_1000AC06C();
  v23 = v22;

  *(v14 + 96) = &type metadata for String;
  *(v14 + 104) = v19;
  *(v14 + 72) = v21;
  *(v14 + 80) = v23;
  sub_1000ABA5C(a6, a7, 2, &_mh_execute_header, v12, v13, v14);

  a8(a2, a3, aBlock);

  _Block_release(aBlock);
}

uint64_t sub_10002A0C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Endpoint(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002A12C(uint64_t a1)
{
  v2 = type metadata accessor for Endpoint(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002A188(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
  }
}

uint64_t sub_10002A194()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

double sub_10002A1E0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

unint64_t sub_10002A1F0()
{
  result = qword_1000F0268;
  if (!qword_1000F0268)
  {
    sub_100005A24(255, &qword_1000F0260, NSAttributedString_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0268);
  }

  return result;
}

unint64_t sub_10002A258()
{
  result = qword_1000F0278;
  if (!qword_1000F0278)
  {
    sub_1000AB7EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0278);
  }

  return result;
}

uint64_t sub_10002A2E4()
{
  result = sub_1000ABE6C();
  qword_1000FBEC8 = result;
  return result;
}

uint64_t sub_10002A304()
{
  result = sub_1000ABE7C();
  qword_1000FBED0 = result;
  return result;
}

uint64_t sub_10002A324()
{
  swift_getKeyPath();
  sub_10002C254(&qword_1000F0450, type metadata accessor for BIADeterminateReplyBubbleContentView.Model, &unk_1000B16E4);
  sub_1000AB99C();

  return *(v0 + 16);
}

void sub_10002A3C4(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10002C254(&qword_1000F0450, type metadata accessor for BIADeterminateReplyBubbleContentView.Model, &unk_1000B16E4);
  sub_1000AB99C();

  *a2 = *(v3 + 16);
}

void sub_10002A46C(char a1)
{
  if (*(v1 + 16) == (a1 & 1))
  {
    *(v1 + 16) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10002C254(&qword_1000F0450, type metadata accessor for BIADeterminateReplyBubbleContentView.Model, &unk_1000B16E4);
    sub_1000AB98C();
  }
}

uint64_t sub_10002A57C()
{
  swift_getKeyPath();
  sub_10002C254(&qword_1000F0450, type metadata accessor for BIADeterminateReplyBubbleContentView.Model, &unk_1000B16E4);
  sub_1000AB99C();

  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_10002A62C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10002C254(&qword_1000F0450, type metadata accessor for BIADeterminateReplyBubbleContentView.Model, &unk_1000B16E4);
  sub_1000AB99C();

  v4 = *(v3 + 32);
  *a2 = *(v3 + 24);
  a2[1] = v4;
}

uint64_t sub_10002A6D8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24) == a1 && *(v2 + 32) == a2;
  if (v5 || (sub_1000AC7AC() & 1) != 0)
  {
    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10002C254(&qword_1000F0450, type metadata accessor for BIADeterminateReplyBubbleContentView.Model, &unk_1000B16E4);
    sub_1000AB98C();
  }
}

uint64_t sub_10002A838()
{
  swift_getKeyPath();
  sub_10002C254(&qword_1000F0450, type metadata accessor for BIADeterminateReplyBubbleContentView.Model, &unk_1000B16E4);
  sub_1000AB99C();

  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_10002A8E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10002C254(&qword_1000F0450, type metadata accessor for BIADeterminateReplyBubbleContentView.Model, &unk_1000B16E4);
  sub_1000AB99C();

  v4 = *(v3 + 48);
  *a2 = *(v3 + 40);
  a2[1] = v4;
}

uint64_t sub_10002A994(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 40) == a1 && v5 == a2;
      if (v6 || (sub_1000AC7AC() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10002C254(&qword_1000F0450, type metadata accessor for BIADeterminateReplyBubbleContentView.Model, &unk_1000B16E4);
    sub_1000AB98C();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

uint64_t sub_10002AB04()
{

  v1 = OBJC_IVAR____TtCV8Business36BIADeterminateReplyBubbleContentView5Model___observationRegistrar;
  v2 = sub_1000AB9BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BIADeterminateReplyBubbleContentView.Model(uint64_t a1)
{
  result = qword_1000F02B0;
  if (!qword_1000F02B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002AC04(uint64_t a1)
{
  result = sub_1000AB9BC();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_10002ACD8()
{
  result = qword_1000F0410;
  if (!qword_1000F0410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0410);
  }

  return result;
}

uint64_t sub_10002AD48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = sub_1000ABD6C();
  v41 = *(v3 - 8);
  v42 = v3;
  __chkstk_darwin(v3);
  v40 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_10000413C(&qword_1000F0428, &qword_1000B1710);
  __chkstk_darwin(v39);
  v6 = &v37 - v5;
  v43 = sub_10000413C(&qword_1000F0430, &qword_1000B1718);
  v7 = *(v43 - 8);
  __chkstk_darwin(v43);
  v38 = &v37 - v8;
  v9 = sub_10000413C(&qword_1000F0438, &qword_1000B1720);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v37 - v13;
  v15 = sub_10000413C(&qword_1000F0440, &qword_1000B1728);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v37 - v19;
  *v20 = sub_1000ABD1C();
  *(v20 + 1) = 0;
  v21 = 1;
  v20[16] = 1;
  v22 = sub_10000413C(&qword_1000F0448, &qword_1000B1730);
  sub_10002B310(a1, &v20[*(v22 + 44)]);
  swift_getKeyPath();
  v45 = a1;
  sub_10002C254(&qword_1000F0450, type metadata accessor for BIADeterminateReplyBubbleContentView.Model, &unk_1000B16E4);
  sub_1000AB99C();

  v23 = *(a1 + 48);
  if (v23)
  {
    v45 = *(a1 + 40);
    v46 = v23;
    sub_10002BD70();

    sub_1000ABEDC();
    v24 = sub_1000ABDAC();
    KeyPath = swift_getKeyPath();
    v26 = &v6[*(sub_10000413C(&qword_1000F0460, &qword_1000B1798) + 36)];
    *v26 = KeyPath;
    v26[1] = v24;
    if (qword_1000EEDA0 != -1)
    {
      swift_once();
    }

    v45 = qword_1000FBED0;
    sub_10002BE1C();

    v27 = sub_1000ABEAC();
    v28 = swift_getKeyPath();
    v29 = v40;
    v30 = &v6[*(v39 + 36)];
    *v30 = v28;
    v30[1] = v27;
    sub_1000ABD5C();
    sub_10002BEC8();
    sub_10002C254(&qword_1000F04B0, &type metadata accessor for TitleOnlyLabelStyle, &protocol conformance descriptor for TitleOnlyLabelStyle);
    v31 = v38;
    v32 = v42;
    sub_1000ABE4C();
    (*(v41 + 8))(v29, v32);
    sub_10002C064(v6);
    v33 = v43;
    (*(v7 + 32))(v14, v31, v43);
    v21 = 0;
  }

  else
  {
    v33 = v43;
  }

  (*(v7 + 56))(v14, v21, 1, v33);
  sub_10000E66C(v20, v18, &qword_1000F0440, &qword_1000B1728);
  sub_10000E66C(v14, v12, &qword_1000F0438, &qword_1000B1720);
  v34 = v44;
  sub_10000E66C(v18, v44, &qword_1000F0440, &qword_1000B1728);
  v35 = sub_10000413C(&qword_1000F0458, &qword_1000B1760);
  sub_10000E66C(v12, v34 + *(v35 + 48), &qword_1000F0438, &qword_1000B1720);
  sub_10000E784(v14, &qword_1000F0438, &qword_1000B1720);
  sub_10000E784(v20, &qword_1000F0440, &qword_1000B1728);
  sub_10000E784(v12, &qword_1000F0438, &qword_1000B1720);
  return sub_10000E784(v18, &qword_1000F0440, &qword_1000B1728);
}

uint64_t sub_10002B310@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v57 = a2;
  v55 = sub_1000ABD3C();
  v53 = *(v55 - 1);
  __chkstk_darwin(v55);
  v49 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000413C(&qword_1000F04B8, &qword_1000B17E8);
  v50 = *(v4 - 8);
  v51 = v4;
  __chkstk_darwin(v4);
  v6 = &v45 - v5;
  v56 = sub_10000413C(&qword_1000F04C0, &qword_1000B17F0);
  v54 = *(v56 - 8);
  v7 = __chkstk_darwin(v56);
  v52 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v58 = &v45 - v9;
  v10 = sub_1000ABD6C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000413C(&qword_1000F0428, &qword_1000B1710);
  __chkstk_darwin(v14);
  v16 = &v45 - v15;
  v48 = sub_10000413C(&qword_1000F0430, &qword_1000B1718);
  v46 = *(v48 - 8);
  v17 = __chkstk_darwin(v48);
  v47 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v45 - v19;
  swift_getKeyPath();
  v59 = a1;
  sub_10002C254(&qword_1000F0450, type metadata accessor for BIADeterminateReplyBubbleContentView.Model, &unk_1000B16E4);
  sub_1000AB99C();

  v21 = *(a1 + 32);
  v59 = *(a1 + 24);
  v60 = v21;
  sub_10002BD70();

  sub_1000ABEDC();
  sub_1000ABDAC();
  sub_1000ABDBC();
  v22 = sub_1000ABDCC();

  KeyPath = swift_getKeyPath();
  v24 = &v16[*(sub_10000413C(&qword_1000F0460, &qword_1000B1798) + 36)];
  *v24 = KeyPath;
  v24[1] = v22;
  if (qword_1000EED98 != -1)
  {
    swift_once();
  }

  v59 = qword_1000FBEC8;
  sub_10002BE1C();

  v25 = sub_1000ABEAC();
  v26 = swift_getKeyPath();
  v27 = &v16[*(v14 + 36)];
  *v27 = v26;
  v27[1] = v25;
  sub_1000ABD5C();
  sub_10002BEC8();
  sub_10002C254(&qword_1000F04B0, &type metadata accessor for TitleOnlyLabelStyle, &protocol conformance descriptor for TitleOnlyLabelStyle);
  v45 = v20;
  sub_1000ABE4C();
  (*(v11 + 8))(v13, v10);
  sub_10002C064(v16);
  sub_10000413C(&qword_1000F04C8, &qword_1000B1820);
  sub_10002C118();
  sub_1000ABECC();
  v28 = v49;
  sub_1000ABD2C();
  sub_10002C5BC(&qword_1000F04E8, &qword_1000F04B8, &qword_1000B17E8, &protocol conformance descriptor for Label<A, B>);
  sub_10002C254(&qword_1000F04F0, &type metadata accessor for IconOnlyLabelStyle, &protocol conformance descriptor for IconOnlyLabelStyle);
  v29 = v58;
  v30 = v51;
  v31 = v55;
  sub_1000ABE4C();
  (*(v53 + 8))(v28, v31);
  (*(v50 + 8))(v6, v30);
  v32 = v46;
  v33 = v47;
  v34 = *(v46 + 16);
  v35 = v48;
  v34(v47, v20, v48);
  v36 = v54;
  v55 = *(v54 + 16);
  v37 = v52;
  v38 = v29;
  v39 = v56;
  (v55)(v52, v38, v56);
  v40 = v57;
  v34(v57, v33, v35);
  v41 = sub_10000413C(&qword_1000F04F8, &qword_1000B1830);
  (v55)(&v40[*(v41 + 48)], v37, v39);
  v42 = *(v36 + 8);
  v42(v58, v39);
  v43 = *(v32 + 8);
  v43(v45, v35);
  v42(v37, v39);
  return (v43)(v33, v35);
}

double sub_10002BABC@<D0>(double a1@<X0>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  *&v5 = a1;
  sub_10002C254(&qword_1000F0450, type metadata accessor for BIADeterminateReplyBubbleContentView.Model, &unk_1000B16E4);
  sub_1000AB99C();

  sub_1000ABEBC();
  sub_1000ABE8C();
  swift_getKeyPath();
  sub_10000413C(&qword_1000F04E0, &qword_1000B1828);
  sub_10002C19C();
  sub_1000ABD8C();
  result = a1;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  return result;
}

__n128 sub_10002BC9C@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  *a1 = sub_1000ABD4C();
  *(a1 + 8) = 0x4028000000000000;
  *(a1 + 16) = 0;
  v4 = sub_10000413C(&qword_1000F0418, &qword_1000B1700);
  sub_10002AD48(v3, a1 + *(v4 + 44));
  LOBYTE(v3) = sub_1000ABD9C();
  v5 = a1 + *(sub_10000413C(&qword_1000F0420, &qword_1000B1708) + 36);
  *v5 = v3;
  __asm { FMOV            V0.2D, #12.0 }

  *(v5 + 8) = result;
  *(v5 + 24) = result;
  *(v5 + 40) = 0;
  return result;
}

uint64_t sub_10002BD30(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_10002A994(v1, v2);
}

unint64_t sub_10002BD70()
{
  result = qword_1000F3B20;
  if (!qword_1000F3B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F3B20);
  }

  return result;
}

uint64_t sub_10002BDC4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000ABCBC();
  *a1 = result;
  return result;
}

unint64_t sub_10002BE1C()
{
  result = qword_1000F0468;
  if (!qword_1000F0468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0468);
  }

  return result;
}

uint64_t sub_10002BE70@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000ABC9C();
  *a1 = result;
  return result;
}

unint64_t sub_10002BEC8()
{
  result = qword_1000F0470;
  if (!qword_1000F0470)
  {
    sub_1000041E8(&qword_1000F0428, &qword_1000B1710);
    sub_10002BF80();
    sub_10002C5BC(&qword_1000F04A0, &qword_1000F04A8, &qword_1000B17E0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0470);
  }

  return result;
}

unint64_t sub_10002BF80()
{
  result = qword_1000F0478;
  if (!qword_1000F0478)
  {
    sub_1000041E8(&qword_1000F0460, &qword_1000B1798);
    sub_10002C5BC(&qword_1000F0480, &qword_1000F0488, &qword_1000B17D0, &protocol conformance descriptor for Label<A, B>);
    sub_10002C5BC(&qword_1000F0490, &qword_1000F0498, &qword_1000B17D8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0478);
  }

  return result;
}

uint64_t sub_10002C064(uint64_t a1)
{
  v2 = sub_10000413C(&qword_1000F0428, &qword_1000B1710);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002C0D0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_10002A6D8(v1, v2);
}

unint64_t sub_10002C118()
{
  result = qword_1000F04D0;
  if (!qword_1000F04D0)
  {
    sub_1000041E8(&qword_1000F04C8, &qword_1000B1820);
    sub_10002C19C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F04D0);
  }

  return result;
}

unint64_t sub_10002C19C()
{
  result = qword_1000F04D8;
  if (!qword_1000F04D8)
  {
    sub_1000041E8(&qword_1000F04E0, &qword_1000B1828);
    sub_10002C5BC(&qword_1000F04A0, &qword_1000F04A8, &qword_1000B17E0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F04D8);
  }

  return result;
}

uint64_t sub_10002C254(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10002C2C8(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for BIADeterminateReplyBubbleContentView.Model(0);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = 0xE000000000000000;
  *(v10 + 40) = 0;
  *(v10 + 48) = 0;
  sub_1000AB9AC();
  v11 = a1 & 1;
  if (*(v10 + 16) == v11)
  {
    *(v10 + 16) = v11;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v14[1] = v14;
    __chkstk_darwin(KeyPath);
    v14[3] = v10;
    sub_10002C254(&qword_1000F0450, type metadata accessor for BIADeterminateReplyBubbleContentView.Model, &unk_1000B16E4);

    sub_1000AB98C();
  }

  sub_10002A6D8(a2, a3);
  sub_10002A994(a4, a5);

  return v10;
}

uint64_t sub_10002C480()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 40) = v0[3];
  *(v1 + 48) = v2;
}

uint64_t sub_10002C4C0()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 24) = v0[3];
  *(v1 + 32) = v2;
}

unint64_t sub_10002C504()
{
  result = qword_1000F0500;
  if (!qword_1000F0500)
  {
    sub_1000041E8(&qword_1000F0420, &qword_1000B1708);
    sub_10002C5BC(&qword_1000F0508, &qword_1000F0510, &qword_1000B1860, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F0500);
  }

  return result;
}

uint64_t sub_10002C5BC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000041E8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t MSMessagesAppPresentationStyle.description.getter(uint64_t a1)
{
  v1 = 0x697263736E617274;
  v2 = 0x6E776F6E6B6E75;
  if (a1 == 1)
  {
    v2 = 0x6465646E61707865;
  }

  if (a1 != 2)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0x746361706D6F63;
  }
}

uint64_t sub_10002C698()
{
  v1 = *v0;
  v2 = 0x697263736E617274;
  v3 = 0x6E776F6E6B6E75;
  if (*v0 == 1)
  {
    v3 = 0x6465646E61707865;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0x746361706D6F63;
  }
}

void sub_10002C718()
{
  v0 = sub_1000AC02C();
  v1 = [objc_opt_self() colorNamed:v0];

  qword_1000FBED8 = v1;
}

void sub_10002C78C()
{
  v0 = sub_1000AC02C();
  v1 = [objc_opt_self() colorNamed:v0];

  qword_1000FBEE0 = v1;
}

uint64_t sub_10002C7FC(uint64_t a1)
{
  result = sub_10002CE60();
  v2 = 8.0;
  if (result == 2)
  {
    v2 = 6.0;
  }

  qword_1000FBEE8 = *&v2;
  return result;
}

Class sub_10002C844()
{
  sub_100015C6C();
  result = sub_1000AC39C(0.78, 0.78, 0.8, 1.0).super.isa;
  qword_1000FBEF8 = result;
  return result;
}

void sub_10002C898()
{
  v0 = sub_1000AC02C();
  v1 = objc_opt_self();
  v2 = [v1 colorNamed:v0];

  if (!v2)
  {
    v2 = [v1 systemBackgroundColor];
  }

  qword_1000FBF00 = v2;
}

void sub_10002C93C()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleSubheadline;
  v2 = [v0 preferredFontDescriptorWithTextStyle:v1];
  sub_10000413C(&qword_1000EF8B0, &unk_1000B4000);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000AF0E0;
  *(inited + 32) = UIFontDescriptorTraitsAttribute;
  sub_10000413C(&qword_1000EF8B8, &qword_1000B0600);
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_1000AF0E0;
  *(v4 + 32) = UIFontWeightTrait;
  *(v4 + 40) = UIFontWeightSemibold;
  v5 = UIFontDescriptorTraitsAttribute;
  v6 = UIFontWeightTrait;
  v7 = sub_10004FA58(v4);
  swift_setDeallocating();
  sub_10000E784(v4 + 32, &qword_1000EF8C0, &qword_1000B0608);
  *(inited + 64) = sub_10000413C(&qword_1000EF8C8, &unk_1000B0610);
  *(inited + 40) = v7;
  sub_10004FB48(inited);
  swift_setDeallocating();
  sub_10000E784(inited + 32, &qword_1000EF8D0, qword_1000B4010);
  type metadata accessor for AttributeName(0);
  sub_100013968();
  isa = sub_1000ABFAC().super.isa;

  v9 = [v2 fontDescriptorByAddingAttributes:isa];

  v10 = [objc_opt_self() fontWithDescriptor:v9 size:0.0];
  qword_1000FBF08 = v10;
}

void sub_10002CBBC(uint64_t a1, void **a2, void *a3)
{
  v4 = *a2;
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 preferredFontDescriptorWithTextStyle:v6];
  v8 = [objc_opt_self() fontWithDescriptor:v7 size:0.0];

  *a3 = v8;
}

void sub_10002CC6C()
{
  v0 = sub_1000AC02C();
  v1 = objc_opt_self();
  v2 = [v1 colorNamed:v0];

  if (!v2)
  {
    v2 = [v1 systemGroupedBackgroundColor];
  }

  qword_1000FBF38 = v2;
}

Class sub_10002CD1C()
{
  sub_100015C6C();
  result = sub_1000AC39C(0.0, 0.48, 1.0, 1.0).super.isa;
  qword_1000FBF48 = result;
  return result;
}

id sub_10002CDB8(uint64_t a1, SEL *a2, void *a3)
{
  result = [objc_opt_self() *a2];
  *a3 = result;
  return result;
}

id sub_10002CDFC()
{
  if (qword_1000EEDF8 != -1)
  {
    swift_once();
  }

  v1 = qword_1000FBF28;
  qword_1000FBF70 = qword_1000FBF28;

  return v1;
}

uint64_t sub_10002CE60()
{
  v0 = objc_opt_self();
  v1 = [v0 currentDevice];
  v2 = [v1 userInterfaceIdiom];

  if (!v2)
  {
    return 0;
  }

  v3 = [v0 currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 1)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

void sub_10002CF08()
{
  if (sub_10002CE60() > 1u)
  {
    v4 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleTitle3];
    v3 = [objc_opt_self() systemFontOfSize:15.0 weight:UIFontWeightSemibold];
    [v4 scaledFontForFont:v3];

    goto LABEL_5;
  }

  v0 = objc_opt_self();
  v1 = [v0 preferredFontForTextStyle:UIFontTextStyleTitle2];
  v2 = [v1 fontDescriptor];

  v3 = [v2 fontDescriptorWithSymbolicTraits:2];
  if (v3)
  {
    [v0 fontWithDescriptor:v3 size:0.0];
LABEL_5:

    return;
  }

  __break(1u);
}

char *sub_10002D06C(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC8Business30iOSFooterToolbarViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC8Business30iOSFooterToolbarViewController____lazy_storage___leftButtonItem] = 0;
  *&v1[OBJC_IVAR____TtC8Business30iOSFooterToolbarViewController____lazy_storage___rightButtonItem] = 0;
  *&v1[OBJC_IVAR____TtC8Business30iOSFooterToolbarViewController____lazy_storage___buttonItems] = 0;
  *&v1[OBJC_IVAR____TtC8Business30iOSFooterToolbarViewController_footerToolbarModel] = a1;
  v32.receiver = v1;
  v32.super_class = type metadata accessor for iOSFooterToolbarViewController();

  v3 = objc_msgSendSuper2(&v32, "initWithNibName:bundle:", 0, 0);
  v4 = OBJC_IVAR____TtC8Business30iOSFooterToolbarViewController_footerToolbarModel;
  v5 = *&v3[OBJC_IVAR____TtC8Business30iOSFooterToolbarViewController_footerToolbarModel];
  v7 = *(v5 + 16);
  v6 = *(v5 + 24);
  v8 = v7 & 0xFFFFFFFFFFFFLL;
  if ((v6 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v6) & 0xF;
  }

  else
  {
    v9 = v8;
  }

  if (v9)
  {
    v10 = sub_10002D500();
    [v10 setStyle:*(*&v3[v4] + 32)];

    v11 = OBJC_IVAR____TtC8Business30iOSFooterToolbarViewController____lazy_storage___leftButtonItem;
    [*&v3[OBJC_IVAR____TtC8Business30iOSFooterToolbarViewController____lazy_storage___leftButtonItem] setTarget:v3];
    [*&v3[v11] setAction:"leftButtonTapped"];
    v12 = *&v3[v11];

    v13 = sub_1000AC02C();

    [v12 setTitle:v13];

    v14 = *&v3[v11];
    v29 = sub_10002D588();
    v15 = v14;
    sub_1000AC17C();
    if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1000AC1BC();
    }

    sub_1000AC1DC();
    *&v3[OBJC_IVAR____TtC8Business30iOSFooterToolbarViewController____lazy_storage___buttonItems] = v29;
  }

  v16 = [objc_opt_self() flexibleSpaceItem];
  v30 = sub_10002D588();
  sub_1000AC17C();
  if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1000AC1BC();
  }

  sub_1000AC1DC();
  v17 = OBJC_IVAR____TtC8Business30iOSFooterToolbarViewController____lazy_storage___buttonItems;
  *&v3[OBJC_IVAR____TtC8Business30iOSFooterToolbarViewController____lazy_storage___buttonItems] = v30;

  v18 = *&v3[v4];
  v20 = *(v18 + 40);
  v19 = *(v18 + 48);
  v21 = v20 & 0xFFFFFFFFFFFFLL;
  if ((v19 & 0x2000000000000000) != 0)
  {
    v22 = HIBYTE(v19) & 0xF;
  }

  else
  {
    v22 = v21;
  }

  if (v22)
  {
    v23 = sub_10002D50C();
    [v23 setStyle:*(*&v3[v4] + 56)];

    v24 = OBJC_IVAR____TtC8Business30iOSFooterToolbarViewController____lazy_storage___rightButtonItem;
    [*&v3[OBJC_IVAR____TtC8Business30iOSFooterToolbarViewController____lazy_storage___rightButtonItem] setTarget:v3];
    [*&v3[v24] setAction:"rightButtonTapped"];
    v25 = *&v3[v24];

    v26 = sub_1000AC02C();

    [v25 setTitle:v26];

    v31 = *&v3[v17];
    v27 = *&v3[v24];

    sub_1000AC17C();
    if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1000AC1BC();
    }

    sub_1000AC1DC();

    *&v3[v17] = v31;
  }

  else
  {
  }

  return v3;
}

id sub_10002D518(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    v5 = [objc_allocWithZone(type metadata accessor for ABSBarButtonItem()) init];
    v6 = *(v1 + v2);
    *(v1 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v7 = v3;
  return v4;
}

void *sub_10002D588()
{
  if (*(v0 + OBJC_IVAR____TtC8Business30iOSFooterToolbarViewController____lazy_storage___buttonItems))
  {
    v1 = *(v0 + OBJC_IVAR____TtC8Business30iOSFooterToolbarViewController____lazy_storage___buttonItems);
  }

  else
  {
    v1 = _swiftEmptyArrayStorage;
    *(v0 + OBJC_IVAR____TtC8Business30iOSFooterToolbarViewController____lazy_storage___buttonItems) = _swiftEmptyArrayStorage;
  }

  return v1;
}

id sub_10002D780(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for iOSFooterToolbarViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10002D854(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC8Business30iOSFooterToolbarViewController_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_10002D8A0(char a1)
{
  v2 = sub_10002D500();
  [v2 setEnabled:a1 & 1];

  v3 = sub_10002D50C();
  [v3 setEnabled:a1 & 1];
}

void sub_10002D914(void *a1)
{
  v2 = [a1 navigationController];
  if (v2)
  {
    v3 = v2;
    [v2 setToolbarHidden:0 animated:0];
  }

  sub_10002D588();
  sub_100018E48();
  isa = sub_1000AC18C().super.isa;

  [a1 setToolbarItems:isa animated:0];
}

void sub_10002DA94()
{
  v1 = v0;
  v114 = sub_1000AB57C();
  v113 = *(v114 - 8);
  __chkstk_darwin(v114);
  v112 = &v111 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  __chkstk_darwin(v3 - 8);
  v120 = &v111 - v4;
  v5 = sub_1000AB6EC();
  v126 = *(v5 - 8);
  v127 = v5;
  v6 = __chkstk_darwin(v5);
  v115 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v116 = &v111 - v8;
  v9 = sub_1000AC0BC();
  v118 = *(v9 - 8);
  v119 = v9;
  __chkstk_darwin(v9);
  v117 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000413C(&qword_1000F0270, &unk_1000B0480);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v111 - v15;
  v17 = [objc_allocWithZone(UITableView) init];
  v18 = [v17 separatorColor];

  v19 = [objc_allocWithZone(NSDateFormatter) init];
  [v19 setTimeStyle:1];
  [v19 setDateStyle:2];
  v128 = v19;
  [v19 setDoesRelativeDateFormatting:1];
  v20 = OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_content;
  v21 = *&v1[OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_content];
  if (!v21)
  {
    v33 = sub_1000AB7EC();
    (*(*(v33 - 8) + 56))(v16, 1, 1, v33);
    goto LABEL_7;
  }

  v22 = OBJC_IVAR____TtC8Business10IMBContent_date;
  swift_beginAccess();
  sub_10000E66C(v21 + v22, v16, &qword_1000F0270, &unk_1000B0480);
  v23 = sub_1000AB7EC();
  v24 = *(v23 - 8);
  v25 = *(v24 + 48);
  if (v25(v16, 1, v23) == 1)
  {
LABEL_7:
    sub_10000E784(v16, &qword_1000F0270, &unk_1000B0480);
    v30 = 0;
    v32 = 0xE000000000000000;
    goto LABEL_8;
  }

  sub_10000E784(v16, &qword_1000F0270, &unk_1000B0480);
  v26 = *&v1[v20];
  if (!v26)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v27 = OBJC_IVAR____TtC8Business10IMBContent_date;
  swift_beginAccess();
  sub_10000E66C(v26 + v27, v14, &qword_1000F0270, &unk_1000B0480);
  if (v25(v14, 1, v23) == 1)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  isa = sub_1000AB77C().super.isa;
  (*(v24 + 8))(v14, v23);
  v29 = [v128 stringFromDate:isa];

  v30 = sub_1000AC06C();
  v32 = v31;

LABEL_8:
  v34 = [*&v1[OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_message] receivedMessage];
  if (v34 && (v35 = v34, v36 = [v34 title], v35, v36))
  {
    v37 = sub_1000AC06C();
    v39 = v38;
  }

  else
  {
    v37 = 0;
    v39 = 0;
  }

  objc_allocWithZone(type metadata accessor for IMBTableHeaderView());
  v40 = v18;
  v41 = sub_1000906F4(v37, v39, 0, 0, v18);
  v42 = *&v1[OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_headerView];
  v125 = OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_headerView;
  *&v1[OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_headerView] = v41;

  v43 = *&v1[v20];
  if (v43)
  {
    v44 = (v43 + OBJC_IVAR____TtC8Business10IMBContent_title);
    v45 = *v44;
    v46 = v44[1];
  }

  else
  {
    v45 = 0;
    v46 = 0;
  }

  objc_allocWithZone(type metadata accessor for IMBContentHeaderView());
  v47 = v40;

  v123 = v32;
  v48 = sub_100053384(v45, v46, v30, v32, v18);
  v49 = OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_contentHeaderView;
  v50 = *&v1[OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_contentHeaderView];
  *&v1[OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_contentHeaderView] = v48;

  v51 = [objc_allocWithZone(WKWebViewConfiguration) init];
  [v51 _setAllowsMetaRefresh:0];
  [v51 _setAllowsJavaScriptMarkup:0];
  [v51 _setAttachmentElementEnabled:0];
  [v51 _setWaitsForPaintAfterViewDidMoveToWindow:0];
  [v51 setDataDetectorTypes:-1];
  [v51 setSelectionGranularity:1];
  v52 = [objc_allocWithZone(WKWebView) initWithFrame:v51 configuration:{0.0, 0.0, 0.0, 0.0}];
  v53 = OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_webview;
  v54 = *&v1[OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_webview];
  *&v1[OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_webview] = v52;
  v55 = v52;

  if (!v55)
  {
    __break(1u);
    goto LABEL_45;
  }

  v124 = v49;
  [v55 setOpaque:0];

  v56 = *&v1[v53];
  if (!v56)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v57 = objc_opt_self();
  v58 = v56;
  v59 = [v57 clearColor];
  [v58 setBackgroundColor:v59];

  v60 = *&v1[v53];
  if (!v60)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v129 = v47;
  [v60 setAllowsLinkPreview:1];
  v61 = *&v1[v53];
  if (!v61)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v62 = [v61 scrollView];
  [v62 setScrollsToTop:0];

  v63 = *&v1[v53];
  if (!v63)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v64 = [v63 scrollView];
  [v64 setScrollEnabled:1];

  v65 = *&v1[v53];
  if (!v65)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v66 = [v65 scrollView];
  [v66 setBounces:1];

  v67 = *&v1[v53];
  if (!v67)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v68 = [v67 scrollView];
  v69 = [v57 clearColor];
  [v68 setBackgroundColor:v69];

  v70 = *&v1[v53];
  if (!v70)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  [v70 setNavigationDelegate:v1];
  v71 = *&v1[OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_scrollview];
  [v71 setMinimumZoomScale:1.0];
  [v71 setMaximumZoomScale:6.0];
  [v71 setBounces:1];
  [v71 setDelegate:v1];
  v72 = *&v1[OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_footerToolbar];
  sub_10000413C(&unk_1000F06B0, qword_1000B0520);
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_1000B04C0;
  v74 = *&v1[OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_shareButtonItem];
  *(v73 + 32) = v74;
  sub_100005A24(0, &qword_1000EFCE8, UIBarButtonItem_ptr);
  v75 = v74;
  v76 = sub_1000AC18C().super.isa;

  v122 = v72;
  [v72 setItems:v76];

  v121 = *&v1[OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_toolbarBorder];
  v77 = v129;
  [v121 setBackgroundColor:v129];
  v78 = *&v1[v20];
  if (!v78)
  {
    goto LABEL_30;
  }

  if (*(v78 + OBJC_IVAR____TtC8Business10IMBContent_doc + 8))
  {

    v79 = v117;
    sub_1000AC0AC();
    v80 = sub_1000AC07C();
    v82 = v81;

    (*(v118 + 8))(v79, v119);
    if (v82 >> 60 != 15)
    {
      v91 = *&v1[v53];
      if (!v91)
      {
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v92 = v91;
      v93 = sub_1000AB72C().super.isa;
      v94 = sub_1000AC02C();
      v120 = v80;
      v95 = v94;
      v96 = sub_1000AC02C();
      v97 = v116;
      sub_1000AB65C();
      sub_1000AB67C(v98);
      v100 = v99;
      (*(v126 + 8))(v97, v127);

      sub_10000E950(v120, v82);
      goto LABEL_34;
    }

    v78 = *&v1[v20];
    if (!v78)
    {
LABEL_30:
      v83 = v120;
      (*(v126 + 56))(v120, 1, 1, v127);
      goto LABEL_31;
    }
  }

  v83 = v120;
  sub_10000E66C(v78 + OBJC_IVAR____TtC8Business10IMBContent_url, v120, &unk_1000F06A0, &unk_1000B0450);
  v85 = v126;
  v84 = v127;
  if ((*(v126 + 48))(v83, 1, v127) == 1)
  {
LABEL_31:
    sub_10000E784(v83, &unk_1000F06A0, &unk_1000B0450);
    goto LABEL_35;
  }

  v86 = v115;
  (*(v85 + 32))(v115, v83, v84);
  v87 = *&v1[v53];
  if (v87)
  {
    (*(v85 + 16))(v116, v86, v84);
    v88 = v87;
    v89 = v112;
    sub_1000AB55C();
    v90 = sub_1000AB53C();
    (*(v113 + 8))(v89, v114);

    (*(v85 + 8))(v86, v84);
LABEL_34:
    v77 = v129;
LABEL_35:
    v101 = [v1 view];
    if (v101)
    {
      if (*&v1[v125])
      {
        v102 = v101;
        [v101 addSubview:?];

        v103 = [v1 view];
        if (v103)
        {
          if (*&v1[v124])
          {
            v104 = v103;
            [v103 addSubview:?];

            v105 = [v1 view];
            if (v105)
            {
              if (*&v1[v53])
              {
                v106 = v105;
                [v105 addSubview:?];

                v107 = [v1 view];
                if (v107)
                {
                  v108 = v107;
                  [v107 addSubview:v122];

                  v109 = [v1 view];
                  if (v109)
                  {
                    v110 = v109;

                    [v110 addSubview:v121];

                    return;
                  }

                  goto LABEL_59;
                }

LABEL_58:
                __break(1u);
LABEL_59:
                __break(1u);
                goto LABEL_60;
              }

LABEL_57:
              __break(1u);
              goto LABEL_58;
            }

LABEL_56:
            __break(1u);
            goto LABEL_57;
          }

LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

LABEL_63:
  __break(1u);
}

void sub_10002E8A8()
{
  v1 = sub_10000413C(&qword_1000F0270, &unk_1000B0480);
  __chkstk_darwin(v1 - 8);
  v3 = &v113 - v2;
  v4 = OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_headerView;
  v5 = *&v0[OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_headerView];
  if (!v5)
  {
    __break(1u);
    goto LABEL_38;
  }

  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = *&v0[v4];
  if (!v6)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v7 = [v6 topAnchor];
  v8 = [v0 view];
  if (!v8)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v9 = v8;
  v10 = [v8 topAnchor];

  v11 = [v7 constraintEqualToAnchor:v10];
  [v11 setActive:1];

  v12 = *&v0[v4];
  if (!v12)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v13 = [v12 rightAnchor];
  v14 = [v0 view];
  if (!v14)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v15 = v14;
  v16 = [v14 rightAnchor];

  v17 = [v13 constraintEqualToAnchor:v16];
  [v17 setActive:1];

  v18 = *&v0[v4];
  if (!v18)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v19 = [v18 leftAnchor];
  v20 = [v0 view];
  if (!v20)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v21 = v20;
  v22 = [v20 leftAnchor];

  v23 = [v19 constraintEqualToAnchor:v22];
  [v23 setActive:1];

  v24 = OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_contentHeaderView;
  v25 = *&v0[OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_contentHeaderView];
  if (!v25)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
  v26 = *&v0[v24];
  if (!v26)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v27 = [v26 topAnchor];
  v28 = *&v0[v4];
  if (!v28)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v29 = [v28 bottomAnchor];
  v30 = [v27 constraintEqualToAnchor:v29];

  [v30 setActive:1];
  v31 = *&v0[v24];
  if (!v31)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v32 = [v31 rightAnchor];
  v33 = [v0 view];
  if (!v33)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v34 = v33;
  v35 = [v33 rightAnchor];

  v36 = [v32 constraintEqualToAnchor:v35];
  [v36 setActive:1];

  v37 = *&v0[v24];
  if (!v37)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v38 = [v37 leftAnchor];
  v39 = [v0 view];
  if (!v39)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v40 = v39;
  v41 = [v39 leftAnchor];

  v42 = [v38 constraintEqualToAnchor:v41];
  [v42 setActive:1];

  v43 = *&v0[OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_content];
  if (v43)
  {
    if (*(v43 + OBJC_IVAR____TtC8Business10IMBContent_title + 8))
    {
      goto LABEL_22;
    }

    v44 = OBJC_IVAR____TtC8Business10IMBContent_date;
    swift_beginAccess();
    sub_10000E66C(v43 + v44, v3, &qword_1000F0270, &unk_1000B0480);
    v45 = sub_1000AB7EC();
    if ((*(*(v45 - 8) + 48))(v3, 1, v45) != 1)
    {
      sub_10000E784(v3, &qword_1000F0270, &unk_1000B0480);
      goto LABEL_22;
    }
  }

  else
  {
    v46 = sub_1000AB7EC();
    (*(*(v46 - 8) + 56))(v3, 1, 1, v46);
  }

  sub_10000E784(v3, &qword_1000F0270, &unk_1000B0480);
  v47 = *&v0[v24];
  if (v47)
  {
    v48 = [v47 heightAnchor];
    v49 = [v48 constraintEqualToConstant:0.0];

    [v49 setActive:1];
LABEL_22:
    v50 = OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_webview;
    v51 = *&v0[OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_webview];
    if (v51)
    {
      [v51 setTranslatesAutoresizingMaskIntoConstraints:0];
      v52 = *&v0[v50];
      if (v52)
      {
        v53 = [v52 topAnchor];
        v54 = *&v0[v24];
        if (v54)
        {
          v55 = [v54 bottomAnchor];
          v56 = [v53 constraintEqualToAnchor:v55];

          [v56 setActive:1];
          v57 = *&v0[v50];
          if (v57)
          {
            v58 = [v57 bottomAnchor];
            v59 = *&v0[OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_footerToolbar];
            v60 = [v59 topAnchor];
            v61 = [v58 constraintEqualToAnchor:v60];

            [v61 setActive:1];
            v62 = *&v0[v50];
            if (v62)
            {
              v63 = [v62 rightAnchor];
              v64 = [v0 view];
              if (v64)
              {
                v65 = v64;
                v66 = [v64 rightAnchor];

                v67 = [v63 constraintEqualToAnchor:v66];
                [v67 setActive:1];

                v68 = *&v0[v50];
                if (v68)
                {
                  v69 = [v68 leftAnchor];
                  v70 = [v0 view];
                  if (v70)
                  {
                    v71 = v70;
                    v72 = [v70 leftAnchor];

                    v73 = [v69 constraintEqualToAnchor:v72];
                    [v73 setActive:1];

                    [v59 setTranslatesAutoresizingMaskIntoConstraints:0];
                    v74 = [v59 topAnchor];
                    v75 = *&v0[v50];
                    if (v75)
                    {
                      v76 = [v75 bottomAnchor];
                      v77 = [v74 constraintEqualToAnchor:v76];

                      [v77 setActive:1];
                      v78 = [v59 leadingAnchor];
                      v79 = [v0 view];
                      if (v79)
                      {
                        v80 = v79;
                        v81 = [v79 leadingAnchor];

                        v82 = [v78 constraintEqualToAnchor:v81];
                        [v82 setActive:1];

                        v83 = [v59 trailingAnchor];
                        v84 = [v0 view];
                        if (v84)
                        {
                          v85 = v84;
                          v86 = [v84 trailingAnchor];

                          v87 = [v83 constraintEqualToAnchor:v86];
                          [v87 setActive:1];

                          v88 = [v59 bottomAnchor];
                          v89 = [v0 view];
                          if (v89)
                          {
                            v90 = v89;
                            v91 = [v89 safeAreaLayoutGuide];

                            v92 = [v91 bottomAnchor];
                            v93 = [v88 constraintEqualToAnchor:v92];

                            [v93 setActive:1];
                            v94 = *&v0[OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_toolbarBorder];
                            [v94 setTranslatesAutoresizingMaskIntoConstraints:0];
                            v95 = [v94 heightAnchor];
                            v96 = [objc_opt_self() mainScreen];
                            [v96 scale];
                            v98 = v97;

                            v99 = [v95 constraintEqualToConstant:1.0 / v98];
                            [v99 setActive:1];

                            v100 = [v94 leftAnchor];
                            v101 = [v0 view];
                            if (v101)
                            {
                              v102 = v101;
                              v103 = [v101 leftAnchor];

                              v104 = [v100 constraintEqualToAnchor:v103];
                              [v104 setActive:1];

                              v105 = [v94 rightAnchor];
                              v106 = [v0 view];
                              if (v106)
                              {
                                v107 = v106;
                                v108 = [v106 rightAnchor];

                                v109 = [v105 constraintEqualToAnchor:v108];
                                [v109 setActive:1];

                                v110 = [v94 bottomAnchor];
                                v111 = [v59 topAnchor];
                                v112 = [v110 constraintEqualToAnchor:v111];

                                [v112 setActive:1];
                                return;
                              }

                              goto LABEL_64;
                            }

LABEL_63:
                            __break(1u);
LABEL_64:
                            __break(1u);
                            goto LABEL_65;
                          }

LABEL_62:
                          __break(1u);
                          goto LABEL_63;
                        }

LABEL_61:
                        __break(1u);
                        goto LABEL_62;
                      }

LABEL_60:
                      __break(1u);
                      goto LABEL_61;
                    }

LABEL_59:
                    __break(1u);
                    goto LABEL_60;
                  }

LABEL_58:
                  __break(1u);
                  goto LABEL_59;
                }

LABEL_57:
                __break(1u);
                goto LABEL_58;
              }

LABEL_56:
              __break(1u);
              goto LABEL_57;
            }

LABEL_55:
            __break(1u);
            goto LABEL_56;
          }

LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

LABEL_65:
  __break(1u);
}

uint64_t sub_10002F534(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  __chkstk_darwin(v5 - 8);
  v7 = &v34[-v6];
  v8 = sub_1000AB6EC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v34[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10000E66C(a1, v35, &unk_1000F1DF0, &qword_1000B18F0);
  if (!v36)
  {
    return sub_10000E784(v35, &unk_1000F1DF0, &qword_1000B18F0);
  }

  result = swift_dynamicCast();
  if (result)
  {
    v13 = *&a3[OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_content];
    if (v13 && (v14 = (v13 + OBJC_IVAR____TtC8Business10IMBContent_title), (v15 = v14[1]) != 0))
    {
      v16 = *v14;
    }

    else
    {
      v17 = [*&a3[OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_message] receivedMessage];
      if (v17 && (v18 = v17, v19 = [v17 title], v18, v19))
      {
        v20 = sub_1000AC06C();
      }

      else
      {
        v19 = [objc_opt_self() mainBundle];
        v33._countAndFlagsBits = 0xE000000000000000;
        v37._object = 0x80000001000B8290;
        v37._countAndFlagsBits = 0xD000000000000011;
        v38.value._countAndFlagsBits = 0;
        v38.value._object = 0;
        v22.super.isa = v19;
        v39._countAndFlagsBits = 0;
        v39._object = 0xE000000000000000;
        v20 = sub_1000AB61C(v37, v38, v22, v39, 0, v33);
      }

      v16 = v20;
      v15 = v21;
    }

    sub_10002FACC(v16, v15, v7);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {

      return sub_10000E784(v7, &unk_1000F06A0, &unk_1000B0450);
    }

    else
    {
      (*(v9 + 32))(v11, v7, v8);
      sub_10000413C(&qword_1000F06D0, &unk_1000B06D0);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1000AF0F0;
      *(v23 + 56) = v8;
      v24 = sub_100030970((v23 + 32));
      result = (*(v9 + 16))(v24, v11, v8);
      v25 = *&a3[OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_webview];
      if (v25)
      {
        v26 = v25;

        v27 = [v26 viewPrintFormatter];

        *(v23 + 88) = sub_100005A24(0, &qword_1000F06D8, UIViewPrintFormatter_ptr);
        *(v23 + 64) = v27;
        v28 = objc_allocWithZone(UIActivityViewController);
        isa = sub_1000AC18C().super.isa;

        v30 = [v28 initWithActivityItems:isa applicationActivities:0];

        v31 = [v30 popoverPresentationController];
        if (v31)
        {
          v32 = v31;
          [v31 setBarButtonItem:*&a3[OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_shareButtonItem]];
        }

        [a3 presentViewController:v30 animated:1 completion:0];

        return (*(v9 + 8))(v11, v8);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}