uint64_t sub_1002BA5E8()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gpsd_LtlInfo(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_LtlInfo._StorageClass(0);
    v5 = swift_allocObject();
    v6 = v4;
    v4 = v5;
    sub_1002F01B8(v6);
    *(v1 + v2) = v5;
  }

  result = swift_beginAccess();
  *(v4 + 25) = 5;
  return result;
}

uint64_t sub_1002BA678@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042C010, &qword_1003940D8);
  __chkstk_darwin(v3 - 8);
  v5 = &v21 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_LtlInfo(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_LtlInfoP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__initialParams;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_10042C010, &qword_1003940D8);
  v8 = type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1002F7BE8(v5, a1, type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams);
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
  v14 = a1 + v8[9];
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = a1 + v8[10];
  *v15 = 0;
  *(v15 + 4) = 1;
  *(a1 + v8[11]) = 2;
  v16 = a1 + v8[12];
  *v16 = 0;
  *(v16 + 4) = 1;
  v17 = a1 + v8[13];
  *v17 = 0;
  *(v17 + 4) = 1;
  v18 = a1 + v8[14];
  *v18 = 0;
  *(v18 + 4) = 1;
  v19 = a1 + v8[15];
  *v19 = 0;
  *(v19 + 4) = 1;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_10042C010, &qword_1003940D8);
  }

  return result;
}

int *sub_1002BA8A0@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0);
  v3 = a1 + result[5];
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = a1 + result[6];
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = a1 + result[7];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = a1 + result[8];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1 + result[9];
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a1 + result[10];
  *v8 = 0;
  *(v8 + 4) = 1;
  *(a1 + result[11]) = 2;
  v9 = a1 + result[12];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1 + result[13];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + result[14];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a1 + result[15];
  *v12 = 0;
  *(v12 + 4) = 1;
  return result;
}

uint64_t sub_1002BA97C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10042C010, &qword_1003940D8);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_LtlInfo(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_LtlInfo._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_1002F01B8(v11);
    *(v2 + v7) = v10;
  }

  sub_1002F7BE8(a1, v6, type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams);
  v12 = type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_LtlInfoP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__initialParams;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_10042C010, &qword_1003940D8);
  return swift_endAccess();
}

void (*sub_1002BAAE8(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10042C010, &qword_1003940D8) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0);
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
  v14 = *(type metadata accessor for Proto_Gpsd_LtlInfo(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_LtlInfoP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__initialParams;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10042C010, &qword_1003940D8);
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
    v22 = v13 + v8[9];
    *v22 = 0;
    *(v22 + 4) = 1;
    v23 = v13 + v8[10];
    *v23 = 0;
    *(v23 + 4) = 1;
    *(v13 + v8[11]) = 2;
    v24 = v13 + v8[12];
    *v24 = 0;
    *(v24 + 4) = 1;
    v25 = v13 + v8[13];
    *v25 = 0;
    *(v25 + 4) = 1;
    v26 = v13 + v8[14];
    *v26 = 0;
    *(v26 + 4) = 1;
    v27 = v13 + v8[15];
    *v27 = 0;
    *(v27 + 4) = 1;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10042C010, &qword_1003940D8);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams);
  }

  return sub_1002BADE4;
}

void sub_1002BADE4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1002F7C50(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_LtlInfo._StorageClass(0);
      v9 = swift_allocObject();
      sub_1002F01B8(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v11, v15, type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_LtlInfoP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__initialParams;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_10042C010, &qword_1003940D8);
    swift_endAccess();
    sub_1002F7CB8(v10, type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams);
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
      type metadata accessor for Proto_Gpsd_LtlInfo._StorageClass(0);
      v22 = swift_allocObject();
      sub_1002F01B8(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v10, v15, type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_LtlInfoP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__initialParams;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_10042C010, &qword_1003940D8);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_1002BB034()
{
  v1 = sub_100024A2C(&qword_10042C010, &qword_1003940D8);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_LtlInfo(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_LtlInfoP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__initialParams;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_10042C010, &qword_1003940D8);
  v6 = type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_10042C010, &qword_1003940D8);
  return v7;
}

uint64_t sub_1002BB154()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10042C010, &qword_1003940D8);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_LtlInfo(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_LtlInfo._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    sub_1002F01B8(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_LtlInfoP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__initialParams;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v11, &qword_10042C010, &qword_1003940D8);
  return swift_endAccess();
}

uint64_t sub_1002BB29C@<X0>(void *a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042C018, &qword_1003940E0);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_LtlInfo(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_LtlInfoP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__lutParams;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_10042C018, &qword_1003940E0);
  v8 = type metadata accessor for Proto_Gpsd_LtlInfo.LtlLutParams(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1002F7BE8(v5, a1, type metadata accessor for Proto_Gpsd_LtlInfo.LtlLutParams);
  }

  *a1 = &_swiftEmptyArrayStorage;
  a1[1] = &_swiftEmptyArrayStorage;
  UnknownStorage.init()();
  v10 = a1 + *(v8 + 28);
  *v10 = 0;
  v10[4] = 1;
  v11 = a1 + *(v8 + 32);
  *v11 = 0;
  v11[4] = 1;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_10042C018, &qword_1003940E0);
  }

  return result;
}

uint64_t sub_1002BB448@<X0>(void *a1@<X8>)
{
  *a1 = &_swiftEmptyArrayStorage;
  a1[1] = &_swiftEmptyArrayStorage;
  v2 = type metadata accessor for Proto_Gpsd_LtlInfo.LtlLutParams(0);
  result = UnknownStorage.init()();
  v4 = a1 + *(v2 + 28);
  *v4 = 0;
  v4[4] = 1;
  v5 = a1 + *(v2 + 32);
  *v5 = 0;
  v5[4] = 1;
  return result;
}

uint64_t sub_1002BB4B0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10042C018, &qword_1003940E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_LtlInfo(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_LtlInfo._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_1002F01B8(v11);
    *(v2 + v7) = v10;
  }

  sub_1002F7BE8(a1, v6, type metadata accessor for Proto_Gpsd_LtlInfo.LtlLutParams);
  v12 = type metadata accessor for Proto_Gpsd_LtlInfo.LtlLutParams(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_LtlInfoP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__lutParams;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_10042C018, &qword_1003940E0);
  return swift_endAccess();
}

void (*sub_1002BB61C(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10042C018, &qword_1003940E0) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gpsd_LtlInfo.LtlLutParams(0);
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
  v14 = *(type metadata accessor for Proto_Gpsd_LtlInfo(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_LtlInfoP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__lutParams;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10042C018, &qword_1003940E0);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    *v13 = &_swiftEmptyArrayStorage;
    v13[1] = &_swiftEmptyArrayStorage;
    UnknownStorage.init()();
    v18 = v13 + *(v8 + 28);
    *v18 = 0;
    v18[4] = 1;
    v19 = v13 + *(v8 + 32);
    *v19 = 0;
    v19[4] = 1;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10042C018, &qword_1003940E0);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for Proto_Gpsd_LtlInfo.LtlLutParams);
  }

  return sub_1002BB89C;
}

void sub_1002BB89C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1002F7C50(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_LtlInfo.LtlLutParams);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_LtlInfo._StorageClass(0);
      v9 = swift_allocObject();
      sub_1002F01B8(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v11, v15, type metadata accessor for Proto_Gpsd_LtlInfo.LtlLutParams);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_LtlInfoP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__lutParams;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_10042C018, &qword_1003940E0);
    swift_endAccess();
    sub_1002F7CB8(v10, type metadata accessor for Proto_Gpsd_LtlInfo.LtlLutParams);
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
      type metadata accessor for Proto_Gpsd_LtlInfo._StorageClass(0);
      v22 = swift_allocObject();
      sub_1002F01B8(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v10, v15, type metadata accessor for Proto_Gpsd_LtlInfo.LtlLutParams);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_LtlInfoP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__lutParams;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_10042C018, &qword_1003940E0);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_1002BBAEC()
{
  v1 = sub_100024A2C(&qword_10042C018, &qword_1003940E0);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_LtlInfo(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_LtlInfoP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__lutParams;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_10042C018, &qword_1003940E0);
  v6 = type metadata accessor for Proto_Gpsd_LtlInfo.LtlLutParams(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_10042C018, &qword_1003940E0);
  return v7;
}

uint64_t sub_1002BBC0C()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10042C018, &qword_1003940E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_LtlInfo(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_LtlInfo._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    sub_1002F01B8(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gpsd_LtlInfo.LtlLutParams(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_LtlInfoP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__lutParams;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v11, &qword_10042C018, &qword_1003940E0);
  return swift_endAccess();
}

uint64_t sub_1002BBD54@<X0>(void *a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042C020, &qword_1003940E8);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_LtlInfo(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_LtlInfoP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__currentSrcCalib;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_10042C020, &qword_1003940E8);
  v8 = type metadata accessor for Proto_Gpsd_LtlInfo.LtlCurrentSrcCalibData(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1002F7BE8(v5, a1, type metadata accessor for Proto_Gpsd_LtlInfo.LtlCurrentSrcCalibData);
  }

  *a1 = &_swiftEmptyArrayStorage;
  UnknownStorage.init()();
  v10 = a1 + *(v8 + 24);
  *v10 = 0;
  v10[4] = 1;
  v11 = a1 + *(v8 + 28);
  *v11 = 0;
  v11[4] = 1;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_10042C020, &qword_1003940E8);
  }

  return result;
}

uint64_t sub_1002BBF00@<X0>(void *a1@<X8>)
{
  *a1 = &_swiftEmptyArrayStorage;
  v2 = type metadata accessor for Proto_Gpsd_LtlInfo.LtlCurrentSrcCalibData(0);
  result = UnknownStorage.init()();
  v4 = a1 + *(v2 + 24);
  *v4 = 0;
  v4[4] = 1;
  v5 = a1 + *(v2 + 28);
  *v5 = 0;
  v5[4] = 1;
  return result;
}

uint64_t sub_1002BBF68(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10042C020, &qword_1003940E8);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_LtlInfo(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_LtlInfo._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_1002F01B8(v11);
    *(v2 + v7) = v10;
  }

  sub_1002F7BE8(a1, v6, type metadata accessor for Proto_Gpsd_LtlInfo.LtlCurrentSrcCalibData);
  v12 = type metadata accessor for Proto_Gpsd_LtlInfo.LtlCurrentSrcCalibData(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_LtlInfoP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__currentSrcCalib;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_10042C020, &qword_1003940E8);
  return swift_endAccess();
}

void (*sub_1002BC0D4(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10042C020, &qword_1003940E8) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gpsd_LtlInfo.LtlCurrentSrcCalibData(0);
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
  v14 = *(type metadata accessor for Proto_Gpsd_LtlInfo(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_LtlInfoP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__currentSrcCalib;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10042C020, &qword_1003940E8);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    *v13 = &_swiftEmptyArrayStorage;
    UnknownStorage.init()();
    v18 = v13 + *(v8 + 24);
    *v18 = 0;
    v18[4] = 1;
    v19 = v13 + *(v8 + 28);
    *v19 = 0;
    v19[4] = 1;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_10042C020, &qword_1003940E8);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for Proto_Gpsd_LtlInfo.LtlCurrentSrcCalibData);
  }

  return sub_1002BC354;
}

void sub_1002BC354(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1002F7C50(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_LtlInfo.LtlCurrentSrcCalibData);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_LtlInfo._StorageClass(0);
      v9 = swift_allocObject();
      sub_1002F01B8(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v11, v15, type metadata accessor for Proto_Gpsd_LtlInfo.LtlCurrentSrcCalibData);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_LtlInfoP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__currentSrcCalib;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_10042C020, &qword_1003940E8);
    swift_endAccess();
    sub_1002F7CB8(v10, type metadata accessor for Proto_Gpsd_LtlInfo.LtlCurrentSrcCalibData);
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
      type metadata accessor for Proto_Gpsd_LtlInfo._StorageClass(0);
      v22 = swift_allocObject();
      sub_1002F01B8(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v10, v15, type metadata accessor for Proto_Gpsd_LtlInfo.LtlCurrentSrcCalibData);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_LtlInfoP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__currentSrcCalib;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_10042C020, &qword_1003940E8);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_1002BC5A4()
{
  v1 = sub_100024A2C(&qword_10042C020, &qword_1003940E8);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_LtlInfo(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_LtlInfoP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__currentSrcCalib;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_10042C020, &qword_1003940E8);
  v6 = type metadata accessor for Proto_Gpsd_LtlInfo.LtlCurrentSrcCalibData(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_10042C020, &qword_1003940E8);
  return v7;
}

uint64_t sub_1002BC6C4()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10042C020, &qword_1003940E8);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_LtlInfo(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_LtlInfo._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    sub_1002F01B8(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gpsd_LtlInfo.LtlCurrentSrcCalibData(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_LtlInfoP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__currentSrcCalib;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v11, &qword_10042C020, &qword_1003940E8);
  return swift_endAccess();
}

uint64_t sub_1002BC80C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_10042C028, &unk_1003940F0);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gpsd_LtlInfo(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_LtlInfoP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__racPmicAdcrPreCal;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_10042C028, &unk_1003940F0);
  v8 = type metadata accessor for Proto_Gpsd_LtlInfo.LtlRacPmicAdcPreCalData(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1002F7BE8(v5, a1, type metadata accessor for Proto_Gpsd_LtlInfo.LtlRacPmicAdcPreCalData);
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
    return sub_1000059A8(v5, &qword_10042C028, &unk_1003940F0);
  }

  return result;
}

uint64_t sub_1002BC9C0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
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

uint64_t sub_1002BCA18(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_10042C028, &unk_1003940F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gpsd_LtlInfo(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_LtlInfo._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_1002F01B8(v11);
    *(v2 + v7) = v10;
  }

  sub_1002F7BE8(a1, v6, type metadata accessor for Proto_Gpsd_LtlInfo.LtlRacPmicAdcPreCalData);
  v12 = type metadata accessor for Proto_Gpsd_LtlInfo.LtlRacPmicAdcPreCalData(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_LtlInfoP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__racPmicAdcrPreCal;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_10042C028, &unk_1003940F0);
  return swift_endAccess();
}

void (*sub_1002BCB84(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_10042C028, &unk_1003940F0) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gpsd_LtlInfo.LtlRacPmicAdcPreCalData(0);
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
  v14 = *(type metadata accessor for Proto_Gpsd_LtlInfo(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_LtlInfoP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__racPmicAdcrPreCal;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_10042C028, &unk_1003940F0);
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
      sub_1000059A8(v7, &qword_10042C028, &unk_1003940F0);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for Proto_Gpsd_LtlInfo.LtlRacPmicAdcPreCalData);
  }

  return sub_1002BCDF4;
}

void sub_1002BCDF4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1002F7C50(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gpsd_LtlInfo.LtlRacPmicAdcPreCalData);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gpsd_LtlInfo._StorageClass(0);
      v9 = swift_allocObject();
      sub_1002F01B8(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v11, v15, type metadata accessor for Proto_Gpsd_LtlInfo.LtlRacPmicAdcPreCalData);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_LtlInfoP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__racPmicAdcrPreCal;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_10042C028, &unk_1003940F0);
    swift_endAccess();
    sub_1002F7CB8(v10, type metadata accessor for Proto_Gpsd_LtlInfo.LtlRacPmicAdcPreCalData);
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
      type metadata accessor for Proto_Gpsd_LtlInfo._StorageClass(0);
      v22 = swift_allocObject();
      sub_1002F01B8(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002F7BE8(v10, v15, type metadata accessor for Proto_Gpsd_LtlInfo.LtlRacPmicAdcPreCalData);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_LtlInfoP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__racPmicAdcrPreCal;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_10042C028, &unk_1003940F0);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_1002BD044()
{
  v1 = sub_100024A2C(&qword_10042C028, &unk_1003940F0);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gpsd_LtlInfo(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_LtlInfoP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__racPmicAdcrPreCal;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_10042C028, &unk_1003940F0);
  v6 = type metadata accessor for Proto_Gpsd_LtlInfo.LtlRacPmicAdcPreCalData(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_10042C028, &unk_1003940F0);
  return v7;
}

