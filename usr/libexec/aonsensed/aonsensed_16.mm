BOOL sub_1001A5AC4()
{
  v1 = sub_100024A2C(&qword_100423F00, &qword_1003833D0);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_Init(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__notification;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_100423F00, &qword_1003833D0);
  v6 = type metadata accessor for Proto_Gnss_Emergency_Notification(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_100423F00, &qword_1003833D0);
  return v7;
}

uint64_t sub_1001A5BE4()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100423F00, &qword_1003833D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_Init(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_Init._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    sub_1002013E4(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gnss_Emergency_Notification(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__notification;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v11, &qword_100423F00, &qword_1003833D0);
  return swift_endAccess();
}

uint64_t sub_1001A5D2C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100423F08, &qword_1003833D8);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_Init(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__suplInitv2Extension;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_100423F08, &qword_1003833D8);
  inited = type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension(0);
  v9 = *(*(inited - 8) + 48);
  if (v9(v5, 1, inited) != 1)
  {
    return sub_1002463C0(v5, a1, type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension);
  }

  UnknownStorage.init()();
  v10 = *(inited + 20);
  v11 = type metadata accessor for Proto_Gnss_Emergency_SLPAddress(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  *(a1 + *(inited + 24)) = 4;
  result = (v9)(v5, 1, inited);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_100423F08, &qword_1003833D8);
  }

  return result;
}

uint64_t sub_1001A5EF4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100423F08, &qword_1003833D8);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gnss_Emergency_Init(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_Init._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_1002013E4(v11);
    *(v2 + v7) = v10;
  }

  sub_1002463C0(a1, v6, type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension);
  inited = type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension(0);
  (*(*(inited - 8) + 56))(v6, 0, 1, inited);
  v13 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__suplInitv2Extension;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_100423F08, &qword_1003833D8);
  return swift_endAccess();
}

void (*sub_1001A6060(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(sub_100024A2C(&qword_100423F08, &qword_1003833D8) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 80) = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 80) = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 88) = v6;
  inited = type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension(0);
  *(v4 + 96) = inited;
  v9 = *(inited - 8);
  v10 = v9;
  *(v4 + 104) = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 112) = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 112) = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  *(v4 + 120) = v12;
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_Init(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__suplInitv2Extension;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100423F08, &qword_1003833D8);
  v17 = *(v10 + 48);
  if (v17(v7, 1, inited) == 1)
  {
    UnknownStorage.init()();
    v18 = *(inited + 20);
    v19 = type metadata accessor for Proto_Gnss_Emergency_SLPAddress(0);
    (*(*(v19 - 8) + 56))(v13 + v18, 1, 1, v19);
    *(v13 + *(inited + 24)) = 4;
    if (v17(v7, 1, inited) != 1)
    {
      sub_1000059A8(v7, &qword_100423F08, &qword_1003833D8);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension);
  }

  return sub_1001A62FC;
}

void sub_1001A62FC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100246428(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_Init._StorageClass(0);
      v9 = swift_allocObject();
      sub_1002013E4(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002463C0(v11, v15, type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__suplInitv2Extension;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_100423F08, &qword_1003833D8);
    swift_endAccess();
    sub_100246490(v10, type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension);
  }

  else
  {
    v17 = *(v2 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v3);
    if ((v18 & 1) == 0)
    {
      v20 = *(v2 + 128);
      v21 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_Init._StorageClass(0);
      v22 = swift_allocObject();
      sub_1002013E4(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002463C0(v10, v15, type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__suplInitv2Extension;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_100423F08, &qword_1003833D8);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_1001A654C()
{
  v1 = sub_100024A2C(&qword_100423F08, &qword_1003833D8);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_Init(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__suplInitv2Extension;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_100423F08, &qword_1003833D8);
  inited = type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension(0);
  v7 = (*(*(inited - 8) + 48))(v3, 1, inited) != 1;
  sub_1000059A8(v3, &qword_100423F08, &qword_1003833D8);
  return v7;
}

uint64_t sub_1001A666C()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100423F08, &qword_1003833D8);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_Init(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_Init._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    sub_1002013E4(v9);
    *(v1 + v5) = v8;
  }

  inited = type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension(0);
  (*(*(inited - 8) + 56))(v4, 1, 1, inited);
  v11 = OBJC_IVAR____TtCV10ALProtobuf25Proto_Gnss_Emergency_InitP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__suplInitv2Extension;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v11, &qword_100423F08, &qword_1003833D8);
  return swift_endAccess();
}

uint64_t sub_1001A67EC@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a5@<X8>)
{
  UnknownStorage.init()();
  v9 = *(a1(0) + 20);
  if (*a2 != -1)
  {
    swift_once();
  }

  *(a5 + v9) = *a3;
}

uint64_t sub_1001A68B0(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_SuplContext(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001A68E8(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_SuplContext(0) + 20);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1001A6980()
{
  result = type metadata accessor for Proto_Gnss_Emergency_SuplContext(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001A69C8(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));
  if (v2[1])
  {
    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_1001A6A3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 24));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

void (*sub_1001A6A88(uint64_t *a1))(uint64_t **, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_SuplContext(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_100268FE8;
}

uint64_t sub_1001A6B80(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t sub_1001A6BE8(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_SuplContext(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*sub_1001A6C18(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_SuplContext(0) + 28);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1001A6CA0()
{
  result = type metadata accessor for Proto_Gnss_Emergency_SuplContext(0);
  *(v0 + *(result + 28)) = 2;
  return result;
}

uint64_t sub_1001A6CE0(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 32));
  if (v2[1])
  {
    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_1001A6D54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 32));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

void (*sub_1001A6DA0(uint64_t *a1))(uint64_t **, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_SuplContext(0) + 32);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_100268FE8;
}

uint64_t sub_1001A6E98(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 32));

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t sub_1001A6ED8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100423F10, &qword_1003833E0);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_SuplContext(0);
  sub_10000A0A4(v1 + *(v6 + 36), v5, &qword_100423F10, &qword_1003833E0);
  v7 = type metadata accessor for Proto_Gnss_Emergency_Configuration(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1002463C0(v5, a1, type metadata accessor for Proto_Gnss_Emergency_Configuration);
  }

  UnknownStorage.init()();
  *(a1 + v7[5]) = 2;
  *(a1 + v7[6]) = 2;
  v9 = a1 + v7[7];
  *v9 = 0;
  *(v9 + 8) = 1;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_100423F10, &qword_1003833E0);
  }

  return result;
}

uint64_t sub_1001A7054(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_SuplContext(0) + 36);
  sub_1000059A8(v1 + v3, &qword_100423F10, &qword_1003833E0);
  sub_1002463C0(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_Configuration);
  v4 = type metadata accessor for Proto_Gnss_Emergency_Configuration(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_1001A710C(void *a1))(uint64_t **a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100024A2C(&qword_100423F10, &qword_1003833E0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_Configuration(0);
  v4[2] = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_SuplContext(0) + 36);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100423F10, &qword_1003833E0);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    *(v13 + v8[5]) = 2;
    *(v13 + v8[6]) = 2;
    v16 = v13 + v8[7];
    *v16 = 0;
    *(v16 + 8) = 1;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100423F10, &qword_1003833E0);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_Configuration);
  }

  return sub_1001A7340;
}

uint64_t sub_1001A73F4()
{
  v1 = (v0 + *(type metadata accessor for Proto_Gnss_Emergency_SuplContext(0) + 40));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1001A7448(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Proto_Gnss_Emergency_SuplContext(0) + 40));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*sub_1001A7490(uint64_t *a1))(uint64_t **, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_SuplContext(0) + 40);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_100268FE8;
}

uint64_t sub_1001A7570()
{
  v1 = (v0 + *(type metadata accessor for Proto_Gnss_Emergency_SuplContext(0) + 40));

  *v1 = 0;
  v1[1] = 0;
  return result;
}

uint64_t sub_1001A75D0(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_SuplContext(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t (*sub_1001A7600(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_SuplContext(0) + 44);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1001A7688()
{
  result = type metadata accessor for Proto_Gnss_Emergency_SuplContext(0);
  *(v0 + *(result + 44)) = 2;
  return result;
}

uint64_t sub_1001A76D8(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_SuplContext(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t (*sub_1001A7708(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_SuplContext(0) + 48);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1001A7790()
{
  result = type metadata accessor for Proto_Gnss_Emergency_SuplContext(0);
  *(v0 + *(result + 48)) = 2;
  return result;
}

uint64_t sub_1001A77E0(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_SuplContext(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t (*sub_1001A7810(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_SuplContext(0) + 52);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1001A7898()
{
  result = type metadata accessor for Proto_Gnss_Emergency_SuplContext(0);
  *(v0 + *(result + 52)) = 2;
  return result;
}

uint64_t sub_1001A78C0@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for Proto_Gnss_Emergency_SuplContext(0);
  v3 = a1 + v2[5];
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = (a1 + v2[6]);
  *v4 = 0;
  v4[1] = 0;
  *(a1 + v2[7]) = 2;
  v5 = (a1 + v2[8]);
  *v5 = 0;
  v5[1] = 0;
  v6 = v2[9];
  v7 = type metadata accessor for Proto_Gnss_Emergency_Configuration(0);
  result = (*(*(v7 - 8) + 56))(a1 + v6, 1, 1, v7);
  v9 = (a1 + v2[10]);
  *v9 = 0;
  v9[1] = 0;
  *(a1 + v2[11]) = 2;
  *(a1 + v2[12]) = 2;
  *(a1 + v2[13]) = 2;
  return result;
}

uint64_t sub_1001A79B0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

void (*sub_1001A7A7C(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 16);
  if (*(v6 + 20))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1001A7B28;
}

uint64_t sub_1001A7BAC()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  swift_beginAccess();
  if (*(v1 + 21) == 18)
  {
    return 0;
  }

  else
  {
    return *(v1 + 21);
  }
}

uint64_t sub_1001A7C00(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v7 = swift_allocObject();
    v8 = v6;
    v6 = v7;
    sub_100204D7C(v8);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v6 + 21) = a1;
  return result;
}

void (*sub_1001A7C98(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 21);
  if (v7 == 18)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return sub_1001A7D40;
}

void sub_1001A7D40(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 80);
    v9 = *(v2 + 72);
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v7;
    v7 = v10;
    sub_100204D7C(v11);
    *(v9 + v8) = v10;
  }

  swift_beginAccess();
  *(v7 + 21) = v3;

  free(v2);
}

BOOL sub_1001A7E08()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  swift_beginAccess();
  return *(v1 + 21) != 18;
}

uint64_t sub_1001A7E5C()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v5 = swift_allocObject();
    v6 = v4;
    v4 = v5;
    sub_100204D7C(v6);
    *(v1 + v2) = v5;
  }

  result = swift_beginAccess();
  *(v4 + 21) = 18;
  return result;
}

uint64_t sub_1001A7EEC()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  swift_beginAccess();
  if (*(v1 + 22) == 33)
  {
    return 0;
  }

  else
  {
    return *(v1 + 22);
  }
}

