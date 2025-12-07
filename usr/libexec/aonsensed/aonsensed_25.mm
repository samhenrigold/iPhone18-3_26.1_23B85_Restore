void sub_10028A54C(uint64_t *a1, char a2)
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
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v7;
    v7 = v10;
    sub_1002C2FB8(v11);
    *(v9 + v8) = v10;
  }

  swift_beginAccess();
  *(v7 + 16) = v3;
  *(v7 + 24) = 0;

  free(v2);
}

BOOL sub_10028A618()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  swift_beginAccess();
  return (*(v1 + 24) & 1) == 0;
}

uint64_t sub_10028A66C()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v5 = swift_allocObject();
    v6 = v4;
    v4 = v5;
    sub_1002C2FB8(v6);
    *(v1 + v2) = v5;
  }

  result = swift_beginAccess();
  *(v4 + 16) = 0;
  *(v4 + 24) = 1;
  return result;
}

uint64_t sub_10028A700()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  swift_beginAccess();
  if (*(v1 + 32))
  {
    return 0;
  }

  else
  {
    return *(v1 + 28);
  }
}

uint64_t sub_10028A758(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v7 = swift_allocObject();
    v8 = v6;
    v6 = v7;
    sub_1002C2FB8(v8);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v6 + 28) = a1;
  *(v6 + 32) = 0;
  return result;
}

void (*sub_10028A7F4(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 28);
  if (*(v6 + 32))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_10028A8A0;
}

void sub_10028A8A0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 84);
  v5 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 84);
    v9 = *(v2 + 72);
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v7;
    v7 = v10;
    sub_1002C2FB8(v11);
    *(v9 + v8) = v10;
  }

  swift_beginAccess();
  *(v7 + 28) = v3;
  *(v7 + 32) = 0;

  free(v2);
}

BOOL sub_10028A96C()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  swift_beginAccess();
  return (*(v1 + 32) & 1) == 0;
}

uint64_t sub_10028A9C0()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v5 = swift_allocObject();
    sub_1002C2FB8(v4);
    *(v1 + v2) = v5;
    v4 = v5;
  }

  result = swift_beginAccess();
  *(v4 + 28) = 0;
  *(v4 + 32) = 1;
  return result;
}

uint64_t sub_10028AA54()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  swift_beginAccess();
  if (*(v1 + 33) == 62)
  {
    return 0;
  }

  else
  {
    return *(v1 + 33);
  }
}

uint64_t sub_10028AAA8(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v7 = swift_allocObject();
    v8 = v6;
    v6 = v7;
    sub_1002C2FB8(v8);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v6 + 33) = a1;
  return result;
}

void (*sub_10028AB40(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 33);
  if (v7 == 62)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return sub_10028ABE8;
}

void sub_10028ABE8(uint64_t *a1, char a2)
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
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v7;
    v7 = v10;
    sub_1002C2FB8(v11);
    *(v9 + v8) = v10;
  }

  swift_beginAccess();
  *(v7 + 33) = v3;

  free(v2);
}

BOOL sub_10028ACB0()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  swift_beginAccess();
  return *(v1 + 33) != 62;
}

uint64_t sub_10028AD04()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v5 = swift_allocObject();
    v6 = v4;
    v4 = v5;
    sub_1002C2FB8(v6);
    *(v1 + v2) = v5;
  }

  result = swift_beginAccess();
  *(v4 + 33) = 62;
  return result;
}

uint64_t sub_10028AD94@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042BE30, &qword_100393EF0);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistancePosition;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_10042BE30, &qword_100393EF0);
  v8 = type metadata accessor for Proto_Gpsd_InjectAssistancePosition(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1002F7BE8(v5, a1, type metadata accessor for Proto_Gpsd_InjectAssistancePosition);
  }

  UnknownStorage.init()();
  v10 = v8[5];
  v11 = type metadata accessor for Proto_Gnss_Position(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  *(a1 + v8[6]) = 4;
  *(a1 + v8[7]) = 2;
  v12 = a1 + v8[8];
  *v12 = 0;
  *(v12 + 8) = 1;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_10042BE30, &qword_100393EF0);
  }

  return result;
}

uint64_t sub_10028AF84@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for Proto_Gpsd_InjectAssistancePosition(0);
  v3 = v2[5];
  v4 = type metadata accessor for Proto_Gnss_Position(0);
  result = (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  *(a1 + v2[6]) = 4;
  *(a1 + v2[7]) = 2;
  v6 = a1 + v2[8];
  *v6 = 0;
  *(v6 + 8) = 1;
  return result;
}

uint64_t sub_10028B02C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10042BE30, &qword_100393EF0);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_1002C2FB8(v11);
    *(v2 + v7) = v10;
  }

  sub_1002F7BE8(a1, v6, type metadata accessor for Proto_Gpsd_InjectAssistancePosition);
  v12 = type metadata accessor for Proto_Gpsd_InjectAssistancePosition(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistancePosition;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_10042BE30, &qword_100393EF0);
  return swift_endAccess();
}

void (*sub_10028B198(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10042BE30, &qword_100393EF0) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gpsd_InjectAssistancePosition(0);
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
  v14 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistancePosition;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10042BE30, &qword_100393EF0);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = v8[5];
    v19 = type metadata accessor for Proto_Gnss_Position(0);
    (*(*(v19 - 8) + 56))(v13 + v18, 1, 1, v19);
    *(v13 + v8[6]) = 4;
    *(v13 + v8[7]) = 2;
    v20 = v13 + v8[8];
    *v20 = 0;
    *(v20 + 8) = 1;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10042BE30, &qword_100393EF0);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for Proto_Gpsd_InjectAssistancePosition);
  }

  return sub_10028B454;
}

void sub_10028B454(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1002F7C50(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_InjectAssistancePosition);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v9 = swift_allocObject();
      sub_1002C2FB8(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v11, v15, type metadata accessor for Proto_Gpsd_InjectAssistancePosition);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistancePosition;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_10042BE30, &qword_100393EF0);
    swift_endAccess();
    sub_1002F7CB8(v10, type metadata accessor for Proto_Gpsd_InjectAssistancePosition);
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
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v22 = swift_allocObject();
      sub_1002C2FB8(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v10, v15, type metadata accessor for Proto_Gpsd_InjectAssistancePosition);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistancePosition;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_10042BE30, &qword_100393EF0);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_10028B6A4()
{
  v1 = sub_100024A2C(&qword_10042BE30, &qword_100393EF0);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistancePosition;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_10042BE30, &qword_100393EF0);
  v6 = type metadata accessor for Proto_Gpsd_InjectAssistancePosition(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_10042BE30, &qword_100393EF0);
  return v7;
}

uint64_t sub_10028B7C4()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10042BE30, &qword_100393EF0);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    sub_1002C2FB8(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gpsd_InjectAssistancePosition(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistancePosition;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v11, &qword_10042BE30, &qword_100393EF0);
  return swift_endAccess();
}

uint64_t sub_10028B90C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042BE38, &qword_100393EF8);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceTime;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_10042BE38, &qword_100393EF8);
  v8 = type metadata accessor for Proto_Gpsd_InjectAssistanceTime(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1002F7BE8(v5, a1, type metadata accessor for Proto_Gpsd_InjectAssistanceTime);
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
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_10042BE38, &qword_100393EF8);
  }

  return result;
}

uint64_t sub_10028BAD0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10042BE38, &qword_100393EF8);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_1002C2FB8(v11);
    *(v2 + v7) = v10;
  }

  sub_1002F7BE8(a1, v6, type metadata accessor for Proto_Gpsd_InjectAssistanceTime);
  v12 = type metadata accessor for Proto_Gpsd_InjectAssistanceTime(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceTime;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_10042BE38, &qword_100393EF8);
  return swift_endAccess();
}

void (*sub_10028BC3C(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10042BE38, &qword_100393EF8) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gpsd_InjectAssistanceTime(0);
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
  v14 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceTime;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10042BE38, &qword_100393EF8);
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
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10042BE38, &qword_100393EF8);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for Proto_Gpsd_InjectAssistanceTime);
  }

  return sub_10028BEBC;
}

void sub_10028BEBC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1002F7C50(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_InjectAssistanceTime);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v9 = swift_allocObject();
      sub_1002C2FB8(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v11, v15, type metadata accessor for Proto_Gpsd_InjectAssistanceTime);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceTime;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_10042BE38, &qword_100393EF8);
    swift_endAccess();
    sub_1002F7CB8(v10, type metadata accessor for Proto_Gpsd_InjectAssistanceTime);
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
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v22 = swift_allocObject();
      sub_1002C2FB8(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v10, v15, type metadata accessor for Proto_Gpsd_InjectAssistanceTime);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceTime;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_10042BE38, &qword_100393EF8);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_10028C10C()
{
  v1 = sub_100024A2C(&qword_10042BE38, &qword_100393EF8);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceTime;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_10042BE38, &qword_100393EF8);
  v6 = type metadata accessor for Proto_Gpsd_InjectAssistanceTime(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_10042BE38, &qword_100393EF8);
  return v7;
}

uint64_t sub_10028C22C()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10042BE38, &qword_100393EF8);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    sub_1002C2FB8(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gpsd_InjectAssistanceTime(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceTime;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v11, &qword_10042BE38, &qword_100393EF8);
  return swift_endAccess();
}

uint64_t sub_10028C374@<X0>(void *a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042BE40, &qword_100393F00);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistancePressure;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_10042BE40, &qword_100393F00);
  v8 = type metadata accessor for Proto_Gpsd_SetAssistancePressure(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1002F7BE8(v5, a1, type metadata accessor for Proto_Gpsd_SetAssistancePressure);
  }

  *a1 = &_swiftEmptyArrayStorage;
  UnknownStorage.init()();
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_10042BE40, &qword_100393F00);
  }

  return result;
}

uint64_t sub_10028C514(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10042BE40, &qword_100393F00);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_1002C2FB8(v11);
    *(v2 + v7) = v10;
  }

  sub_1002F7BE8(a1, v6, type metadata accessor for Proto_Gpsd_SetAssistancePressure);
  v12 = type metadata accessor for Proto_Gpsd_SetAssistancePressure(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistancePressure;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_10042BE40, &qword_100393F00);
  return swift_endAccess();
}

void (*sub_10028C680(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10042BE40, &qword_100393F00) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gpsd_SetAssistancePressure(0);
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
  v14 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistancePressure;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10042BE40, &qword_100393F00);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    *v13 = &_swiftEmptyArrayStorage;
    UnknownStorage.init()();
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10042BE40, &qword_100393F00);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for Proto_Gpsd_SetAssistancePressure);
  }

  return sub_10028C8DC;
}

void sub_10028C8DC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1002F7C50(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_SetAssistancePressure);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v9 = swift_allocObject();
      sub_1002C2FB8(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v11, v15, type metadata accessor for Proto_Gpsd_SetAssistancePressure);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistancePressure;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_10042BE40, &qword_100393F00);
    swift_endAccess();
    sub_1002F7CB8(v10, type metadata accessor for Proto_Gpsd_SetAssistancePressure);
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
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v22 = swift_allocObject();
      sub_1002C2FB8(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v10, v15, type metadata accessor for Proto_Gpsd_SetAssistancePressure);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistancePressure;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_10042BE40, &qword_100393F00);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_10028CB2C()
{
  v1 = sub_100024A2C(&qword_10042BE40, &qword_100393F00);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistancePressure;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_10042BE40, &qword_100393F00);
  v6 = type metadata accessor for Proto_Gpsd_SetAssistancePressure(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_10042BE40, &qword_100393F00);
  return v7;
}

uint64_t sub_10028CC4C()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10042BE40, &qword_100393F00);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    sub_1002C2FB8(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gpsd_SetAssistancePressure(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistancePressure;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v11, &qword_10042BE40, &qword_100393F00);
  return swift_endAccess();
}

uint64_t sub_10028CD94@<X0>(void *a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042BE48, &qword_100393F08);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAccel;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_10042BE48, &qword_100393F08);
  v8 = type metadata accessor for Proto_Gpsd_SetAssistanceAccel(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1002F7BE8(v5, a1, type metadata accessor for Proto_Gpsd_SetAssistanceAccel);
  }

  *a1 = &_swiftEmptyArrayStorage;
  UnknownStorage.init()();
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_10042BE48, &qword_100393F08);
  }

  return result;
}

uint64_t sub_10028CF34@<X0>(void (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  a1(0);
  return UnknownStorage.init()();
}

uint64_t sub_10028CF7C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10042BE48, &qword_100393F08);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_1002C2FB8(v11);
    *(v2 + v7) = v10;
  }

  sub_1002F7BE8(a1, v6, type metadata accessor for Proto_Gpsd_SetAssistanceAccel);
  v12 = type metadata accessor for Proto_Gpsd_SetAssistanceAccel(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAccel;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_10042BE48, &qword_100393F08);
  return swift_endAccess();
}