uint64_t sub_1002BD164()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_10042C028, &unk_1003940F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(type metadata accessor for Proto_Gpsd_LtlInfo(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_LtlInfo._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    sub_1002F01B8(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gpsd_LtlInfo.LtlRacPmicAdcPreCalData(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_LtlInfoP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__racPmicAdcrPreCal;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v11, &qword_10042C028, &unk_1003940F0);
  return swift_endAccess();
}

uint64_t sub_1002BD2C4(int a1)
{
  result = type metadata accessor for Proto_Gpsd_LtlInfo.LtlLutParams(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1002BD2FC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_LtlInfo.LtlLutParams(0) + 28);
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

uint64_t sub_1002BD394()
{
  result = type metadata accessor for Proto_Gpsd_LtlInfo.LtlLutParams(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1002BD3DC(int a1)
{
  result = type metadata accessor for Proto_Gpsd_LtlInfo.LtlLutParams(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1002BD414(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_LtlInfo.LtlLutParams(0) + 32);
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

uint64_t sub_1002BD4AC()
{
  result = type metadata accessor for Proto_Gpsd_LtlInfo.LtlLutParams(0);
  v2 = v0 + *(result + 32);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1002BD4DC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Proto_Gpsd_LtlInfo.LtlLutParams(0) + 24);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1002BD558(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gpsd_LtlInfo.LtlLutParams(0) + 24);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1002BD634(int a1)
{
  result = type metadata accessor for Proto_Gpsd_LtlInfo.LtlCurrentSrcCalibData(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1002BD66C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_LtlInfo.LtlCurrentSrcCalibData(0) + 24);
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

uint64_t sub_1002BD704()
{
  result = type metadata accessor for Proto_Gpsd_LtlInfo.LtlCurrentSrcCalibData(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1002BD74C(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 28));
  if (v2[4])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t sub_1002BD788(int a1)
{
  result = type metadata accessor for Proto_Gpsd_LtlInfo.LtlCurrentSrcCalibData(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1002BD7C0(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_LtlInfo.LtlCurrentSrcCalibData(0) + 28);
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

uint64_t sub_1002BD858()
{
  result = type metadata accessor for Proto_Gpsd_LtlInfo.LtlCurrentSrcCalibData(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1002BD918(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 20));
  if (v2[4])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t sub_1002BD954(int a1)
{
  result = type metadata accessor for Proto_Gpsd_LtlInfo.LtlRacPmicAdcPreCalData(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1002BD98C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_LtlInfo.LtlRacPmicAdcPreCalData(0) + 20);
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

uint64_t sub_1002BDA24()
{
  result = type metadata accessor for Proto_Gpsd_LtlInfo.LtlRacPmicAdcPreCalData(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1002BDA6C(int a1)
{
  result = type metadata accessor for Proto_Gpsd_LtlInfo.LtlRacPmicAdcPreCalData(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1002BDAA4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_LtlInfo.LtlRacPmicAdcPreCalData(0) + 24);
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

uint64_t sub_1002BDB3C()
{
  result = type metadata accessor for Proto_Gpsd_LtlInfo.LtlRacPmicAdcPreCalData(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1002BDB84(int a1)
{
  result = type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1002BDBBC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0) + 20);
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

uint64_t sub_1002BDC54()
{
  result = type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1002BDC9C(int a1)
{
  result = type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1002BDCD4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0) + 24);
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

uint64_t sub_1002BDD6C()
{
  result = type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1002BDDB4(int a1)
{
  result = type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1002BDDEC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0) + 28);
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

uint64_t sub_1002BDE84()
{
  result = type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1002BDECC(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 32));
  if (v2[4])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t sub_1002BDF08(int a1)
{
  result = type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1002BDF40(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0) + 32);
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

uint64_t sub_1002BDFD8()
{
  result = type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0);
  v2 = v0 + *(result + 32);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1002BE008()
{
  v1 = (v0 + *(type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0) + 36));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t sub_1002BE03C(int a1)
{
  result = type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1002BE074(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0) + 36);
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

uint64_t sub_1002BE10C()
{
  result = type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0);
  v2 = v0 + *(result + 36);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1002BE13C()
{
  v1 = (v0 + *(type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0) + 40));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t sub_1002BE170(int a1)
{
  result = type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1002BE1A8(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0) + 40);
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

uint64_t sub_1002BE240()
{
  result = type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0);
  v2 = v0 + *(result + 40);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1002BE298(char a1)
{
  result = type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t (*sub_1002BE2C8(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0) + 44);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1002BE350()
{
  result = type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0);
  *(v0 + *(result + 44)) = 2;
  return result;
}

uint64_t sub_1002BE378()
{
  v1 = (v0 + *(type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0) + 48));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t sub_1002BE3AC(int a1)
{
  result = type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0);
  v4 = v1 + *(result + 48);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1002BE3E4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0) + 48);
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

uint64_t sub_1002BE47C()
{
  result = type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0);
  v2 = v0 + *(result + 48);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1002BE4AC()
{
  v1 = (v0 + *(type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0) + 52));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t sub_1002BE4E0(int a1)
{
  result = type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0);
  v4 = v1 + *(result + 52);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1002BE518(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0) + 52);
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
  return sub_100026A50;
}

uint64_t sub_1002BE5B0()
{
  result = type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0);
  v2 = v0 + *(result + 52);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1002BE5E0()
{
  v1 = (v0 + *(type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0) + 56));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t sub_1002BE614(int a1)
{
  result = type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0);
  v4 = v1 + *(result + 56);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1002BE64C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0) + 56);
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

uint64_t sub_1002BE6E4()
{
  result = type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0);
  v2 = v0 + *(result + 56);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1002BE714()
{
  v1 = (v0 + *(type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0) + 60));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t sub_1002BE748(int a1)
{
  result = type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0);
  v4 = v1 + *(result + 60);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1002BE780(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0) + 60);
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

uint64_t sub_1002BE818()
{
  result = type metadata accessor for Proto_Gpsd_LtlInfo.LtlInitialParams(0);
  v2 = v0 + *(result + 60);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1002BE884(int a1)
{
  result = type metadata accessor for Proto_Gpsd_Exception(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1002BE8BC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_Exception(0) + 20);
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

uint64_t sub_1002BE954()
{
  result = type metadata accessor for Proto_Gpsd_Exception(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1002BE99C(int a1)
{
  result = type metadata accessor for Proto_Gpsd_Exception(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1002BE9D4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_Exception(0) + 24);
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

uint64_t sub_1002BEA6C()
{
  result = type metadata accessor for Proto_Gpsd_Exception(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1002BEAB4(int a1)
{
  result = type metadata accessor for Proto_Gpsd_Exception(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1002BEAEC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_Exception(0) + 28);
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

uint64_t sub_1002BEB84()
{
  result = type metadata accessor for Proto_Gpsd_Exception(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

double sub_1002BEBB4()
{
  v1 = v0 + *(type metadata accessor for Proto_Gpsd_AskBasebandReset(0) + 20);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1002BEBEC(double a1)
{
  result = type metadata accessor for Proto_Gpsd_AskBasebandReset(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1002BEC24(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_AskBasebandReset(0) + 20);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_100036308;
}

uint64_t sub_1002BECC0()
{
  result = type metadata accessor for Proto_Gpsd_AskBasebandReset(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1002BED08(uint64_t a1)
{
  result = type metadata accessor for Proto_Gpsd_AskBasebandReset(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1002BED40(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_AskBasebandReset(0) + 24);
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

uint64_t sub_1002BEDD8()
{
  result = type metadata accessor for Proto_Gpsd_AskBasebandReset(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1002BEE20(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 28));
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

uint64_t sub_1002BEE94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 28));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

void (*sub_1002BEEE0(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(type metadata accessor for Proto_Gpsd_AskBasebandReset(0) + 28);
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

uint64_t sub_1002BEFD8(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 28));

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t sub_1002BF030(uint64_t a1)
{
  result = type metadata accessor for Proto_Gpsd_LogEntry(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1002BF068(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_LogEntry(0) + 20);
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

uint64_t sub_1002BF100()
{
  result = type metadata accessor for Proto_Gpsd_LogEntry(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1002BF130()
{
  v1 = (v0 + *(type metadata accessor for Proto_Gpsd_LogEntry(0) + 24));
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

uint64_t sub_1002BF184(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Proto_Gpsd_LogEntry(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*sub_1002BF1CC(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(type metadata accessor for Proto_Gpsd_LogEntry(0) + 24);
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

  return sub_10010A334;
}

uint64_t sub_1002BF2AC()
{
  v1 = (v0 + *(type metadata accessor for Proto_Gpsd_LogEntry(0) + 24));

  *v1 = 0;
  v1[1] = 0;
  return result;
}

uint64_t sub_1002BF2E4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100418370, &qword_10036C848);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Proto_Gpsd_LogEntry(0);
  sub_10000A0A4(v1 + *(v6 + 28), v5, &qword_100418370, &qword_10036C848);
  v7 = type metadata accessor for Proto_Gpsd_Request(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1002F7BE8(v5, a1, type metadata accessor for Proto_Gpsd_Request);
  }

  UnknownStorage.init()();
  v9 = *(v7 + 20);
  if (qword_100480E60 != -1)
  {
    swift_once();
  }

  *(a1 + v9) = qword_100480E68;
  v10 = v8(v5, 1, v7);

  if (v10 != 1)
  {
    return sub_1000059A8(v5, &qword_100418370, &qword_10036C848);
  }

  return result;
}

uint64_t sub_1002BF48C(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gpsd_LogEntry(0) + 28);
  sub_1000059A8(v1 + v3, &qword_100418370, &qword_10036C848);
  sub_1002F7BE8(a1, v1 + v3, type metadata accessor for Proto_Gpsd_Request);
  v4 = type metadata accessor for Proto_Gpsd_Request(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_1002BF544(void *a1))(uint64_t **a1, uint64_t a2)
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
  v5 = *(*(sub_100024A2C(&qword_100418370, &qword_10036C848) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gpsd_Request(0);
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
  v14 = *(type metadata accessor for Proto_Gpsd_LogEntry(0) + 28);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100418370, &qword_10036C848);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = *(v8 + 20);
    if (qword_100480E60 != -1)
    {
      swift_once();
    }

    *(v13 + v16) = qword_100480E68;
    v17 = v15(v7, 1, v8);

    if (v17 != 1)
    {
      sub_1000059A8(v7, &qword_100418370, &qword_10036C848);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for Proto_Gpsd_Request);
  }

  return sub_1002BF79C;
}

BOOL sub_1002BF7D8()
{
  v1 = sub_100024A2C(&qword_100418370, &qword_10036C848);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for Proto_Gpsd_LogEntry(0);
  sub_10000A0A4(v0 + *(v4 + 28), v3, &qword_100418370, &qword_10036C848);
  v5 = type metadata accessor for Proto_Gpsd_Request(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_1000059A8(v3, &qword_100418370, &qword_10036C848);
  return v6;
}

uint64_t sub_1002BF8CC()
{
  v1 = *(type metadata accessor for Proto_Gpsd_LogEntry(0) + 28);
  sub_1000059A8(v0 + v1, &qword_100418370, &qword_10036C848);
  v2 = type metadata accessor for Proto_Gpsd_Request(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_1002BF958@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100418378, &qword_10036C850);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for Proto_Gpsd_LogEntry(0);
  sub_10000A0A4(v1 + *(v6 + 32), v5, &qword_100418378, &qword_10036C850);
  v7 = type metadata accessor for Proto_Gpsd_Response(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1002F7BE8(v5, a1, type metadata accessor for Proto_Gpsd_Response);
  }

  UnknownStorage.init()();
  *(a1 + v7[5]) = 62;
  v9 = a1 + v7[6];
  *v9 = 0;
  *(v9 + 8) = 1;
  *(a1 + v7[7]) = 10;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_100418378, &qword_10036C850);
  }

  return result;
}

uint64_t sub_1002BFAD8(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gpsd_LogEntry(0) + 32);
  sub_1000059A8(v1 + v3, &qword_100418378, &qword_10036C850);
  sub_1002F7BE8(a1, v1 + v3, type metadata accessor for Proto_Gpsd_Response);
  v4 = type metadata accessor for Proto_Gpsd_Response(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_1002BFB90(void *a1))(uint64_t **a1, uint64_t a2)
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
  v5 = *(*(sub_100024A2C(&qword_100418378, &qword_10036C850) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gpsd_Response(0);
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
  v14 = *(type metadata accessor for Proto_Gpsd_LogEntry(0) + 32);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100418378, &qword_10036C850);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    *(v13 + v8[5]) = 62;
    v16 = v13 + v8[6];
    *v16 = 0;
    *(v16 + 8) = 1;
    *(v13 + v8[7]) = 10;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100418378, &qword_10036C850);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for Proto_Gpsd_Response);
  }

  return sub_1002BFDC8;
}

BOOL sub_1002BFE04()
{
  v1 = sub_100024A2C(&qword_100418378, &qword_10036C850);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for Proto_Gpsd_LogEntry(0);
  sub_10000A0A4(v0 + *(v4 + 32), v3, &qword_100418378, &qword_10036C850);
  v5 = type metadata accessor for Proto_Gpsd_Response(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_1000059A8(v3, &qword_100418378, &qword_10036C850);
  return v6;
}

uint64_t sub_1002BFEF8()
{
  v1 = *(type metadata accessor for Proto_Gpsd_LogEntry(0) + 32);
  sub_1000059A8(v0 + v1, &qword_100418378, &qword_10036C850);
  v2 = type metadata accessor for Proto_Gpsd_Response(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_1002BFF84@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100418380, &qword_10036C858);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Proto_Gpsd_LogEntry(0);
  sub_10000A0A4(v1 + *(v6 + 36), v5, &qword_100418380, &qword_10036C858);
  v7 = type metadata accessor for Proto_Gpsd_Indication(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1002F7BE8(v5, a1, type metadata accessor for Proto_Gpsd_Indication);
  }

  UnknownStorage.init()();
  v9 = *(v7 + 20);
  if (qword_100480E88 != -1)
  {
    swift_once();
  }

  *(a1 + v9) = qword_100480E90;
  v10 = v8(v5, 1, v7);

  if (v10 != 1)
  {
    return sub_1000059A8(v5, &qword_100418380, &qword_10036C858);
  }

  return result;
}

uint64_t sub_1002C012C(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gpsd_LogEntry(0) + 36);
  sub_1000059A8(v1 + v3, &qword_100418380, &qword_10036C858);
  sub_1002F7BE8(a1, v1 + v3, type metadata accessor for Proto_Gpsd_Indication);
  v4 = type metadata accessor for Proto_Gpsd_Indication(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_1002C01E4(void *a1))(uint64_t **a1, uint64_t a2)
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
  v5 = *(*(sub_100024A2C(&qword_100418380, &qword_10036C858) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gpsd_Indication(0);
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
  v14 = *(type metadata accessor for Proto_Gpsd_LogEntry(0) + 36);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100418380, &qword_10036C858);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = *(v8 + 20);
    if (qword_100480E88 != -1)
    {
      swift_once();
    }

    *(v13 + v16) = qword_100480E90;
    v17 = v15(v7, 1, v8);

    if (v17 != 1)
    {
      sub_1000059A8(v7, &qword_100418380, &qword_10036C858);
    }
  }

  else
  {
    sub_1002F7BE8(v7, v13, type metadata accessor for Proto_Gpsd_Indication);
  }

  return sub_1002C043C;
}

void sub_1002C0478(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v9 = *a1;
  v10 = *(*a1 + 12);
  v11 = (*a1)[4];
  v12 = (*a1)[5];
  v13 = (*a1)[2];
  v14 = (*a1)[3];
  v15 = **a1;
  v17 = (*a1)[1];
  if (a2)
  {
    sub_1002F7C50(v12, v11, a6);
    sub_1000059A8(v15 + v10, a3, a4);
    sub_1002F7BE8(v11, v15 + v10, a5);
    (*(v14 + 56))(v15 + v10, 0, 1, v13);
    sub_1002F7CB8(v12, a6);
  }

  else
  {
    sub_1000059A8(v15 + v10, a3, a4);
    sub_1002F7BE8(v12, v15 + v10, a5);
    (*(v14 + 56))(v15 + v10, 0, 1, v13);
  }

  free(v12);
  free(v11);
  free(v17);

  free(v9);
}

BOOL sub_1002C05B4()
{
  v1 = sub_100024A2C(&qword_100418380, &qword_10036C858);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for Proto_Gpsd_LogEntry(0);
  sub_10000A0A4(v0 + *(v4 + 36), v3, &qword_100418380, &qword_10036C858);
  v5 = type metadata accessor for Proto_Gpsd_Indication(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_1000059A8(v3, &qword_100418380, &qword_10036C858);
  return v6;
}

uint64_t sub_1002C06A8()
{
  v1 = *(type metadata accessor for Proto_Gpsd_LogEntry(0) + 36);
  sub_1000059A8(v0 + v1, &qword_100418380, &qword_10036C858);
  v2 = type metadata accessor for Proto_Gpsd_Indication(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_1002C0734@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for Proto_Gpsd_LogEntry(0);
  v3 = a1 + v2[5];
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = (a1 + v2[6]);
  *v4 = 0;
  v4[1] = 0;
  v5 = v2[7];
  v6 = type metadata accessor for Proto_Gpsd_Request(0);
  (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  v7 = v2[8];
  v8 = type metadata accessor for Proto_Gpsd_Response(0);
  (*(*(v8 - 8) + 56))(a1 + v7, 1, 1, v8);
  v9 = v2[9];
  v10 = type metadata accessor for Proto_Gpsd_Indication(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(a1 + v9, 1, 1, v10);
}

uint64_t sub_1002C08D4(char a1)
{
  result = type metadata accessor for Proto_Gpsd_StartContext(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*sub_1002C0904(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_StartContext(0) + 20);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1002C098C()
{
  result = type metadata accessor for Proto_Gpsd_StartContext(0);
  *(v0 + *(result + 20)) = 2;
  return result;
}

uint64_t sub_1002C09DC(char a1)
{
  result = type metadata accessor for Proto_Gpsd_StartContext(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*sub_1002C0A0C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_StartContext(0) + 24);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1002C0A94()
{
  result = type metadata accessor for Proto_Gpsd_StartContext(0);
  *(v0 + *(result + 24)) = 2;
  return result;
}

uint64_t sub_1002C0AE4(char a1)
{
  result = type metadata accessor for Proto_Gpsd_StartContext(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*sub_1002C0B14(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_StartContext(0) + 28);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1002C0B9C()
{
  result = type metadata accessor for Proto_Gpsd_StartContext(0);
  *(v0 + *(result + 28)) = 2;
  return result;
}

uint64_t sub_1002C0BDC(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 32));
  if (v2[8])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t sub_1002C0C18(uint64_t a1)
{
  result = type metadata accessor for Proto_Gpsd_StartContext(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*sub_1002C0C50(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_StartContext(0) + 32);
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

uint64_t sub_1002C0CE8()
{
  result = type metadata accessor for Proto_Gpsd_StartContext(0);
  v2 = v0 + *(result + 32);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t sub_1002C0D40(char a1)
{
  result = type metadata accessor for Proto_Gpsd_StartContext(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t (*sub_1002C0D70(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gpsd_StartContext(0) + 36);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1002C0DF8()
{
  result = type metadata accessor for Proto_Gpsd_StartContext(0);
  *(v0 + *(result + 36)) = 2;
  return result;
}

uint64_t sub_1002C0E20()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434DB0);
  sub_100005DF0(v0, qword_100434DB0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "SuplInit_None";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SuplInit_DecodeSuccess";
  *(v10 + 8) = 22;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SuplInit_DecodeFailure";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "SuplInit_Timeout";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1002C10D4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434DC8);
  sub_100005DF0(v0, qword_100434DC8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "CompressionType_PROTOBUF_DEFAULT";
  *(v6 + 8) = 32;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CompressionType_None";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "CompressionType_LZMA";
  *(v11 + 8) = 20;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1002C134C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434DE0);
  sub_100005DF0(v0, qword_100434DE0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10036D780;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 0;
  *v5 = "LtlInfoType_PROTOBUF_DEFAULT";
  *(v5 + 8) = 28;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "LtlInfoType_kInvalid";
  *(v9 + 8) = 20;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "LtlInfoType_kInitial";
  *(v11 + 1) = 20;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "LtlInfoType_kLtlRefitted";
  *(v13 + 1) = 24;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 4;
  *v14 = "LtlInfoType_kLearntArray";
  *(v14 + 8) = 24;
  *(v14 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1002C1664()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434DF8);
  sub_100005DF0(v0, qword_100434DF8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v102 = swift_allocObject();
  *(v102 + 16) = xmmword_100393EC0;
  v4 = v102 + v3;
  v5 = v102 + v3 + v1[14];
  *(v102 + v3) = 1;
  *v5 = "mach_continuous_time_ns";
  *(v5 + 8) = 23;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v102 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "transaction_id";
  *(v9 + 8) = 14;
  *(v9 + 16) = 2;
  v8();
  v10 = (v102 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "type";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v8();
  v12 = (v102 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "inject_assistance_position";
  *(v13 + 1) = 26;
  v13[16] = 2;
  v8();
  v14 = (v102 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "inject_assistance_time";
  *(v15 + 1) = 22;
  v15[16] = 2;
  v8();
  v16 = (v102 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "set_assistance_pressure";
  *(v17 + 1) = 23;
  v17[16] = 2;
  v8();
  v18 = (v102 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "set_assistance_accel";
  *(v19 + 1) = 20;
  v19[16] = 2;
  v8();
  v20 = (v102 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "set_assistance_gyro";
  *(v21 + 1) = 19;
  v21[16] = 2;
  v8();
  v22 = v102 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "set_assistance_dem";
  *(v22 + 8) = 18;
  *(v22 + 16) = 2;
  v8();
  v23 = (v102 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "set_assistance_map_vector";
  *(v24 + 1) = 25;
  v24[16] = 2;
  v8();
  v25 = (v102 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "set_assistance_motion_activity_context";
  *(v26 + 1) = 38;
  v26[16] = 2;
  v8();
  v27 = (v102 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "set_assistance_mount_state";
  *(v28 + 1) = 26;
  v28[16] = 2;
  v8();
  v29 = (v102 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "set_assistance_signal_environment";
  *(v30 + 1) = 33;
  v30[16] = 2;
  v8();
  v31 = (v102 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "set_assistance_speed_constraint";
  *(v32 + 1) = 31;
  v32[16] = 2;
  v8();
  v33 = (v102 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "set_assistance_along_track_velocity";
  *(v34 + 1) = 35;
  v34[16] = 2;
  v8();
  v35 = (v102 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = 0x1003B0000;
  *(v36 + 1) = 22;
  v36[16] = 2;
  v8();
  v37 = v102 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 17;
  *v37 = "inject_rti_file";
  *(v37 + 8) = 15;
  *(v37 + 16) = 2;
  v8();
  v38 = (v102 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 18;
  *v39 = "inject_svid_blocklist";
  *(v39 + 1) = 21;
  v39[16] = 2;
  v8();
  v40 = (v102 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 19;
  *v41 = "delete_gnss_data";
  *(v41 + 1) = 16;
  v41[16] = 2;
  v8();
  v42 = (v102 + v3 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 20;
  *v43 = "set_pvtm_report";
  *(v43 + 1) = 15;
  v43[16] = 2;
  v8();
  v44 = (v102 + v3 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 21;
  *v45 = "set_nmea_handler";
  *(v45 + 1) = 16;
  v45[16] = 2;
  v8();
  v46 = (v102 + v3 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 22;
  *v47 = "set_config_simulator_mode";
  *(v47 + 1) = 25;
  v47[16] = 2;
  v8();
  v48 = (v102 + v3 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 23;
  *v49 = "set_config_enable_gnss_constellations";
  *(v49 + 1) = 37;
  v49[16] = 2;
  v8();
  v50 = (v102 + v3 + 23 * v2);
  v51 = v50 + v1[14];
  *v50 = 24;
  *v51 = "set_config_duty_cycling";
  *(v51 + 1) = 23;
  v51[16] = 2;
  v8();
  v52 = (v102 + v3 + 24 * v2);
  v53 = v52 + v1[14];
  *v52 = 25;
  *v53 = "termination_imminent";
  *(v53 + 1) = 20;
  v53[16] = 2;
  v8();
  v54 = (v102 + v3 + 25 * v2);
  v55 = v54 + v1[14];
  *v54 = 26;
  *v55 = "exit_message";
  *(v55 + 1) = 12;
  v55[16] = 2;
  v8();
  v56 = (v102 + v3 + 26 * v2);
  v57 = v56 + v1[14];
  *v56 = 27;
  *v57 = "inject_ltl_info";
  *(v57 + 1) = 15;
  v57[16] = 2;
  v8();
  v58 = (v102 + v3 + 27 * v2);
  v59 = v58 + v1[14];
  *v58 = 28;
  *v59 = "start_context";
  *(v59 + 1) = 13;
  v59[16] = 2;
  v8();
  v60 = (v102 + v3 + 28 * v2);
  v61 = v60 + v1[14];
  *v60 = 30;
  *v61 = "set_thermal_risk_state";
  *(v61 + 1) = 22;
  v61[16] = 2;
  v8();
  v62 = (v102 + v3 + 29 * v2);
  v63 = v62 + v1[14];
  *v62 = 31;
  *v63 = "set_config_rf_band_enable";
  *(v63 + 1) = 25;
  v63[16] = 2;
  v8();
  v64 = (v102 + v3 + 30 * v2);
  v65 = v64 + v1[14];
  *v64 = 32;
  *v65 = "inject_raven_orbit_file";
  *(v65 + 1) = 23;
  v65[16] = 2;
  v8();
  v66 = (v102 + v3 + 31 * v2);
  v67 = v66 + v1[14];
  *v66 = 50;
  *v67 = "emerg_config";
  *(v67 + 1) = 12;
  v67[16] = 2;
  v8();
  v68 = v102 + v3 + 32 * v2 + v1[14];
  *(v4 + 32 * v2) = 51;
  *v68 = "gem_protocol_request";
  *(v68 + 8) = 20;
  *(v68 + 16) = 2;
  v8();
  v69 = (v102 + v3 + 33 * v2);
  v70 = v69 + v1[14];
  *v69 = 60;
  *v70 = "position_request";
  *(v70 + 1) = 16;
  v70[16] = 2;
  v8();
  v71 = (v102 + v3 + 34 * v2);
  v72 = v71 + v1[14];
  *v71 = 61;
  *v72 = "session_id";
  *(v72 + 1) = 10;
  v72[16] = 2;
  v8();
  v73 = (v102 + v3 + 35 * v2);
  v74 = v73 + v1[14];
  *v73 = 62;
  *v74 = "gps_reference_time";
  *(v74 + 1) = 18;
  v74[16] = 2;
  v8();
  v75 = (v102 + v3 + 36 * v2);
  v76 = v75 + v1[14];
  *v75 = 63;
  *v76 = "reference_location";
  *(v76 + 1) = 18;
  v76[16] = 2;
  v8();
  v77 = (v102 + v3 + 37 * v2);
  v78 = v77 + v1[14];
  *v77 = 64;
  *v78 = "gps_navigation_model";
  *(v78 + 1) = 20;
  v78[16] = 2;
  v8();
  v79 = (v102 + v3 + 38 * v2);
  v80 = v79 + v1[14];
  *v79 = 65;
  *v80 = "gps_acq_assistance";
  *(v80 + 1) = 18;
  v80[16] = 2;
  v8();
  v81 = (v102 + v3 + 39 * v2);
  v82 = v81 + v1[14];
  *v81 = 66;
  *v82 = "cell_ft_assistance";
  *(v82 + 1) = 18;
  v82[16] = 2;
  v8();
  v83 = (v102 + v3 + 40 * v2);
  v84 = v83 + v1[14];
  *v83 = 67;
  *v84 = "cplane_context";
  *(v84 + 1) = 14;
  v84[16] = 2;
  v8();
  v85 = (v102 + v3 + 41 * v2);
  v86 = v85 + v1[14];
  *v85 = 70;
  *v86 = "supl_init_vec";
  *(v86 + 1) = 13;
  v86[16] = 2;
  v8();
  v87 = (v102 + v3 + 42 * v2);
  v88 = v87 + v1[14];
  *v87 = 71;
  *v88 = "location_id";
  *(v88 + 1) = 11;
  v88[16] = 2;
  v8();
  v89 = (v102 + v3 + 43 * v2);
  v90 = v89 + v1[14];
  *v89 = 72;
  *v90 = "supl_init_index";
  *(v90 + 1) = 15;
  v90[16] = 2;
  v8();
  v91 = (v102 + v3 + 44 * v2);
  v92 = v91 + v1[14];
  *v91 = 73;
  *v92 = "supl_cert";
  *(v92 + 1) = 9;
  v92[16] = 2;
  v8();
  v93 = (v102 + v3 + 45 * v2);
  v94 = v93 + v1[14];
  *v93 = 74;
  *v94 = "serving_cell_lte";
  *(v94 + 1) = 16;
  v94[16] = 2;
  v8();
  v95 = (v102 + v3 + 46 * v2);
  v96 = v95 + v1[14];
  *v95 = 75;
  *v96 = "sim_instance";
  *(v96 + 1) = 12;
  v96[16] = 2;
  v8();
  v97 = (v102 + v3 + 47 * v2);
  v98 = v97 + v1[14];
  *v97 = 76;
  *v98 = "supl_context";
  *(v98 + 1) = 12;
  v98[16] = 2;
  v8();
  v99 = (v102 + v3 + 48 * v2);
  v100 = v99 + v1[14];
  *v99 = 77;
  *v100 = "wlan_measurement_list";
  *(v100 + 1) = 21;
  v100[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1002C23E4()
{
  type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 28) = 0;
  *(v0 + 32) = 15873;
  v1 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistancePosition;
  v2 = type metadata accessor for Proto_Gpsd_InjectAssistancePosition(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceTime;
  v4 = type metadata accessor for Proto_Gpsd_InjectAssistanceTime(0);
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistancePressure;
  v6 = type metadata accessor for Proto_Gpsd_SetAssistancePressure(0);
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAccel;
  v8 = type metadata accessor for Proto_Gpsd_SetAssistanceAccel(0);
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceGyro;
  v10 = type metadata accessor for Proto_Gpsd_SetAssistanceGyro(0);
  (*(*(v10 - 8) + 56))(v0 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceDem;
  v12 = type metadata accessor for Proto_Gpsd_SetAssistanceDem(0);
  (*(*(v12 - 8) + 56))(v0 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMapVector;
  v14 = type metadata accessor for Proto_Gpsd_SetAssistanceMapVector(0);
  (*(*(v14 - 8) + 56))(v0 + v13, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMotionActivityContext;
  v16 = type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext(0);
  (*(*(v16 - 8) + 56))(v0 + v15, 1, 1, v16);
  v17 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMountState;
  v18 = type metadata accessor for Proto_Gpsd_SetAssistanceMountState(0);
  (*(*(v18 - 8) + 56))(v0 + v17, 1, 1, v18);
  v19 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSignalEnvironment;
  v20 = type metadata accessor for Proto_Gpsd_SetAssistanceSignalEnvironment(0);
  (*(*(v20 - 8) + 56))(v0 + v19, 1, 1, v20);
  v21 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSpeedConstraint;
  v22 = type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint(0);
  (*(*(v22 - 8) + 56))(v0 + v21, 1, 1, v22);
  v23 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAlongTrackVelocity;
  v24 = type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity(0);
  (*(*(v24 - 8) + 56))(v0 + v23, 1, 1, v24);
  v25 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceFile;
  v26 = type metadata accessor for Proto_Gpsd_InjectAssistanceFile(0);
  (*(*(v26 - 8) + 56))(v0 + v25, 1, 1, v26);
  v27 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRtiFile;
  v28 = type metadata accessor for Proto_Gpsd_InjectRtiFile(0);
  (*(*(v28 - 8) + 56))(v0 + v27, 1, 1, v28);
  v29 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectSvidBlocklist;
  v30 = type metadata accessor for Proto_Gpsd_InjectSvidBlocklist(0);
  (*(*(v30 - 8) + 56))(v0 + v29, 1, 1, v30);
  v31 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__deleteGnssData;
  v32 = type metadata accessor for Proto_Gpsd_DeleteGnssData(0);
  (*(*(v32 - 8) + 56))(v0 + v31, 1, 1, v32);
  v33 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setPvtmReport;
  v34 = type metadata accessor for Proto_Gpsd_SetPvtmReport(0);
  (*(*(v34 - 8) + 56))(v0 + v33, 1, 1, v34);
  v35 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setNmeaHandler;
  v36 = type metadata accessor for Proto_Gpsd_SetNmeaHandler(0);
  (*(*(v36 - 8) + 56))(v0 + v35, 1, 1, v36);
  v37 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigSimulatorMode;
  v38 = type metadata accessor for Proto_Gpsd_SetConfigSimulatorMode(0);
  (*(*(v38 - 8) + 56))(v0 + v37, 1, 1, v38);
  v39 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigEnableGnssConstellations;
  v40 = type metadata accessor for Proto_Gpsd_SetConfigEnableGnssConstellations(0);
  (*(*(v40 - 8) + 56))(v0 + v39, 1, 1, v40);
  v41 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigDutyCycling;
  v42 = type metadata accessor for Proto_Gpsd_SetConfigDutyCycling(0);
  (*(*(v42 - 8) + 56))(v0 + v41, 1, 1, v42);
  v43 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__terminationImminent;
  v44 = type metadata accessor for Proto_Gpsd_TerminationImminent(0);
  (*(*(v44 - 8) + 56))(v0 + v43, 1, 1, v44);
  v45 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__exitMessage;
  v46 = type metadata accessor for Proto_Gpsd_ExitMessage(0);
  (*(*(v46 - 8) + 56))(v0 + v45, 1, 1, v46);
  v47 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectLtlInfo;
  v48 = type metadata accessor for Proto_Gpsd_LtlInfo(0);
  (*(*(v48 - 8) + 56))(v0 + v47, 1, 1, v48);
  v49 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__startContext;
  started = type metadata accessor for Proto_Gpsd_StartContext(0);
  (*(*(started - 8) + 56))(v0 + v49, 1, 1, started);
  v51 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setThermalRiskState;
  v52 = type metadata accessor for Proto_Gpsd_SetThermalRiskState(0);
  (*(*(v52 - 8) + 56))(v0 + v51, 1, 1, v52);
  v53 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigRfBandEnable;
  v54 = type metadata accessor for Proto_Gpsd_SetConfigRfBandEnable(0);
  (*(*(v54 - 8) + 56))(v0 + v53, 1, 1, v54);
  v55 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRavenOrbitFile;
  v56 = type metadata accessor for Proto_Gpsd_InjectRavenOrbitFile(0);
  (*(*(v56 - 8) + 56))(v0 + v55, 1, 1, v56);
  v57 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__emergConfig;
  v58 = type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0);
  (*(*(v58 - 8) + 56))(v0 + v57, 1, 1, v58);
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gemProtocolRequest) = xmmword_10036D770;
  v59 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__positionRequest;
  v60 = type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0);
  (*(*(v60 - 8) + 56))(v0 + v59, 1, 1, v60);
  v61 = v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__sessionID;
  *v61 = 0;
  *(v61 + 4) = 1;
  v62 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsReferenceTime;
  v63 = type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
  (*(*(v63 - 8) + 56))(v0 + v62, 1, 1, v63);
  v64 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__referenceLocation;
  v65 = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  (*(*(v65 - 8) + 56))(v0 + v64, 1, 1, v65);
  v66 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsNavigationModel;
  v67 = type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0);
  (*(*(v67 - 8) + 56))(v0 + v66, 1, 1, v67);
  v68 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsAcqAssistance;
  v69 = type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
  (*(*(v69 - 8) + 56))(v0 + v68, 1, 1, v69);
  v70 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cellFtAssistance;
  v71 = type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0);
  (*(*(v71 - 8) + 56))(v0 + v70, 1, 1, v71);
  v72 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cplaneContext;
  v73 = type metadata accessor for Proto_Gnss_Emergency_CplaneContext(0);
  (*(*(v73 - 8) + 56))(v0 + v72, 1, 1, v73);
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplInitVec) = &_swiftEmptyArrayStorage;
  v74 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__locationID;
  v75 = type metadata accessor for Proto_Gnss_Emergency_LocationId(0);
  (*(*(v75 - 8) + 56))(v0 + v74, 1, 1, v75);
  v76 = v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplInitIndex;
  *v76 = 0;
  *(v76 + 4) = 1;
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplCert) = &_swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__servingCellLte) = 2;
  v77 = v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__simInstance;
  *v77 = 0;
  *(v77 + 4) = 1;
  v78 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplContext;
  v79 = type metadata accessor for Proto_Gnss_Emergency_SuplContext(0);
  (*(*(v79 - 8) + 56))(v0 + v78, 1, 1, v79);
  v80 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__wlanMeasurementList;
  v81 = type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList(0);
  result = (*(*(v81 - 8) + 56))(v0 + v80, 1, 1, v81);
  qword_100480E68 = v0;
  return result;
}

uint64_t sub_1002C2FB8(uint64_t a1)
{
  v3 = sub_100024A2C(&qword_10042BF60, &qword_100394020);
  __chkstk_darwin(v3 - 8);
  v383 = &v301 - v4;
  v5 = sub_100024A2C(&qword_10042BF58, &qword_100394018);
  __chkstk_darwin(v5 - 8);
  v382 = &v301 - v6;
  v7 = sub_100024A2C(&qword_10042BF50, &qword_100394010);
  __chkstk_darwin(v7 - 8);
  v381 = &v301 - v8;
  v9 = sub_100024A2C(&qword_10042BF48, &qword_100394008);
  __chkstk_darwin(v9 - 8);
  v380 = &v301 - v10;
  v11 = sub_100024A2C(&qword_10042BF40, &qword_100394000);
  __chkstk_darwin(v11 - 8);
  v379 = &v301 - v12;
  v13 = sub_100024A2C(&qword_10042BF38, &qword_100393FF8);
  __chkstk_darwin(v13 - 8);
  v378 = &v301 - v14;
  v15 = sub_100024A2C(&qword_10042BF30, &qword_100393FF0);
  __chkstk_darwin(v15 - 8);
  v377 = &v301 - v16;
  v17 = sub_100024A2C(&qword_10042BF28, &qword_100393FE8);
  __chkstk_darwin(v17 - 8);
  v376 = &v301 - v18;
  v19 = sub_100024A2C(&qword_10042BF20, &qword_100393FE0);
  __chkstk_darwin(v19 - 8);
  v375 = &v301 - v20;
  v21 = sub_100024A2C(&qword_10042BF18, &qword_100393FD8);
  __chkstk_darwin(v21 - 8);
  v374 = &v301 - v22;
  v23 = sub_100024A2C(&qword_10042BF10, &qword_100393FD0);
  __chkstk_darwin(v23 - 8);
  v373 = &v301 - v24;
  v25 = sub_100024A2C(&qword_10042BF08, &qword_100393FC8);
  __chkstk_darwin(v25 - 8);
  v372 = &v301 - v26;
  v27 = sub_100024A2C(&qword_10042BF00, &qword_100393FC0);
  __chkstk_darwin(v27 - 8);
  v371 = &v301 - v28;
  v29 = sub_100024A2C(&qword_10042BEF8, &qword_100393FB8);
  __chkstk_darwin(v29 - 8);
  v370 = &v301 - v30;
  v31 = sub_100024A2C(&qword_10042BEF0, &qword_100393FB0);
  __chkstk_darwin(v31 - 8);
  v369 = &v301 - v32;
  v33 = sub_100024A2C(&qword_10042BEE8, &qword_100393FA8);
  __chkstk_darwin(v33 - 8);
  v368 = &v301 - v34;
  v35 = sub_100024A2C(&qword_10042BEE0, &qword_100393FA0);
  __chkstk_darwin(v35 - 8);
  v367 = &v301 - v36;
  v37 = sub_100024A2C(&qword_10042BED8, &qword_100393F98);
  __chkstk_darwin(v37 - 8);
  v366 = &v301 - v38;
  v39 = sub_100024A2C(&qword_10042BED0, &qword_100393F90);
  __chkstk_darwin(v39 - 8);
  v365 = &v301 - v40;
  v41 = sub_100024A2C(&qword_10042BEC8, &qword_100393F88);
  __chkstk_darwin(v41 - 8);
  v364 = &v301 - v42;
  v43 = sub_100024A2C(&qword_10042BEC0, &qword_100393F80);
  __chkstk_darwin(v43 - 8);
  v363 = &v301 - v44;
  v45 = sub_100024A2C(&qword_10042BEB8, &qword_100393F78);
  __chkstk_darwin(v45 - 8);
  v362 = &v301 - v46;
  v47 = sub_100024A2C(&qword_10042BEB0, &qword_100393F70);
  __chkstk_darwin(v47 - 8);
  v361 = &v301 - v48;
  v49 = sub_100024A2C(&qword_10042BEA8, &qword_100393F68);
  __chkstk_darwin(v49 - 8);
  v360 = &v301 - v50;
  v51 = sub_100024A2C(&qword_10042BEA0, &qword_100393F60);
  __chkstk_darwin(v51 - 8);
  v359 = &v301 - v52;
  v53 = sub_100024A2C(&qword_10042BE98, &qword_100393F58);
  __chkstk_darwin(v53 - 8);
  v357 = &v301 - v54;
  v55 = sub_100024A2C(&qword_10042BE90, &qword_100393F50);
  __chkstk_darwin(v55 - 8);
  v353 = &v301 - v56;
  v57 = sub_100024A2C(&qword_10042BE88, &qword_100393F48);
  __chkstk_darwin(v57 - 8);
  v349 = &v301 - v58;
  v59 = sub_100024A2C(&qword_10042BE80, &qword_100393F40);
  __chkstk_darwin(v59 - 8);
  v345 = &v301 - v60;
  v61 = sub_100024A2C(&qword_10042BE78, &qword_100393F38);
  __chkstk_darwin(v61 - 8);
  v341 = &v301 - v62;
  v63 = sub_100024A2C(&qword_10042BE70, &qword_100393F30);
  __chkstk_darwin(v63 - 8);
  v337 = &v301 - v64;
  v65 = sub_100024A2C(&qword_10042BE68, &qword_100393F28);
  __chkstk_darwin(v65 - 8);
  v334 = &v301 - v66;
  v67 = sub_100024A2C(&qword_10042BE60, &qword_100393F20);
  __chkstk_darwin(v67 - 8);
  v329 = &v301 - v68;
  v69 = sub_100024A2C(&qword_10042BE58, &qword_100393F18);
  __chkstk_darwin(v69 - 8);
  v325 = &v301 - v70;
  v71 = sub_100024A2C(&qword_10042BE50, &qword_100393F10);
  __chkstk_darwin(v71 - 8);
  v320 = &v301 - v72;
  v73 = sub_100024A2C(&qword_10042BE48, &qword_100393F08);
  __chkstk_darwin(v73 - 8);
  v316 = &v301 - v74;
  v75 = sub_100024A2C(&qword_10042BE40, &qword_100393F00);
  __chkstk_darwin(v75 - 8);
  v311 = &v301 - v76;
  v77 = sub_100024A2C(&qword_10042BE38, &qword_100393EF8);
  __chkstk_darwin(v77 - 8);
  v306 = &v301 - v78;
  v79 = sub_100024A2C(&qword_10042BE30, &qword_100393EF0);
  __chkstk_darwin(v79 - 8);
  v302 = &v301 - v80;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 28) = 0;
  *(v1 + 32) = 1;
  *(v1 + 33) = 62;
  v81 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistancePosition;
  v82 = type metadata accessor for Proto_Gpsd_InjectAssistancePosition(0);
  (*(*(v82 - 8) + 56))(v1 + v81, 1, 1, v82);
  v83 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceTime;
  v301 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceTime;
  v84 = type metadata accessor for Proto_Gpsd_InjectAssistanceTime(0);
  (*(*(v84 - 8) + 56))(v1 + v83, 1, 1, v84);
  v85 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistancePressure;
  v303 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistancePressure;
  v86 = type metadata accessor for Proto_Gpsd_SetAssistancePressure(0);
  (*(*(v86 - 8) + 56))(v1 + v85, 1, 1, v86);
  v87 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAccel;
  v304 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAccel;
  v88 = type metadata accessor for Proto_Gpsd_SetAssistanceAccel(0);
  (*(*(v88 - 8) + 56))(v1 + v87, 1, 1, v88);
  v89 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceGyro;
  v305 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceGyro;
  v90 = type metadata accessor for Proto_Gpsd_SetAssistanceGyro(0);
  (*(*(v90 - 8) + 56))(v1 + v89, 1, 1, v90);
  v91 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceDem;
  v307 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceDem;
  v92 = type metadata accessor for Proto_Gpsd_SetAssistanceDem(0);
  (*(*(v92 - 8) + 56))(v1 + v91, 1, 1, v92);
  v93 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMapVector;
  v308 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMapVector;
  v94 = type metadata accessor for Proto_Gpsd_SetAssistanceMapVector(0);
  (*(*(v94 - 8) + 56))(v1 + v93, 1, 1, v94);
  v95 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMotionActivityContext;
  v309 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMotionActivityContext;
  v96 = type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext(0);
  (*(*(v96 - 8) + 56))(v1 + v95, 1, 1, v96);
  v97 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMountState;
  v310 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMountState;
  v98 = type metadata accessor for Proto_Gpsd_SetAssistanceMountState(0);
  (*(*(v98 - 8) + 56))(v1 + v97, 1, 1, v98);
  v99 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSignalEnvironment;
  v312 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSignalEnvironment;
  v100 = type metadata accessor for Proto_Gpsd_SetAssistanceSignalEnvironment(0);
  (*(*(v100 - 8) + 56))(v1 + v99, 1, 1, v100);
  v101 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSpeedConstraint;
  v313 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSpeedConstraint;
  v102 = type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint(0);
  (*(*(v102 - 8) + 56))(v1 + v101, 1, 1, v102);
  v103 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAlongTrackVelocity;
  v314 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAlongTrackVelocity;
  v104 = type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity(0);
  (*(*(v104 - 8) + 56))(v1 + v103, 1, 1, v104);
  v105 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceFile;
  v315 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceFile;
  v106 = type metadata accessor for Proto_Gpsd_InjectAssistanceFile(0);
  (*(*(v106 - 8) + 56))(v1 + v105, 1, 1, v106);
  v107 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRtiFile;
  v317 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRtiFile;
  v108 = type metadata accessor for Proto_Gpsd_InjectRtiFile(0);
  (*(*(v108 - 8) + 56))(v1 + v107, 1, 1, v108);
  v109 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectSvidBlocklist;
  v318 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectSvidBlocklist;
  v110 = type metadata accessor for Proto_Gpsd_InjectSvidBlocklist(0);
  (*(*(v110 - 8) + 56))(v1 + v109, 1, 1, v110);
  v111 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__deleteGnssData;
  v319 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__deleteGnssData;
  v112 = type metadata accessor for Proto_Gpsd_DeleteGnssData(0);
  (*(*(v112 - 8) + 56))(v1 + v111, 1, 1, v112);
  v113 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setPvtmReport;
  v321 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setPvtmReport;
  v114 = type metadata accessor for Proto_Gpsd_SetPvtmReport(0);
  (*(*(v114 - 8) + 56))(v1 + v113, 1, 1, v114);
  v115 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setNmeaHandler;
  v322 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setNmeaHandler;
  v116 = type metadata accessor for Proto_Gpsd_SetNmeaHandler(0);
  (*(*(v116 - 8) + 56))(v1 + v115, 1, 1, v116);
  v117 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigSimulatorMode;
  v323 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigSimulatorMode;
  v118 = type metadata accessor for Proto_Gpsd_SetConfigSimulatorMode(0);
  (*(*(v118 - 8) + 56))(v1 + v117, 1, 1, v118);
  v119 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigEnableGnssConstellations;
  v324 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigEnableGnssConstellations;
  v120 = type metadata accessor for Proto_Gpsd_SetConfigEnableGnssConstellations(0);
  (*(*(v120 - 8) + 56))(v1 + v119, 1, 1, v120);
  v121 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigDutyCycling;
  v326 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigDutyCycling;
  v122 = type metadata accessor for Proto_Gpsd_SetConfigDutyCycling(0);
  (*(*(v122 - 8) + 56))(v1 + v121, 1, 1, v122);
  v123 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__terminationImminent;
  v327 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__terminationImminent;
  v124 = type metadata accessor for Proto_Gpsd_TerminationImminent(0);
  (*(*(v124 - 8) + 56))(v1 + v123, 1, 1, v124);
  v125 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__exitMessage;
  v328 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__exitMessage;
  v126 = type metadata accessor for Proto_Gpsd_ExitMessage(0);
  (*(*(v126 - 8) + 56))(v1 + v125, 1, 1, v126);
  v127 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectLtlInfo;
  v330 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectLtlInfo;
  v128 = type metadata accessor for Proto_Gpsd_LtlInfo(0);
  (*(*(v128 - 8) + 56))(v1 + v127, 1, 1, v128);
  v129 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__startContext;
  v331 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__startContext;
  started = type metadata accessor for Proto_Gpsd_StartContext(0);
  (*(*(started - 8) + 56))(v1 + v129, 1, 1, started);
  v131 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setThermalRiskState;
  v332 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setThermalRiskState;
  v132 = type metadata accessor for Proto_Gpsd_SetThermalRiskState(0);
  (*(*(v132 - 8) + 56))(v1 + v131, 1, 1, v132);
  v133 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigRfBandEnable;
  v333 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigRfBandEnable;
  v134 = type metadata accessor for Proto_Gpsd_SetConfigRfBandEnable(0);
  (*(*(v134 - 8) + 56))(v1 + v133, 1, 1, v134);
  v135 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRavenOrbitFile;
  v335 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRavenOrbitFile;
  v136 = type metadata accessor for Proto_Gpsd_InjectRavenOrbitFile(0);
  (*(*(v136 - 8) + 56))(v1 + v135, 1, 1, v136);
  v137 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__emergConfig;
  v336 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__emergConfig;
  v138 = type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0);
  (*(*(v138 - 8) + 56))(v1 + v137, 1, 1, v138);
  v139 = (v1 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gemProtocolRequest);
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gemProtocolRequest) = xmmword_10036D770;
  v140 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__positionRequest;
  v338 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__positionRequest;
  v141 = type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0);
  (*(*(v141 - 8) + 56))(v1 + v140, 1, 1, v141);
  v142 = v1 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__sessionID;
  v339 = v1 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__sessionID;
  *v142 = 0;
  *(v142 + 4) = 1;
  v143 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsReferenceTime;
  v340 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsReferenceTime;
  v144 = type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
  (*(*(v144 - 8) + 56))(v1 + v143, 1, 1, v144);
  v145 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__referenceLocation;
  v342 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__referenceLocation;
  v146 = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  (*(*(v146 - 8) + 56))(v1 + v145, 1, 1, v146);
  v147 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsNavigationModel;
  v343 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsNavigationModel;
  v148 = type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0);
  (*(*(v148 - 8) + 56))(v1 + v147, 1, 1, v148);
  v149 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsAcqAssistance;
  v344 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsAcqAssistance;
  v150 = type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
  (*(*(v150 - 8) + 56))(v1 + v149, 1, 1, v150);
  v151 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cellFtAssistance;
  v346 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cellFtAssistance;
  v152 = type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0);
  (*(*(v152 - 8) + 56))(v1 + v151, 1, 1, v152);
  v153 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cplaneContext;
  v347 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cplaneContext;
  v154 = type metadata accessor for Proto_Gnss_Emergency_CplaneContext(0);
  (*(*(v154 - 8) + 56))(v1 + v153, 1, 1, v154);
  v348 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplInitVec;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplInitVec) = &_swiftEmptyArrayStorage;
  v155 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__locationID;
  v350 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__locationID;
  v156 = type metadata accessor for Proto_Gnss_Emergency_LocationId(0);
  (*(*(v156 - 8) + 56))(v1 + v155, 1, 1, v156);
  v157 = v1 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplInitIndex;
  v351 = v1 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplInitIndex;
  *v157 = 0;
  *(v157 + 4) = 1;
  v352 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplCert;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplCert) = &_swiftEmptyArrayStorage;
  v158 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__servingCellLte;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__servingCellLte) = 2;
  v159 = v1 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__simInstance;
  v354 = v158;
  v355 = v159;
  *v159 = 0;
  *(v159 + 4) = 1;
  v160 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplContext;
  v356 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplContext;
  v161 = type metadata accessor for Proto_Gnss_Emergency_SuplContext(0);
  (*(*(v161 - 8) + 56))(v1 + v160, 1, 1, v161);
  v162 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__wlanMeasurementList;
  v358 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__wlanMeasurementList;
  v163 = type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList(0);
  (*(*(v163 - 8) + 56))(v1 + v162, 1, 1, v163);
  swift_beginAccess();
  v164 = *(a1 + 16);
  LOBYTE(v162) = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v164;
  *(v1 + 24) = v162;
  swift_beginAccess();
  LODWORD(v162) = *(a1 + 28);
  LOBYTE(v164) = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 28) = v162;
  *(v1 + 32) = v164;
  swift_beginAccess();
  LOBYTE(v162) = *(a1 + 33);
  swift_beginAccess();
  *(v1 + 33) = v162;
  v165 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistancePosition;
  swift_beginAccess();
  v166 = v302;
  sub_10000A0A4(a1 + v165, v302, &qword_10042BE30, &qword_100393EF0);
  swift_beginAccess();
  sub_10000AD64(v166, v1 + v81, &qword_10042BE30, &qword_100393EF0);
  swift_endAccess();
  v167 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceTime;
  swift_beginAccess();
  v168 = v306;
  sub_10000A0A4(a1 + v167, v306, &qword_10042BE38, &qword_100393EF8);
  v169 = v301;
  swift_beginAccess();
  sub_10000AD64(v168, v1 + v169, &qword_10042BE38, &qword_100393EF8);
  swift_endAccess();
  v170 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistancePressure;
  swift_beginAccess();
  v171 = v311;
  sub_10000A0A4(a1 + v170, v311, &qword_10042BE40, &qword_100393F00);
  v172 = v303;
  swift_beginAccess();
  sub_10000AD64(v171, v1 + v172, &qword_10042BE40, &qword_100393F00);
  swift_endAccess();
  v173 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAccel;
  swift_beginAccess();
  v174 = v316;
  sub_10000A0A4(a1 + v173, v316, &qword_10042BE48, &qword_100393F08);
  v175 = v304;
  swift_beginAccess();
  sub_10000AD64(v174, v1 + v175, &qword_10042BE48, &qword_100393F08);
  swift_endAccess();
  v176 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceGyro;
  swift_beginAccess();
  v177 = v320;
  sub_10000A0A4(a1 + v176, v320, &qword_10042BE50, &qword_100393F10);
  v178 = v305;
  swift_beginAccess();
  sub_10000AD64(v177, v1 + v178, &qword_10042BE50, &qword_100393F10);
  swift_endAccess();
  v179 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceDem;
  swift_beginAccess();
  v180 = v325;
  sub_10000A0A4(a1 + v179, v325, &qword_10042BE58, &qword_100393F18);
  v181 = v307;
  swift_beginAccess();
  sub_10000AD64(v180, v1 + v181, &qword_10042BE58, &qword_100393F18);
  swift_endAccess();
  v182 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMapVector;
  swift_beginAccess();
  v183 = v329;
  sub_10000A0A4(a1 + v182, v329, &qword_10042BE60, &qword_100393F20);
  v184 = v308;
  swift_beginAccess();
  sub_10000AD64(v183, v1 + v184, &qword_10042BE60, &qword_100393F20);
  swift_endAccess();
  v185 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMotionActivityContext;
  swift_beginAccess();
  v186 = v334;
  sub_10000A0A4(a1 + v185, v334, &qword_10042BE68, &qword_100393F28);
  v187 = v309;
  swift_beginAccess();
  sub_10000AD64(v186, v1 + v187, &qword_10042BE68, &qword_100393F28);
  swift_endAccess();
  v188 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMountState;
  swift_beginAccess();
  v189 = v337;
  sub_10000A0A4(a1 + v188, v337, &qword_10042BE70, &qword_100393F30);
  v190 = v310;
  swift_beginAccess();
  sub_10000AD64(v189, v1 + v190, &qword_10042BE70, &qword_100393F30);
  swift_endAccess();
  v191 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSignalEnvironment;
  swift_beginAccess();
  v192 = v341;
  sub_10000A0A4(a1 + v191, v341, &qword_10042BE78, &qword_100393F38);
  v193 = v312;
  swift_beginAccess();
  sub_10000AD64(v192, v1 + v193, &qword_10042BE78, &qword_100393F38);
  swift_endAccess();
  v194 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSpeedConstraint;
  swift_beginAccess();
  v195 = v345;
  sub_10000A0A4(a1 + v194, v345, &qword_10042BE80, &qword_100393F40);
  v196 = v313;
  swift_beginAccess();
  sub_10000AD64(v195, v1 + v196, &qword_10042BE80, &qword_100393F40);
  swift_endAccess();
  v197 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAlongTrackVelocity;
  swift_beginAccess();
  v198 = v349;
  sub_10000A0A4(a1 + v197, v349, &qword_10042BE88, &qword_100393F48);
  v199 = v314;
  swift_beginAccess();
  sub_10000AD64(v198, v1 + v199, &qword_10042BE88, &qword_100393F48);
  swift_endAccess();
  v200 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceFile;
  swift_beginAccess();
  v201 = v353;
  sub_10000A0A4(a1 + v200, v353, &qword_10042BE90, &qword_100393F50);
  v202 = v315;
  swift_beginAccess();
  sub_10000AD64(v201, v1 + v202, &qword_10042BE90, &qword_100393F50);
  swift_endAccess();
  v203 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRtiFile;
  swift_beginAccess();
  v204 = v357;
  sub_10000A0A4(a1 + v203, v357, &qword_10042BE98, &qword_100393F58);
  v205 = v317;
  swift_beginAccess();
  sub_10000AD64(v204, v1 + v205, &qword_10042BE98, &qword_100393F58);
  swift_endAccess();
  v206 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectSvidBlocklist;
  swift_beginAccess();
  v207 = v359;
  sub_10000A0A4(a1 + v206, v359, &qword_10042BEA0, &qword_100393F60);
  v208 = v318;
  swift_beginAccess();
  sub_10000AD64(v207, v1 + v208, &qword_10042BEA0, &qword_100393F60);
  swift_endAccess();
  v209 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__deleteGnssData;
  swift_beginAccess();
  v210 = v360;
  sub_10000A0A4(a1 + v209, v360, &qword_10042BEA8, &qword_100393F68);
  v211 = v319;
  swift_beginAccess();
  sub_10000AD64(v210, v1 + v211, &qword_10042BEA8, &qword_100393F68);
  swift_endAccess();
  v212 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setPvtmReport;
  swift_beginAccess();
  v213 = v361;
  sub_10000A0A4(a1 + v212, v361, &qword_10042BEB0, &qword_100393F70);
  v214 = v321;
  swift_beginAccess();
  sub_10000AD64(v213, v1 + v214, &qword_10042BEB0, &qword_100393F70);
  swift_endAccess();
  v215 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setNmeaHandler;
  swift_beginAccess();
  v216 = v362;
  sub_10000A0A4(a1 + v215, v362, &qword_10042BEB8, &qword_100393F78);
  v217 = v322;
  swift_beginAccess();
  sub_10000AD64(v216, v1 + v217, &qword_10042BEB8, &qword_100393F78);
  swift_endAccess();
  v218 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigSimulatorMode;
  swift_beginAccess();
  v219 = v363;
  sub_10000A0A4(a1 + v218, v363, &qword_10042BEC0, &qword_100393F80);
  v220 = v323;
  swift_beginAccess();
  sub_10000AD64(v219, v1 + v220, &qword_10042BEC0, &qword_100393F80);
  swift_endAccess();
  v221 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigEnableGnssConstellations;
  swift_beginAccess();
  v222 = v364;
  sub_10000A0A4(a1 + v221, v364, &qword_10042BEC8, &qword_100393F88);
  v223 = v324;
  swift_beginAccess();
  sub_10000AD64(v222, v1 + v223, &qword_10042BEC8, &qword_100393F88);
  swift_endAccess();
  v224 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigDutyCycling;
  swift_beginAccess();
  v225 = v365;
  sub_10000A0A4(a1 + v224, v365, &qword_10042BED0, &qword_100393F90);
  v226 = v326;
  swift_beginAccess();
  sub_10000AD64(v225, v1 + v226, &qword_10042BED0, &qword_100393F90);
  swift_endAccess();
  v227 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__terminationImminent;
  swift_beginAccess();
  v228 = v366;
  sub_10000A0A4(a1 + v227, v366, &qword_10042BED8, &qword_100393F98);
  v229 = v327;
  swift_beginAccess();
  sub_10000AD64(v228, v1 + v229, &qword_10042BED8, &qword_100393F98);
  swift_endAccess();
  v230 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__exitMessage;
  swift_beginAccess();
  v231 = v367;
  sub_10000A0A4(a1 + v230, v367, &qword_10042BEE0, &qword_100393FA0);
  v232 = v328;
  swift_beginAccess();
  sub_10000AD64(v231, v1 + v232, &qword_10042BEE0, &qword_100393FA0);
  swift_endAccess();
  v233 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectLtlInfo;
  swift_beginAccess();
  v234 = v368;
  sub_10000A0A4(a1 + v233, v368, &qword_10042BEE8, &qword_100393FA8);
  v235 = v330;
  swift_beginAccess();
  sub_10000AD64(v234, v1 + v235, &qword_10042BEE8, &qword_100393FA8);
  swift_endAccess();
  v236 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__startContext;
  swift_beginAccess();
  v237 = v369;
  sub_10000A0A4(a1 + v236, v369, &qword_10042BEF0, &qword_100393FB0);
  v238 = v331;
  swift_beginAccess();
  sub_10000AD64(v237, v1 + v238, &qword_10042BEF0, &qword_100393FB0);
  swift_endAccess();
  v239 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setThermalRiskState;
  swift_beginAccess();
  v240 = v370;
  sub_10000A0A4(a1 + v239, v370, &qword_10042BEF8, &qword_100393FB8);
  v241 = v332;
  swift_beginAccess();
  sub_10000AD64(v240, v1 + v241, &qword_10042BEF8, &qword_100393FB8);
  swift_endAccess();
  v242 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigRfBandEnable;
  swift_beginAccess();
  v243 = v371;
  sub_10000A0A4(a1 + v242, v371, &qword_10042BF00, &qword_100393FC0);
  v244 = v333;
  swift_beginAccess();
  sub_10000AD64(v243, v1 + v244, &qword_10042BF00, &qword_100393FC0);
  swift_endAccess();
  v245 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRavenOrbitFile;
  swift_beginAccess();
  v246 = v372;
  sub_10000A0A4(a1 + v245, v372, &qword_10042BF08, &qword_100393FC8);
  v247 = v335;
  swift_beginAccess();
  sub_10000AD64(v246, v1 + v247, &qword_10042BF08, &qword_100393FC8);
  swift_endAccess();
  v248 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__emergConfig;
  swift_beginAccess();
  v249 = v373;
  sub_10000A0A4(a1 + v248, v373, &qword_10042BF10, &qword_100393FD0);
  v250 = v336;
  swift_beginAccess();
  sub_10000AD64(v249, v1 + v250, &qword_10042BF10, &qword_100393FD0);
  swift_endAccess();
  v251 = (a1 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gemProtocolRequest);
  swift_beginAccess();
  v253 = *v251;
  v252 = v251[1];
  swift_beginAccess();
  v254 = *v139;
  v255 = v139[1];
  *v139 = v253;
  v139[1] = v252;
  sub_10000BE4C(v253, v252);
  sub_10000CA64(v254, v255);
  v256 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__positionRequest;
  swift_beginAccess();
  v257 = v374;
  sub_10000A0A4(a1 + v256, v374, &qword_10042BF18, &qword_100393FD8);
  v258 = v338;
  swift_beginAccess();
  sub_10000AD64(v257, v1 + v258, &qword_10042BF18, &qword_100393FD8);
  swift_endAccess();
  v259 = a1 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__sessionID;
  swift_beginAccess();
  LODWORD(v253) = *v259;
  LOBYTE(v259) = *(v259 + 4);
  v260 = v339;
  swift_beginAccess();
  *v260 = v253;
  *(v260 + 4) = v259;
  v261 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsReferenceTime;
  swift_beginAccess();
  v262 = v375;
  sub_10000A0A4(a1 + v261, v375, &qword_10042BF20, &qword_100393FE0);
  v263 = v340;
  swift_beginAccess();
  sub_10000AD64(v262, v1 + v263, &qword_10042BF20, &qword_100393FE0);
  swift_endAccess();
  v264 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__referenceLocation;
  swift_beginAccess();
  v265 = v376;
  sub_10000A0A4(a1 + v264, v376, &qword_10042BF28, &qword_100393FE8);
  v266 = v342;
  swift_beginAccess();
  sub_10000AD64(v265, v1 + v266, &qword_10042BF28, &qword_100393FE8);
  swift_endAccess();
  v267 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsNavigationModel;
  swift_beginAccess();
  v268 = v377;
  sub_10000A0A4(a1 + v267, v377, &qword_10042BF30, &qword_100393FF0);
  v269 = v343;
  swift_beginAccess();
  sub_10000AD64(v268, v1 + v269, &qword_10042BF30, &qword_100393FF0);
  swift_endAccess();
  v270 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsAcqAssistance;
  swift_beginAccess();
  v271 = v378;
  sub_10000A0A4(a1 + v270, v378, &qword_10042BF38, &qword_100393FF8);
  v272 = v344;
  swift_beginAccess();
  sub_10000AD64(v271, v1 + v272, &qword_10042BF38, &qword_100393FF8);
  swift_endAccess();
  v273 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cellFtAssistance;
  swift_beginAccess();
  v274 = v379;
  sub_10000A0A4(a1 + v273, v379, &qword_10042BF40, &qword_100394000);
  v275 = v346;
  swift_beginAccess();
  sub_10000AD64(v274, v1 + v275, &qword_10042BF40, &qword_100394000);
  swift_endAccess();
  v276 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cplaneContext;
  swift_beginAccess();
  v277 = v380;
  sub_10000A0A4(a1 + v276, v380, &qword_10042BF48, &qword_100394008);
  v278 = v347;
  swift_beginAccess();
  sub_10000AD64(v277, v1 + v278, &qword_10042BF48, &qword_100394008);
  swift_endAccess();
  v279 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplInitVec;
  swift_beginAccess();
  v280 = *(a1 + v279);
  v281 = v348;
  swift_beginAccess();
  *(v1 + v281) = v280;

  v282 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__locationID;
  swift_beginAccess();
  v283 = v381;
  sub_10000A0A4(a1 + v282, v381, &qword_10042BF50, &qword_100394010);
  v284 = v350;
  swift_beginAccess();
  sub_10000AD64(v283, v1 + v284, &qword_10042BF50, &qword_100394010);
  swift_endAccess();
  v285 = a1 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplInitIndex;
  swift_beginAccess();
  LODWORD(v253) = *v285;
  LOBYTE(v285) = *(v285 + 4);
  v286 = v351;
  swift_beginAccess();
  *v286 = v253;
  *(v286 + 4) = v285;
  v287 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplCert;
  swift_beginAccess();
  v288 = *(a1 + v287);
  v289 = v352;
  swift_beginAccess();
  *(v1 + v289) = v288;

  v290 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__servingCellLte;
  swift_beginAccess();
  LOBYTE(v290) = *(a1 + v290);
  v291 = v354;
  swift_beginAccess();
  *(v1 + v291) = v290;
  v292 = a1 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__simInstance;
  swift_beginAccess();
  LODWORD(v291) = *v292;
  LOBYTE(v292) = *(v292 + 4);
  v293 = v355;
  swift_beginAccess();
  *v293 = v291;
  *(v293 + 4) = v292;
  v294 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplContext;
  swift_beginAccess();
  v295 = v382;
  sub_10000A0A4(a1 + v294, v382, &qword_10042BF58, &qword_100394018);
  v296 = v356;
  swift_beginAccess();
  sub_10000AD64(v295, v1 + v296, &qword_10042BF58, &qword_100394018);
  swift_endAccess();
  v297 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__wlanMeasurementList;
  swift_beginAccess();
  v298 = v383;
  sub_10000A0A4(a1 + v297, v383, &qword_10042BF60, &qword_100394020);

  v299 = v358;
  swift_beginAccess();
  sub_10000AD64(v298, v1 + v299, &qword_10042BF60, &qword_100394020);
  swift_endAccess();
  return v1;
}

uint64_t sub_1002C5D88()
{
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistancePosition, &qword_10042BE30, &qword_100393EF0);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceTime, &qword_10042BE38, &qword_100393EF8);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistancePressure, &qword_10042BE40, &qword_100393F00);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAccel, &qword_10042BE48, &qword_100393F08);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceGyro, &qword_10042BE50, &qword_100393F10);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceDem, &qword_10042BE58, &qword_100393F18);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMapVector, &qword_10042BE60, &qword_100393F20);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMotionActivityContext, &qword_10042BE68, &qword_100393F28);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMountState, &qword_10042BE70, &qword_100393F30);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSignalEnvironment, &qword_10042BE78, &qword_100393F38);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSpeedConstraint, &qword_10042BE80, &qword_100393F40);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAlongTrackVelocity, &qword_10042BE88, &qword_100393F48);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceFile, &qword_10042BE90, &qword_100393F50);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRtiFile, &qword_10042BE98, &qword_100393F58);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectSvidBlocklist, &qword_10042BEA0, &qword_100393F60);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__deleteGnssData, &qword_10042BEA8, &qword_100393F68);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setPvtmReport, &qword_10042BEB0, &qword_100393F70);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setNmeaHandler, &qword_10042BEB8, &qword_100393F78);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigSimulatorMode, &qword_10042BEC0, &qword_100393F80);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigEnableGnssConstellations, &qword_10042BEC8, &qword_100393F88);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigDutyCycling, &qword_10042BED0, &qword_100393F90);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__terminationImminent, &qword_10042BED8, &qword_100393F98);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__exitMessage, &qword_10042BEE0, &qword_100393FA0);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectLtlInfo, &qword_10042BEE8, &qword_100393FA8);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__startContext, &qword_10042BEF0, &qword_100393FB0);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setThermalRiskState, &qword_10042BEF8, &qword_100393FB8);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigRfBandEnable, &qword_10042BF00, &qword_100393FC0);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRavenOrbitFile, &qword_10042BF08, &qword_100393FC8);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__emergConfig, &qword_10042BF10, &qword_100393FD0);
  sub_10000CA64(*(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gemProtocolRequest), *(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gemProtocolRequest + 8));
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__positionRequest, &qword_10042BF18, &qword_100393FD8);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsReferenceTime, &qword_10042BF20, &qword_100393FE0);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__referenceLocation, &qword_10042BF28, &qword_100393FE8);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsNavigationModel, &qword_10042BF30, &qword_100393FF0);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsAcqAssistance, &qword_10042BF38, &qword_100393FF8);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cellFtAssistance, &qword_10042BF40, &qword_100394000);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cplaneContext, &qword_10042BF48, &qword_100394008);

  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__locationID, &qword_10042BF50, &qword_100394010);

  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplContext, &qword_10042BF58, &qword_100394018);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__wlanMeasurementList, &qword_10042BF60, &qword_100394020);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_1002C62F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for Proto_Gpsd_Request(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gpsd_Request._StorageClass(0);
    v9 = swift_allocObject();
    sub_1002C2FB8(v8);
    *(v5 + v6) = v9;
  }

  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v11 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        swift_beginAccess();
        dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
        goto LABEL_52;
      case 2:
      case 61:
      case 72:
      case 75:
        swift_beginAccess();
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        goto LABEL_52;
      case 3:
        swift_beginAccess();
        sub_100303344();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        goto LABEL_52;
      case 4:
        swift_beginAccess();
        type metadata accessor for Proto_Gpsd_InjectAssistancePosition(0);
        v12 = &qword_10042C308;
        v13 = type metadata accessor for Proto_Gpsd_InjectAssistancePosition;
        v14 = &unk_100395438;
        goto LABEL_51;
      case 5:
        swift_beginAccess();
        type metadata accessor for Proto_Gpsd_InjectAssistanceTime(0);
        v12 = &qword_10042C320;
        v13 = type metadata accessor for Proto_Gpsd_InjectAssistanceTime;
        v14 = &unk_1003955A0;
        goto LABEL_51;
      case 6:
        swift_beginAccess();
        type metadata accessor for Proto_Gpsd_SetAssistancePressure(0);
        v12 = &qword_10042C368;
        v13 = type metadata accessor for Proto_Gpsd_SetAssistancePressure;
        v14 = &unk_1003959D8;
        goto LABEL_51;
      case 7:
        swift_beginAccess();
        type metadata accessor for Proto_Gpsd_SetAssistanceAccel(0);
        v12 = &qword_10042C380;
        v13 = type metadata accessor for Proto_Gpsd_SetAssistanceAccel;
        v14 = &unk_100395B40;
        goto LABEL_51;
      case 8:
        swift_beginAccess();
        type metadata accessor for Proto_Gpsd_SetAssistanceGyro(0);
        v12 = &qword_10042C398;
        v13 = type metadata accessor for Proto_Gpsd_SetAssistanceGyro;
        v14 = &unk_100395CA8;
        goto LABEL_51;
      case 9:
        swift_beginAccess();
        type metadata accessor for Proto_Gpsd_SetAssistanceDem(0);
        v12 = &qword_10042C3B0;
        v13 = type metadata accessor for Proto_Gpsd_SetAssistanceDem;
        v14 = &unk_100395E10;
        goto LABEL_51;
      case 10:
        swift_beginAccess();
        type metadata accessor for Proto_Gpsd_SetAssistanceMapVector(0);
        v12 = &qword_10042C3C8;
        v13 = type metadata accessor for Proto_Gpsd_SetAssistanceMapVector;
        v14 = &unk_100395F78;
        goto LABEL_51;
      case 11:
        swift_beginAccess();
        type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext(0);
        v12 = &qword_10042C3E0;
        v13 = type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext;
        v14 = &unk_1003960E0;
        goto LABEL_51;
      case 12:
        swift_beginAccess();
        type metadata accessor for Proto_Gpsd_SetAssistanceMountState(0);
        v12 = &qword_10042C3F8;
        v13 = type metadata accessor for Proto_Gpsd_SetAssistanceMountState;
        v14 = &unk_100396248;
        goto LABEL_51;
      case 13:
        swift_beginAccess();
        type metadata accessor for Proto_Gpsd_SetAssistanceSignalEnvironment(0);
        v12 = &qword_10042C410;
        v13 = type metadata accessor for Proto_Gpsd_SetAssistanceSignalEnvironment;
        v14 = &unk_1003963B0;
        goto LABEL_51;
      case 14:
        swift_beginAccess();
        type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint(0);
        v12 = &qword_10042C428;
        v13 = type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint;
        v14 = &unk_100396518;
        goto LABEL_51;
      case 15:
        swift_beginAccess();
        type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity(0);
        v12 = &qword_10042C440;
        v13 = type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity;
        v14 = &unk_100396680;
        goto LABEL_51;
      case 16:
        swift_beginAccess();
        type metadata accessor for Proto_Gpsd_InjectAssistanceFile(0);
        v12 = &qword_10042C2A8;
        v13 = type metadata accessor for Proto_Gpsd_InjectAssistanceFile;
        v14 = &unk_100394E98;
        goto LABEL_51;
      case 17:
        swift_beginAccess();
        type metadata accessor for Proto_Gpsd_InjectRtiFile(0);
        v12 = &qword_10042C2C0;
        v13 = type metadata accessor for Proto_Gpsd_InjectRtiFile;
        v14 = &unk_100395000;
        goto LABEL_51;
      case 18:
        swift_beginAccess();
        type metadata accessor for Proto_Gpsd_InjectSvidBlocklist(0);
        v12 = &qword_10042C2F0;
        v13 = type metadata accessor for Proto_Gpsd_InjectSvidBlocklist;
        v14 = &unk_1003952D0;
        goto LABEL_51;
      case 19:
        swift_beginAccess();
        type metadata accessor for Proto_Gpsd_DeleteGnssData(0);
        v12 = &qword_10042C338;
        v13 = type metadata accessor for Proto_Gpsd_DeleteGnssData;
        v14 = &unk_100395708;
        goto LABEL_51;
      case 20:
        swift_beginAccess();
        type metadata accessor for Proto_Gpsd_SetPvtmReport(0);
        v12 = &qword_10042C290;
        v13 = type metadata accessor for Proto_Gpsd_SetPvtmReport;
        v14 = &unk_100394D30;
        goto LABEL_51;
      case 21:
        swift_beginAccess();
        type metadata accessor for Proto_Gpsd_SetNmeaHandler(0);
        v12 = &qword_10042C350;
        v13 = type metadata accessor for Proto_Gpsd_SetNmeaHandler;
        v14 = &unk_100395870;
        goto LABEL_51;
      case 22:
        swift_beginAccess();
        type metadata accessor for Proto_Gpsd_SetConfigSimulatorMode(0);
        v12 = &qword_10042C470;
        v13 = type metadata accessor for Proto_Gpsd_SetConfigSimulatorMode;
        v14 = &unk_100396950;
        goto LABEL_51;
      case 23:
        swift_beginAccess();
        type metadata accessor for Proto_Gpsd_SetConfigEnableGnssConstellations(0);
        v12 = &qword_10042C488;
        v13 = type metadata accessor for Proto_Gpsd_SetConfigEnableGnssConstellations;
        v14 = &unk_100396AB8;
        goto LABEL_51;
      case 24:
        swift_beginAccess();
        type metadata accessor for Proto_Gpsd_SetConfigDutyCycling(0);
        v12 = &qword_10042C4B8;
        v13 = type metadata accessor for Proto_Gpsd_SetConfigDutyCycling;
        v14 = &unk_100396D88;
        goto LABEL_51;
      case 25:
        swift_beginAccess();
        type metadata accessor for Proto_Gpsd_TerminationImminent(0);
        v12 = &qword_10042C4D0;
        v13 = type metadata accessor for Proto_Gpsd_TerminationImminent;
        v14 = &unk_100396EF0;
        goto LABEL_51;
      case 26:
        swift_beginAccess();
        type metadata accessor for Proto_Gpsd_ExitMessage(0);
        v12 = &qword_10042C4E8;
        v13 = type metadata accessor for Proto_Gpsd_ExitMessage;
        v14 = &unk_100397058;
        goto LABEL_51;
      case 27:
        swift_beginAccess();
        type metadata accessor for Proto_Gpsd_LtlInfo(0);
        v12 = &qword_10042C558;
        v13 = type metadata accessor for Proto_Gpsd_LtlInfo;
        v14 = &unk_100397760;
        goto LABEL_51;
      case 28:
        swift_beginAccess();
        type metadata accessor for Proto_Gpsd_StartContext(0);
        v12 = &qword_10042C608;
        v13 = type metadata accessor for Proto_Gpsd_StartContext;
        v14 = &unk_1003982A0;
        goto LABEL_51;
      case 30:
        swift_beginAccess();
        type metadata accessor for Proto_Gpsd_SetThermalRiskState(0);
        v12 = &qword_10042C458;
        v13 = type metadata accessor for Proto_Gpsd_SetThermalRiskState;
        v14 = &unk_1003967E8;
        goto LABEL_51;
      case 31:
        swift_beginAccess();
        type metadata accessor for Proto_Gpsd_SetConfigRfBandEnable(0);
        v12 = &qword_10042C4A0;
        v13 = type metadata accessor for Proto_Gpsd_SetConfigRfBandEnable;
        v14 = &unk_100396C20;
        goto LABEL_51;
      case 32:
        swift_beginAccess();
        type metadata accessor for Proto_Gpsd_InjectRavenOrbitFile(0);
        v12 = &qword_10042C2D8;
        v13 = type metadata accessor for Proto_Gpsd_InjectRavenOrbitFile;
        v14 = &unk_100395168;
        goto LABEL_51;
      case 50:
        swift_beginAccess();
        type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0);
        v12 = &qword_1004251D8;
        v13 = type metadata accessor for Proto_Gnss_Emergency_EmergConfig;
        v14 = &unk_10038DD78;
        goto LABEL_51;
      case 51:
        swift_beginAccess();
        dispatch thunk of Decoder.decodeSingularBytesField(value:)();
        goto LABEL_52;
      case 60:
        swift_beginAccess();
        type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0);
        v12 = &qword_100424C58;
        v13 = type metadata accessor for Proto_Gnss_Emergency_PositionRequest;
        v14 = &unk_1003887B0;
        goto LABEL_51;
      case 62:
        swift_beginAccess();
        type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
        v12 = &qword_100425150;
        v13 = type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime;
        v14 = &unk_10038D508;
        goto LABEL_51;
      case 63:
        swift_beginAccess();
        type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
        v12 = &qword_100425168;
        v13 = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation;
        v14 = &unk_10038D670;
        goto LABEL_51;
      case 64:
        swift_beginAccess();
        type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0);
        v12 = &qword_100425190;
        v13 = type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel;
        v14 = &unk_10038D940;
        goto LABEL_51;
      case 65:
        swift_beginAccess();
        type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
        v12 = &qword_100425200;
        v13 = type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance;
        v14 = &unk_10038E048;
        goto LABEL_51;
      case 66:
        swift_beginAccess();
        type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0);
        v12 = &qword_100425230;
        v13 = type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance;
        v14 = &unk_10038E318;
        goto LABEL_51;
      case 67:
        swift_beginAccess();
        type metadata accessor for Proto_Gnss_Emergency_CplaneContext(0);
        v12 = &qword_1004251C0;
        v13 = type metadata accessor for Proto_Gnss_Emergency_CplaneContext;
        v14 = &unk_10038DC10;
        goto LABEL_51;
      case 70:
      case 73:
        swift_beginAccess();
        dispatch thunk of Decoder.decodeRepeatedUInt32Field(value:)();
        goto LABEL_52;
      case 71:
        swift_beginAccess();
        type metadata accessor for Proto_Gnss_Emergency_LocationId(0);
        v12 = &qword_100424AF8;
        v13 = type metadata accessor for Proto_Gnss_Emergency_LocationId;
        v14 = &unk_100387298;
        goto LABEL_51;
      case 74:
        swift_beginAccess();
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        goto LABEL_52;
      case 76:
        swift_beginAccess();
        type metadata accessor for Proto_Gnss_Emergency_SuplContext(0);
        v12 = &qword_100424BC8;
        v13 = type metadata accessor for Proto_Gnss_Emergency_SuplContext;
        v14 = &unk_100387F40;
        goto LABEL_51;
      case 77:
        swift_beginAccess();
        type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList(0);
        v12 = &qword_100424B38;
        v13 = type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList;
        v14 = &unk_1003876D0;
LABEL_51:
        sub_1002FB284(v12, v13, v14);
        v4 = 0;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
LABEL_52:
        swift_endAccess();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1002C73BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for Proto_Gpsd_Request(0) + 20));
  result = swift_beginAccess();
  if ((v9[24] & 1) == 0)
  {
    result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
  }

  if (!v4)
  {
    swift_beginAccess();
    if ((v9[32] & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    swift_beginAccess();
    if (v9[33] != 62)
    {
      sub_100303344();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    sub_1002C7B70(v9, a1, a2, a3);
    sub_1002C7D98(v9, a1, a2, a3);
    sub_1002C7FC0(v9, a1, a2, a3);
    sub_1002C81E8(v9, a1, a2, a3);
    sub_1002C8410(v9, a1, a2, a3);
    sub_1002C8638(v9, a1, a2, a3);
    sub_1002C8860(v9, a1, a2, a3);
    sub_1002C8A88(v9, a1, a2, a3);
    sub_1002C8CB0(v9, a1, a2, a3);
    sub_1002C8ED8(v9, a1, a2, a3);
    sub_1002C9100(v9, a1, a2, a3);
    sub_1002C9328(v9, a1, a2, a3);
    sub_1002C9550(v9, a1, a2, a3);
    sub_1002C9778(v9, a1, a2, a3);
    sub_1002C99A0(v9, a1, a2, a3);
    sub_1002C9BC8(v9, a1, a2, a3);
    sub_1002C9DF0(v9, a1, a2, a3);
    sub_1002CA018(v9, a1, a2, a3);
    sub_1002CA240(v9, a1, a2, a3);
    sub_1002CA468(v9, a1, a2, a3);
    sub_1002CA690(v9, a1, a2, a3);
    sub_1002CA8B8(v9, a1, a2, a3);
    sub_1002CAAE0(v9, a1, a2, a3);
    sub_1002CAD08(v9, a1, a2, a3);
    sub_1002CAF30(v9, a1, a2, a3);
    sub_1002CB158(v9, a1, a2, a3);
    sub_1002CB380(v9, a1, a2, a3);
    sub_1002CB5A8(v9, a1, a2, a3);
    sub_1002CB7D0(v9, a1, a2, a3);
    sub_1002DD444(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gemProtocolRequest, 51);
    sub_1002CB9F8(v9, a1, a2, a3);
    sub_1002DE4C0(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__sessionID, 61);
    sub_1002CBC20(v9, a1, a2, a3);
    sub_1002CBE48(v9, a1, a2, a3);
    sub_1002CC070(v9, a1, a2, a3);
    sub_1002CC298(v9, a1, a2, a3);
    sub_1002CC4C0(v9, a1, a2, a3);
    sub_1002CC6E8(v9, a1, a2, a3);
    v11 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplInitVec;
    swift_beginAccess();
    if (*(*&v9[v11] + 16))
    {

      dispatch thunk of Visitor.visitRepeatedUInt32Field(value:fieldNumber:)();
    }

    sub_1002CC910(v9, a1, a2, a3);
    sub_1002DE4C0(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplInitIndex, 72);
    v12 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplCert;
    swift_beginAccess();
    if (*(*&v9[v12] + 16))
    {

      dispatch thunk of Visitor.visitRepeatedUInt32Field(value:fieldNumber:)();
    }

    sub_1002CCB38(v9, a1, a2, a3);
    sub_1002DE4C0(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__simInstance, 75);
    sub_1002CCBC8(v9, a1, a2, a3);
    sub_1002CCDF0(v9, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_1002C7B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10042BE30, &qword_100393EF0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gpsd_InjectAssistancePosition(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistancePosition;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10042BE30, &qword_100393EF0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10042BE30, &qword_100393EF0);
  }

  sub_1002F7BE8(v7, v11, type metadata accessor for Proto_Gpsd_InjectAssistancePosition);
  sub_1002FB284(&qword_10042C308, type metadata accessor for Proto_Gpsd_InjectAssistancePosition, &unk_100395438);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v11, type metadata accessor for Proto_Gpsd_InjectAssistancePosition);
}

uint64_t sub_1002C7D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10042BE38, &qword_100393EF8);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gpsd_InjectAssistanceTime(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10042BE38, &qword_100393EF8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10042BE38, &qword_100393EF8);
  }

  sub_1002F7BE8(v7, v11, type metadata accessor for Proto_Gpsd_InjectAssistanceTime);
  sub_1002FB284(&qword_10042C320, type metadata accessor for Proto_Gpsd_InjectAssistanceTime, &unk_1003955A0);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v11, type metadata accessor for Proto_Gpsd_InjectAssistanceTime);
}

uint64_t sub_1002C7FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10042BE40, &qword_100393F00);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gpsd_SetAssistancePressure(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistancePressure;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10042BE40, &qword_100393F00);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10042BE40, &qword_100393F00);
  }

  sub_1002F7BE8(v7, v11, type metadata accessor for Proto_Gpsd_SetAssistancePressure);
  sub_1002FB284(&qword_10042C368, type metadata accessor for Proto_Gpsd_SetAssistancePressure, &unk_1003959D8);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v11, type metadata accessor for Proto_Gpsd_SetAssistancePressure);
}