uint64_t sub_1001A7F40(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v7 = swift_allocObject();
    v8 = v6;
    v6 = v7;
    sub_100204D7C(v8);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v6 + 22) = a1;
  return result;
}

void (*sub_1001A7FD8(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 22);
  if (v7 == 33)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return sub_1001A8080;
}

void sub_1001A8080(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 80);
    v9 = *(v2 + 72);
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v7;
    v7 = v10;
    sub_100204D7C(v11);
    *(v9 + v8) = v10;
  }

  swift_beginAccess();
  *(v7 + 22) = v3;

  free(v2);
}

BOOL sub_1001A8148()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  swift_beginAccess();
  return *(v1 + 22) != 33;
}

uint64_t sub_1001A819C()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v5 = swift_allocObject();
    v6 = v4;
    v4 = v5;
    sub_100204D7C(v6);
    *(v1 + v2) = v5;
  }

  result = swift_beginAccess();
  *(v4 + 22) = 33;
  return result;
}

uint64_t sub_1001A822C()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  swift_beginAccess();
  if (*(v1 + 23) == 24)
  {
    return 0;
  }

  else
  {
    return *(v1 + 23);
  }
}

uint64_t sub_1001A8280(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v7 = swift_allocObject();
    v8 = v6;
    v6 = v7;
    sub_100204D7C(v8);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v6 + 23) = a1;
  return result;
}

void (*sub_1001A8318(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 23);
  if (v7 == 24)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return sub_1001A83C0;
}

void sub_1001A83C0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 80);
    v9 = *(v2 + 72);
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v7;
    v7 = v10;
    sub_100204D7C(v11);
    *(v9 + v8) = v10;
  }

  swift_beginAccess();
  *(v7 + 23) = v3;

  free(v2);
}

BOOL sub_1001A8488()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  swift_beginAccess();
  return *(v1 + 23) != 24;
}

uint64_t sub_1001A84DC()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v5 = swift_allocObject();
    v6 = v4;
    v4 = v5;
    sub_100204D7C(v6);
    *(v1 + v2) = v5;
  }

  result = swift_beginAccess();
  *(v4 + 23) = 24;
  return result;
}

double sub_1001A856C()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  swift_beginAccess();
  result = *(v1 + 24);
  if (*(v1 + 32))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1001A85C8(double a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v7 = swift_allocObject();
    v8 = v6;
    v6 = v7;
    sub_100204D7C(v8);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v6 + 24) = a1;
  *(v6 + 32) = 0;
  return result;
}

void (*sub_1001A8664(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 24);
  if (*(v6 + 32))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1001A8714;
}

void sub_1001A8714(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 88);
    v9 = *(v2 + 80);
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v7;
    v7 = v10;
    sub_100204D7C(v11);
    *(v9 + v8) = v10;
  }

  swift_beginAccess();
  *(v7 + 24) = v3;
  *(v7 + 32) = 0;

  free(v2);
}

BOOL sub_1001A87E0()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  swift_beginAccess();
  return (*(v1 + 32) & 1) == 0;
}

uint64_t sub_1001A8834()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v5 = swift_allocObject();
    v6 = v4;
    v4 = v5;
    sub_100204D7C(v6);
    *(v1 + v2) = v5;
  }

  result = swift_beginAccess();
  *(v4 + 24) = 0;
  *(v4 + 32) = 1;
  return result;
}

double sub_1001A88C8()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  swift_beginAccess();
  result = *(v1 + 40);
  if (*(v1 + 48))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1001A8924(double a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v7 = swift_allocObject();
    v8 = v6;
    v6 = v7;
    sub_100204D7C(v8);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v6 + 40) = a1;
  *(v6 + 48) = 0;
  return result;
}

void (*sub_1001A89C0(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 40);
  if (*(v6 + 48))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1001A8A70;
}

void sub_1001A8A70(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 88);
    v9 = *(v2 + 80);
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v7;
    v7 = v10;
    sub_100204D7C(v11);
    *(v9 + v8) = v10;
  }

  swift_beginAccess();
  *(v7 + 40) = v3;
  *(v7 + 48) = 0;

  free(v2);
}

BOOL sub_1001A8B3C()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  swift_beginAccess();
  return (*(v1 + 48) & 1) == 0;
}

uint64_t sub_1001A8B90()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v5 = swift_allocObject();
    v6 = v4;
    v4 = v5;
    sub_100204D7C(v6);
    *(v1 + v2) = v5;
  }

  result = swift_beginAccess();
  *(v4 + 40) = 0;
  *(v4 + 48) = 1;
  return result;
}

double sub_1001A8C24()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  swift_beginAccess();
  result = *(v1 + 56);
  if (*(v1 + 64))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1001A8C80(double a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v7 = swift_allocObject();
    v8 = v6;
    v6 = v7;
    sub_100204D7C(v8);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v6 + 56) = a1;
  *(v6 + 64) = 0;
  return result;
}

void (*sub_1001A8D1C(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 56);
  if (*(v6 + 64))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1001A8DCC;
}

void sub_1001A8DCC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 88);
    v9 = *(v2 + 80);
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v7;
    v7 = v10;
    sub_100204D7C(v11);
    *(v9 + v8) = v10;
  }

  swift_beginAccess();
  *(v7 + 56) = v3;
  *(v7 + 64) = 0;

  free(v2);
}

BOOL sub_1001A8E98()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  swift_beginAccess();
  return (*(v1 + 64) & 1) == 0;
}

uint64_t sub_1001A8EEC()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v5 = swift_allocObject();
    v6 = v4;
    v4 = v5;
    sub_100204D7C(v6);
    *(v1 + v2) = v5;
  }

  result = swift_beginAccess();
  *(v4 + 56) = 0;
  *(v4 + 64) = 1;
  return result;
}

double sub_1001A8F80()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  swift_beginAccess();
  result = *(v1 + 72);
  if (*(v1 + 80))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1001A8FDC(double a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v7 = swift_allocObject();
    v8 = v6;
    v6 = v7;
    sub_100204D7C(v8);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v6 + 72) = a1;
  *(v6 + 80) = 0;
  return result;
}

void (*sub_1001A9078(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 72);
  if (*(v6 + 80))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1001A9128;
}

void sub_1001A9128(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 88);
    v9 = *(v2 + 80);
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v7;
    v7 = v10;
    sub_100204D7C(v11);
    *(v9 + v8) = v10;
  }

  swift_beginAccess();
  *(v7 + 72) = v3;
  *(v7 + 80) = 0;

  free(v2);
}

BOOL sub_1001A91F4()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  swift_beginAccess();
  return (*(v1 + 80) & 1) == 0;
}

uint64_t sub_1001A9248()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v5 = swift_allocObject();
    v6 = v4;
    v4 = v5;
    sub_100204D7C(v6);
    *(v1 + v2) = v5;
  }

  result = swift_beginAccess();
  *(v4 + 72) = 0;
  *(v4 + 80) = 1;
  return result;
}

double sub_1001A92DC()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  swift_beginAccess();
  result = *(v1 + 88);
  if (*(v1 + 96))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1001A9338(double a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v7 = swift_allocObject();
    v8 = v6;
    v6 = v7;
    sub_100204D7C(v8);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v6 + 88) = a1;
  *(v6 + 96) = 0;
  return result;
}

void (*sub_1001A93D4(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 88);
  if (*(v6 + 96))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1001A9484;
}

void sub_1001A9484(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 88);
    v9 = *(v2 + 80);
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v7;
    v7 = v10;
    sub_100204D7C(v11);
    *(v9 + v8) = v10;
  }

  swift_beginAccess();
  *(v7 + 88) = v3;
  *(v7 + 96) = 0;

  free(v2);
}

BOOL sub_1001A9550()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  swift_beginAccess();
  return (*(v1 + 96) & 1) == 0;
}

uint64_t sub_1001A95A4()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v5 = swift_allocObject();
    v6 = v4;
    v4 = v5;
    sub_100204D7C(v6);
    *(v1 + v2) = v5;
  }

  result = swift_beginAccess();
  *(v4 + 88) = 0;
  *(v4 + 96) = 1;
  return result;
}

double sub_1001A9638()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  swift_beginAccess();
  result = *(v1 + 104);
  if (*(v1 + 112))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1001A9694(double a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v7 = swift_allocObject();
    v8 = v6;
    v6 = v7;
    sub_100204D7C(v8);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v6 + 104) = a1;
  *(v6 + 112) = 0;
  return result;
}

void (*sub_1001A9730(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 104);
  if (*(v6 + 112))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1001A97E0;
}

void sub_1001A97E0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 88);
    v9 = *(v2 + 80);
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v7;
    v7 = v10;
    sub_100204D7C(v11);
    *(v9 + v8) = v10;
  }

  swift_beginAccess();
  *(v7 + 104) = v3;
  *(v7 + 112) = 0;

  free(v2);
}

BOOL sub_1001A98AC()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  swift_beginAccess();
  return (*(v1 + 112) & 1) == 0;
}

uint64_t sub_1001A9900()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v5 = swift_allocObject();
    v6 = v4;
    v4 = v5;
    sub_100204D7C(v6);
    *(v1 + v2) = v5;
  }

  result = swift_beginAccess();
  *(v4 + 104) = 0;
  *(v4 + 112) = 1;
  return result;
}

double sub_1001A99AC(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  result = *(v2 + 120);
  if (*(v2 + 128))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1001A9A10(double a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v7 = swift_allocObject();
    v8 = v6;
    v6 = v7;
    sub_100204D7C(v8);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v6 + 120) = a1;
  *(v6 + 128) = 0;
  return result;
}

void (*sub_1001A9AAC(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 120);
  if (*(v6 + 128))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1001A9B5C;
}

void sub_1001A9B5C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 88);
    v9 = *(v2 + 80);
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v7;
    v7 = v10;
    sub_100204D7C(v11);
    *(v9 + v8) = v10;
  }

  swift_beginAccess();
  *(v7 + 120) = v3;
  *(v7 + 128) = 0;

  free(v2);
}

