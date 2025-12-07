uint64_t sub_1001D3E28@<X0>(void *a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100424058, &qword_100383528);
  __chkstk_darwin(v3 - 8);
  v5 = &v15 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssNavModelAddData;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_100424058, &qword_100383528);
  v8 = type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1002463C0(v5, a1, type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData);
  }

  *a1 = &_swiftEmptyArrayStorage;
  UnknownStorage.init()();
  v10 = a1 + v8[6];
  *v10 = 0;
  v10[4] = 1;
  v11 = a1 + v8[7];
  *v11 = 0;
  v11[4] = 1;
  v12 = a1 + v8[8];
  *v12 = 0;
  v12[4] = 1;
  v13 = a1 + v8[9];
  *v13 = 0;
  v13[4] = 1;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_100424058, &qword_100383528);
  }

  return result;
}

uint64_t sub_1001D3FF4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100424058, &qword_100383528);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_10022C1AC(v11);
    *(v2 + v7) = v10;
  }

  sub_1002463C0(a1, v6, type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData);
  v12 = type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssNavModelAddData;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_100424058, &qword_100383528);
  return swift_endAccess();
}

void (*sub_1001D4160(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100424058, &qword_100383528) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0);
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
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssNavModelAddData;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100424058, &qword_100383528);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    *v13 = &_swiftEmptyArrayStorage;
    UnknownStorage.init()();
    v18 = v13 + v8[6];
    *v18 = 0;
    v18[4] = 1;
    v19 = v13 + v8[7];
    *v19 = 0;
    v19[4] = 1;
    v20 = v13 + v8[8];
    *v20 = 0;
    v20[4] = 1;
    v21 = v13 + v8[9];
    *v21 = 0;
    v21[4] = 1;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100424058, &qword_100383528);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData);
  }

  return sub_1001D4400;
}

void sub_1001D4400(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100246428(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass(0);
      v9 = swift_allocObject();
      sub_10022C1AC(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002463C0(v11, v15, type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssNavModelAddData;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_100424058, &qword_100383528);
    swift_endAccess();
    sub_100246490(v10, type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData);
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
      type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass(0);
      v22 = swift_allocObject();
      sub_10022C1AC(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002463C0(v10, v15, type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssNavModelAddData;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_100424058, &qword_100383528);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_1001D4650()
{
  v1 = sub_100024A2C(&qword_100424058, &qword_100383528);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssNavModelAddData;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_100424058, &qword_100383528);
  v6 = type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_100424058, &qword_100383528);
  return v7;
}

uint64_t sub_1001D4770()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100424058, &qword_100383528);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    sub_10022C1AC(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssNavModelAddData;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v11, &qword_100424058, &qword_100383528);
  return swift_endAccess();
}

uint64_t sub_1001D48B8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100424060, &qword_100383530);
  __chkstk_darwin(v3 - 8);
  v5 = &v15 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAddAssistDataChoices;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_100424060, &qword_100383530);
  v8 = type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1002463C0(v5, a1, type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices);
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
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_100424060, &qword_100383530);
  }

  return result;
}

uint64_t sub_1001D4A74(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100424060, &qword_100383530);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_10022C1AC(v11);
    *(v2 + v7) = v10;
  }

  sub_1002463C0(a1, v6, type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices);
  v12 = type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAddAssistDataChoices;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_100424060, &qword_100383530);
  return swift_endAccess();
}

void (*sub_1001D4BE0(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100424060, &qword_100383530) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices(0);
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
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAddAssistDataChoices;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100424060, &qword_100383530);
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
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100424060, &qword_100383530);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices);
  }

  return sub_1001D4E70;
}

void sub_1001D4E70(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100246428(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass(0);
      v9 = swift_allocObject();
      sub_10022C1AC(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002463C0(v11, v15, type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAddAssistDataChoices;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_100424060, &qword_100383530);
    swift_endAccess();
    sub_100246490(v10, type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices);
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
      type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass(0);
      v22 = swift_allocObject();
      sub_10022C1AC(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002463C0(v10, v15, type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAddAssistDataChoices;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_100424060, &qword_100383530);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_1001D50C0()
{
  v1 = sub_100024A2C(&qword_100424060, &qword_100383530);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAddAssistDataChoices;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_100424060, &qword_100383530);
  v6 = type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_100424060, &qword_100383530);
  return v7;
}

uint64_t sub_1001D51E0()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100424060, &qword_100383530);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GanssAidRequestPerGanss._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    sub_10022C1AC(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gnss_Emergency_GanssAddAssistDataChoices(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf44Proto_Gnss_Emergency_GanssAidRequestPerGanssP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAddAssistDataChoices;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v11, &qword_100424060, &qword_100383530);
  return swift_endAccess();
}

uint64_t sub_1001D539C(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001D53D4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0) + 28);
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

uint64_t sub_1001D546C()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001D54B4(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001D54EC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0) + 32);
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

uint64_t sub_1001D5584()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0);
  v2 = v0 + *(result + 32);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001D55CC(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001D5604(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0) + 36);
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

uint64_t sub_1001D569C()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0);
  v2 = v0 + *(result + 36);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001D56E4(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001D571C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0) + 40);
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

uint64_t sub_1001D57B4()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0);
  v2 = v0 + *(result + 40);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001D57FC(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0);
  v4 = v1 + *(result + 44);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001D5834(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0) + 44);
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

uint64_t sub_1001D58CC()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0);
  v2 = v0 + *(result + 44);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001D5914@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1001D59B0(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1001D5A90@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  a2[1] = &_swiftEmptyArrayStorage;
  v3 = a1(0);
  result = UnknownStorage.init()();
  v5 = a2 + v3[7];
  *v5 = 0;
  v5[4] = 1;
  v6 = a2 + v3[8];
  *v6 = 0;
  v6[4] = 1;
  v7 = a2 + v3[9];
  *v7 = 0;
  v7[4] = 1;
  v8 = a2 + v3[10];
  *v8 = 0;
  v8[4] = 1;
  v9 = a2 + v3[11];
  *v9 = 0;
  v9[4] = 1;
  return result;
}

void (*sub_1001D5B88(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 16);
  if (v7 == 9)
  {
    LOBYTE(v7) = 0;
  }

  *(v4 + 84) = v7;
  return sub_1001D5C30;
}

uint64_t sub_1001D5D10(int a1, uint64_t (*a2)(void), uint64_t (*a3)(void), void (*a4)(uint64_t))
{
  v7 = v4;
  v9 = *(a2(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v4 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a3(0);
    v12 = swift_allocObject();
    v13 = v11;
    v11 = v12;
    a4(v13);
    *(v7 + v9) = v12;
  }

  result = swift_beginAccess();
  *(v11 + 20) = a1;
  *(v11 + 24) = 0;
  return result;
}

void (*sub_1001D5DC0(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 20);
  if (*(v6 + 24))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1001D5E6C;
}

void sub_1001D5E98(uint64_t *a1, char a2, uint64_t (*a3)(void), void (*a4)(uint64_t))
{
  v6 = *a1;
  v7 = *(*a1 + 80);
  v8 = *(*a1 + 84);
  v9 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v9 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = *(v6 + 84);
    v13 = *(v6 + 72);
    a3(0);
    v14 = swift_allocObject();
    v15 = v11;
    v11 = v14;
    a4(v15);
    *(v13 + v12) = v14;
  }

  swift_beginAccess();
  *(v11 + 20) = v7;
  *(v11 + 24) = 0;

  free(v6);
}

uint64_t sub_1001D5FCC(uint64_t (*a1)(void), uint64_t (*a2)(void), void (*a3)(uint64_t))
{
  v6 = v3;
  v7 = *(a1(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v3 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    a3(v11);
    *(v6 + v7) = v10;
  }

  result = swift_beginAccess();
  *(v9 + 20) = 0;
  *(v9 + 24) = 1;
  return result;
}

uint64_t sub_1001D60A0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100423FF8, &qword_1003834C8);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_10022F09C(v11);
    *(v2 + v7) = v10;
  }

  sub_1002463C0(a1, v6, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
  v12 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_100423FF8, &qword_1003834C8);
  return swift_endAccess();
}

void (*sub_1001D620C(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100423FF8, &qword_1003834C8) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
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
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100423FF8, &qword_1003834C8);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    *(v13 + v8[5]) = 6;
    *(v13 + v8[6]) = 7;
    v18 = v13 + v8[7];
    *v18 = 0;
    *(v18 + 4) = 1;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100423FF8, &qword_1003834C8);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
  }

  return sub_1001D6484;
}

void sub_1001D6484(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100246428(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport._StorageClass(0);
      v9 = swift_allocObject();
      sub_10022F09C(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002463C0(v11, v15, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_100423FF8, &qword_1003834C8);
    swift_endAccess();
    sub_100246490(v10, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
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
      type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport._StorageClass(0);
      v22 = swift_allocObject();
      sub_10022F09C(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002463C0(v10, v15, type metadata accessor for Proto_Gnss_Emergency_SessionInfo);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_100423FF8, &qword_1003834C8);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_1001D66D4()
{
  v1 = sub_100024A2C(&qword_100423FF8, &qword_1003834C8);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_100423FF8, &qword_1003834C8);
  v6 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_100423FF8, &qword_1003834C8);
  return v7;
}

uint64_t sub_1001D67F4()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100423FF8, &qword_1003834C8);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    sub_10022F09C(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v11, &qword_100423FF8, &qword_1003834C8);
  return swift_endAccess();
}

uint64_t sub_1001D693C@<X0>(void *a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100424068, &qword_100383538);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__assistanceRequest;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_100424068, &qword_100383538);
  v8 = type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1002463C0(v5, a1, type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest);
  }

  *a1 = &_swiftEmptyArrayStorage;
  a1[1] = &_swiftEmptyArrayStorage;
  UnknownStorage.init()();
  v10 = a1 + v8[7];
  *v10 = 0;
  v10[4] = 1;
  v11 = a1 + v8[8];
  *v11 = 0;
  v11[4] = 1;
  v12 = a1 + v8[9];
  *v12 = 0;
  v12[4] = 1;
  v13 = a1 + v8[10];
  *v13 = 0;
  v13[4] = 1;
  v14 = a1 + v8[11];
  *v14 = 0;
  v14[4] = 1;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_100424068, &qword_100383538);
  }

  return result;
}

uint64_t sub_1001D6B18(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100424068, &qword_100383538);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_10022F09C(v11);
    *(v2 + v7) = v10;
  }

  sub_1002463C0(a1, v6, type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest);
  v12 = type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__assistanceRequest;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_100424068, &qword_100383538);
  return swift_endAccess();
}

void (*sub_1001D6C84(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100424068, &qword_100383538) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0);
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
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__assistanceRequest;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100424068, &qword_100383538);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    *v13 = &_swiftEmptyArrayStorage;
    v13[1] = &_swiftEmptyArrayStorage;
    UnknownStorage.init()();
    v18 = v13 + v8[7];
    *v18 = 0;
    v18[4] = 1;
    v19 = v13 + v8[8];
    *v19 = 0;
    v19[4] = 1;
    v20 = v13 + v8[9];
    *v20 = 0;
    v20[4] = 1;
    v21 = v13 + v8[10];
    *v21 = 0;
    v21[4] = 1;
    v22 = v13 + v8[11];
    *v22 = 0;
    v22[4] = 1;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100424068, &qword_100383538);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest);
  }

  return sub_1001D6F34;
}