void (*sub_10028D0E8(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10042BE48, &qword_100393F08) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gpsd_SetAssistanceAccel(0);
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
  v14 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAccel;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10042BE48, &qword_100393F08);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    *v13 = &_swiftEmptyArrayStorage;
    UnknownStorage.init()();
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10042BE48, &qword_100393F08);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for Proto_Gpsd_SetAssistanceAccel);
  }

  return sub_10028D344;
}

void sub_10028D344(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1002F7C50(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_SetAssistanceAccel);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v9 = swift_allocObject();
      sub_1002C2FB8(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v11, v15, type metadata accessor for Proto_Gpsd_SetAssistanceAccel);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAccel;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_10042BE48, &qword_100393F08);
    swift_endAccess();
    sub_1002F7CB8(v10, type metadata accessor for Proto_Gpsd_SetAssistanceAccel);
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
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v22 = swift_allocObject();
      sub_1002C2FB8(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v10, v15, type metadata accessor for Proto_Gpsd_SetAssistanceAccel);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAccel;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_10042BE48, &qword_100393F08);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_10028D594()
{
  v1 = sub_100024A2C(&qword_10042BE48, &qword_100393F08);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAccel;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_10042BE48, &qword_100393F08);
  v6 = type metadata accessor for Proto_Gpsd_SetAssistanceAccel(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_10042BE48, &qword_100393F08);
  return v7;
}

uint64_t sub_10028D6B4()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10042BE48, &qword_100393F08);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    sub_1002C2FB8(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gpsd_SetAssistanceAccel(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAccel;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v11, &qword_10042BE48, &qword_100393F08);
  return swift_endAccess();
}

uint64_t sub_10028D7FC@<X0>(void *a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042BE50, &qword_100393F10);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceGyro;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_10042BE50, &qword_100393F10);
  v8 = type metadata accessor for Proto_Gpsd_SetAssistanceGyro(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1002F7BE8(v5, a1, type metadata accessor for Proto_Gpsd_SetAssistanceGyro);
  }

  *a1 = &_swiftEmptyArrayStorage;
  UnknownStorage.init()();
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_10042BE50, &qword_100393F10);
  }

  return result;
}

uint64_t sub_10028D99C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10042BE50, &qword_100393F10);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_1002C2FB8(v11);
    *(v2 + v7) = v10;
  }

  sub_1002F7BE8(a1, v6, type metadata accessor for Proto_Gpsd_SetAssistanceGyro);
  v12 = type metadata accessor for Proto_Gpsd_SetAssistanceGyro(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceGyro;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_10042BE50, &qword_100393F10);
  return swift_endAccess();
}

void (*sub_10028DB08(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10042BE50, &qword_100393F10) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gpsd_SetAssistanceGyro(0);
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
  v14 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceGyro;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10042BE50, &qword_100393F10);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    *v13 = &_swiftEmptyArrayStorage;
    UnknownStorage.init()();
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10042BE50, &qword_100393F10);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for Proto_Gpsd_SetAssistanceGyro);
  }

  return sub_10028DD64;
}

void sub_10028DD64(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1002F7C50(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_SetAssistanceGyro);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v9 = swift_allocObject();
      sub_1002C2FB8(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v11, v15, type metadata accessor for Proto_Gpsd_SetAssistanceGyro);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceGyro;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_10042BE50, &qword_100393F10);
    swift_endAccess();
    sub_1002F7CB8(v10, type metadata accessor for Proto_Gpsd_SetAssistanceGyro);
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
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v22 = swift_allocObject();
      sub_1002C2FB8(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v10, v15, type metadata accessor for Proto_Gpsd_SetAssistanceGyro);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceGyro;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_10042BE50, &qword_100393F10);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_10028DFB4()
{
  v1 = sub_100024A2C(&qword_10042BE50, &qword_100393F10);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceGyro;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_10042BE50, &qword_100393F10);
  v6 = type metadata accessor for Proto_Gpsd_SetAssistanceGyro(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_10042BE50, &qword_100393F10);
  return v7;
}

uint64_t sub_10028E0D4()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10042BE50, &qword_100393F10);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    sub_1002C2FB8(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gpsd_SetAssistanceGyro(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceGyro;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v11, &qword_10042BE50, &qword_100393F10);
  return swift_endAccess();
}

uint64_t sub_10028E21C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042BE58, &qword_100393F18);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceDem;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_10042BE58, &qword_100393F18);
  v8 = type metadata accessor for Proto_Gpsd_SetAssistanceDem(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1002F7BE8(v5, a1, type metadata accessor for Proto_Gpsd_SetAssistanceDem);
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
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_10042BE58, &qword_100393F18);
  }

  return result;
}

int *sub_10028E3E0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  result = a1(0);
  v5 = a2 + result[5];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = a2 + result[6];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a2 + result[7];
  *v7 = 0;
  *(v7 + 8) = 1;
  return result;
}

uint64_t sub_10028E448(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10042BE58, &qword_100393F18);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_1002C2FB8(v11);
    *(v2 + v7) = v10;
  }

  sub_1002F7BE8(a1, v6, type metadata accessor for Proto_Gpsd_SetAssistanceDem);
  v12 = type metadata accessor for Proto_Gpsd_SetAssistanceDem(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceDem;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_10042BE58, &qword_100393F18);
  return swift_endAccess();
}

void (*sub_10028E5B4(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10042BE58, &qword_100393F18) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gpsd_SetAssistanceDem(0);
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
  v14 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceDem;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10042BE58, &qword_100393F18);
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
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10042BE58, &qword_100393F18);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for Proto_Gpsd_SetAssistanceDem);
  }

  return sub_10028E834;
}

void sub_10028E834(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1002F7C50(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_SetAssistanceDem);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v9 = swift_allocObject();
      sub_1002C2FB8(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v11, v15, type metadata accessor for Proto_Gpsd_SetAssistanceDem);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceDem;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_10042BE58, &qword_100393F18);
    swift_endAccess();
    sub_1002F7CB8(v10, type metadata accessor for Proto_Gpsd_SetAssistanceDem);
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
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v22 = swift_allocObject();
      sub_1002C2FB8(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v10, v15, type metadata accessor for Proto_Gpsd_SetAssistanceDem);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceDem;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_10042BE58, &qword_100393F18);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_10028EA84()
{
  v1 = sub_100024A2C(&qword_10042BE58, &qword_100393F18);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceDem;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_10042BE58, &qword_100393F18);
  v6 = type metadata accessor for Proto_Gpsd_SetAssistanceDem(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_10042BE58, &qword_100393F18);
  return v7;
}

uint64_t sub_10028EBA4()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10042BE58, &qword_100393F18);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    sub_1002C2FB8(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gpsd_SetAssistanceDem(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceDem;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v11, &qword_10042BE58, &qword_100393F18);
  return swift_endAccess();
}

uint64_t sub_10028ECEC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042BE60, &qword_100393F20);
  __chkstk_darwin(v3 - 8);
  v5 = &v18 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMapVector;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_10042BE60, &qword_100393F20);
  v8 = type metadata accessor for Proto_Gpsd_SetAssistanceMapVector(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1002F7BE8(v5, a1, type metadata accessor for Proto_Gpsd_SetAssistanceMapVector);
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
  *(a1 + v8[8]) = 2;
  v13 = a1 + v8[9];
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = a1 + v8[10];
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = a1 + v8[11];
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = a1 + v8[12];
  *v16 = 0;
  *(v16 + 8) = 1;
  *(a1 + v8[13]) = 2;
  *(a1 + v8[14]) = 2;
  *(a1 + v8[15]) = 2;
  *(a1 + v8[16]) = 2;
  *(a1 + v8[17]) = 2;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_10042BE60, &qword_100393F20);
  }

  return result;
}

int *sub_10028EF0C@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gpsd_SetAssistanceMapVector(0);
  v3 = a1 + result[5];
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = a1 + result[6];
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = a1 + result[7];
  *v5 = 0;
  *(v5 + 8) = 1;
  *(a1 + result[8]) = 2;
  v6 = a1 + result[9];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a1 + result[10];
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = a1 + result[11];
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = a1 + result[12];
  *v9 = 0;
  *(v9 + 8) = 1;
  *(a1 + result[13]) = 2;
  *(a1 + result[14]) = 2;
  *(a1 + result[15]) = 2;
  *(a1 + result[16]) = 2;
  *(a1 + result[17]) = 2;
  return result;
}

uint64_t sub_10028EFE0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10042BE60, &qword_100393F20);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_1002C2FB8(v11);
    *(v2 + v7) = v10;
  }

  sub_1002F7BE8(a1, v6, type metadata accessor for Proto_Gpsd_SetAssistanceMapVector);
  v12 = type metadata accessor for Proto_Gpsd_SetAssistanceMapVector(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMapVector;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_10042BE60, &qword_100393F20);
  return swift_endAccess();
}

uint64_t (*sub_10028F14C(uint64_t *a1))()
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
  *(v3 + 48) = v1;
  v5 = *(*(sub_100024A2C(&qword_10042BE60, &qword_100393F20) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v4[7] = v6;
  v7 = type metadata accessor for Proto_Gpsd_SetAssistanceMapVector(0);
  v4[8] = v7;
  v8 = *(v7 - 8);
  v4[9] = v8;
  v9 = *(v8 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[10] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v4[10] = malloc(*(v8 + 64));
    v10 = malloc(v9);
  }

  v4[11] = v10;
  sub_10028ECEC(v10);
  return sub_10028F294;
}

void sub_10028F294(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[6];
    sub_1002F7C50(v2[11], v2[10], type metadata accessor for Proto_Gpsd_SetAssistanceMapVector);
    v4 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v3 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v7 = swift_allocObject();
      sub_1002C2FB8(v6);
      *(v3 + v4) = v7;
      v6 = v7;
    }

    v9 = v2[10];
    v8 = v2[11];
    v10 = v2[8];
    v11 = v2[9];
    v12 = v2[7];
    sub_1002F7BE8(v9, v12, type metadata accessor for Proto_Gpsd_SetAssistanceMapVector);
    (*(v11 + 56))(v12, 0, 1, v10);
    v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMapVector;
    swift_beginAccess();
    sub_10000AD64(v12, v6 + v13, &qword_10042BE60, &qword_100393F20);
    swift_endAccess();
    sub_1002F7CB8(v8, type metadata accessor for Proto_Gpsd_SetAssistanceMapVector);
  }

  else
  {
    v14 = v2[6];
    v15 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
    v16 = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(v14 + v15);
    if ((v16 & 1) == 0)
    {
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v18 = swift_allocObject();
      sub_1002C2FB8(v17);
      *(v14 + v15) = v18;
      v17 = v18;
    }

    v9 = v2[10];
    v8 = v2[11];
    v19 = v2[8];
    v20 = v2[9];
    v12 = v2[7];
    sub_1002F7BE8(v8, v12, type metadata accessor for Proto_Gpsd_SetAssistanceMapVector);
    (*(v20 + 56))(v12, 0, 1, v19);
    v21 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMapVector;
    swift_beginAccess();
    sub_10000AD64(v12, v17 + v21, &qword_10042BE60, &qword_100393F20);
    swift_endAccess();
  }

  free(v8);
  free(v9);
  free(v12);

  free(v2);
}

BOOL sub_10028F4E0()
{
  v1 = sub_100024A2C(&qword_10042BE60, &qword_100393F20);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMapVector;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_10042BE60, &qword_100393F20);
  v6 = type metadata accessor for Proto_Gpsd_SetAssistanceMapVector(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_10042BE60, &qword_100393F20);
  return v7;
}

uint64_t sub_10028F600()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10042BE60, &qword_100393F20);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    sub_1002C2FB8(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gpsd_SetAssistanceMapVector(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMapVector;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v11, &qword_10042BE60, &qword_100393F20);
  return swift_endAccess();
}

uint64_t sub_10028F748@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042BE68, &qword_100393F28);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMotionActivityContext;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_10042BE68, &qword_100393F28);
  v8 = type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1002F7BE8(v5, a1, type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext);
  }

  UnknownStorage.init()();
  v10 = a1 + v8[5];
  *v10 = 0;
  *(v10 + 8) = 1;
  *(a1 + v8[6]) = 10;
  *(a1 + v8[7]) = 5;
  *(a1 + v8[8]) = 6;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_10042BE68, &qword_100393F28);
  }

  return result;
}

int *sub_10028F8F8@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext(0);
  v3 = a1 + result[5];
  *v3 = 0;
  *(v3 + 8) = 1;
  *(a1 + result[6]) = 10;
  *(a1 + result[7]) = 5;
  *(a1 + result[8]) = 6;
  return result;
}

uint64_t sub_10028F95C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10042BE68, &qword_100393F28);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_1002C2FB8(v11);
    *(v2 + v7) = v10;
  }

  sub_1002F7BE8(a1, v6, type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext);
  v12 = type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMotionActivityContext;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_10042BE68, &qword_100393F28);
  return swift_endAccess();
}