BOOL sub_1001A9C40(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  return (*(v2 + 128) & 1) == 0;
}

uint64_t sub_1001A9C9C()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v5 = swift_allocObject();
    v6 = v4;
    v4 = v5;
    sub_100204D7C(v6);
    *(v1 + v2) = v5;
  }

  result = swift_beginAccess();
  *(v4 + 120) = 0;
  *(v4 + 128) = 1;
  return result;
}

uint64_t sub_1001A9D30()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  swift_beginAccess();
  return *(v1 + 129) & 1;
}

uint64_t sub_1001A9D80(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v7 = swift_allocObject();
    v8 = v6;
    v6 = v7;
    sub_100204D7C(v8);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v6 + 129) = a1 & 1;
  return result;
}

void (*sub_1001A9E1C(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 129) & 1;
  return sub_1001A9EC0;
}

void sub_1001A9EC0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 80);
    v9 = *(v2 + 72);
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v7;
    v7 = v10;
    sub_100204D7C(v11);
    *(v9 + v8) = v10;
  }

  swift_beginAccess();
  *(v7 + 129) = v5;

  free(v2);
}

BOOL sub_1001A9F84()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  swift_beginAccess();
  return *(v1 + 129) != 2;
}

uint64_t sub_1001A9FD8()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v5 = swift_allocObject();
    v6 = v4;
    v4 = v5;
    sub_100204D7C(v6);
    *(v1 + v2) = v5;
  }

  result = swift_beginAccess();
  *(v4 + 129) = 2;
  return result;
}

uint64_t sub_1001AA068()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  swift_beginAccess();
  return *(v1 + 130) & 1;
}

uint64_t sub_1001AA0B8(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v7 = swift_allocObject();
    v8 = v6;
    v6 = v7;
    sub_100204D7C(v8);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v6 + 130) = a1 & 1;
  return result;
}

void (*sub_1001AA154(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 130) & 1;
  return sub_1001AA1F8;
}

void sub_1001AA1F8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 80);
    v9 = *(v2 + 72);
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v7;
    v7 = v10;
    sub_100204D7C(v11);
    *(v9 + v8) = v10;
  }

  swift_beginAccess();
  *(v7 + 130) = v5;

  free(v2);
}

BOOL sub_1001AA2BC()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  swift_beginAccess();
  return *(v1 + 130) != 2;
}

uint64_t sub_1001AA310()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v5 = swift_allocObject();
    v6 = v4;
    v4 = v5;
    sub_100204D7C(v6);
    *(v1 + v2) = v5;
  }

  result = swift_beginAccess();
  *(v4 + 130) = 2;
  return result;
}

uint64_t sub_1001AA3A0()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  swift_beginAccess();
  return *(v1 + 131) & 1;
}

uint64_t sub_1001AA3F0(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v7 = swift_allocObject();
    v8 = v6;
    v6 = v7;
    sub_100204D7C(v8);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v6 + 131) = a1 & 1;
  return result;
}

void (*sub_1001AA48C(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 131) & 1;
  return sub_1001AA530;
}

void sub_1001AA530(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 80);
    v9 = *(v2 + 72);
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v7;
    v7 = v10;
    sub_100204D7C(v11);
    *(v9 + v8) = v10;
  }

  swift_beginAccess();
  *(v7 + 131) = v5;

  free(v2);
}

BOOL sub_1001AA5F4()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  swift_beginAccess();
  return *(v1 + 131) != 2;
}

uint64_t sub_1001AA648()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v5 = swift_allocObject();
    v6 = v4;
    v4 = v5;
    sub_100204D7C(v6);
    *(v1 + v2) = v5;
  }

  result = swift_beginAccess();
  *(v4 + 131) = 2;
  return result;
}

uint64_t sub_1001AA6D8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100423F18, &qword_1003833E8);
  __chkstk_darwin(v3 - 8);
  v5 = &v18 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefLocation;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_100423F18, &qword_1003833E8);
  v8 = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1002463C0(v5, a1, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation);
  }

  UnknownStorage.init()();
  v10 = a1 + v8[5];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a1 + v8[6];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = a1 + v8[7];
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = a1 + v8[8];
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = a1 + v8[9];
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = a1 + v8[10];
  *v15 = 0;
  *(v15 + 4) = 1;
  v16 = a1 + v8[11];
  *v16 = 0;
  *(v16 + 4) = 1;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_100423F18, &qword_1003833E8);
  }

  return result;
}

int *sub_1001AA8C4@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0);
  v3 = a1 + result[5];
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = a1 + result[6];
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = a1 + result[7];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = a1 + result[8];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a1 + result[9];
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = a1 + result[10];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a1 + result[11];
  *v9 = 0;
  *(v9 + 4) = 1;
  return result;
}

uint64_t sub_1001AA964(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100423F18, &qword_1003833E8);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_100204D7C(v11);
    *(v2 + v7) = v10;
  }

  sub_1002463C0(a1, v6, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation);
  v12 = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefLocation;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_100423F18, &qword_1003833E8);
  return swift_endAccess();
}

void (*sub_1001AAAD0(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(sub_100024A2C(&qword_100423F18, &qword_1003833E8) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 80) = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 80) = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 88) = v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0);
  *(v4 + 96) = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  *(v4 + 104) = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 112) = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 112) = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  *(v4 + 120) = v12;
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefLocation;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100423F18, &qword_1003833E8);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = v13 + v8[5];
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = v13 + v8[6];
    *v19 = 0;
    *(v19 + 8) = 1;
    v20 = v13 + v8[7];
    *v20 = 0;
    *(v20 + 8) = 1;
    v21 = v13 + v8[8];
    *v21 = 0;
    *(v21 + 8) = 1;
    v22 = v13 + v8[9];
    *v22 = 0;
    *(v22 + 8) = 1;
    v23 = v13 + v8[10];
    *v23 = 0;
    *(v23 + 4) = 1;
    v24 = v13 + v8[11];
    *v24 = 0;
    *(v24 + 4) = 1;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100423F18, &qword_1003833E8);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation);
  }

  return sub_1001AAD90;
}

void sub_1001AAD90(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100246428(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
      v9 = swift_allocObject();
      sub_100204D7C(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002463C0(v11, v15, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefLocation;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_100423F18, &qword_1003833E8);
    swift_endAccess();
    sub_100246490(v10, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation);
  }

  else
  {
    v17 = *(v2 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v3);
    if ((v18 & 1) == 0)
    {
      v20 = *(v2 + 128);
      v21 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
      v22 = swift_allocObject();
      sub_100204D7C(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002463C0(v10, v15, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefLocation;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_100423F18, &qword_1003833E8);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_1001AAFE0()
{
  v1 = sub_100024A2C(&qword_100423F18, &qword_1003833E8);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefLocation;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_100423F18, &qword_1003833E8);
  v6 = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_100423F18, &qword_1003833E8);
  return v7;
}

uint64_t sub_1001AB100()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100423F18, &qword_1003833E8);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    sub_100204D7C(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefLocation;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v11, &qword_100423F18, &qword_1003833E8);
  return swift_endAccess();
}

uint64_t sub_1001AB248@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100423F20, &qword_1003833F0);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefTime;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_100423F20, &qword_1003833F0);
  v8 = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1002463C0(v5, a1, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime);
  }

  UnknownStorage.init()();
  v10 = a1 + v8[5];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + v8[6];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a1 + v8[7];
  *v12 = 0;
  *(v12 + 8) = 1;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_100423F20, &qword_1003833F0);
  }

  return result;
}

int *sub_1001AB3F4@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime(0);
  v3 = a1 + result[5];
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = a1 + result[6];
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = a1 + result[7];
  *v5 = 0;
  *(v5 + 8) = 1;
  return result;
}

uint64_t sub_1001AB454(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100423F20, &qword_1003833F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_100204D7C(v11);
    *(v2 + v7) = v10;
  }

  sub_1002463C0(a1, v6, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime);
  v12 = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefTime;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_100423F20, &qword_1003833F0);
  return swift_endAccess();
}

void (*sub_1001AB5C0(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(sub_100024A2C(&qword_100423F20, &qword_1003833F0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 80) = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 80) = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 88) = v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime(0);
  *(v4 + 96) = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  *(v4 + 104) = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 112) = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 112) = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  *(v4 + 120) = v12;
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefTime;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100423F20, &qword_1003833F0);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = v13 + v8[5];
    *v18 = 0;
    *(v18 + 4) = 1;
    v19 = v13 + v8[6];
    *v19 = 0;
    *(v19 + 4) = 1;
    v20 = v13 + v8[7];
    *v20 = 0;
    *(v20 + 8) = 1;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100423F20, &qword_1003833F0);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime);
  }

  return sub_1001AB840;
}

void sub_1001AB840(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100246428(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
      v9 = swift_allocObject();
      sub_100204D7C(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002463C0(v11, v15, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefTime;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_100423F20, &qword_1003833F0);
    swift_endAccess();
    sub_100246490(v10, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime);
  }

  else
  {
    v17 = *(v2 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v3);
    if ((v18 & 1) == 0)
    {
      v20 = *(v2 + 128);
      v21 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
      v22 = swift_allocObject();
      sub_100204D7C(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002463C0(v10, v15, type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefTime;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_100423F20, &qword_1003833F0);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_1001ABA90()
{
  v1 = sub_100024A2C(&qword_100423F20, &qword_1003833F0);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefTime;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_100423F20, &qword_1003833F0);
  v6 = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_100423F20, &qword_1003833F0);
  return v7;
}

uint64_t sub_1001ABBB0()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100423F20, &qword_1003833F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_SessionStatus._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    sub_100204D7C(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf34Proto_Gnss_Emergency_SessionStatusP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__nwRefTime;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v11, &qword_100423F20, &qword_1003833F0);
  return swift_endAccess();
}

uint64_t sub_1001ABD6C(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001ABDA4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0) + 20);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1001ABE3C()
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001ABE84(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001ABEBC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1001ABF54()
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001ABF9C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100423F28, &qword_1003833F8);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0);
  sub_10000A0A4(v1 + *(v6 + 20), v5, &qword_100423F28, &qword_1003833F8);
  v7 = type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1002463C0(v5, a1, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);
  }

  UnknownStorage.init()();
  v9 = a1 + *(v7 + 20);
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1 + *(v7 + 24);
  *v10 = 0;
  *(v10 + 4) = 1;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_100423F28, &qword_1003833F8);
  }

  return result;
}