void sub_1001D6F34(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100246428(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport._StorageClass(0);
      v9 = swift_allocObject();
      sub_10022F09C(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002463C0(v11, v15, type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__assistanceRequest;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_100424068, &qword_100383538);
    swift_endAccess();
    sub_100246490(v10, type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest);
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
      type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport._StorageClass(0);
      v22 = swift_allocObject();
      sub_10022F09C(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002463C0(v10, v15, type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__assistanceRequest;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_100424068, &qword_100383538);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_1001D7184()
{
  v1 = sub_100024A2C(&qword_100424068, &qword_100383538);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__assistanceRequest;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_100424068, &qword_100383538);
  v6 = type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_100424068, &qword_100383538);
  return v7;
}

uint64_t sub_1001D72A4()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100424068, &qword_100383538);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    sub_10022F09C(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__assistanceRequest;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v11, &qword_100424068, &qword_100383538);
  return swift_endAccess();
}

uint64_t sub_1001D73EC@<X0>(void *a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100424070, &qword_100383540);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = *(v1 + *(type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport(0) + 20));
  v7 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAssistanceRequest;
  swift_beginAccess();
  sub_10000A0A4(v6 + v7, v5, &qword_100424070, &qword_100383540);
  v8 = type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1002463C0(v5, a1, type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest);
  }

  *a1 = &_swiftEmptyArrayStorage;
  a1[1] = &_swiftEmptyArrayStorage;
  UnknownStorage.init()();
  v10 = a1 + v8[7];
  *v10 = 0;
  v10[4] = 1;
  v11 = a1 + v8[8];
  *v11 = 0;
  v11[4] = 1;
  v12 = a1 + v8[9];
  *v12 = 0;
  v12[4] = 1;
  v13 = a1 + v8[10];
  *v13 = 0;
  v13[4] = 1;
  v14 = a1 + v8[11];
  *v14 = 0;
  v14[4] = 1;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_100424070, &qword_100383540);
  }

  return result;
}

uint64_t sub_1001D75C8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024A2C(&qword_100424070, &qword_100383540);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport._StorageClass(0);
    v10 = swift_allocObject();
    v11 = v9;
    v9 = v10;
    sub_10022F09C(v11);
    *(v2 + v7) = v10;
  }

  sub_1002463C0(a1, v6, type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest);
  v12 = type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAssistanceRequest;
  swift_beginAccess();
  sub_10000AD64(v6, v9 + v13, &qword_100424070, &qword_100383540);
  return swift_endAccess();
}

void (*sub_1001D7734(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(*(sub_100024A2C(&qword_100424070, &qword_100383540) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0);
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
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAssistanceRequest;
  swift_beginAccess();
  sub_10000A0A4(v15 + v16, v7, &qword_100424070, &qword_100383540);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    *v13 = &_swiftEmptyArrayStorage;
    v13[1] = &_swiftEmptyArrayStorage;
    UnknownStorage.init()();
    v18 = v13 + v8[7];
    *v18 = 0;
    v18[4] = 1;
    v19 = v13 + v8[8];
    *v19 = 0;
    v19[4] = 1;
    v20 = v13 + v8[9];
    *v20 = 0;
    v20[4] = 1;
    v21 = v13 + v8[10];
    *v21 = 0;
    v21[4] = 1;
    v22 = v13 + v8[11];
    *v22 = 0;
    v22[4] = 1;
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100424070, &qword_100383540);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest);
  }

  return sub_1001D79E4;
}

void sub_1001D79E4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_100246428(*(v2 + 120), *(v2 + 112), type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport._StorageClass(0);
      v9 = swift_allocObject();
      sub_10022F09C(v6);
      *(v8 + v7) = v9;
      v6 = v9;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v12 = *(v2 + 96);
    v13 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002463C0(v11, v15, type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAssistanceRequest;
    swift_beginAccess();
    sub_10000AD64(v15, v6 + v16, &qword_100424070, &qword_100383540);
    swift_endAccess();
    sub_100246490(v10, type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest);
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
      type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport._StorageClass(0);
      v22 = swift_allocObject();
      sub_10022F09C(v19);
      *(v21 + v20) = v22;
      v19 = v22;
    }

    v11 = *(v2 + 112);
    v10 = *(v2 + 120);
    v23 = *(v2 + 96);
    v24 = *(v2 + 104);
    v15 = *(v2 + 80);
    v14 = *(v2 + 88);
    sub_1002463C0(v10, v15, type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest);
    (*(v24 + 56))(v15, 0, 1, v23);
    v25 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAssistanceRequest;
    swift_beginAccess();
    sub_10000AD64(v15, v19 + v25, &qword_100424070, &qword_100383540);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v2);
}

BOOL sub_1001D7C34()
{
  v1 = sub_100024A2C(&qword_100424070, &qword_100383540);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport(0) + 20));
  v5 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAssistanceRequest;
  swift_beginAccess();
  sub_10000A0A4(v4 + v5, v3, &qword_100424070, &qword_100383540);
  v6 = type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0);
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) != 1;
  sub_1000059A8(v3, &qword_100424070, &qword_100383540);
  return v7;
}

uint64_t sub_1001D7D54()
{
  v1 = v0;
  v2 = sub_100024A2C(&qword_100424070, &qword_100383540);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_AssistanceNeededReport._StorageClass(0);
    v8 = swift_allocObject();
    v9 = v7;
    v7 = v8;
    sub_10022F09C(v9);
    *(v1 + v5) = v8;
  }

  v10 = type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0);
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf43Proto_Gnss_Emergency_AssistanceNeededReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssAssistanceRequest;
  swift_beginAccess();
  sub_10000AD64(v4, v7 + v11, &qword_100424070, &qword_100383540);
  return swift_endAccess();
}

uint64_t sub_1001D7F10(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_EutranCellTime(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001D7F48(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_EutranCellTime(0) + 24);
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

uint64_t sub_1001D7FE0()
{
  result = type metadata accessor for Proto_Gnss_Emergency_EutranCellTime(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001D80A0@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  v3 = a1(0);
  result = UnknownStorage.init()();
  v5 = a2 + *(v3 + 24);
  *v5 = 0;
  v5[4] = 1;
  return result;
}

uint64_t sub_1001D8118(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001D8150(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0) + 20);
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

uint64_t sub_1001D81E8()
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001D8230(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001D8268(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0) + 24);
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

uint64_t sub_1001D8300()
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001D8348(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001D8380(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0) + 28);
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

uint64_t sub_1001D8418()
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001D8460(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001D8498(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0) + 32);
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

uint64_t sub_1001D8530()
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0);
  v2 = v0 + *(result + 32);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001D8578(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001D85B0(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0) + 36);
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

uint64_t sub_1001D8648()
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0);
  v2 = v0 + *(result + 36);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001D8690(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001D86C8(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0) + 40);
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

uint64_t sub_1001D8760()
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0);
  v2 = v0 + *(result + 40);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001D87A8(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0);
  v4 = v1 + *(result + 44);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001D87E0(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0) + 44);
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

uint64_t sub_1001D8878()
{
  result = type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0);
  v2 = v0 + *(result + 44);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

int *sub_1001D88A8@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0);
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
  v9 = a1 + result[11];
  *v9 = 0;
  *(v9 + 4) = 1;
  return result;
}

uint64_t sub_1001D8960(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001D8998(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime(0) + 20);
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

uint64_t sub_1001D8A30()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001D8A78(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001D8AB0(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime(0) + 24);
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

uint64_t sub_1001D8B48()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001D8BA8(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001D8BE0(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime(0) + 20);
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

uint64_t sub_1001D8C78()
{
  result = type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001D8CC0(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001D8CF8(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime(0) + 24);
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

uint64_t sub_1001D8D90()
{
  result = type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001D8DD8(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001D8E10(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime(0) + 28);
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

uint64_t sub_1001D8EA8()
{
  result = type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001D8EF0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100424078, &qword_100383548);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0);
  sub_10000A0A4(v1 + *(v6 + 20), v5, &qword_100424078, &qword_100383548);
  v7 = type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1002463C0(v5, a1, type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime);
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
    return sub_1000059A8(v5, &qword_100424078, &qword_100383548);
  }

  return result;
}

uint64_t sub_1001D9068(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0) + 20);
  sub_1000059A8(v1 + v3, &qword_100424078, &qword_100383548);
  sub_1002463C0(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime);
  v4 = type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_1001D9120(void *a1))(uint64_t **a1, uint64_t a2)
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
  v5 = *(*(sub_100024A2C(&qword_100424078, &qword_100383548) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime(0);
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
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0) + 20);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100424078, &qword_100383548);
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
      sub_1000059A8(v7, &qword_100424078, &qword_100383548);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime);
  }

  return sub_1001D9350;
}

uint64_t sub_1001D941C(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001D9454(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0) + 24);
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

uint64_t sub_1001D94EC()
{
  result = type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001D9534(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001D956C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0) + 28);
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

uint64_t sub_1001D9604()
{
  result = type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001D9634@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0);
  v3 = v2[5];
  v4 = type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime(0);
  result = (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v6 = a1 + v2[6];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1 + v2[7];
  *v7 = 0;
  *(v7 + 4) = 1;
  return result;
}

uint64_t sub_1001D96EC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100424080, &qword_100383550);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0);
  sub_10000A0A4(v1 + *(v6 + 20), v5, &qword_100424080, &qword_100383550);
  v7 = type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1002463C0(v5, a1, type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime);
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
    return sub_1000059A8(v5, &qword_100424080, &qword_100383550);
  }

  return result;
}

uint64_t sub_1001D9874(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0) + 20);
  sub_1000059A8(v1 + v3, &qword_100424080, &qword_100383550);
  sub_1002463C0(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime);
  v4 = type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_1001D992C(void *a1))(uint64_t **a1, uint64_t a2)
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
  v5 = *(*(sub_100024A2C(&qword_100424080, &qword_100383550) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime(0);
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
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0) + 20);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100424080, &qword_100383550);
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
      sub_1000059A8(v7, &qword_100424080, &qword_100383550);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime);
  }

  return sub_1001D9B6C;
}

uint64_t sub_1001D9C20@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100424088, &qword_100383558);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0);
  sub_10000A0A4(v1 + *(v6 + 24), v5, &qword_100424088, &qword_100383558);
  v7 = type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1002463C0(v5, a1, type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime);
  }

  UnknownStorage.init()();
  v9 = v7[5];
  v10 = type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime(0);
  (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  v11 = a1 + v7[6];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a1 + v7[7];
  *v12 = 0;
  *(v12 + 4) = 1;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_100424088, &qword_100383558);
  }

  return result;
}