uint64_t sub_1002C81E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10042BE48, &qword_100393F08);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gpsd_SetAssistanceAccel(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAccel;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10042BE48, &qword_100393F08);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10042BE48, &qword_100393F08);
  }

  sub_1002F7BE8(v7, v11, type metadata accessor for Proto_Gpsd_SetAssistanceAccel);
  sub_1002FB284(&qword_10042C380, type metadata accessor for Proto_Gpsd_SetAssistanceAccel, &unk_100395B40);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v11, type metadata accessor for Proto_Gpsd_SetAssistanceAccel);
}

uint64_t sub_1002C8410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10042BE50, &qword_100393F10);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gpsd_SetAssistanceGyro(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceGyro;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10042BE50, &qword_100393F10);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10042BE50, &qword_100393F10);
  }

  sub_1002F7BE8(v7, v11, type metadata accessor for Proto_Gpsd_SetAssistanceGyro);
  sub_1002FB284(&qword_10042C398, type metadata accessor for Proto_Gpsd_SetAssistanceGyro, &unk_100395CA8);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v11, type metadata accessor for Proto_Gpsd_SetAssistanceGyro);
}

uint64_t sub_1002C8638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10042BE58, &qword_100393F18);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gpsd_SetAssistanceDem(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceDem;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10042BE58, &qword_100393F18);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10042BE58, &qword_100393F18);
  }

  sub_1002F7BE8(v7, v11, type metadata accessor for Proto_Gpsd_SetAssistanceDem);
  sub_1002FB284(&qword_10042C3B0, type metadata accessor for Proto_Gpsd_SetAssistanceDem, &unk_100395E10);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v11, type metadata accessor for Proto_Gpsd_SetAssistanceDem);
}