void (*sub_10028FAC8(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10042BE68, &qword_100393F28) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext(0);
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
  v14 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMotionActivityContext;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10042BE68, &qword_100393F28);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = v13 + v8[5];
    *v18 = 0;
    *(v18 + 8) = 1;
    *(v13 + v8[6]) = 10;
    *(v13 + v8[7]) = 5;
    *(v13 + v8[8]) = 6;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10042BE68, &qword_100393F28);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext);
  }

  return sub_10028FD4C;
}

void sub_10028FD4C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1002F7C50(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v9 = swift_allocObject();
      sub_1002C2FB8(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v11, v15, type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMotionActivityContext;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_10042BE68, &qword_100393F28);
    swift_endAccess();
    sub_1002F7CB8(v10, type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext);
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
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v22 = swift_allocObject();
      sub_1002C2FB8(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v10, v15, type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMotionActivityContext;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_10042BE68, &qword_100393F28);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_10028FF9C()
{
  v1 = sub_100024A2C(&qword_10042BE68, &qword_100393F28);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMotionActivityContext;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_10042BE68, &qword_100393F28);
  v6 = type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_10042BE68, &qword_100393F28);
  return v7;
}

uint64_t sub_1002900BC()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10042BE68, &qword_100393F28);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    sub_1002C2FB8(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMotionActivityContext;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v11, &qword_10042BE68, &qword_100393F28);
  return swift_endAccess();
}

uint64_t sub_100290204@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042BE70, &qword_100393F30);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMountState;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_10042BE70, &qword_100393F30);
  v8 = type metadata accessor for Proto_Gpsd_SetAssistanceMountState(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1002F7BE8(v5, a1, type metadata accessor for Proto_Gpsd_SetAssistanceMountState);
  }

  UnknownStorage.init()();
  v10 = a1 + *(v8 + 20);
  *v10 = 0;
  *(v10 + 8) = 1;
  *(a1 + *(v8 + 24)) = 4;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_10042BE70, &qword_100393F30);
  }

  return result;
}

uint64_t sub_10029039C@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gpsd_SetAssistanceMountState(0);
  v3 = a1 + *(result + 20);
  *v3 = 0;
  *(v3 + 8) = 1;
  *(a1 + *(result + 24)) = 4;
  return result;
}

uint64_t sub_1002903E8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10042BE70, &qword_100393F30);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_1002C2FB8(v11);
    *(v2 + v7) = v10;
  }

  sub_1002F7BE8(a1, v6, type metadata accessor for Proto_Gpsd_SetAssistanceMountState);
  v12 = type metadata accessor for Proto_Gpsd_SetAssistanceMountState(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMountState;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_10042BE70, &qword_100393F30);
  return swift_endAccess();
}

void (*sub_100290554(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10042BE70, &qword_100393F30) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gpsd_SetAssistanceMountState(0);
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
  v14 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMountState;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10042BE70, &qword_100393F30);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = v13 + *(v8 + 20);
    *v18 = 0;
    *(v18 + 8) = 1;
    *(v13 + *(v8 + 24)) = 4;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10042BE70, &qword_100393F30);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for Proto_Gpsd_SetAssistanceMountState);
  }

  return sub_1002907C0;
}

void sub_1002907C0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1002F7C50(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_SetAssistanceMountState);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v9 = swift_allocObject();
      sub_1002C2FB8(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v11, v15, type metadata accessor for Proto_Gpsd_SetAssistanceMountState);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMountState;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_10042BE70, &qword_100393F30);
    swift_endAccess();
    sub_1002F7CB8(v10, type metadata accessor for Proto_Gpsd_SetAssistanceMountState);
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
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v22 = swift_allocObject();
      sub_1002C2FB8(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v10, v15, type metadata accessor for Proto_Gpsd_SetAssistanceMountState);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMountState;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_10042BE70, &qword_100393F30);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_100290A10()
{
  v1 = sub_100024A2C(&qword_10042BE70, &qword_100393F30);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMountState;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_10042BE70, &qword_100393F30);
  v6 = type metadata accessor for Proto_Gpsd_SetAssistanceMountState(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_10042BE70, &qword_100393F30);
  return v7;
}

uint64_t sub_100290B30()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10042BE70, &qword_100393F30);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    sub_1002C2FB8(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gpsd_SetAssistanceMountState(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMountState;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v11, &qword_10042BE70, &qword_100393F30);
  return swift_endAccess();
}

uint64_t sub_100290C78@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042BE78, &qword_100393F38);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSignalEnvironment;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_10042BE78, &qword_100393F38);
  v8 = type metadata accessor for Proto_Gpsd_SetAssistanceSignalEnvironment(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1002F7BE8(v5, a1, type metadata accessor for Proto_Gpsd_SetAssistanceSignalEnvironment);
  }

  UnknownStorage.init()();
  *(a1 + *(v8 + 20)) = 8;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_10042BE78, &qword_100393F38);
  }

  return result;
}

uint64_t sub_100290E18(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10042BE78, &qword_100393F38);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_1002C2FB8(v11);
    *(v2 + v7) = v10;
  }

  sub_1002F7BE8(a1, v6, type metadata accessor for Proto_Gpsd_SetAssistanceSignalEnvironment);
  v12 = type metadata accessor for Proto_Gpsd_SetAssistanceSignalEnvironment(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSignalEnvironment;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_10042BE78, &qword_100393F38);
  return swift_endAccess();
}

void (*sub_100290F84(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10042BE78, &qword_100393F38) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gpsd_SetAssistanceSignalEnvironment(0);
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
  v14 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSignalEnvironment;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10042BE78, &qword_100393F38);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    *(v13 + *(v8 + 20)) = 8;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10042BE78, &qword_100393F38);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for Proto_Gpsd_SetAssistanceSignalEnvironment);
  }

  return sub_1002911DC;
}

void sub_1002911DC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1002F7C50(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_SetAssistanceSignalEnvironment);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v9 = swift_allocObject();
      sub_1002C2FB8(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v11, v15, type metadata accessor for Proto_Gpsd_SetAssistanceSignalEnvironment);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSignalEnvironment;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_10042BE78, &qword_100393F38);
    swift_endAccess();
    sub_1002F7CB8(v10, type metadata accessor for Proto_Gpsd_SetAssistanceSignalEnvironment);
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
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v22 = swift_allocObject();
      sub_1002C2FB8(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v10, v15, type metadata accessor for Proto_Gpsd_SetAssistanceSignalEnvironment);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSignalEnvironment;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_10042BE78, &qword_100393F38);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_10029142C()
{
  v1 = sub_100024A2C(&qword_10042BE78, &qword_100393F38);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSignalEnvironment;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_10042BE78, &qword_100393F38);
  v6 = type metadata accessor for Proto_Gpsd_SetAssistanceSignalEnvironment(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_10042BE78, &qword_100393F38);
  return v7;
}

uint64_t sub_10029154C()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10042BE78, &qword_100393F38);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    sub_1002C2FB8(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gpsd_SetAssistanceSignalEnvironment(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSignalEnvironment;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v11, &qword_10042BE78, &qword_100393F38);
  return swift_endAccess();
}

uint64_t sub_100291694@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042BE80, &qword_100393F40);
  __chkstk_darwin(v3 - 8);
  v5 = &v15 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSpeedConstraint;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_10042BE80, &qword_100393F40);
  v8 = type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1002F7BE8(v5, a1, type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint);
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
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_10042BE80, &qword_100393F40);
  }

  return result;
}

int *sub_100291850@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint(0);
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
  return result;
}

uint64_t sub_1002918C0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10042BE80, &qword_100393F40);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_1002C2FB8(v11);
    *(v2 + v7) = v10;
  }

  sub_1002F7BE8(a1, v6, type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint);
  v12 = type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSpeedConstraint;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_10042BE80, &qword_100393F40);
  return swift_endAccess();
}

void (*sub_100291A2C(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10042BE80, &qword_100393F40) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint(0);
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
  v14 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSpeedConstraint;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10042BE80, &qword_100393F40);
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
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10042BE80, &qword_100393F40);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint);
  }

  return sub_100291CBC;
}

void sub_100291CBC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1002F7C50(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v9 = swift_allocObject();
      sub_1002C2FB8(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v11, v15, type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSpeedConstraint;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_10042BE80, &qword_100393F40);
    swift_endAccess();
    sub_1002F7CB8(v10, type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint);
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
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v22 = swift_allocObject();
      sub_1002C2FB8(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v10, v15, type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSpeedConstraint;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_10042BE80, &qword_100393F40);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_100291F0C()
{
  v1 = sub_100024A2C(&qword_10042BE80, &qword_100393F40);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSpeedConstraint;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_10042BE80, &qword_100393F40);
  v6 = type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_10042BE80, &qword_100393F40);
  return v7;
}

uint64_t sub_10029202C()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10042BE80, &qword_100393F40);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    sub_1002C2FB8(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSpeedConstraint;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v11, &qword_10042BE80, &qword_100393F40);
  return swift_endAccess();
}

uint64_t sub_100292174@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042BE88, &qword_100393F48);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAlongTrackVelocity;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_10042BE88, &qword_100393F48);
  v8 = type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1002F7BE8(v5, a1, type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity);
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
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_10042BE88, &qword_100393F48);
  }

  return result;
}

uint64_t sub_100292338(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10042BE88, &qword_100393F48);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_1002C2FB8(v11);
    *(v2 + v7) = v10;
  }

  sub_1002F7BE8(a1, v6, type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity);
  v12 = type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAlongTrackVelocity;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_10042BE88, &qword_100393F48);
  return swift_endAccess();
}

void (*sub_1002924A4(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10042BE88, &qword_100393F48) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity(0);
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
  v14 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAlongTrackVelocity;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10042BE88, &qword_100393F48);
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
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10042BE88, &qword_100393F48);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity);
  }

  return sub_100292724;
}

void sub_100292724(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1002F7C50(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v9 = swift_allocObject();
      sub_1002C2FB8(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v11, v15, type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAlongTrackVelocity;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_10042BE88, &qword_100393F48);
    swift_endAccess();
    sub_1002F7CB8(v10, type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity);
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
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v22 = swift_allocObject();
      sub_1002C2FB8(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v10, v15, type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAlongTrackVelocity;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_10042BE88, &qword_100393F48);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_100292974()
{
  v1 = sub_100024A2C(&qword_10042BE88, &qword_100393F48);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAlongTrackVelocity;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_10042BE88, &qword_100393F48);
  v6 = type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_10042BE88, &qword_100393F48);
  return v7;
}

uint64_t sub_100292A94()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10042BE88, &qword_100393F48);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    sub_1002C2FB8(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAlongTrackVelocity;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v11, &qword_10042BE88, &qword_100393F48);
  return swift_endAccess();
}

uint64_t sub_100292BDC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042BE90, &qword_100393F50);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceFile;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_10042BE90, &qword_100393F50);
  v8 = type metadata accessor for Proto_Gpsd_InjectAssistanceFile(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1002F7BE8(v5, a1, type metadata accessor for Proto_Gpsd_InjectAssistanceFile);
  }

  UnknownStorage.init()();
  *(a1 + *(v8 + 20)) = xmmword_10036D770;
  *(a1 + *(v8 + 24)) = 3;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_10042BE90, &qword_100393F50);
  }

  return result;
}

double sub_100292D70@<D0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for Proto_Gpsd_InjectAssistanceFile(0);
  result = 0.0;
  *(a1 + *(v2 + 20)) = xmmword_10036D770;
  *(a1 + *(v2 + 24)) = 3;
  return result;
}

uint64_t sub_100292DB8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10042BE90, &qword_100393F50);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_1002C2FB8(v11);
    *(v2 + v7) = v10;
  }

  sub_1002F7BE8(a1, v6, type metadata accessor for Proto_Gpsd_InjectAssistanceFile);
  v12 = type metadata accessor for Proto_Gpsd_InjectAssistanceFile(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceFile;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_10042BE90, &qword_100393F50);
  return swift_endAccess();
}

void (*sub_100292F24(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10042BE90, &qword_100393F50) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gpsd_InjectAssistanceFile(0);
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
  v14 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceFile;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10042BE90, &qword_100393F50);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    *(v13 + *(v8 + 20)) = xmmword_10036D770;
    *(v13 + *(v8 + 24)) = 3;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10042BE90, &qword_100393F50);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for Proto_Gpsd_InjectAssistanceFile);
  }

  return sub_10029318C;
}

void sub_10029318C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1002F7C50(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_InjectAssistanceFile);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v9 = swift_allocObject();
      sub_1002C2FB8(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v11, v15, type metadata accessor for Proto_Gpsd_InjectAssistanceFile);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceFile;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_10042BE90, &qword_100393F50);
    swift_endAccess();
    sub_1002F7CB8(v10, type metadata accessor for Proto_Gpsd_InjectAssistanceFile);
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
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v22 = swift_allocObject();
      sub_1002C2FB8(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v10, v15, type metadata accessor for Proto_Gpsd_InjectAssistanceFile);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceFile;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_10042BE90, &qword_100393F50);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_1002933DC()
{
  v1 = sub_100024A2C(&qword_10042BE90, &qword_100393F50);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceFile;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_10042BE90, &qword_100393F50);
  v6 = type metadata accessor for Proto_Gpsd_InjectAssistanceFile(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_10042BE90, &qword_100393F50);
  return v7;
}