uint64_t sub_1001D9DE4(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0) + 24);
  sub_1000059A8(v1 + v3, &qword_100424088, &qword_100383558);
  sub_1002463C0(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime);
  v4 = type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_1001D9E9C(void *a1))(uint64_t **a1, uint64_t a2)
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
  v5 = *(*(sub_100024A2C(&qword_100424088, &qword_100383558) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0);
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
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0) + 24);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100424088, &qword_100383558);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v8[5];
    v17 = type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime(0);
    (*(*(v17 - 8) + 56))(v13 + v16, 1, 1, v17);
    v18 = v13 + v8[6];
    *v18 = 0;
    *(v18 + 4) = 1;
    v19 = v13 + v8[7];
    *v19 = 0;
    *(v19 + 4) = 1;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100424088, &qword_100383558);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime);
  }

  return sub_1001DA110;
}

uint64_t sub_1001DA204@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  UnknownStorage.init()();
  v8 = a1(0);
  v9 = *(v8 + 20);
  v10 = a2(0);
  (*(*(v10 - 8) + 56))(a4 + v9, 1, 1, v10);
  v11 = *(v8 + 24);
  v12 = a3(0);
  v13 = *(*(v12 - 8) + 56);

  return v13(a4 + v11, 1, 1, v12);
}

uint64_t sub_1001DA320()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance(0) + 20));
  if (v1 == 6)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1001DA34C(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*sub_1001DA37C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance(0) + 20);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 6)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_1001DA408()
{
  result = type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance(0);
  *(v0 + *(result + 20)) = 6;
  return result;
}

uint64_t sub_1001DA430@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100424090, &qword_100383560);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance(0);
  sub_10000A0A4(v1 + *(v6 + 24), v5, &qword_100424090, &qword_100383560);
  v7 = type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1002463C0(v5, a1, type metadata accessor for Proto_Gnss_Emergency_CellTimeData);
  }

  UnknownStorage.init()();
  v9 = *(v7 + 20);
  v10 = type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime(0);
  (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  v11 = *(v7 + 24);
  v12 = type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_100424090, &qword_100383560);
  }

  return result;
}

uint64_t sub_1001DA60C(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance(0) + 24);
  sub_1000059A8(v1 + v3, &qword_100424090, &qword_100383560);
  sub_1002463C0(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_CellTimeData);
  v4 = type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*sub_1001DA6C4(void *a1))(uint64_t a1, uint64_t a2)
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
  v5 = *(*(sub_100024A2C(&qword_100424090, &qword_100383560) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0);
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
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance(0) + 24);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100424090, &qword_100383560);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = *(v8 + 20);
    v17 = type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime(0);
    (*(*(v17 - 8) + 56))(v13 + v16, 1, 1, v17);
    v18 = *(v8 + 24);
    v19 = type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0);
    (*(*(v19 - 8) + 56))(v13 + v18, 1, 1, v19);
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100424090, &qword_100383560);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_CellTimeData);
  }

  return sub_100269000;
}