uint64_t sub_1002C8860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10042BE60, &qword_100393F20);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gpsd_SetAssistanceMapVector(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMapVector;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10042BE60, &qword_100393F20);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10042BE60, &qword_100393F20);
  }

  sub_1002F7BE8(v7, v11, type metadata accessor for Proto_Gpsd_SetAssistanceMapVector);
  sub_1002FB284(&qword_10042C3C8, type metadata accessor for Proto_Gpsd_SetAssistanceMapVector, &unk_100395F78);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v11, type metadata accessor for Proto_Gpsd_SetAssistanceMapVector);
}

uint64_t sub_1002C8A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10042BE68, &qword_100393F28);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMotionActivityContext;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10042BE68, &qword_100393F28);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10042BE68, &qword_100393F28);
  }

  sub_1002F7BE8(v7, v11, type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext);
  sub_1002FB284(&qword_10042C3E0, type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext, &unk_1003960E0);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v11, type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext);
}

uint64_t sub_1002C8CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10042BE70, &qword_100393F30);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gpsd_SetAssistanceMountState(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMountState;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10042BE70, &qword_100393F30);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10042BE70, &qword_100393F30);
  }

  sub_1002F7BE8(v7, v11, type metadata accessor for Proto_Gpsd_SetAssistanceMountState);
  sub_1002FB284(&qword_10042C3F8, type metadata accessor for Proto_Gpsd_SetAssistanceMountState, &unk_100396248);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v11, type metadata accessor for Proto_Gpsd_SetAssistanceMountState);
}

uint64_t sub_1002C8ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10042BE78, &qword_100393F38);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gpsd_SetAssistanceSignalEnvironment(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSignalEnvironment;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10042BE78, &qword_100393F38);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10042BE78, &qword_100393F38);
  }

  sub_1002F7BE8(v7, v11, type metadata accessor for Proto_Gpsd_SetAssistanceSignalEnvironment);
  sub_1002FB284(&qword_10042C410, type metadata accessor for Proto_Gpsd_SetAssistanceSignalEnvironment, &unk_1003963B0);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v11, type metadata accessor for Proto_Gpsd_SetAssistanceSignalEnvironment);
}

uint64_t sub_1002C9100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10042BE80, &qword_100393F40);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSpeedConstraint;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10042BE80, &qword_100393F40);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10042BE80, &qword_100393F40);
  }

  sub_1002F7BE8(v7, v11, type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint);
  sub_1002FB284(&qword_10042C428, type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint, &unk_100396518);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v11, type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint);
}

uint64_t sub_1002C9328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10042BE88, &qword_100393F48);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAlongTrackVelocity;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10042BE88, &qword_100393F48);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10042BE88, &qword_100393F48);
  }

  sub_1002F7BE8(v7, v11, type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity);
  sub_1002FB284(&qword_10042C440, type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity, &unk_100396680);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v11, type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity);
}

uint64_t sub_1002C9550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10042BE90, &qword_100393F50);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gpsd_InjectAssistanceFile(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceFile;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10042BE90, &qword_100393F50);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10042BE90, &qword_100393F50);
  }

  sub_1002F7BE8(v7, v11, type metadata accessor for Proto_Gpsd_InjectAssistanceFile);
  sub_1002FB284(&qword_10042C2A8, type metadata accessor for Proto_Gpsd_InjectAssistanceFile, &unk_100394E98);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v11, type metadata accessor for Proto_Gpsd_InjectAssistanceFile);
}

uint64_t sub_1002C9778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10042BE98, &qword_100393F58);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gpsd_InjectRtiFile(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRtiFile;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10042BE98, &qword_100393F58);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10042BE98, &qword_100393F58);
  }

  sub_1002F7BE8(v7, v11, type metadata accessor for Proto_Gpsd_InjectRtiFile);
  sub_1002FB284(&qword_10042C2C0, type metadata accessor for Proto_Gpsd_InjectRtiFile, &unk_100395000);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v11, type metadata accessor for Proto_Gpsd_InjectRtiFile);
}

uint64_t sub_1002C99A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10042BEA0, &qword_100393F60);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gpsd_InjectSvidBlocklist(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectSvidBlocklist;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10042BEA0, &qword_100393F60);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10042BEA0, &qword_100393F60);
  }

  sub_1002F7BE8(v7, v11, type metadata accessor for Proto_Gpsd_InjectSvidBlocklist);
  sub_1002FB284(&qword_10042C2F0, type metadata accessor for Proto_Gpsd_InjectSvidBlocklist, &unk_1003952D0);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v11, type metadata accessor for Proto_Gpsd_InjectSvidBlocklist);
}

uint64_t sub_1002C9BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10042BEA8, &qword_100393F68);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gpsd_DeleteGnssData(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__deleteGnssData;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10042BEA8, &qword_100393F68);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10042BEA8, &qword_100393F68);
  }

  sub_1002F7BE8(v7, v11, type metadata accessor for Proto_Gpsd_DeleteGnssData);
  sub_1002FB284(&qword_10042C338, type metadata accessor for Proto_Gpsd_DeleteGnssData, &unk_100395708);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v11, type metadata accessor for Proto_Gpsd_DeleteGnssData);
}

uint64_t sub_1002C9DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10042BEB0, &qword_100393F70);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gpsd_SetPvtmReport(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setPvtmReport;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10042BEB0, &qword_100393F70);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10042BEB0, &qword_100393F70);
  }

  sub_1002F7BE8(v7, v11, type metadata accessor for Proto_Gpsd_SetPvtmReport);
  sub_1002FB284(&qword_10042C290, type metadata accessor for Proto_Gpsd_SetPvtmReport, &unk_100394D30);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v11, type metadata accessor for Proto_Gpsd_SetPvtmReport);
}

uint64_t sub_1002CA018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10042BEB8, &qword_100393F78);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gpsd_SetNmeaHandler(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setNmeaHandler;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10042BEB8, &qword_100393F78);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10042BEB8, &qword_100393F78);
  }

  sub_1002F7BE8(v7, v11, type metadata accessor for Proto_Gpsd_SetNmeaHandler);
  sub_1002FB284(&qword_10042C350, type metadata accessor for Proto_Gpsd_SetNmeaHandler, &unk_100395870);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v11, type metadata accessor for Proto_Gpsd_SetNmeaHandler);
}

uint64_t sub_1002CA240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10042BEC0, &qword_100393F80);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gpsd_SetConfigSimulatorMode(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigSimulatorMode;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10042BEC0, &qword_100393F80);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10042BEC0, &qword_100393F80);
  }

  sub_1002F7BE8(v7, v11, type metadata accessor for Proto_Gpsd_SetConfigSimulatorMode);
  sub_1002FB284(&qword_10042C470, type metadata accessor for Proto_Gpsd_SetConfigSimulatorMode, &unk_100396950);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v11, type metadata accessor for Proto_Gpsd_SetConfigSimulatorMode);
}

uint64_t sub_1002CA468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10042BEC8, &qword_100393F88);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gpsd_SetConfigEnableGnssConstellations(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigEnableGnssConstellations;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10042BEC8, &qword_100393F88);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10042BEC8, &qword_100393F88);
  }

  sub_1002F7BE8(v7, v11, type metadata accessor for Proto_Gpsd_SetConfigEnableGnssConstellations);
  sub_1002FB284(&qword_10042C488, type metadata accessor for Proto_Gpsd_SetConfigEnableGnssConstellations, &unk_100396AB8);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v11, type metadata accessor for Proto_Gpsd_SetConfigEnableGnssConstellations);
}

uint64_t sub_1002CA690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10042BED0, &qword_100393F90);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gpsd_SetConfigDutyCycling(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigDutyCycling;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10042BED0, &qword_100393F90);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10042BED0, &qword_100393F90);
  }

  sub_1002F7BE8(v7, v11, type metadata accessor for Proto_Gpsd_SetConfigDutyCycling);
  sub_1002FB284(&qword_10042C4B8, type metadata accessor for Proto_Gpsd_SetConfigDutyCycling, &unk_100396D88);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v11, type metadata accessor for Proto_Gpsd_SetConfigDutyCycling);
}

uint64_t sub_1002CA8B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10042BED8, &qword_100393F98);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gpsd_TerminationImminent(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__terminationImminent;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10042BED8, &qword_100393F98);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10042BED8, &qword_100393F98);
  }

  sub_1002F7BE8(v7, v11, type metadata accessor for Proto_Gpsd_TerminationImminent);
  sub_1002FB284(&qword_10042C4D0, type metadata accessor for Proto_Gpsd_TerminationImminent, &unk_100396EF0);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v11, type metadata accessor for Proto_Gpsd_TerminationImminent);
}

uint64_t sub_1002CAAE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10042BEE0, &qword_100393FA0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gpsd_ExitMessage(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__exitMessage;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10042BEE0, &qword_100393FA0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10042BEE0, &qword_100393FA0);
  }

  sub_1002F7BE8(v7, v11, type metadata accessor for Proto_Gpsd_ExitMessage);
  sub_1002FB284(&qword_10042C4E8, type metadata accessor for Proto_Gpsd_ExitMessage, &unk_100397058);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v11, type metadata accessor for Proto_Gpsd_ExitMessage);
}

uint64_t sub_1002CAD08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10042BEE8, &qword_100393FA8);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gpsd_LtlInfo(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectLtlInfo;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10042BEE8, &qword_100393FA8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10042BEE8, &qword_100393FA8);
  }

  sub_1002F7BE8(v7, v11, type metadata accessor for Proto_Gpsd_LtlInfo);
  sub_1002FB284(&qword_10042C558, type metadata accessor for Proto_Gpsd_LtlInfo, &unk_100397760);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v11, type metadata accessor for Proto_Gpsd_LtlInfo);
}

uint64_t sub_1002CAF30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10042BEF0, &qword_100393FB0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  started = type metadata accessor for Proto_Gpsd_StartContext(0);
  v9 = *(started - 8);
  __chkstk_darwin(started);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__startContext;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10042BEF0, &qword_100393FB0);
  if ((*(v9 + 48))(v7, 1, started) == 1)
  {
    return sub_1000059A8(v7, &qword_10042BEF0, &qword_100393FB0);
  }

  sub_1002F7BE8(v7, v11, type metadata accessor for Proto_Gpsd_StartContext);
  sub_1002FB284(&qword_10042C608, type metadata accessor for Proto_Gpsd_StartContext, &unk_1003982A0);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v11, type metadata accessor for Proto_Gpsd_StartContext);
}

uint64_t sub_1002CB158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10042BEF8, &qword_100393FB8);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gpsd_SetThermalRiskState(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setThermalRiskState;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10042BEF8, &qword_100393FB8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10042BEF8, &qword_100393FB8);
  }

  sub_1002F7BE8(v7, v11, type metadata accessor for Proto_Gpsd_SetThermalRiskState);
  sub_1002FB284(&qword_10042C458, type metadata accessor for Proto_Gpsd_SetThermalRiskState, &unk_1003967E8);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v11, type metadata accessor for Proto_Gpsd_SetThermalRiskState);
}

uint64_t sub_1002CB380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10042BF00, &qword_100393FC0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gpsd_SetConfigRfBandEnable(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigRfBandEnable;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10042BF00, &qword_100393FC0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10042BF00, &qword_100393FC0);
  }

  sub_1002F7BE8(v7, v11, type metadata accessor for Proto_Gpsd_SetConfigRfBandEnable);
  sub_1002FB284(&qword_10042C4A0, type metadata accessor for Proto_Gpsd_SetConfigRfBandEnable, &unk_100396C20);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v11, type metadata accessor for Proto_Gpsd_SetConfigRfBandEnable);
}

uint64_t sub_1002CB5A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10042BF08, &qword_100393FC8);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gpsd_InjectRavenOrbitFile(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRavenOrbitFile;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10042BF08, &qword_100393FC8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10042BF08, &qword_100393FC8);
  }

  sub_1002F7BE8(v7, v11, type metadata accessor for Proto_Gpsd_InjectRavenOrbitFile);
  sub_1002FB284(&qword_10042C2D8, type metadata accessor for Proto_Gpsd_InjectRavenOrbitFile, &unk_100395168);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v11, type metadata accessor for Proto_Gpsd_InjectRavenOrbitFile);
}

uint64_t sub_1002CB7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10042BF10, &qword_100393FD0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__emergConfig;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10042BF10, &qword_100393FD0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10042BF10, &qword_100393FD0);
  }

  sub_1002F7BE8(v7, v11, type metadata accessor for Proto_Gnss_Emergency_EmergConfig);
  sub_1002FB284(&qword_1004251D8, type metadata accessor for Proto_Gnss_Emergency_EmergConfig, &unk_10038DD78);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v11, type metadata accessor for Proto_Gnss_Emergency_EmergConfig);
}

uint64_t sub_1002CB9F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10042BF18, &qword_100393FD8);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__positionRequest;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10042BF18, &qword_100393FD8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10042BF18, &qword_100393FD8);
  }

  sub_1002F7BE8(v7, v11, type metadata accessor for Proto_Gnss_Emergency_PositionRequest);
  sub_1002FB284(&qword_100424C58, type metadata accessor for Proto_Gnss_Emergency_PositionRequest, &unk_1003887B0);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v11, type metadata accessor for Proto_Gnss_Emergency_PositionRequest);
}

uint64_t sub_1002CBC20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10042BF20, &qword_100393FE0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsReferenceTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10042BF20, &qword_100393FE0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10042BF20, &qword_100393FE0);
  }

  sub_1002F7BE8(v7, v11, type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime);
  sub_1002FB284(&qword_100425150, type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime, &unk_10038D508);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v11, type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime);
}

uint64_t sub_1002CBE48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10042BF28, &qword_100393FE8);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__referenceLocation;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10042BF28, &qword_100393FE8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10042BF28, &qword_100393FE8);
  }

  sub_1002F7BE8(v7, v11, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation);
  sub_1002FB284(&qword_100425168, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation, &unk_10038D670);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v11, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation);
}

uint64_t sub_1002CC070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10042BF30, &qword_100393FF0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsNavigationModel;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10042BF30, &qword_100393FF0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10042BF30, &qword_100393FF0);
  }

  sub_1002F7BE8(v7, v11, type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel);
  sub_1002FB284(&qword_100425190, type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel, &unk_10038D940);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v11, type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel);
}

uint64_t sub_1002CC298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10042BF38, &qword_100393FF8);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsAcqAssistance;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10042BF38, &qword_100393FF8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10042BF38, &qword_100393FF8);
  }

  sub_1002F7BE8(v7, v11, type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance);
  sub_1002FB284(&qword_100425200, type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance, &unk_10038E048);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v11, type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance);
}

uint64_t sub_1002CC4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10042BF40, &qword_100394000);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cellFtAssistance;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10042BF40, &qword_100394000);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10042BF40, &qword_100394000);
  }

  sub_1002F7BE8(v7, v11, type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance);
  sub_1002FB284(&qword_100425230, type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance, &unk_10038E318);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v11, type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance);
}

uint64_t sub_1002CC6E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10042BF48, &qword_100394008);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_CplaneContext(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cplaneContext;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10042BF48, &qword_100394008);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10042BF48, &qword_100394008);
  }

  sub_1002F7BE8(v7, v11, type metadata accessor for Proto_Gnss_Emergency_CplaneContext);
  sub_1002FB284(&qword_1004251C0, type metadata accessor for Proto_Gnss_Emergency_CplaneContext, &unk_10038DC10);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v11, type metadata accessor for Proto_Gnss_Emergency_CplaneContext);
}

uint64_t sub_1002CC910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10042BF50, &qword_100394010);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_LocationId(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__locationID;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10042BF50, &qword_100394010);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10042BF50, &qword_100394010);
  }

  sub_1002F7BE8(v7, v11, type metadata accessor for Proto_Gnss_Emergency_LocationId);
  sub_1002FB284(&qword_100424AF8, type metadata accessor for Proto_Gnss_Emergency_LocationId, &unk_100387298);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v11, type metadata accessor for Proto_Gnss_Emergency_LocationId);
}

uint64_t sub_1002CCB38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__servingCellLte;
  result = swift_beginAccess();
  if (*(a1 + v5) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_1002CCBC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10042BF58, &qword_100394018);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_SuplContext(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplContext;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10042BF58, &qword_100394018);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10042BF58, &qword_100394018);
  }

  sub_1002F7BE8(v7, v11, type metadata accessor for Proto_Gnss_Emergency_SuplContext);
  sub_1002FB284(&qword_100424BC8, type metadata accessor for Proto_Gnss_Emergency_SuplContext, &unk_100387F40);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v11, type metadata accessor for Proto_Gnss_Emergency_SuplContext);
}

uint64_t sub_1002CCDF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10042BF60, &qword_100394020);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__wlanMeasurementList;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10042BF60, &qword_100394020);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10042BF60, &qword_100394020);
  }

  sub_1002F7BE8(v7, v11, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList);
  sub_1002FB284(&qword_100424B38, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList, &unk_1003876D0);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_1002F7CB8(v11, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList);
}