uint64_t sub_1001AC114(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0) + 20);
  sub_1000059A8(v1 + v3, &qword_100423F28, &qword_1003833F8);
  sub_1002463C0(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);
  v4 = type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_1001AC1CC(void *a1))(uint64_t **a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100024A2C(&qword_100423F28, &qword_1003833F8) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0) + 20);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100423F28, &qword_1003833F8);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + *(v8 + 20);
    *v16 = 0;
    *(v16 + 4) = 1;
    v17 = v13 + *(v8 + 24);
    *v17 = 0;
    *(v17 + 4) = 1;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100423F28, &qword_1003833F8);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);
  }

  return sub_1001AC3FC;
}

BOOL sub_1001AC474(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = sub_100024A2C(a1, a2);
  __chkstk_darwin(v9 - 8);
  v11 = &v16 - v10;
  v12 = a3(0);
  sub_10000A0A4(v4 + *(v12 + 20), v11, a1, a2);
  v13 = a4(0);
  v14 = (*(*(v13 - 8) + 48))(v11, 1, v13) != 1;
  sub_1000059A8(v11, a1, a2);
  return v14;
}

uint64_t sub_1001AC5AC(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 20);
  sub_1000059A8(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t sub_1001AC670(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001AC6A8(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1001AC740()
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001AC788(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001AC7C0(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0) + 28);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1001AC858()
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001AC8A0(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001AC8D8(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0) + 32);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1001AC970()
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0);
  v2 = v0 + *(result + 32);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001AC9A0()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0) + 36));
  if (v1 == 5)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1001AC9CC(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t (*sub_1001AC9FC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0) + 36);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 5)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_1001ACA88()
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0);
  *(v0 + *(result + 36)) = 5;
  return result;
}

uint64_t sub_1001ACAB0@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0);
  v3 = v2[5];
  v4 = type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0);
  result = (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v6 = a1 + v2[6];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1 + v2[7];
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a1 + v2[8];
  *v8 = 0;
  *(v8 + 4) = 1;
  *(a1 + v2[9]) = 5;
  return result;
}

uint64_t sub_1001ACB9C(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001ACBD4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_Plmn(0) + 20);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1001ACC6C()
{
  result = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001ACCB4(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001ACCEC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_Plmn(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1001ACD84()
{
  result = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001ACDCC(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001ACE04(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_Plmn(0) + 28);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1001ACE9C()
{
  result = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001ACEE4()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0) + 20));
  if (v1 == 6)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1001ACF10(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*sub_1001ACF40(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0) + 20);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 6)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_1001ACFCC()
{
  result = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  *(v0 + *(result + 20)) = 6;
  return result;
}

uint64_t sub_1001ACFF4()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0) + 24));
  if (v1 == 7)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1001AD020(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*sub_1001AD050(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0) + 24);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 7)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_1001AD0DC()
{
  result = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  *(v0 + *(result + 24)) = 7;
  return result;
}

uint64_t sub_1001AD11C(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001AD154(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0) + 28);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1001AD1EC()
{
  result = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

int *sub_1001AD21C@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  *(a1 + result[5]) = 6;
  *(a1 + result[6]) = 7;
  v3 = a1 + result[7];
  *v3 = 0;
  *(v3 + 4) = 1;
  return result;
}

uint64_t sub_1001AD28C(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  if (*(v2 + 20))
  {
    return 0;
  }

  else
  {
    return *(v2 + 16);
  }
}

void (*sub_1001AD330(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 16);
  if (*(v6 + 20))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1001AD3DC;
}

BOOL sub_1001AD424(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  return (*(v2 + 20) & 1) == 0;
}

uint64_t sub_1001AD4C4()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20));
  swift_beginAccess();
  if (*(v1 + 21) == 5)
  {
    return 0;
  }

  else
  {
    return *(v1 + 21);
  }
}

uint64_t sub_1001AD518(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_PositionRequest._StorageClass();
    v7 = swift_allocObject();
    sub_100246654(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 21) = a1;
  return result;
}

void (*sub_1001AD5B4(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 21);
  if (v7 == 5)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return sub_1001AD65C;
}

void sub_1001AD65C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 80);
    v9 = *(v2 + 72);
    type metadata accessor for Proto_Gnss_Emergency_PositionRequest._StorageClass();
    v10 = swift_allocObject();
    sub_100246654(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 21) = v3;

  free(v2);
}

BOOL sub_1001AD728()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20));
  swift_beginAccess();
  return *(v1 + 21) != 5;
}

uint64_t sub_1001AD77C()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_PositionRequest._StorageClass();
    v5 = swift_allocObject();
    sub_100246654(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  result = swift_beginAccess();
  *(v4 + 21) = 5;
  return result;
}

void (*sub_1001AD86C(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 24);
  if (*(v6 + 28))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1001AD918;
}

void (*sub_1001ADA00(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 32);
  if (*(v6 + 36))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1001ADAAC;
}

void (*sub_1001ADB94(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 40);
  if (*(v6 + 44))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1001ADC40;
}

void (*sub_1001ADD28(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 48);
  if (*(v6 + 52))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1001ADDD4;
}

void (*sub_1001ADEBC(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 56);
  if (*(v6 + 60))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1001ADF68;
}

void (*sub_1001AE050(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 64);
  if (*(v6 + 68))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1001AE0FC;
}

void (*sub_1001AE1E4(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 72);
  if (*(v6 + 76))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1001AE290;
}

void (*sub_1001AE378(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 80);
  if (*(v6 + 84))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1001AE424;
}

void (*sub_1001AE50C(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 88);
  if (*(v6 + 92))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1001AE5B8;
}

void (*sub_1001AE6A0(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 96);
  if (*(v6 + 100))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1001AE74C;
}

void (*sub_1001AE834(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 104);
  if (*(v6 + 108))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1001AE8E0;
}

void (*sub_1001AE9C8(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 112);
  if (*(v6 + 116))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1001AEA74;
}

uint64_t sub_1001AEB00()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20));
  swift_beginAccess();
  if (*(v1 + 117) == 7)
  {
    return 0;
  }

  else
  {
    return *(v1 + 117);
  }
}

uint64_t sub_1001AEB54(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_PositionRequest._StorageClass();
    v7 = swift_allocObject();
    sub_100246654(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 117) = a1;
  return result;
}

void (*sub_1001AEBF0(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 117);
  if (v7 == 7)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return sub_1001AEC98;
}

void sub_1001AEC98(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 80);
    v9 = *(v2 + 72);
    type metadata accessor for Proto_Gnss_Emergency_PositionRequest._StorageClass();
    v10 = swift_allocObject();
    sub_100246654(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 117) = v3;

  free(v2);
}

BOOL sub_1001AED64()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20));
  swift_beginAccess();
  return *(v1 + 117) != 7;
}

uint64_t sub_1001AEDB8()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_PositionRequest._StorageClass();
    v5 = swift_allocObject();
    sub_100246654(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  result = swift_beginAccess();
  *(v4 + 117) = 7;
  return result;
}

void (*sub_1001AEEA8(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 120);
  if (*(v6 + 124))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1001AEF54;
}

void (*sub_1001AF03C(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 128);
  if (*(v6 + 132))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1001AF0E8;
}

uint64_t sub_1001AF1D0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100423F30, &qword_100383400);
  __chkstk_darwin(v3 - 8);
  v5 = &v15 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0);
  sub_10000A0A4(v1 + *(v6 + 20), v5, &qword_100423F30, &qword_100383400);
  v7 = type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1002463C0(v5, a1, type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime);
  }

  UnknownStorage.init()();
  v9 = v7[5];
  v10 = type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0);
  (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  v11 = a1 + v7[6];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a1 + v7[7];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1 + v7[8];
  *v13 = 0;
  *(v13 + 4) = 1;
  *(a1 + v7[9]) = 5;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_100423F30, &qword_100383400);
  }

  return result;
}

uint64_t sub_1001AF3B0(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0) + 20);
  sub_1000059A8(v1 + v3, &qword_100423F30, &qword_100383400);
  sub_1002463C0(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime);
  v4 = type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_1001AF468(void *a1))(uint64_t **a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100024A2C(&qword_100423F30, &qword_100383400) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0);
  v4[2] = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0) + 20);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100423F30, &qword_100383400);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v8[5];
    v17 = type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0);
    (*(*(v17 - 8) + 56))(v13 + v16, 1, 1, v17);
    v18 = v13 + v8[6];
    *v18 = 0;
    *(v18 + 4) = 1;
    v19 = v13 + v8[7];
    *v19 = 0;
    *(v19 + 4) = 1;
    v20 = v13 + v8[8];
    *v20 = 0;
    *(v20 + 4) = 1;
    *(v13 + v8[9]) = 5;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100423F30, &qword_100383400);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime);
  }

  return sub_1001AF6F8;
}

uint64_t sub_1001AF7AC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100423F28, &qword_1003833F8);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0);
  sub_10000A0A4(v1 + *(v6 + 24), v5, &qword_100423F28, &qword_1003833F8);
  v7 = type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1002463C0(v5, a1, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);
  }

  UnknownStorage.init()();
  v9 = a1 + *(v7 + 20);
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1 + *(v7 + 24);
  *v10 = 0;
  *(v10 + 4) = 1;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_100423F28, &qword_1003833F8);
  }

  return result;
}

uint64_t sub_1001AF924(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0) + 24);
  sub_1000059A8(v1 + v3, &qword_100423F28, &qword_1003833F8);
  sub_1002463C0(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);
  v4 = type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*sub_1001AF9DC(void *a1))(uint64_t, uint64_t)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100024A2C(&qword_100423F28, &qword_1003833F8) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0) + 24);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100423F28, &qword_1003833F8);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + *(v8 + 20);
    *v16 = 0;
    *(v16 + 4) = 1;
    v17 = v13 + *(v8 + 24);
    *v17 = 0;
    *(v17 + 4) = 1;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100423F28, &qword_1003833F8);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);
  }

  return sub_100268FEC;
}

uint64_t sub_1001AFCF4(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001AFD2C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased(0) + 20);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1001AFDC4()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001AFE0C(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001AFE44(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1001AFEDC()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001AFF24@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  result = a1(0);
  v5 = a2 + *(result + 20);
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = a2 + *(result + 24);
  *v6 = 0;
  *(v6 + 4) = 1;
  return result;
}

uint64_t sub_1001AFF94(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001AFFCC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted(0) + 20);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1001B0064()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001B00AC(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001B00E4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1001B017C()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001B01C4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100423F38, &qword_100383408);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0);
  sub_10000A0A4(v1 + *(v6 + 20), v5, &qword_100423F38, &qword_100383408);
  v7 = type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1002463C0(v5, a1, type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured);
  }

  UnknownStorage.init()();
  v9 = *(v7 + 20);
  v10 = type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0);
  (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  v11 = *(v7 + 24);
  v12 = type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_100423F38, &qword_100383408);
  }

  return result;
}