uint64_t sub_1002934FC()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10042BE90, &qword_100393F50);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    sub_1002C2FB8(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gpsd_InjectAssistanceFile(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceFile;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v11, &qword_10042BE90, &qword_100393F50);
  return swift_endAccess();
}

uint64_t sub_100293644@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042BE98, &qword_100393F58);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRtiFile;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_10042BE98, &qword_100393F58);
  v8 = type metadata accessor for Proto_Gpsd_InjectRtiFile(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1002F7BE8(v5, a1, type metadata accessor for Proto_Gpsd_InjectRtiFile);
  }

  UnknownStorage.init()();
  *(a1 + *(v8 + 20)) = xmmword_10036D770;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_10042BE98, &qword_100393F58);
  }

  return result;
}

uint64_t sub_1002937E4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10042BE98, &qword_100393F58);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_1002C2FB8(v11);
    *(v2 + v7) = v10;
  }

  sub_1002F7BE8(a1, v6, type metadata accessor for Proto_Gpsd_InjectRtiFile);
  v12 = type metadata accessor for Proto_Gpsd_InjectRtiFile(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRtiFile;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_10042BE98, &qword_100393F58);
  return swift_endAccess();
}

void (*sub_100293950(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10042BE98, &qword_100393F58) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gpsd_InjectRtiFile(0);
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
  v14 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRtiFile;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10042BE98, &qword_100393F58);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    *(v13 + *(v8 + 20)) = xmmword_10036D770;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10042BE98, &qword_100393F58);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for Proto_Gpsd_InjectRtiFile);
  }

  return sub_100293BAC;
}

void sub_100293BAC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1002F7C50(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_InjectRtiFile);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v9 = swift_allocObject();
      sub_1002C2FB8(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v11, v15, type metadata accessor for Proto_Gpsd_InjectRtiFile);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRtiFile;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_10042BE98, &qword_100393F58);
    swift_endAccess();
    sub_1002F7CB8(v10, type metadata accessor for Proto_Gpsd_InjectRtiFile);
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
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v22 = swift_allocObject();
      sub_1002C2FB8(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v10, v15, type metadata accessor for Proto_Gpsd_InjectRtiFile);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRtiFile;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_10042BE98, &qword_100393F58);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_100293DFC()
{
  v1 = sub_100024A2C(&qword_10042BE98, &qword_100393F58);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRtiFile;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_10042BE98, &qword_100393F58);
  v6 = type metadata accessor for Proto_Gpsd_InjectRtiFile(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_10042BE98, &qword_100393F58);
  return v7;
}

uint64_t sub_100293F1C()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10042BE98, &qword_100393F58);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    sub_1002C2FB8(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gpsd_InjectRtiFile(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRtiFile;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v11, &qword_10042BE98, &qword_100393F58);
  return swift_endAccess();
}

uint64_t sub_100294064@<X0>(void *a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042BEA0, &qword_100393F60);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectSvidBlocklist;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_10042BEA0, &qword_100393F60);
  v8 = type metadata accessor for Proto_Gpsd_InjectSvidBlocklist(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1002F7BE8(v5, a1, type metadata accessor for Proto_Gpsd_InjectSvidBlocklist);
  }

  *a1 = &_swiftEmptyArrayStorage;
  UnknownStorage.init()();
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_10042BEA0, &qword_100393F60);
  }

  return result;
}

uint64_t sub_100294204(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10042BEA0, &qword_100393F60);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_1002C2FB8(v11);
    *(v2 + v7) = v10;
  }

  sub_1002F7BE8(a1, v6, type metadata accessor for Proto_Gpsd_InjectSvidBlocklist);
  v12 = type metadata accessor for Proto_Gpsd_InjectSvidBlocklist(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectSvidBlocklist;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_10042BEA0, &qword_100393F60);
  return swift_endAccess();
}

void (*sub_100294370(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10042BEA0, &qword_100393F60) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gpsd_InjectSvidBlocklist(0);
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
  v14 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectSvidBlocklist;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10042BEA0, &qword_100393F60);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    *v13 = &_swiftEmptyArrayStorage;
    UnknownStorage.init()();
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10042BEA0, &qword_100393F60);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for Proto_Gpsd_InjectSvidBlocklist);
  }

  return sub_1002945CC;
}

void sub_1002945CC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1002F7C50(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_InjectSvidBlocklist);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v9 = swift_allocObject();
      sub_1002C2FB8(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v11, v15, type metadata accessor for Proto_Gpsd_InjectSvidBlocklist);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectSvidBlocklist;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_10042BEA0, &qword_100393F60);
    swift_endAccess();
    sub_1002F7CB8(v10, type metadata accessor for Proto_Gpsd_InjectSvidBlocklist);
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
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v22 = swift_allocObject();
      sub_1002C2FB8(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v10, v15, type metadata accessor for Proto_Gpsd_InjectSvidBlocklist);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectSvidBlocklist;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_10042BEA0, &qword_100393F60);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_10029481C()
{
  v1 = sub_100024A2C(&qword_10042BEA0, &qword_100393F60);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectSvidBlocklist;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_10042BEA0, &qword_100393F60);
  v6 = type metadata accessor for Proto_Gpsd_InjectSvidBlocklist(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_10042BEA0, &qword_100393F60);
  return v7;
}

uint64_t sub_10029493C()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10042BEA0, &qword_100393F60);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    sub_1002C2FB8(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gpsd_InjectSvidBlocklist(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectSvidBlocklist;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v11, &qword_10042BEA0, &qword_100393F60);
  return swift_endAccess();
}

uint64_t sub_100294A84@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042BEA8, &qword_100393F68);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__deleteGnssData;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_10042BEA8, &qword_100393F68);
  v8 = type metadata accessor for Proto_Gpsd_DeleteGnssData(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1002F7BE8(v5, a1, type metadata accessor for Proto_Gpsd_DeleteGnssData);
  }

  UnknownStorage.init()();
  v10 = a1 + *(v8 + 20);
  *v10 = 0;
  *(v10 + 8) = 1;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_10042BEA8, &qword_100393F68);
  }

  return result;
}

uint64_t sub_100294C28(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10042BEA8, &qword_100393F68);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_1002C2FB8(v11);
    *(v2 + v7) = v10;
  }

  sub_1002F7BE8(a1, v6, type metadata accessor for Proto_Gpsd_DeleteGnssData);
  v12 = type metadata accessor for Proto_Gpsd_DeleteGnssData(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__deleteGnssData;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_10042BEA8, &qword_100393F68);
  return swift_endAccess();
}

void (*sub_100294D94(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10042BEA8, &qword_100393F68) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gpsd_DeleteGnssData(0);
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
  v14 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__deleteGnssData;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10042BEA8, &qword_100393F68);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = v13 + *(v8 + 20);
    *v18 = 0;
    *(v18 + 8) = 1;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10042BEA8, &qword_100393F68);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for Proto_Gpsd_DeleteGnssData);
  }

  return sub_100294FF4;
}

void sub_100294FF4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1002F7C50(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_DeleteGnssData);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v9 = swift_allocObject();
      sub_1002C2FB8(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v11, v15, type metadata accessor for Proto_Gpsd_DeleteGnssData);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__deleteGnssData;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_10042BEA8, &qword_100393F68);
    swift_endAccess();
    sub_1002F7CB8(v10, type metadata accessor for Proto_Gpsd_DeleteGnssData);
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
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v22 = swift_allocObject();
      sub_1002C2FB8(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v10, v15, type metadata accessor for Proto_Gpsd_DeleteGnssData);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__deleteGnssData;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_10042BEA8, &qword_100393F68);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_100295244()
{
  v1 = sub_100024A2C(&qword_10042BEA8, &qword_100393F68);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__deleteGnssData;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_10042BEA8, &qword_100393F68);
  v6 = type metadata accessor for Proto_Gpsd_DeleteGnssData(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_10042BEA8, &qword_100393F68);
  return v7;
}

uint64_t sub_100295364()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10042BEA8, &qword_100393F68);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    sub_1002C2FB8(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gpsd_DeleteGnssData(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__deleteGnssData;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v11, &qword_10042BEA8, &qword_100393F68);
  return swift_endAccess();
}

uint64_t sub_1002954AC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042BEB0, &qword_100393F70);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setPvtmReport;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_10042BEB0, &qword_100393F70);
  v8 = type metadata accessor for Proto_Gpsd_SetPvtmReport(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1002F7BE8(v5, a1, type metadata accessor for Proto_Gpsd_SetPvtmReport);
  }

  UnknownStorage.init()();
  *(a1 + v8[5]) = 2;
  *(a1 + v8[6]) = 2;
  *(a1 + v8[7]) = 2;
  *(a1 + v8[8]) = 2;
  *(a1 + v8[9]) = 2;
  *(a1 + v8[10]) = 2;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_10042BEB0, &qword_100393F70);
  }

  return result;
}

int *sub_100295658@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gpsd_SetPvtmReport(0);
  *(a1 + result[5]) = 2;
  *(a1 + result[6]) = 2;
  *(a1 + result[7]) = 2;
  *(a1 + result[8]) = 2;
  *(a1 + result[9]) = 2;
  *(a1 + result[10]) = 2;
  return result;
}

uint64_t sub_1002956B8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10042BEB0, &qword_100393F70);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_1002C2FB8(v11);
    *(v2 + v7) = v10;
  }

  sub_1002F7BE8(a1, v6, type metadata accessor for Proto_Gpsd_SetPvtmReport);
  v12 = type metadata accessor for Proto_Gpsd_SetPvtmReport(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setPvtmReport;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_10042BEB0, &qword_100393F70);
  return swift_endAccess();
}

void (*sub_100295824(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10042BEB0, &qword_100393F70) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gpsd_SetPvtmReport(0);
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
  v14 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setPvtmReport;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10042BEB0, &qword_100393F70);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    *(v13 + v8[5]) = 2;
    *(v13 + v8[6]) = 2;
    *(v13 + v8[7]) = 2;
    *(v13 + v8[8]) = 2;
    *(v13 + v8[9]) = 2;
    *(v13 + v8[10]) = 2;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10042BEB0, &qword_100393F70);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for Proto_Gpsd_SetPvtmReport);
  }

  return sub_100295AA4;
}

void sub_100295AA4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1002F7C50(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_SetPvtmReport);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v9 = swift_allocObject();
      sub_1002C2FB8(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v11, v15, type metadata accessor for Proto_Gpsd_SetPvtmReport);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setPvtmReport;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_10042BEB0, &qword_100393F70);
    swift_endAccess();
    sub_1002F7CB8(v10, type metadata accessor for Proto_Gpsd_SetPvtmReport);
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
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v22 = swift_allocObject();
      sub_1002C2FB8(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v10, v15, type metadata accessor for Proto_Gpsd_SetPvtmReport);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setPvtmReport;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_10042BEB0, &qword_100393F70);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_100295CF4()
{
  v1 = sub_100024A2C(&qword_10042BEB0, &qword_100393F70);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setPvtmReport;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_10042BEB0, &qword_100393F70);
  v6 = type metadata accessor for Proto_Gpsd_SetPvtmReport(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_10042BEB0, &qword_100393F70);
  return v7;
}

uint64_t sub_100295E14()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10042BEB0, &qword_100393F70);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    sub_1002C2FB8(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gpsd_SetPvtmReport(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setPvtmReport;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v11, &qword_10042BEB0, &qword_100393F70);
  return swift_endAccess();
}

uint64_t sub_100295F5C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042BEB8, &qword_100393F78);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setNmeaHandler;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_10042BEB8, &qword_100393F78);
  v8 = type metadata accessor for Proto_Gpsd_SetNmeaHandler(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1002F7BE8(v5, a1, type metadata accessor for Proto_Gpsd_SetNmeaHandler);
  }

  UnknownStorage.init()();
  v10 = a1 + *(v8 + 20);
  *v10 = 0;
  *(v10 + 8) = 1;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_10042BEB8, &qword_100393F78);
  }

  return result;
}

uint64_t sub_100296100@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  result = a1(0);
  v5 = a2 + *(result + 20);
  *v5 = 0;
  *(v5 + 8) = 1;
  return result;
}

uint64_t sub_100296148(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10042BEB8, &qword_100393F78);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_1002C2FB8(v11);
    *(v2 + v7) = v10;
  }

  sub_1002F7BE8(a1, v6, type metadata accessor for Proto_Gpsd_SetNmeaHandler);
  v12 = type metadata accessor for Proto_Gpsd_SetNmeaHandler(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setNmeaHandler;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_10042BEB8, &qword_100393F78);
  return swift_endAccess();
}

void (*sub_1002962B4(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10042BEB8, &qword_100393F78) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gpsd_SetNmeaHandler(0);
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
  v14 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setNmeaHandler;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10042BEB8, &qword_100393F78);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = v13 + *(v8 + 20);
    *v18 = 0;
    *(v18 + 8) = 1;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10042BEB8, &qword_100393F78);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for Proto_Gpsd_SetNmeaHandler);
  }

  return sub_100296514;
}