uint64_t sub_1001DAA18(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_TowAssist(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001DAA50(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_TowAssist(0) + 20);
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

uint64_t sub_1001DAAE8()
{
  result = type metadata accessor for Proto_Gnss_Emergency_TowAssist(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001DAB30(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_TowAssist(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001DAB68(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_TowAssist(0) + 24);
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

uint64_t sub_1001DAC00()
{
  result = type metadata accessor for Proto_Gnss_Emergency_TowAssist(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001DAC48(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_TowAssist(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001DAC80(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_TowAssist(0) + 28);
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

uint64_t sub_1001DAD18()
{
  result = type metadata accessor for Proto_Gnss_Emergency_TowAssist(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001DAD60(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_TowAssist(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001DAD98(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_TowAssist(0) + 32);
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

uint64_t sub_1001DAE30()
{
  result = type metadata accessor for Proto_Gnss_Emergency_TowAssist(0);
  v2 = v0 + *(result + 32);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001DAE78(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_TowAssist(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001DAEB0(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_TowAssist(0) + 36);
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

uint64_t sub_1001DAF48()
{
  result = type metadata accessor for Proto_Gnss_Emergency_TowAssist(0);
  v2 = v0 + *(result + 36);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

int *sub_1001DAF78@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gnss_Emergency_TowAssist(0);
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
  return result;
}

uint64_t sub_1001DB010(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001DB048(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0) + 24);
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

uint64_t sub_1001DB0E0()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001DB128(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001DB160(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0) + 28);
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

uint64_t sub_1001DB1F8()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001DB240(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001DB278(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0) + 32);
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

uint64_t sub_1001DB310()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
  v2 = v0 + *(result + 32);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001DB358(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001DB390(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0) + 36);
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

uint64_t sub_1001DB428()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
  v2 = v0 + *(result + 36);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001DB470(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001DB4A8(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0) + 40);
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

uint64_t sub_1001DB540()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
  v2 = v0 + *(result + 40);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001DB570()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0) + 44));
  if (v1 == 6)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1001DB59C(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t (*sub_1001DB5CC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0) + 44);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 6)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_1001DB658()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
  *(v0 + *(result + 44)) = 6;
  return result;
}

uint64_t sub_1001DB680()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0) + 48));
  if (v1 == 7)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1001DB6AC(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t (*sub_1001DB6DC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0) + 48);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 7)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_1001DB768()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
  *(v0 + *(result + 48)) = 7;
  return result;
}

uint64_t sub_1001DB7A8(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
  v4 = v1 + *(result + 52);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001DB7E0(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0) + 52);
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

uint64_t sub_1001DB878()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
  v2 = v0 + *(result + 52);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001DB920@<X0>(void *a1@<X8>)
{
  *a1 = &_swiftEmptyArrayStorage;
  v2 = type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
  result = UnknownStorage.init()();
  v4 = a1 + v2[6];
  *v4 = 0;
  v4[4] = 1;
  v5 = a1 + v2[7];
  *v5 = 0;
  v5[4] = 1;
  v6 = a1 + v2[8];
  *v6 = 0;
  v6[4] = 1;
  v7 = a1 + v2[9];
  *v7 = 0;
  v7[4] = 1;
  v8 = a1 + v2[10];
  *v8 = 0;
  v8[4] = 1;
  *(a1 + v2[11]) = 6;
  *(a1 + v2[12]) = 7;
  v9 = a1 + v2[13];
  *v9 = 0;
  v9[4] = 1;
  return result;
}

uint64_t sub_1001DB9F8(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001DBA30(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 20);
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

uint64_t sub_1001DBAC8()
{
  result = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001DBB10(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001DBB48(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 24);
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

uint64_t sub_1001DBBE0()
{
  result = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001DBC28(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001DBC60(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 28);
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

uint64_t sub_1001DBCF8()
{
  result = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001DBD40(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001DBD78(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 32);
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

uint64_t sub_1001DBE10()
{
  result = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  v2 = v0 + *(result + 32);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001DBE58(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001DBE90(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 36);
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

uint64_t sub_1001DBF28()
{
  result = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  v2 = v0 + *(result + 36);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001DBF70(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001DBFA8(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 40);
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

uint64_t sub_1001DC040()
{
  result = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  v2 = v0 + *(result + 40);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001DC088(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  v4 = v1 + *(result + 44);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001DC0C0(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 44);
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

uint64_t sub_1001DC158()
{
  result = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  v2 = v0 + *(result + 44);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001DC1A0(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  v4 = v1 + *(result + 48);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001DC1D8(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 48);
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

uint64_t sub_1001DC270()
{
  result = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  v2 = v0 + *(result + 48);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001DC2B8(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  v4 = v1 + *(result + 52);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001DC2F0(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 52);
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

uint64_t sub_1001DC388()
{
  result = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  v2 = v0 + *(result + 52);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001DC3D0(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  v4 = v1 + *(result + 56);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001DC408(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 56);
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

uint64_t sub_1001DC4A0()
{
  result = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  v2 = v0 + *(result + 56);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001DC4E8(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 60));
  if (v2[4])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t sub_1001DC524(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  v4 = v1 + *(result + 60);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001DC55C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 60);
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

uint64_t sub_1001DC5F4()
{
  result = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  v2 = v0 + *(result + 60);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001DC624()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 64));
  if (v1 == 6)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1001DC650(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  *(v1 + *(result + 64)) = a1;
  return result;
}

uint64_t (*sub_1001DC680(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 64);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 6)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_1001DC70C()
{
  result = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  *(v0 + *(result + 64)) = 6;
  return result;
}

uint64_t sub_1001DC734()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 68));
  if (v1 == 7)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1001DC760(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  *(v1 + *(result + 68)) = a1;
  return result;
}

uint64_t (*sub_1001DC790(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 68);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 7)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_1001DC81C()
{
  result = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  *(v0 + *(result + 68)) = 7;
  return result;
}

uint64_t sub_1001DC844()
{
  v1 = (v0 + *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 72));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t sub_1001DC878(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  v4 = v1 + *(result + 72);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001DC8B0(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0) + 72);
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

uint64_t sub_1001DC948()
{
  result = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  v2 = v0 + *(result + 72);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

int *sub_1001DC978@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
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
  v9 = a1 + result[11];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1 + result[12];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + result[13];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a1 + result[14];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1 + result[15];
  *v13 = 0;
  *(v13 + 4) = 1;
  *(a1 + result[16]) = 6;
  *(a1 + result[17]) = 7;
  v14 = a1 + result[18];
  *v14 = 0;
  *(v14 + 4) = 1;
  return result;
}

uint64_t sub_1001DCADC(int a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
{
  v8 = v5;
  v10 = *(a2(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v5 + v10);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a3();
    v13 = swift_allocObject();
    a5(v12);

    *(v8 + v10) = v13;
    v12 = v13;
  }

  result = swift_beginAccess();
  *(v12 + 16) = a1;
  *(v12 + 20) = 0;
  return result;
}

void (*sub_1001DCB9C(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 16);
  if (*(v6 + 20))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1001DCC48;
}

void sub_1001DCC78(uint64_t *a1, char a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
{
  v7 = *a1;
  v8 = *(*a1 + 80);
  v9 = *(*a1 + 84);
  v10 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v10 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = *(v7 + 84);
    v14 = *(v7 + 72);
    a3();
    v15 = swift_allocObject();
    a5(v12);

    *(v14 + v13) = v15;
    v12 = v15;
  }

  swift_beginAccess();
  *(v12 + 16) = v8;
  *(v12 + 20) = 0;

  free(v7);
}

uint64_t sub_1001DCDC0(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t a3, void (*a4)(uint64_t))
{
  v7 = v4;
  v8 = *(a1(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v4 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2();
    v11 = swift_allocObject();
    a4(v10);

    *(v7 + v8) = v11;
    v10 = v11;
  }

  result = swift_beginAccess();
  *(v10 + 16) = 0;
  *(v10 + 20) = 1;
  return result;
}

uint64_t sub_1001DCEE0(int a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
{
  v8 = v5;
  v10 = *(a2(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v5 + v10);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a3();
    v13 = swift_allocObject();
    a5(v12);

    *(v8 + v10) = v13;
    v12 = v13;
  }

  result = swift_beginAccess();
  *(v12 + 24) = a1;
  *(v12 + 28) = 0;
  return result;
}

void (*sub_1001DCFA0(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 24);
  if (*(v6 + 28))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1001DD04C;
}

void sub_1001DD07C(uint64_t *a1, char a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
{
  v7 = *a1;
  v8 = *(*a1 + 80);
  v9 = *(*a1 + 84);
  v10 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v10 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = *(v7 + 84);
    v14 = *(v7 + 72);
    a3();
    v15 = swift_allocObject();
    a5(v12);

    *(v14 + v13) = v15;
    v12 = v15;
  }

  swift_beginAccess();
  *(v12 + 24) = v8;
  *(v12 + 28) = 0;

  free(v7);
}

uint64_t sub_1001DD1C4(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t a3, void (*a4)(uint64_t))
{
  v7 = v4;
  v8 = *(a1(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v4 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2();
    v11 = swift_allocObject();
    a4(v10);

    *(v7 + v8) = v11;
    v10 = v11;
  }

  result = swift_beginAccess();
  *(v10 + 24) = 0;
  *(v10 + 28) = 1;
  return result;
}

uint64_t sub_1001DD2E4(int a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
{
  v8 = v5;
  v10 = *(a2(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v5 + v10);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a3();
    v13 = swift_allocObject();
    a5(v12);

    *(v8 + v10) = v13;
    v12 = v13;
  }

  result = swift_beginAccess();
  *(v12 + 32) = a1;
  *(v12 + 36) = 0;
  return result;
}

void (*sub_1001DD3A4(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 32);
  if (*(v6 + 36))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1001DD450;
}

void sub_1001DD480(uint64_t *a1, char a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
{
  v7 = *a1;
  v8 = *(*a1 + 80);
  v9 = *(*a1 + 84);
  v10 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v10 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = *(v7 + 84);
    v14 = *(v7 + 72);
    a3();
    v15 = swift_allocObject();
    a5(v12);

    *(v14 + v13) = v15;
    v12 = v15;
  }

  swift_beginAccess();
  *(v12 + 32) = v8;
  *(v12 + 36) = 0;

  free(v7);
}

uint64_t sub_1001DD5C8(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t a3, void (*a4)(uint64_t))
{
  v7 = v4;
  v8 = *(a1(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v4 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2();
    v11 = swift_allocObject();
    a4(v10);

    *(v7 + v8) = v11;
    v10 = v11;
  }

  result = swift_beginAccess();
  *(v10 + 32) = 0;
  *(v10 + 36) = 1;
  return result;
}

uint64_t sub_1001DD6E8(int a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
{
  v8 = v5;
  v10 = *(a2(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v5 + v10);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a3();
    v13 = swift_allocObject();
    a5(v12);

    *(v8 + v10) = v13;
    v12 = v13;
  }

  result = swift_beginAccess();
  *(v12 + 40) = a1;
  *(v12 + 44) = 0;
  return result;
}

void (*sub_1001DD7A8(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 40);
  if (*(v6 + 44))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1001DD854;
}

void sub_1001DD884(uint64_t *a1, char a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
{
  v7 = *a1;
  v8 = *(*a1 + 80);
  v9 = *(*a1 + 84);
  v10 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v10 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = *(v7 + 84);
    v14 = *(v7 + 72);
    a3();
    v15 = swift_allocObject();
    a5(v12);

    *(v14 + v13) = v15;
    v12 = v15;
  }

  swift_beginAccess();
  *(v12 + 40) = v8;
  *(v12 + 44) = 0;

  free(v7);
}

uint64_t sub_1001DD9CC(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t a3, void (*a4)(uint64_t))
{
  v7 = v4;
  v8 = *(a1(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v4 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2();
    v11 = swift_allocObject();
    a4(v10);

    *(v7 + v8) = v11;
    v10 = v11;
  }

  result = swift_beginAccess();
  *(v10 + 40) = 0;
  *(v10 + 44) = 1;
  return result;
}

uint64_t sub_1001DDAA8(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  if (*(v2 + 52))
  {
    return 0;
  }

  else
  {
    return *(v2 + 48);
  }
}

uint64_t sub_1001DDB4C(int a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
{
  v8 = v5;
  v10 = *(a2(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v5 + v10);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a3();
    v13 = swift_allocObject();
    a5(v12);

    *(v8 + v10) = v13;
    v12 = v13;
  }

  result = swift_beginAccess();
  *(v12 + 48) = a1;
  *(v12 + 52) = 0;
  return result;
}

void (*sub_1001DDC0C(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 48);
  if (*(v6 + 52))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1001DDCB8;
}

void sub_1001DDCE8(uint64_t *a1, char a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
{
  v7 = *a1;
  v8 = *(*a1 + 80);
  v9 = *(*a1 + 84);
  v10 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v10 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = *(v7 + 84);
    v14 = *(v7 + 72);
    a3();
    v15 = swift_allocObject();
    a5(v12);

    *(v14 + v13) = v15;
    v12 = v15;
  }

  swift_beginAccess();
  *(v12 + 48) = v8;
  *(v12 + 52) = 0;

  free(v7);
}

BOOL sub_1001DDDEC(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  return (*(v2 + 52) & 1) == 0;
}

uint64_t sub_1001DDE8C(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t a3, void (*a4)(uint64_t))
{
  v7 = v4;
  v8 = *(a1(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v4 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2();
    v11 = swift_allocObject();
    a4(v10);

    *(v7 + v8) = v11;
    v10 = v11;
  }

  result = swift_beginAccess();
  *(v10 + 48) = 0;
  *(v10 + 52) = 1;
  return result;
}

uint64_t sub_1001DDF68(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  if (*(v2 + 60))
  {
    return 0;
  }

  else
  {
    return *(v2 + 56);
  }
}

uint64_t sub_1001DE00C(int a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
{
  v8 = v5;
  v10 = *(a2(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v5 + v10);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a3();
    v13 = swift_allocObject();
    a5(v12);

    *(v8 + v10) = v13;
    v12 = v13;
  }

  result = swift_beginAccess();
  *(v12 + 56) = a1;
  *(v12 + 60) = 0;
  return result;
}

void (*sub_1001DE0CC(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 56);
  if (*(v6 + 60))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1001DE178;
}

void sub_1001DE1A8(uint64_t *a1, char a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
{
  v7 = *a1;
  v8 = *(*a1 + 80);
  v9 = *(*a1 + 84);
  v10 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v10 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = *(v7 + 84);
    v14 = *(v7 + 72);
    a3();
    v15 = swift_allocObject();
    a5(v12);

    *(v14 + v13) = v15;
    v12 = v15;
  }

  swift_beginAccess();
  *(v12 + 56) = v8;
  *(v12 + 60) = 0;

  free(v7);
}

BOOL sub_1001DE2AC(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  return (*(v2 + 60) & 1) == 0;
}

uint64_t sub_1001DE34C(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t a3, void (*a4)(uint64_t))
{
  v7 = v4;
  v8 = *(a1(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v4 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2();
    v11 = swift_allocObject();
    a4(v10);

    *(v7 + v8) = v11;
    v10 = v11;
  }

  result = swift_beginAccess();
  *(v10 + 56) = 0;
  *(v10 + 60) = 1;
  return result;
}

uint64_t sub_1001DE428(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  if (*(v2 + 68))
  {
    return 0;
  }

  else
  {
    return *(v2 + 64);
  }
}

uint64_t sub_1001DE4CC(int a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
{
  v8 = v5;
  v10 = *(a2(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v5 + v10);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a3();
    v13 = swift_allocObject();
    a5(v12);

    *(v8 + v10) = v13;
    v12 = v13;
  }

  result = swift_beginAccess();
  *(v12 + 64) = a1;
  *(v12 + 68) = 0;
  return result;
}

void (*sub_1001DE58C(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 64);
  if (*(v6 + 68))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1001DE638;
}

void sub_1001DE668(uint64_t *a1, char a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
{
  v7 = *a1;
  v8 = *(*a1 + 80);
  v9 = *(*a1 + 84);
  v10 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v10 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = *(v7 + 84);
    v14 = *(v7 + 72);
    a3();
    v15 = swift_allocObject();
    a5(v12);

    *(v14 + v13) = v15;
    v12 = v15;
  }

  swift_beginAccess();
  *(v12 + 64) = v8;
  *(v12 + 68) = 0;

  free(v7);
}

BOOL sub_1001DE76C(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  return (*(v2 + 68) & 1) == 0;
}

uint64_t sub_1001DE80C(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t a3, void (*a4)(uint64_t))
{
  v7 = v4;
  v8 = *(a1(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v4 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2();
    v11 = swift_allocObject();
    a4(v10);

    *(v7 + v8) = v11;
    v10 = v11;
  }

  result = swift_beginAccess();
  *(v10 + 64) = 0;
  *(v10 + 68) = 1;
  return result;
}

uint64_t sub_1001DE8E8(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  if (*(v2 + 76))
  {
    return 0;
  }

  else
  {
    return *(v2 + 72);
  }
}

uint64_t sub_1001DE98C(int a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
{
  v8 = v5;
  v10 = *(a2(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v5 + v10);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a3();
    v13 = swift_allocObject();
    a5(v12);

    *(v8 + v10) = v13;
    v12 = v13;
  }

  result = swift_beginAccess();
  *(v12 + 72) = a1;
  *(v12 + 76) = 0;
  return result;
}

void (*sub_1001DEA4C(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 72);
  if (*(v6 + 76))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1001DEAF8;
}

void sub_1001DEB28(uint64_t *a1, char a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
{
  v7 = *a1;
  v8 = *(*a1 + 80);
  v9 = *(*a1 + 84);
  v10 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v10 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = *(v7 + 84);
    v14 = *(v7 + 72);
    a3();
    v15 = swift_allocObject();
    a5(v12);

    *(v14 + v13) = v15;
    v12 = v15;
  }

  swift_beginAccess();
  *(v12 + 72) = v8;
  *(v12 + 76) = 0;

  free(v7);
}

BOOL sub_1001DEC2C(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  return (*(v2 + 76) & 1) == 0;
}

uint64_t sub_1001DECCC(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t a3, void (*a4)(uint64_t))
{
  v7 = v4;
  v8 = *(a1(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v4 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2();
    v11 = swift_allocObject();
    a4(v10);

    *(v7 + v8) = v11;
    v10 = v11;
  }

  result = swift_beginAccess();
  *(v10 + 72) = 0;
  *(v10 + 76) = 1;
  return result;
}

uint64_t sub_1001DEDA8(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  if (*(v2 + 84))
  {
    return 0;
  }

  else
  {
    return *(v2 + 80);
  }
}

uint64_t sub_1001DEE4C(int a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
{
  v8 = v5;
  v10 = *(a2(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v5 + v10);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a3();
    v13 = swift_allocObject();
    a5(v12);

    *(v8 + v10) = v13;
    v12 = v13;
  }

  result = swift_beginAccess();
  *(v12 + 80) = a1;
  *(v12 + 84) = 0;
  return result;
}

void (*sub_1001DEF0C(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 80);
  if (*(v6 + 84))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1001DEFB8;
}

void sub_1001DEFE8(uint64_t *a1, char a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
{
  v7 = *a1;
  v8 = *(*a1 + 80);
  v9 = *(*a1 + 84);
  v10 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v10 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = *(v7 + 84);
    v14 = *(v7 + 72);
    a3();
    v15 = swift_allocObject();
    a5(v12);

    *(v14 + v13) = v15;
    v12 = v15;
  }

  swift_beginAccess();
  *(v12 + 80) = v8;
  *(v12 + 84) = 0;

  free(v7);
}

BOOL sub_1001DF0EC(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  return (*(v2 + 84) & 1) == 0;
}

uint64_t sub_1001DF18C(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t a3, void (*a4)(uint64_t))
{
  v7 = v4;
  v8 = *(a1(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v4 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2();
    v11 = swift_allocObject();
    a4(v10);

    *(v7 + v8) = v11;
    v10 = v11;
  }

  result = swift_beginAccess();
  *(v10 + 80) = 0;
  *(v10 + 84) = 1;
  return result;
}

uint64_t sub_1001DF268(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  if (*(v2 + 92))
  {
    return 0;
  }

  else
  {
    return *(v2 + 88);
  }
}

uint64_t sub_1001DF30C(int a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
{
  v8 = v5;
  v10 = *(a2(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v5 + v10);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a3();
    v13 = swift_allocObject();
    a5(v12);

    *(v8 + v10) = v13;
    v12 = v13;
  }

  result = swift_beginAccess();
  *(v12 + 88) = a1;
  *(v12 + 92) = 0;
  return result;
}

void (*sub_1001DF3CC(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 88);
  if (*(v6 + 92))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1001DF478;
}

void sub_1001DF4A8(uint64_t *a1, char a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
{
  v7 = *a1;
  v8 = *(*a1 + 80);
  v9 = *(*a1 + 84);
  v10 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v10 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = *(v7 + 84);
    v14 = *(v7 + 72);
    a3();
    v15 = swift_allocObject();
    a5(v12);

    *(v14 + v13) = v15;
    v12 = v15;
  }

  swift_beginAccess();
  *(v12 + 88) = v8;
  *(v12 + 92) = 0;

  free(v7);
}

BOOL sub_1001DF5AC(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  return (*(v2 + 92) & 1) == 0;
}

uint64_t sub_1001DF64C(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t a3, void (*a4)(uint64_t))
{
  v7 = v4;
  v8 = *(a1(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v4 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2();
    v11 = swift_allocObject();
    a4(v10);

    *(v7 + v8) = v11;
    v10 = v11;
  }

  result = swift_beginAccess();
  *(v10 + 88) = 0;
  *(v10 + 92) = 1;
  return result;
}

uint64_t sub_1001DF728(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  if (*(v2 + 100))
  {
    return 0;
  }

  else
  {
    return *(v2 + 96);
  }
}

uint64_t sub_1001DF7CC(int a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
{
  v8 = v5;
  v10 = *(a2(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v5 + v10);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a3();
    v13 = swift_allocObject();
    a5(v12);

    *(v8 + v10) = v13;
    v12 = v13;
  }

  result = swift_beginAccess();
  *(v12 + 96) = a1;
  *(v12 + 100) = 0;
  return result;
}

void (*sub_1001DF88C(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 96);
  if (*(v6 + 100))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1001DF938;
}

void sub_1001DF968(uint64_t *a1, char a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
{
  v7 = *a1;
  v8 = *(*a1 + 80);
  v9 = *(*a1 + 84);
  v10 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v10 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = *(v7 + 84);
    v14 = *(v7 + 72);
    a3();
    v15 = swift_allocObject();
    a5(v12);

    *(v14 + v13) = v15;
    v12 = v15;
  }

  swift_beginAccess();
  *(v12 + 96) = v8;
  *(v12 + 100) = 0;

  free(v7);
}

BOOL sub_1001DFA6C(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  return (*(v2 + 100) & 1) == 0;
}

uint64_t sub_1001DFB0C(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t a3, void (*a4)(uint64_t))
{
  v7 = v4;
  v8 = *(a1(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v4 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2();
    v11 = swift_allocObject();
    a4(v10);

    *(v7 + v8) = v11;
    v10 = v11;
  }

  result = swift_beginAccess();
  *(v10 + 96) = 0;
  *(v10 + 100) = 1;
  return result;
}

uint64_t sub_1001DFBE8(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  if (*(v2 + 108))
  {
    return 0;
  }

  else
  {
    return *(v2 + 104);
  }
}

uint64_t sub_1001DFC8C(int a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
{
  v8 = v5;
  v10 = *(a2(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v5 + v10);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a3();
    v13 = swift_allocObject();
    a5(v12);

    *(v8 + v10) = v13;
    v12 = v13;
  }

  result = swift_beginAccess();
  *(v12 + 104) = a1;
  *(v12 + 108) = 0;
  return result;
}

void (*sub_1001DFD4C(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 104);
  if (*(v6 + 108))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1001DFDF8;
}

void sub_1001DFE28(uint64_t *a1, char a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
{
  v7 = *a1;
  v8 = *(*a1 + 80);
  v9 = *(*a1 + 84);
  v10 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v10 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = *(v7 + 84);
    v14 = *(v7 + 72);
    a3();
    v15 = swift_allocObject();
    a5(v12);

    *(v14 + v13) = v15;
    v12 = v15;
  }

  swift_beginAccess();
  *(v12 + 104) = v8;
  *(v12 + 108) = 0;

  free(v7);
}

BOOL sub_1001DFF2C(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  return (*(v2 + 108) & 1) == 0;
}

uint64_t sub_1001DFFCC(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t a3, void (*a4)(uint64_t))
{
  v7 = v4;
  v8 = *(a1(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v4 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2();
    v11 = swift_allocObject();
    a4(v10);

    *(v7 + v8) = v11;
    v10 = v11;
  }

  result = swift_beginAccess();
  *(v10 + 104) = 0;
  *(v10 + 108) = 1;
  return result;
}

uint64_t sub_1001E00A8(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  if (*(v2 + 116))
  {
    return 0;
  }

  else
  {
    return *(v2 + 112);
  }
}

uint64_t sub_1001E014C(int a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
{
  v8 = v5;
  v10 = *(a2(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v5 + v10);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a3();
    v13 = swift_allocObject();
    a5(v12);

    *(v8 + v10) = v13;
    v12 = v13;
  }

  result = swift_beginAccess();
  *(v12 + 112) = a1;
  *(v12 + 116) = 0;
  return result;
}

void (*sub_1001E020C(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 112);
  if (*(v6 + 116))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1001E02B8;
}

void sub_1001E02E8(uint64_t *a1, char a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
{
  v7 = *a1;
  v8 = *(*a1 + 80);
  v9 = *(*a1 + 84);
  v10 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v10 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = *(v7 + 84);
    v14 = *(v7 + 72);
    a3();
    v15 = swift_allocObject();
    a5(v12);

    *(v14 + v13) = v15;
    v12 = v15;
  }

  swift_beginAccess();
  *(v12 + 112) = v8;
  *(v12 + 116) = 0;

  free(v7);
}

BOOL sub_1001E03EC(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  return (*(v2 + 116) & 1) == 0;
}

uint64_t sub_1001E048C(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t a3, void (*a4)(uint64_t))
{
  v7 = v4;
  v8 = *(a1(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v4 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2();
    v11 = swift_allocObject();
    a4(v10);

    *(v7 + v8) = v11;
    v10 = v11;
  }

  result = swift_beginAccess();
  *(v10 + 112) = 0;
  *(v10 + 116) = 1;
  return result;
}

uint64_t sub_1001E0568(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  if (*(v2 + 124))
  {
    return 0;
  }

  else
  {
    return *(v2 + 120);
  }
}

uint64_t sub_1001E060C(int a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
{
  v8 = v5;
  v10 = *(a2(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v5 + v10);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a3();
    v13 = swift_allocObject();
    a5(v12);

    *(v8 + v10) = v13;
    v12 = v13;
  }

  result = swift_beginAccess();
  *(v12 + 120) = a1;
  *(v12 + 124) = 0;
  return result;
}

void (*sub_1001E06CC(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 120);
  if (*(v6 + 124))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1001E0778;
}

void sub_1001E07A8(uint64_t *a1, char a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
{
  v7 = *a1;
  v8 = *(*a1 + 80);
  v9 = *(*a1 + 84);
  v10 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v10 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = *(v7 + 84);
    v14 = *(v7 + 72);
    a3();
    v15 = swift_allocObject();
    a5(v12);

    *(v14 + v13) = v15;
    v12 = v15;
  }

  swift_beginAccess();
  *(v12 + 120) = v8;
  *(v12 + 124) = 0;

  free(v7);
}

BOOL sub_1001E08AC(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  return (*(v2 + 124) & 1) == 0;
}

uint64_t sub_1001E094C(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t a3, void (*a4)(uint64_t))
{
  v7 = v4;
  v8 = *(a1(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v4 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2();
    v11 = swift_allocObject();
    a4(v10);

    *(v7 + v8) = v11;
    v10 = v11;
  }

  result = swift_beginAccess();
  *(v10 + 120) = 0;
  *(v10 + 124) = 1;
  return result;
}

uint64_t sub_1001E0A28(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  if (*(v2 + 132))
  {
    return 0;
  }

  else
  {
    return *(v2 + 128);
  }
}

uint64_t sub_1001E0ACC(int a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
{
  v8 = v5;
  v10 = *(a2(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v5 + v10);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a3();
    v13 = swift_allocObject();
    a5(v12);

    *(v8 + v10) = v13;
    v12 = v13;
  }

  result = swift_beginAccess();
  *(v12 + 128) = a1;
  *(v12 + 132) = 0;
  return result;
}

void (*sub_1001E0B8C(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 128);
  if (*(v6 + 132))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1001E0C38;
}

void sub_1001E0C68(uint64_t *a1, char a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
{
  v7 = *a1;
  v8 = *(*a1 + 80);
  v9 = *(*a1 + 84);
  v10 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v10 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = *(v7 + 84);
    v14 = *(v7 + 72);
    a3();
    v15 = swift_allocObject();
    a5(v12);

    *(v14 + v13) = v15;
    v12 = v15;
  }

  swift_beginAccess();
  *(v12 + 128) = v8;
  *(v12 + 132) = 0;

  free(v7);
}

BOOL sub_1001E0D6C(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));
  swift_beginAccess();
  return (*(v2 + 132) & 1) == 0;
}

uint64_t sub_1001E0E0C(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t a3, void (*a4)(uint64_t))
{
  v7 = v4;
  v8 = *(a1(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v4 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2();
    v11 = swift_allocObject();
    a4(v10);

    *(v7 + v8) = v11;
    v10 = v11;
  }

  result = swift_beginAccess();
  *(v10 + 128) = 0;
  *(v10 + 132) = 1;
  return result;
}

uint64_t sub_1001E0ED0()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  if (*(v1 + 140))
  {
    return 0;
  }

  else
  {
    return *(v1 + 136);
  }
}

uint64_t sub_1001E0F28(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v7 = swift_allocObject();
    sub_1002486DC(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 136) = a1;
  *(v6 + 140) = 0;
  return result;
}

void (*sub_1001E0FC8(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 136);
  if (*(v6 + 140))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1001E1074;
}

void sub_1001E1074(uint64_t *a1, char a2)
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
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v10 = swift_allocObject();
    sub_1002486DC(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 136) = v3;
  *(v7 + 140) = 0;

  free(v2);
}

BOOL sub_1001E1144()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  return (*(v1 + 140) & 1) == 0;
}

uint64_t sub_1001E1198()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v5 = swift_allocObject();
    sub_1002486DC(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  result = swift_beginAccess();
  *(v4 + 136) = 0;
  *(v4 + 140) = 1;
  return result;
}

uint64_t sub_1001E1230()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  if (*(v1 + 148))
  {
    return 0;
  }

  else
  {
    return *(v1 + 144);
  }
}

uint64_t sub_1001E1288(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v7 = swift_allocObject();
    sub_1002486DC(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 144) = a1;
  *(v6 + 148) = 0;
  return result;
}

void (*sub_1001E1328(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 144);
  if (*(v6 + 148))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1001E13D4;
}

void sub_1001E13D4(uint64_t *a1, char a2)
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
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v10 = swift_allocObject();
    sub_1002486DC(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 144) = v3;
  *(v7 + 148) = 0;

  free(v2);
}

BOOL sub_1001E14A4()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  return (*(v1 + 148) & 1) == 0;
}

uint64_t sub_1001E14F8()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v5 = swift_allocObject();
    sub_1002486DC(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  result = swift_beginAccess();
  *(v4 + 144) = 0;
  *(v4 + 148) = 1;
  return result;
}

uint64_t sub_1001E1590()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  if (*(v1 + 156))
  {
    return 0;
  }

  else
  {
    return *(v1 + 152);
  }
}

uint64_t sub_1001E15E8(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v7 = swift_allocObject();
    sub_1002486DC(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 152) = a1;
  *(v6 + 156) = 0;
  return result;
}

void (*sub_1001E1688(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 152);
  if (*(v6 + 156))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1001E1734;
}

void sub_1001E1734(uint64_t *a1, char a2)
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
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v10 = swift_allocObject();
    sub_1002486DC(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 152) = v3;
  *(v7 + 156) = 0;

  free(v2);
}

BOOL sub_1001E1804()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  return (*(v1 + 156) & 1) == 0;
}

uint64_t sub_1001E1858()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v5 = swift_allocObject();
    sub_1002486DC(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  result = swift_beginAccess();
  *(v4 + 152) = 0;
  *(v4 + 156) = 1;
  return result;
}

uint64_t sub_1001E18F0()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  if (*(v1 + 164))
  {
    return 0;
  }

  else
  {
    return *(v1 + 160);
  }
}

uint64_t sub_1001E1948(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v7 = swift_allocObject();
    sub_1002486DC(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 160) = a1;
  *(v6 + 164) = 0;
  return result;
}

void (*sub_1001E19E8(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 160);
  if (*(v6 + 164))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1001E1A94;
}

void sub_1001E1A94(uint64_t *a1, char a2)
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
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v10 = swift_allocObject();
    sub_1002486DC(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 160) = v3;
  *(v7 + 164) = 0;

  free(v2);
}

BOOL sub_1001E1B64()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  return (*(v1 + 164) & 1) == 0;
}

uint64_t sub_1001E1BB8()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v5 = swift_allocObject();
    sub_1002486DC(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  result = swift_beginAccess();
  *(v4 + 160) = 0;
  *(v4 + 164) = 1;
  return result;
}

uint64_t sub_1001E1C50()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  if (*(v1 + 172))
  {
    return 0;
  }

  else
  {
    return *(v1 + 168);
  }
}

uint64_t sub_1001E1CA8(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v7 = swift_allocObject();
    sub_1002486DC(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 168) = a1;
  *(v6 + 172) = 0;
  return result;
}

void (*sub_1001E1D48(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 168);
  if (*(v6 + 172))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1001E1DF4;
}

void sub_1001E1DF4(uint64_t *a1, char a2)
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
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v10 = swift_allocObject();
    sub_1002486DC(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 168) = v3;
  *(v7 + 172) = 0;

  free(v2);
}

BOOL sub_1001E1EC4()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  return (*(v1 + 172) & 1) == 0;
}

uint64_t sub_1001E1F18()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v5 = swift_allocObject();
    sub_1002486DC(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  result = swift_beginAccess();
  *(v4 + 168) = 0;
  *(v4 + 172) = 1;
  return result;
}

uint64_t sub_1001E1FB0()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  if (*(v1 + 180))
  {
    return 0;
  }

  else
  {
    return *(v1 + 176);
  }
}

uint64_t sub_1001E2008(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v7 = swift_allocObject();
    sub_1002486DC(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 176) = a1;
  *(v6 + 180) = 0;
  return result;
}

void (*sub_1001E20A8(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 176);
  if (*(v6 + 180))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1001E2154;
}

void sub_1001E2154(uint64_t *a1, char a2)
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
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v10 = swift_allocObject();
    sub_1002486DC(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 176) = v3;
  *(v7 + 180) = 0;

  free(v2);
}

BOOL sub_1001E2224()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  return (*(v1 + 180) & 1) == 0;
}

uint64_t sub_1001E2278()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v5 = swift_allocObject();
    sub_1002486DC(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  result = swift_beginAccess();
  *(v4 + 176) = 0;
  *(v4 + 180) = 1;
  return result;
}

uint64_t sub_1001E2310()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  if (*(v1 + 188))
  {
    return 0;
  }

  else
  {
    return *(v1 + 184);
  }
}

uint64_t sub_1001E2368(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v7 = swift_allocObject();
    sub_1002486DC(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 184) = a1;
  *(v6 + 188) = 0;
  return result;
}

void (*sub_1001E2408(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 184);
  if (*(v6 + 188))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1001E24B4;
}

void sub_1001E24B4(uint64_t *a1, char a2)
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
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v10 = swift_allocObject();
    sub_1002486DC(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 184) = v3;
  *(v7 + 188) = 0;

  free(v2);
}

BOOL sub_1001E2584()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  return (*(v1 + 188) & 1) == 0;
}

uint64_t sub_1001E25D8()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v5 = swift_allocObject();
    sub_1002486DC(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  result = swift_beginAccess();
  *(v4 + 184) = 0;
  *(v4 + 188) = 1;
  return result;
}

uint64_t sub_1001E2670()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  if (*(v1 + 196))
  {
    return 0;
  }

  else
  {
    return *(v1 + 192);
  }
}

uint64_t sub_1001E26C8(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v7 = swift_allocObject();
    sub_1002486DC(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 192) = a1;
  *(v6 + 196) = 0;
  return result;
}

void (*sub_1001E2768(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 192);
  if (*(v6 + 196))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1001E2814;
}

void sub_1001E2814(uint64_t *a1, char a2)
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
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v10 = swift_allocObject();
    sub_1002486DC(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 192) = v3;
  *(v7 + 196) = 0;

  free(v2);
}

BOOL sub_1001E28E4()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  return (*(v1 + 196) & 1) == 0;
}

uint64_t sub_1001E2938()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v5 = swift_allocObject();
    sub_1002486DC(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  result = swift_beginAccess();
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
  return result;
}

uint64_t sub_1001E29D0()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  if (*(v1 + 204))
  {
    return 0;
  }

  else
  {
    return *(v1 + 200);
  }
}

uint64_t sub_1001E2A28(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v7 = swift_allocObject();
    sub_1002486DC(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 200) = a1;
  *(v6 + 204) = 0;
  return result;
}

void (*sub_1001E2AC8(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 200);
  if (*(v6 + 204))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1001E2B74;
}

void sub_1001E2B74(uint64_t *a1, char a2)
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
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v10 = swift_allocObject();
    sub_1002486DC(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 200) = v3;
  *(v7 + 204) = 0;

  free(v2);
}

BOOL sub_1001E2C44()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  return (*(v1 + 204) & 1) == 0;
}

uint64_t sub_1001E2C98()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v5 = swift_allocObject();
    sub_1002486DC(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  result = swift_beginAccess();
  *(v4 + 200) = 0;
  *(v4 + 204) = 1;
  return result;
}

uint64_t sub_1001E2D30()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  if (*(v1 + 212))
  {
    return 0;
  }

  else
  {
    return *(v1 + 208);
  }
}

uint64_t sub_1001E2D88(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v7 = swift_allocObject();
    sub_1002486DC(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 208) = a1;
  *(v6 + 212) = 0;
  return result;
}

void (*sub_1001E2E28(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 208);
  if (*(v6 + 212))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1001E2ED4;
}

void sub_1001E2ED4(uint64_t *a1, char a2)
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
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v10 = swift_allocObject();
    sub_1002486DC(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 208) = v3;
  *(v7 + 212) = 0;

  free(v2);
}

BOOL sub_1001E2FA4()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  return (*(v1 + 212) & 1) == 0;
}

uint64_t sub_1001E2FF8()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v5 = swift_allocObject();
    sub_1002486DC(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  result = swift_beginAccess();
  *(v4 + 208) = 0;
  *(v4 + 212) = 1;
  return result;
}

uint64_t sub_1001E3090()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  if (*(v1 + 220))
  {
    return 0;
  }

  else
  {
    return *(v1 + 216);
  }
}

uint64_t sub_1001E30E8(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v7 = swift_allocObject();
    sub_1002486DC(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 216) = a1;
  *(v6 + 220) = 0;
  return result;
}

void (*sub_1001E3188(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 216);
  if (*(v6 + 220))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1001E3234;
}

void sub_1001E3234(uint64_t *a1, char a2)
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
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v10 = swift_allocObject();
    sub_1002486DC(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 216) = v3;
  *(v7 + 220) = 0;

  free(v2);
}

BOOL sub_1001E3304()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  return (*(v1 + 220) & 1) == 0;
}

uint64_t sub_1001E3358()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v5 = swift_allocObject();
    sub_1002486DC(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  result = swift_beginAccess();
  *(v4 + 216) = 0;
  *(v4 + 220) = 1;
  return result;
}

uint64_t sub_1001E33F0()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  if (*(v1 + 228))
  {
    return 0;
  }

  else
  {
    return *(v1 + 224);
  }
}

uint64_t sub_1001E3448(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v7 = swift_allocObject();
    sub_1002486DC(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 224) = a1;
  *(v6 + 228) = 0;
  return result;
}

void (*sub_1001E34E8(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 224);
  if (*(v6 + 228))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1001E3594;
}

void sub_1001E3594(uint64_t *a1, char a2)
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
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v10 = swift_allocObject();
    sub_1002486DC(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 224) = v3;
  *(v7 + 228) = 0;

  free(v2);
}

BOOL sub_1001E3664()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  return (*(v1 + 228) & 1) == 0;
}

uint64_t sub_1001E36B8()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v5 = swift_allocObject();
    sub_1002486DC(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  result = swift_beginAccess();
  *(v4 + 224) = 0;
  *(v4 + 228) = 1;
  return result;
}

uint64_t sub_1001E3750()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  if (*(v1 + 236))
  {
    return 0;
  }

  else
  {
    return *(v1 + 232);
  }
}

uint64_t sub_1001E37A8(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v7 = swift_allocObject();
    sub_1002486DC(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 232) = a1;
  *(v6 + 236) = 0;
  return result;
}

void (*sub_1001E3848(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 232);
  if (*(v6 + 236))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1001E38F4;
}

void sub_1001E38F4(uint64_t *a1, char a2)
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
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v10 = swift_allocObject();
    sub_1002486DC(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 232) = v3;
  *(v7 + 236) = 0;

  free(v2);
}

BOOL sub_1001E39C4()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  return (*(v1 + 236) & 1) == 0;
}

uint64_t sub_1001E3A18()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v5 = swift_allocObject();
    sub_1002486DC(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  result = swift_beginAccess();
  *(v4 + 232) = 0;
  *(v4 + 236) = 1;
  return result;
}

uint64_t sub_1001E3AB0()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  if (*(v1 + 244))
  {
    return 0;
  }

  else
  {
    return *(v1 + 240);
  }
}

uint64_t sub_1001E3B08(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v7 = swift_allocObject();
    sub_1002486DC(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 240) = a1;
  *(v6 + 244) = 0;
  return result;
}

void (*sub_1001E3BA8(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 240);
  if (*(v6 + 244))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1001E3C54;
}

void sub_1001E3C54(uint64_t *a1, char a2)
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
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v10 = swift_allocObject();
    sub_1002486DC(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 240) = v3;
  *(v7 + 244) = 0;

  free(v2);
}

BOOL sub_1001E3D24()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  return (*(v1 + 244) & 1) == 0;
}

uint64_t sub_1001E3D78()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v5 = swift_allocObject();
    sub_1002486DC(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  result = swift_beginAccess();
  *(v4 + 240) = 0;
  *(v4 + 244) = 1;
  return result;
}

uint64_t sub_1001E3E10()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  if (*(v1 + 252))
  {
    return 0;
  }

  else
  {
    return *(v1 + 248);
  }
}

uint64_t sub_1001E3E68(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v7 = swift_allocObject();
    sub_1002486DC(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 248) = a1;
  *(v6 + 252) = 0;
  return result;
}

void (*sub_1001E3F08(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 248);
  if (*(v6 + 252))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1001E3FB4;
}

void sub_1001E3FB4(uint64_t *a1, char a2)
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
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v10 = swift_allocObject();
    sub_1002486DC(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 248) = v3;
  *(v7 + 252) = 0;

  free(v2);
}

BOOL sub_1001E4084()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  return (*(v1 + 252) & 1) == 0;
}

uint64_t sub_1001E40D8()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v5 = swift_allocObject();
    sub_1002486DC(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  result = swift_beginAccess();
  *(v4 + 248) = 0;
  *(v4 + 252) = 1;
  return result;
}

uint64_t sub_1001E4170()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  if (*(v1 + 260))
  {
    return 0;
  }

  else
  {
    return *(v1 + 256);
  }
}

uint64_t sub_1001E41C8(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v7 = swift_allocObject();
    sub_1002486DC(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 256) = a1;
  *(v6 + 260) = 0;
  return result;
}

void (*sub_1001E4268(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 256);
  if (*(v6 + 260))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1001E4314;
}

void sub_1001E4314(uint64_t *a1, char a2)
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
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v10 = swift_allocObject();
    sub_1002486DC(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 256) = v3;
  *(v7 + 260) = 0;

  free(v2);
}

BOOL sub_1001E43E4()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  return (*(v1 + 260) & 1) == 0;
}

uint64_t sub_1001E4438()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v5 = swift_allocObject();
    sub_1002486DC(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  result = swift_beginAccess();
  *(v4 + 256) = 0;
  *(v4 + 260) = 1;
  return result;
}

uint64_t sub_1001E44D0()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  if (*(v1 + 268))
  {
    return 0;
  }

  else
  {
    return *(v1 + 264);
  }
}

uint64_t sub_1001E4528(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v7 = swift_allocObject();
    sub_1002486DC(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 264) = a1;
  *(v6 + 268) = 0;
  return result;
}

void (*sub_1001E45C8(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 264);
  if (*(v6 + 268))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1001E4674;
}

void sub_1001E4674(uint64_t *a1, char a2)
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
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v10 = swift_allocObject();
    sub_1002486DC(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 264) = v3;
  *(v7 + 268) = 0;

  free(v2);
}

BOOL sub_1001E4744()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  return (*(v1 + 268) & 1) == 0;
}