uint64_t sub_1001B03A0(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0) + 20);
  sub_1000059A8(v1 + v3, &qword_100423F38, &qword_100383408);
  sub_1002463C0(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured);
  v4 = type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_1001B0458(void *a1))(uint64_t **a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100024A2C(&qword_100423F38, &qword_100383408) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0) + 20);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100423F38, &qword_100383408);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = *(v8 + 20);
    v17 = type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0);
    (*(*(v17 - 8) + 56))(v13 + v16, 1, 1, v17);
    v18 = *(v8 + 24);
    v19 = type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0);
    (*(*(v19 - 8) + 56))(v13 + v18, 1, 1, v19);
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100423F38, &qword_100383408);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured);
  }

  return sub_1001B06EC;
}

uint64_t sub_1001B07A0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100423F40, &qword_100383410);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0);
  sub_10000A0A4(v1 + *(v6 + 24), v5, &qword_100423F40, &qword_100383410);
  v7 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1002463C0(v5, a1, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased);
  }

  UnknownStorage.init()();
  v9 = a1 + *(v7 + 20);
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1 + *(v7 + 24);
  *v10 = 0;
  *(v10 + 4) = 1;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_100423F40, &qword_100383410);
  }

  return result;
}

uint64_t sub_1001B0918(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0) + 24);
  sub_1000059A8(v1 + v3, &qword_100423F40, &qword_100383410);
  sub_1002463C0(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased);
  v4 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_1001B09D0(void *a1))(uint64_t **a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100024A2C(&qword_100423F40, &qword_100383410) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0) + 24);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100423F40, &qword_100383410);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + *(v8 + 20);
    *v16 = 0;
    *(v16 + 4) = 1;
    v17 = v13 + *(v8 + 24);
    *v17 = 0;
    *(v17 + 4) = 1;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100423F40, &qword_100383410);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased);
  }

  return sub_1001B0C00;
}

BOOL sub_1001B0C78(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = sub_100024A2C(a1, a2);
  __chkstk_darwin(v9 - 8);
  v11 = &v16 - v10;
  v12 = a3(0);
  sub_10000A0A4(v4 + *(v12 + 24), v11, a1, a2);
  v13 = a4(0);
  v14 = (*(*(v13 - 8) + 48))(v11, 1, v13) != 1;
  sub_1000059A8(v11, a1, a2);
  return v14;
}

uint64_t sub_1001B0DB0(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 24);
  sub_1000059A8(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t sub_1001B0E5C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100423F48, &qword_100383418);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0);
  sub_10000A0A4(v1 + *(v6 + 28), v5, &qword_100423F48, &qword_100383418);
  v7 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1002463C0(v5, a1, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted);
  }

  UnknownStorage.init()();
  v9 = a1 + *(v7 + 20);
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1 + *(v7 + 24);
  *v10 = 0;
  *(v10 + 4) = 1;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_100423F48, &qword_100383418);
  }

  return result;
}

uint64_t sub_1001B0FD4(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0) + 28);
  sub_1000059A8(v1 + v3, &qword_100423F48, &qword_100383418);
  sub_1002463C0(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted);
  v4 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_1001B108C(void *a1))(uint64_t **a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100024A2C(&qword_100423F48, &qword_100383418) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0) + 28);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100423F48, &qword_100383418);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + *(v8 + 20);
    *v16 = 0;
    *(v16 + 4) = 1;
    v17 = v13 + *(v8 + 24);
    *v17 = 0;
    *(v17 + 4) = 1;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100423F48, &qword_100383418);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted);
  }

  return sub_1001B12BC;
}

uint64_t sub_1001B1370@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0);
  v3 = v2[5];
  v4 = type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = v2[6];
  v6 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased(0);
  (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  v7 = v2[7];
  v8 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1 + v7, 1, 1, v8);
}

uint64_t sub_1001B14C8()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams(0) + 20));
  if (v1 == 6)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1001B14F4(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*sub_1001B1524(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams(0) + 20);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 6)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_1001B15B0()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams(0);
  *(v0 + *(result + 20)) = 6;
  return result;
}

uint64_t sub_1001B15D8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100423F50, &qword_100383420);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams(0);
  sub_10000A0A4(v1 + *(v6 + 24), v5, &qword_100423F50, &qword_100383420);
  v7 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1002463C0(v5, a1, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured);
  }

  UnknownStorage.init()();
  v9 = v7[5];
  v10 = type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0);
  (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  v11 = v7[6];
  v12 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  v13 = v7[7];
  v14 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted(0);
  (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_100423F50, &qword_100383420);
  }

  return result;
}

uint64_t sub_1001B17F8(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams(0) + 24);
  sub_1000059A8(v1 + v3, &qword_100423F50, &qword_100383420);
  sub_1002463C0(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured);
  v4 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_1001B18B0(void *a1))(uint64_t **a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100024A2C(&qword_100423F50, &qword_100383420) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0);
  v4[2] = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams(0) + 24);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100423F50, &qword_100383420);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v8[5];
    v17 = type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0);
    (*(*(v17 - 8) + 56))(v13 + v16, 1, 1, v17);
    v18 = v8[6];
    v19 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased(0);
    (*(*(v19 - 8) + 56))(v13 + v18, 1, 1, v19);
    v20 = v8[7];
    v21 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted(0);
    (*(*(v21 - 8) + 56))(v13 + v20, 1, 1, v21);
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100423F50, &qword_100383420);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured);
  }

  return sub_1001B1B88;
}

uint64_t sub_1001B1C9C(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001B1CD4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0) + 20);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1001B1D6C()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001B1DB4(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001B1DEC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1001B1E84()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001B1ECC(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001B1F04(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0) + 28);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1001B1F9C()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

int *sub_1001B1FE4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  result = a1(0);
  v5 = a2 + result[5];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = a2 + result[6];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a2 + result[7];
  *v7 = 0;
  *(v7 + 4) = 1;
  return result;
}

uint64_t sub_1001B2064(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001B209C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0) + 20);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1001B2134()
{
  result = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001B217C(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001B21B4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1001B224C()
{
  result = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001B2294(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001B22CC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0) + 28);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1001B2364()
{
  result = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001B2394()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0) + 32));
  if (v1 == 4)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1001B23C0(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*sub_1001B23F0(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0) + 32);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 4)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_1001B247C()
{
  result = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  *(v0 + *(result + 32)) = 4;
  return result;
}

uint64_t sub_1001B24BC(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001B24F4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0) + 36);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1001B258C()
{
  result = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  v2 = v0 + *(result + 36);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001B25BC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100423F58, &qword_100383428);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  sub_10000A0A4(v1 + *(v6 + 40), v5, &qword_100423F58, &qword_100383428);
  v7 = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1002463C0(v5, a1, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
  }

  UnknownStorage.init()();
  v9 = a1 + v7[5];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1 + v7[6];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + v7[7];
  *v11 = 0;
  *(v11 + 4) = 1;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_100423F58, &qword_100383428);
  }

  return result;
}

uint64_t sub_1001B2744(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0) + 40);
  sub_1000059A8(v1 + v3, &qword_100423F58, &qword_100383428);
  sub_1002463C0(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
  v4 = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_1001B27FC(void *a1))(uint64_t **a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100024A2C(&qword_100423F58, &qword_100383428) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
  v4[2] = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0) + 40);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100423F58, &qword_100383428);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + v8[5];
    *v16 = 0;
    *(v16 + 4) = 1;
    v17 = v13 + v8[6];
    *v17 = 0;
    *(v17 + 4) = 1;
    v18 = v13 + v8[7];
    *v18 = 0;
    *(v18 + 4) = 1;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100423F58, &qword_100383428);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
  }

  return sub_1001B2A3C;
}

uint64_t sub_1001B2AF0@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  v3 = a1 + v2[5];
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = a1 + v2[6];
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = a1 + v2[7];
  *v5 = 0;
  *(v5 + 4) = 1;
  *(a1 + v2[8]) = 4;
  v6 = a1 + v2[9];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = v2[10];
  v8 = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1 + v7, 1, 1, v8);
}

uint64_t sub_1001B2BEC(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001B2C24(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_CellInfo(0) + 20);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1001B2CBC()
{
  result = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001B2D04(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001B2D3C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_CellInfo(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1001B2DD4()
{
  result = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001B2E1C(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001B2E54(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_CellInfo(0) + 28);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1001B2EEC()
{
  result = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001B2F1C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100423F60, &qword_100383430);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  sub_10000A0A4(v1 + *(v6 + 32), v5, &qword_100423F60, &qword_100383430);
  v7 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1002463C0(v5, a1, type metadata accessor for Proto_Gnss_Emergency_Plmn);
  }

  UnknownStorage.init()();
  v9 = a1 + v7[5];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1 + v7[6];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + v7[7];
  *v11 = 0;
  *(v11 + 4) = 1;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_100423F60, &qword_100383430);
  }

  return result;
}

uint64_t sub_1001B30A4(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_CellInfo(0) + 32);
  sub_1000059A8(v1 + v3, &qword_100423F60, &qword_100383430);
  sub_1002463C0(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_Plmn);
  v4 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_1001B315C(void *a1))(uint64_t **a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100024A2C(&qword_100423F60, &qword_100383430) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
  v4[2] = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_CellInfo(0) + 32);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100423F60, &qword_100383430);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + v8[5];
    *v16 = 0;
    *(v16 + 4) = 1;
    v17 = v13 + v8[6];
    *v17 = 0;
    *(v17 + 4) = 1;
    v18 = v13 + v8[7];
    *v18 = 0;
    *(v18 + 4) = 1;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100423F60, &qword_100383430);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_Plmn);
  }

  return sub_1001B339C;
}

uint64_t sub_1001B3450@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v3 = a1 + v2[5];
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = a1 + v2[6];
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = a1 + v2[7];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = v2[8];
  v7 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, 1, 1, v7);
}