void sub_100296514(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1002F7C50(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_SetNmeaHandler);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v9 = swift_allocObject();
      sub_1002C2FB8(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v11, v15, type metadata accessor for Proto_Gpsd_SetNmeaHandler);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setNmeaHandler;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_10042BEB8, &qword_100393F78);
    swift_endAccess();
    sub_1002F7CB8(v10, type metadata accessor for Proto_Gpsd_SetNmeaHandler);
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
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v22 = swift_allocObject();
      sub_1002C2FB8(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v10, v15, type metadata accessor for Proto_Gpsd_SetNmeaHandler);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setNmeaHandler;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_10042BEB8, &qword_100393F78);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_100296764()
{
  v1 = sub_100024A2C(&qword_10042BEB8, &qword_100393F78);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setNmeaHandler;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_10042BEB8, &qword_100393F78);
  v6 = type metadata accessor for Proto_Gpsd_SetNmeaHandler(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_10042BEB8, &qword_100393F78);
  return v7;
}

uint64_t sub_100296884()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10042BEB8, &qword_100393F78);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    sub_1002C2FB8(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gpsd_SetNmeaHandler(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setNmeaHandler;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v11, &qword_10042BEB8, &qword_100393F78);
  return swift_endAccess();
}

uint64_t sub_1002969CC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042BEC0, &qword_100393F80);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigSimulatorMode;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_10042BEC0, &qword_100393F80);
  v8 = type metadata accessor for Proto_Gpsd_SetConfigSimulatorMode(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1002F7BE8(v5, a1, type metadata accessor for Proto_Gpsd_SetConfigSimulatorMode);
  }

  UnknownStorage.init()();
  *(a1 + *(v8 + 20)) = 2;
  v10 = a1 + *(v8 + 24);
  *v10 = 0;
  *(v10 + 4) = 1;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_10042BEC0, &qword_100393F80);
  }

  return result;
}

uint64_t sub_100296B64@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gpsd_SetConfigSimulatorMode(0);
  *(a1 + *(result + 20)) = 2;
  v3 = a1 + *(result + 24);
  *v3 = 0;
  *(v3 + 4) = 1;
  return result;
}

uint64_t sub_100296BB0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10042BEC0, &qword_100393F80);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_1002C2FB8(v11);
    *(v2 + v7) = v10;
  }

  sub_1002F7BE8(a1, v6, type metadata accessor for Proto_Gpsd_SetConfigSimulatorMode);
  v12 = type metadata accessor for Proto_Gpsd_SetConfigSimulatorMode(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigSimulatorMode;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_10042BEC0, &qword_100393F80);
  return swift_endAccess();
}

void (*sub_100296D1C(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10042BEC0, &qword_100393F80) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gpsd_SetConfigSimulatorMode(0);
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
  v14 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigSimulatorMode;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10042BEC0, &qword_100393F80);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    *(v13 + *(v8 + 20)) = 2;
    v18 = v13 + *(v8 + 24);
    *v18 = 0;
    *(v18 + 4) = 1;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10042BEC0, &qword_100393F80);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for Proto_Gpsd_SetConfigSimulatorMode);
  }

  return sub_100296F88;
}

void sub_100296F88(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1002F7C50(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_SetConfigSimulatorMode);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v9 = swift_allocObject();
      sub_1002C2FB8(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v11, v15, type metadata accessor for Proto_Gpsd_SetConfigSimulatorMode);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigSimulatorMode;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_10042BEC0, &qword_100393F80);
    swift_endAccess();
    sub_1002F7CB8(v10, type metadata accessor for Proto_Gpsd_SetConfigSimulatorMode);
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
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v22 = swift_allocObject();
      sub_1002C2FB8(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v10, v15, type metadata accessor for Proto_Gpsd_SetConfigSimulatorMode);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigSimulatorMode;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_10042BEC0, &qword_100393F80);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_1002971D8()
{
  v1 = sub_100024A2C(&qword_10042BEC0, &qword_100393F80);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigSimulatorMode;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_10042BEC0, &qword_100393F80);
  v6 = type metadata accessor for Proto_Gpsd_SetConfigSimulatorMode(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_10042BEC0, &qword_100393F80);
  return v7;
}

uint64_t sub_1002972F8()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10042BEC0, &qword_100393F80);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    sub_1002C2FB8(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gpsd_SetConfigSimulatorMode(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigSimulatorMode;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v11, &qword_10042BEC0, &qword_100393F80);
  return swift_endAccess();
}

uint64_t sub_100297440@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042BEC8, &qword_100393F88);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigEnableGnssConstellations;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_10042BEC8, &qword_100393F88);
  v8 = type metadata accessor for Proto_Gpsd_SetConfigEnableGnssConstellations(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1002F7BE8(v5, a1, type metadata accessor for Proto_Gpsd_SetConfigEnableGnssConstellations);
  }

  UnknownStorage.init()();
  v10 = a1 + *(v8 + 20);
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + *(v8 + 24);
  *v11 = 0;
  *(v11 + 4) = 1;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_10042BEC8, &qword_100393F88);
  }

  return result;
}

uint64_t sub_1002975F4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10042BEC8, &qword_100393F88);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_1002C2FB8(v11);
    *(v2 + v7) = v10;
  }

  sub_1002F7BE8(a1, v6, type metadata accessor for Proto_Gpsd_SetConfigEnableGnssConstellations);
  v12 = type metadata accessor for Proto_Gpsd_SetConfigEnableGnssConstellations(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigEnableGnssConstellations;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_10042BEC8, &qword_100393F88);
  return swift_endAccess();
}

void (*sub_100297760(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10042BEC8, &qword_100393F88) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gpsd_SetConfigEnableGnssConstellations(0);
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
  v14 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigEnableGnssConstellations;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10042BEC8, &qword_100393F88);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = v13 + *(v8 + 20);
    *v18 = 0;
    *(v18 + 4) = 1;
    v19 = v13 + *(v8 + 24);
    *v19 = 0;
    *(v19 + 4) = 1;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10042BEC8, &qword_100393F88);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for Proto_Gpsd_SetConfigEnableGnssConstellations);
  }

  return sub_1002979D0;
}

void sub_1002979D0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1002F7C50(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_SetConfigEnableGnssConstellations);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v9 = swift_allocObject();
      sub_1002C2FB8(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v11, v15, type metadata accessor for Proto_Gpsd_SetConfigEnableGnssConstellations);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigEnableGnssConstellations;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_10042BEC8, &qword_100393F88);
    swift_endAccess();
    sub_1002F7CB8(v10, type metadata accessor for Proto_Gpsd_SetConfigEnableGnssConstellations);
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
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v22 = swift_allocObject();
      sub_1002C2FB8(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v10, v15, type metadata accessor for Proto_Gpsd_SetConfigEnableGnssConstellations);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigEnableGnssConstellations;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_10042BEC8, &qword_100393F88);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_100297C20()
{
  v1 = sub_100024A2C(&qword_10042BEC8, &qword_100393F88);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigEnableGnssConstellations;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_10042BEC8, &qword_100393F88);
  v6 = type metadata accessor for Proto_Gpsd_SetConfigEnableGnssConstellations(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_10042BEC8, &qword_100393F88);
  return v7;
}

uint64_t sub_100297D40()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10042BEC8, &qword_100393F88);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    sub_1002C2FB8(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gpsd_SetConfigEnableGnssConstellations(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigEnableGnssConstellations;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v11, &qword_10042BEC8, &qword_100393F88);
  return swift_endAccess();
}

uint64_t sub_100297E88@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042BED0, &qword_100393F90);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigDutyCycling;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_10042BED0, &qword_100393F90);
  v8 = type metadata accessor for Proto_Gpsd_SetConfigDutyCycling(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1002F7BE8(v5, a1, type metadata accessor for Proto_Gpsd_SetConfigDutyCycling);
  }

  UnknownStorage.init()();
  *(a1 + *(v8 + 20)) = 2;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_10042BED0, &qword_100393F90);
  }

  return result;
}

uint64_t sub_100298028@<X0>(uint64_t (*a1)(void)@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  UnknownStorage.init()();
  result = a1(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_100298070(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10042BED0, &qword_100393F90);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_1002C2FB8(v11);
    *(v2 + v7) = v10;
  }

  sub_1002F7BE8(a1, v6, type metadata accessor for Proto_Gpsd_SetConfigDutyCycling);
  v12 = type metadata accessor for Proto_Gpsd_SetConfigDutyCycling(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigDutyCycling;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_10042BED0, &qword_100393F90);
  return swift_endAccess();
}

void (*sub_1002981DC(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10042BED0, &qword_100393F90) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gpsd_SetConfigDutyCycling(0);
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
  v14 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigDutyCycling;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10042BED0, &qword_100393F90);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    *(v13 + *(v8 + 20)) = 2;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10042BED0, &qword_100393F90);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for Proto_Gpsd_SetConfigDutyCycling);
  }

  return sub_100298434;
}

void sub_100298434(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1002F7C50(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_SetConfigDutyCycling);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v9 = swift_allocObject();
      sub_1002C2FB8(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v11, v15, type metadata accessor for Proto_Gpsd_SetConfigDutyCycling);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigDutyCycling;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_10042BED0, &qword_100393F90);
    swift_endAccess();
    sub_1002F7CB8(v10, type metadata accessor for Proto_Gpsd_SetConfigDutyCycling);
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
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v22 = swift_allocObject();
      sub_1002C2FB8(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v10, v15, type metadata accessor for Proto_Gpsd_SetConfigDutyCycling);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigDutyCycling;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_10042BED0, &qword_100393F90);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_100298684()
{
  v1 = sub_100024A2C(&qword_10042BED0, &qword_100393F90);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigDutyCycling;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_10042BED0, &qword_100393F90);
  v6 = type metadata accessor for Proto_Gpsd_SetConfigDutyCycling(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_10042BED0, &qword_100393F90);
  return v7;
}

uint64_t sub_1002987A4()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10042BED0, &qword_100393F90);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    sub_1002C2FB8(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gpsd_SetConfigDutyCycling(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigDutyCycling;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v11, &qword_10042BED0, &qword_100393F90);
  return swift_endAccess();
}

uint64_t sub_1002988EC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042BED8, &qword_100393F98);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__terminationImminent;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_10042BED8, &qword_100393F98);
  v8 = type metadata accessor for Proto_Gpsd_TerminationImminent(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1002F7BE8(v5, a1, type metadata accessor for Proto_Gpsd_TerminationImminent);
  }

  UnknownStorage.init()();
  v10 = (a1 + *(v8 + 20));
  *v10 = 0;
  v10[1] = 0;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_10042BED8, &qword_100393F98);
  }

  return result;
}

uint64_t sub_100298A88(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10042BED8, &qword_100393F98);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_1002C2FB8(v11);
    *(v2 + v7) = v10;
  }

  sub_1002F7BE8(a1, v6, type metadata accessor for Proto_Gpsd_TerminationImminent);
  v12 = type metadata accessor for Proto_Gpsd_TerminationImminent(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__terminationImminent;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_10042BED8, &qword_100393F98);
  return swift_endAccess();
}

void (*sub_100298BF4(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10042BED8, &qword_100393F98) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gpsd_TerminationImminent(0);
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
  v14 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__terminationImminent;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10042BED8, &qword_100393F98);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = (v13 + *(v8 + 20));
    *v18 = 0;
    v18[1] = 0;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10042BED8, &qword_100393F98);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for Proto_Gpsd_TerminationImminent);
  }

  return sub_100298E4C;
}

void sub_100298E4C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1002F7C50(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_TerminationImminent);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v9 = swift_allocObject();
      sub_1002C2FB8(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v11, v15, type metadata accessor for Proto_Gpsd_TerminationImminent);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__terminationImminent;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_10042BED8, &qword_100393F98);
    swift_endAccess();
    sub_1002F7CB8(v10, type metadata accessor for Proto_Gpsd_TerminationImminent);
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
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v22 = swift_allocObject();
      sub_1002C2FB8(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v10, v15, type metadata accessor for Proto_Gpsd_TerminationImminent);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__terminationImminent;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_10042BED8, &qword_100393F98);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_10029909C()
{
  v1 = sub_100024A2C(&qword_10042BED8, &qword_100393F98);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__terminationImminent;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_10042BED8, &qword_100393F98);
  v6 = type metadata accessor for Proto_Gpsd_TerminationImminent(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_10042BED8, &qword_100393F98);
  return v7;
}

uint64_t sub_1002991BC()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10042BED8, &qword_100393F98);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    sub_1002C2FB8(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gpsd_TerminationImminent(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__terminationImminent;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v11, &qword_10042BED8, &qword_100393F98);
  return swift_endAccess();
}