BOOL sub_1002CD05C(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v1136 = v2;
  v3 = v1;
  v1042 = type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList(0);
  v1038 = *(v1042 - 8);
  __chkstk_darwin(v1042);
  v1041 = &v866 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1037 = sub_100024A2C(&qword_10042ED68, &qword_100398B80);
  __chkstk_darwin(v1037);
  v1043 = &v866 - v5;
  v6 = sub_100024A2C(&qword_10042BF60, &qword_100394020);
  v7 = __chkstk_darwin(v6 - 8);
  v1040 = &v866 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v1039 = &v866 - v9;
  v1035 = type metadata accessor for Proto_Gnss_Emergency_SuplContext(0);
  v1032 = *(v1035 - 8);
  __chkstk_darwin(v1035);
  v1034 = &v866 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1030 = sub_100024A2C(&qword_10042ED70, &qword_100398B88);
  __chkstk_darwin(v1030);
  v1036 = &v866 - v11;
  v12 = sub_100024A2C(&qword_10042BF58, &qword_100394018);
  v13 = __chkstk_darwin(v12 - 8);
  v1033 = &v866 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v1031 = &v866 - v15;
  v1028 = type metadata accessor for Proto_Gnss_Emergency_LocationId(0);
  v1025 = *(v1028 - 8);
  __chkstk_darwin(v1028);
  v1027 = &v866 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1023 = sub_100024A2C(&qword_10042ED78, &qword_100398B90);
  __chkstk_darwin(v1023);
  v1029 = &v866 - v17;
  v18 = sub_100024A2C(&qword_10042BF50, &qword_100394010);
  v19 = __chkstk_darwin(v18 - 8);
  v1026 = &v866 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v1024 = &v866 - v21;
  v1021 = type metadata accessor for Proto_Gnss_Emergency_CplaneContext(0);
  v1018 = *(v1021 - 8);
  __chkstk_darwin(v1021);
  v1020 = &v866 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1016 = sub_100024A2C(&qword_10042ED80, &qword_100398B98);
  __chkstk_darwin(v1016);
  v1022 = &v866 - v23;
  v24 = sub_100024A2C(&qword_10042BF48, &qword_100394008);
  v25 = __chkstk_darwin(v24 - 8);
  v1019 = &v866 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v1017 = &v866 - v27;
  v1014 = type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0);
  v1011 = *(v1014 - 8);
  __chkstk_darwin(v1014);
  v1013 = &v866 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1009 = sub_100024A2C(&qword_10042ED88, &qword_100398BA0);
  __chkstk_darwin(v1009);
  v1015 = &v866 - v29;
  v30 = sub_100024A2C(&qword_10042BF40, &qword_100394000);
  v31 = __chkstk_darwin(v30 - 8);
  v1012 = &v866 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v1010 = &v866 - v33;
  v1007 = type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
  v1004 = *(v1007 - 8);
  __chkstk_darwin(v1007);
  v1006 = &v866 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1002 = sub_100024A2C(&qword_10042ED90, &qword_100398BA8);
  __chkstk_darwin(v1002);
  v1008 = &v866 - v35;
  v36 = sub_100024A2C(&qword_10042BF38, &qword_100393FF8);
  v37 = __chkstk_darwin(v36 - 8);
  v1005 = &v866 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v1003 = &v866 - v39;
  v1000 = type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0);
  v997 = *(v1000 - 8);
  __chkstk_darwin(v1000);
  v999 = &v866 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v995 = sub_100024A2C(&qword_10042ED98, &qword_100398BB0);
  __chkstk_darwin(v995);
  v1001 = &v866 - v41;
  v42 = sub_100024A2C(&qword_10042BF30, &qword_100393FF0);
  v43 = __chkstk_darwin(v42 - 8);
  v998 = &v866 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v996 = &v866 - v45;
  v993 = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  v990 = *(v993 - 8);
  __chkstk_darwin(v993);
  v992 = &v866 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v988 = sub_100024A2C(&qword_10042EDA0, &qword_100398BB8);
  __chkstk_darwin(v988);
  v994 = &v866 - v47;
  v48 = sub_100024A2C(&qword_10042BF28, &qword_100393FE8);
  v49 = __chkstk_darwin(v48 - 8);
  v991 = &v866 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v989 = &v866 - v51;
  v986 = type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
  v983 = *(v986 - 8);
  __chkstk_darwin(v986);
  v985 = &v866 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v981 = sub_100024A2C(&qword_10042EDA8, &qword_100398BC0);
  __chkstk_darwin(v981);
  v987 = &v866 - v53;
  v54 = sub_100024A2C(&qword_10042BF20, &qword_100393FE0);
  v55 = __chkstk_darwin(v54 - 8);
  v984 = &v866 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v55);
  v982 = &v866 - v57;
  v979 = type metadata accessor for Proto_Gnss_Emergency_PositionRequest(0);
  v976 = *(v979 - 8);
  __chkstk_darwin(v979);
  v978 = &v866 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v974 = sub_100024A2C(&qword_10042EDB0, &qword_100398BC8);
  __chkstk_darwin(v974);
  v980 = &v866 - v59;
  v60 = sub_100024A2C(&qword_10042BF18, &qword_100393FD8);
  v61 = __chkstk_darwin(v60 - 8);
  v977 = &v866 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v61);
  v975 = &v866 - v63;
  v972 = type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0);
  v969 = *(v972 - 8);
  __chkstk_darwin(v972);
  v971 = &v866 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v967 = sub_100024A2C(&qword_10042EDB8, &qword_100398BD0);
  __chkstk_darwin(v967);
  v973 = &v866 - v65;
  v66 = sub_100024A2C(&qword_10042BF10, &qword_100393FD0);
  v67 = __chkstk_darwin(v66 - 8);
  v970 = &v866 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v67);
  v968 = &v866 - v69;
  v964 = type metadata accessor for Proto_Gpsd_InjectRavenOrbitFile(0);
  v963 = *(v964 - 8);
  __chkstk_darwin(v964);
  v965 = &v866 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v960 = sub_100024A2C(&qword_10042EDC0, &qword_100398BD8);
  __chkstk_darwin(v960);
  v966 = &v866 - v71;
  v72 = sub_100024A2C(&qword_10042BF08, &qword_100393FC8);
  v73 = __chkstk_darwin(v72 - 8);
  v962 = &v866 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v73);
  v961 = &v866 - v75;
  v958 = type metadata accessor for Proto_Gpsd_SetConfigRfBandEnable(0);
  v956 = *(v958 - 8);
  __chkstk_darwin(v958);
  v957 = &v866 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v953 = sub_100024A2C(&qword_10042EDC8, &qword_100398BE0);
  __chkstk_darwin(v953);
  v959 = &v866 - v77;
  v78 = sub_100024A2C(&qword_10042BF00, &qword_100393FC0);
  v79 = __chkstk_darwin(v78 - 8);
  v955 = &v866 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v79);
  v954 = &v866 - v81;
  v951 = type metadata accessor for Proto_Gpsd_SetThermalRiskState(0);
  v949 = *(v951 - 8);
  __chkstk_darwin(v951);
  v950 = &v866 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  v946 = sub_100024A2C(&qword_10042EDD0, &qword_100398BE8);
  __chkstk_darwin(v946);
  v952 = &v866 - v83;
  v84 = sub_100024A2C(&qword_10042BEF8, &qword_100393FB8);
  v85 = __chkstk_darwin(v84 - 8);
  v948 = &v866 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v85);
  v947 = &v866 - v87;
  started = type metadata accessor for Proto_Gpsd_StartContext(0);
  v942 = *(started - 8);
  __chkstk_darwin(started);
  v943 = &v866 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  v939 = sub_100024A2C(&qword_10042EDD8, &qword_100398BF0);
  __chkstk_darwin(v939);
  v945 = &v866 - v89;
  v90 = sub_100024A2C(&qword_10042BEF0, &qword_100393FB0);
  v91 = __chkstk_darwin(v90 - 8);
  v941 = &v866 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v91);
  v940 = &v866 - v93;
  v936 = type metadata accessor for Proto_Gpsd_LtlInfo(0);
  v935 = *(v936 - 8);
  __chkstk_darwin(v936);
  v937 = &v866 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  v932 = sub_100024A2C(&qword_10042EDE0, &qword_100398BF8);
  __chkstk_darwin(v932);
  v938 = &v866 - v95;
  v96 = sub_100024A2C(&qword_10042BEE8, &qword_100393FA8);
  v97 = __chkstk_darwin(v96 - 8);
  v934 = &v866 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v97);
  v933 = &v866 - v99;
  v100 = type metadata accessor for Proto_Gpsd_ExitMessage(0);
  v928 = *(v100 - 8);
  v929 = v100;
  __chkstk_darwin(v100);
  v930 = &v866 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
  v925 = sub_100024A2C(&qword_10042EDE8, &qword_100398C00);
  __chkstk_darwin(v925);
  v931 = &v866 - v102;
  v103 = sub_100024A2C(&qword_10042BEE0, &qword_100393FA0);
  v104 = __chkstk_darwin(v103 - 8);
  v927 = &v866 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v104);
  v926 = &v866 - v106;
  v107 = type metadata accessor for Proto_Gpsd_TerminationImminent(0);
  v921 = *(v107 - 8);
  v922 = v107;
  __chkstk_darwin(v107);
  v923 = &v866 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
  v918 = sub_100024A2C(&qword_10042EDF0, &qword_100398C08);
  __chkstk_darwin(v918);
  v924 = &v866 - v109;
  v110 = sub_100024A2C(&qword_10042BED8, &qword_100393F98);
  v111 = __chkstk_darwin(v110 - 8);
  v920 = &v866 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v111);
  v919 = &v866 - v113;
  v916 = type metadata accessor for Proto_Gpsd_SetConfigDutyCycling(0);
  v914 = *(v916 - 8);
  __chkstk_darwin(v916);
  v915 = &v866 - ((v114 + 15) & 0xFFFFFFFFFFFFFFF0);
  v911 = sub_100024A2C(&qword_10042EDF8, &qword_100398C10);
  __chkstk_darwin(v911);
  v917 = &v866 - v115;
  v116 = sub_100024A2C(&qword_10042BED0, &qword_100393F90);
  v117 = __chkstk_darwin(v116 - 8);
  v913 = &v866 - ((v118 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v117);
  v912 = &v866 - v119;
  v120 = type metadata accessor for Proto_Gpsd_SetConfigEnableGnssConstellations(0);
  v907 = *(v120 - 8);
  v908 = v120;
  __chkstk_darwin(v120);
  v909 = &v866 - ((v121 + 15) & 0xFFFFFFFFFFFFFFF0);
  v904 = sub_100024A2C(&qword_10042EE00, &qword_100398C18);
  __chkstk_darwin(v904);
  v910 = &v866 - v122;
  v123 = sub_100024A2C(&qword_10042BEC8, &qword_100393F88);
  v124 = __chkstk_darwin(v123 - 8);
  v906 = &v866 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v124);
  v905 = &v866 - v126;
  v902 = type metadata accessor for Proto_Gpsd_SetConfigSimulatorMode(0);
  v900 = *(v902 - 8);
  __chkstk_darwin(v902);
  v901 = &v866 - ((v127 + 15) & 0xFFFFFFFFFFFFFFF0);
  v897 = sub_100024A2C(&qword_10042EE08, &qword_100398C20);
  __chkstk_darwin(v897);
  v903 = &v866 - v128;
  v129 = sub_100024A2C(&qword_10042BEC0, &qword_100393F80);
  v130 = __chkstk_darwin(v129 - 8);
  v899 = &v866 - ((v131 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v130);
  v898 = &v866 - v132;
  v133 = type metadata accessor for Proto_Gpsd_SetNmeaHandler(0);
  v893 = *(v133 - 8);
  v894 = v133;
  __chkstk_darwin(v133);
  v895 = &v866 - ((v134 + 15) & 0xFFFFFFFFFFFFFFF0);
  v890 = sub_100024A2C(&qword_10042EE10, &qword_100398C28);
  __chkstk_darwin(v890);
  v896 = &v866 - v135;
  v136 = sub_100024A2C(&qword_10042BEB8, &qword_100393F78);
  v137 = __chkstk_darwin(v136 - 8);
  v892 = &v866 - ((v138 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v137);
  v891 = &v866 - v139;
  v888 = type metadata accessor for Proto_Gpsd_SetPvtmReport(0);
  v886 = *(v888 - 8);
  __chkstk_darwin(v888);
  v887 = &v866 - ((v140 + 15) & 0xFFFFFFFFFFFFFFF0);
  v883 = sub_100024A2C(&qword_10042EE18, &qword_100398C30);
  __chkstk_darwin(v883);
  v889 = &v866 - v141;
  v142 = sub_100024A2C(&qword_10042BEB0, &qword_100393F70);
  v143 = __chkstk_darwin(v142 - 8);
  v885 = &v866 - ((v144 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v143);
  v884 = &v866 - v145;
  v146 = type metadata accessor for Proto_Gpsd_DeleteGnssData(0);
  v879 = *(v146 - 8);
  v880 = v146;
  __chkstk_darwin(v146);
  v881 = &v866 - ((v147 + 15) & 0xFFFFFFFFFFFFFFF0);
  v876 = sub_100024A2C(&qword_10042EE20, &qword_100398C38);
  __chkstk_darwin(v876);
  v882 = &v866 - v148;
  v149 = sub_100024A2C(&qword_10042BEA8, &qword_100393F68);
  v150 = __chkstk_darwin(v149 - 8);
  v878 = &v866 - ((v151 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v150);
  v877 = &v866 - v152;
  v872 = type metadata accessor for Proto_Gpsd_InjectSvidBlocklist(0);
  v870 = *(v872 - 8);
  __chkstk_darwin(v872);
  v874 = (&v866 - ((v153 + 15) & 0xFFFFFFFFFFFFFFF0));
  v869 = sub_100024A2C(&qword_10042EE28, &qword_100398C40);
  __chkstk_darwin(v869);
  v875 = &v866 - v154;
  v155 = sub_100024A2C(&qword_10042BEA0, &qword_100393F60);
  v156 = __chkstk_darwin(v155 - 8);
  v873 = (&v866 - ((v157 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v156);
  v871 = &v866 - v158;
  v1050 = type metadata accessor for Proto_Gpsd_InjectRtiFile(0);
  v1047 = *(v1050 - 8);
  __chkstk_darwin(v1050);
  v868 = &v866 - ((v159 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1045 = sub_100024A2C(&qword_10042EE30, &qword_100398C48);
  __chkstk_darwin(v1045);
  v1054 = &v866 - v160;
  v161 = sub_100024A2C(&qword_10042BE98, &qword_100393F58);
  v162 = __chkstk_darwin(v161 - 8);
  v1046 = &v866 - ((v163 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v162);
  v1049 = &v866 - v164;
  v1057 = type metadata accessor for Proto_Gpsd_InjectAssistanceFile(0);
  v1053 = *(v1057 - 8);
  __chkstk_darwin(v1057);
  v1044 = &v866 - ((v165 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1051 = sub_100024A2C(&qword_10042EE38, &qword_100398C50);
  __chkstk_darwin(v1051);
  v1061 = &v866 - v166;
  v167 = sub_100024A2C(&qword_10042BE90, &qword_100393F50);
  v168 = __chkstk_darwin(v167 - 8);
  v1052 = &v866 - ((v169 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v168);
  v1056 = &v866 - v170;
  v1064 = type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity(0);
  v1060 = *(v1064 - 8);
  __chkstk_darwin(v1064);
  v1048 = &v866 - ((v171 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1058 = sub_100024A2C(&qword_10042EE40, &qword_100398C58);
  __chkstk_darwin(v1058);
  v1068 = &v866 - v172;
  v173 = sub_100024A2C(&qword_10042BE88, &qword_100393F48);
  v174 = __chkstk_darwin(v173 - 8);
  v1059 = &v866 - ((v175 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v174);
  v1063 = &v866 - v176;
  v1071 = type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint(0);
  v1067 = *(v1071 - 8);
  __chkstk_darwin(v1071);
  v1055 = &v866 - ((v177 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1065 = sub_100024A2C(&qword_10042EE48, &qword_100398C60);
  __chkstk_darwin(v1065);
  v1075 = &v866 - v178;
  v179 = sub_100024A2C(&qword_10042BE80, &qword_100393F40);
  v180 = __chkstk_darwin(v179 - 8);
  v1066 = &v866 - ((v181 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v180);
  v1070 = &v866 - v182;
  v1077 = type metadata accessor for Proto_Gpsd_SetAssistanceSignalEnvironment(0);
  v1074 = *(v1077 - 8);
  __chkstk_darwin(v1077);
  v1062 = &v866 - ((v183 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1072 = sub_100024A2C(&qword_10042EE50, &qword_100398C68);
  __chkstk_darwin(v1072);
  v1082 = &v866 - v184;
  v185 = sub_100024A2C(&qword_10042BE78, &qword_100393F38);
  v186 = __chkstk_darwin(v185 - 8);
  v1073 = &v866 - ((v187 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v186);
  v1078 = &v866 - v188;
  v1085 = type metadata accessor for Proto_Gpsd_SetAssistanceMountState(0);
  v1081 = *(v1085 - 8);
  __chkstk_darwin(v1085);
  v1069 = &v866 - ((v189 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1080 = sub_100024A2C(&qword_10042EE58, &qword_100398C70);
  __chkstk_darwin(v1080);
  v1089 = &v866 - v190;
  v191 = sub_100024A2C(&qword_10042BE70, &qword_100393F30);
  v192 = __chkstk_darwin(v191 - 8);
  v1079 = &v866 - ((v193 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v192);
  v1084 = &v866 - v194;
  v1092 = type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext(0);
  v1088 = *(v1092 - 8);
  __chkstk_darwin(v1092);
  v1076 = &v866 - ((v195 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1086 = sub_100024A2C(&qword_10042EE60, &qword_100398C78);
  __chkstk_darwin(v1086);
  v1098 = &v866 - v196;
  v197 = sub_100024A2C(&qword_10042BE68, &qword_100393F28);
  v198 = __chkstk_darwin(v197 - 8);
  v1087 = &v866 - ((v199 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v198);
  v1093 = &v866 - v200;
  v1096 = type metadata accessor for Proto_Gpsd_SetAssistanceMapVector(0);
  v1095 = *(v1096 - 8);
  __chkstk_darwin(v1096);
  v1083 = &v866 - ((v201 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1094 = sub_100024A2C(&qword_10042EE68, &qword_100398C80);
  __chkstk_darwin(v1094);
  v1097 = &v866 - v202;
  v203 = sub_100024A2C(&qword_10042BE60, &qword_100393F20);
  v204 = __chkstk_darwin(v203 - 8);
  v1090 = &v866 - ((v205 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v204);
  v1099 = &v866 - v206;
  v1103 = type metadata accessor for Proto_Gpsd_SetAssistanceDem(0);
  v1102 = *(v1103 - 8);
  __chkstk_darwin(v1103);
  v1091 = &v866 - ((v207 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1101 = sub_100024A2C(&qword_10042EE70, &qword_100398C88);
  __chkstk_darwin(v1101);
  v1104 = &v866 - v208;
  v209 = sub_100024A2C(&qword_10042BE58, &qword_100393F18);
  v210 = __chkstk_darwin(v209 - 8);
  v1112 = &v866 - ((v211 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v210);
  v1106 = &v866 - v212;
  v1110 = type metadata accessor for Proto_Gpsd_SetAssistanceGyro(0);
  v1109 = *(v1110 - 8);
  __chkstk_darwin(v1110);
  v1100 = (&v866 - ((v213 + 15) & 0xFFFFFFFFFFFFFFF0));
  v1108 = sub_100024A2C(&qword_10042EE78, &qword_100398C90);
  __chkstk_darwin(v1108);
  v1111 = &v866 - v214;
  v215 = sub_100024A2C(&qword_10042BE50, &qword_100393F10);
  v216 = __chkstk_darwin(v215 - 8);
  v1105 = (&v866 - ((v217 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v216);
  v1132 = &v866 - v218;
  v1117 = type metadata accessor for Proto_Gpsd_SetAssistanceAccel(0);
  v1116 = *(v1117 - 8);
  __chkstk_darwin(v1117);
  v1107 = (&v866 - ((v219 + 15) & 0xFFFFFFFFFFFFFFF0));
  v1115 = sub_100024A2C(&qword_10042EE80, &qword_100398C98);
  __chkstk_darwin(v1115);
  v1118 = &v866 - v220;
  v221 = sub_100024A2C(&qword_10042BE48, &qword_100393F08);
  v222 = __chkstk_darwin(v221 - 8);
  v1113 = (&v866 - ((v223 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v222);
  v1119 = &v866 - v224;
  v1124 = type metadata accessor for Proto_Gpsd_SetAssistancePressure(0);
  v1123 = *(v1124 - 8);
  __chkstk_darwin(v1124);
  v1114 = (&v866 - ((v225 + 15) & 0xFFFFFFFFFFFFFFF0));
  v1122 = sub_100024A2C(&qword_10042EE88, &qword_100398CA0);
  __chkstk_darwin(v1122);
  v1125 = &v866 - v226;
  v227 = sub_100024A2C(&qword_10042BE40, &qword_100393F00);
  v228 = __chkstk_darwin(v227 - 8);
  v1120 = (&v866 - ((v229 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v228);
  v1131 = &v866 - v230;
  v1129 = type metadata accessor for Proto_Gpsd_InjectAssistanceTime(0);
  v1128 = *(v1129 - 8);
  __chkstk_darwin(v1129);
  v1121 = &v866 - ((v231 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1127 = sub_100024A2C(&qword_10042EE90, &qword_100398CA8);
  __chkstk_darwin(v1127);
  v1130 = &v866 - v232;
  v233 = sub_100024A2C(&qword_10042BE38, &qword_100393EF8);
  v234 = __chkstk_darwin(v233 - 8);
  v1126 = &v866 - ((v235 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v234);
  v1133 = &v866 - v236;
  v237 = type metadata accessor for Proto_Gpsd_InjectAssistancePosition(0);
  v1134 = *(v237 - 8);
  __chkstk_darwin(v237);
  v239 = &v866 - ((v238 + 15) & 0xFFFFFFFFFFFFFFF0);
  v240 = sub_100024A2C(&qword_10042EE98, &qword_100398CB0);
  __chkstk_darwin(v240);
  v242 = &v866 - v241;
  v243 = sub_100024A2C(&qword_10042BE30, &qword_100393EF0);
  v244 = __chkstk_darwin(v243 - 8);
  v246 = &v866 - ((v245 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v244);
  v248 = &v866 - v247;
  swift_beginAccess();
  v249 = *(v3 + 16);
  v1135 = v3;
  v250 = *(v3 + 24);
  v251 = v1136;
  swift_beginAccess();
  v252 = *(v251 + 24);
  if (v250)
  {
    if (!*(v251 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (v249 != *(v251 + 16))
    {
      v252 = 1;
    }

    if (v252)
    {
      return 0;
    }
  }

  v253 = v1135;
  swift_beginAccess();
  v254 = *(v253 + 28);
  LOBYTE(v253) = *(v253 + 32);
  swift_beginAccess();
  v255 = *(v251 + 32);
  if (v253)
  {
    v256 = v251;
    if (!*(v251 + 32))
    {
      return 0;
    }
  }

  else
  {
    if (v254 != *(v251 + 28))
    {
      v255 = 1;
    }

    v256 = v251;
    if (v255)
    {
      return 0;
    }
  }

  v257 = v1135;
  swift_beginAccess();
  v258 = *(v257 + 33);
  swift_beginAccess();
  v259 = *(v256 + 33);
  if (v258 == 62)
  {
    if (v259 != 62)
    {
      return 0;
    }
  }

  else if (v259 == 62 || qword_100398ED0[v258] != qword_100398ED0[v259])
  {
    return 0;
  }

  v260 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistancePosition;
  swift_beginAccess();
  sub_10000A0A4(v257 + v260, v248, &qword_10042BE30, &qword_100393EF0);
  v261 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistancePosition;
  swift_beginAccess();
  v262 = *(v240 + 48);
  sub_10000A0A4(v248, v242, &qword_10042BE30, &qword_100393EF0);
  v263 = v1136 + v261;
  v264 = v1136;
  v867 = v262;
  sub_10000A0A4(v263, &v242[v262], &qword_10042BE30, &qword_100393EF0);
  v265 = *(v1134 + 48);
  if (v265(v242, 1, v237) == 1)
  {

    sub_1000059A8(v248, &qword_10042BE30, &qword_100393EF0);
    if (v265(&v242[v867], 1, v237) == 1)
    {
      sub_1000059A8(v242, &qword_10042BE30, &qword_100393EF0);
      goto LABEL_26;
    }

LABEL_23:
    sub_1000059A8(v242, &qword_10042EE98, &qword_100398CB0);
    goto LABEL_79;
  }

  sub_10000A0A4(v242, v246, &qword_10042BE30, &qword_100393EF0);
  if (v265(&v242[v867], 1, v237) == 1)
  {

    sub_1000059A8(v248, &qword_10042BE30, &qword_100393EF0);
    sub_1002F7CB8(v246, type metadata accessor for Proto_Gpsd_InjectAssistancePosition);
    goto LABEL_23;
  }

  sub_1002F7BE8(&v242[v867], v239, type metadata accessor for Proto_Gpsd_InjectAssistancePosition);

  v266 = sub_1002FAE30(v246, v239);
  sub_1002F7CB8(v239, type metadata accessor for Proto_Gpsd_InjectAssistancePosition);
  sub_1000059A8(v248, &qword_10042BE30, &qword_100393EF0);
  sub_1002F7CB8(v246, type metadata accessor for Proto_Gpsd_InjectAssistancePosition);
  sub_1000059A8(v242, &qword_10042BE30, &qword_100393EF0);
  if ((v266 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_26:
  v267 = v257;
  v268 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceTime;
  swift_beginAccess();
  v269 = v1133;
  sub_10000A0A4(v267 + v268, v1133, &qword_10042BE38, &qword_100393EF8);
  v270 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceTime;
  swift_beginAccess();
  v271 = *(v1127 + 48);
  v272 = v1130;
  sub_10000A0A4(v269, v1130, &qword_10042BE38, &qword_100393EF8);
  sub_10000A0A4(v264 + v270, v272 + v271, &qword_10042BE38, &qword_100393EF8);
  v273 = *(v1128 + 48);
  v274 = v1129;
  if (v273(v272, 1, v1129) == 1)
  {
    sub_1000059A8(v269, &qword_10042BE38, &qword_100393EF8);
    v275 = v273(v272 + v271, 1, v274);
    v276 = v1132;
    v277 = v1131;
    if (v275 == 1)
    {
      sub_1000059A8(v272, &qword_10042BE38, &qword_100393EF8);
      goto LABEL_33;
    }

LABEL_31:
    v280 = &qword_10042EE90;
    v281 = &qword_100398CA8;
LABEL_77:
    v334 = v272;
    goto LABEL_78;
  }

  v278 = v1126;
  sub_10000A0A4(v272, v1126, &qword_10042BE38, &qword_100393EF8);
  v279 = v273(v272 + v271, 1, v274);
  v276 = v1132;
  v277 = v1131;
  if (v279 == 1)
  {
    sub_1000059A8(v1133, &qword_10042BE38, &qword_100393EF8);
    sub_1002F7CB8(v278, type metadata accessor for Proto_Gpsd_InjectAssistanceTime);
    goto LABEL_31;
  }

  v282 = v272 + v271;
  v283 = v1121;
  sub_1002F7BE8(v282, v1121, type metadata accessor for Proto_Gpsd_InjectAssistanceTime);
  v284 = sub_1002F8D90(v278, v283);
  sub_1002F7CB8(v283, type metadata accessor for Proto_Gpsd_InjectAssistanceTime);
  sub_1000059A8(v1133, &qword_10042BE38, &qword_100393EF8);
  sub_1002F7CB8(v278, type metadata accessor for Proto_Gpsd_InjectAssistanceTime);
  v264 = v1136;
  sub_1000059A8(v272, &qword_10042BE38, &qword_100393EF8);
  if ((v284 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_33:
  v285 = v276;
  v286 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistancePressure;
  v287 = v1135;
  swift_beginAccess();
  sub_10000A0A4(v287 + v286, v277, &qword_10042BE40, &qword_100393F00);
  v288 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistancePressure;
  swift_beginAccess();
  v289 = *(v1122 + 48);
  v272 = v1125;
  sub_10000A0A4(v277, v1125, &qword_10042BE40, &qword_100393F00);
  sub_10000A0A4(v264 + v288, v272 + v289, &qword_10042BE40, &qword_100393F00);
  v290 = *(v1123 + 48);
  v291 = v1124;
  if (v290(v272, 1, v1124) == 1)
  {
    sub_1000059A8(v277, &qword_10042BE40, &qword_100393F00);
    if (v290(v272 + v289, 1, v291) == 1)
    {
      sub_1000059A8(v272, &qword_10042BE40, &qword_100393F00);
      goto LABEL_36;
    }

    goto LABEL_47;
  }

  v317 = v1120;
  sub_10000A0A4(v272, v1120, &qword_10042BE40, &qword_100393F00);
  if (v290(v272 + v289, 1, v291) == 1)
  {
    sub_1000059A8(v277, &qword_10042BE40, &qword_100393F00);
    sub_1002F7CB8(v317, type metadata accessor for Proto_Gpsd_SetAssistancePressure);
LABEL_47:
    v280 = &qword_10042EE88;
    v281 = &qword_100398CA0;
    goto LABEL_77;
  }

  v318 = v272 + v289;
  v319 = v1114;
  sub_1002F7BE8(v318, v1114, type metadata accessor for Proto_Gpsd_SetAssistancePressure);
  if ((sub_1002F7284(*v317, *v319) & 1) == 0)
  {
    v322 = type metadata accessor for Proto_Gpsd_SetAssistancePressure;
    sub_1002F7CB8(v319, type metadata accessor for Proto_Gpsd_SetAssistancePressure);
    v323 = &qword_10042BE40;
    v324 = &qword_100393F00;
    sub_1000059A8(v277, &qword_10042BE40, &qword_100393F00);
    v325 = v317;
LABEL_69:
    sub_1002F7CB8(v325, v322);
    v334 = v272;
    v280 = v323;
    v281 = v324;
LABEL_78:
    sub_1000059A8(v334, v280, v281);
    goto LABEL_79;
  }

  type metadata accessor for UnknownStorage();
  sub_1002FB284(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v320 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_1002F7CB8(v319, type metadata accessor for Proto_Gpsd_SetAssistancePressure);
  sub_1000059A8(v277, &qword_10042BE40, &qword_100393F00);
  sub_1002F7CB8(v317, type metadata accessor for Proto_Gpsd_SetAssistancePressure);
  sub_1000059A8(v272, &qword_10042BE40, &qword_100393F00);
  v285 = v1132;
  if ((v320 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_36:
  v292 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAccel;
  v293 = v1135;
  swift_beginAccess();
  v294 = v1119;
  sub_10000A0A4(v293 + v292, v1119, &qword_10042BE48, &qword_100393F08);
  v295 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAccel;
  swift_beginAccess();
  v296 = *(v1115 + 48);
  v272 = v1118;
  sub_10000A0A4(v294, v1118, &qword_10042BE48, &qword_100393F08);
  sub_10000A0A4(v264 + v295, v272 + v296, &qword_10042BE48, &qword_100393F08);
  v297 = *(v1116 + 48);
  v298 = v1117;
  if (v297(v272, 1, v1117) == 1)
  {
    sub_1000059A8(v294, &qword_10042BE48, &qword_100393F08);
    if (v297(v272 + v296, 1, v298) == 1)
    {
      sub_1000059A8(v272, &qword_10042BE48, &qword_100393F08);
      goto LABEL_39;
    }

    goto LABEL_53;
  }

  v321 = v1113;
  sub_10000A0A4(v272, v1113, &qword_10042BE48, &qword_100393F08);
  if (v297(v272 + v296, 1, v298) == 1)
  {
    sub_1000059A8(v1119, &qword_10042BE48, &qword_100393F08);
    sub_1002F7CB8(v321, type metadata accessor for Proto_Gpsd_SetAssistanceAccel);
LABEL_53:
    v280 = &qword_10042EE80;
    v281 = &qword_100398C98;
    goto LABEL_77;
  }

  v326 = v272 + v296;
  v327 = v1107;
  sub_1002F7BE8(v326, v1107, type metadata accessor for Proto_Gpsd_SetAssistanceAccel);
  if ((sub_1002F7674(*v321, *v327) & 1) == 0)
  {
    v322 = type metadata accessor for Proto_Gpsd_SetAssistanceAccel;
    sub_1002F7CB8(v327, type metadata accessor for Proto_Gpsd_SetAssistanceAccel);
    v323 = &qword_10042BE48;
    v324 = &qword_100393F08;
    sub_1000059A8(v1119, &qword_10042BE48, &qword_100393F08);
    v325 = v321;
    goto LABEL_69;
  }

  type metadata accessor for UnknownStorage();
  sub_1002FB284(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v328 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_1002F7CB8(v327, type metadata accessor for Proto_Gpsd_SetAssistanceAccel);
  sub_1000059A8(v1119, &qword_10042BE48, &qword_100393F08);
  sub_1002F7CB8(v321, type metadata accessor for Proto_Gpsd_SetAssistanceAccel);
  sub_1000059A8(v272, &qword_10042BE48, &qword_100393F08);
  if ((v328 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_39:
  v299 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceGyro;
  v300 = v1135;
  swift_beginAccess();
  sub_10000A0A4(v300 + v299, v285, &qword_10042BE50, &qword_100393F10);
  v301 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceGyro;
  swift_beginAccess();
  v302 = *(v1108 + 48);
  v272 = v1111;
  sub_10000A0A4(v285, v1111, &qword_10042BE50, &qword_100393F10);
  sub_10000A0A4(v264 + v301, v272 + v302, &qword_10042BE50, &qword_100393F10);
  v303 = *(v1109 + 48);
  v304 = v1110;
  if (v303(v272, 1, v1110) == 1)
  {
    sub_1000059A8(v285, &qword_10042BE50, &qword_100393F10);
    v305 = v303(v272 + v302, 1, v304);
    v306 = v1112;
    if (v305 == 1)
    {
      sub_1000059A8(v272, &qword_10042BE50, &qword_100393F10);
      goto LABEL_42;
    }

    goto LABEL_60;
  }

  v329 = v1105;
  sub_10000A0A4(v272, v1105, &qword_10042BE50, &qword_100393F10);
  v330 = v303(v272 + v302, 1, v304);
  v306 = v1112;
  if (v330 == 1)
  {
    sub_1000059A8(v285, &qword_10042BE50, &qword_100393F10);
    sub_1002F7CB8(v329, type metadata accessor for Proto_Gpsd_SetAssistanceGyro);
LABEL_60:
    v280 = &qword_10042EE78;
    v281 = &qword_100398C90;
    goto LABEL_77;
  }

  v331 = v272 + v302;
  v332 = v1100;
  sub_1002F7BE8(v331, v1100, type metadata accessor for Proto_Gpsd_SetAssistanceGyro);
  if ((sub_1002F7674(*v329, *v332) & 1) == 0)
  {
    v322 = type metadata accessor for Proto_Gpsd_SetAssistanceGyro;
    sub_1002F7CB8(v332, type metadata accessor for Proto_Gpsd_SetAssistanceGyro);
    v323 = &qword_10042BE50;
    v324 = &qword_100393F10;
    sub_1000059A8(v285, &qword_10042BE50, &qword_100393F10);
    v325 = v329;
    goto LABEL_69;
  }

  type metadata accessor for UnknownStorage();
  sub_1002FB284(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v333 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_1002F7CB8(v332, type metadata accessor for Proto_Gpsd_SetAssistanceGyro);
  sub_1000059A8(v285, &qword_10042BE50, &qword_100393F10);
  sub_1002F7CB8(v329, type metadata accessor for Proto_Gpsd_SetAssistanceGyro);
  sub_1000059A8(v272, &qword_10042BE50, &qword_100393F10);
  if ((v333 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_42:
  v307 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceDem;
  v308 = v1135;
  swift_beginAccess();
  v309 = v308 + v307;
  v310 = v1106;
  sub_10000A0A4(v309, v1106, &qword_10042BE58, &qword_100393F18);
  v311 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceDem;
  swift_beginAccess();
  v312 = *(v1101 + 48);
  v313 = v310;
  v272 = v1104;
  sub_10000A0A4(v313, v1104, &qword_10042BE58, &qword_100393F18);
  sub_10000A0A4(v264 + v311, v272 + v312, &qword_10042BE58, &qword_100393F18);
  v314 = *(v1102 + 48);
  v315 = v1103;
  if (v314(v272, 1, v1103) == 1)
  {
    sub_1000059A8(v1106, &qword_10042BE58, &qword_100393F18);
    if (v314(v272 + v312, 1, v315) == 1)
    {
      sub_1000059A8(v272, &qword_10042BE58, &qword_100393F18);
      v316 = v1099;
      goto LABEL_71;
    }

    goto LABEL_67;
  }

  sub_10000A0A4(v272, v306, &qword_10042BE58, &qword_100393F18);
  if (v314(v272 + v312, 1, v315) == 1)
  {
    sub_1000059A8(v1106, &qword_10042BE58, &qword_100393F18);
    sub_1002F7CB8(v306, type metadata accessor for Proto_Gpsd_SetAssistanceDem);
LABEL_67:
    v280 = &qword_10042EE70;
    v281 = &qword_100398C88;
    goto LABEL_77;
  }

  v335 = v272 + v312;
  v336 = v1091;
  sub_1002F7BE8(v335, v1091, type metadata accessor for Proto_Gpsd_SetAssistanceDem);
  v337 = sub_1002F97AC(v306, v336, type metadata accessor for Proto_Gpsd_SetAssistanceDem);
  sub_1002F7CB8(v336, type metadata accessor for Proto_Gpsd_SetAssistanceDem);
  sub_1000059A8(v1106, &qword_10042BE58, &qword_100393F18);
  sub_1002F7CB8(v306, type metadata accessor for Proto_Gpsd_SetAssistanceDem);
  sub_1000059A8(v272, &qword_10042BE58, &qword_100393F18);
  v316 = v1099;
  if ((v337 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_71:
  v338 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMapVector;
  v339 = v1135;
  swift_beginAccess();
  sub_10000A0A4(v339 + v338, v316, &qword_10042BE60, &qword_100393F20);
  v340 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMapVector;
  swift_beginAccess();
  v341 = *(v1094 + 48);
  v272 = v1097;
  sub_10000A0A4(v316, v1097, &qword_10042BE60, &qword_100393F20);
  sub_10000A0A4(v264 + v340, v272 + v341, &qword_10042BE60, &qword_100393F20);
  v342 = *(v1095 + 48);
  v343 = v1096;
  if (v342(v272, 1, v1096) == 1)
  {
    sub_1000059A8(v316, &qword_10042BE60, &qword_100393F20);
    if (v342(v272 + v341, 1, v343) == 1)
    {
      sub_1000059A8(v272, &qword_10042BE60, &qword_100393F20);
      goto LABEL_82;
    }

    goto LABEL_76;
  }

  v344 = v1090;
  sub_10000A0A4(v272, v1090, &qword_10042BE60, &qword_100393F20);
  if (v342(v272 + v341, 1, v343) == 1)
  {
    sub_1000059A8(v316, &qword_10042BE60, &qword_100393F20);
    sub_1002F7CB8(v344, type metadata accessor for Proto_Gpsd_SetAssistanceMapVector);
LABEL_76:
    v280 = &qword_10042EE68;
    v281 = &qword_100398C80;
    goto LABEL_77;
  }

  v346 = v272 + v341;
  v347 = v1083;
  sub_1002F7BE8(v346, v1083, type metadata accessor for Proto_Gpsd_SetAssistanceMapVector);
  v348 = sub_1002F88AC(v344, v347);
  sub_1002F7CB8(v347, type metadata accessor for Proto_Gpsd_SetAssistanceMapVector);
  sub_1000059A8(v316, &qword_10042BE60, &qword_100393F20);
  sub_1002F7CB8(v344, type metadata accessor for Proto_Gpsd_SetAssistanceMapVector);
  sub_1000059A8(v272, &qword_10042BE60, &qword_100393F20);
  if ((v348 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_82:
  v349 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMotionActivityContext;
  v350 = v1135;
  swift_beginAccess();
  v351 = v1093;
  sub_10000A0A4(v350 + v349, v1093, &qword_10042BE68, &qword_100393F28);
  v352 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMotionActivityContext;
  v353 = v1136;
  swift_beginAccess();
  v354 = *(v1086 + 48);
  v355 = v351;
  v356 = v1098;
  sub_10000A0A4(v355, v1098, &qword_10042BE68, &qword_100393F28);
  sub_10000A0A4(v353 + v352, v356 + v354, &qword_10042BE68, &qword_100393F28);
  v357 = *(v1088 + 48);
  if (v357(v356, 1, v1092) == 1)
  {
    sub_1000059A8(v1093, &qword_10042BE68, &qword_100393F28);
    if (v357(v1098 + v354, 1, v1092) == 1)
    {
      sub_1000059A8(v1098, &qword_10042BE68, &qword_100393F28);
      goto LABEL_89;
    }

LABEL_87:
    v359 = &qword_10042EE60;
    v360 = &qword_100398C78;
    v361 = v1098;
LABEL_238:
    sub_1000059A8(v361, v359, v360);
    goto LABEL_79;
  }

  v358 = v1098;
  sub_10000A0A4(v1098, v1087, &qword_10042BE68, &qword_100393F28);
  if (v357(v358 + v354, 1, v1092) == 1)
  {
    sub_1000059A8(v1093, &qword_10042BE68, &qword_100393F28);
    sub_1002F7CB8(v1087, type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext);
    goto LABEL_87;
  }

  v362 = v1098;
  v363 = v1098 + v354;
  v364 = v1076;
  sub_1002F7BE8(v363, v1076, type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext);
  v365 = v1087;
  v366 = sub_1002F8258(v1087, v364);
  sub_1002F7CB8(v364, type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext);
  sub_1000059A8(v1093, &qword_10042BE68, &qword_100393F28);
  sub_1002F7CB8(v365, type metadata accessor for Proto_Gpsd_SetAssistanceMotionActivityContext);
  sub_1000059A8(v362, &qword_10042BE68, &qword_100393F28);
  if ((v366 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_89:
  v367 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMountState;
  v368 = v1135;
  swift_beginAccess();
  v369 = v1084;
  sub_10000A0A4(v368 + v367, v1084, &qword_10042BE70, &qword_100393F30);
  v370 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceMountState;
  v371 = v1136;
  swift_beginAccess();
  v372 = *(v1080 + 48);
  v373 = v369;
  v374 = v1089;
  sub_10000A0A4(v373, v1089, &qword_10042BE70, &qword_100393F30);
  sub_10000A0A4(v371 + v370, v374 + v372, &qword_10042BE70, &qword_100393F30);
  v375 = *(v1081 + 48);
  if (v375(v374, 1, v1085) == 1)
  {
    sub_1000059A8(v1084, &qword_10042BE70, &qword_100393F30);
    if (v375(v1089 + v372, 1, v1085) == 1)
    {
      sub_1000059A8(v1089, &qword_10042BE70, &qword_100393F30);
      goto LABEL_96;
    }

    goto LABEL_94;
  }

  v376 = v1089;
  sub_10000A0A4(v1089, v1079, &qword_10042BE70, &qword_100393F30);
  if (v375(v376 + v372, 1, v1085) == 1)
  {
    sub_1000059A8(v1084, &qword_10042BE70, &qword_100393F30);
    sub_1002F7CB8(v1079, type metadata accessor for Proto_Gpsd_SetAssistanceMountState);
LABEL_94:
    v359 = &qword_10042EE58;
    v360 = &qword_100398C70;
    v361 = v1089;
    goto LABEL_238;
  }

  v377 = v1089;
  v378 = v1089 + v372;
  v379 = v1069;
  sub_1002F7BE8(v378, v1069, type metadata accessor for Proto_Gpsd_SetAssistanceMountState);
  v380 = v1079;
  v381 = sub_1002F8690(v1079, v379);
  sub_1002F7CB8(v379, type metadata accessor for Proto_Gpsd_SetAssistanceMountState);
  sub_1000059A8(v1084, &qword_10042BE70, &qword_100393F30);
  sub_1002F7CB8(v380, type metadata accessor for Proto_Gpsd_SetAssistanceMountState);
  sub_1000059A8(v377, &qword_10042BE70, &qword_100393F30);
  if ((v381 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_96:
  v382 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSignalEnvironment;
  v383 = v1135;
  swift_beginAccess();
  v384 = v1078;
  sub_10000A0A4(v383 + v382, v1078, &qword_10042BE78, &qword_100393F38);
  v385 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSignalEnvironment;
  v386 = v1136;
  swift_beginAccess();
  v387 = *(v1072 + 48);
  v388 = v384;
  v389 = v1082;
  sub_10000A0A4(v388, v1082, &qword_10042BE78, &qword_100393F38);
  sub_10000A0A4(v386 + v385, v389 + v387, &qword_10042BE78, &qword_100393F38);
  v390 = *(v1074 + 48);
  if (v390(v389, 1, v1077) == 1)
  {
    sub_1000059A8(v1078, &qword_10042BE78, &qword_100393F38);
    if (v390(v1082 + v387, 1, v1077) == 1)
    {
      sub_1000059A8(v1082, &qword_10042BE78, &qword_100393F38);
      goto LABEL_103;
    }

    goto LABEL_101;
  }

  v391 = v1082;
  sub_10000A0A4(v1082, v1073, &qword_10042BE78, &qword_100393F38);
  if (v390(v391 + v387, 1, v1077) == 1)
  {
    sub_1000059A8(v1078, &qword_10042BE78, &qword_100393F38);
    sub_1002F7CB8(v1073, type metadata accessor for Proto_Gpsd_SetAssistanceSignalEnvironment);
LABEL_101:
    v359 = &qword_10042EE50;
    v360 = &qword_100398C68;
    v361 = v1082;
    goto LABEL_238;
  }

  v392 = v1082;
  v393 = v1082 + v387;
  v394 = v1062;
  sub_1002F7BE8(v393, v1062, type metadata accessor for Proto_Gpsd_SetAssistanceSignalEnvironment);
  v395 = v1073;
  v396 = sub_1002F843C(v1073, v394);
  sub_1002F7CB8(v394, type metadata accessor for Proto_Gpsd_SetAssistanceSignalEnvironment);
  sub_1000059A8(v1078, &qword_10042BE78, &qword_100393F38);
  sub_1002F7CB8(v395, type metadata accessor for Proto_Gpsd_SetAssistanceSignalEnvironment);
  sub_1000059A8(v392, &qword_10042BE78, &qword_100393F38);
  if ((v396 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_103:
  v397 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSpeedConstraint;
  v398 = v1135;
  swift_beginAccess();
  v399 = v1070;
  sub_10000A0A4(v398 + v397, v1070, &qword_10042BE80, &qword_100393F40);
  v400 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceSpeedConstraint;
  v401 = v1136;
  swift_beginAccess();
  v402 = *(v1065 + 48);
  v403 = v399;
  v404 = v1075;
  sub_10000A0A4(v403, v1075, &qword_10042BE80, &qword_100393F40);
  sub_10000A0A4(v401 + v400, v404 + v402, &qword_10042BE80, &qword_100393F40);
  v405 = *(v1067 + 48);
  if (v405(v404, 1, v1071) == 1)
  {
    sub_1000059A8(v1070, &qword_10042BE80, &qword_100393F40);
    if (v405(v1075 + v402, 1, v1071) == 1)
    {
      sub_1000059A8(v1075, &qword_10042BE80, &qword_100393F40);
      goto LABEL_110;
    }

    goto LABEL_108;
  }

  v406 = v1075;
  sub_10000A0A4(v1075, v1066, &qword_10042BE80, &qword_100393F40);
  if (v405(v406 + v402, 1, v1071) == 1)
  {
    sub_1000059A8(v1070, &qword_10042BE80, &qword_100393F40);
    sub_1002F7CB8(v1066, type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint);
LABEL_108:
    v359 = &qword_10042EE48;
    v360 = &qword_100398C60;
    v361 = v1075;
    goto LABEL_238;
  }

  v407 = v1075;
  v408 = v1075 + v402;
  v409 = v1055;
  sub_1002F7BE8(v408, v1055, type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint);
  v410 = v1066;
  v411 = sub_1002F852C(v1066, v409);
  sub_1002F7CB8(v409, type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint);
  sub_1000059A8(v1070, &qword_10042BE80, &qword_100393F40);
  sub_1002F7CB8(v410, type metadata accessor for Proto_Gpsd_SetAssistanceSpeedConstraint);
  sub_1000059A8(v407, &qword_10042BE80, &qword_100393F40);
  if ((v411 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_110:
  v412 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAlongTrackVelocity;
  v413 = v1135;
  swift_beginAccess();
  v414 = v1063;
  sub_10000A0A4(v413 + v412, v1063, &qword_10042BE88, &qword_100393F48);
  v415 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setAssistanceAlongTrackVelocity;
  v416 = v1136;
  swift_beginAccess();
  v417 = *(v1058 + 48);
  v418 = v414;
  v419 = v1068;
  sub_10000A0A4(v418, v1068, &qword_10042BE88, &qword_100393F48);
  sub_10000A0A4(v416 + v415, v419 + v417, &qword_10042BE88, &qword_100393F48);
  v420 = *(v1060 + 48);
  if (v420(v419, 1, v1064) == 1)
  {
    sub_1000059A8(v1063, &qword_10042BE88, &qword_100393F48);
    if (v420(v1068 + v417, 1, v1064) == 1)
    {
      sub_1000059A8(v1068, &qword_10042BE88, &qword_100393F48);
      goto LABEL_117;
    }

    goto LABEL_115;
  }

  v421 = v1068;
  sub_10000A0A4(v1068, v1059, &qword_10042BE88, &qword_100393F48);
  if (v420(v421 + v417, 1, v1064) == 1)
  {
    sub_1000059A8(v1063, &qword_10042BE88, &qword_100393F48);
    sub_1002F7CB8(v1059, type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity);
LABEL_115:
    v359 = &qword_10042EE40;
    v360 = &qword_100398C58;
    v361 = v1068;
    goto LABEL_238;
  }

  v422 = v1068;
  v423 = v1068 + v417;
  v424 = v1048;
  sub_1002F7BE8(v423, v1048, type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity);
  v425 = v1059;
  v426 = sub_1002F97AC(v1059, v424, type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity);
  sub_1002F7CB8(v424, type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity);
  sub_1000059A8(v1063, &qword_10042BE88, &qword_100393F48);
  sub_1002F7CB8(v425, type metadata accessor for Proto_Gpsd_SetAssistanceAlongTrackVelocity);
  sub_1000059A8(v422, &qword_10042BE88, &qword_100393F48);
  if ((v426 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_117:
  v427 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceFile;
  v428 = v1135;
  swift_beginAccess();
  v429 = v1056;
  sub_10000A0A4(v428 + v427, v1056, &qword_10042BE90, &qword_100393F50);
  v430 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectAssistanceFile;
  v431 = v1136;
  swift_beginAccess();
  v432 = *(v1051 + 48);
  v433 = v429;
  v434 = v1061;
  sub_10000A0A4(v433, v1061, &qword_10042BE90, &qword_100393F50);
  sub_10000A0A4(v431 + v430, v434 + v432, &qword_10042BE90, &qword_100393F50);
  v435 = *(v1053 + 48);
  if (v435(v434, 1, v1057) == 1)
  {
    sub_1000059A8(v1056, &qword_10042BE90, &qword_100393F50);
    if (v435(v1061 + v432, 1, v1057) == 1)
    {
      sub_1000059A8(v1061, &qword_10042BE90, &qword_100393F50);
      goto LABEL_124;
    }

    goto LABEL_122;
  }

  v436 = v1061;
  sub_10000A0A4(v1061, v1052, &qword_10042BE90, &qword_100393F50);
  if (v435(v436 + v432, 1, v1057) == 1)
  {
    sub_1000059A8(v1056, &qword_10042BE90, &qword_100393F50);
    sub_1002F7CB8(v1052, type metadata accessor for Proto_Gpsd_InjectAssistanceFile);
LABEL_122:
    v359 = &qword_10042EE38;
    v360 = &qword_100398C50;
    v361 = v1061;
    goto LABEL_238;
  }

  v437 = v1061;
  v438 = v1061 + v432;
  v439 = v1044;
  sub_1002F7BE8(v438, v1044, type metadata accessor for Proto_Gpsd_InjectAssistanceFile);
  v440 = v1052;
  v441 = sub_1002F8EC0(v1052, v439);
  sub_1002F7CB8(v439, type metadata accessor for Proto_Gpsd_InjectAssistanceFile);
  sub_1000059A8(v1056, &qword_10042BE90, &qword_100393F50);
  sub_1002F7CB8(v440, type metadata accessor for Proto_Gpsd_InjectAssistanceFile);
  sub_1000059A8(v437, &qword_10042BE90, &qword_100393F50);
  if ((v441 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_124:
  v442 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRtiFile;
  v443 = v1135;
  swift_beginAccess();
  v444 = v1049;
  sub_10000A0A4(v443 + v442, v1049, &qword_10042BE98, &qword_100393F58);
  v445 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRtiFile;
  v446 = v1136;
  swift_beginAccess();
  v447 = *(v1045 + 48);
  v448 = v444;
  v449 = v1054;
  sub_10000A0A4(v448, v1054, &qword_10042BE98, &qword_100393F58);
  sub_10000A0A4(v446 + v445, v449 + v447, &qword_10042BE98, &qword_100393F58);
  v450 = *(v1047 + 48);
  if (v450(v449, 1, v1050) == 1)
  {
    sub_1000059A8(v1049, &qword_10042BE98, &qword_100393F58);
    if (v450(v1054 + v447, 1, v1050) == 1)
    {
      sub_1000059A8(v1054, &qword_10042BE98, &qword_100393F58);
      goto LABEL_131;
    }

    goto LABEL_129;
  }

  v451 = v1054;
  sub_10000A0A4(v1054, v1046, &qword_10042BE98, &qword_100393F58);
  if (v450(v451 + v447, 1, v1050) == 1)
  {
    sub_1000059A8(v1049, &qword_10042BE98, &qword_100393F58);
    sub_1002F7CB8(v1046, type metadata accessor for Proto_Gpsd_InjectRtiFile);
LABEL_129:
    v359 = &qword_10042EE30;
    v360 = &qword_100398C48;
    v361 = v1054;
    goto LABEL_238;
  }

  v452 = v1054;
  v453 = v1054 + v447;
  v454 = v868;
  sub_1002F7BE8(v453, v868, type metadata accessor for Proto_Gpsd_InjectRtiFile);
  v455 = v1046;
  v456 = sub_1002F9CA4(v1046, v454, type metadata accessor for Proto_Gpsd_InjectRtiFile);
  sub_1002F7CB8(v454, type metadata accessor for Proto_Gpsd_InjectRtiFile);
  sub_1000059A8(v1049, &qword_10042BE98, &qword_100393F58);
  sub_1002F7CB8(v455, type metadata accessor for Proto_Gpsd_InjectRtiFile);
  sub_1000059A8(v452, &qword_10042BE98, &qword_100393F58);
  if ((v456 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_131:
  v457 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectSvidBlocklist;
  v458 = v1135;
  swift_beginAccess();
  v459 = v871;
  sub_10000A0A4(v458 + v457, v871, &qword_10042BEA0, &qword_100393F60);
  v460 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectSvidBlocklist;
  v461 = v1136;
  swift_beginAccess();
  v462 = *(v869 + 48);
  v463 = v459;
  v464 = v875;
  sub_10000A0A4(v463, v875, &qword_10042BEA0, &qword_100393F60);
  sub_10000A0A4(v461 + v460, v464 + v462, &qword_10042BEA0, &qword_100393F60);
  v465 = *(v870 + 48);
  if (v465(v464, 1, v872) == 1)
  {
    sub_1000059A8(v871, &qword_10042BEA0, &qword_100393F60);
    if (v465(v875 + v462, 1, v872) == 1)
    {
      sub_1000059A8(v875, &qword_10042BEA0, &qword_100393F60);
      goto LABEL_134;
    }

    goto LABEL_139;
  }

  v475 = v875;
  sub_10000A0A4(v875, v873, &qword_10042BEA0, &qword_100393F60);
  if (v465(v475 + v462, 1, v872) == 1)
  {
    sub_1000059A8(v871, &qword_10042BEA0, &qword_100393F60);
    sub_1002F7CB8(v873, type metadata accessor for Proto_Gpsd_InjectSvidBlocklist);
LABEL_139:
    v359 = &qword_10042EE28;
    v360 = &qword_100398C40;
    v361 = v875;
    goto LABEL_238;
  }

  v476 = v874;
  sub_1002F7BE8(v875 + v462, v874, type metadata accessor for Proto_Gpsd_InjectSvidBlocklist);
  if ((sub_1002F747C(*v873, *v476) & 1) == 0)
  {
    sub_1002F7CB8(v874, type metadata accessor for Proto_Gpsd_InjectSvidBlocklist);
    sub_1000059A8(v871, &qword_10042BEA0, &qword_100393F60);
    sub_1002F7CB8(v873, type metadata accessor for Proto_Gpsd_InjectSvidBlocklist);
    v361 = v875;
    v359 = &qword_10042BEA0;
    v360 = &qword_100393F60;
    goto LABEL_238;
  }

  type metadata accessor for UnknownStorage();
  sub_1002FB284(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v478 = v873;
  v477 = v874;
  v479 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_1002F7CB8(v477, type metadata accessor for Proto_Gpsd_InjectSvidBlocklist);
  sub_1000059A8(v871, &qword_10042BEA0, &qword_100393F60);
  sub_1002F7CB8(v478, type metadata accessor for Proto_Gpsd_InjectSvidBlocklist);
  sub_1000059A8(v875, &qword_10042BEA0, &qword_100393F60);
  if ((v479 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_134:
  v466 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__deleteGnssData;
  v467 = v1135;
  swift_beginAccess();
  v468 = v877;
  sub_10000A0A4(v467 + v466, v877, &qword_10042BEA8, &qword_100393F68);
  v469 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__deleteGnssData;
  v470 = v1136;
  swift_beginAccess();
  v471 = *(v876 + 48);
  v472 = v468;
  v473 = v882;
  sub_10000A0A4(v472, v882, &qword_10042BEA8, &qword_100393F68);
  sub_10000A0A4(v470 + v469, v473 + v471, &qword_10042BEA8, &qword_100393F68);
  v474 = *(v879 + 48);
  if (v474(v473, 1, v880) == 1)
  {
    sub_1000059A8(v877, &qword_10042BEA8, &qword_100393F68);
    if (v474(v882 + v471, 1, v880) == 1)
    {
      sub_1000059A8(v882, &qword_10042BEA8, &qword_100393F68);
      goto LABEL_148;
    }

    goto LABEL_145;
  }

  v480 = v882;
  sub_10000A0A4(v882, v878, &qword_10042BEA8, &qword_100393F68);
  if (v474(v480 + v471, 1, v880) == 1)
  {
    sub_1000059A8(v877, &qword_10042BEA8, &qword_100393F68);
    sub_1002F7CB8(v878, type metadata accessor for Proto_Gpsd_DeleteGnssData);
LABEL_145:
    v359 = &qword_10042EE20;
    v360 = &qword_100398C38;
    v361 = v882;
    goto LABEL_238;
  }

  v481 = v882;
  v482 = v882 + v471;
  v483 = v881;
  sub_1002F7BE8(v482, v881, type metadata accessor for Proto_Gpsd_DeleteGnssData);
  v484 = v878;
  v485 = sub_1002F9A20(v878, v483, type metadata accessor for Proto_Gpsd_DeleteGnssData);
  sub_1002F7CB8(v483, type metadata accessor for Proto_Gpsd_DeleteGnssData);
  sub_1000059A8(v877, &qword_10042BEA8, &qword_100393F68);
  sub_1002F7CB8(v484, type metadata accessor for Proto_Gpsd_DeleteGnssData);
  sub_1000059A8(v481, &qword_10042BEA8, &qword_100393F68);
  if ((v485 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_148:
  v486 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setPvtmReport;
  v487 = v1135;
  swift_beginAccess();
  v488 = v884;
  sub_10000A0A4(v487 + v486, v884, &qword_10042BEB0, &qword_100393F70);
  v489 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setPvtmReport;
  v490 = v1136;
  swift_beginAccess();
  v491 = *(v883 + 48);
  v492 = v488;
  v493 = v889;
  sub_10000A0A4(v492, v889, &qword_10042BEB0, &qword_100393F70);
  sub_10000A0A4(v490 + v489, v493 + v491, &qword_10042BEB0, &qword_100393F70);
  v494 = *(v886 + 48);
  if (v494(v493, 1, v888) == 1)
  {
    sub_1000059A8(v884, &qword_10042BEB0, &qword_100393F70);
    if (v494(v889 + v491, 1, v888) == 1)
    {
      sub_1000059A8(v889, &qword_10042BEB0, &qword_100393F70);
      goto LABEL_155;
    }

    goto LABEL_153;
  }

  v495 = v889;
  sub_10000A0A4(v889, v885, &qword_10042BEB0, &qword_100393F70);
  if (v494(v495 + v491, 1, v888) == 1)
  {
    sub_1000059A8(v884, &qword_10042BEB0, &qword_100393F70);
    sub_1002F7CB8(v885, type metadata accessor for Proto_Gpsd_SetPvtmReport);
LABEL_153:
    v359 = &qword_10042EE18;
    v360 = &qword_100398C30;
    v361 = v889;
    goto LABEL_238;
  }

  v496 = v889;
  v497 = v889 + v491;
  v498 = v887;
  sub_1002F7BE8(v497, v887, type metadata accessor for Proto_Gpsd_SetPvtmReport);
  v499 = v885;
  v500 = sub_1002F9AEC(v885, v498);
  sub_1002F7CB8(v498, type metadata accessor for Proto_Gpsd_SetPvtmReport);
  sub_1000059A8(v884, &qword_10042BEB0, &qword_100393F70);
  sub_1002F7CB8(v499, type metadata accessor for Proto_Gpsd_SetPvtmReport);
  sub_1000059A8(v496, &qword_10042BEB0, &qword_100393F70);
  if ((v500 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_155:
  v501 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setNmeaHandler;
  v502 = v1135;
  swift_beginAccess();
  v503 = v891;
  sub_10000A0A4(v502 + v501, v891, &qword_10042BEB8, &qword_100393F78);
  v504 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setNmeaHandler;
  v505 = v1136;
  swift_beginAccess();
  v506 = *(v890 + 48);
  v507 = v503;
  v508 = v896;
  sub_10000A0A4(v507, v896, &qword_10042BEB8, &qword_100393F78);
  sub_10000A0A4(v505 + v504, v508 + v506, &qword_10042BEB8, &qword_100393F78);
  v509 = *(v893 + 48);
  if (v509(v508, 1, v894) == 1)
  {
    sub_1000059A8(v891, &qword_10042BEB8, &qword_100393F78);
    if (v509(v896 + v506, 1, v894) == 1)
    {
      sub_1000059A8(v896, &qword_10042BEB8, &qword_100393F78);
      goto LABEL_162;
    }

    goto LABEL_160;
  }

  v510 = v896;
  sub_10000A0A4(v896, v892, &qword_10042BEB8, &qword_100393F78);
  if (v509(v510 + v506, 1, v894) == 1)
  {
    sub_1000059A8(v891, &qword_10042BEB8, &qword_100393F78);
    sub_1002F7CB8(v892, type metadata accessor for Proto_Gpsd_SetNmeaHandler);
LABEL_160:
    v359 = &qword_10042EE10;
    v360 = &qword_100398C28;
    v361 = v896;
    goto LABEL_238;
  }

  v511 = v896;
  v512 = v896 + v506;
  v513 = v895;
  sub_1002F7BE8(v512, v895, type metadata accessor for Proto_Gpsd_SetNmeaHandler);
  v514 = v892;
  v515 = sub_1002F9A20(v892, v513, type metadata accessor for Proto_Gpsd_SetNmeaHandler);
  sub_1002F7CB8(v513, type metadata accessor for Proto_Gpsd_SetNmeaHandler);
  sub_1000059A8(v891, &qword_10042BEB8, &qword_100393F78);
  sub_1002F7CB8(v514, type metadata accessor for Proto_Gpsd_SetNmeaHandler);
  sub_1000059A8(v511, &qword_10042BEB8, &qword_100393F78);
  if ((v515 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_162:
  v516 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigSimulatorMode;
  v517 = v1135;
  swift_beginAccess();
  v518 = v898;
  sub_10000A0A4(v517 + v516, v898, &qword_10042BEC0, &qword_100393F80);
  v519 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigSimulatorMode;
  v520 = v1136;
  swift_beginAccess();
  v521 = *(v897 + 48);
  v522 = v518;
  v523 = v903;
  sub_10000A0A4(v522, v903, &qword_10042BEC0, &qword_100393F80);
  sub_10000A0A4(v520 + v519, v523 + v521, &qword_10042BEC0, &qword_100393F80);
  v524 = *(v900 + 48);
  if (v524(v523, 1, v902) == 1)
  {
    sub_1000059A8(v898, &qword_10042BEC0, &qword_100393F80);
    if (v524(v903 + v521, 1, v902) == 1)
    {
      sub_1000059A8(v903, &qword_10042BEC0, &qword_100393F80);
      goto LABEL_169;
    }

    goto LABEL_167;
  }

  v525 = v903;
  sub_10000A0A4(v903, v899, &qword_10042BEC0, &qword_100393F80);
  if (v524(v525 + v521, 1, v902) == 1)
  {
    sub_1000059A8(v898, &qword_10042BEC0, &qword_100393F80);
    sub_1002F7CB8(v899, type metadata accessor for Proto_Gpsd_SetConfigSimulatorMode);
LABEL_167:
    v359 = &qword_10042EE08;
    v360 = &qword_100398C20;
    v361 = v903;
    goto LABEL_238;
  }

  v526 = v903;
  v527 = v903 + v521;
  v528 = v901;
  sub_1002F7BE8(v527, v901, type metadata accessor for Proto_Gpsd_SetConfigSimulatorMode);
  v529 = v899;
  v530 = sub_1002F87B4(v899, v528);
  sub_1002F7CB8(v528, type metadata accessor for Proto_Gpsd_SetConfigSimulatorMode);
  sub_1000059A8(v898, &qword_10042BEC0, &qword_100393F80);
  sub_1002F7CB8(v529, type metadata accessor for Proto_Gpsd_SetConfigSimulatorMode);
  sub_1000059A8(v526, &qword_10042BEC0, &qword_100393F80);
  if ((v530 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_169:
  v531 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigEnableGnssConstellations;
  v532 = v1135;
  swift_beginAccess();
  v533 = v905;
  sub_10000A0A4(v532 + v531, v905, &qword_10042BEC8, &qword_100393F88);
  v534 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigEnableGnssConstellations;
  v535 = v1136;
  swift_beginAccess();
  v536 = *(v904 + 48);
  v537 = v533;
  v538 = v910;
  sub_10000A0A4(v537, v910, &qword_10042BEC8, &qword_100393F88);
  sub_10000A0A4(v535 + v534, v538 + v536, &qword_10042BEC8, &qword_100393F88);
  v539 = *(v907 + 48);
  if (v539(v538, 1, v908) == 1)
  {
    sub_1000059A8(v905, &qword_10042BEC8, &qword_100393F88);
    if (v539(v910 + v536, 1, v908) == 1)
    {
      sub_1000059A8(v910, &qword_10042BEC8, &qword_100393F88);
      goto LABEL_176;
    }

    goto LABEL_174;
  }

  v540 = v910;
  sub_10000A0A4(v910, v906, &qword_10042BEC8, &qword_100393F88);
  if (v539(v540 + v536, 1, v908) == 1)
  {
    sub_1000059A8(v905, &qword_10042BEC8, &qword_100393F88);
    sub_1002F7CB8(v906, type metadata accessor for Proto_Gpsd_SetConfigEnableGnssConstellations);
LABEL_174:
    v359 = &qword_10042EE00;
    v360 = &qword_100398C18;
    v361 = v910;
    goto LABEL_238;
  }

  v541 = v910;
  v542 = v910 + v536;
  v543 = v909;
  sub_1002F7BE8(v542, v909, type metadata accessor for Proto_Gpsd_SetConfigEnableGnssConstellations);
  v544 = v906;
  v545 = sub_1002FB4E8(v906, v543, type metadata accessor for Proto_Gpsd_SetConfigEnableGnssConstellations);
  sub_1002F7CB8(v543, type metadata accessor for Proto_Gpsd_SetConfigEnableGnssConstellations);
  sub_1000059A8(v905, &qword_10042BEC8, &qword_100393F88);
  sub_1002F7CB8(v544, type metadata accessor for Proto_Gpsd_SetConfigEnableGnssConstellations);
  sub_1000059A8(v541, &qword_10042BEC8, &qword_100393F88);
  if ((v545 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_176:
  v546 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigDutyCycling;
  v547 = v1135;
  swift_beginAccess();
  v548 = v912;
  sub_10000A0A4(v547 + v546, v912, &qword_10042BED0, &qword_100393F90);
  v549 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigDutyCycling;
  v550 = v1136;
  swift_beginAccess();
  v551 = *(v911 + 48);
  v552 = v548;
  v553 = v917;
  sub_10000A0A4(v552, v917, &qword_10042BED0, &qword_100393F90);
  sub_10000A0A4(v550 + v549, v553 + v551, &qword_10042BED0, &qword_100393F90);
  v554 = *(v914 + 48);
  if (v554(v553, 1, v916) == 1)
  {
    sub_1000059A8(v912, &qword_10042BED0, &qword_100393F90);
    if (v554(v917 + v551, 1, v916) == 1)
    {
      sub_1000059A8(v917, &qword_10042BED0, &qword_100393F90);
      goto LABEL_183;
    }

    goto LABEL_181;
  }

  v555 = v917;
  sub_10000A0A4(v917, v913, &qword_10042BED0, &qword_100393F90);
  if (v554(v555 + v551, 1, v916) == 1)
  {
    sub_1000059A8(v912, &qword_10042BED0, &qword_100393F90);
    sub_1002F7CB8(v913, type metadata accessor for Proto_Gpsd_SetConfigDutyCycling);
LABEL_181:
    v359 = &qword_10042EDF8;
    v360 = &qword_100398C10;
    v361 = v917;
    goto LABEL_238;
  }

  v556 = v917;
  v557 = v917 + v551;
  v558 = v915;
  sub_1002F7BE8(v557, v915, type metadata accessor for Proto_Gpsd_SetConfigDutyCycling);
  v559 = v913;
  v560 = sub_1002F8CC8(v913, v558);
  sub_1002F7CB8(v558, type metadata accessor for Proto_Gpsd_SetConfigDutyCycling);
  sub_1000059A8(v912, &qword_10042BED0, &qword_100393F90);
  sub_1002F7CB8(v559, type metadata accessor for Proto_Gpsd_SetConfigDutyCycling);
  sub_1000059A8(v556, &qword_10042BED0, &qword_100393F90);
  if ((v560 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_183:
  v561 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__terminationImminent;
  v562 = v1135;
  swift_beginAccess();
  v563 = v919;
  sub_10000A0A4(v562 + v561, v919, &qword_10042BED8, &qword_100393F98);
  v564 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__terminationImminent;
  v565 = v1136;
  swift_beginAccess();
  v566 = *(v918 + 48);
  v567 = v563;
  v568 = v924;
  sub_10000A0A4(v567, v924, &qword_10042BED8, &qword_100393F98);
  sub_10000A0A4(v565 + v564, v568 + v566, &qword_10042BED8, &qword_100393F98);
  v569 = *(v921 + 48);
  if (v569(v568, 1, v922) == 1)
  {
    sub_1000059A8(v919, &qword_10042BED8, &qword_100393F98);
    if (v569(v924 + v566, 1, v922) == 1)
    {
      sub_1000059A8(v924, &qword_10042BED8, &qword_100393F98);
      goto LABEL_190;
    }

    goto LABEL_188;
  }

  v570 = v924;
  sub_10000A0A4(v924, v920, &qword_10042BED8, &qword_100393F98);
  if (v569(v570 + v566, 1, v922) == 1)
  {
    sub_1000059A8(v919, &qword_10042BED8, &qword_100393F98);
    sub_1002F7CB8(v920, type metadata accessor for Proto_Gpsd_TerminationImminent);
LABEL_188:
    v359 = &qword_10042EDF0;
    v360 = &qword_100398C08;
    v361 = v924;
    goto LABEL_238;
  }

  v571 = v924;
  v572 = v924 + v566;
  v573 = v923;
  sub_1002F7BE8(v572, v923, type metadata accessor for Proto_Gpsd_TerminationImminent);
  v574 = v920;
  v575 = sub_1002F9FB8(v920, v573, type metadata accessor for Proto_Gpsd_TerminationImminent);
  sub_1002F7CB8(v573, type metadata accessor for Proto_Gpsd_TerminationImminent);
  sub_1000059A8(v919, &qword_10042BED8, &qword_100393F98);
  sub_1002F7CB8(v574, type metadata accessor for Proto_Gpsd_TerminationImminent);
  sub_1000059A8(v571, &qword_10042BED8, &qword_100393F98);
  if ((v575 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_190:
  v576 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__exitMessage;
  v577 = v1135;
  swift_beginAccess();
  v578 = v926;
  sub_10000A0A4(v577 + v576, v926, &qword_10042BEE0, &qword_100393FA0);
  v579 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__exitMessage;
  v580 = v1136;
  swift_beginAccess();
  v581 = *(v925 + 48);
  v582 = v578;
  v583 = v931;
  sub_10000A0A4(v582, v931, &qword_10042BEE0, &qword_100393FA0);
  sub_10000A0A4(v580 + v579, v583 + v581, &qword_10042BEE0, &qword_100393FA0);
  v584 = *(v928 + 48);
  if (v584(v583, 1, v929) == 1)
  {
    sub_1000059A8(v926, &qword_10042BEE0, &qword_100393FA0);
    if (v584(v931 + v581, 1, v929) == 1)
    {
      sub_1000059A8(v931, &qword_10042BEE0, &qword_100393FA0);
      goto LABEL_197;
    }

    goto LABEL_195;
  }

  v585 = v931;
  sub_10000A0A4(v931, v927, &qword_10042BEE0, &qword_100393FA0);
  if (v584(v585 + v581, 1, v929) == 1)
  {
    sub_1000059A8(v926, &qword_10042BEE0, &qword_100393FA0);
    sub_1002F7CB8(v927, type metadata accessor for Proto_Gpsd_ExitMessage);
LABEL_195:
    v359 = &qword_10042EDE8;
    v360 = &qword_100398C00;
    v361 = v931;
    goto LABEL_238;
  }

  v586 = v931;
  v587 = v931 + v581;
  v588 = v930;
  sub_1002F7BE8(v587, v930, type metadata accessor for Proto_Gpsd_ExitMessage);
  v589 = v927;
  v590 = sub_1002F9FB8(v927, v588, type metadata accessor for Proto_Gpsd_ExitMessage);
  sub_1002F7CB8(v588, type metadata accessor for Proto_Gpsd_ExitMessage);
  sub_1000059A8(v926, &qword_10042BEE0, &qword_100393FA0);
  sub_1002F7CB8(v589, type metadata accessor for Proto_Gpsd_ExitMessage);
  sub_1000059A8(v586, &qword_10042BEE0, &qword_100393FA0);
  if ((v590 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_197:
  v591 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectLtlInfo;
  v592 = v1135;
  swift_beginAccess();
  v593 = v933;
  sub_10000A0A4(v592 + v591, v933, &qword_10042BEE8, &qword_100393FA8);
  v594 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectLtlInfo;
  v595 = v1136;
  swift_beginAccess();
  v596 = *(v932 + 48);
  v597 = v593;
  v598 = v938;
  sub_10000A0A4(v597, v938, &qword_10042BEE8, &qword_100393FA8);
  sub_10000A0A4(v595 + v594, v598 + v596, &qword_10042BEE8, &qword_100393FA8);
  v599 = *(v935 + 48);
  if (v599(v598, 1, v936) == 1)
  {
    sub_1000059A8(v933, &qword_10042BEE8, &qword_100393FA8);
    if (v599(v938 + v596, 1, v936) == 1)
    {
      sub_1000059A8(v938, &qword_10042BEE8, &qword_100393FA8);
      goto LABEL_204;
    }

    goto LABEL_202;
  }

  v600 = v938;
  sub_10000A0A4(v938, v934, &qword_10042BEE8, &qword_100393FA8);
  if (v599(v600 + v596, 1, v936) == 1)
  {
    sub_1000059A8(v933, &qword_10042BEE8, &qword_100393FA8);
    sub_1002F7CB8(v934, type metadata accessor for Proto_Gpsd_LtlInfo);
LABEL_202:
    v359 = &qword_10042EDE0;
    v360 = &qword_100398BF8;
    v361 = v938;
    goto LABEL_238;
  }

  v601 = v938;
  v602 = v938 + v596;
  v603 = v937;
  sub_1002F7BE8(v602, v937, type metadata accessor for Proto_Gpsd_LtlInfo);
  v604 = v934;
  v605 = sub_1002FB2CC(v934, v603, type metadata accessor for Proto_Gpsd_LtlInfo, sub_1002F15D8);
  sub_1002F7CB8(v603, type metadata accessor for Proto_Gpsd_LtlInfo);
  sub_1000059A8(v933, &qword_10042BEE8, &qword_100393FA8);
  sub_1002F7CB8(v604, type metadata accessor for Proto_Gpsd_LtlInfo);
  sub_1000059A8(v601, &qword_10042BEE8, &qword_100393FA8);
  if ((v605 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_204:
  v606 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__startContext;
  v607 = v1135;
  swift_beginAccess();
  v608 = v940;
  sub_10000A0A4(v607 + v606, v940, &qword_10042BEF0, &qword_100393FB0);
  v609 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__startContext;
  v610 = v1136;
  swift_beginAccess();
  v611 = *(v939 + 48);
  v612 = v608;
  v613 = v945;
  sub_10000A0A4(v612, v945, &qword_10042BEF0, &qword_100393FB0);
  sub_10000A0A4(v610 + v609, v613 + v611, &qword_10042BEF0, &qword_100393FB0);
  v614 = *(v942 + 48);
  if (v614(v613, 1, started) == 1)
  {
    sub_1000059A8(v940, &qword_10042BEF0, &qword_100393FB0);
    if (v614(v945 + v611, 1, started) == 1)
    {
      sub_1000059A8(v945, &qword_10042BEF0, &qword_100393FB0);
      goto LABEL_211;
    }

    goto LABEL_209;
  }

  v615 = v945;
  sub_10000A0A4(v945, v941, &qword_10042BEF0, &qword_100393FB0);
  if (v614(v615 + v611, 1, started) == 1)
  {
    sub_1000059A8(v940, &qword_10042BEF0, &qword_100393FB0);
    sub_1002F7CB8(v941, type metadata accessor for Proto_Gpsd_StartContext);
LABEL_209:
    v359 = &qword_10042EDD8;
    v360 = &qword_100398BF0;
    v361 = v945;
    goto LABEL_238;
  }

  v616 = v945;
  v617 = v945 + v611;
  v618 = v943;
  sub_1002F7BE8(v617, v943, type metadata accessor for Proto_Gpsd_StartContext);
  v619 = v941;
  v620 = sub_1002F9E2C(v941, v618);
  sub_1002F7CB8(v618, type metadata accessor for Proto_Gpsd_StartContext);
  sub_1000059A8(v940, &qword_10042BEF0, &qword_100393FB0);
  sub_1002F7CB8(v619, type metadata accessor for Proto_Gpsd_StartContext);
  sub_1000059A8(v616, &qword_10042BEF0, &qword_100393FB0);
  if ((v620 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_211:
  v621 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setThermalRiskState;
  v622 = v1135;
  swift_beginAccess();
  v623 = v947;
  sub_10000A0A4(v622 + v621, v947, &qword_10042BEF8, &qword_100393FB8);
  v624 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setThermalRiskState;
  v625 = v1136;
  swift_beginAccess();
  v626 = *(v946 + 48);
  v627 = v623;
  v628 = v952;
  sub_10000A0A4(v627, v952, &qword_10042BEF8, &qword_100393FB8);
  sub_10000A0A4(v625 + v624, v628 + v626, &qword_10042BEF8, &qword_100393FB8);
  v629 = *(v949 + 48);
  if (v629(v628, 1, v951) == 1)
  {
    sub_1000059A8(v947, &qword_10042BEF8, &qword_100393FB8);
    if (v629(v952 + v626, 1, v951) == 1)
    {
      sub_1000059A8(v952, &qword_10042BEF8, &qword_100393FB8);
      goto LABEL_218;
    }

    goto LABEL_216;
  }

  v630 = v952;
  sub_10000A0A4(v952, v948, &qword_10042BEF8, &qword_100393FB8);
  if (v629(v630 + v626, 1, v951) == 1)
  {
    sub_1000059A8(v947, &qword_10042BEF8, &qword_100393FB8);
    sub_1002F7CB8(v948, type metadata accessor for Proto_Gpsd_SetThermalRiskState);
LABEL_216:
    v359 = &qword_10042EDD0;
    v360 = &qword_100398BE8;
    v361 = v952;
    goto LABEL_238;
  }

  v631 = v952;
  v632 = v952 + v626;
  v633 = v950;
  sub_1002F7BE8(v632, v950, type metadata accessor for Proto_Gpsd_SetThermalRiskState);
  v634 = v948;
  v635 = sub_1002F9074(v948, v633);
  sub_1002F7CB8(v633, type metadata accessor for Proto_Gpsd_SetThermalRiskState);
  sub_1000059A8(v947, &qword_10042BEF8, &qword_100393FB8);
  sub_1002F7CB8(v634, type metadata accessor for Proto_Gpsd_SetThermalRiskState);
  sub_1000059A8(v631, &qword_10042BEF8, &qword_100393FB8);
  if ((v635 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_218:
  v636 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigRfBandEnable;
  v637 = v1135;
  swift_beginAccess();
  v638 = v954;
  sub_10000A0A4(v637 + v636, v954, &qword_10042BF00, &qword_100393FC0);
  v639 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__setConfigRfBandEnable;
  v640 = v1136;
  swift_beginAccess();
  v641 = *(v953 + 48);
  v642 = v638;
  v643 = v959;
  sub_10000A0A4(v642, v959, &qword_10042BF00, &qword_100393FC0);
  sub_10000A0A4(v640 + v639, v643 + v641, &qword_10042BF00, &qword_100393FC0);
  v644 = *(v956 + 48);
  if (v644(v643, 1, v958) == 1)
  {
    sub_1000059A8(v954, &qword_10042BF00, &qword_100393FC0);
    if (v644(v959 + v641, 1, v958) == 1)
    {
      sub_1000059A8(v959, &qword_10042BF00, &qword_100393FC0);
      goto LABEL_225;
    }

    goto LABEL_223;
  }

  v645 = v959;
  sub_10000A0A4(v959, v955, &qword_10042BF00, &qword_100393FC0);
  if (v644(v645 + v641, 1, v958) == 1)
  {
    sub_1000059A8(v954, &qword_10042BF00, &qword_100393FC0);
    sub_1002F7CB8(v955, type metadata accessor for Proto_Gpsd_SetConfigRfBandEnable);
LABEL_223:
    v359 = &qword_10042EDC8;
    v360 = &qword_100398BE0;
    v361 = v959;
    goto LABEL_238;
  }

  v646 = v959;
  v647 = v959 + v641;
  v648 = v957;
  sub_1002F7BE8(v647, v957, type metadata accessor for Proto_Gpsd_SetConfigRfBandEnable);
  v649 = v955;
  v650 = sub_1002F8BD0(v955, v648);
  sub_1002F7CB8(v648, type metadata accessor for Proto_Gpsd_SetConfigRfBandEnable);
  sub_1000059A8(v954, &qword_10042BF00, &qword_100393FC0);
  sub_1002F7CB8(v649, type metadata accessor for Proto_Gpsd_SetConfigRfBandEnable);
  sub_1000059A8(v646, &qword_10042BF00, &qword_100393FC0);
  if ((v650 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_225:
  v651 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRavenOrbitFile;
  v652 = v1135;
  swift_beginAccess();
  v653 = v961;
  sub_10000A0A4(v652 + v651, v961, &qword_10042BF08, &qword_100393FC8);
  v654 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__injectRavenOrbitFile;
  v655 = v1136;
  swift_beginAccess();
  v656 = *(v960 + 48);
  v657 = v653;
  v658 = v966;
  sub_10000A0A4(v657, v966, &qword_10042BF08, &qword_100393FC8);
  sub_10000A0A4(v655 + v654, v658 + v656, &qword_10042BF08, &qword_100393FC8);
  v659 = *(v963 + 48);
  if (v659(v658, 1, v964) == 1)
  {
    sub_1000059A8(v961, &qword_10042BF08, &qword_100393FC8);
    if (v659(v966 + v656, 1, v964) == 1)
    {
      sub_1000059A8(v966, &qword_10042BF08, &qword_100393FC8);
      goto LABEL_232;
    }

    goto LABEL_230;
  }

  v660 = v966;
  sub_10000A0A4(v966, v962, &qword_10042BF08, &qword_100393FC8);
  if (v659(v660 + v656, 1, v964) == 1)
  {
    sub_1000059A8(v961, &qword_10042BF08, &qword_100393FC8);
    sub_1002F7CB8(v962, type metadata accessor for Proto_Gpsd_InjectRavenOrbitFile);
LABEL_230:
    v359 = &qword_10042EDC0;
    v360 = &qword_100398BD8;
    v361 = v966;
    goto LABEL_238;
  }

  v661 = v966;
  v662 = v966 + v656;
  v663 = v965;
  sub_1002F7BE8(v662, v965, type metadata accessor for Proto_Gpsd_InjectRavenOrbitFile);
  v664 = v962;
  v665 = sub_1002F9CA4(v962, v663, type metadata accessor for Proto_Gpsd_InjectRavenOrbitFile);
  sub_1002F7CB8(v663, type metadata accessor for Proto_Gpsd_InjectRavenOrbitFile);
  sub_1000059A8(v961, &qword_10042BF08, &qword_100393FC8);
  sub_1002F7CB8(v664, type metadata accessor for Proto_Gpsd_InjectRavenOrbitFile);
  sub_1000059A8(v661, &qword_10042BF08, &qword_100393FC8);
  if ((v665 & 1) == 0)
  {
LABEL_79:

    return 0;
  }

LABEL_232:
  v666 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__emergConfig;
  v667 = v1135;
  swift_beginAccess();
  v668 = v968;
  sub_10000A0A4(v667 + v666, v968, &qword_10042BF10, &qword_100393FD0);
  v669 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__emergConfig;
  v670 = v1136;
  swift_beginAccess();
  v671 = *(v967 + 48);
  v672 = v668;
  v673 = v973;
  sub_10000A0A4(v672, v973, &qword_10042BF10, &qword_100393FD0);
  sub_10000A0A4(v670 + v669, v673 + v671, &qword_10042BF10, &qword_100393FD0);
  v674 = *(v969 + 48);
  if (v674(v673, 1, v972) == 1)
  {
    sub_1000059A8(v968, &qword_10042BF10, &qword_100393FD0);
    if (v674(v973 + v671, 1, v972) == 1)
    {
      sub_1000059A8(v973, &qword_10042BF10, &qword_100393FD0);
      goto LABEL_241;
    }

    goto LABEL_237;
  }

  v675 = v973;
  sub_10000A0A4(v973, v970, &qword_10042BF10, &qword_100393FD0);
  if (v674(v675 + v671, 1, v972) == 1)
  {
    sub_1000059A8(v968, &qword_10042BF10, &qword_100393FD0);
    sub_1002F7CB8(v970, type metadata accessor for Proto_Gnss_Emergency_EmergConfig);
LABEL_237:
    v359 = &qword_10042EDB8;
    v360 = &qword_100398BD0;
    v361 = v973;
    goto LABEL_238;
  }

  v676 = v973;
  v677 = v973 + v671;
  v678 = v971;
  sub_1002F7BE8(v677, v971, type metadata accessor for Proto_Gnss_Emergency_EmergConfig);
  sub_1002FB284(&qword_1004251E0, type metadata accessor for Proto_Gnss_Emergency_EmergConfig, &unk_10038DEB8);
  v679 = v970;
  v680 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_1002F7CB8(v678, type metadata accessor for Proto_Gnss_Emergency_EmergConfig);
  sub_1000059A8(v968, &qword_10042BF10, &qword_100393FD0);
  sub_1002F7CB8(v679, type metadata accessor for Proto_Gnss_Emergency_EmergConfig);
  sub_1000059A8(v676, &qword_10042BF10, &qword_100393FD0);
  if ((v680 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_241:
  v681 = (v1135 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gemProtocolRequest);
  swift_beginAccess();
  v683 = *v681;
  v682 = v681[1];
  v684 = (v1136 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gemProtocolRequest);
  swift_beginAccess();
  v685 = *v684;
  v686 = v684[1];
  sub_10000BE4C(v683, v682);
  sub_10000BE4C(v685, v686);
  if (v682 >> 60 == 15)
  {
    if (v686 >> 60 == 15)
    {
      sub_10000CA64(v683, v682);
      goto LABEL_249;
    }

LABEL_247:
    sub_10000CA64(v683, v682);
    sub_10000CA64(v685, v686);
    return 0;
  }

  sub_10000BE4C(v683, v682);
  sub_10000BE4C(v685, v686);
  if (v686 >> 60 == 15)
  {

    sub_10000CA64(v685, v686);
    sub_10000CA64(v683, v682);
    goto LABEL_247;
  }

  v687 = sub_10009F948(v683, v682, v685, v686);
  sub_10000CA64(v685, v686);
  sub_10000CA64(v683, v682);
  sub_10000CA64(v685, v686);
  sub_10000CA64(v683, v682);
  if (!v687)
  {
    goto LABEL_79;
  }

LABEL_249:
  v688 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__positionRequest;
  v689 = v1135;
  swift_beginAccess();
  v690 = v975;
  sub_10000A0A4(v689 + v688, v975, &qword_10042BF18, &qword_100393FD8);
  v691 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__positionRequest;
  v692 = v1136;
  swift_beginAccess();
  v693 = *(v974 + 48);
  v694 = v690;
  v695 = v980;
  sub_10000A0A4(v694, v980, &qword_10042BF18, &qword_100393FD8);
  sub_10000A0A4(v692 + v691, v695 + v693, &qword_10042BF18, &qword_100393FD8);
  v696 = *(v976 + 48);
  if (v696(v695, 1, v979) == 1)
  {
    sub_1000059A8(v975, &qword_10042BF18, &qword_100393FD8);
    if (v696(v980 + v693, 1, v979) == 1)
    {
      sub_1000059A8(v980, &qword_10042BF18, &qword_100393FD8);
      goto LABEL_256;
    }

    goto LABEL_254;
  }

  v697 = v980;
  sub_10000A0A4(v980, v977, &qword_10042BF18, &qword_100393FD8);
  if (v696(v697 + v693, 1, v979) == 1)
  {
    sub_1000059A8(v975, &qword_10042BF18, &qword_100393FD8);
    sub_1002F7CB8(v977, type metadata accessor for Proto_Gnss_Emergency_PositionRequest);
LABEL_254:
    v359 = &qword_10042EDB0;
    v360 = &qword_100398BC8;
    v361 = v980;
    goto LABEL_238;
  }

  v698 = v980;
  v699 = v980 + v693;
  v700 = v978;
  sub_1002F7BE8(v699, v978, type metadata accessor for Proto_Gnss_Emergency_PositionRequest);
  sub_1002FB284(&qword_100424C60, type metadata accessor for Proto_Gnss_Emergency_PositionRequest, &unk_1003888F0);
  v701 = v977;
  v702 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_1002F7CB8(v700, type metadata accessor for Proto_Gnss_Emergency_PositionRequest);
  sub_1000059A8(v975, &qword_10042BF18, &qword_100393FD8);
  sub_1002F7CB8(v701, type metadata accessor for Proto_Gnss_Emergency_PositionRequest);
  sub_1000059A8(v698, &qword_10042BF18, &qword_100393FD8);
  if ((v702 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_256:
  v703 = (v1135 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__sessionID);
  swift_beginAccess();
  v704 = *v703;
  v705 = *(v703 + 4);
  v706 = v1136 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__sessionID;
  swift_beginAccess();
  if (v705)
  {
    if ((*(v706 + 4) & 1) == 0)
    {
      goto LABEL_79;
    }
  }

  else if ((*(v706 + 4) & 1) != 0 || v704 != *v706)
  {
    goto LABEL_79;
  }

  v707 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsReferenceTime;
  v708 = v1135;
  swift_beginAccess();
  v709 = v982;
  sub_10000A0A4(v708 + v707, v982, &qword_10042BF20, &qword_100393FE0);
  v710 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsReferenceTime;
  v711 = v1136;
  swift_beginAccess();
  v712 = *(v981 + 48);
  v713 = v709;
  v714 = v987;
  sub_10000A0A4(v713, v987, &qword_10042BF20, &qword_100393FE0);
  sub_10000A0A4(v711 + v710, v714 + v712, &qword_10042BF20, &qword_100393FE0);
  v715 = *(v983 + 48);
  if (v715(v714, 1, v986) == 1)
  {
    sub_1000059A8(v982, &qword_10042BF20, &qword_100393FE0);
    if (v715(v987 + v712, 1, v986) == 1)
    {
      sub_1000059A8(v987, &qword_10042BF20, &qword_100393FE0);
      goto LABEL_268;
    }

    goto LABEL_266;
  }

  v716 = v987;
  sub_10000A0A4(v987, v984, &qword_10042BF20, &qword_100393FE0);
  if (v715(v716 + v712, 1, v986) == 1)
  {
    sub_1000059A8(v982, &qword_10042BF20, &qword_100393FE0);
    sub_1002F7CB8(v984, type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime);
LABEL_266:
    v359 = &qword_10042EDA8;
    v360 = &qword_100398BC0;
    v361 = v987;
    goto LABEL_238;
  }

  v717 = v987;
  v718 = v987 + v712;
  v719 = v985;
  sub_1002F7BE8(v718, v985, type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime);
  sub_1002FB284(&qword_100425158, type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime, &unk_10038D648);
  v720 = v984;
  v721 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_1002F7CB8(v719, type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime);
  sub_1000059A8(v982, &qword_10042BF20, &qword_100393FE0);
  sub_1002F7CB8(v720, type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime);
  sub_1000059A8(v717, &qword_10042BF20, &qword_100393FE0);
  if ((v721 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_268:
  v722 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__referenceLocation;
  v723 = v1135;
  swift_beginAccess();
  v724 = v989;
  sub_10000A0A4(v723 + v722, v989, &qword_10042BF28, &qword_100393FE8);
  v725 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__referenceLocation;
  v726 = v1136;
  swift_beginAccess();
  v727 = *(v988 + 48);
  v728 = v724;
  v729 = v994;
  sub_10000A0A4(v728, v994, &qword_10042BF28, &qword_100393FE8);
  sub_10000A0A4(v726 + v725, v729 + v727, &qword_10042BF28, &qword_100393FE8);
  v730 = *(v990 + 48);
  if (v730(v729, 1, v993) == 1)
  {
    sub_1000059A8(v989, &qword_10042BF28, &qword_100393FE8);
    if (v730(v994 + v727, 1, v993) == 1)
    {
      sub_1000059A8(v994, &qword_10042BF28, &qword_100393FE8);
      goto LABEL_275;
    }

    goto LABEL_273;
  }

  v731 = v994;
  sub_10000A0A4(v994, v991, &qword_10042BF28, &qword_100393FE8);
  if (v730(v731 + v727, 1, v993) == 1)
  {
    sub_1000059A8(v989, &qword_10042BF28, &qword_100393FE8);
    sub_1002F7CB8(v991, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation);
LABEL_273:
    v359 = &qword_10042EDA0;
    v360 = &qword_100398BB8;
    v361 = v994;
    goto LABEL_238;
  }

  v732 = v994;
  v733 = v994 + v727;
  v734 = v992;
  sub_1002F7BE8(v733, v992, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation);
  sub_1002FB284(&qword_100425170, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation, &unk_10038D7B0);
  v735 = v991;
  v736 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_1002F7CB8(v734, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation);
  sub_1000059A8(v989, &qword_10042BF28, &qword_100393FE8);
  sub_1002F7CB8(v735, type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation);
  sub_1000059A8(v732, &qword_10042BF28, &qword_100393FE8);
  if ((v736 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_275:
  v737 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsNavigationModel;
  v738 = v1135;
  swift_beginAccess();
  v739 = v996;
  sub_10000A0A4(v738 + v737, v996, &qword_10042BF30, &qword_100393FF0);
  v740 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsNavigationModel;
  v741 = v1136;
  swift_beginAccess();
  v742 = *(v995 + 48);
  v743 = v739;
  v744 = v1001;
  sub_10000A0A4(v743, v1001, &qword_10042BF30, &qword_100393FF0);
  sub_10000A0A4(v741 + v740, v744 + v742, &qword_10042BF30, &qword_100393FF0);
  v745 = *(v997 + 48);
  if (v745(v744, 1, v1000) == 1)
  {
    sub_1000059A8(v996, &qword_10042BF30, &qword_100393FF0);
    if (v745(v1001 + v742, 1, v1000) == 1)
    {
      sub_1000059A8(v1001, &qword_10042BF30, &qword_100393FF0);
      goto LABEL_282;
    }

    goto LABEL_280;
  }

  v746 = v1001;
  sub_10000A0A4(v1001, v998, &qword_10042BF30, &qword_100393FF0);
  if (v745(v746 + v742, 1, v1000) == 1)
  {
    sub_1000059A8(v996, &qword_10042BF30, &qword_100393FF0);
    sub_1002F7CB8(v998, type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel);
LABEL_280:
    v359 = &qword_10042ED98;
    v360 = &qword_100398BB0;
    v361 = v1001;
    goto LABEL_238;
  }

  v747 = v1001;
  v748 = v1001 + v742;
  v749 = v999;
  sub_1002F7BE8(v748, v999, type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel);
  sub_1002FB284(&qword_100425198, type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel, &unk_10038DA80);
  v750 = v998;
  v751 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_1002F7CB8(v749, type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel);
  sub_1000059A8(v996, &qword_10042BF30, &qword_100393FF0);
  sub_1002F7CB8(v750, type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel);
  sub_1000059A8(v747, &qword_10042BF30, &qword_100393FF0);
  if ((v751 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_282:
  v752 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsAcqAssistance;
  v753 = v1135;
  swift_beginAccess();
  v754 = v1003;
  sub_10000A0A4(v753 + v752, v1003, &qword_10042BF38, &qword_100393FF8);
  v755 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gpsAcqAssistance;
  v756 = v1136;
  swift_beginAccess();
  v757 = *(v1002 + 48);
  v758 = v754;
  v759 = v1008;
  sub_10000A0A4(v758, v1008, &qword_10042BF38, &qword_100393FF8);
  sub_10000A0A4(v756 + v755, v759 + v757, &qword_10042BF38, &qword_100393FF8);
  v760 = *(v1004 + 48);
  if (v760(v759, 1, v1007) == 1)
  {
    sub_1000059A8(v1003, &qword_10042BF38, &qword_100393FF8);
    if (v760(v1008 + v757, 1, v1007) == 1)
    {
      sub_1000059A8(v1008, &qword_10042BF38, &qword_100393FF8);
      goto LABEL_289;
    }

    goto LABEL_287;
  }

  v761 = v1008;
  sub_10000A0A4(v1008, v1005, &qword_10042BF38, &qword_100393FF8);
  if (v760(v761 + v757, 1, v1007) == 1)
  {
    sub_1000059A8(v1003, &qword_10042BF38, &qword_100393FF8);
    sub_1002F7CB8(v1005, type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance);
LABEL_287:
    v359 = &qword_10042ED90;
    v360 = &qword_100398BA8;
    v361 = v1008;
    goto LABEL_238;
  }

  v762 = v1008;
  v763 = v1008 + v757;
  v764 = v1006;
  sub_1002F7BE8(v763, v1006, type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance);
  sub_1002FB284(&qword_100425208, type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance, &unk_10038E188);
  v765 = v1005;
  v766 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_1002F7CB8(v764, type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance);
  sub_1000059A8(v1003, &qword_10042BF38, &qword_100393FF8);
  sub_1002F7CB8(v765, type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance);
  sub_1000059A8(v762, &qword_10042BF38, &qword_100393FF8);
  if ((v766 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_289:
  v767 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cellFtAssistance;
  v768 = v1135;
  swift_beginAccess();
  v769 = v1010;
  sub_10000A0A4(v768 + v767, v1010, &qword_10042BF40, &qword_100394000);
  v770 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cellFtAssistance;
  v771 = v1136;
  swift_beginAccess();
  v772 = *(v1009 + 48);
  v773 = v769;
  v774 = v1015;
  sub_10000A0A4(v773, v1015, &qword_10042BF40, &qword_100394000);
  sub_10000A0A4(v771 + v770, v774 + v772, &qword_10042BF40, &qword_100394000);
  v775 = *(v1011 + 48);
  if (v775(v774, 1, v1014) == 1)
  {
    sub_1000059A8(v1010, &qword_10042BF40, &qword_100394000);
    if (v775(v1015 + v772, 1, v1014) == 1)
    {
      sub_1000059A8(v1015, &qword_10042BF40, &qword_100394000);
      goto LABEL_296;
    }

    goto LABEL_294;
  }

  v776 = v1015;
  sub_10000A0A4(v1015, v1012, &qword_10042BF40, &qword_100394000);
  if (v775(v776 + v772, 1, v1014) == 1)
  {
    sub_1000059A8(v1010, &qword_10042BF40, &qword_100394000);
    sub_1002F7CB8(v1012, type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance);
LABEL_294:
    v359 = &qword_10042ED88;
    v360 = &qword_100398BA0;
    v361 = v1015;
    goto LABEL_238;
  }

  v777 = v1015;
  v778 = v1015 + v772;
  v779 = v1013;
  sub_1002F7BE8(v778, v1013, type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance);
  sub_1002FB284(&qword_100425238, type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance, &unk_10038E458);
  v780 = v1012;
  v781 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_1002F7CB8(v779, type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance);
  sub_1000059A8(v1010, &qword_10042BF40, &qword_100394000);
  sub_1002F7CB8(v780, type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance);
  sub_1000059A8(v777, &qword_10042BF40, &qword_100394000);
  if ((v781 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_296:
  v782 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cplaneContext;
  v783 = v1135;
  swift_beginAccess();
  v784 = v1017;
  sub_10000A0A4(v783 + v782, v1017, &qword_10042BF48, &qword_100394008);
  v785 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cplaneContext;
  v786 = v1136;
  swift_beginAccess();
  v787 = *(v1016 + 48);
  v788 = v784;
  v789 = v1022;
  sub_10000A0A4(v788, v1022, &qword_10042BF48, &qword_100394008);
  sub_10000A0A4(v786 + v785, v789 + v787, &qword_10042BF48, &qword_100394008);
  v790 = *(v1018 + 48);
  if (v790(v789, 1, v1021) == 1)
  {
    sub_1000059A8(v1017, &qword_10042BF48, &qword_100394008);
    if (v790(v1022 + v787, 1, v1021) == 1)
    {
      sub_1000059A8(v1022, &qword_10042BF48, &qword_100394008);
      goto LABEL_303;
    }

    goto LABEL_301;
  }

  v791 = v1022;
  sub_10000A0A4(v1022, v1019, &qword_10042BF48, &qword_100394008);
  if (v790(v791 + v787, 1, v1021) == 1)
  {
    sub_1000059A8(v1017, &qword_10042BF48, &qword_100394008);
    sub_1002F7CB8(v1019, type metadata accessor for Proto_Gnss_Emergency_CplaneContext);
LABEL_301:
    v359 = &qword_10042ED80;
    v360 = &qword_100398B98;
    v361 = v1022;
    goto LABEL_238;
  }

  v792 = v1022;
  v793 = v1022 + v787;
  v794 = v1020;
  sub_1002F7BE8(v793, v1020, type metadata accessor for Proto_Gnss_Emergency_CplaneContext);
  sub_1002FB284(&qword_1004251C8, type metadata accessor for Proto_Gnss_Emergency_CplaneContext, &unk_10038DD50);
  v795 = v1019;
  v796 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_1002F7CB8(v794, type metadata accessor for Proto_Gnss_Emergency_CplaneContext);
  sub_1000059A8(v1017, &qword_10042BF48, &qword_100394008);
  sub_1002F7CB8(v795, type metadata accessor for Proto_Gnss_Emergency_CplaneContext);
  sub_1000059A8(v792, &qword_10042BF48, &qword_100394008);
  if ((v796 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_303:
  v797 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplInitVec;
  v798 = v1135;
  swift_beginAccess();
  v799 = *(v798 + v797);
  v800 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplInitVec;
  v801 = v1136;
  swift_beginAccess();
  if ((sub_100033210(v799, *(v801 + v800)) & 1) == 0)
  {
    goto LABEL_79;
  }

  v802 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__locationID;
  v803 = v1135;
  swift_beginAccess();
  v804 = v1024;
  sub_10000A0A4(v803 + v802, v1024, &qword_10042BF50, &qword_100394010);
  v805 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__locationID;
  v806 = v1136;
  swift_beginAccess();
  v807 = *(v1023 + 48);
  v808 = v804;
  v809 = v1029;
  sub_10000A0A4(v808, v1029, &qword_10042BF50, &qword_100394010);
  sub_10000A0A4(v806 + v805, v809 + v807, &qword_10042BF50, &qword_100394010);
  v810 = *(v1025 + 48);
  if (v810(v809, 1, v1028) == 1)
  {
    sub_1000059A8(v1024, &qword_10042BF50, &qword_100394010);
    if (v810(v1029 + v807, 1, v1028) == 1)
    {
      sub_1000059A8(v1029, &qword_10042BF50, &qword_100394010);
      goto LABEL_311;
    }

    goto LABEL_309;
  }

  v811 = v1029;
  sub_10000A0A4(v1029, v1026, &qword_10042BF50, &qword_100394010);
  if (v810(v811 + v807, 1, v1028) == 1)
  {
    sub_1000059A8(v1024, &qword_10042BF50, &qword_100394010);
    sub_1002F7CB8(v1026, type metadata accessor for Proto_Gnss_Emergency_LocationId);
LABEL_309:
    v359 = &qword_10042ED78;
    v360 = &qword_100398B90;
    v361 = v1029;
    goto LABEL_238;
  }

  v812 = v1029;
  v813 = v1029 + v807;
  v814 = v1027;
  sub_1002F7BE8(v813, v1027, type metadata accessor for Proto_Gnss_Emergency_LocationId);
  sub_1002FB284(&qword_100424B00, type metadata accessor for Proto_Gnss_Emergency_LocationId, &unk_1003873D8);
  v815 = v1026;
  v816 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_1002F7CB8(v814, type metadata accessor for Proto_Gnss_Emergency_LocationId);
  sub_1000059A8(v1024, &qword_10042BF50, &qword_100394010);
  sub_1002F7CB8(v815, type metadata accessor for Proto_Gnss_Emergency_LocationId);
  sub_1000059A8(v812, &qword_10042BF50, &qword_100394010);
  if ((v816 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_311:
  v817 = (v1135 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplInitIndex);
  swift_beginAccess();
  v818 = *v817;
  v819 = *(v817 + 4);
  v820 = v1136 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplInitIndex;
  swift_beginAccess();
  if (v819)
  {
    if ((*(v820 + 4) & 1) == 0)
    {
      goto LABEL_79;
    }
  }

  else if ((*(v820 + 4) & 1) != 0 || v818 != *v820)
  {
    goto LABEL_79;
  }

  v821 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplCert;
  v822 = v1135;
  swift_beginAccess();
  v823 = *(v822 + v821);
  v824 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplCert;
  v825 = v1136;
  swift_beginAccess();
  if ((sub_100033210(v823, *(v825 + v824)) & 1) == 0)
  {
    goto LABEL_79;
  }

  v826 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__servingCellLte;
  v827 = v1135;
  swift_beginAccess();
  v828 = *(v827 + v826);
  v829 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__servingCellLte;
  v830 = v1136;
  swift_beginAccess();
  v831 = *(v830 + v829);
  if (v828 == 2)
  {
    if (v831 != 2)
    {
      goto LABEL_79;
    }
  }

  else if (v831 == 2 || ((v828 ^ v831) & 1) != 0)
  {
    goto LABEL_79;
  }

  v832 = (v1135 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__simInstance);
  swift_beginAccess();
  v833 = *v832;
  v834 = *(v832 + 4);
  v835 = v1136 + OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__simInstance;
  swift_beginAccess();
  if (v834)
  {
    if ((*(v835 + 4) & 1) == 0)
    {
      goto LABEL_79;
    }
  }

  else if ((*(v835 + 4) & 1) != 0 || v833 != *v835)
  {
    goto LABEL_79;
  }

  v836 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplContext;
  v837 = v1135;
  swift_beginAccess();
  v838 = v1031;
  sub_10000A0A4(v837 + v836, v1031, &qword_10042BF58, &qword_100394018);
  v839 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplContext;
  v840 = v1136;
  swift_beginAccess();
  v841 = *(v1030 + 48);
  v842 = v838;
  v843 = v1036;
  sub_10000A0A4(v842, v1036, &qword_10042BF58, &qword_100394018);
  sub_10000A0A4(v840 + v839, v843 + v841, &qword_10042BF58, &qword_100394018);
  v844 = *(v1032 + 48);
  if (v844(v843, 1, v1035) == 1)
  {
    sub_1000059A8(v1031, &qword_10042BF58, &qword_100394018);
    if (v844(v1036 + v841, 1, v1035) == 1)
    {
      sub_1000059A8(v1036, &qword_10042BF58, &qword_100394018);
      goto LABEL_334;
    }

    goto LABEL_332;
  }

  v845 = v1036;
  sub_10000A0A4(v1036, v1033, &qword_10042BF58, &qword_100394018);
  if (v844(v845 + v841, 1, v1035) == 1)
  {
    sub_1000059A8(v1031, &qword_10042BF58, &qword_100394018);
    sub_1002F7CB8(v1033, type metadata accessor for Proto_Gnss_Emergency_SuplContext);
LABEL_332:
    v359 = &qword_10042ED70;
    v360 = &qword_100398B88;
    v361 = v1036;
    goto LABEL_238;
  }

  v846 = v1036;
  v847 = v1036 + v841;
  v848 = v1034;
  sub_1002F7BE8(v847, v1034, type metadata accessor for Proto_Gnss_Emergency_SuplContext);
  sub_1002FB284(&qword_100424BD0, type metadata accessor for Proto_Gnss_Emergency_SuplContext, &unk_100388080);
  v849 = v1033;
  v850 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_1002F7CB8(v848, type metadata accessor for Proto_Gnss_Emergency_SuplContext);
  sub_1000059A8(v1031, &qword_10042BF58, &qword_100394018);
  sub_1002F7CB8(v849, type metadata accessor for Proto_Gnss_Emergency_SuplContext);
  sub_1000059A8(v846, &qword_10042BF58, &qword_100394018);
  if ((v850 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_334:
  v851 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__wlanMeasurementList;
  v852 = v1135;
  swift_beginAccess();
  v853 = v1039;
  sub_10000A0A4(v852 + v851, v1039, &qword_10042BF60, &qword_100394020);
  v854 = OBJC_IVAR____TtCV10ALProtobuf18Proto_Gpsd_RequestP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__wlanMeasurementList;
  v855 = v1136;
  swift_beginAccess();
  v856 = *(v1037 + 48);
  v857 = v853;
  v858 = v1043;
  sub_10000A0A4(v857, v1043, &qword_10042BF60, &qword_100394020);
  sub_10000A0A4(v855 + v854, v858 + v856, &qword_10042BF60, &qword_100394020);
  v859 = *(v1038 + 48);
  if (v859(v858, 1, v1042) != 1)
  {
    v860 = v1043;
    sub_10000A0A4(v1043, v1040, &qword_10042BF60, &qword_100394020);
    if (v859(v860 + v856, 1, v1042) == 1)
    {

      sub_1000059A8(v1039, &qword_10042BF60, &qword_100394020);
      sub_1002F7CB8(v1040, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList);
      goto LABEL_339;
    }

    v861 = v1043;
    v862 = v1043 + v856;
    v863 = v1041;
    sub_1002F7BE8(v862, v1041, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList);
    sub_1002FB284(&qword_100424B40, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList, &unk_100387810);
    v864 = v1040;
    v865 = dispatch thunk of static Equatable.== infix(_:_:)();

    sub_1002F7CB8(v863, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList);
    sub_1000059A8(v1039, &qword_10042BF60, &qword_100394020);
    sub_1002F7CB8(v864, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList);
    sub_1000059A8(v861, &qword_10042BF60, &qword_100394020);
    return (v865 & 1) != 0;
  }

  sub_1000059A8(v1039, &qword_10042BF60, &qword_100394020);
  if (v859(v1043 + v856, 1, v1042) != 1)
  {
LABEL_339:
    sub_1000059A8(v1043, &qword_10042ED68, &qword_100398B80);
    return 0;
  }

  sub_1000059A8(v1043, &qword_10042BF60, &qword_100394020);
  return 1;
}

uint64_t sub_1002D6794(uint64_t a1, uint64_t a2)
{
  v4 = sub_1002FB284(&qword_10042ED38, type metadata accessor for Proto_Gpsd_Request, &unk_1003947B8);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1002D6834(uint64_t a1)
{
  v2 = sub_1002FB284(&qword_100418C50, type metadata accessor for Proto_Gpsd_Request, &unk_100394740);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1002D68A0(uint64_t a1, uint64_t a2)
{
  sub_1002FB284(&qword_100418C50, type metadata accessor for Proto_Gpsd_Request, &unk_100394740);

  return Message.hash(into:)();
}

uint64_t sub_1002D691C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434E10);
  sub_100005DF0(v0, qword_100434E10);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v128 = swift_allocObject();
  *(v128 + 16) = xmmword_100393ED0;
  v4 = v128 + v3;
  v5 = v128 + v3 + v1[14];
  *(v128 + v3) = 0;
  *v5 = "PROTOBUF_DEFAULT";
  *(v5 + 8) = 16;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v128 + v3 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "START";
  *(v9 + 8) = 5;
  *(v9 + 16) = 2;
  v8();
  v10 = (v128 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "STOP";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v8();
  v12 = (v128 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "RESET";
  *(v13 + 1) = 5;
  v13[16] = 2;
  v8();
  v14 = (v128 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "CLEAR";
  *(v15 + 1) = 5;
  v15[16] = 2;
  v8();
  v16 = (v128 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "DELETE_GNSS_DATA";
  *(v17 + 1) = 16;
  v17[16] = 2;
  v8();
  v18 = (v128 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "SET_PVTM_REPORT";
  *(v19 + 1) = 15;
  v19[16] = 2;
  v8();
  v20 = (v128 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "SET_NMEA_HANDLER";
  *(v21 + 1) = 16;
  v21[16] = 2;
  v8();
  v22 = v128 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "INJECT_ASSISTANCE_POSITION";
  *(v22 + 8) = 26;
  *(v22 + 16) = 2;
  v8();
  v23 = (v128 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "INJECT_ASSISTANCE_TIME";
  *(v24 + 1) = 22;
  v24[16] = 2;
  v8();
  v25 = (v128 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "INJECT_ASSISTANCE_FILE";
  *(v26 + 1) = 22;
  v26[16] = 2;
  v8();
  v27 = (v128 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "INJECT_RTI_FILE";
  *(v28 + 1) = 15;
  v28[16] = 2;
  v8();
  v29 = (v128 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "INJECT_SVID_BLOCKLIST";
  *(v30 + 1) = 21;
  v30[16] = 2;
  v8();
  v31 = (v128 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "SET_ASSISTANCE_PRESSURE";
  *(v32 + 1) = 23;
  v32[16] = 2;
  v8();
  v33 = (v128 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "SET_ASSISTANCE_ACCEL";
  *(v34 + 1) = 20;
  v34[16] = 2;
  v8();
  v35 = (v128 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "SET_ASSISTANCE_GYRO";
  *(v36 + 1) = 19;
  v36[16] = 2;
  v8();
  v37 = v128 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 16;
  *v37 = "SET_ASSISTANCE_DEM";
  *(v37 + 8) = 18;
  *(v37 + 16) = 2;
  v8();
  v38 = (v128 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 17;
  *v39 = "SET_ASSISTANCE_MAP_VECTOR";
  *(v39 + 1) = 25;
  v39[16] = 2;
  v8();
  v40 = (v128 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 18;
  *v41 = "SET_ASSISTANCE_MOTION_ACTIVITY_CONTEXT";
  *(v41 + 1) = 38;
  v41[16] = 2;
  v8();
  v42 = (v128 + v3 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 19;
  *v43 = "SET_ASSISTANCE_MOUNT_STATE";
  *(v43 + 1) = 26;
  v43[16] = 2;
  v8();
  v44 = (v128 + v3 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 20;
  *v45 = "SET_ASSISTANCE_SIGNAL_ENVIRONMENT";
  *(v45 + 1) = 33;
  v45[16] = 2;
  v8();
  v46 = (v128 + v3 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 21;
  *v47 = "SET_ASSISTANCE_SPEED_CONSTRAINT";
  *(v47 + 1) = 31;
  v47[16] = 2;
  v8();
  v48 = (v128 + v3 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 22;
  *v49 = "SET_ASSISTANCE_ALONG_TRACK_VELOCITY";
  *(v49 + 1) = 35;
  v49[16] = 2;
  v8();
  v50 = (v128 + v3 + 23 * v2);
  v51 = v50 + v1[14];
  *v50 = 23;
  *v51 = "SET_POWER_REPORT";
  *(v51 + 1) = 16;
  v51[16] = 2;
  v8();
  v52 = (v128 + v3 + 24 * v2);
  v53 = v52 + v1[14];
  *v52 = 24;
  *v53 = "SET_CONFIG_SIMULATOR_MODE";
  *(v53 + 1) = 25;
  v53[16] = 2;
  v8();
  v54 = (v128 + v3 + 25 * v2);
  v55 = v54 + v1[14];
  *v54 = 25;
  *v55 = "SET_CONFIG_ENABLE_GNSS_CONSTELLATIONS";
  *(v55 + 1) = 37;
  v55[16] = 2;
  v8();
  v56 = (v128 + v3 + 26 * v2);
  v57 = v56 + v1[14];
  *v56 = 26;
  *v57 = "SET_CONFIG_DUTY_CYCLING";
  *(v57 + 1) = 23;
  v57[16] = 2;
  v8();
  v58 = (v128 + v3 + 27 * v2);
  v59 = v58 + v1[14];
  *v58 = 27;
  *v59 = "SET_TIME_TRANSFER_PULSE";
  *(v59 + 1) = 23;
  v59[16] = 2;
  v8();
  v60 = (v128 + v3 + 28 * v2);
  v61 = v60 + v1[14];
  *v60 = 28;
  *v61 = "CLEAN_TIME_TRANSFER_PULSE";
  *(v61 + 1) = 25;
  v61[16] = 2;
  v8();
  v62 = (v128 + v3 + 29 * v2);
  v63 = v62 + v1[14];
  *v62 = 29;
  *v63 = "INJECT_LTL_INFO";
  *(v63 + 1) = 15;
  v63[16] = 2;
  v8();
  v64 = (v128 + v3 + 30 * v2);
  v65 = v64 + v1[14];
  *v64 = 31;
  *v65 = "SET_THERMAL_RISK_STATE";
  *(v65 + 1) = 22;
  v65[16] = 2;
  v8();
  v66 = (v128 + v3 + 31 * v2);
  v67 = v66 + v1[14];
  *v66 = 32;
  *v67 = "PING";
  *(v67 + 1) = 4;
  v67[16] = 2;
  v8();
  v68 = v128 + v3 + 32 * v2 + v1[14];
  *(v4 + 32 * v2) = 34;
  *v68 = "BUILD_DEVICE";
  *(v68 + 8) = 12;
  *(v68 + 16) = 2;
  v8();
  v69 = (v128 + v3 + 33 * v2);
  v70 = v69 + v1[14];
  *v69 = 35;
  *v70 = "TERMINATION_IMMINENT";
  *(v70 + 1) = 20;
  v70[16] = 2;
  v8();
  v71 = (v128 + v3 + 34 * v2);
  v72 = v71 + v1[14];
  *v71 = 36;
  *v72 = "EXIT";
  *(v72 + 1) = 4;
  v72[16] = 2;
  v8();
  v73 = (v128 + v3 + 35 * v2);
  v74 = v73 + v1[14];
  *v73 = 37;
  *v74 = "FORCE_CLEAR_ALL_NV";
  *(v74 + 1) = 18;
  v74[16] = 2;
  v8();
  v75 = (v128 + v3 + 36 * v2);
  v76 = v75 + v1[14];
  *v75 = 38;
  *v76 = "SET_CONFIG_RF_BAND_ENABLE";
  *(v76 + 1) = 25;
  v76[16] = 2;
  v8();
  v77 = (v128 + v3 + 37 * v2);
  v78 = v77 + v1[14];
  *v77 = 39;
  *v78 = "INJECT_RAVEN_ORBIT_FILE";
  *(v78 + 1) = 23;
  v78[16] = 2;
  v8();
  v79 = (v128 + v3 + 38 * v2);
  v80 = v79 + v1[14];
  *v79 = 51;
  *v80 = "START_EMERGENCY_PREEMPTIVE_SESSION";
  *(v80 + 1) = 34;
  v80[16] = 2;
  v8();
  v81 = (v128 + v3 + 39 * v2);
  v82 = v81 + v1[14];
  *v81 = 52;
  *v82 = "STOP_EMERGENCY_PREEMPTIVE_SESSION";
  *(v82 + 1) = 33;
  v82[16] = 2;
  v8();
  v83 = (v128 + v3 + 40 * v2);
  v84 = v83 + v1[14];
  *v83 = 53;
  *v84 = "SET_EMERGENCY_CONFIG";
  *(v84 + 1) = 20;
  v84[16] = 2;
  v8();
  v85 = (v128 + v3 + 41 * v2);
  v86 = v85 + v1[14];
  *v85 = 54;
  *v86 = "SET_EMERGENCY_SESSION_SUMMARY_REPORT";
  *(v86 + 1) = 36;
  v86[16] = 2;
  v8();
  v87 = (v128 + v3 + 42 * v2);
  v88 = v87 + v1[14];
  *v87 = 55;
  *v88 = "ENTER_EMERGENCY_MODE";
  *(v88 + 1) = 20;
  v88[16] = 2;
  v8();
  v89 = (v128 + v3 + 43 * v2);
  v90 = v89 + v1[14];
  *v89 = 56;
  *v90 = "EXIT_EMERGENCY_MODE";
  *(v90 + 1) = 19;
  v90[16] = 2;
  v8();
  v91 = (v128 + v3 + 44 * v2);
  v92 = v91 + v1[14];
  *v91 = 57;
  *v92 = "GEM_PROTOCOL_REQUEST";
  *(v92 + 1) = 20;
  v92[16] = 2;
  v8();
  v93 = (v128 + v3 + 45 * v2);
  v94 = v93 + v1[14];
  *v93 = 60;
  *v94 = "START_EMERGENCY_POSITION";
  *(v94 + 1) = 24;
  v94[16] = 2;
  v8();
  v95 = (v128 + v3 + 46 * v2);
  v96 = v95 + v1[14];
  *v95 = 61;
  *v96 = "STOP_EMERGENCY_POSITION";
  *(v96 + 1) = 23;
  v96[16] = 2;
  v8();
  v97 = (v128 + v3 + 47 * v2);
  v98 = v97 + v1[14];
  *v97 = 62;
  *v98 = "SET_EMERGENCY_POSITION_REPORT";
  *(v98 + 1) = 29;
  v98[16] = 2;
  v8();
  v99 = (v128 + v3 + 48 * v2);
  v100 = v99 + v1[14];
  *v99 = 63;
  *v100 = "SET_EMERGENCY_MEASUREMENT_REPORT";
  *(v100 + 1) = 32;
  v100[16] = 2;
  v8();
  v101 = (v128 + v3 + 49 * v2);
  v102 = v101 + v1[14];
  *v101 = 64;
  *v102 = "SET_NW_ASSISTANCE_NEEDED_REPORT";
  *(v102 + 1) = 31;
  v102[16] = 2;
  v8();
  v103 = (v128 + v3 + 50 * v2);
  v104 = v103 + v1[14];
  *v103 = 65;
  *v104 = "SET_NW_ASSISTANCE_GPS_REF_TIME";
  *(v104 + 1) = 30;
  v104[16] = 2;
  v8();
  v105 = (v128 + v3 + 51 * v2);
  v106 = v105 + v1[14];
  *v105 = 66;
  *v106 = "SET_NW_ASSISTANCE_REF_POSITION";
  *(v106 + 1) = 30;
  v106[16] = 2;
  v8();
  v107 = (v128 + v3 + 52 * v2);
  v108 = v107 + v1[14];
  *v107 = 67;
  *v108 = "SET_NW_ASSISTANCE_GPS_EPHEMERIS";
  *(v108 + 1) = 31;
  v108[16] = 2;
  v8();
  v109 = (v128 + v3 + 53 * v2);
  v110 = v109 + v1[14];
  *v109 = 68;
  *v110 = "SET_NW_ASSISTANCE_GPS_ACQUISITION";
  *(v110 + 1) = 33;
  v110[16] = 2;
  v8();
  v111 = (v128 + v3 + 54 * v2);
  v112 = v111 + v1[14];
  *v111 = 69;
  *v112 = "INJECT_FT_ASSISTANCE";
  *(v112 + 1) = 20;
  v112[16] = 2;
  v8();
  v113 = (v128 + v3 + 55 * v2);
  v114 = v113 + v1[14];
  *v113 = 70;
  *v114 = "DECODE_SUPL_INIT";
  *(v114 + 1) = 16;
  v114[16] = 2;
  v8();
  v115 = (v128 + v3 + 56 * v2);
  v116 = v115 + v1[14];
  *v115 = 71;
  *v116 = "SET_SUPL_INIT";
  *(v116 + 1) = 13;
  v116[16] = 2;
  v8();
  v117 = (v128 + v3 + 57 * v2);
  v118 = v117 + v1[14];
  *v117 = 72;
  *v118 = "SET_SUPL_LOCATIONID_NEEDED_REPORT";
  *(v118 + 1) = 33;
  v118[16] = 2;
  v8();
  v119 = (v128 + v3 + 58 * v2);
  v120 = v119 + v1[14];
  *v119 = 73;
  *v120 = "SET_SUPL_LOCATIONID";
  *(v120 + 1) = 19;
  v120[16] = 2;
  v8();
  v121 = (v128 + v3 + 59 * v2);
  v122 = v121 + v1[14];
  *v121 = 74;
  *v122 = "ABORT_SUPL_SESSION";
  *(v122 + 1) = 18;
  v122[16] = 2;
  v8();
  v123 = (v128 + v3 + 60 * v2);
  v124 = v123 + v1[14];
  *v123 = 75;
  *v124 = "SET_SUPL_SESSION_STATUS_REPORT";
  *(v124 + 1) = 30;
  v124[16] = 2;
  v8();
  v125 = (v128 + v3 + 61 * v2);
  v126 = v125 + v1[14];
  *v125 = 76;
  *v126 = "SET_SUPL_WLAN_MEAS";
  *(v126 + 1) = 18;
  v126[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1002D79E8()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434E28);
  sub_100005DF0(v0, qword_100434E28);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "request_type";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "mach_continuous_time_ns";
  *(v10 + 1) = 23;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "result_code";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1002D7C44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result == 3)
      {
        break;
      }

      if (result == 2)
      {
        type metadata accessor for Proto_Gpsd_Response(0);
        dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
        goto LABEL_5;
      }

      if (result == 1)
      {
        v6 = v3;
        type metadata accessor for Proto_Gpsd_Response(0);
        sub_100303344();
LABEL_12:
        v3 = v6;
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v6 = v3;
    type metadata accessor for Proto_Gpsd_Response(0);
    sub_1000361C0();
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_1002D7D5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for Proto_Gpsd_Response(0);
  v6 = result;
  if (*(v3 + *(result + 20)) == 62)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    sub_100303344();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if ((*(v3 + *(v6 + 24) + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
  }

  if (*(v3 + *(v6 + 28)) != 10)
  {
    sub_1000361C0();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_1002D7EC8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  *(a2 + a1[5]) = 62;
  v6 = a2 + v5;
  *v6 = 0;
  *(v6 + 8) = 1;
  *(a2 + a1[7]) = 10;
  return result;
}

uint64_t sub_1002D7F48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1002FB284(&qword_10042ED30, type metadata accessor for Proto_Gpsd_Response, &unk_100394948);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1002D7FE8(uint64_t a1)
{
  v2 = sub_1002FB284(&qword_100418C00, type metadata accessor for Proto_Gpsd_Response, &unk_1003948D0);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1002D8054(uint64_t a1, uint64_t a2)
{
  sub_1002FB284(&qword_100418C00, type metadata accessor for Proto_Gpsd_Response, &unk_1003948D0);

  return Message.hash(into:)();
}

uint64_t sub_1002D80FC()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100434E40);
  sub_100005DF0(v0, qword_100434E40);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_100393EE0;
  v4 = v63 + v3;
  v5 = v63 + v3 + v1[14];
  *(v63 + v3) = 1;
  *v5 = "type";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v63 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "request_type";
  *(v9 + 8) = 12;
  *(v9 + 16) = 2;
  v8();
  v10 = (v63 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "mach_continuous_time_ns";
  *(v11 + 1) = 23;
  v11[16] = 2;
  v8();
  v12 = (v63 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "fix";
  *(v13 + 1) = 3;
  v13[16] = 2;
  v8();
  v14 = (v63 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "meas";
  *(v15 + 1) = 4;
  v15[16] = 2;
  v8();
  v16 = (v63 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "power_measurement";
  *(v17 + 1) = 17;
  v17[16] = 2;
  v8();
  v18 = (v63 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 9;
  *v19 = "status";
  *(v19 + 1) = 6;
  v19[16] = 2;
  v8();
  v20 = (v63 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 10;
  *v21 = "time_transfer_data_extend";
  *(v21 + 1) = 25;
  v21[16] = 2;
  v8();
  v22 = v63 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 16;
  *v22 = "recovery_statistics";
  *(v22 + 8) = 19;
  *(v22 + 16) = 2;
  v8();
  v23 = (v63 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 17;
  *v24 = "ltl_info_request";
  *(v24 + 1) = 16;
  v24[16] = 2;
  v8();
  v25 = (v63 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 18;
  *v26 = "decoded_extended_ephemeris";
  *(v26 + 1) = 26;
  v26[16] = 2;
  v8();
  v27 = (v63 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 19;
  *v28 = "decoded_rti";
  *(v28 + 1) = 11;
  v28[16] = 2;
  v8();
  v29 = (v63 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 22;
  *v30 = "start_status";
  *(v30 + 1) = 12;
  v30[16] = 2;
  v8();
  v31 = (v63 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 20;
  *v32 = "stop_status";
  *(v32 + 1) = 11;
  v32[16] = 2;
  v8();
  v33 = (v63 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 23;
  *v34 = "exception";
  *(v34 + 1) = 9;
  v34[16] = 2;
  v8();
  v35 = (v63 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 25;
  *v36 = "ask_baseband_reset";
  *(v36 + 1) = 18;
  v36[16] = 2;
  v8();
  v37 = v63 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 30;
  *v37 = "summary_report";
  *(v37 + 8) = 14;
  *(v37 + 16) = 2;
  v8();
  v38 = (v63 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 31;
  *v39 = "gem_protocol_indication";
  *(v39 + 1) = 23;
  v39[16] = 2;
  v8();
  v40 = (v63 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 40;
  *v41 = "position_report";
  *(v41 + 1) = 15;
  v41[16] = 2;
  v8();
  v42 = (v63 + v3 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 41;
  *v43 = "cplane_measurement_report";
  *(v43 + 1) = 25;
  v43[16] = 2;
  v8();
  v44 = (v63 + v3 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 42;
  *v45 = "assistance_needed_report";
  *(v45 + 1) = 24;
  v45[16] = 2;
  v8();
  v46 = (v63 + v3 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 43;
  *v47 = "cell_ft_assistance_request";
  *(v47 + 1) = 26;
  v47[16] = 2;
  v8();
  v48 = (v63 + v3 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 44;
  *v49 = "cplane_measurement_report_with_estimate";
  *(v49 + 1) = 39;
  v49[16] = 2;
  v8();
  v50 = (v63 + v3 + 23 * v2);
  v51 = v50 + v1[14];
  *v50 = 50;
  *v51 = "supl_session_status";
  *(v51 + 1) = 19;
  v51[16] = 2;
  v8();
  v52 = (v63 + v3 + 24 * v2);
  v53 = v52 + v1[14];
  *v52 = 51;
  *v53 = "decoded_supl_init";
  *(v53 + 1) = 17;
  v53[16] = 2;
  v8();
  v54 = (v63 + v3 + 25 * v2);
  v55 = v54 + v1[14];
  *v54 = 52;
  *v55 = "supl_init_index";
  *(v55 + 1) = 15;
  v55[16] = 2;
  v8();
  v56 = (v63 + v3 + 26 * v2);
  v57 = v56 + v1[14];
  *v56 = 53;
  *v57 = "supl_init_decode_result";
  *(v57 + 1) = 23;
  v57[16] = 2;
  v8();
  v58 = (v63 + v3 + 27 * v2);
  v59 = v58 + v1[14];
  *v58 = 54;
  *v59 = "sim_instance";
  *(v59 + 1) = 12;
  v59[16] = 2;
  v8();
  v60 = (v63 + v3 + 28 * v2);
  v61 = v60 + v1[14];
  *v60 = 55;
  *v61 = "wlan_measurement_request";
  *(v61 + 1) = 24;
  v61[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1002D89D4()
{
  type metadata accessor for Proto_Gpsd_Indication._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 15896;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  v1 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__fix;
  v2 = type metadata accessor for Proto_Gnss_Fix(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__meas;
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0);
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__powerMeasurement;
  v6 = type metadata accessor for Proto_Gnss_PwrMeasurement(0);
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__status;
  v8 = type metadata accessor for Proto_Gpsd_Status(0);
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__timeTransferDataExtend;
  v10 = type metadata accessor for Proto_Gnss_TimeTransferDataExtend(0);
  (*(*(v10 - 8) + 56))(v0 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__recoveryStatistics;
  v12 = type metadata accessor for Proto_Gpsd_RecoveryStatistics(0);
  (*(*(v12 - 8) + 56))(v0 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__ltlInfoRequest;
  v14 = type metadata accessor for Proto_Gpsd_LtlInfoRequest(0);
  (*(*(v14 - 8) + 56))(v0 + v13, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__decodedExtendedEphemeris;
  v16 = type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris(0);
  (*(*(v16 - 8) + 56))(v0 + v15, 1, 1, v16);
  v17 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__decodedRti;
  v18 = type metadata accessor for Proto_Gnss_DecodedRti(0);
  (*(*(v18 - 8) + 56))(v0 + v17, 1, 1, v18);
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__startStatus) = 10;
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__stopStatus) = 10;
  v19 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__exception;
  v20 = type metadata accessor for Proto_Gpsd_Exception(0);
  (*(*(v20 - 8) + 56))(v0 + v19, 1, 1, v20);
  v21 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__askBasebandReset;
  v22 = type metadata accessor for Proto_Gpsd_AskBasebandReset(0);
  (*(*(v22 - 8) + 56))(v0 + v21, 1, 1, v22);
  v23 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__summaryReport;
  v24 = type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0);
  (*(*(v24 - 8) + 56))(v0 + v23, 1, 1, v24);
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gemProtocolIndication) = xmmword_10036D770;
  v25 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__positionReport;
  v26 = type metadata accessor for Proto_Gnss_Emergency_PositionReport(0);
  (*(*(v26 - 8) + 56))(v0 + v25, 1, 1, v26);
  v27 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cplaneMeasurementReport;
  v28 = type metadata accessor for Proto_Gnss_Emergency_MeasurementReport(0);
  (*(*(v28 - 8) + 56))(v0 + v27, 1, 1, v28);
  v29 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__assistanceNeededReport;
  v30 = type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport(0);
  (*(*(v30 - 8) + 56))(v0 + v29, 1, 1, v30);
  v31 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cellFtAssistanceRequest;
  v32 = type metadata accessor for Proto_Gnss_Emergency_CellFTAssistanceRequest(0);
  (*(*(v32 - 8) + 56))(v0 + v31, 1, 1, v32);
  v33 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cplaneMeasurementReportWithEstimate;
  v34 = type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate(0);
  (*(*(v34 - 8) + 56))(v0 + v33, 1, 1, v34);
  v35 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplSessionStatus;
  v36 = type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0);
  (*(*(v36 - 8) + 56))(v0 + v35, 1, 1, v36);
  v37 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__decodedSuplInit;
  v38 = type metadata accessor for Proto_Gnss_Emergency_Init(0);
  (*(*(v38 - 8) + 56))(v0 + v37, 1, 1, v38);
  v39 = v0 + OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplInitIndex;
  *v39 = 0;
  *(v39 + 4) = 1;
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplInitDecodeResult) = 4;
  v40 = v0 + OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__simInstance;
  *v40 = 0;
  *(v40 + 4) = 1;
  v41 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__wlanMeasurementRequest;
  v42 = type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementRequest(0);
  result = (*(*(v42 - 8) + 56))(v0 + v41, 1, 1, v42);
  qword_100480E90 = v0;
  return result;
}

uint64_t sub_1002D9034(uint64_t a1)
{
  v3 = sub_100024A2C(&qword_10042C000, &unk_1003940C0);
  __chkstk_darwin(v3 - 8);
  v205 = &v164 - v4;
  v5 = sub_100024A2C(&qword_10042BFF8, &qword_1003940B8);
  __chkstk_darwin(v5 - 8);
  v204 = &v164 - v6;
  v7 = sub_100024A2C(&qword_10042BFF0, &qword_1003940B0);
  __chkstk_darwin(v7 - 8);
  v203 = &v164 - v8;
  v9 = sub_100024A2C(&qword_10042BFE8, &qword_1003940A8);
  __chkstk_darwin(v9 - 8);
  v202 = &v164 - v10;
  v11 = sub_100024A2C(&qword_10042BFE0, &qword_1003940A0);
  __chkstk_darwin(v11 - 8);
  v201 = &v164 - v12;
  v13 = sub_100024A2C(&qword_10042BFD8, &qword_100394098);
  __chkstk_darwin(v13 - 8);
  v200 = &v164 - v14;
  v15 = sub_100024A2C(&qword_10042BFD0, &qword_100394090);
  __chkstk_darwin(v15 - 8);
  v199 = &v164 - v16;
  v17 = sub_100024A2C(&qword_10042BFC8, &qword_100394088);
  __chkstk_darwin(v17 - 8);
  v198 = &v164 - v18;
  v19 = sub_100024A2C(&qword_10042BFC0, &qword_100394080);
  __chkstk_darwin(v19 - 8);
  v197 = &v164 - v20;
  v21 = sub_100024A2C(&qword_10042BFB8, &qword_100394078);
  __chkstk_darwin(v21 - 8);
  v196 = &v164 - v22;
  v23 = sub_100024A2C(&qword_10042BFB0, &qword_100394070);
  __chkstk_darwin(v23 - 8);
  v195 = &v164 - v24;
  v25 = sub_100024A2C(&qword_10042BFA8, &qword_100394068);
  __chkstk_darwin(v25 - 8);
  v194 = &v164 - v26;
  v27 = sub_100024A2C(&qword_10042BFA0, &qword_100394060);
  __chkstk_darwin(v27 - 8);
  v192 = &v164 - v28;
  v29 = sub_100024A2C(&qword_10042BF98, &qword_100394058);
  __chkstk_darwin(v29 - 8);
  v188 = &v164 - v30;
  v31 = sub_100024A2C(&qword_10042BF90, &qword_100394050);
  __chkstk_darwin(v31 - 8);
  v184 = &v164 - v32;
  v33 = sub_100024A2C(&qword_10042BF88, &qword_100394048);
  __chkstk_darwin(v33 - 8);
  v179 = &v164 - v34;
  v35 = sub_100024A2C(&qword_10042BF80, &qword_100394040);
  __chkstk_darwin(v35 - 8);
  v176 = &v164 - v36;
  v37 = sub_100024A2C(&qword_10042BF78, &qword_100394038);
  __chkstk_darwin(v37 - 8);
  v172 = &v164 - v38;
  v39 = sub_100024A2C(&qword_10042BF70, &qword_100394030);
  __chkstk_darwin(v39 - 8);
  v167 = &v164 - v40;
  v41 = sub_100024A2C(&qword_10042BF68, &qword_100394028);
  __chkstk_darwin(v41 - 8);
  v43 = &v164 - v42;
  *(v1 + 16) = 15896;
  *(v1 + 24) = 0;
  *(v1 + 32) = 1;
  v44 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__fix;
  v45 = type metadata accessor for Proto_Gnss_Fix(0);
  (*(*(v45 - 8) + 56))(v1 + v44, 1, 1, v45);
  v46 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__meas;
  v47 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0);
  (*(*(v47 - 8) + 56))(v1 + v46, 1, 1, v47);
  v48 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__powerMeasurement;
  v164 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__powerMeasurement;
  v49 = type metadata accessor for Proto_Gnss_PwrMeasurement(0);
  (*(*(v49 - 8) + 56))(v1 + v48, 1, 1, v49);
  v50 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__status;
  v165 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__status;
  v51 = type metadata accessor for Proto_Gpsd_Status(0);
  (*(*(v51 - 8) + 56))(v1 + v50, 1, 1, v51);
  v52 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__timeTransferDataExtend;
  v166 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__timeTransferDataExtend;
  v53 = type metadata accessor for Proto_Gnss_TimeTransferDataExtend(0);
  (*(*(v53 - 8) + 56))(v1 + v52, 1, 1, v53);
  v54 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__recoveryStatistics;
  v168 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__recoveryStatistics;
  v55 = type metadata accessor for Proto_Gpsd_RecoveryStatistics(0);
  (*(*(v55 - 8) + 56))(v1 + v54, 1, 1, v55);
  v56 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__ltlInfoRequest;
  v169 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__ltlInfoRequest;
  v57 = type metadata accessor for Proto_Gpsd_LtlInfoRequest(0);
  (*(*(v57 - 8) + 56))(v1 + v56, 1, 1, v57);
  v58 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__decodedExtendedEphemeris;
  v170 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__decodedExtendedEphemeris;
  v59 = type metadata accessor for Proto_Gnss_DecodedExtendedEphemeris(0);
  (*(*(v59 - 8) + 56))(v1 + v58, 1, 1, v59);
  v60 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__decodedRti;
  v171 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__decodedRti;
  v61 = type metadata accessor for Proto_Gnss_DecodedRti(0);
  (*(*(v61 - 8) + 56))(v1 + v60, 1, 1, v61);
  v173 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__startStatus;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__startStatus) = 10;
  v62 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__stopStatus;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__stopStatus) = 10;
  v63 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__exception;
  v174 = v62;
  v175 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__exception;
  v64 = type metadata accessor for Proto_Gpsd_Exception(0);
  (*(*(v64 - 8) + 56))(v1 + v63, 1, 1, v64);
  v65 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__askBasebandReset;
  v177 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__askBasebandReset;
  v66 = type metadata accessor for Proto_Gpsd_AskBasebandReset(0);
  (*(*(v66 - 8) + 56))(v1 + v65, 1, 1, v66);
  v67 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__summaryReport;
  v178 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__summaryReport;
  v68 = type metadata accessor for Proto_Gnss_Emergency_SummaryReport(0);
  (*(*(v68 - 8) + 56))(v1 + v67, 1, 1, v68);
  v69 = (v1 + OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gemProtocolIndication);
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gemProtocolIndication) = xmmword_10036D770;
  v70 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__positionReport;
  v180 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__positionReport;
  v71 = type metadata accessor for Proto_Gnss_Emergency_PositionReport(0);
  (*(*(v71 - 8) + 56))(v1 + v70, 1, 1, v71);
  v72 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cplaneMeasurementReport;
  v181 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cplaneMeasurementReport;
  v73 = type metadata accessor for Proto_Gnss_Emergency_MeasurementReport(0);
  (*(*(v73 - 8) + 56))(v1 + v72, 1, 1, v73);
  v74 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__assistanceNeededReport;
  v182 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__assistanceNeededReport;
  v75 = type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport(0);
  (*(*(v75 - 8) + 56))(v1 + v74, 1, 1, v75);
  v76 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cellFtAssistanceRequest;
  v183 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cellFtAssistanceRequest;
  v77 = type metadata accessor for Proto_Gnss_Emergency_CellFTAssistanceRequest(0);
  (*(*(v77 - 8) + 56))(v1 + v76, 1, 1, v77);
  v78 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cplaneMeasurementReportWithEstimate;
  v185 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cplaneMeasurementReportWithEstimate;
  v79 = type metadata accessor for Proto_Gnss_Emergency_MeasurementReportWithEstimate(0);
  (*(*(v79 - 8) + 56))(v1 + v78, 1, 1, v79);
  v80 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplSessionStatus;
  v186 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplSessionStatus;
  v81 = type metadata accessor for Proto_Gnss_Emergency_SessionStatus(0);
  (*(*(v81 - 8) + 56))(v1 + v80, 1, 1, v81);
  v82 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__decodedSuplInit;
  v187 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__decodedSuplInit;
  v83 = type metadata accessor for Proto_Gnss_Emergency_Init(0);
  (*(*(v83 - 8) + 56))(v1 + v82, 1, 1, v83);
  v84 = v1 + OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplInitIndex;
  v189 = v1 + OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplInitIndex;
  *v84 = 0;
  *(v84 + 4) = 1;
  v85 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplInitDecodeResult;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplInitDecodeResult) = 4;
  v86 = v1 + OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__simInstance;
  v190 = v85;
  v191 = v86;
  *v86 = 0;
  *(v86 + 4) = 1;
  v87 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__wlanMeasurementRequest;
  v193 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__wlanMeasurementRequest;
  v88 = type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementRequest(0);
  (*(*(v88 - 8) + 56))(v1 + v87, 1, 1, v88);
  swift_beginAccess();
  LOBYTE(v87) = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v87;
  swift_beginAccess();
  LOBYTE(v87) = *(a1 + 17);
  swift_beginAccess();
  *(v1 + 17) = v87;
  swift_beginAccess();
  v89 = *(a1 + 24);
  v90 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 24) = v89;
  *(v1 + 32) = v90;
  v91 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__fix;
  swift_beginAccess();
  sub_10000A0A4(a1 + v91, v43, &qword_10042BF68, &qword_100394028);
  swift_beginAccess();
  sub_10000AD64(v43, v1 + v44, &qword_10042BF68, &qword_100394028);
  swift_endAccess();
  v92 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__meas;
  swift_beginAccess();
  v93 = v167;
  sub_10000A0A4(a1 + v92, v167, &qword_10042BF70, &qword_100394030);
  swift_beginAccess();
  sub_10000AD64(v93, v1 + v46, &qword_10042BF70, &qword_100394030);
  swift_endAccess();
  v94 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__powerMeasurement;
  swift_beginAccess();
  v95 = v172;
  sub_10000A0A4(a1 + v94, v172, &qword_10042BF78, &qword_100394038);
  v96 = v164;
  swift_beginAccess();
  sub_10000AD64(v95, v1 + v96, &qword_10042BF78, &qword_100394038);
  swift_endAccess();
  v97 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__status;
  swift_beginAccess();
  v98 = v176;
  sub_10000A0A4(a1 + v97, v176, &qword_10042BF80, &qword_100394040);
  v99 = v165;
  swift_beginAccess();
  sub_10000AD64(v98, v1 + v99, &qword_10042BF80, &qword_100394040);
  swift_endAccess();
  v100 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__timeTransferDataExtend;
  swift_beginAccess();
  v101 = v179;
  sub_10000A0A4(a1 + v100, v179, &qword_10042BF88, &qword_100394048);
  v102 = v166;
  swift_beginAccess();
  sub_10000AD64(v101, v1 + v102, &qword_10042BF88, &qword_100394048);
  swift_endAccess();
  v103 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__recoveryStatistics;
  swift_beginAccess();
  v104 = v184;
  sub_10000A0A4(a1 + v103, v184, &qword_10042BF90, &qword_100394050);
  v105 = v168;
  swift_beginAccess();
  sub_10000AD64(v104, v1 + v105, &qword_10042BF90, &qword_100394050);
  swift_endAccess();
  v106 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__ltlInfoRequest;
  swift_beginAccess();
  v107 = v188;
  sub_10000A0A4(a1 + v106, v188, &qword_10042BF98, &qword_100394058);
  v108 = v169;
  swift_beginAccess();
  sub_10000AD64(v107, v1 + v108, &qword_10042BF98, &qword_100394058);
  swift_endAccess();
  v109 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__decodedExtendedEphemeris;
  swift_beginAccess();
  v110 = v192;
  sub_10000A0A4(a1 + v109, v192, &qword_10042BFA0, &qword_100394060);
  v111 = v170;
  swift_beginAccess();
  sub_10000AD64(v110, v1 + v111, &qword_10042BFA0, &qword_100394060);
  swift_endAccess();
  v112 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__decodedRti;
  swift_beginAccess();
  v113 = v194;
  sub_10000A0A4(a1 + v112, v194, &qword_10042BFA8, &qword_100394068);
  v114 = v171;
  swift_beginAccess();
  sub_10000AD64(v113, v1 + v114, &qword_10042BFA8, &qword_100394068);
  swift_endAccess();
  v115 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__startStatus;
  swift_beginAccess();
  LOBYTE(v115) = *(a1 + v115);
  v116 = v173;
  swift_beginAccess();
  *(v1 + v116) = v115;
  v117 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__stopStatus;
  swift_beginAccess();
  LOBYTE(v117) = *(a1 + v117);
  v118 = v174;
  swift_beginAccess();
  *(v1 + v118) = v117;
  v119 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__exception;
  swift_beginAccess();
  v120 = v195;
  sub_10000A0A4(a1 + v119, v195, &qword_10042BFB0, &qword_100394070);
  v121 = v175;
  swift_beginAccess();
  sub_10000AD64(v120, v1 + v121, &qword_10042BFB0, &qword_100394070);
  swift_endAccess();
  v122 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__askBasebandReset;
  swift_beginAccess();
  v123 = v196;
  sub_10000A0A4(a1 + v122, v196, &qword_10042BFB8, &qword_100394078);
  v124 = v177;
  swift_beginAccess();
  sub_10000AD64(v123, v1 + v124, &qword_10042BFB8, &qword_100394078);
  swift_endAccess();
  v125 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__summaryReport;
  swift_beginAccess();
  v126 = v197;
  sub_10000A0A4(a1 + v125, v197, &qword_10042BFC0, &qword_100394080);
  v127 = v178;
  swift_beginAccess();
  sub_10000AD64(v126, v1 + v127, &qword_10042BFC0, &qword_100394080);
  swift_endAccess();
  v128 = (a1 + OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__gemProtocolIndication);
  swift_beginAccess();
  v130 = *v128;
  v129 = v128[1];
  swift_beginAccess();
  v131 = *v69;
  v132 = v69[1];
  *v69 = v130;
  v69[1] = v129;
  sub_10000BE4C(v130, v129);
  sub_10000CA64(v131, v132);
  v133 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__positionReport;
  swift_beginAccess();
  v134 = v198;
  sub_10000A0A4(a1 + v133, v198, &qword_10042BFC8, &qword_100394088);
  v135 = v180;
  swift_beginAccess();
  sub_10000AD64(v134, v1 + v135, &qword_10042BFC8, &qword_100394088);
  swift_endAccess();
  v136 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cplaneMeasurementReport;
  swift_beginAccess();
  v137 = v199;
  sub_10000A0A4(a1 + v136, v199, &qword_10042BFD0, &qword_100394090);
  v138 = v181;
  swift_beginAccess();
  sub_10000AD64(v137, v1 + v138, &qword_10042BFD0, &qword_100394090);
  swift_endAccess();
  v139 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__assistanceNeededReport;
  swift_beginAccess();
  v140 = v200;
  sub_10000A0A4(a1 + v139, v200, &qword_10042BFD8, &qword_100394098);
  v141 = v182;
  swift_beginAccess();
  sub_10000AD64(v140, v1 + v141, &qword_10042BFD8, &qword_100394098);
  swift_endAccess();
  v142 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cellFtAssistanceRequest;
  swift_beginAccess();
  v143 = v201;
  sub_10000A0A4(a1 + v142, v201, &qword_10042BFE0, &qword_1003940A0);
  v144 = v183;
  swift_beginAccess();
  sub_10000AD64(v143, v1 + v144, &qword_10042BFE0, &qword_1003940A0);
  swift_endAccess();
  v145 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__cplaneMeasurementReportWithEstimate;
  swift_beginAccess();
  v146 = v202;
  sub_10000A0A4(a1 + v145, v202, &qword_10042BFE8, &qword_1003940A8);
  v147 = v185;
  swift_beginAccess();
  sub_10000AD64(v146, v1 + v147, &qword_10042BFE8, &qword_1003940A8);
  swift_endAccess();
  v148 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplSessionStatus;
  swift_beginAccess();
  v149 = v203;
  sub_10000A0A4(a1 + v148, v203, &qword_10042BFF0, &qword_1003940B0);
  v150 = v186;
  swift_beginAccess();
  sub_10000AD64(v149, v1 + v150, &qword_10042BFF0, &qword_1003940B0);
  swift_endAccess();
  v151 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__decodedSuplInit;
  swift_beginAccess();
  v152 = v204;
  sub_10000A0A4(a1 + v151, v204, &qword_10042BFF8, &qword_1003940B8);
  v153 = v187;
  swift_beginAccess();
  sub_10000AD64(v152, v1 + v153, &qword_10042BFF8, &qword_1003940B8);
  swift_endAccess();
  v154 = a1 + OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplInitIndex;
  swift_beginAccess();
  LODWORD(v130) = *v154;
  LOBYTE(v154) = *(v154 + 4);
  v155 = v189;
  swift_beginAccess();
  *v155 = v130;
  *(v155 + 4) = v154;
  v156 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__suplInitDecodeResult;
  swift_beginAccess();
  LOBYTE(v156) = *(a1 + v156);
  v157 = v190;
  swift_beginAccess();
  *(v1 + v157) = v156;
  v158 = a1 + OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__simInstance;
  swift_beginAccess();
  LODWORD(v157) = *v158;
  LOBYTE(v158) = *(v158 + 4);
  v159 = v191;
  swift_beginAccess();
  *v159 = v157;
  *(v159 + 4) = v158;
  v160 = OBJC_IVAR____TtCV10ALProtobuf21Proto_Gpsd_IndicationP33_D7E5B2DD45535F54EF008B6FDC82B89E13_StorageClass__wlanMeasurementRequest;
  swift_beginAccess();
  v161 = v205;
  sub_10000A0A4(a1 + v160, v205, &qword_10042C000, &unk_1003940C0);

  v162 = v193;
  swift_beginAccess();
  sub_10000AD64(v161, v1 + v162, &qword_10042C000, &unk_1003940C0);
  swift_endAccess();
  return v1;
}