uint64_t sub_1001B3518()
{
  v1 = (v0 + *(type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0) + 20));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t sub_1001B354C(uint64_t a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1001B3584(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0) + 20);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_1001B361C()
{
  result = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1001B3664(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001B369C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1001B3734()
{
  result = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001B377C(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001B37B4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0) + 28);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1001B384C()
{
  result = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001B387C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100423F68, &qword_100383438);
  __chkstk_darwin(v3 - 8);
  v5 = &v15 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
  sub_10000A0A4(v1 + *(v6 + 32), v5, &qword_100423F68, &qword_100383438);
  v7 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1002463C0(v5, a1, type metadata accessor for Proto_Gnss_Emergency_CellInfo);
  }

  UnknownStorage.init()();
  v9 = a1 + v7[5];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1 + v7[6];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + v7[7];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = v7[8];
  v13 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
  (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_100423F68, &qword_100383438);
  }

  return result;
}

uint64_t sub_1001B3A48(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0) + 32);
  sub_1000059A8(v1 + v3, &qword_100423F68, &qword_100383438);
  sub_1002463C0(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_CellInfo);
  v4 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*sub_1001B3B00(void *a1))(uint64_t a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100024A2C(&qword_100423F68, &qword_100383438) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v4[2] = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0) + 32);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100423F68, &qword_100383438);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + v8[5];
    *v16 = 0;
    *(v16 + 4) = 1;
    v17 = v13 + v8[6];
    *v17 = 0;
    *(v17 + 4) = 1;
    v18 = v13 + v8[7];
    *v18 = 0;
    *(v18 + 4) = 1;
    v19 = v8[8];
    v20 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
    (*(*(v20 - 8) + 56))(v13 + v19, 1, 1, v20);
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100423F68, &qword_100383438);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_CellInfo);
  }

  return sub_100268FF0;
}

BOOL sub_1001B3DC0(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = sub_100024A2C(a1, a2);
  __chkstk_darwin(v9 - 8);
  v11 = &v16 - v10;
  v12 = a3(0);
  sub_10000A0A4(v4 + *(v12 + 32), v11, a1, a2);
  v13 = a4(0);
  v14 = (*(*(v13 - 8) + 48))(v11, 1, v13) != 1;
  sub_1000059A8(v11, a1, a2);
  return v14;
}

uint64_t sub_1001B3EF8(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 32);
  sub_1000059A8(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t sub_1001B3FA4@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
  v3 = a1 + v2[5];
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = a1 + v2[6];
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = a1 + v2[7];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = v2[8];
  v7 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, 1, 1, v7);
}

uint64_t sub_1001B406C(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001B40A4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0) + 20);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1001B413C()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001B4184(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001B41BC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1001B4254()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001B4284@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100423F68, &qword_100383438);
  __chkstk_darwin(v3 - 8);
  v5 = &v15 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0);
  sub_10000A0A4(v1 + *(v6 + 28), v5, &qword_100423F68, &qword_100383438);
  v7 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1002463C0(v5, a1, type metadata accessor for Proto_Gnss_Emergency_CellInfo);
  }

  UnknownStorage.init()();
  v9 = a1 + v7[5];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1 + v7[6];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + v7[7];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = v7[8];
  v13 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
  (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_100423F68, &qword_100383438);
  }

  return result;
}

uint64_t sub_1001B4450(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0) + 28);
  sub_1000059A8(v1 + v3, &qword_100423F68, &qword_100383438);
  sub_1002463C0(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_CellInfo);
  v4 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_1001B4508(void *a1))(uint64_t **a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100024A2C(&qword_100423F68, &qword_100383438) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v4[2] = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0) + 28);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100423F68, &qword_100383438);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + v8[5];
    *v16 = 0;
    *(v16 + 4) = 1;
    v17 = v13 + v8[6];
    *v17 = 0;
    *(v17 + 4) = 1;
    v18 = v13 + v8[7];
    *v18 = 0;
    *(v18 + 4) = 1;
    v19 = v8[8];
    v20 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
    (*(*(v20 - 8) + 56))(v13 + v19, 1, 1, v20);
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100423F68, &qword_100383438);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_CellInfo);
  }

  return sub_1001B478C;
}

BOOL sub_1001B4804(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = sub_100024A2C(a1, a2);
  __chkstk_darwin(v9 - 8);
  v11 = &v16 - v10;
  v12 = a3(0);
  sub_10000A0A4(v4 + *(v12 + 28), v11, a1, a2);
  v13 = a4(0);
  v14 = (*(*(v13 - 8) + 48))(v11, 1, v13) != 1;
  sub_1000059A8(v11, a1, a2);
  return v14;
}

uint64_t sub_1001B493C(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 28);
  sub_1000059A8(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t sub_1001B49E8@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0);
  v3 = a1 + v2[5];
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = a1 + v2[6];
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = v2[7];
  v6 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1 + v5, 1, 1, v6);
}

uint64_t sub_1001B4AB8(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001B4AF0(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 20);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1001B4B88()
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001B4BD0(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001B4C08(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1001B4CA0()
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001B4CE8(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001B4D20(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 28);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1001B4DB8()
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001B4E00(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001B4E38(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 32);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1001B4ED0()
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v2 = v0 + *(result + 32);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001B4F00@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100423F60, &qword_100383430);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  sub_10000A0A4(v1 + *(v6 + 36), v5, &qword_100423F60, &qword_100383430);
  v7 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1002463C0(v5, a1, type metadata accessor for Proto_Gnss_Emergency_Plmn);
  }

  UnknownStorage.init()();
  v9 = a1 + v7[5];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1 + v7[6];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + v7[7];
  *v11 = 0;
  *(v11 + 4) = 1;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_100423F60, &qword_100383430);
  }

  return result;
}

uint64_t sub_1001B5088(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 36);
  sub_1000059A8(v1 + v3, &qword_100423F60, &qword_100383430);
  sub_1002463C0(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_Plmn);
  v4 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*sub_1001B5140(void *a1))(uint64_t, uint64_t)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100024A2C(&qword_100423F60, &qword_100383430) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
  v4[2] = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 36);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100423F60, &qword_100383430);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + v8[5];
    *v16 = 0;
    *(v16 + 4) = 1;
    v17 = v13 + v8[6];
    *v17 = 0;
    *(v17 + 4) = 1;
    v18 = v13 + v8[7];
    *v18 = 0;
    *(v18 + 4) = 1;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100423F60, &qword_100383430);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_Plmn);
  }

  return sub_100268FF4;
}

BOOL sub_1001B53BC(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = sub_100024A2C(a1, a2);
  __chkstk_darwin(v9 - 8);
  v11 = &v16 - v10;
  v12 = a3(0);
  sub_10000A0A4(v4 + *(v12 + 36), v11, a1, a2);
  v13 = a4(0);
  v14 = (*(*(v13 - 8) + 48))(v11, 1, v13) != 1;
  sub_1000059A8(v11, a1, a2);
  return v14;
}

uint64_t sub_1001B54F4(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 36);
  sub_1000059A8(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t sub_1001B55B8(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001B55F0(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 40);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1001B5688()
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v2 = v0 + *(result + 40);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001B56D0(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 44));
  if (v2[4])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t sub_1001B570C(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v4 = v1 + *(result + 44);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001B5744(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 44);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1001B57DC()
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v2 = v0 + *(result + 44);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001B5824(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v4 = v1 + *(result + 48);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001B585C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 48);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1001B58F4()
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v2 = v0 + *(result + 48);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001B593C(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 52));
  if (v2[4])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t sub_1001B5978(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v4 = v1 + *(result + 52);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001B59B0(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 52);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1001B5A48()
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v2 = v0 + *(result + 52);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001B5A90(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 56));
  if (v2[4])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t sub_1001B5ACC(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v4 = v1 + *(result + 56);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001B5B04(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 56);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1001B5B9C()
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v2 = v0 + *(result + 56);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001B5BE4(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v4 = v1 + *(result + 60);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001B5C1C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0) + 60);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1001B5CB4()
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v2 = v0 + *(result + 60);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001B5CE4@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v3 = a1 + v2[5];
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = a1 + v2[6];
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = a1 + v2[7];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = a1 + v2[8];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = v2[9];
  v8 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
  result = (*(*(v8 - 8) + 56))(a1 + v7, 1, 1, v8);
  v10 = a1 + v2[10];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + v2[11];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a1 + v2[12];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1 + v2[13];
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = a1 + v2[14];
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = a1 + v2[15];
  *v15 = 0;
  *(v15 + 4) = 1;
  return result;
}

uint64_t sub_1001B5E04@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100423F70, &qword_100383440);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__utranTime;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_100423F70, &qword_100383440);
  v8 = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1002463C0(v5, a1, type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured);
  }

  UnknownStorage.init()();
  v10 = a1 + v8[5];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a1 + v8[6];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a1 + v8[7];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = v8[8];
  v14 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_100423F70, &qword_100383440);
  }

  return result;
}

uint64_t sub_1001B5FF4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100423F70, &qword_100383440);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_100211270(v11);
    *(v2 + v7) = v10;
  }

  sub_1002463C0(a1, v6, type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured);
  v12 = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__utranTime;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_100423F70, &qword_100383440);
  return swift_endAccess();
}

void (*sub_1001B6160(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(sub_100024A2C(&qword_100423F70, &qword_100383440) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 80) = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 80) = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 88) = v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
  *(v4 + 96) = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  *(v4 + 104) = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 112) = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 112) = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  *(v4 + 120) = v12;
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__utranTime;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100423F70, &qword_100383440);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = v13 + v8[5];
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = v13 + v8[6];
    *v19 = 0;
    *(v19 + 4) = 1;
    v20 = v13 + v8[7];
    *v20 = 0;
    *(v20 + 4) = 1;
    v21 = v8[8];
    v22 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
    (*(*(v22 - 8) + 56))(v13 + v21, 1, 1, v22);
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100423F70, &qword_100383440);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured);
  }

  return sub_1001B6424;
}

void sub_1001B6424(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100246428(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass(0);
      v9 = swift_allocObject();
      sub_100211270(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002463C0(v11, v15, type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__utranTime;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_100423F70, &qword_100383440);
    swift_endAccess();
    sub_100246490(v10, type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured);
  }

  else
  {
    v17 = *(v2 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v3);
    if ((v18 & 1) == 0)
    {
      v20 = *(v2 + 128);
      v21 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass(0);
      v22 = swift_allocObject();
      sub_100211270(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002463C0(v10, v15, type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__utranTime;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_100423F70, &qword_100383440);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_1001B6674()
{
  v1 = sub_100024A2C(&qword_100423F70, &qword_100383440);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__utranTime;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_100423F70, &qword_100383440);
  v6 = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_100423F70, &qword_100383440);
  return v7;
}

uint64_t sub_1001B6794()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100423F70, &qword_100383440);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    sub_100211270(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__utranTime;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v11, &qword_100423F70, &qword_100383440);
  return swift_endAccess();
}

uint64_t sub_1001B68DC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100423F78, &qword_100383448);
  __chkstk_darwin(v3 - 8);
  v5 = &v15 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__geranTime;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_100423F78, &qword_100383448);
  v8 = type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1002463C0(v5, a1, type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured);
  }

  UnknownStorage.init()();
  v10 = a1 + v8[5];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + v8[6];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = v8[7];
  v13 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_100423F78, &qword_100383448);
  }

  return result;
}