uint64_t sub_100299304@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042BEE0, &qword_100393FA0);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__exitMessage;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_10042BEE0, &qword_100393FA0);
  v8 = type metadata accessor for Proto_Gpsd_ExitMessage(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1002F7BE8(v5, a1, type metadata accessor for Proto_Gpsd_ExitMessage);
  }

  UnknownStorage.init()();
  v10 = (a1 + *(v8 + 20));
  *v10 = 0;
  v10[1] = 0;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_10042BEE0, &qword_100393FA0);
  }

  return result;
}

uint64_t sub_1002994A0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  result = a1(0);
  v5 = (a2 + *(result + 20));
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t sub_1002994E0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10042BEE0, &qword_100393FA0);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_1002C2FB8(v11);
    *(v2 + v7) = v10;
  }

  sub_1002F7BE8(a1, v6, type metadata accessor for Proto_Gpsd_ExitMessage);
  v12 = type metadata accessor for Proto_Gpsd_ExitMessage(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__exitMessage;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_10042BEE0, &qword_100393FA0);
  return swift_endAccess();
}

void (*sub_10029964C(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10042BEE0, &qword_100393FA0) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gpsd_ExitMessage(0);
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
  v14 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__exitMessage;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10042BEE0, &qword_100393FA0);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = (v13 + *(v8 + 20));
    *v18 = 0;
    v18[1] = 0;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10042BEE0, &qword_100393FA0);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for Proto_Gpsd_ExitMessage);
  }

  return sub_1002998A4;
}

void sub_1002998A4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1002F7C50(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_ExitMessage);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v9 = swift_allocObject();
      sub_1002C2FB8(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v11, v15, type metadata accessor for Proto_Gpsd_ExitMessage);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__exitMessage;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_10042BEE0, &qword_100393FA0);
    swift_endAccess();
    sub_1002F7CB8(v10, type metadata accessor for Proto_Gpsd_ExitMessage);
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
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v22 = swift_allocObject();
      sub_1002C2FB8(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v10, v15, type metadata accessor for Proto_Gpsd_ExitMessage);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__exitMessage;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_10042BEE0, &qword_100393FA0);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_100299AF4()
{
  v1 = sub_100024A2C(&qword_10042BEE0, &qword_100393FA0);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__exitMessage;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_10042BEE0, &qword_100393FA0);
  v6 = type metadata accessor for Proto_Gpsd_ExitMessage(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_10042BEE0, &qword_100393FA0);
  return v7;
}

uint64_t sub_100299C14()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10042BEE0, &qword_100393FA0);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    sub_1002C2FB8(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gpsd_ExitMessage(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__exitMessage;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v11, &qword_10042BEE0, &qword_100393FA0);
  return swift_endAccess();
}

uint64_t sub_100299D5C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042BEE8, &qword_100393FA8);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectLtlInfo;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_10042BEE8, &qword_100393FA8);
  v8 = type metadata accessor for Proto_Gpsd_LtlInfo(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1002F7BE8(v5, a1, type metadata accessor for Proto_Gpsd_LtlInfo);
  }

  UnknownStorage.init()();
  v10 = *(v8 + 20);
  if (qword_100480FB0 != -1)
  {
    swift_once();
  }

  *(a1 + v10) = qword_100480FB8;
  v11 = v9(v5, 1, v8);

  if (v11 != 1)
  {
    return sub_1000059A8(v5, &qword_10042BEE8, &qword_100393FA8);
  }

  return result;
}

uint64_t sub_100299F60(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10042BEE8, &qword_100393FA8);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_1002C2FB8(v11);
    *(v2 + v7) = v10;
  }

  sub_1002F7BE8(a1, v6, type metadata accessor for Proto_Gpsd_LtlInfo);
  v12 = type metadata accessor for Proto_Gpsd_LtlInfo(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectLtlInfo;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_10042BEE8, &qword_100393FA8);
  return swift_endAccess();
}

void (*sub_10029A0CC(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10042BEE8, &qword_100393FA8) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gpsd_LtlInfo(0);
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
  v14 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectLtlInfo;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10042BEE8, &qword_100393FA8);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = *(v8 + 20);
    if (qword_100480FB0 != -1)
    {
      swift_once();
    }

    *(v13 + v18) = qword_100480FB8;
    v19 = v17(v7, 1, v8);

    if (v19 != 1)
    {
      sub_1000059A8(v7, &qword_10042BEE8, &qword_100393FA8);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for Proto_Gpsd_LtlInfo);
  }

  return sub_10029A364;
}

void sub_10029A364(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1002F7C50(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_LtlInfo);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v9 = swift_allocObject();
      sub_1002C2FB8(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v11, v15, type metadata accessor for Proto_Gpsd_LtlInfo);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectLtlInfo;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_10042BEE8, &qword_100393FA8);
    swift_endAccess();
    sub_1002F7CB8(v10, type metadata accessor for Proto_Gpsd_LtlInfo);
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
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v22 = swift_allocObject();
      sub_1002C2FB8(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v10, v15, type metadata accessor for Proto_Gpsd_LtlInfo);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectLtlInfo;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_10042BEE8, &qword_100393FA8);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_10029A5B4()
{
  v1 = sub_100024A2C(&qword_10042BEE8, &qword_100393FA8);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectLtlInfo;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_10042BEE8, &qword_100393FA8);
  v6 = type metadata accessor for Proto_Gpsd_LtlInfo(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_10042BEE8, &qword_100393FA8);
  return v7;
}

uint64_t sub_10029A6D4()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10042BEE8, &qword_100393FA8);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    sub_1002C2FB8(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gpsd_LtlInfo(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectLtlInfo;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v11, &qword_10042BEE8, &qword_100393FA8);
  return swift_endAccess();
}

uint64_t sub_10029A81C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042BEF0, &qword_100393FB0);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__startContext;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_10042BEF0, &qword_100393FB0);
  started = type metadata accessor for Proto_Gpsd_StartContext(0);
  v9 = *(*(started - 1) + 48);
  if (v9(v5, 1, started) != 1)
  {
    return sub_1002F7BE8(v5, a1, type metadata accessor for Proto_Gpsd_StartContext);
  }

  UnknownStorage.init()();
  *(a1 + started[5]) = 2;
  *(a1 + started[6]) = 2;
  *(a1 + started[7]) = 2;
  v10 = a1 + started[8];
  *v10 = 0;
  *(v10 + 8) = 1;
  *(a1 + started[9]) = 2;
  result = (v9)(v5, 1, started);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_10042BEF0, &qword_100393FB0);
  }

  return result;
}

int *sub_10029A9CC@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gpsd_StartContext(0);
  *(a1 + result[5]) = 2;
  *(a1 + result[6]) = 2;
  *(a1 + result[7]) = 2;
  v3 = a1 + result[8];
  *v3 = 0;
  *(v3 + 8) = 1;
  *(a1 + result[9]) = 2;
  return result;
}

uint64_t sub_10029AA30(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10042BEF0, &qword_100393FB0);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_1002C2FB8(v11);
    *(v2 + v7) = v10;
  }

  sub_1002F7BE8(a1, v6, type metadata accessor for Proto_Gpsd_StartContext);
  started = type metadata accessor for Proto_Gpsd_StartContext(0);
  (*(*(started - 8) + 56))(v6, 0, 1, started);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__startContext;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_10042BEF0, &qword_100393FB0);
  return swift_endAccess();
}

void (*sub_10029AB9C(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10042BEF0, &qword_100393FB0) - 8) + 64);
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
  started = type metadata accessor for Proto_Gpsd_StartContext(0);
  *(v4 + 96) = started;
  v9 = *(started - 1);
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
  v14 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__startContext;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10042BEF0, &qword_100393FB0);
  v17 = *(v10 + 48);
  if (v17(v7, 1, started) == 1)
  {
    UnknownStorage.init()();
    *(v13 + started[5]) = 2;
    *(v13 + started[6]) = 2;
    *(v13 + started[7]) = 2;
    v18 = v13 + started[8];
    *v18 = 0;
    *(v18 + 8) = 1;
    *(v13 + started[9]) = 2;
    if (v17(v7, 1, started) != 1)
    {
      sub_1000059A8(v7, &qword_10042BEF0, &qword_100393FB0);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for Proto_Gpsd_StartContext);
  }

  return sub_10029AE20;
}

void sub_10029AE20(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1002F7C50(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_StartContext);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v9 = swift_allocObject();
      sub_1002C2FB8(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v11, v15, type metadata accessor for Proto_Gpsd_StartContext);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__startContext;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_10042BEF0, &qword_100393FB0);
    swift_endAccess();
    sub_1002F7CB8(v10, type metadata accessor for Proto_Gpsd_StartContext);
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
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v22 = swift_allocObject();
      sub_1002C2FB8(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v10, v15, type metadata accessor for Proto_Gpsd_StartContext);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__startContext;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_10042BEF0, &qword_100393FB0);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_10029B070()
{
  v1 = sub_100024A2C(&qword_10042BEF0, &qword_100393FB0);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__startContext;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_10042BEF0, &qword_100393FB0);
  started = type metadata accessor for Proto_Gpsd_StartContext(0);
  v7 = (*(*(started - 8) + 48))(v3, 1, started) != 1;
  sub_1000059A8(v3, &qword_10042BEF0, &qword_100393FB0);
  return v7;
}

uint64_t sub_10029B190()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10042BEF0, &qword_100393FB0);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    sub_1002C2FB8(v9);
    *(v1 + v5) = v8;
  }

  started = type metadata accessor for Proto_Gpsd_StartContext(0);
  (*(*(started - 8) + 56))(v4, 1, 1, started);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__startContext;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v11, &qword_10042BEF0, &qword_100393FB0);
  return swift_endAccess();
}

uint64_t sub_10029B2D8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042BEF8, &qword_100393FB8);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setThermalRiskState;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_10042BEF8, &qword_100393FB8);
  v8 = type metadata accessor for Proto_Gpsd_SetThermalRiskState(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1002F7BE8(v5, a1, type metadata accessor for Proto_Gpsd_SetThermalRiskState);
  }

  UnknownStorage.init()();
  v10 = a1 + *(v8 + 20);
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a1 + *(v8 + 24);
  *v11 = 0;
  *(v11 + 4) = 1;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_10042BEF8, &qword_100393FB8);
  }

  return result;
}

uint64_t sub_10029B474@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gpsd_SetThermalRiskState(0);
  v3 = a1 + *(result + 20);
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = a1 + *(result + 24);
  *v4 = 0;
  *(v4 + 4) = 1;
  return result;
}

uint64_t sub_10029B4C4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10042BEF8, &qword_100393FB8);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_1002C2FB8(v11);
    *(v2 + v7) = v10;
  }

  sub_1002F7BE8(a1, v6, type metadata accessor for Proto_Gpsd_SetThermalRiskState);
  v12 = type metadata accessor for Proto_Gpsd_SetThermalRiskState(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setThermalRiskState;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_10042BEF8, &qword_100393FB8);
  return swift_endAccess();
}

void (*sub_10029B630(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10042BEF8, &qword_100393FB8) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gpsd_SetThermalRiskState(0);
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
  v14 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setThermalRiskState;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10042BEF8, &qword_100393FB8);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = v13 + *(v8 + 20);
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = v13 + *(v8 + 24);
    *v19 = 0;
    *(v19 + 4) = 1;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10042BEF8, &qword_100393FB8);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for Proto_Gpsd_SetThermalRiskState);
  }

  return sub_10029B8A0;
}

void sub_10029B8A0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1002F7C50(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_SetThermalRiskState);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v9 = swift_allocObject();
      sub_1002C2FB8(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v11, v15, type metadata accessor for Proto_Gpsd_SetThermalRiskState);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setThermalRiskState;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_10042BEF8, &qword_100393FB8);
    swift_endAccess();
    sub_1002F7CB8(v10, type metadata accessor for Proto_Gpsd_SetThermalRiskState);
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
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v22 = swift_allocObject();
      sub_1002C2FB8(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v10, v15, type metadata accessor for Proto_Gpsd_SetThermalRiskState);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setThermalRiskState;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_10042BEF8, &qword_100393FB8);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_10029BAF0()
{
  v1 = sub_100024A2C(&qword_10042BEF8, &qword_100393FB8);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setThermalRiskState;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_10042BEF8, &qword_100393FB8);
  v6 = type metadata accessor for Proto_Gpsd_SetThermalRiskState(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_10042BEF8, &qword_100393FB8);
  return v7;
}

uint64_t sub_10029BC10()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10042BEF8, &qword_100393FB8);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    sub_1002C2FB8(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gpsd_SetThermalRiskState(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setThermalRiskState;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v11, &qword_10042BEF8, &qword_100393FB8);
  return swift_endAccess();
}

uint64_t sub_10029BD58@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042BF00, &qword_100393FC0);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigRfBandEnable;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_10042BF00, &qword_100393FC0);
  v8 = type metadata accessor for Proto_Gpsd_SetConfigRfBandEnable(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1002F7BE8(v5, a1, type metadata accessor for Proto_Gpsd_SetConfigRfBandEnable);
  }

  UnknownStorage.init()();
  *(a1 + *(v8 + 20)) = 2;
  *(a1 + *(v8 + 24)) = 2;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_10042BF00, &qword_100393FC0);
  }

  return result;
}