uint64_t sub_1001E4798()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v5 = swift_allocObject();
    sub_1002486DC(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  result = swift_beginAccess();
  *(v4 + 264) = 0;
  *(v4 + 268) = 1;
  return result;
}

uint64_t sub_1001E4830()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  if (*(v1 + 276))
  {
    return 0;
  }

  else
  {
    return *(v1 + 272);
  }
}

uint64_t sub_1001E4888(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v7 = swift_allocObject();
    sub_1002486DC(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 272) = a1;
  *(v6 + 276) = 0;
  return result;
}

void (*sub_1001E4928(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 272);
  if (*(v6 + 276))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1001E49D4;
}

void sub_1001E49D4(uint64_t *a1, char a2)
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
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v10 = swift_allocObject();
    sub_1002486DC(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 272) = v3;
  *(v7 + 276) = 0;

  free(v2);
}

BOOL sub_1001E4AA4()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  return (*(v1 + 276) & 1) == 0;
}

uint64_t sub_1001E4AF8()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v5 = swift_allocObject();
    sub_1002486DC(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  result = swift_beginAccess();
  *(v4 + 272) = 0;
  *(v4 + 276) = 1;
  return result;
}

uint64_t sub_1001E4B90()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  if (*(v1 + 284))
  {
    return 0;
  }

  else
  {
    return *(v1 + 280);
  }
}