uint64_t sub_1001B6ABC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100423F78, &qword_100383448);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_100211270(v11);
    *(v2 + v7) = v10;
  }

  sub_1002463C0(a1, v6, type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured);
  v12 = type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__geranTime;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_100423F78, &qword_100383448);
  return swift_endAccess();
}

void (*sub_1001B6C28(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(sub_100024A2C(&qword_100423F78, &qword_100383448) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 80) = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 80) = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 88) = v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0);
  *(v4 + 96) = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  *(v4 + 104) = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 112) = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 112) = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  *(v4 + 120) = v12;
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__geranTime;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100423F78, &qword_100383448);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = v13 + v8[5];
    *v18 = 0;
    *(v18 + 4) = 1;
    v19 = v13 + v8[6];
    *v19 = 0;
    *(v19 + 4) = 1;
    v20 = v8[7];
    v21 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
    (*(*(v21 - 8) + 56))(v13 + v20, 1, 1, v21);
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100423F78, &qword_100383448);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured);
  }

  return sub_1001B6EDC;
}

void sub_1001B6EDC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100246428(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass(0);
      v9 = swift_allocObject();
      sub_100211270(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002463C0(v11, v15, type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__geranTime;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_100423F78, &qword_100383448);
    swift_endAccess();
    sub_100246490(v10, type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured);
  }

  else
  {
    v17 = *(v2 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v3);
    if ((v18 & 1) == 0)
    {
      v20 = *(v2 + 128);
      v21 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass(0);
      v22 = swift_allocObject();
      sub_100211270(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002463C0(v10, v15, type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__geranTime;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_100423F78, &qword_100383448);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_1001B712C()
{
  v1 = sub_100024A2C(&qword_100423F78, &qword_100383448);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__geranTime;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_100423F78, &qword_100383448);
  v6 = type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_100423F78, &qword_100383448);
  return v7;
}

uint64_t sub_1001B724C()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100423F78, &qword_100383448);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    sub_100211270(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__geranTime;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v11, &qword_100423F78, &qword_100383448);
  return swift_endAccess();
}

uint64_t sub_1001B7394@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100423F80, &qword_100383450);
  __chkstk_darwin(v3 - 8);
  v5 = &v23 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__eutranTime;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_100423F80, &qword_100383450);
  v8 = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1002463C0(v5, a1, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);
  }

  UnknownStorage.init()();
  v10 = a1 + v8[5];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + v8[6];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a1 + v8[7];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1 + v8[8];
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = v8[9];
  v15 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
  (*(*(v15 - 8) + 56))(a1 + v14, 1, 1, v15);
  v16 = a1 + v8[10];
  *v16 = 0;
  *(v16 + 4) = 1;
  v17 = a1 + v8[11];
  *v17 = 0;
  *(v17 + 4) = 1;
  v18 = a1 + v8[12];
  *v18 = 0;
  *(v18 + 4) = 1;
  v19 = a1 + v8[13];
  *v19 = 0;
  *(v19 + 4) = 1;
  v20 = a1 + v8[14];
  *v20 = 0;
  *(v20 + 4) = 1;
  v21 = a1 + v8[15];
  *v21 = 0;
  *(v21 + 4) = 1;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_100423F80, &qword_100383450);
  }

  return result;
}

uint64_t sub_1001B75FC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100423F80, &qword_100383450);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_100211270(v11);
    *(v2 + v7) = v10;
  }

  sub_1002463C0(a1, v6, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);
  v12 = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__eutranTime;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_100423F80, &qword_100383450);
  return swift_endAccess();
}

void (*sub_1001B7768(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(sub_100024A2C(&qword_100423F80, &qword_100383450) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 80) = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 80) = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 88) = v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  *(v4 + 96) = v8;
  v9 = *(v8 - 1);
  v10 = v9;
  *(v4 + 104) = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 112) = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 112) = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  *(v4 + 120) = v12;
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__eutranTime;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100423F80, &qword_100383450);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = v13 + v8[5];
    *v18 = 0;
    *(v18 + 4) = 1;
    v19 = v13 + v8[6];
    *v19 = 0;
    *(v19 + 4) = 1;
    v20 = v13 + v8[7];
    *v20 = 0;
    *(v20 + 4) = 1;
    v21 = v13 + v8[8];
    *v21 = 0;
    *(v21 + 4) = 1;
    v22 = v8[9];
    v23 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
    (*(*(v23 - 8) + 56))(v13 + v22, 1, 1, v23);
    v24 = v13 + v8[10];
    *v24 = 0;
    *(v24 + 4) = 1;
    v25 = v13 + v8[11];
    *v25 = 0;
    *(v25 + 4) = 1;
    v26 = v13 + v8[12];
    *v26 = 0;
    *(v26 + 4) = 1;
    v27 = v13 + v8[13];
    *v27 = 0;
    *(v27 + 4) = 1;
    v28 = v13 + v8[14];
    *v28 = 0;
    *(v28 + 4) = 1;
    v29 = v13 + v8[15];
    *v29 = 0;
    *(v29 + 4) = 1;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100423F80, &qword_100383450);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);
  }

  return sub_1001B7A9C;
}

void sub_1001B7A9C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100246428(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass(0);
      v9 = swift_allocObject();
      sub_100211270(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002463C0(v11, v15, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__eutranTime;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_100423F80, &qword_100383450);
    swift_endAccess();
    sub_100246490(v10, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);
  }

  else
  {
    v17 = *(v2 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v3);
    if ((v18 & 1) == 0)
    {
      v20 = *(v2 + 128);
      v21 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass(0);
      v22 = swift_allocObject();
      sub_100211270(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002463C0(v10, v15, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__eutranTime;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_100423F80, &qword_100383450);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_1001B7CEC()
{
  v1 = sub_100024A2C(&qword_100423F80, &qword_100383450);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__eutranTime;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_100423F80, &qword_100383450);
  v6 = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_100423F80, &qword_100383450);
  return v7;
}

uint64_t sub_1001B7E0C()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100423F80, &qword_100383450);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    sub_100211270(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_GanssTimeMeasuredP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__eutranTime;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v11, &qword_100423F80, &qword_100383450);
  return swift_endAccess();
}

uint64_t sub_1001B7FB0()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams(0) + 20));
  if (v1 == 6)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1001B7FDC(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*sub_1001B800C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams(0) + 20);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 6)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_1001B8098()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams(0);
  *(v0 + *(result + 20)) = 6;
  return result;
}

uint64_t sub_1001B80C0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100423F88, &qword_100383458);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams(0);
  sub_10000A0A4(v1 + *(v6 + 24), v5, &qword_100423F88, &qword_100383458);
  v7 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1002463C0(v5, a1, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured);
  }

  UnknownStorage.init()();
  v9 = *(v7 + 20);
  if (qword_100461230 != -1)
  {
    swift_once();
  }

  *(a1 + v9) = qword_100461238;
  v10 = v8(v5, 1, v7);

  if (v10 != 1)
  {
    return sub_1000059A8(v5, &qword_100423F88, &qword_100383458);
  }

  return result;
}

uint64_t sub_1001B8268(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams(0) + 24);
  sub_1000059A8(v1 + v3, &qword_100423F88, &qword_100383458);
  sub_1002463C0(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured);
  v4 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_1001B8320(void *a1))(uint64_t **a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100024A2C(&qword_100423F88, &qword_100383458) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams(0) + 24);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100423F88, &qword_100383458);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = *(v8 + 20);
    if (qword_100461230 != -1)
    {
      swift_once();
    }

    *(v13 + v16) = qword_100461238;
    v17 = v15(v7, 1, v8);

    if (v17 != 1)
    {
      sub_1000059A8(v7, &qword_100423F88, &qword_100383458);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured);
  }

  return sub_1001B8578;
}

uint64_t sub_1001B865C@<X0>(uint64_t (*a1)(void)@<X0>, char a2@<W1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  UnknownStorage.init()();
  v8 = a1(0);
  *(a4 + *(v8 + 20)) = a2;
  v9 = *(v8 + 24);
  v10 = a3(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(a4 + v9, 1, 1, v10);
}

uint64_t sub_1001B8714()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0) + 20));
  if (v1 == 6)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1001B8740(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*sub_1001B8770(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0) + 20);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 6)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_1001B87FC()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  *(v0 + *(result + 20)) = 6;
  return result;
}

uint64_t sub_1001B883C(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001B8874(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1001B890C()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001B8954(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001B898C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0) + 28);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1001B8A24()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001B8A6C(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001B8AA4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0) + 32);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1001B8B3C()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  v2 = v0 + *(result + 32);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001B8B6C()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0) + 36));
  if (v1 == 4)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1001B8B98(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t (*sub_1001B8BC8(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0) + 36);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 4)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_1001B8C54()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  *(v0 + *(result + 36)) = 4;
  return result;
}

uint64_t sub_1001B8C94(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001B8CCC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0) + 40);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1001B8D64()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  v2 = v0 + *(result + 40);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

int *sub_1001B8D94@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  *(a1 + result[5]) = 6;
  v3 = a1 + result[6];
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = a1 + result[7];
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = a1 + result[8];
  *v5 = 0;
  *(v5 + 4) = 1;
  *(a1 + result[9]) = 4;
  v6 = a1 + result[10];
  *v6 = 0;
  *(v6 + 4) = 1;
  return result;
}

uint64_t sub_1001B8E34(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001B8E6C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0) + 20);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1001B8F04()
{
  result = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001B8F4C(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001B8F84(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1001B901C()
{
  result = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001B9064@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100423F90, &qword_100383460);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle(0);
  sub_10000A0A4(v1 + *(v6 + 20), v5, &qword_100423F90, &qword_100383460);
  v7 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1002463C0(v5, a1, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  }

  UnknownStorage.init()();
  v9 = a1 + *(v7 + 20);
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1 + *(v7 + 24);
  *v10 = 0;
  *(v10 + 4) = 1;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_100423F90, &qword_100383460);
  }

  return result;
}