uint64_t sub_10029BEE4@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gpsd_SetConfigRfBandEnable(0);
  *(a1 + *(result + 20)) = 2;
  *(a1 + *(result + 24)) = 2;
  return result;
}

uint64_t sub_10029BF24(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10042BF00, &qword_100393FC0);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_1002C2FB8(v11);
    *(v2 + v7) = v10;
  }

  sub_1002F7BE8(a1, v6, type metadata accessor for Proto_Gpsd_SetConfigRfBandEnable);
  v12 = type metadata accessor for Proto_Gpsd_SetConfigRfBandEnable(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigRfBandEnable;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_10042BF00, &qword_100393FC0);
  return swift_endAccess();
}

void (*sub_10029C090(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10042BF00, &qword_100393FC0) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gpsd_SetConfigRfBandEnable(0);
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
  v14 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigRfBandEnable;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10042BF00, &qword_100393FC0);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    *(v13 + *(v8 + 20)) = 2;
    *(v13 + *(v8 + 24)) = 2;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10042BF00, &qword_100393FC0);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for Proto_Gpsd_SetConfigRfBandEnable);
  }

  return sub_10029C2F0;
}

void sub_10029C2F0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1002F7C50(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_SetConfigRfBandEnable);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v9 = swift_allocObject();
      sub_1002C2FB8(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v11, v15, type metadata accessor for Proto_Gpsd_SetConfigRfBandEnable);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigRfBandEnable;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_10042BF00, &qword_100393FC0);
    swift_endAccess();
    sub_1002F7CB8(v10, type metadata accessor for Proto_Gpsd_SetConfigRfBandEnable);
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
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v22 = swift_allocObject();
      sub_1002C2FB8(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v10, v15, type metadata accessor for Proto_Gpsd_SetConfigRfBandEnable);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigRfBandEnable;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_10042BF00, &qword_100393FC0);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_10029C540()
{
  v1 = sub_100024A2C(&qword_10042BF00, &qword_100393FC0);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigRfBandEnable;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_10042BF00, &qword_100393FC0);
  v6 = type metadata accessor for Proto_Gpsd_SetConfigRfBandEnable(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_10042BF00, &qword_100393FC0);
  return v7;
}

uint64_t sub_10029C660()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10042BF00, &qword_100393FC0);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    sub_1002C2FB8(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gpsd_SetConfigRfBandEnable(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigRfBandEnable;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v11, &qword_10042BF00, &qword_100393FC0);
  return swift_endAccess();
}

uint64_t sub_10029C7A8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042BF08, &qword_100393FC8);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRavenOrbitFile;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_10042BF08, &qword_100393FC8);
  v8 = type metadata accessor for Proto_Gpsd_InjectRavenOrbitFile(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1002F7BE8(v5, a1, type metadata accessor for Proto_Gpsd_InjectRavenOrbitFile);
  }

  UnknownStorage.init()();
  *(a1 + *(v8 + 20)) = xmmword_10036D770;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_10042BF08, &qword_100393FC8);
  }

  return result;
}

double sub_10029C948@<D0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1(0);
  result = 0.0;
  *(a2 + *(v4 + 20)) = xmmword_10036D770;
  return result;
}

uint64_t sub_10029C98C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10042BF08, &qword_100393FC8);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_1002C2FB8(v11);
    *(v2 + v7) = v10;
  }

  sub_1002F7BE8(a1, v6, type metadata accessor for Proto_Gpsd_InjectRavenOrbitFile);
  v12 = type metadata accessor for Proto_Gpsd_InjectRavenOrbitFile(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRavenOrbitFile;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_10042BF08, &qword_100393FC8);
  return swift_endAccess();
}

void (*sub_10029CAF8(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10042BF08, &qword_100393FC8) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gpsd_InjectRavenOrbitFile(0);
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
  v14 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRavenOrbitFile;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10042BF08, &qword_100393FC8);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    *(v13 + *(v8 + 20)) = xmmword_10036D770;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10042BF08, &qword_100393FC8);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for Proto_Gpsd_InjectRavenOrbitFile);
  }

  return sub_10029CD54;
}

void sub_10029CD54(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1002F7C50(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_InjectRavenOrbitFile);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v9 = swift_allocObject();
      sub_1002C2FB8(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v11, v15, type metadata accessor for Proto_Gpsd_InjectRavenOrbitFile);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRavenOrbitFile;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_10042BF08, &qword_100393FC8);
    swift_endAccess();
    sub_1002F7CB8(v10, type metadata accessor for Proto_Gpsd_InjectRavenOrbitFile);
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
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v22 = swift_allocObject();
      sub_1002C2FB8(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v10, v15, type metadata accessor for Proto_Gpsd_InjectRavenOrbitFile);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRavenOrbitFile;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_10042BF08, &qword_100393FC8);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_10029CFA4()
{
  v1 = sub_100024A2C(&qword_10042BF08, &qword_100393FC8);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRavenOrbitFile;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_10042BF08, &qword_100393FC8);
  v6 = type metadata accessor for Proto_Gpsd_InjectRavenOrbitFile(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_10042BF08, &qword_100393FC8);
  return v7;
}

uint64_t sub_10029D0C4()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10042BF08, &qword_100393FC8);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    sub_1002C2FB8(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gpsd_InjectRavenOrbitFile(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRavenOrbitFile;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v11, &qword_10042BF08, &qword_100393FC8);
  return swift_endAccess();
}

uint64_t sub_10029D20C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042BF10, &qword_100393FD0);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__emergConfig;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_10042BF10, &qword_100393FD0);
  v8 = type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1002F7BE8(v5, a1, type metadata accessor for Proto_Gnss_Emergency_EmergConfig);
  }

  sub_1001E6CBC(a1);
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_10042BF10, &qword_100393FD0);
  }

  return result;
}

uint64_t sub_10029D384(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10042BF10, &qword_100393FD0);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_1002C2FB8(v11);
    *(v2 + v7) = v10;
  }

  sub_1002F7BE8(a1, v6, type metadata accessor for Proto_Gnss_Emergency_EmergConfig);
  v12 = type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__emergConfig;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_10042BF10, &qword_100393FD0);
  return swift_endAccess();
}

void (*sub_10029D4F0(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10042BF10, &qword_100393FD0) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0);
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
  v14 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__emergConfig;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10042BF10, &qword_100393FD0);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    sub_1001E6CBC(v13);
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10042BF10, &qword_100393FD0);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for Proto_Gnss_Emergency_EmergConfig);
  }

  return sub_10029D73C;
}

void sub_10029D73C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1002F7C50(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_EmergConfig);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v9 = swift_allocObject();
      sub_1002C2FB8(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v11, v15, type metadata accessor for Proto_Gnss_Emergency_EmergConfig);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__emergConfig;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_10042BF10, &qword_100393FD0);
    swift_endAccess();
    sub_1002F7CB8(v10, type metadata accessor for Proto_Gnss_Emergency_EmergConfig);
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
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v22 = swift_allocObject();
      sub_1002C2FB8(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v10, v15, type metadata accessor for Proto_Gnss_Emergency_EmergConfig);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__emergConfig;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_10042BF10, &qword_100393FD0);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_10029D98C()
{
  v1 = sub_100024A2C(&qword_10042BF10, &qword_100393FD0);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__emergConfig;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_10042BF10, &qword_100393FD0);
  v6 = type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_10042BF10, &qword_100393FD0);
  return v7;
}

uint64_t sub_10029DAAC()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10042BF10, &qword_100393FD0);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    sub_1002C2FB8(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__emergConfig;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v11, &qword_10042BF10, &qword_100393FD0);
  return swift_endAccess();
}

void (*sub_10029DC5C(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v4 + 96) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gemProtocolRequest);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  if (v8 >> 60 == 15)
  {
    v9 = 0;
  }

  else
  {
    v9 = *v6;
  }

  v10 = 0xC000000000000000;
  if (v8 >> 60 != 15)
  {
    v10 = v6[1];
  }

  *(v4 + 72) = v9;
  *(v4 + 80) = v10;
  sub_10000BE4C(v7, v8);
  return sub_10029DD20;
}

uint64_t sub_10029DDBC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042BF18, &qword_100393FD8);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__positionRequest;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_10042BF18, &qword_100393FD8);
  v8 = type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1002F7BE8(v5, a1, type metadata accessor for Proto_Gnss_Emergency_PositionRequest);
  }

  sub_1001AF174(a1);
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_10042BF18, &qword_100393FD8);
  }

  return result;
}

uint64_t sub_10029DF34(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10042BF18, &qword_100393FD8);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_1002C2FB8(v11);
    *(v2 + v7) = v10;
  }

  sub_1002F7BE8(a1, v6, type metadata accessor for Proto_Gnss_Emergency_PositionRequest);
  v12 = type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__positionRequest;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_10042BF18, &qword_100393FD8);
  return swift_endAccess();
}

void (*sub_10029E0A0(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10042BF18, &qword_100393FD8) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0);
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
  v14 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__positionRequest;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10042BF18, &qword_100393FD8);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    sub_1001AF174(v13);
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10042BF18, &qword_100393FD8);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for Proto_Gnss_Emergency_PositionRequest);
  }

  return sub_10029E2EC;
}

void sub_10029E2EC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1002F7C50(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_PositionRequest);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v9 = swift_allocObject();
      sub_1002C2FB8(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v11, v15, type metadata accessor for Proto_Gnss_Emergency_PositionRequest);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__positionRequest;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_10042BF18, &qword_100393FD8);
    swift_endAccess();
    sub_1002F7CB8(v10, type metadata accessor for Proto_Gnss_Emergency_PositionRequest);
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
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v22 = swift_allocObject();
      sub_1002C2FB8(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v10, v15, type metadata accessor for Proto_Gnss_Emergency_PositionRequest);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__positionRequest;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_10042BF18, &qword_100393FD8);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_10029E53C()
{
  v1 = sub_100024A2C(&qword_10042BF18, &qword_100393FD8);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__positionRequest;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_10042BF18, &qword_100393FD8);
  v6 = type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_10042BF18, &qword_100393FD8);
  return v7;
}

uint64_t sub_10029E65C()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10042BF18, &qword_100393FD8);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    sub_1002C2FB8(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__positionRequest;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v11, &qword_10042BF18, &qword_100393FD8);
  return swift_endAccess();
}

void (*sub_10029E80C(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__sessionID;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 4))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_10029E8C4;
}

uint64_t sub_10029E960@<X0>(void *a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042BF20, &qword_100393FE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsReferenceTime;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_10042BF20, &qword_100393FE0);
  v8 = type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1002F7BE8(v5, a1, type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime);
  }

  sub_1001DB920(a1);
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_10042BF20, &qword_100393FE0);
  }

  return result;
}

uint64_t sub_10029EAD8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10042BF20, &qword_100393FE0);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_1002C2FB8(v11);
    *(v2 + v7) = v10;
  }

  sub_1002F7BE8(a1, v6, type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime);
  v12 = type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsReferenceTime;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_10042BF20, &qword_100393FE0);
  return swift_endAccess();
}

void (*sub_10029EC44(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10042BF20, &qword_100393FE0) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
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
  v14 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsReferenceTime;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10042BF20, &qword_100393FE0);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    sub_1001DB920(v13);
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10042BF20, &qword_100393FE0);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime);
  }

  return sub_10029EE90;
}

void sub_10029EE90(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1002F7C50(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v9 = swift_allocObject();
      sub_1002C2FB8(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v11, v15, type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsReferenceTime;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_10042BF20, &qword_100393FE0);
    swift_endAccess();
    sub_1002F7CB8(v10, type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime);
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
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v22 = swift_allocObject();
      sub_1002C2FB8(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v10, v15, type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsReferenceTime;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_10042BF20, &qword_100393FE0);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_10029F0E0()
{
  v1 = sub_100024A2C(&qword_10042BF20, &qword_100393FE0);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsReferenceTime;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_10042BF20, &qword_100393FE0);
  v6 = type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_10042BF20, &qword_100393FE0);
  return v7;
}

uint64_t sub_10029F200()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10042BF20, &qword_100393FE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    sub_1002C2FB8(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsReferenceTime;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v11, &qword_10042BF20, &qword_100393FE0);
  return swift_endAccess();
}

uint64_t sub_10029F348@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042BF28, &qword_100393FE8);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__referenceLocation;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_10042BF28, &qword_100393FE8);
  v8 = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1002F7BE8(v5, a1, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation);
  }

  sub_1001DC978(a1);
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_10042BF28, &qword_100393FE8);
  }

  return result;
}

uint64_t sub_10029F4C0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10042BF28, &qword_100393FE8);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_1002C2FB8(v11);
    *(v2 + v7) = v10;
  }

  sub_1002F7BE8(a1, v6, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation);
  v12 = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__referenceLocation;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_10042BF28, &qword_100393FE8);
  return swift_endAccess();
}