uint64_t sub_1001E4BE8(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v7 = swift_allocObject();
    sub_1002486DC(v6);

    *(v2 + v4) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 280) = a1;
  *(v6 + 284) = 0;
  return result;
}

void (*sub_1001E4C88(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 280);
  if (*(v6 + 284))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1001E4D34;
}

void sub_1001E4D34(uint64_t *a1, char a2)
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
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v10 = swift_allocObject();
    sub_1002486DC(v7);

    *(v9 + v8) = v10;
    v7 = v10;
  }

  swift_beginAccess();
  *(v7 + 280) = v3;
  *(v7 + 284) = 0;

  free(v2);
}

BOOL sub_1001E4E04()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20));
  swift_beginAccess();
  return (*(v1 + 284) & 1) == 0;
}

uint64_t sub_1001E4E58()
{
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Gnss_Emergency_GpsEphemeris._StorageClass();
    v5 = swift_allocObject();
    sub_1002486DC(v4);

    *(v1 + v2) = v5;
    v4 = v5;
  }

  result = swift_beginAccess();
  *(v4 + 280) = 0;
  *(v4 + 284) = 1;
  return result;
}

uint64_t sub_1001E4F64(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001E4F9C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0) + 24);
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

uint64_t sub_1001E5034()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001E5064()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0) + 28));
  if (v1 == 6)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1001E5090(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*sub_1001E50C0(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0) + 28);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 6)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_1001E514C()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0);
  *(v0 + *(result + 28)) = 6;
  return result;
}