uint64_t sub_1001B91DC(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle(0) + 20);
  sub_1000059A8(v1 + v3, &qword_100423F90, &qword_100383460);
  sub_1002463C0(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  v4 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*sub_1001B9294(void *a1))(uint64_t a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100024A2C(&qword_100423F90, &qword_100383460) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle(0) + 20);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100423F90, &qword_100383460);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + *(v8 + 20);
    *v16 = 0;
    *(v16 + 4) = 1;
    v17 = v13 + *(v8 + 24);
    *v17 = 0;
    *(v17 + 4) = 1;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100423F90, &qword_100383460);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  }

  return sub_100268FF8;
}

uint64_t sub_1001B9554(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001B958C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1001B9624()
{
  result = type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001B966C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100423F90, &qword_100383460);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
  sub_10000A0A4(v1 + *(v6 + 20), v5, &qword_100423F90, &qword_100383460);
  v7 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1002463C0(v5, a1, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  }

  UnknownStorage.init()();
  v9 = a1 + *(v7 + 20);
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1 + *(v7 + 24);
  *v10 = 0;
  *(v10 + 4) = 1;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_100423F90, &qword_100383460);
  }

  return result;
}

uint64_t sub_1001B97E4(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0) + 20);
  sub_1000059A8(v1 + v3, &qword_100423F90, &qword_100383460);
  sub_1002463C0(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  v4 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*sub_1001B989C(void *a1))(uint64_t a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100024A2C(&qword_100423F90, &qword_100383460) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0) + 20);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100423F90, &qword_100383460);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + *(v8 + 20);
    *v16 = 0;
    *(v16 + 4) = 1;
    v17 = v13 + *(v8 + 24);
    *v17 = 0;
    *(v17 + 4) = 1;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100423F90, &qword_100383460);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  }

  return sub_100268FF8;
}

uint64_t sub_1001B9B5C(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001B9B94(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1001B9C2C()
{
  result = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001B9C74(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001B9CAC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0) + 28);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1001B9D44()
{
  result = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001B9D8C(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001B9DC4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0) + 32);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1001B9E5C()
{
  result = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
  v2 = v0 + *(result + 32);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001B9EA4(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001B9EDC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0) + 36);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1001B9F74()
{
  result = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
  v2 = v0 + *(result + 36);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001B9FA4@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
  v3 = v2[5];
  v4 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  result = (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v6 = a1 + v2[6];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1 + v2[7];
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a1 + v2[8];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a1 + v2[9];
  *v9 = 0;
  *(v9 + 4) = 1;
  return result;
}

uint64_t sub_1001BA064@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100423F90, &qword_100383460);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  sub_10000A0A4(v1 + *(v6 + 20), v5, &qword_100423F90, &qword_100383460);
  v7 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1002463C0(v5, a1, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  }

  UnknownStorage.init()();
  v9 = a1 + *(v7 + 20);
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1 + *(v7 + 24);
  *v10 = 0;
  *(v10 + 4) = 1;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_100423F90, &qword_100383460);
  }

  return result;
}

uint64_t sub_1001BA1DC(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0) + 20);
  sub_1000059A8(v1 + v3, &qword_100423F90, &qword_100383460);
  sub_1002463C0(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  v4 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*sub_1001BA294(void *a1))(uint64_t a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100024A2C(&qword_100423F90, &qword_100383460) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0) + 20);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100423F90, &qword_100383460);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + *(v8 + 20);
    *v16 = 0;
    *(v16 + 4) = 1;
    v17 = v13 + *(v8 + 24);
    *v17 = 0;
    *(v17 + 4) = 1;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100423F90, &qword_100383460);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  }

  return sub_100268FF8;
}

uint64_t sub_1001BA554(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001BA58C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1001BA624()
{
  result = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001BA66C(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001BA6A4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0) + 28);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1001BA73C()
{
  result = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001BA784(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001BA7BC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0) + 32);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1001BA854()
{
  result = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  v2 = v0 + *(result + 32);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001BA89C(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001BA8D4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0) + 36);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1001BA96C()
{
  result = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  v2 = v0 + *(result + 36);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001BA9B4(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001BA9EC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0) + 40);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1001BAA84()
{
  result = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  v2 = v0 + *(result + 40);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001BAACC(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  v4 = v1 + *(result + 44);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001BAB04(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0) + 44);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1001BAB9C()
{
  result = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  v2 = v0 + *(result + 44);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001BABCC@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  v3 = v2[5];
  v4 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  result = (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v6 = a1 + v2[6];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1 + v2[7];
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a1 + v2[8];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a1 + v2[9];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1 + v2[10];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + v2[11];
  *v11 = 0;
  *(v11 + 4) = 1;
  return result;
}

uint64_t sub_1001BACAC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100423F90, &qword_100383460);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  sub_10000A0A4(v1 + *(v6 + 20), v5, &qword_100423F90, &qword_100383460);
  v7 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1002463C0(v5, a1, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  }

  UnknownStorage.init()();
  v9 = a1 + *(v7 + 20);
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1 + *(v7 + 24);
  *v10 = 0;
  *(v10 + 4) = 1;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_100423F90, &qword_100383460);
  }

  return result;
}

uint64_t sub_1001BAE24(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0) + 20);
  sub_1000059A8(v1 + v3, &qword_100423F90, &qword_100383460);
  sub_1002463C0(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  v4 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_1001BAEDC(void *a1))(uint64_t **a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100024A2C(&qword_100423F90, &qword_100383460) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0) + 20);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100423F90, &qword_100383460);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + *(v8 + 20);
    *v16 = 0;
    *(v16 + 4) = 1;
    v17 = v13 + *(v8 + 24);
    *v17 = 0;
    *(v17 + 4) = 1;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100423F90, &qword_100383460);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  }

  return sub_1001BB10C;
}

uint64_t sub_1001BB1D8(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001BB210(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1001BB2A8()
{
  result = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001BB2F0(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001BB328(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0) + 28);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1001BB3C0()
{
  result = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001BB408(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001BB440(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0) + 32);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1001BB4D8()
{
  result = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  v2 = v0 + *(result + 32);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001BB520(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001BB558(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0) + 36);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1001BB5F0()
{
  result = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  v2 = v0 + *(result + 36);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001BB638(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001BB670(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0) + 40);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1001BB708()
{
  result = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  v2 = v0 + *(result + 40);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001BB738@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  v3 = v2[5];
  v4 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  result = (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v6 = a1 + v2[6];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1 + v2[7];
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a1 + v2[8];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a1 + v2[9];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1 + v2[10];
  *v10 = 0;
  *(v10 + 4) = 1;
  return result;
}

uint64_t sub_1001BB820@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100423F90, &qword_100383460);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_PointAltitude(0);
  sub_10000A0A4(v1 + *(v6 + 20), v5, &qword_100423F90, &qword_100383460);
  v7 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1002463C0(v5, a1, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  }

  UnknownStorage.init()();
  v9 = a1 + *(v7 + 20);
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1 + *(v7 + 24);
  *v10 = 0;
  *(v10 + 4) = 1;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_100423F90, &qword_100383460);
  }

  return result;
}

uint64_t sub_1001BB998(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_PointAltitude(0) + 20);
  sub_1000059A8(v1 + v3, &qword_100423F90, &qword_100383460);
  sub_1002463C0(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  v4 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*sub_1001BBA50(void *a1))(uint64_t a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_100024A2C(&qword_100423F90, &qword_100383460) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_PointAltitude(0) + 20);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100423F90, &qword_100383460);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + *(v8 + 20);
    *v16 = 0;
    *(v16 + 4) = 1;
    v17 = v13 + *(v8 + 24);
    *v17 = 0;
    *(v17 + 4) = 1;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100423F90, &qword_100383460);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
  }

  return sub_100268FF8;
}

uint64_t sub_1001BBD10(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_PointAltitude(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001BBD48(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_PointAltitude(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1001BBDE0()
{
  result = type metadata accessor for Proto_Gnss_Emergency_PointAltitude(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001BBE28@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1(0);
  v5 = *(v4 + 20);
  v6 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  result = (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  v8 = a2 + *(v4 + 24);
  *v8 = 0;
  *(v8 + 4) = 1;
  return result;
}

uint64_t sub_1001BBED8(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_Polygon(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001BBF10(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_Polygon(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1000362C0;
}

uint64_t sub_1001BBFA8()
{
  result = type metadata accessor for Proto_Gnss_Emergency_Polygon(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001BC068@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100423F98, &qword_100383468);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainCircle;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_100423F98, &qword_100383468);
  v8 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1002463C0(v5, a1, type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle);
  }

  UnknownStorage.init()();
  v10 = *(v8 + 20);
  v11 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  v12 = a1 + *(v8 + 24);
  *v12 = 0;
  *(v12 + 4) = 1;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_100423F98, &qword_100383468);
  }

  return result;
}

uint64_t sub_1001BC240(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100423F98, &qword_100383468);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
    v10 = swift_allocObject();
    sub_100246E4C(v9);

    *(v2 + v7) = v10;
    v9 = v10;
  }

  sub_1002463C0(a1, v6, type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle);
  v11 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainCircle;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v12, &qword_100423F98, &qword_100383468);
  return swift_endAccess();
}

void (*sub_1001BC3B4(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(sub_100024A2C(&qword_100423F98, &qword_100383468) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 80) = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 80) = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 88) = v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle(0);
  *(v4 + 96) = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  *(v4 + 104) = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 112) = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 112) = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  *(v4 + 120) = v12;
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainCircle;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100423F98, &qword_100383468);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = *(v8 + 20);
    v19 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
    (*(*(v19 - 8) + 56))(v13 + v18, 1, 1, v19);
    v20 = v13 + *(v8 + 24);
    *v20 = 0;
    *(v20 + 4) = 1;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100423F98, &qword_100383468);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle);
  }

  return sub_1001BC658;
}

void sub_1001BC658(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100246428(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
      v9 = swift_allocObject();
      sub_100246E4C(v6);

      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002463C0(v11, v15, type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainCircle;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_100423F98, &qword_100383468);
    swift_endAccess();
    sub_100246490(v10, type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle);
  }

  else
  {
    v17 = *(v2 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v3);
    if ((v18 & 1) == 0)
    {
      v20 = *(v2 + 128);
      v21 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_ShapeInfo._StorageClass(0);
      v22 = swift_allocObject();
      sub_100246E4C(v19);

      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002463C0(v10, v15, type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainCircle;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_100423F98, &qword_100383468);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}