void (*sub_10029F62C(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10042BF28, &qword_100393FE8) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
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
  v14 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__referenceLocation;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10042BF28, &qword_100393FE8);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    sub_1001DC978(v13);
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10042BF28, &qword_100393FE8);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation);
  }

  return sub_10029F878;
}

void sub_10029F878(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1002F7C50(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v9 = swift_allocObject();
      sub_1002C2FB8(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v11, v15, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__referenceLocation;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_10042BF28, &qword_100393FE8);
    swift_endAccess();
    sub_1002F7CB8(v10, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation);
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
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v22 = swift_allocObject();
      sub_1002C2FB8(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v10, v15, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__referenceLocation;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_10042BF28, &qword_100393FE8);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_10029FAC8()
{
  v1 = sub_100024A2C(&qword_10042BF28, &qword_100393FE8);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__referenceLocation;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_10042BF28, &qword_100393FE8);
  v6 = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_10042BF28, &qword_100393FE8);
  return v7;
}

uint64_t sub_10029FBE8()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10042BF28, &qword_100393FE8);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    sub_1002C2FB8(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__referenceLocation;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v11, &qword_10042BF28, &qword_100393FE8);
  return swift_endAccess();
}

uint64_t sub_10029FD30@<X0>(void *a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042BF30, &qword_100393FF0);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsNavigationModel;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_10042BF30, &qword_100393FF0);
  v8 = type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1002F7BE8(v5, a1, type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel);
  }

  sub_1001E5414(a1);
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_10042BF30, &qword_100393FF0);
  }

  return result;
}

uint64_t sub_10029FEA8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10042BF30, &qword_100393FF0);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_1002C2FB8(v11);
    *(v2 + v7) = v10;
  }

  sub_1002F7BE8(a1, v6, type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel);
  v12 = type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsNavigationModel;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_10042BF30, &qword_100393FF0);
  return swift_endAccess();
}

void (*sub_1002A0014(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10042BF30, &qword_100393FF0) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0);
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
  v14 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsNavigationModel;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10042BF30, &qword_100393FF0);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    sub_1001E5414(v13);
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10042BF30, &qword_100393FF0);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel);
  }

  return sub_1002A0260;
}

void sub_1002A0260(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1002F7C50(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v9 = swift_allocObject();
      sub_1002C2FB8(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v11, v15, type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsNavigationModel;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_10042BF30, &qword_100393FF0);
    swift_endAccess();
    sub_1002F7CB8(v10, type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel);
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
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v22 = swift_allocObject();
      sub_1002C2FB8(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v10, v15, type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsNavigationModel;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_10042BF30, &qword_100393FF0);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_1002A04B0()
{
  v1 = sub_100024A2C(&qword_10042BF30, &qword_100393FF0);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsNavigationModel;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_10042BF30, &qword_100393FF0);
  v6 = type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_10042BF30, &qword_100393FF0);
  return v7;
}

uint64_t sub_1002A05D0()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10042BF30, &qword_100393FF0);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    sub_1002C2FB8(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsNavigationModel;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v11, &qword_10042BF30, &qword_100393FF0);
  return swift_endAccess();
}

uint64_t sub_1002A0718@<X0>(char *a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042BF38, &qword_100393FF8);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsAcqAssistance;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_10042BF38, &qword_100393FF8);
  v8 = type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1002F7BE8(v5, a1, type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance);
  }

  sub_1001E897C(a1);
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_10042BF38, &qword_100393FF8);
  }

  return result;
}

uint64_t sub_1002A0890(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10042BF38, &qword_100393FF8);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_1002C2FB8(v11);
    *(v2 + v7) = v10;
  }

  sub_1002F7BE8(a1, v6, type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance);
  v12 = type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsAcqAssistance;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_10042BF38, &qword_100393FF8);
  return swift_endAccess();
}

void (*sub_1002A09FC(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10042BF38, &qword_100393FF8) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
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
  v14 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsAcqAssistance;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10042BF38, &qword_100393FF8);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    sub_1001E897C(v13);
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10042BF38, &qword_100393FF8);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance);
  }

  return sub_1002A0C48;
}

void sub_1002A0C48(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1002F7C50(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v9 = swift_allocObject();
      sub_1002C2FB8(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v11, v15, type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsAcqAssistance;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_10042BF38, &qword_100393FF8);
    swift_endAccess();
    sub_1002F7CB8(v10, type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance);
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
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v22 = swift_allocObject();
      sub_1002C2FB8(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v10, v15, type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsAcqAssistance;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_10042BF38, &qword_100393FF8);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_1002A0E98()
{
  v1 = sub_100024A2C(&qword_10042BF38, &qword_100393FF8);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsAcqAssistance;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_10042BF38, &qword_100393FF8);
  v6 = type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_10042BF38, &qword_100393FF8);
  return v7;
}

uint64_t sub_1002A0FB8()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10042BF38, &qword_100393FF8);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    sub_1002C2FB8(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsAcqAssistance;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v11, &qword_10042BF38, &qword_100393FF8);
  return swift_endAccess();
}

uint64_t sub_1002A1100@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042BF40, &qword_100394000);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cellFtAssistance;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_10042BF40, &qword_100394000);
  v8 = type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1002F7BE8(v5, a1, type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance);
  }

  sub_1001E93F0(a1);
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_10042BF40, &qword_100394000);
  }

  return result;
}

uint64_t sub_1002A1278(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10042BF40, &qword_100394000);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_1002C2FB8(v11);
    *(v2 + v7) = v10;
  }

  sub_1002F7BE8(a1, v6, type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance);
  v12 = type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cellFtAssistance;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_10042BF40, &qword_100394000);
  return swift_endAccess();
}

void (*sub_1002A13E4(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10042BF40, &qword_100394000) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0);
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
  v14 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cellFtAssistance;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10042BF40, &qword_100394000);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    sub_1001E93F0(v13);
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10042BF40, &qword_100394000);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance);
  }

  return sub_1002A1630;
}

void sub_1002A1630(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1002F7C50(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v9 = swift_allocObject();
      sub_1002C2FB8(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v11, v15, type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cellFtAssistance;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_10042BF40, &qword_100394000);
    swift_endAccess();
    sub_1002F7CB8(v10, type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance);
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
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v22 = swift_allocObject();
      sub_1002C2FB8(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v10, v15, type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cellFtAssistance;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_10042BF40, &qword_100394000);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_1002A1880()
{
  v1 = sub_100024A2C(&qword_10042BF40, &qword_100394000);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cellFtAssistance;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_10042BF40, &qword_100394000);
  v6 = type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_10042BF40, &qword_100394000);
  return v7;
}

uint64_t sub_1002A19A0()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10042BF40, &qword_100394000);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    sub_1002C2FB8(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cellFtAssistance;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v11, &qword_10042BF40, &qword_100394000);
  return swift_endAccess();
}

uint64_t sub_1002A1AE8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042BF48, &qword_100394008);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cplaneContext;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_10042BF48, &qword_100394008);
  v8 = type metadata accessor for Proto_Gnss_Emergency_CplaneContext(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1002F7BE8(v5, a1, type metadata accessor for Proto_Gnss_Emergency_CplaneContext);
  }

  sub_1001E5FFC(a1);
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_10042BF48, &qword_100394008);
  }

  return result;
}

uint64_t sub_1002A1C60(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10042BF48, &qword_100394008);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_1002C2FB8(v11);
    *(v2 + v7) = v10;
  }

  sub_1002F7BE8(a1, v6, type metadata accessor for Proto_Gnss_Emergency_CplaneContext);
  v12 = type metadata accessor for Proto_Gnss_Emergency_CplaneContext(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cplaneContext;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_10042BF48, &qword_100394008);
  return swift_endAccess();
}

void (*sub_1002A1DCC(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10042BF48, &qword_100394008) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_CplaneContext(0);
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
  v14 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cplaneContext;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10042BF48, &qword_100394008);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    sub_1001E5FFC(v13);
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10042BF48, &qword_100394008);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for Proto_Gnss_Emergency_CplaneContext);
  }

  return sub_1002A2018;
}

void sub_1002A2018(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1002F7C50(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_CplaneContext);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v9 = swift_allocObject();
      sub_1002C2FB8(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v11, v15, type metadata accessor for Proto_Gnss_Emergency_CplaneContext);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cplaneContext;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_10042BF48, &qword_100394008);
    swift_endAccess();
    sub_1002F7CB8(v10, type metadata accessor for Proto_Gnss_Emergency_CplaneContext);
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
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v22 = swift_allocObject();
      sub_1002C2FB8(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v10, v15, type metadata accessor for Proto_Gnss_Emergency_CplaneContext);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cplaneContext;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_10042BF48, &qword_100394008);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_1002A2268()
{
  v1 = sub_100024A2C(&qword_10042BF48, &qword_100394008);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cplaneContext;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_10042BF48, &qword_100394008);
  v6 = type metadata accessor for Proto_Gnss_Emergency_CplaneContext(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_10042BF48, &qword_100394008);
  return v7;
}

uint64_t sub_1002A2388()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10042BF48, &qword_100394008);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    sub_1002C2FB8(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gnss_Emergency_CplaneContext(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cplaneContext;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v11, &qword_10042BF48, &qword_100394008);
  return swift_endAccess();
}

void (*sub_1002A24E8(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplInitVec;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return sub_1002A2598;
}

uint64_t sub_1002A25A4@<X0>(void *a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042BF50, &qword_100394010);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__locationID;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_10042BF50, &qword_100394010);
  v8 = type metadata accessor for Proto_Gnss_Emergency_LocationId(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1002F7BE8(v5, a1, type metadata accessor for Proto_Gnss_Emergency_LocationId);
  }

  sub_1001A1C38(a1);
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_10042BF50, &qword_100394010);
  }

  return result;
}

uint64_t sub_1002A271C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10042BF50, &qword_100394010);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_1002C2FB8(v11);
    *(v2 + v7) = v10;
  }

  sub_1002F7BE8(a1, v6, type metadata accessor for Proto_Gnss_Emergency_LocationId);
  v12 = type metadata accessor for Proto_Gnss_Emergency_LocationId(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__locationID;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_10042BF50, &qword_100394010);
  return swift_endAccess();
}

void (*sub_1002A2888(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10042BF50, &qword_100394010) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_LocationId(0);
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
  v14 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__locationID;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10042BF50, &qword_100394010);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    sub_1001A1C38(v13);
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10042BF50, &qword_100394010);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for Proto_Gnss_Emergency_LocationId);
  }

  return sub_1002A2AD4;
}

void sub_1002A2AD4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1002F7C50(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_LocationId);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v9 = swift_allocObject();
      sub_1002C2FB8(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v11, v15, type metadata accessor for Proto_Gnss_Emergency_LocationId);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__locationID;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_10042BF50, &qword_100394010);
    swift_endAccess();
    sub_1002F7CB8(v10, type metadata accessor for Proto_Gnss_Emergency_LocationId);
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
      type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
      v22 = swift_allocObject();
      sub_1002C2FB8(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v10, v15, type metadata accessor for Proto_Gnss_Emergency_LocationId);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__locationID;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_10042BF50, &qword_100394010);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_1002A2D24()
{
  v1 = sub_100024A2C(&qword_10042BF50, &qword_100394010);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__locationID;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_10042BF50, &qword_100394010);
  v6 = type metadata accessor for Proto_Gnss_Emergency_LocationId(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_10042BF50, &qword_100394010);
  return v7;
}

uint64_t sub_1002A2E44()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10042BF50, &qword_100394010);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    sub_1002C2FB8(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gnss_Emergency_LocationId(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__locationID;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v11, &qword_10042BF50, &qword_100394010);
  return swift_endAccess();
}

uint64_t sub_1002A2FAC(uint64_t (*a1)(void), void *a2)
{
  v3 = (*(v2 + *(a1(0) + 20)) + *a2);
  swift_beginAccess();
  if (v3[4])
  {
    return 0;
  }

  else
  {
    return *v3;
  }
}

uint64_t sub_1002A3060(int a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void (*a4)(uint64_t), void *a5)
{
  v9 = v5;
  v11 = *(a2(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v5 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a3(0);
    v14 = swift_allocObject();
    v15 = v13;
    v13 = v14;
    a4(v15);
    *(v9 + v11) = v14;
  }

  v16 = v13 + *a5;
  result = swift_beginAccess();
  *v16 = a1;
  *(v16 + 4) = 0;
  return result;
}

void (*sub_1002A3124(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplInitIndex;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 4))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1002A31DC;
}

void sub_1002A3210(uint64_t *a1, char a2, uint64_t (*a3)(void), void (*a4)(uint64_t), void *a5)
{
  v8 = *a1;
  v9 = *(*a1 + 80);
  v10 = *(*a1 + 84);
  v11 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v11 + v10);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = *(v8 + 84);
    v15 = *(v8 + 72);
    a3(0);
    v16 = swift_allocObject();
    v17 = v13;
    v13 = v16;
    a4(v17);
    *(v15 + v14) = v16;
  }

  v18 = v13 + *a5;
  swift_beginAccess();
  *v18 = v9;
  *(v18 + 4) = 0;

  free(v8);
}