uint64_t sub_1001E5174()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0) + 32));
  if (v1 == 7)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1001E51A0(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*sub_1001E51D0(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0) + 32);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 7)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_1001E525C()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0);
  *(v0 + *(result + 32)) = 7;
  return result;
}

uint64_t sub_1001E529C(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001E52D4(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0) + 36);
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

uint64_t sub_1001E536C()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0);
  v2 = v0 + *(result + 36);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001E5414@<X0>(void *a1@<X8>)
{
  *a1 = &_swiftEmptyArrayStorage;
  v2 = type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0);
  result = UnknownStorage.init()();
  v4 = a1 + v2[6];
  *v4 = 0;
  v4[4] = 1;
  *(a1 + v2[7]) = 6;
  *(a1 + v2[8]) = 7;
  v5 = a1 + v2[9];
  *v5 = 0;
  v5[4] = 1;
  return result;
}

uint64_t sub_1001E54BC(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_CplaneConfig(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*sub_1001E54EC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_CplaneConfig(0) + 20);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1001E5574()
{
  result = type metadata accessor for Proto_Gnss_Emergency_CplaneConfig(0);
  *(v0 + *(result + 20)) = 2;
  return result;
}

uint64_t sub_1001E55B8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100423F10, &qword_1003833E0);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_CplaneContext(0);
  sub_10000A0A4(v1 + *(v6 + 20), v5, &qword_100423F10, &qword_1003833E0);
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

uint64_t sub_1001E5734(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_CplaneContext(0) + 20);
  sub_1000059A8(v1 + v3, &qword_100423F10, &qword_1003833E0);
  sub_1002463C0(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_Configuration);
  v4 = type metadata accessor for Proto_Gnss_Emergency_Configuration(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*sub_1001E57EC(void *a1))(uint64_t, uint64_t)
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
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_CplaneContext(0) + 20);
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

  return sub_100268FFC;
}

uint64_t sub_1001E5A98@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100424098, &qword_100383568);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_CplaneContext(0);
  sub_10000A0A4(v1 + *(v6 + 24), v5, &qword_100424098, &qword_100383568);
  v7 = type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1002463C0(v5, a1, type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext);
  }

  UnknownStorage.init()();
  *(a1 + v7[5]) = 2;
  *(a1 + v7[6]) = 2;
  *(a1 + v7[7]) = 2;
  *(a1 + v7[8]) = 2;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_100424098, &qword_100383568);
  }

  return result;
}

int *sub_1001E5C10@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext(0);
  *(a1 + result[5]) = 2;
  *(a1 + result[6]) = 2;
  *(a1 + result[7]) = 2;
  *(a1 + result[8]) = 2;
  return result;
}

uint64_t sub_1001E5C60(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_CplaneContext(0) + 24);
  sub_1000059A8(v1 + v3, &qword_100424098, &qword_100383568);
  sub_1002463C0(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext);
  v4 = type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_1001E5D18(void *a1))(uint64_t **a1, uint64_t a2)
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
  v5 = *(*(sub_100024A2C(&qword_100424098, &qword_100383568) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext(0);
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
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_CplaneContext(0) + 24);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100424098, &qword_100383568);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    *(v13 + v8[5]) = 2;
    *(v13 + v8[6]) = 2;
    *(v13 + v8[7]) = 2;
    *(v13 + v8[8]) = 2;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100424098, &qword_100383568);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext);
  }

  return sub_1001E5F48;
}

uint64_t sub_1001E607C(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*sub_1001E60AC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0) + 20);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1000362EC;
}

uint64_t sub_1001E6134()
{
  result = type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0);
  *(v0 + *(result + 20)) = 2;
  return result;
}

void (*sub_1001E618C(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0) + 24);
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

uint64_t sub_1001E6284@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_1004240A0, &qword_100383570);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0);
  sub_10000A0A4(v1 + *(v6 + 28), v5, &qword_1004240A0, &qword_100383570);
  v7 = type metadata accessor for Proto_Gnss_Emergency_CplaneConfig(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1002463C0(v5, a1, type metadata accessor for Proto_Gnss_Emergency_CplaneConfig);
  }

  UnknownStorage.init()();
  *(a1 + *(v7 + 20)) = 2;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_1004240A0, &qword_100383570);
  }

  return result;
}

uint64_t sub_1001E63E4(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0) + 28);
  sub_1000059A8(v1 + v3, &qword_1004240A0, &qword_100383570);
  sub_1002463C0(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_CplaneConfig);
  v4 = type metadata accessor for Proto_Gnss_Emergency_CplaneConfig(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_1001E649C(void *a1))(uint64_t **a1, uint64_t a2)
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
  v5 = *(*(sub_100024A2C(&qword_1004240A0, &qword_100383570) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_CplaneConfig(0);
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
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0) + 28);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_1004240A0, &qword_100383570);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    *(v13 + *(v8 + 20)) = 2;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_1004240A0, &qword_100383570);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_CplaneConfig);
  }

  return sub_1001E66B4;
}

uint64_t sub_1001E6768@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_1004240A8, &qword_100383578);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0);
  sub_10000A0A4(v1 + *(v6 + 32), v5, &qword_1004240A8, &qword_100383578);
  v7 = type metadata accessor for Proto_Gnss_Emergency_SuplConfig(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1002463C0(v5, a1, type metadata accessor for Proto_Gnss_Emergency_SuplConfig);
  }

  UnknownStorage.init()();
  v9 = a1 + v7[5];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = (a1 + v7[6]);
  *v10 = 0;
  v10[1] = 0;
  *(a1 + v7[7]) = 2;
  *(a1 + v7[8]) = 2;
  *(a1 + v7[9]) = 2;
  *(a1 + v7[10]) = 2;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_1004240A8, &qword_100383578);
  }

  return result;
}

uint64_t sub_1001E6900(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0) + 32);
  sub_1000059A8(v1 + v3, &qword_1004240A8, &qword_100383578);
  sub_1002463C0(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_SuplConfig);
  v4 = type metadata accessor for Proto_Gnss_Emergency_SuplConfig(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_1001E69B8(void *a1))(uint64_t **a1, uint64_t a2)
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
  v5 = *(*(sub_100024A2C(&qword_1004240A8, &qword_100383578) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_SuplConfig(0);
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
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0) + 32);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_1004240A8, &qword_100383578);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = v13 + v8[5];
    *v16 = 0;
    *(v16 + 4) = 1;
    v17 = (v13 + v8[6]);
    *v17 = 0;
    v17[1] = 0;
    *(v13 + v8[7]) = 2;
    *(v13 + v8[8]) = 2;
    *(v13 + v8[9]) = 2;
    *(v13 + v8[10]) = 2;
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_1004240A8, &qword_100383578);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_SuplConfig);
  }

  return sub_1001E6C08;
}

uint64_t sub_1001E6CBC@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0);
  *(a1 + v2[5]) = 2;
  v3 = (a1 + v2[6]);
  *v3 = 0;
  v3[1] = 0;
  v4 = v2[7];
  v5 = type metadata accessor for Proto_Gnss_Emergency_CplaneConfig(0);
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v6 = v2[8];
  v7 = type metadata accessor for Proto_Gnss_Emergency_SuplConfig(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, 1, 1, v7);
}

uint64_t sub_1001E6DE8(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001E6E20(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 20);
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

uint64_t sub_1001E6EB8()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
  v2 = v0 + *(result + 20);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001E6F00(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001E6F38(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 24);
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

uint64_t sub_1001E6FD0()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001E7018(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001E7050(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 28);
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

uint64_t sub_1001E70E8()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001E7130(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001E7168(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 32);
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

uint64_t sub_1001E7200()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
  v2 = v0 + *(result + 32);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001E7248(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001E7280(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 36);
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

uint64_t sub_1001E7318()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
  v2 = v0 + *(result + 36);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001E7360(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001E7398(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 40);
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

uint64_t sub_1001E7430()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
  v2 = v0 + *(result + 40);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001E7478(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
  v4 = v1 + *(result + 44);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001E74B0(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 44);
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

uint64_t sub_1001E7548()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
  v2 = v0 + *(result + 44);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001E7590(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
  v4 = v1 + *(result + 48);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001E75C8(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 48);
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

uint64_t sub_1001E7660()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
  v2 = v0 + *(result + 48);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001E76A8(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
  v4 = v1 + *(result + 52);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001E76E0(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 52);
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

uint64_t sub_1001E7778()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
  v2 = v0 + *(result + 52);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001E77C0(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
  v4 = v1 + *(result + 56);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001E77F8(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 56);
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

uint64_t sub_1001E7890()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
  v2 = v0 + *(result + 56);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001E78D8(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
  v4 = v1 + *(result + 60);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001E7910(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 60);
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

uint64_t sub_1001E79A8()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
  v2 = v0 + *(result + 60);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001E79D8()
{
  v1 = (v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 64));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t sub_1001E7A0C(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
  v4 = v1 + *(result + 64);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001E7A44(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 64);
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

uint64_t sub_1001E7ADC()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
  v2 = v0 + *(result + 64);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001E7B0C()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 68));
  if (v1 == 7)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1001E7B38(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
  *(v1 + *(result + 68)) = a1;
  return result;
}

uint64_t (*sub_1001E7B68(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0) + 68);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 7)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_1001E7BF4()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
  *(v0 + *(result + 68)) = 7;
  return result;
}

int *sub_1001E7C1C@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
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
  v9 = a1 + result[11];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1 + result[12];
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1 + result[13];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a1 + result[14];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1 + result[15];
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = a1 + result[16];
  *v14 = 0;
  *(v14 + 4) = 1;
  *(a1 + result[17]) = 7;
  return result;
}

uint64_t sub_1001E7D30(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001E7D68(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0) + 24);
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

uint64_t sub_1001E7E00()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
  v2 = v0 + *(result + 24);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001E7E48(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001E7E80(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0) + 28);
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

uint64_t sub_1001E7F18()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
  v2 = v0 + *(result + 28);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001E7F48@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_1004240B0, &qword_100383580);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
  sub_10000A0A4(v1 + *(v6 + 32), v5, &qword_1004240B0, &qword_100383580);
  v7 = type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1002463C0(v5, a1, type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance);
  }

  UnknownStorage.init()();
  *(a1 + *(v7 + 20)) = 6;
  v9 = *(v7 + 24);
  v10 = type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0);
  (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_1004240B0, &qword_100383580);
  }

  return result;
}

uint64_t sub_1001E80EC(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0) + 32);
  sub_1000059A8(v1 + v3, &qword_1004240B0, &qword_100383580);
  sub_1002463C0(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance);
  v4 = type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_1001E81A4(void *a1))(uint64_t **a1, uint64_t a2)
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
  v5 = *(*(sub_100024A2C(&qword_1004240B0, &qword_100383580) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance(0);
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
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0) + 32);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_1004240B0, &qword_100383580);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    *(v13 + *(v8 + 20)) = 6;
    v16 = *(v8 + 24);
    v17 = type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0);
    (*(*(v17 - 8) + 56))(v13 + v16, 1, 1, v17);
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_1004240B0, &qword_100383580);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance);
  }

  return sub_1001E8400;
}

uint64_t sub_1001E84CC(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001E8504(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0) + 36);
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

uint64_t sub_1001E859C()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
  v2 = v0 + *(result + 36);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001E85CC()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0) + 40));
  if (v1 == 6)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1001E85F8(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t (*sub_1001E8628(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0) + 40);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 6)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_1001E86B4()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
  *(v0 + *(result + 40)) = 6;
  return result;
}

uint64_t sub_1001E86DC()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0) + 44));
  if (v1 == 7)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1001E8708(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t (*sub_1001E8738(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0) + 44);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 7)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_1001E87C4()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
  *(v0 + *(result + 44)) = 7;
  return result;
}

uint64_t sub_1001E8804(int a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
  v4 = v1 + *(result + 48);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*sub_1001E883C(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0) + 48);
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

uint64_t sub_1001E88D4()
{
  result = type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
  v2 = v0 + *(result + 48);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t sub_1001E897C@<X0>(char *a1@<X8>)
{
  *a1 = &_swiftEmptyArrayStorage;
  v2 = type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
  UnknownStorage.init()();
  v3 = &a1[v2[6]];
  *v3 = 0;
  v3[4] = 1;
  v4 = &a1[v2[7]];
  *v4 = 0;
  v4[4] = 1;
  v5 = v2[8];
  v6 = type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance(0);
  result = (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  v8 = &a1[v2[9]];
  *v8 = 0;
  v8[4] = 1;
  a1[v2[10]] = 6;
  a1[v2[11]] = 7;
  v9 = &a1[v2[12]];
  *v9 = 0;
  v9[4] = 1;
  return result;
}

uint64_t sub_1001E8A80()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_CellFTAssistanceRequest(0) + 20));
  if (v1 == 6)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1001E8AAC(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_CellFTAssistanceRequest(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*sub_1001E8ADC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_CellFTAssistanceRequest(0) + 20);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 6)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_1001E8B68()
{
  result = type metadata accessor for Proto_Gnss_Emergency_CellFTAssistanceRequest(0);
  *(v0 + *(result + 20)) = 6;
  return result;
}

uint64_t sub_1001E8BAC@<X0>(uint64_t (*a1)(void)@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  UnknownStorage.init()();
  result = a1(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_1001E8BF4()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0) + 20));
  if (v1 == 10)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1001E8C20(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t (*sub_1001E8C50(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0) + 20);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 10)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_1001E8CDC()
{
  result = type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0);
  *(v0 + *(result + 20)) = 10;
  return result;
}

uint64_t sub_1001E8D04()
{
  v1 = *(v0 + *(type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0) + 24));
  if (v1 == 6)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1001E8D30(char a1)
{
  result = type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*sub_1001E8D60(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0) + 24);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 6)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_1000362EC;
}

uint64_t sub_1001E8DEC()
{
  result = type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0);
  *(v0 + *(result + 24)) = 6;
  return result;
}

uint64_t sub_1001E8E14@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100024A2C(&qword_100424090, &qword_100383560);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0);
  sub_10000A0A4(v1 + *(v6 + 28), v5, &qword_100424090, &qword_100383560);
  v7 = type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1002463C0(v5, a1, type metadata accessor for Proto_Gnss_Emergency_CellTimeData);
  }

  UnknownStorage.init()();
  v9 = *(v7 + 20);
  v10 = type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime(0);
  (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  v11 = *(v7 + 24);
  v12 = type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1000059A8(v5, &qword_100424090, &qword_100383560);
  }

  return result;
}

uint64_t sub_1001E8FF0(uint64_t a1)
{
  v3 = *(type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0) + 28);
  sub_1000059A8(v1 + v3, &qword_100424090, &qword_100383560);
  sub_1002463C0(a1, v1 + v3, type metadata accessor for Proto_Gnss_Emergency_CellTimeData);
  v4 = type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*sub_1001E90A8(void *a1))(uint64_t **a1, uint64_t a2)
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
  v5 = *(*(sub_100024A2C(&qword_100424090, &qword_100383560) - 8) + 64);
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
  v8 = type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0);
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
  v14 = *(type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0) + 28);
  *(v4 + 12) = v14;
  sub_10000A0A4(v1 + v14, v7, &qword_100424090, &qword_100383560);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v16 = *(v8 + 20);
    v17 = type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime(0);
    (*(*(v17 - 8) + 56))(v13 + v16, 1, 1, v17);
    v18 = *(v8 + 24);
    v19 = type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0);
    (*(*(v19 - 8) + 56))(v13 + v18, 1, 1, v19);
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000059A8(v7, &qword_100424090, &qword_100383560);
    }
  }

  else
  {
    sub_1002463C0(v7, v13, type metadata accessor for Proto_Gnss_Emergency_CellTimeData);
  }

  return sub_1001E933C;
}